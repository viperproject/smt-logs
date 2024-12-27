
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

(push) ;; push{1

; Internals for ExtTest

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.prod


; <Start encoding type ExtTest.prod>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.prod (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.prod@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Pair (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair_pfst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair_psnd (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Pair
(declare-fun ExtTest.Pair@tok () Term)
;;;;;;;;;;;;;;;;pfst: 'a -> psnd: 'b -> prod 'a 'b
(declare-fun Tm_arrow_267cc6b14e0708b985675bafbe3228b2 () Term)

; <start constructor ExtTest.prod>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.prod ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
115)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.prod @x0
@x1))
 
;;no pats
:qid is-ExtTest.prod))))

; </end constructor ExtTest.prod>


; <start constructor ExtTest.Pair>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Pair ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
122)
(= __@x0
(ExtTest.Pair (ExtTest.Pair__a __@x0)
(ExtTest.Pair__b __@x0)
(ExtTest.Pair_pfst __@x0)
(ExtTest.Pair_psnd __@x0)))))

; </end constructor ExtTest.Pair>


; </end encoding type ExtTest.prod>

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
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1)
(ExtTest.prod @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1))

:pattern ((ExtTest.prod @x0
@x1))
:qid token_correspondence_ExtTest.prod@tok))

:named token_correspondence_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Pair @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Pair @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid subterm_ordering_ExtTest.Pair))

:named subterm_ordering_ExtTest.Pair))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_psnd (ExtTest.Pair @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_psnd))

:named projection_inverse_ExtTest.Pair_psnd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_pfst (ExtTest.Pair @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_pfst))

:named projection_inverse_ExtTest.Pair_pfst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__b (ExtTest.Pair @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__b))

:named projection_inverse_ExtTest.Pair__b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__a (ExtTest.Pair @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__a))

:named projection_inverse_ExtTest.Pair__a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.prod@tok))
:named pre_kinding_ExtTest.prod@tok))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.prod@tok)

;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.prod@tok
@x0))
 

:pattern ((ApplyTT ExtTest.prod@tok
@x0))
:qid kinding_ExtTest.prod@tok))


;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (ExtTest.prod @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid kinding_ExtTest.prod@tok.1))
)
:named kinding_ExtTest.prod@tok))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3))
(and (is-ExtTest.Pair @x1)
(= @x2
(ExtTest.Pair__a @x1))
(= @x3
(ExtTest.Pair__b @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.prod))

:named fuel_guarded_inversion_ExtTest.prod))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (= 116
(Term_constr_id ExtTest.prod@tok))
:named fresh_token_ExtTest.prod@tok))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
:qid data_typing_intro_ExtTest.Pair@tok))

:named data_typing_intro_ExtTest.Pair@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid data_elim_ExtTest.Pair))

:named data_elim_ExtTest.Pair))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 115
(Term_constr_id (ExtTest.prod @x0
@x1)))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid constructor_distinct_ExtTest.prod))

:named constructor_distinct_ExtTest.prod))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 122
(Term_constr_id (ExtTest.Pair @x0
@x1
@x2
@x3)))
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid constructor_distinct_ExtTest.Pair))

:named constructor_distinct_ExtTest.Pair))
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
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3))
(= (ExtTest.prod @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3)))
:qid ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))

:named ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))
(push) ;; push{4

; Starting query at ExtTest.fst(21,0-22,43)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall ('a: Type) ('b: Type).
;   Prims.hasEq 'a /\ Prims.hasEq 'b /\
;   (forall ('a: Type) ('b: Type). {:pattern Prims.hasEq (ExtTest.prod 'a 'b)}
;       Prims.hasEq 'a /\ Prims.hasEq 'b ==> Prims.hasEq (ExtTest.prod 'a 'b)) ==>
;   (forall (pfst: 'a) (psnd: 'b). Prims.hasEq 'a /\ Prims.hasEq 'b)


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.prod`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x1)
)


;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
Tm_type)

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x2)
)


;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x3)
)
)

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq (ExtTest.prod @x2
@x3))
)
)
 

:pattern ((Prims.hasEq (ExtTest.prod @x2
@x3)))
:qid @query.1))
)

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x1))

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(and 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(22,14-22,16)
(or label_1

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x0)
)
)


;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(22,25-22,27)
(or label_2

;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Valid 
;; def=ExtTest.fst(21,0-22,43); use=ExtTest.fst(21,0-22,43)
(Prims.hasEq @x1)
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
; QUERY ID: (ExtTest.prod, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.prod


; <Start encoding type ExtTest.prod>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.prod (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.prod@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Pair (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair__b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair_pfst (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Pair_psnd (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Pair
(declare-fun ExtTest.Pair@tok () Term)
;;;;;;;;;;;;;;;;pfst: 'a -> psnd: 'b -> prod 'a 'b
(declare-fun Tm_arrow_267cc6b14e0708b985675bafbe3228b2 () Term)

; <start constructor ExtTest.prod>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.prod ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
126)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.prod @x0
@x1))
 
;;no pats
:qid is-ExtTest.prod))))

; </end constructor ExtTest.prod>


; <start constructor ExtTest.Pair>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Pair ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
133)
(= __@x0
(ExtTest.Pair (ExtTest.Pair__a __@x0)
(ExtTest.Pair__b __@x0)
(ExtTest.Pair_pfst __@x0)
(ExtTest.Pair_psnd __@x0)))))

; </end constructor ExtTest.Pair>


; </end encoding type ExtTest.prod>


; encoding sigelt assume ExtTest.prod__uu___haseq


; <Start encoding assume ExtTest.prod__uu___haseq>


; </end encoding assume ExtTest.prod__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Pair


; <Start encoding val ExtTest.uu___is_Pair>

(declare-fun ExtTest.uu___is_Pair (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: prod 'a 'b -> Prims.bool
(declare-fun Tm_arrow_8d4d769eb9e5a6b4ad3d2b88f6b647ad () Term)
(declare-fun ExtTest.uu___is_Pair@tok () Term)

; </end encoding val ExtTest.uu___is_Pair>


; encoding sigelt let uu___is_Pair


; <Skipped let uu___is_Pair/>


; encoding sigelt val ExtTest.__proj__Pair__item__pfst


; <Start encoding val ExtTest.__proj__Pair__item__pfst>

(declare-fun ExtTest.__proj__Pair__item__pfst (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: prod 'a 'b -> 'a
(declare-fun Tm_arrow_4e13c855069344194f3b5f010e5131b8 () Term)
(declare-fun ExtTest.__proj__Pair__item__pfst@tok () Term)

; </end encoding val ExtTest.__proj__Pair__item__pfst>


; encoding sigelt let __proj__Pair__item__pfst


; <Skipped let __proj__Pair__item__pfst/>


; encoding sigelt val ExtTest.__proj__Pair__item__psnd


; <Start encoding val ExtTest.__proj__Pair__item__psnd>

(declare-fun ExtTest.__proj__Pair__item__psnd (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: prod 'a 'b -> 'b
(declare-fun Tm_arrow_7da549856d7da3a5f38f57b1ce48996c () Term)
(declare-fun ExtTest.__proj__Pair__item__psnd@tok () Term)

; </end encoding val ExtTest.__proj__Pair__item__psnd>


; encoding sigelt let __proj__Pair__item__psnd


; <Skipped let __proj__Pair__item__psnd/>


; encoding sigelt let ffst


; <Start encoding let ffst>

(declare-fun ExtTest.ffst (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: prod _ _ -> _
(declare-fun Tm_arrow_2ac3eea08881083d91e39e91f79fe08f (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: prod _ _ -> _
(declare-fun Tm_arrow_66533baa323d4e70323e4f694c2554e2 () Term)
(declare-fun ExtTest.ffst@tok () Term)


; </end encoding let ffst>


; encoding sigelt let idlist


; <Start encoding let idlist>

(declare-fun ExtTest.idlist (Term) Term)
;;;;;;;;;;;;;;;;x: Prims.list Prims.int -> Prims.list Prims.int
(declare-fun Tm_arrow_fa7d3badcb74f97a9380245dc028041e () Term)
(declare-fun ExtTest.idlist@tok () Term)

; </end encoding let idlist>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.nnat


; <Start encoding type ExtTest.nnat>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.nnat () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.O () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.O
(declare-fun ExtTest.O@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.S (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.S__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.S
(declare-fun ExtTest.S@tok () Term)
;;;;;;;;;;;;;;;;_0: nnat -> nnat
(declare-fun Tm_arrow_e3d27f32772bc690d9636c326a7719b2 () Term)

; <start constructor ExtTest.nnat>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.nnat ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
163)
(= __@x0
ExtTest.nnat)))

; </end constructor ExtTest.nnat>


; <start constructor ExtTest.O>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.O ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
169)
(= __@x0
ExtTest.O)))

; </end constructor ExtTest.O>


; <start constructor ExtTest.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
171)
(= __@x0
(ExtTest.S (ExtTest.S__0 __@x0)))))

; </end constructor ExtTest.S>


; </end encoding type ExtTest.nnat>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (HasType ExtTest.O@tok
ExtTest.nnat)
:named typing_tok_ExtTest.O@tok))
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
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.S @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat))
:qid subterm_ordering_ExtTest.S))

:named subterm_ordering_ExtTest.S))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (= (ExtTest.S__0 (ExtTest.S @x0))
@x0)
 

:pattern ((ExtTest.S @x0))
:qid projection_inverse_ExtTest.S__0))

:named projection_inverse_ExtTest.S__0))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (HasType ExtTest.nnat
Tm_type)
:named kinding_ExtTest.nnat@tok))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(28,5-28,9); use=ExtTest.fst(28,5-28,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
ExtTest.nnat)
(or (is-ExtTest.O @x1)
(is-ExtTest.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
ExtTest.nnat))
:qid fuel_guarded_inversion_ExtTest.nnat))

:named fuel_guarded_inversion_ExtTest.nnat))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= ExtTest.O@tok
ExtTest.O)
:named equality_tok_ExtTest.O@tok))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
(ExtTest.S @x1)
ExtTest.nnat))
 

:pattern ((HasTypeFuel @u0
(ExtTest.S @x1)
ExtTest.nnat))
:qid data_typing_intro_ExtTest.S@tok))

:named data_typing_intro_ExtTest.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(29,2-29,3); use=ExtTest.fst(29,2-29,3)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
ExtTest.O
ExtTest.nnat)
 

:pattern ((HasTypeFuel @u0
ExtTest.O
ExtTest.nnat))
:qid data_typing_intro_ExtTest.O@tok))

:named data_typing_intro_ExtTest.O@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat)
(HasTypeFuel @u0
@x1
ExtTest.nnat))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat))
:qid data_elim_ExtTest.S))

:named data_elim_ExtTest.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Prims.unit; Namespace Prims
(assert (! (= 125
(Term_constr_id Prims.unit))
:named constructor_distinct_Prims.unit))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= 163
(Term_constr_id ExtTest.nnat))
:named constructor_distinct_ExtTest.nnat))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (= 171
(Term_constr_id (ExtTest.S @x0)))
 

:pattern ((ExtTest.S @x0))
:qid constructor_distinct_ExtTest.S))

:named constructor_distinct_ExtTest.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= 169
(Term_constr_id ExtTest.O))
:named constructor_distinct_ExtTest.O))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(28,5-28,9); use=ExtTest.fst(28,5-28,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
ExtTest.nnat)
(= ExtTest.nnat
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
ExtTest.nnat))
:qid ExtTest_pretyping_e37378695de4217242c510e652a88706))

:named ExtTest_pretyping_e37378695de4217242c510e652a88706))
(push) ;; push{4

; Starting query at ExtTest.fst(28,0-30,18)

(declare-fun label_1 () Bool)

; Encoding query formula : Prims.hasEq ExtTest.nnat ==>
; (forall (_0: ExtTest.nnat).
;     (*  - Failed to prove that the type
;     'ExtTest.nnat'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;     Prims.hasEq ExtTest.nnat)


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.nnat`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(28,0-30,18)
(Valid 
;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(28,0-30,18)
(Prims.hasEq ExtTest.nnat)
)


;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(28,0-30,18)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)

;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(30,6-30,10)
(or label_1

;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(28,0-30,18)
(Valid 
;; def=ExtTest.fst(28,0-30,18); use=ExtTest.fst(28,0-30,18)
(Prims.hasEq ExtTest.nnat)
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
; QUERY ID: (ExtTest.nnat, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.nnat


; <Start encoding type ExtTest.nnat>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.nnat () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.O () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.O
(declare-fun ExtTest.O@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.S (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.S__0 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.S
(declare-fun ExtTest.S@tok () Term)
;;;;;;;;;;;;;;;;_0: nnat -> nnat
(declare-fun Tm_arrow_e3d27f32772bc690d9636c326a7719b2 () Term)

; <start constructor ExtTest.nnat>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.nnat ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
175)
(= __@x0
ExtTest.nnat)))

; </end constructor ExtTest.nnat>


; <start constructor ExtTest.O>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.O ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
181)
(= __@x0
ExtTest.O)))

; </end constructor ExtTest.O>


; <start constructor ExtTest.S>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.S ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
183)
(= __@x0
(ExtTest.S (ExtTest.S__0 __@x0)))))

; </end constructor ExtTest.S>


; </end encoding type ExtTest.nnat>


; encoding sigelt assume ExtTest.nnat__uu___haseq


; <Start encoding assume ExtTest.nnat__uu___haseq>


; </end encoding assume ExtTest.nnat__uu___haseq>


; encoding sigelt val ExtTest.uu___is_O


; <Start encoding val ExtTest.uu___is_O>

(declare-fun ExtTest.uu___is_O (Term) Term)
;;;;;;;;;;;;;;;;projectee: nnat -> Prims.bool
(declare-fun Tm_arrow_7dbab8d82bc848555af2c857eceda3f8 () Term)
(declare-fun ExtTest.uu___is_O@tok () Term)

; </end encoding val ExtTest.uu___is_O>


; encoding sigelt let uu___is_O


; <Skipped let uu___is_O/>


; encoding sigelt val ExtTest.uu___is_S


; <Start encoding val ExtTest.uu___is_S>

(declare-fun ExtTest.uu___is_S (Term) Term)

(declare-fun ExtTest.uu___is_S@tok () Term)

; </end encoding val ExtTest.uu___is_S>


; encoding sigelt let uu___is_S


; <Skipped let uu___is_S/>


; encoding sigelt val ExtTest.__proj__S__item___0


; <Start encoding val ExtTest.__proj__S__item___0>

(declare-fun Tm_refine_e8f1a69fdef6bbad252920cf471a1fae () Term)
(declare-fun ExtTest.__proj__S__item___0 (Term) Term)

;;;;;;;;;;;;;;;;projectee: _: nnat{S? _} -> nnat
(declare-fun Tm_arrow_d1ce4ff679596f811bfbfc22cc303030 () Term)
(declare-fun ExtTest.__proj__S__item___0@tok () Term)

; </end encoding val ExtTest.__proj__S__item___0>

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
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (HasType ExtTest.O@tok
ExtTest.nnat)
:named typing_tok_ExtTest.O@tok))
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
;;; Fact-ids: Name ExtTest.uu___is_S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.uu___is_S @x0)
Prims.bool))
 

:pattern ((ExtTest.uu___is_S @x0))
:qid typing_ExtTest.uu___is_S))

:named typing_ExtTest.uu___is_S))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat)
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.S @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat))
:qid subterm_ordering_ExtTest.S))

:named subterm_ordering_ExtTest.S))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__S__item___0; Namespace ExtTest
(assert (! (HasType Tm_refine_e8f1a69fdef6bbad252920cf471a1fae
Tm_type)
:named refinement_kinding_Tm_refine_e8f1a69fdef6bbad252920cf471a1fae))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_e1adf49e5e772ddffa19181e1a812a81
Tm_type)
:named refinement_kinding_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
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
;;; Fact-ids: Name ExtTest.__proj__S__item___0; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_e8f1a69fdef6bbad252920cf471a1fae)
(and (HasTypeFuel @u0
@x1
ExtTest.nnat)

;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(BoxBool_proj_0 (ExtTest.uu___is_S @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_e8f1a69fdef6bbad252920cf471a1fae))
:qid refinement_interpretation_Tm_refine_e8f1a69fdef6bbad252920cf471a1fae))

:named refinement_interpretation_Tm_refine_e8f1a69fdef6bbad252920cf471a1fae))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (= (ExtTest.S__0 (ExtTest.S @x0))
@x0)
 

:pattern ((ExtTest.S @x0))
:qid projection_inverse_ExtTest.S__0))

:named projection_inverse_ExtTest.S__0))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (HasType ExtTest.nnat
Tm_type)
:named kinding_ExtTest.nnat@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e8f1a69fdef6bbad252920cf471a1fae
;;; Fact-ids: Name ExtTest.__proj__S__item___0; Namespace ExtTest
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e8f1a69fdef6bbad252920cf471a1fae))
(Valid (Prims.hasEq ExtTest.nnat)))
:named haseqTm_refine_e8f1a69fdef6bbad252920cf471a1fae))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e1adf49e5e772ddffa19181e1a812a81
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_e1adf49e5e772ddffa19181e1a812a81))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(28,5-28,9); use=ExtTest.fst(28,5-28,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
ExtTest.nnat)
(or (is-ExtTest.O @x1)
(is-ExtTest.S @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
ExtTest.nnat))
:qid fuel_guarded_inversion_ExtTest.nnat))

:named fuel_guarded_inversion_ExtTest.nnat))
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
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= ExtTest.O@tok
ExtTest.O)
:named equality_tok_ExtTest.O@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (= (ExtTest.uu___is_S @x0)
(BoxBool (is-ExtTest.S @x0)))
 

:pattern ((ExtTest.uu___is_S @x0))
:qid disc_equation_ExtTest.S))

:named disc_equation_ExtTest.S))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
(ExtTest.S @x1)
ExtTest.nnat))
 

:pattern ((HasTypeFuel @u0
(ExtTest.S @x1)
ExtTest.nnat))
:qid data_typing_intro_ExtTest.S@tok))

:named data_typing_intro_ExtTest.S@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(29,2-29,3); use=ExtTest.fst(29,2-29,3)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
ExtTest.O
ExtTest.nnat)
 

:pattern ((HasTypeFuel @u0
ExtTest.O
ExtTest.nnat))
:qid data_typing_intro_ExtTest.O@tok))

:named data_typing_intro_ExtTest.O@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat)
(HasTypeFuel @u0
@x1
ExtTest.nnat))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.S @x1)
ExtTest.nnat))
:qid data_elim_ExtTest.S))

:named data_elim_ExtTest.S))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= 175
(Term_constr_id ExtTest.nnat))
:named constructor_distinct_ExtTest.nnat))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(forall ((@x0 Term))
 (! (= 183
(Term_constr_id (ExtTest.S @x0)))
 

:pattern ((ExtTest.S @x0))
:qid constructor_distinct_ExtTest.S))

:named constructor_distinct_ExtTest.S))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! (= 181
(Term_constr_id ExtTest.O))
:named constructor_distinct_ExtTest.O))
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
;;;;;;;;;;;;;;;;Assumption: ExtTest.nnat__uu___haseq
;;; Fact-ids: Name ExtTest.nnat__uu___haseq; Namespace ExtTest
(assert (! (Valid (Prims.hasEq ExtTest.nnat))
:named assumption_ExtTest.nnat__uu___haseq))
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
;;; Fact-ids: Name ExtTest.nnat; Namespace ExtTest; Name ExtTest.O; Namespace ExtTest; Name ExtTest.S; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(28,5-28,9); use=ExtTest.fst(28,5-28,9)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
ExtTest.nnat)
(= ExtTest.nnat
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
ExtTest.nnat))
:qid ExtTest_pretyping_e37378695de4217242c510e652a88706))

:named ExtTest_pretyping_e37378695de4217242c510e652a88706))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (projectee: _: ExtTest.nnat{S? _}).
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
Tm_refine_e8f1a69fdef6bbad252920cf471a1fae)

;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(not 
;; def=ExtTest.fst(30,2-30,3); use=ExtTest.fst(30,2-30,3)
(BoxBool_proj_0 (ExtTest.uu___is_S @x0))
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
; QUERY ID: (ExtTest.__proj__S__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_e8f1a69fdef6bbad252920cf471a1fae

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__S__item___0


; <Skipped let __proj__S__item___0/>


; encoding sigelt let idnat


; <Start encoding let idnat>

(declare-fun ExtTest.idnat (Term) Term)

(declare-fun ExtTest.idnat@tok () Term)

; </end encoding let idnat>


; encoding sigelt let idnat2


; <Start encoding let idnat2>

(declare-fun ExtTest.idnat2 (Term) Term)

(declare-fun ExtTest.idnat2@tok () Term)

; </end encoding let idnat2>


; encoding sigelt let id


; <Start encoding let id>

(declare-fun ExtTest.id (Term Term) Term)

(declare-fun ExtTest.id@tok () Term)

; </end encoding let id>


; encoding sigelt let idp


; <Start encoding let idp>

(declare-fun ExtTest.idp (Term Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> x: _ -> _
(declare-fun Tm_arrow_c526915b1fc00c73866b6fc021418608 () Term)
(declare-fun ExtTest.idp@tok () Term)

; </end encoding let idp>


; encoding sigelt let idp'


; <Start encoding let idp'>

(declare-fun ExtTest.idp_ (Term Term) Term)

(declare-fun ExtTest.idp_@tok () Term)

; </end encoding let idp'>


; encoding sigelt let add1


; <Start encoding let add1>

(declare-fun ExtTest.add1 (Term) Term)

(declare-fun ExtTest.add1@tok () Term)

; </end encoding let add1>


; encoding sigelt let add2


; <Start encoding let add2>

(declare-fun ExtTest.add2 (Term) Term)

(declare-fun ExtTest.add2@tok () Term)

; </end encoding let add2>


; encoding sigelt let eval_order


; <Start encoding let eval_order>

;;;;;;;;;;;;;;;;_: Prims.string -> Prims.string
(declare-fun Tm_arrow_70affe4dada4ca8ba18740c614ba5211 () Term)

(declare-fun ExtTest.eval_order (Term Term) Term)


;;;;;;;;;;;;;;;;effectful: (_: Prims.string -> Prims.string) ->     f: (_: Prims.string -> _: Prims.string -> Prims.string)   -> Prims.string
(declare-fun Tm_arrow_ee9d5fb73b07a99ce9a684f66c74b848 () Term)
(declare-fun ExtTest.eval_order@tok () Term)



; </end encoding let eval_order>

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
;;; Fact-ids: Name ExtTest.uu___is_O; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(29,2-29,3); use=ExtTest.fst(29,2-29,3)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.uu___is_O @x0)
Prims.bool))
 

:pattern ((ExtTest.uu___is_O @x0))
:qid typing_ExtTest.uu___is_O))

:named typing_ExtTest.uu___is_O))
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
;;; Fact-ids: Name ExtTest.uu___is_O; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(29,2-29,3); use=ExtTest.fst(29,2-29,3)
(forall ((@x0 Term))
 (! (= (ExtTest.uu___is_O @x0)
(BoxBool (is-ExtTest.O @x0)))
 

:pattern ((ExtTest.uu___is_O @x0))
:qid disc_equation_ExtTest.O))

:named disc_equation_ExtTest.O))
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

; Starting query at ExtTest.fst(57,11-59,12)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: ExtTest.nnat).
;   (*  - Could not prove post-condition
; *)
;   forall (k: Prims.pure_post ExtTest.nnat).
;     (forall (x: ExtTest.nnat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;     ~(O? _) /\ ~(S? _) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let prev`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post ExtTest.nnat))

;; def=Prims.fst(402,27-402,88); use=ExtTest.fst(57,11-59,12)
(forall ((@x2 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(57,11-59,12)
(Valid 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(57,11-59,12)
(ApplyTT @x1
@x2)
)

 

:pattern ((ApplyTT @x1
@x2))
:qid @query.2))


;; def=ExtTest.fst(57,11-59,12); use=ExtTest.fst(57,11-59,12)
(not 
;; def=ExtTest.fst(57,11-59,12); use=ExtTest.fst(57,11-59,12)
(BoxBool_proj_0 (ExtTest.uu___is_O @x0))
)


;; def=ExtTest.fst(57,11-59,12); use=ExtTest.fst(57,11-59,12)
(not 
;; def=ExtTest.fst(57,11-59,12); use=ExtTest.fst(57,11-59,12)
(BoxBool_proj_0 (ExtTest.uu___is_S @x0))
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
; QUERY ID: (ExtTest.prev, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, disc_equation_ExtTest.O, disc_equation_ExtTest.S, fuel_guarded_inversion_ExtTest.nnat, projection_inverse_BoxBool_proj_0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let prev


; <Start encoding let prev>

(declare-fun ExtTest.prev (Term) Term)

(declare-fun ExtTest.prev@tok () Term)

; </end encoding let prev>


; encoding sigelt val ExtTest.add


; <Skipped val ExtTest.add/>

(push) ;; push{2

; Starting query at ExtTest.fst(63,2-65,22)

;;;;;;;;;;;;;;;;a : ExtTest.nnat (ExtTest.nnat)
(declare-fun x_e37378695de4217242c510e652a88706_0 () Term)
;;;;;;;;;;;;;;;;binder_x_e37378695de4217242c510e652a88706_0
;;; Fact-ids: 
(assert (! (HasType x_e37378695de4217242c510e652a88706_0
ExtTest.nnat)
:named binder_x_e37378695de4217242c510e652a88706_0))
;;;;;;;;;;;;;;;;b : ExtTest.nnat (ExtTest.nnat)
(declare-fun x_e37378695de4217242c510e652a88706_1 () Term)
;;;;;;;;;;;;;;;;binder_x_e37378695de4217242c510e652a88706_1
;;; Fact-ids: 
(assert (! (HasType x_e37378695de4217242c510e652a88706_1
ExtTest.nnat)
:named binder_x_e37378695de4217242c510e652a88706_1))
(declare-fun Tm_refine_64760cda13439a024fe4bc26076d2a5d (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_64760cda13439a024fe4bc26076d2a5d @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_64760cda13439a024fe4bc26076d2a5d @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_64760cda13439a024fe4bc26076d2a5d))

:named refinement_kinding_Tm_refine_64760cda13439a024fe4bc26076d2a5d))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_64760cda13439a024fe4bc26076d2a5d @x2))
(and (HasTypeFuel @u0
@x1
ExtTest.nnat)

;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)

;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)
(or 
;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(63,2-65,22)
(Valid 
;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(63,2-65,22)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x2
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)
(and 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(62,12-62,13)
(Valid 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(62,12-62,13)
(Prims.op_Equals_Equals_Equals ExtTest.nnat
ExtTest.nnat
@x2
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(63,2-65,22)
(Valid 
;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(63,2-65,22)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_64760cda13439a024fe4bc26076d2a5d @x2)))
:qid refinement_interpretation_Tm_refine_64760cda13439a024fe4bc26076d2a5d))

:named refinement_interpretation_Tm_refine_64760cda13439a024fe4bc26076d2a5d))
;;;;;;;;;;;;;;;;haseq for Tm_refine_64760cda13439a024fe4bc26076d2a5d
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(62,12-65,22)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_64760cda13439a024fe4bc26076d2a5d @x0)))
(Valid (Prims.hasEq ExtTest.nnat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_64760cda13439a024fe4bc26076d2a5d @x0))))
:qid haseqTm_refine_64760cda13439a024fe4bc26076d2a5d))

:named haseqTm_refine_64760cda13439a024fe4bc26076d2a5d))
(declare-fun ExtTest.add (Term Term) Term)

;;;;;;;;;;;;;;;;_: nnat -> _: _: nnat{_ << a \/ _ === a /\ _ << b} -> nnat
(declare-fun Tm_arrow_3eed6c4335fa0174e55c820f1264d57c () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_3eed6c4335fa0174e55c820f1264d57c
Tm_type)
:named kinding_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(61,10-65,22); use=ExtTest.fst(62,8-65,22)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_3eed6c4335fa0174e55c820f1264d57c)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))
:qid ExtTest_pre_typing_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))

:named ExtTest_pre_typing_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(61,10-65,22); use=ExtTest.fst(62,8-65,22)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_3eed6c4335fa0174e55c820f1264d57c)
(and 
;; def=ExtTest.fst(61,10-65,22); use=ExtTest.fst(62,8-65,22)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)
(HasType @x2
(Tm_refine_64760cda13439a024fe4bc26076d2a5d @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
ExtTest.nnat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid ExtTest_interpretation_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c.1))

(IsTotFun @x0)

;; def=ExtTest.fst(61,10-65,22); use=ExtTest.fst(62,8-65,22)
(forall ((@x1 Term))
 (! (implies (HasType @x1
ExtTest.nnat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid ExtTest_interpretation_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))
:qid ExtTest_interpretation_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))

:named ExtTest_interpretation_Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))
(declare-fun ExtTest.add@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.add@tok
@x0)
@x1)
(ExtTest.add @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.add@tok
@x0)
@x1))
:qid token_correspondence_ExtTest.add))

:named token_correspondence_ExtTest.add))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType ExtTest.add@tok
Tm_arrow_3eed6c4335fa0174e55c820f1264d57c))

;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.add@tok
@x1)
@x2)
(ExtTest.add @x1
@x2))
 

:pattern ((ExtTest.add @x1
@x2))
:qid function_token_typing_ExtTest.add.1))
)
 

:pattern ((ApplyTT @x0
ExtTest.add@tok))
:qid function_token_typing_ExtTest.add))

:named function_token_typing_ExtTest.add))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
ExtTest.nnat)
(HasType @x1
(Tm_refine_64760cda13439a024fe4bc26076d2a5d @x0)))
(HasType (ExtTest.add @x0
@x1)
ExtTest.nnat))
 

:pattern ((ExtTest.add @x0
@x1))
:qid typing_ExtTest.add))

:named typing_ExtTest.add))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post ExtTest.nnat).
;   (forall (x: ExtTest.nnat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? a) /\ ~(S? a) ==> Prims.l_False) /\
;   (~(O? a) ==> (forall (b: ExtTest.nnat). a == ExtTest.S b ==> b << a \/ b === a /\ b << b))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec add`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post ExtTest.nnat))

;; def=Prims.fst(402,27-402,88); use=ExtTest.fst(63,2-65,22)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(63,2-65,22)
(Valid 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(63,2-65,22)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=ExtTest.fst(63,2-65,22)
(and (implies 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(and 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(not 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(not 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(BoxBool_proj_0 (ExtTest.uu___is_S x_e37378695de4217242c510e652a88706_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=ExtTest.fst(63,2-65,22)
(not 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(63,8-63,9)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=Prims.fst(413,99-413,120); use=ExtTest.fst(63,2-65,22)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)

;; def=ExtTest.fst(62,12-65,6); use=ExtTest.fst(63,8-65,6)
(= x_e37378695de4217242c510e652a88706_0
(ExtTest.S @x1))
)

;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(65,20-65,21)
(or label_2

;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(65,20-65,21)
(Valid 
;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(65,20-65,21)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(62,12-65,22); use=ExtTest.fst(65,20-65,21)
(and 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(65,20-65,21)
(Valid 
;; def=ExtTest.fst(62,12-62,13); use=ExtTest.fst(65,20-65,21)
(Prims.op_Equals_Equals_Equals ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(65,20-65,21)
(Valid 
;; def=ExtTest.fst(63,2-65,22); use=ExtTest.fst(65,20-65,21)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
x_e37378695de4217242c510e652a88706_1
x_e37378695de4217242c510e652a88706_1)
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
; QUERY ID: (ExtTest.add, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, ExtTest_pretyping_e37378695de4217242c510e652a88706, binder_x_e37378695de4217242c510e652a88706_0, disc_equation_ExtTest.O, disc_equation_ExtTest.S, equality_tok_ExtTest.O@tok, fuel_guarded_inversion_ExtTest.nnat, projection_inverse_BoxBool_proj_0, projection_inverse_ExtTest.S__0, subterm_ordering_ExtTest.S, typing_tok_ExtTest.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec add


; <Start encoding let rec add>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun ExtTest.add.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun ExtTest.add.fuel_instrumented_token () Term)
(declare-fun ExtTest.add (Term Term) Term)
(declare-fun ExtTest.add@tok () Term)
;;;;;;;;;;;;;;;;a: nnat -> b: nnat -> nnat
(declare-fun Tm_arrow_fe5ebbec418d568df37a7de7b2bea804 () Term)

; </end encoding let rec add>


; encoding sigelt let prepend0


; <Start encoding let prepend0>

(declare-fun ExtTest.prepend0 (Term) Term)
;;;;;;;;;;;;;;;;tll: Prims.list nnat -> Prims.list nnat
(declare-fun Tm_arrow_65c959c8a9aff514bf9790311b16150e () Term)
(declare-fun ExtTest.prepend0@tok () Term)

; </end encoding let prepend0>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.list2


; <Start encoding type ExtTest.list2>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.list2 (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.list2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nil2 (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nil2
(declare-fun ExtTest.Nil2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Cons2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_hd2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Cons2
(declare-fun ExtTest.Cons2@tok () Term)
;;;;;;;;;;;;;;;;list2 'a b
(declare-fun Tm_arrow_7a6eb61580000f1ad9f7c1db708361c2 () Term)
;;;;;;;;;;;;;;;;hd: 'a -> hd2: b -> tl: list2 'a b -> list2 'a b
(declare-fun Tm_arrow_7ef1fd80ca46078cb7daa5efa9dde496 () Term)

; <start constructor ExtTest.list2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.list2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
251)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.list2 @x0
@x1))
 
;;no pats
:qid is-ExtTest.list2))))

; </end constructor ExtTest.list2>


; <start constructor ExtTest.Nil2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nil2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
258)
(= __@x0
(ExtTest.Nil2 (ExtTest.Nil2__a __@x0)
(ExtTest.Nil2_b __@x0)))))

; </end constructor ExtTest.Nil2>


; <start constructor ExtTest.Cons2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Cons2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
263)
(= __@x0
(ExtTest.Cons2 (ExtTest.Cons2__a __@x0)
(ExtTest.Cons2_b __@x0)
(ExtTest.Cons2_hd __@x0)
(ExtTest.Cons2_hd2 __@x0)
(ExtTest.Cons2_tl __@x0)))))

; </end constructor ExtTest.Cons2>


; </end encoding type ExtTest.list2>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.list2@tok
@x0)
@x1)
(ExtTest.list2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.list2@tok
@x0)
@x1))

:pattern ((ExtTest.list2 @x0
@x1))
:qid token_correspondence_ExtTest.list2@tok))

:named token_correspondence_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7)))
:qid subterm_ordering_ExtTest.Cons2))

:named subterm_ordering_ExtTest.Cons2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.Nil2_b (ExtTest.Nil2 @x0
@x1))
@x1)
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid projection_inverse_ExtTest.Nil2_b))

:named projection_inverse_ExtTest.Nil2_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.Nil2__a (ExtTest.Nil2 @x0
@x1))
@x0)
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid projection_inverse_ExtTest.Nil2__a))

:named projection_inverse_ExtTest.Nil2__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_tl (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_tl))

:named projection_inverse_ExtTest.Cons2_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_hd2 (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_hd2))

:named projection_inverse_ExtTest.Cons2_hd2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_hd (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_hd))

:named projection_inverse_ExtTest.Cons2_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_b (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x1)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_b))

:named projection_inverse_ExtTest.Cons2_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2__a (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x0)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2__a))

:named projection_inverse_ExtTest.Cons2__a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.list2@tok))
:named pre_kinding_ExtTest.list2@tok))
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.list2@tok)

;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.list2@tok
@x0))
 

:pattern ((ApplyTT ExtTest.list2@tok
@x0))
:qid kinding_ExtTest.list2@tok))


;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (ExtTest.list2 @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.list2 @x0
@x1))
:qid kinding_ExtTest.list2@tok.1))
)
:named kinding_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2 @x2
@x3))
(or (and (is-ExtTest.Nil2 @x1)
(= @x2
(ExtTest.Nil2__a @x1))
(= @x3
(ExtTest.Nil2_b @x1)))
(and (is-ExtTest.Cons2 @x1)
(= @x2
(ExtTest.Cons2__a @x1))
(= @x3
(ExtTest.Cons2_b @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2 @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.list2))

:named fuel_guarded_inversion_ExtTest.list2))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (= 252
(Term_constr_id ExtTest.list2@tok))
:named fresh_token_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type))
(HasTypeFuel @u0
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x1
@x2)))
:qid data_typing_intro_ExtTest.Nil2@tok))

:named data_typing_intro_ExtTest.Nil2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
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
@x2)
(HasTypeFuel @u0
@x5
(ExtTest.list2 @x1
@x2)))
(HasTypeFuel @u0
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x1
@x2)))
:qid data_typing_intro_ExtTest.Cons2@tok))

:named data_typing_intro_ExtTest.Cons2@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x3
@x4))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
Tm_type)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x3
@x4)))
:qid data_elim_ExtTest.Nil2))

:named data_elim_ExtTest.Nil2))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7))
(and (HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x3
@x6)
(HasTypeFuel @u0
@x4
@x7)
(HasTypeFuel @u0
@x5
(ExtTest.list2 @x6
@x7))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7)))
:qid data_elim_ExtTest.Cons2))

:named data_elim_ExtTest.Cons2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 251
(Term_constr_id (ExtTest.list2 @x0
@x1)))
 

:pattern ((ExtTest.list2 @x0
@x1))
:qid constructor_distinct_ExtTest.list2))

:named constructor_distinct_ExtTest.list2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 258
(Term_constr_id (ExtTest.Nil2 @x0
@x1)))
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid constructor_distinct_ExtTest.Nil2))

:named constructor_distinct_ExtTest.Nil2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 263
(Term_constr_id (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_ExtTest.Cons2))

:named constructor_distinct_ExtTest.Cons2))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.list2 @x2
@x3))
(= (ExtTest.list2 @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.list2 @x2
@x3)))
:qid ExtTest_pretyping_7b6194bd84124b6f56f8b9750d09514f))

:named ExtTest_pretyping_7b6194bd84124b6f56f8b9750d09514f))
(push) ;; push{4

; Starting query at ExtTest.fst(75,0-77,58)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall ('a: Type) (b: Type).
;   Prims.hasEq 'a /\ Prims.hasEq b /\
;   (forall ('a: Type) (b: Type). {:pattern Prims.hasEq (ExtTest.list2 'a b)}
;       Prims.hasEq 'a /\ Prims.hasEq b ==> Prims.hasEq (ExtTest.list2 'a b)) ==>
;   (forall (hd: 'a) (hd2: b) (tl: ExtTest.list2 'a b).
;       Prims.hasEq 'a /\ Prims.hasEq b /\ Prims.hasEq (ExtTest.list2 'a b))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.list2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x1)
)


;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
Tm_type)

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x2)
)


;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x3)
)
)

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq (ExtTest.list2 @x2
@x3))
)
)
 

:pattern ((Prims.hasEq (ExtTest.list2 @x2
@x3)))
:qid @query.1))
)

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
@x1)
(HasType @x4
(ExtTest.list2 @x0
@x1)))

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(and 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(77,15-77,17)
(or label_1

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x0)
)
)


;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(77,25-77,26)
(or label_2

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq @x1)
)
)


;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(77,34-77,44)
(or label_3

;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Valid 
;; def=ExtTest.fst(75,0-77,58); use=ExtTest.fst(75,0-77,58)
(Prims.hasEq (ExtTest.list2 @x0
@x1))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.list2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.list2


; <Start encoding type ExtTest.list2>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.list2 (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.list2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nil2 (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2_b (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nil2
(declare-fun ExtTest.Nil2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Cons2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_b (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_hd2 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Cons2
(declare-fun ExtTest.Cons2@tok () Term)
;;;;;;;;;;;;;;;;list2 'a b
(declare-fun Tm_arrow_7a6eb61580000f1ad9f7c1db708361c2 () Term)
;;;;;;;;;;;;;;;;hd: 'a -> hd2: b -> tl: list2 'a b -> list2 'a b
(declare-fun Tm_arrow_7ef1fd80ca46078cb7daa5efa9dde496 () Term)

; <start constructor ExtTest.list2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.list2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
267)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.list2 @x0
@x1))
 
;;no pats
:qid is-ExtTest.list2))))

; </end constructor ExtTest.list2>


; <start constructor ExtTest.Nil2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nil2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
274)
(= __@x0
(ExtTest.Nil2 (ExtTest.Nil2__a __@x0)
(ExtTest.Nil2_b __@x0)))))

; </end constructor ExtTest.Nil2>


; <start constructor ExtTest.Cons2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Cons2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
279)
(= __@x0
(ExtTest.Cons2 (ExtTest.Cons2__a __@x0)
(ExtTest.Cons2_b __@x0)
(ExtTest.Cons2_hd __@x0)
(ExtTest.Cons2_hd2 __@x0)
(ExtTest.Cons2_tl __@x0)))))

; </end constructor ExtTest.Cons2>


; </end encoding type ExtTest.list2>


; encoding sigelt assume ExtTest.list2__uu___haseq


; <Start encoding assume ExtTest.list2__uu___haseq>


; </end encoding assume ExtTest.list2__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Nil2


; <Start encoding val ExtTest.uu___is_Nil2>

(declare-fun ExtTest.uu___is_Nil2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: list2 'a b -> Prims.bool
(declare-fun Tm_arrow_adcdd159d30aac8bd3a835efb9fe808a () Term)
(declare-fun ExtTest.uu___is_Nil2@tok () Term)

; </end encoding val ExtTest.uu___is_Nil2>


; encoding sigelt let uu___is_Nil2


; <Skipped let uu___is_Nil2/>


; encoding sigelt val ExtTest.uu___is_Cons2


; <Start encoding val ExtTest.uu___is_Cons2>

(declare-fun ExtTest.uu___is_Cons2 (Term Term Term) Term)

(declare-fun ExtTest.uu___is_Cons2@tok () Term)

; </end encoding val ExtTest.uu___is_Cons2>


; encoding sigelt let uu___is_Cons2


; <Skipped let uu___is_Cons2/>


; encoding sigelt val ExtTest.__proj__Cons2__item__hd


; <Start encoding val ExtTest.__proj__Cons2__item__hd>

(declare-fun Tm_refine_d2adc8a1e920a4a656713d77499ce1fb (Term Term) Term)
(declare-fun ExtTest.__proj__Cons2__item__hd (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list2 'a b {Cons2? _} -> 'a
(declare-fun Tm_arrow_6f05435e43cccdba4a955c09df561e46 () Term)
(declare-fun ExtTest.__proj__Cons2__item__hd@tok () Term)

; </end encoding val ExtTest.__proj__Cons2__item__hd>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(HasType @x2
(ExtTest.list2 @x0
@x1)))
(HasType (ExtTest.uu___is_Cons2 @x0
@x1
@x2)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Cons2 @x0
@x1
@x2))
:qid typing_ExtTest.uu___is_Cons2))

:named typing_ExtTest.uu___is_Cons2))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.list2@tok
@x0)
@x1)
(ExtTest.list2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.list2@tok
@x0)
@x1))

:pattern ((ExtTest.list2 @x0
@x1))
:qid token_correspondence_ExtTest.list2@tok))

:named token_correspondence_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x5
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7)))
:qid subterm_ordering_ExtTest.Cons2))

:named subterm_ordering_ExtTest.Cons2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Cons2__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb))

:named refinement_kinding_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Cons2__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x2
@x3))
(and (HasTypeFuel @u0
@x1
(ExtTest.list2 @x2
@x3))

;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2 @x2
@x3
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb))

:named refinement_interpretation_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.Nil2_b (ExtTest.Nil2 @x0
@x1))
@x1)
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid projection_inverse_ExtTest.Nil2_b))

:named projection_inverse_ExtTest.Nil2_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.Nil2__a (ExtTest.Nil2 @x0
@x1))
@x0)
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid projection_inverse_ExtTest.Nil2__a))

:named projection_inverse_ExtTest.Nil2__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_tl (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x4)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_tl))

:named projection_inverse_ExtTest.Cons2_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_hd2 (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x3)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_hd2))

:named projection_inverse_ExtTest.Cons2_hd2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_hd (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x2)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_hd))

:named projection_inverse_ExtTest.Cons2_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2_b (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x1)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2_b))

:named projection_inverse_ExtTest.Cons2_b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (ExtTest.Cons2__a (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
@x0)
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid projection_inverse_ExtTest.Cons2__a))

:named projection_inverse_ExtTest.Cons2__a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.list2@tok))
:named pre_kinding_ExtTest.list2@tok))
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.list2@tok)

;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.list2@tok
@x0))
 

:pattern ((ApplyTT ExtTest.list2@tok
@x0))
:qid kinding_ExtTest.list2@tok))


;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (ExtTest.list2 @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.list2 @x0
@x1))
:qid kinding_ExtTest.list2@tok.1))
)
:named kinding_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d2adc8a1e920a4a656713d77499ce1fb
;;; Fact-ids: Name ExtTest.__proj__Cons2__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1)))
(Valid (Prims.hasEq (ExtTest.list2 @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1))))
:qid haseqTm_refine_d2adc8a1e920a4a656713d77499ce1fb))

:named haseqTm_refine_d2adc8a1e920a4a656713d77499ce1fb))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2 @x2
@x3))
(or (and (is-ExtTest.Nil2 @x1)
(= @x2
(ExtTest.Nil2__a @x1))
(= @x3
(ExtTest.Nil2_b @x1)))
(and (is-ExtTest.Cons2 @x1)
(= @x2
(ExtTest.Cons2__a @x1))
(= @x3
(ExtTest.Cons2_b @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2 @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.list2))

:named fuel_guarded_inversion_ExtTest.list2))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! (= 268
(Term_constr_id ExtTest.list2@tok))
:named fresh_token_ExtTest.list2@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.uu___is_Cons2 @x0
@x1
@x2)
(BoxBool (is-ExtTest.Cons2 @x2)))
 

:pattern ((ExtTest.uu___is_Cons2 @x0
@x1
@x2))
:qid disc_equation_ExtTest.Cons2))

:named disc_equation_ExtTest.Cons2))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Tm_type))
(HasTypeFuel @u0
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x1
@x2)))
:qid data_typing_intro_ExtTest.Nil2@tok))

:named data_typing_intro_ExtTest.Nil2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
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
@x2)
(HasTypeFuel @u0
@x5
(ExtTest.list2 @x1
@x2)))
(HasTypeFuel @u0
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x1
@x2)))
:qid data_typing_intro_ExtTest.Cons2@tok))

:named data_typing_intro_ExtTest.Cons2@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x3
@x4))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
Tm_type)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil2 @x1
@x2)
(ExtTest.list2 @x3
@x4)))
:qid data_elim_ExtTest.Nil2))

:named data_elim_ExtTest.Nil2))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7))
(and (HasTypeFuel @u0
@x6
Tm_type)
(HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x3
@x6)
(HasTypeFuel @u0
@x4
@x7)
(HasTypeFuel @u0
@x5
(ExtTest.list2 @x6
@x7))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2 @x1
@x2
@x3
@x4
@x5)
(ExtTest.list2 @x6
@x7)))
:qid data_elim_ExtTest.Cons2))

:named data_elim_ExtTest.Cons2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 267
(Term_constr_id (ExtTest.list2 @x0
@x1)))
 

:pattern ((ExtTest.list2 @x0
@x1))
:qid constructor_distinct_ExtTest.list2))

:named constructor_distinct_ExtTest.list2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(76,4-76,8); use=ExtTest.fst(76,4-76,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 274
(Term_constr_id (ExtTest.Nil2 @x0
@x1)))
 

:pattern ((ExtTest.Nil2 @x0
@x1))
:qid constructor_distinct_ExtTest.Nil2))

:named constructor_distinct_ExtTest.Nil2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,4-77,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= 279
(Term_constr_id (ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4)))
 

:pattern ((ExtTest.Cons2 @x0
@x1
@x2
@x3
@x4))
:qid constructor_distinct_ExtTest.Cons2))

:named constructor_distinct_ExtTest.Cons2))
;;;;;;;;;;;;;;;;Assumption: ExtTest.list2__uu___haseq
;;; Fact-ids: Name ExtTest.list2__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(Valid (Prims.hasEq @x0))
(Valid (Prims.hasEq @x1)))
(Valid (Prims.hasEq (ExtTest.list2 @x0
@x1))))
 

:pattern ((Prims.hasEq (ExtTest.list2 @x0
@x1)))
:qid assumption_ExtTest.list2__uu___haseq))
:named assumption_ExtTest.list2__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.list2; Namespace ExtTest; Name ExtTest.Nil2; Namespace ExtTest; Name ExtTest.Cons2; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(75,5-75,10); use=ExtTest.fst(75,5-75,10)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.list2 @x2
@x3))
(= (ExtTest.list2 @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.list2 @x2
@x3)))
:qid ExtTest_pretyping_7b6194bd84124b6f56f8b9750d09514f))

:named ExtTest_pretyping_7b6194bd84124b6f56f8b9750d09514f))
(push) ;; push{2

; Starting query at ExtTest.fst(77,12-77,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall ('a: Type) (b: Type) (projectee: _: ExtTest.list2 'a b {Cons2? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons2? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons2__item__hd`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)
(HasType @x2
(Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1))

;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,12-77,14)
(not 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,12-77,14)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2 @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Cons2__item__hd, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons2__item__hd


; <Skipped let __proj__Cons2__item__hd/>


; encoding sigelt val ExtTest.__proj__Cons2__item__hd2


; <Start encoding val ExtTest.__proj__Cons2__item__hd2>


(declare-fun ExtTest.__proj__Cons2__item__hd2 (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list2 'a b {Cons2? _} -> b
(declare-fun Tm_arrow_52c1615c496609df91450ce9d831b41e () Term)
(declare-fun ExtTest.__proj__Cons2__item__hd2@tok () Term)

; </end encoding val ExtTest.__proj__Cons2__item__hd2>

(push) ;; push{2

; Starting query at ExtTest.fst(77,21-77,24)

(declare-fun label_1 () Bool)


; Encoding query formula : forall ('a: Type) (b: Type) (projectee: _: ExtTest.list2 'a b {Cons2? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons2? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons2__item__hd2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)
(HasType @x2
(Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1))

;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,21-77,24)
(not 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,21-77,24)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2 @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Cons2__item__hd2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons2__item__hd2


; <Skipped let __proj__Cons2__item__hd2/>


; encoding sigelt val ExtTest.__proj__Cons2__item__tl


; <Start encoding val ExtTest.__proj__Cons2__item__tl>


(declare-fun ExtTest.__proj__Cons2__item__tl (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list2 'a b {Cons2? _} -> list2 'a b
(declare-fun Tm_arrow_b34c1513106ed5ab262282ff83b1ae01 () Term)
(declare-fun ExtTest.__proj__Cons2__item__tl@tok () Term)

; </end encoding val ExtTest.__proj__Cons2__item__tl>

(push) ;; push{2

; Starting query at ExtTest.fst(77,31-77,33)

(declare-fun label_1 () Bool)


; Encoding query formula : forall ('a: Type) (b: Type) (projectee: _: ExtTest.list2 'a b {Cons2? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons2? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons2__item__tl`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)
(HasType @x2
(Tm_refine_d2adc8a1e920a4a656713d77499ce1fb @x0
@x1))

;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,31-77,33)
(not 
;; def=ExtTest.fst(77,4-77,9); use=ExtTest.fst(77,31-77,33)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2 @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Cons2__item__tl, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_d2adc8a1e920a4a656713d77499ce1fb

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons2__item__tl


; <Skipped let __proj__Cons2__item__tl/>


; encoding sigelt type ExtTest.any


; <Start encoding type ExtTest.any>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.any () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Any (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Any_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Any__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Any
(declare-fun ExtTest.Any@tok () Term)
;;;;;;;;;;;;;;;;a: Type -> _1: a -> any
(declare-fun Tm_arrow_296b57cfa459cb118bcf16c346b5f471 () Term)

; <start constructor ExtTest.any>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.any ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
302)
(= __@x0
ExtTest.any)))

; </end constructor ExtTest.any>


; <start constructor ExtTest.Any>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Any ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
308)
(= __@x0
(ExtTest.Any (ExtTest.Any_a __@x0)
(ExtTest.Any__1 __@x0)))))

; </end constructor ExtTest.Any>


; </end encoding type ExtTest.any>


; encoding sigelt val ExtTest.uu___is_Any


; <Start encoding val ExtTest.uu___is_Any>

(declare-fun ExtTest.uu___is_Any (Term) Term)
;;;;;;;;;;;;;;;;projectee: any -> Prims.bool
(declare-fun Tm_arrow_534f09dbb31bc36fed924b67fdf248a1 () Term)
(declare-fun ExtTest.uu___is_Any@tok () Term)

; </end encoding val ExtTest.uu___is_Any>


; encoding sigelt let uu___is_Any


; <Skipped let uu___is_Any/>


; encoding sigelt val ExtTest.__proj__Any__item__a


; <Start encoding val ExtTest.__proj__Any__item__a>

(declare-fun ExtTest.__proj__Any__item__a (Term) Term)
;;;;;;;;;;;;;;;;projectee: any -> Type
(declare-fun Tm_arrow_f35d9de474db14e2cf8ab10685098ac5 () Term)
(declare-fun ExtTest.__proj__Any__item__a@tok () Term)

; </end encoding val ExtTest.__proj__Any__item__a>


; encoding sigelt let __proj__Any__item__a


; <Skipped let __proj__Any__item__a/>


; encoding sigelt val ExtTest.__proj__Any__item___1


; <Start encoding val ExtTest.__proj__Any__item___1>

(declare-fun ExtTest.__proj__Any__item___1 (Term) Term)
;;;;;;;;;;;;;;;;projectee: any -> projectee.a
(declare-fun Tm_arrow_57461262c5963d041a17e14f4a4ceb4e () Term)
(declare-fun ExtTest.__proj__Any__item___1@tok () Term)

; </end encoding val ExtTest.__proj__Any__item___1>


; encoding sigelt let __proj__Any__item___1


; <Skipped let __proj__Any__item___1/>


; encoding sigelt let distr_pair


; <Start encoding let distr_pair>

(declare-fun ExtTest.distr_pair () Term)

;;;;;;;;;;;;;;;;_: (x: Type -> _: x -> x) -> prod nnat (Prims.list nnat)
(declare-fun Tm_arrow_d0f9b234765ace7aedab97fc708ea81d () Term)

; </end encoding let distr_pair>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.list2p


; <Start encoding type ExtTest.list2p>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.list2p (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.list2p@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nil2p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2p__a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nil2p
(declare-fun ExtTest.Nil2p@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Cons2p (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Cons2p
(declare-fun ExtTest.Cons2p@tok () Term)
;;;;;;;;;;;;;;;;list2p 'a
(declare-fun Tm_arrow_717d7854b678c93eefe2ea45d566f53c () Term)
;;;;;;;;;;;;;;;;hd: 'a -> tl: list2p (prod 'a 'a) -> list2p 'a
(declare-fun Tm_arrow_08585cec1693d7a11e2fbaa495a259a4 () Term)

; <start constructor ExtTest.list2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.list2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
338)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.list2p @x0))
 
;;no pats
:qid is-ExtTest.list2p))))

; </end constructor ExtTest.list2p>


; <start constructor ExtTest.Nil2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nil2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
345)
(= __@x0
(ExtTest.Nil2p (ExtTest.Nil2p__a __@x0)))))

; </end constructor ExtTest.Nil2p>


; <start constructor ExtTest.Cons2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Cons2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
350)
(= __@x0
(ExtTest.Cons2p (ExtTest.Cons2p__a __@x0)
(ExtTest.Cons2p_hd __@x0)
(ExtTest.Cons2p_tl __@x0)))))

; </end constructor ExtTest.Cons2p>


; </end encoding type ExtTest.list2p>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1)
(ExtTest.prod @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1))

:pattern ((ExtTest.prod @x0
@x1))
:qid token_correspondence_ExtTest.prod@tok))

:named token_correspondence_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.list2p@tok
@x0)
(ExtTest.list2p @x0))
 

:pattern ((ApplyTT ExtTest.list2p@tok
@x0))

:pattern ((ExtTest.list2p @x0))
:qid token_correspondence_ExtTest.list2p@tok))

:named token_correspondence_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Pair @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Pair @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid subterm_ordering_ExtTest.Pair))

:named subterm_ordering_ExtTest.Pair))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.Cons2p @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Cons2p @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4)))
:qid subterm_ordering_ExtTest.Cons2p))

:named subterm_ordering_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_psnd (ExtTest.Pair @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_psnd))

:named projection_inverse_ExtTest.Pair_psnd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_pfst (ExtTest.Pair @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_pfst))

:named projection_inverse_ExtTest.Pair_pfst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__b (ExtTest.Pair @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__b))

:named projection_inverse_ExtTest.Pair__b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__a (ExtTest.Pair @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__a))

:named projection_inverse_ExtTest.Pair__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@x0 Term))
 (! (= (ExtTest.Nil2p__a (ExtTest.Nil2p @x0))
@x0)
 

:pattern ((ExtTest.Nil2p @x0))
:qid projection_inverse_ExtTest.Nil2p__a))

:named projection_inverse_ExtTest.Nil2p__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p_tl (ExtTest.Cons2p @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p_tl))

:named projection_inverse_ExtTest.Cons2p_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p_hd (ExtTest.Cons2p @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p_hd))

:named projection_inverse_ExtTest.Cons2p_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p__a (ExtTest.Cons2p @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p__a))

:named projection_inverse_ExtTest.Cons2p__a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.prod@tok))
:named pre_kinding_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.list2p@tok))
:named pre_kinding_ExtTest.list2p@tok))
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.prod@tok)

;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.prod@tok
@x0))
 

:pattern ((ApplyTT ExtTest.prod@tok
@x0))
:qid kinding_ExtTest.prod@tok))


;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (ExtTest.prod @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid kinding_ExtTest.prod@tok.1))
)
:named kinding_ExtTest.prod@tok))
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.list2p@tok)

;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.list2p @x0)
Tm_type))
 

:pattern ((ExtTest.list2p @x0))
:qid kinding_ExtTest.list2p@tok))
)
:named kinding_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3))
(and (is-ExtTest.Pair @x1)
(= @x2
(ExtTest.Pair__a @x1))
(= @x3
(ExtTest.Pair__b @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.prod))

:named fuel_guarded_inversion_ExtTest.prod))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2p @x2))
(or (and (is-ExtTest.Nil2p @x1)
(= @x2
(ExtTest.Nil2p__a @x1)))
(and (is-ExtTest.Cons2p @x1)
(= @x2
(ExtTest.Cons2p__a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2p @x2)))
:qid fuel_guarded_inversion_ExtTest.list2p))

:named fuel_guarded_inversion_ExtTest.list2p))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (= 127
(Term_constr_id ExtTest.prod@tok))
:named fresh_token_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (= 339
(Term_constr_id ExtTest.list2p@tok))
:named fresh_token_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
:qid data_typing_intro_ExtTest.Pair@tok))

:named data_typing_intro_ExtTest.Pair@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x1)))
:qid data_typing_intro_ExtTest.Nil2p@tok))

:named data_typing_intro_ExtTest.Nil2p@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.list2p (ExtTest.prod @x1
@x1))))
(HasTypeFuel @u0
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x1)))
:qid data_typing_intro_ExtTest.Cons2p@tok))

:named data_typing_intro_ExtTest.Cons2p@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid data_elim_ExtTest.Pair))

:named data_elim_ExtTest.Pair))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x2)))
:qid data_elim_ExtTest.Nil2p))

:named data_elim_ExtTest.Nil2p))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.list2p (ExtTest.prod @x4
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4)))
:qid data_elim_ExtTest.Cons2p))

:named data_elim_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 126
(Term_constr_id (ExtTest.prod @x0
@x1)))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid constructor_distinct_ExtTest.prod))

:named constructor_distinct_ExtTest.prod))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (= 338
(Term_constr_id (ExtTest.list2p @x0)))
 

:pattern ((ExtTest.list2p @x0))
:qid constructor_distinct_ExtTest.list2p))

:named constructor_distinct_ExtTest.list2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 133
(Term_constr_id (ExtTest.Pair @x0
@x1
@x2
@x3)))
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid constructor_distinct_ExtTest.Pair))

:named constructor_distinct_ExtTest.Pair))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@x0 Term))
 (! (= 345
(Term_constr_id (ExtTest.Nil2p @x0)))
 

:pattern ((ExtTest.Nil2p @x0))
:qid constructor_distinct_ExtTest.Nil2p))

:named constructor_distinct_ExtTest.Nil2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 350
(Term_constr_id (ExtTest.Cons2p @x0
@x1
@x2)))
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.Cons2p))

:named constructor_distinct_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;Assumption: ExtTest.prod__uu___haseq
;;; Fact-ids: Name ExtTest.prod__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(Valid (Prims.hasEq @x0))
(Valid (Prims.hasEq @x1)))
(Valid (Prims.hasEq (ExtTest.prod @x0
@x1))))
 

:pattern ((Prims.hasEq (ExtTest.prod @x0
@x1)))
:qid assumption_ExtTest.prod__uu___haseq))
:named assumption_ExtTest.prod__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.list2p @x2))
(= (ExtTest.list2p @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.list2p @x2)))
:qid ExtTest_pretyping_a697b63ac34cd862c74a2b73d7a14403))

:named ExtTest_pretyping_a697b63ac34cd862c74a2b73d7a14403))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3))
(= (ExtTest.prod @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3)))
:qid ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))

:named ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))
(push) ;; push{4

; Starting query at ExtTest.fst(89,0-91,60)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall ('a: Type).
;   Prims.hasEq 'a /\
;   (forall ('a: Type). {:pattern Prims.hasEq (ExtTest.list2p 'a)}
;       Prims.hasEq 'a ==> Prims.hasEq (ExtTest.list2p 'a)) ==>
;   (forall (hd: 'a) (tl: ExtTest.list2p (ExtTest.prod 'a 'a)).
;       Prims.hasEq 'a /\ Prims.hasEq (ExtTest.list2p (ExtTest.prod 'a 'a)))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.list2p`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Valid 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
Tm_type)

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Valid 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Prims.hasEq @x1)
)
)

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Valid 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Prims.hasEq (ExtTest.list2p @x1))
)
)
 

:pattern ((Prims.hasEq (ExtTest.list2p @x1)))
:qid @query.1))
)

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
@x0)
(HasType @x2
(ExtTest.list2p (ExtTest.prod @x0
@x0))))

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(and 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(91,16-91,18)
(or label_1

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Valid 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Prims.hasEq @x0)
)
)


;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(91,27-91,46)
(or label_2

;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Valid 
;; def=ExtTest.fst(89,0-91,60); use=ExtTest.fst(89,0-91,60)
(Prims.hasEq (ExtTest.list2p (ExtTest.prod @x0
@x0)))
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
; QUERY ID: (ExtTest.list2p, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_ExtTest.prod__uu___haseq, kinding_ExtTest.prod@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.list2p


; <Start encoding type ExtTest.list2p>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.list2p (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.list2p@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nil2p (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil2p__a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nil2p
(declare-fun ExtTest.Nil2p@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Cons2p (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p__a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons2p_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Cons2p
(declare-fun ExtTest.Cons2p@tok () Term)
;;;;;;;;;;;;;;;;list2p 'a
(declare-fun Tm_arrow_717d7854b678c93eefe2ea45d566f53c () Term)
;;;;;;;;;;;;;;;;hd: 'a -> tl: list2p (prod 'a 'a) -> list2p 'a
(declare-fun Tm_arrow_08585cec1693d7a11e2fbaa495a259a4 () Term)

; <start constructor ExtTest.list2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.list2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
354)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.list2p @x0))
 
;;no pats
:qid is-ExtTest.list2p))))

; </end constructor ExtTest.list2p>


; <start constructor ExtTest.Nil2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nil2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
361)
(= __@x0
(ExtTest.Nil2p (ExtTest.Nil2p__a __@x0)))))

; </end constructor ExtTest.Nil2p>


; <start constructor ExtTest.Cons2p>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Cons2p ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
366)
(= __@x0
(ExtTest.Cons2p (ExtTest.Cons2p__a __@x0)
(ExtTest.Cons2p_hd __@x0)
(ExtTest.Cons2p_tl __@x0)))))

; </end constructor ExtTest.Cons2p>


; </end encoding type ExtTest.list2p>


; encoding sigelt assume ExtTest.list2p__uu___haseq


; <Start encoding assume ExtTest.list2p__uu___haseq>


; </end encoding assume ExtTest.list2p__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Nil2p


; <Start encoding val ExtTest.uu___is_Nil2p>

(declare-fun ExtTest.uu___is_Nil2p (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: list2p 'a -> Prims.bool
(declare-fun Tm_arrow_f1c9bf1989ceaf31331444009c408d9e () Term)
(declare-fun ExtTest.uu___is_Nil2p@tok () Term)

; </end encoding val ExtTest.uu___is_Nil2p>


; encoding sigelt let uu___is_Nil2p


; <Skipped let uu___is_Nil2p/>


; encoding sigelt val ExtTest.uu___is_Cons2p


; <Start encoding val ExtTest.uu___is_Cons2p>

(declare-fun ExtTest.uu___is_Cons2p (Term Term) Term)

(declare-fun ExtTest.uu___is_Cons2p@tok () Term)

; </end encoding val ExtTest.uu___is_Cons2p>


; encoding sigelt let uu___is_Cons2p


; <Skipped let uu___is_Cons2p/>


; encoding sigelt val ExtTest.__proj__Cons2p__item__hd


; <Start encoding val ExtTest.__proj__Cons2p__item__hd>

(declare-fun Tm_refine_549fd4dfa33de9bbcd67981736e60c93 (Term) Term)
(declare-fun ExtTest.__proj__Cons2p__item__hd (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list2p 'a {Cons2p? _} -> 'a
(declare-fun Tm_arrow_30bf0aaf556b19a71d9e6da9348cae60 () Term)
(declare-fun ExtTest.__proj__Cons2p__item__hd@tok () Term)

; </end encoding val ExtTest.__proj__Cons2p__item__hd>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(ExtTest.list2p @x0)))
(HasType (ExtTest.uu___is_Cons2p @x0
@x1)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Cons2p @x0
@x1))
:qid typing_ExtTest.uu___is_Cons2p))

:named typing_ExtTest.uu___is_Cons2p))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1)
(ExtTest.prod @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.prod@tok
@x0)
@x1))

:pattern ((ExtTest.prod @x0
@x1))
:qid token_correspondence_ExtTest.prod@tok))

:named token_correspondence_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.list2p@tok
@x0)
(ExtTest.list2p @x0))
 

:pattern ((ApplyTT ExtTest.list2p@tok
@x0))

:pattern ((ExtTest.list2p @x0))
:qid token_correspondence_ExtTest.list2p@tok))

:named token_correspondence_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Pair @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Pair @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid subterm_ordering_ExtTest.Pair))

:named subterm_ordering_ExtTest.Pair))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.Cons2p @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Cons2p @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4)))
:qid subterm_ordering_ExtTest.Cons2p))

:named subterm_ordering_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Cons2p__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_549fd4dfa33de9bbcd67981736e60c93))

:named refinement_kinding_Tm_refine_549fd4dfa33de9bbcd67981736e60c93))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Cons2p__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x2))
(and (HasTypeFuel @u0
@x1
(ExtTest.list2p @x2))

;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2p @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x2)))
:qid refinement_interpretation_Tm_refine_549fd4dfa33de9bbcd67981736e60c93))

:named refinement_interpretation_Tm_refine_549fd4dfa33de9bbcd67981736e60c93))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_psnd (ExtTest.Pair @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_psnd))

:named projection_inverse_ExtTest.Pair_psnd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair_pfst (ExtTest.Pair @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair_pfst))

:named projection_inverse_ExtTest.Pair_pfst))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__b (ExtTest.Pair @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__b))

:named projection_inverse_ExtTest.Pair__b))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Pair__a (ExtTest.Pair @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Pair__a))

:named projection_inverse_ExtTest.Pair__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@x0 Term))
 (! (= (ExtTest.Nil2p__a (ExtTest.Nil2p @x0))
@x0)
 

:pattern ((ExtTest.Nil2p @x0))
:qid projection_inverse_ExtTest.Nil2p__a))

:named projection_inverse_ExtTest.Nil2p__a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p_tl (ExtTest.Cons2p @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p_tl))

:named projection_inverse_ExtTest.Cons2p_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p_hd (ExtTest.Cons2p @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p_hd))

:named projection_inverse_ExtTest.Cons2p_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons2p__a (ExtTest.Cons2p @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons2p__a))

:named projection_inverse_ExtTest.Cons2p__a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.prod@tok))
:named pre_kinding_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.list2p@tok))
:named pre_kinding_ExtTest.list2p@tok))
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.prod@tok)

;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.prod@tok
@x0))
 

:pattern ((ApplyTT ExtTest.prod@tok
@x0))
:qid kinding_ExtTest.prod@tok))


;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type))
(HasType (ExtTest.prod @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid kinding_ExtTest.prod@tok.1))
)
:named kinding_ExtTest.prod@tok))
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.list2p@tok)

;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.list2p @x0)
Tm_type))
 

:pattern ((ExtTest.list2p @x0))
:qid kinding_ExtTest.list2p@tok))
)
:named kinding_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_549fd4dfa33de9bbcd67981736e60c93
;;; Fact-ids: Name ExtTest.__proj__Cons2p__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0)))
(Valid (Prims.hasEq (ExtTest.list2p @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0))))
:qid haseqTm_refine_549fd4dfa33de9bbcd67981736e60c93))

:named haseqTm_refine_549fd4dfa33de9bbcd67981736e60c93))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3))
(and (is-ExtTest.Pair @x1)
(= @x2
(ExtTest.Pair__a @x1))
(= @x3
(ExtTest.Pair__b @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.prod @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.prod))

:named fuel_guarded_inversion_ExtTest.prod))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2p @x2))
(or (and (is-ExtTest.Nil2p @x1)
(= @x2
(ExtTest.Nil2p__a @x1)))
(and (is-ExtTest.Cons2p @x1)
(= @x2
(ExtTest.Cons2p__a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list2p @x2)))
:qid fuel_guarded_inversion_ExtTest.list2p))

:named fuel_guarded_inversion_ExtTest.list2p))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! (= 127
(Term_constr_id ExtTest.prod@tok))
:named fresh_token_ExtTest.prod@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! (= 355
(Term_constr_id ExtTest.list2p@tok))
:named fresh_token_ExtTest.list2p@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.uu___is_Cons2p @x0
@x1)
(BoxBool (is-ExtTest.Cons2p @x1)))
 

:pattern ((ExtTest.uu___is_Cons2p @x0
@x1))
:qid disc_equation_ExtTest.Cons2p))

:named disc_equation_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x1
@x2)))
:qid data_typing_intro_ExtTest.Pair@tok))

:named data_typing_intro_ExtTest.Pair@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x1)))
:qid data_typing_intro_ExtTest.Nil2p@tok))

:named data_typing_intro_ExtTest.Nil2p@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.list2p (ExtTest.prod @x1
@x1))))
(HasTypeFuel @u0
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x1)))
:qid data_typing_intro_ExtTest.Cons2p@tok))

:named data_typing_intro_ExtTest.Cons2p@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
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
(ExtTest.Pair @x1
@x2
@x3
@x4)
(ExtTest.prod @x5
@x6)))
:qid data_elim_ExtTest.Pair))

:named data_elim_ExtTest.Pair))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil2p @x1)
(ExtTest.list2p @x2)))
:qid data_elim_ExtTest.Nil2p))

:named data_elim_ExtTest.Nil2p))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.list2p (ExtTest.prod @x4
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons2p @x1
@x2
@x3)
(ExtTest.list2p @x4)))
:qid data_elim_ExtTest.Cons2p))

:named data_elim_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= 126
(Term_constr_id (ExtTest.prod @x0
@x1)))
 

:pattern ((ExtTest.prod @x0
@x1))
:qid constructor_distinct_ExtTest.prod))

:named constructor_distinct_ExtTest.prod))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term))
 (! (= 354
(Term_constr_id (ExtTest.list2p @x0)))
 

:pattern ((ExtTest.list2p @x0))
:qid constructor_distinct_ExtTest.list2p))

:named constructor_distinct_ExtTest.list2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(22,2-22,6); use=ExtTest.fst(22,2-22,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 133
(Term_constr_id (ExtTest.Pair @x0
@x1
@x2
@x3)))
 

:pattern ((ExtTest.Pair @x0
@x1
@x2
@x3))
:qid constructor_distinct_ExtTest.Pair))

:named constructor_distinct_ExtTest.Pair))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(90,4-90,9); use=ExtTest.fst(90,4-90,9)
(forall ((@x0 Term))
 (! (= 361
(Term_constr_id (ExtTest.Nil2p @x0)))
 

:pattern ((ExtTest.Nil2p @x0))
:qid constructor_distinct_ExtTest.Nil2p))

:named constructor_distinct_ExtTest.Nil2p))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,4-91,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 366
(Term_constr_id (ExtTest.Cons2p @x0
@x1
@x2)))
 

:pattern ((ExtTest.Cons2p @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.Cons2p))

:named constructor_distinct_ExtTest.Cons2p))
;;;;;;;;;;;;;;;;Assumption: ExtTest.prod__uu___haseq
;;; Fact-ids: Name ExtTest.prod__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_type)
(Valid (Prims.hasEq @x0))
(Valid (Prims.hasEq @x1)))
(Valid (Prims.hasEq (ExtTest.prod @x0
@x1))))
 

:pattern ((Prims.hasEq (ExtTest.prod @x0
@x1)))
:qid assumption_ExtTest.prod__uu___haseq))
:named assumption_ExtTest.prod__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: ExtTest.list2p__uu___haseq
;;; Fact-ids: Name ExtTest.list2p__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (ExtTest.list2p @x0))))
 

:pattern ((Prims.hasEq (ExtTest.list2p @x0)))
:qid assumption_ExtTest.list2p__uu___haseq))
:named assumption_ExtTest.list2p__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.list2p; Namespace ExtTest; Name ExtTest.Nil2p; Namespace ExtTest; Name ExtTest.Cons2p; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(89,5-89,11); use=ExtTest.fst(89,5-89,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.list2p @x2))
(= (ExtTest.list2p @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.list2p @x2)))
:qid ExtTest_pretyping_a697b63ac34cd862c74a2b73d7a14403))

:named ExtTest_pretyping_a697b63ac34cd862c74a2b73d7a14403))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.prod; Namespace ExtTest; Name ExtTest.Pair; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(21,5-21,9); use=ExtTest.fst(21,5-21,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3))
(= (ExtTest.prod @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.prod @x2
@x3)))
:qid ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))

:named ExtTest_pretyping_9e1dab2de099dbef779ac72935f5df10))
(push) ;; push{2

; Starting query at ExtTest.fst(91,13-91,15)

(declare-fun label_1 () Bool)


; Encoding query formula : forall ('a: Type) (projectee: _: ExtTest.list2p 'a {Cons2p? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons2p? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons2p__item__hd`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0))

;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,13-91,15)
(not 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,13-91,15)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2p @x0
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
; QUERY ID: (ExtTest.__proj__Cons2p__item__hd, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_549fd4dfa33de9bbcd67981736e60c93

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons2p__item__hd


; <Skipped let __proj__Cons2p__item__hd/>


; encoding sigelt val ExtTest.__proj__Cons2p__item__tl


; <Start encoding val ExtTest.__proj__Cons2p__item__tl>


(declare-fun ExtTest.__proj__Cons2p__item__tl (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list2p 'a {Cons2p? _} -> list2p (prod 'a 'a)
(declare-fun Tm_arrow_22ca5e49c1de5ad87f08cb2e2de281ed () Term)
(declare-fun ExtTest.__proj__Cons2p__item__tl@tok () Term)

; </end encoding val ExtTest.__proj__Cons2p__item__tl>

(push) ;; push{2

; Starting query at ExtTest.fst(91,24-91,26)

(declare-fun label_1 () Bool)


; Encoding query formula : forall ('a: Type) (projectee: _: ExtTest.list2p 'a {Cons2p? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons2p? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons2p__item__tl`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_549fd4dfa33de9bbcd67981736e60c93 @x0))

;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,24-91,26)
(not 
;; def=ExtTest.fst(91,4-91,10); use=ExtTest.fst(91,24-91,26)
(BoxBool_proj_0 (ExtTest.uu___is_Cons2p @x0
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
; QUERY ID: (ExtTest.__proj__Cons2p__item__tl, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_549fd4dfa33de9bbcd67981736e60c93

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons2p__item__tl


; <Skipped let __proj__Cons2p__item__tl/>


; encoding sigelt type ExtTest.list3


; <Start encoding type ExtTest.list3>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.list3 (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.list3@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nil3 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nil3_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nil3
(declare-fun ExtTest.Nil3@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Cons3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons3_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons3__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Cons3__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Cons3
(declare-fun ExtTest.Cons3@tok () Term)
;;;;;;;;;;;;;;;;a: Type -> list3 a
(declare-fun Tm_arrow_56d707cf557c032810866ef306490d0b () Term)
;;;;;;;;;;;;;;;;a: Type -> _1: a -> _2: list3 a -> list3 (prod a a)
(declare-fun Tm_arrow_ad42e75b82e8ac6e0c3477cb3bba1cff () Term)

; <start constructor ExtTest.list3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.list3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
384)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.list3 @x0))
 
;;no pats
:qid is-ExtTest.list3))))

; </end constructor ExtTest.list3>


; <start constructor ExtTest.Nil3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nil3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
391)
(= __@x0
(ExtTest.Nil3 (ExtTest.Nil3_a __@x0)))))

; </end constructor ExtTest.Nil3>


; <start constructor ExtTest.Cons3>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Cons3 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
397)
(= __@x0
(ExtTest.Cons3 (ExtTest.Cons3_a __@x0)
(ExtTest.Cons3__1 __@x0)
(ExtTest.Cons3__2 __@x0)))))

; </end constructor ExtTest.Cons3>


; </end encoding type ExtTest.list3>


; encoding sigelt val ExtTest.uu___is_Nil3


; <Start encoding val ExtTest.uu___is_Nil3>

(declare-fun ExtTest.uu___is_Nil3 (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: list3 _ -> Prims.bool
(declare-fun Tm_arrow_854b2d3e91ab87a0b0cdbbcdb6bb097e () Term)
(declare-fun ExtTest.uu___is_Nil3@tok () Term)

; </end encoding val ExtTest.uu___is_Nil3>


; encoding sigelt let uu___is_Nil3


; <Skipped let uu___is_Nil3/>


; encoding sigelt val ExtTest.__proj__Nil3__item__a


; <Start encoding val ExtTest.__proj__Nil3__item__a>

(declare-fun Tm_refine_1854da34c1263bad56c9918f633e1513 (Term) Term)
(declare-fun ExtTest.__proj__Nil3__item__a (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list3 _ {Nil3? _} -> Type
(declare-fun Tm_arrow_caefc03a75bcdd21b00ae7d8f124c2a8 () Term)
(declare-fun ExtTest.__proj__Nil3__item__a@tok () Term)

; </end encoding val ExtTest.__proj__Nil3__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Nil3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(ExtTest.list3 @x0)))
(HasType (ExtTest.uu___is_Nil3 @x0
@x1)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Nil3 @x0
@x1))
:qid typing_ExtTest.uu___is_Nil3))

:named typing_ExtTest.uu___is_Nil3))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(94,5-94,10); use=ExtTest.fst(94,5-94,10)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.list3@tok
@x0)
(ExtTest.list3 @x0))
 

:pattern ((ApplyTT ExtTest.list3@tok
@x0))

:pattern ((ExtTest.list3 @x0))
:qid token_correspondence_ExtTest.list3@tok))

:named token_correspondence_ExtTest.list3@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.Nil3 @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2)))
:qid subterm_ordering_ExtTest.Nil3))

:named subterm_ordering_ExtTest.Nil3))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.Cons3 @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.Cons3 @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Cons3 @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4)))
:qid subterm_ordering_ExtTest.Cons3))

:named subterm_ordering_ExtTest.Cons3))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Nil3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_1854da34c1263bad56c9918f633e1513 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_1854da34c1263bad56c9918f633e1513 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_1854da34c1263bad56c9918f633e1513))

:named refinement_kinding_Tm_refine_1854da34c1263bad56c9918f633e1513))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Nil3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1854da34c1263bad56c9918f633e1513 @x2))
(and (HasTypeFuel @u0
@x1
(ExtTest.list3 @x2))

;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(BoxBool_proj_0 (ExtTest.uu___is_Nil3 @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1854da34c1263bad56c9918f633e1513 @x2)))
:qid refinement_interpretation_Tm_refine_1854da34c1263bad56c9918f633e1513))

:named refinement_interpretation_Tm_refine_1854da34c1263bad56c9918f633e1513))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term))
 (! (= (ExtTest.Nil3_a (ExtTest.Nil3 @x0))
@x0)
 

:pattern ((ExtTest.Nil3 @x0))
:qid projection_inverse_ExtTest.Nil3_a))

:named projection_inverse_ExtTest.Nil3_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons3_a (ExtTest.Cons3 @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.Cons3 @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons3_a))

:named projection_inverse_ExtTest.Cons3_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons3__2 (ExtTest.Cons3 @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.Cons3 @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons3__2))

:named projection_inverse_ExtTest.Cons3__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Cons3__1 (ExtTest.Cons3 @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.Cons3 @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Cons3__1))

:named projection_inverse_ExtTest.Cons3__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.list3@tok))
:named pre_kinding_ExtTest.list3@tok))
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.list3@tok)

;; def=ExtTest.fst(94,5-94,10); use=ExtTest.fst(94,5-94,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.list3 @x0)
Tm_type))
 

:pattern ((ExtTest.list3 @x0))
:qid kinding_ExtTest.list3@tok))
)
:named kinding_ExtTest.list3@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1854da34c1263bad56c9918f633e1513
;;; Fact-ids: Name ExtTest.__proj__Nil3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1854da34c1263bad56c9918f633e1513 @x0)))
(Valid (Prims.hasEq (ExtTest.list3 @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1854da34c1263bad56c9918f633e1513 @x0))))
:qid haseqTm_refine_1854da34c1263bad56c9918f633e1513))

:named haseqTm_refine_1854da34c1263bad56c9918f633e1513))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(94,5-94,10); use=ExtTest.fst(94,5-94,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list3 @x2))
(or (and (is-ExtTest.Nil3 @x1)
(= @x2
(ExtTest.Nil3_a @x1)))
(and (is-ExtTest.Cons3 @x1)
(= @x2
(ExtTest.prod (ExtTest.Cons3_a @x1)
(ExtTest.Cons3_a @x1))))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.list3 @x2)))
:qid fuel_guarded_inversion_ExtTest.list3))

:named fuel_guarded_inversion_ExtTest.list3))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! (= 385
(Term_constr_id ExtTest.list3@tok))
:named fresh_token_ExtTest.list3@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Nil3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.uu___is_Nil3 @x0
@x1)
(BoxBool (is-ExtTest.Nil3 @x1)))
 

:pattern ((ExtTest.uu___is_Nil3 @x0
@x1))
:qid disc_equation_ExtTest.Nil3))

:named disc_equation_ExtTest.Nil3))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(= @x1
@x2))
(HasTypeFuel @u0
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2)))
:qid data_typing_intro_ExtTest.Nil3@tok))

:named data_typing_intro_ExtTest.Nil3@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.list3 @x1))
(= (ExtTest.prod @x1
@x1)
@x4))
(HasTypeFuel @u0
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4)))
:qid data_typing_intro_ExtTest.Cons3@tok))

:named data_typing_intro_ExtTest.Cons3@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2))
(and (= @x1
@x2)
(HasTypeFuel @u0
@x1
Tm_type)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nil3 @x1)
(ExtTest.list3 @x2)))
:qid data_elim_ExtTest.Nil3))

:named data_elim_ExtTest.Nil3))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4))
(and (= (ExtTest.prod @x1
@x1)
@x4)
(HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.list3 @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Cons3 @x1
@x2
@x3)
(ExtTest.list3 @x4)))
:qid data_elim_ExtTest.Cons3))

:named data_elim_ExtTest.Cons3))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(94,5-94,10); use=ExtTest.fst(94,5-94,10)
(forall ((@x0 Term))
 (! (= 384
(Term_constr_id (ExtTest.list3 @x0)))
 

:pattern ((ExtTest.list3 @x0))
:qid constructor_distinct_ExtTest.list3))

:named constructor_distinct_ExtTest.list3))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,2-95,6)
(forall ((@x0 Term))
 (! (= 391
(Term_constr_id (ExtTest.Nil3 @x0)))
 

:pattern ((ExtTest.Nil3 @x0))
:qid constructor_distinct_ExtTest.Nil3))

:named constructor_distinct_ExtTest.Nil3))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 397
(Term_constr_id (ExtTest.Cons3 @x0
@x1
@x2)))
 

:pattern ((ExtTest.Cons3 @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.Cons3))

:named constructor_distinct_ExtTest.Cons3))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.list3; Namespace ExtTest; Name ExtTest.Nil3; Namespace ExtTest; Name ExtTest.Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(94,5-94,10); use=ExtTest.fst(94,5-94,10)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.list3 @x2))
(= (ExtTest.list3 @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.list3 @x2)))
:qid ExtTest_pretyping_5011a3db18d92e93856624ed93e49fe2))

:named ExtTest_pretyping_5011a3db18d92e93856624ed93e49fe2))
(push) ;; push{2

; Starting query at ExtTest.fst(95,10-95,11)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: ExtTest.list3 _ {Nil3? _}).
;   (*  - Could not prove post-condition
; *) ~(Nil3? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Nil3__item__a`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_1854da34c1263bad56c9918f633e1513 @x0))

;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,10-95,11)
(not 
;; def=ExtTest.fst(95,2-95,6); use=ExtTest.fst(95,10-95,11)
(BoxBool_proj_0 (ExtTest.uu___is_Nil3 @x0
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
; QUERY ID: (ExtTest.__proj__Nil3__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_1854da34c1263bad56c9918f633e1513

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Nil3__item__a


; <Skipped let __proj__Nil3__item__a/>


; encoding sigelt val ExtTest.uu___is_Cons3


; <Start encoding val ExtTest.uu___is_Cons3>

(declare-fun ExtTest.uu___is_Cons3 (Term Term) Term)

(declare-fun ExtTest.uu___is_Cons3@tok () Term)

; </end encoding val ExtTest.uu___is_Cons3>


; encoding sigelt let uu___is_Cons3


; <Skipped let uu___is_Cons3/>


; encoding sigelt val ExtTest.__proj__Cons3__item__a


; <Start encoding val ExtTest.__proj__Cons3__item__a>

(declare-fun Tm_refine_37450ddb7a96f39344cad4207f5840e0 (Term) Term)
(declare-fun ExtTest.__proj__Cons3__item__a (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list3 _ {Cons3? _} -> Type
(declare-fun Tm_arrow_c1271417a0e61c289536eb73d9863772 () Term)
(declare-fun ExtTest.__proj__Cons3__item__a@tok () Term)

; </end encoding val ExtTest.__proj__Cons3__item__a>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(ExtTest.list3 @x0)))
(HasType (ExtTest.uu___is_Cons3 @x0
@x1)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Cons3 @x0
@x1))
:qid typing_ExtTest.uu___is_Cons3))

:named typing_ExtTest.uu___is_Cons3))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Cons3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_37450ddb7a96f39344cad4207f5840e0))

:named refinement_kinding_Tm_refine_37450ddb7a96f39344cad4207f5840e0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Cons3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x2))
(and (HasTypeFuel @u0
@x1
(ExtTest.list3 @x2))

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x2)))
:qid refinement_interpretation_Tm_refine_37450ddb7a96f39344cad4207f5840e0))

:named refinement_interpretation_Tm_refine_37450ddb7a96f39344cad4207f5840e0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_37450ddb7a96f39344cad4207f5840e0
;;; Fact-ids: Name ExtTest.__proj__Cons3__item__a; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0)))
(Valid (Prims.hasEq (ExtTest.list3 @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0))))
:qid haseqTm_refine_37450ddb7a96f39344cad4207f5840e0))

:named haseqTm_refine_37450ddb7a96f39344cad4207f5840e0))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Cons3; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.uu___is_Cons3 @x0
@x1)
(BoxBool (is-ExtTest.Cons3 @x1)))
 

:pattern ((ExtTest.uu___is_Cons3 @x0
@x1))
:qid disc_equation_ExtTest.Cons3))

:named disc_equation_ExtTest.Cons3))
(push) ;; push{2

; Starting query at ExtTest.fst(96,12-96,13)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: ExtTest.list3 _ {Cons3? _}).
;   (*  - Could not prove post-condition
; *) ~(Cons3? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons3__item__a`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0))

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,12-96,13)
(not 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,12-96,13)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x0
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
; QUERY ID: (ExtTest.__proj__Cons3__item__a, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_37450ddb7a96f39344cad4207f5840e0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons3__item__a


; <Skipped let __proj__Cons3__item__a/>


; encoding sigelt val ExtTest.__proj__Cons3__item___1


; <Start encoding val ExtTest.__proj__Cons3__item___1>


(declare-fun ExtTest.__proj__Cons3__item___1 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list3 _ {Cons3? _} -> projectee.a
(declare-fun Tm_arrow_2727a837273872211786a1f1b5d9738d () Term)
(declare-fun ExtTest.__proj__Cons3__item___1@tok () Term)

; </end encoding val ExtTest.__proj__Cons3__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: ExtTest.list3 _ {Cons3? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Cons3? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: b) (b: ExtTest.list3 b).
;       projectee == ExtTest.Cons3 b b b ==> ExtTest.prod b b == _ /\ Cons3? (ExtTest.Cons3 b b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons3__item___1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(not 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Tm_type)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(ExtTest.list3 @x2))

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(= @x1
(ExtTest.Cons3 @x2
@x3
@x4))
)

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(and 
;; def=dummy(0,0-0,0); use=ExtTest.fst(96,2-96,7)
(or label_2

;; def=dummy(0,0-0,0); use=ExtTest.fst(96,2-96,7)
(= (ExtTest.prod @x2
@x2)
@x0)
)


;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(or label_3

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x0
(ExtTest.Cons3 @x2
@x3
@x4)))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.__proj__Cons3__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_ExtTest.Cons3, refinement_interpretation_Tm_refine_37450ddb7a96f39344cad4207f5840e0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons3__item___1


; <Skipped let __proj__Cons3__item___1/>


; encoding sigelt val ExtTest.__proj__Cons3__item___2


; <Start encoding val ExtTest.__proj__Cons3__item___2>


(declare-fun ExtTest.__proj__Cons3__item___2 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: list3 _ {Cons3? _} -> list3 projectee.a
(declare-fun Tm_arrow_f5491e9e6a24a1849a9b0b462117ad8b () Term)
(declare-fun ExtTest.__proj__Cons3__item___2@tok () Term)

; </end encoding val ExtTest.__proj__Cons3__item___2>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: Type) (projectee: _: ExtTest.list3 _ {Cons3? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Cons3? projectee) ==> Prims.l_False) /\
;   (forall (b: Type) (b: b) (b: ExtTest.list3 b).
;       projectee == ExtTest.Cons3 b b b ==> ExtTest.prod b b == _ /\ Cons3? (ExtTest.Cons3 b b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Cons3__item___2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_37450ddb7a96f39344cad4207f5840e0 @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(not 
;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Tm_type)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(ExtTest.list3 @x2))

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(= @x1
(ExtTest.Cons3 @x2
@x3
@x4))
)

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(and 
;; def=dummy(0,0-0,0); use=ExtTest.fst(96,2-96,7)
(or label_2

;; def=dummy(0,0-0,0); use=ExtTest.fst(96,2-96,7)
(= (ExtTest.prod @x2
@x2)
@x0)
)


;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(or label_3

;; def=ExtTest.fst(96,2-96,7); use=ExtTest.fst(96,2-96,7)
(BoxBool_proj_0 (ExtTest.uu___is_Cons3 @x0
(ExtTest.Cons3 @x2
@x3
@x4)))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.__proj__Cons3__item___2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_ExtTest.Cons3, refinement_interpretation_Tm_refine_37450ddb7a96f39344cad4207f5840e0

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Cons3__item___2


; <Skipped let __proj__Cons3__item___2/>


; encoding sigelt type ExtTest.poly


; <Start encoding type ExtTest.poly>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.poly (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.poly@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Poly (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Poly_x (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Poly_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Poly__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Poly
(declare-fun ExtTest.Poly@tok () Term)
;;;;;;;;;;;;;;;;_: nnat -> Type
(declare-fun Tm_arrow_0f947d3c94da7803e8d5932a58f2a884 () Term)


;;;;;;;;;;;;;;;;n: nnat -> _1: x n -> poly x
(declare-fun Tm_arrow_65ae51440744d3a748244d2610098784 () Term)

; <start constructor ExtTest.poly>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.poly ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
428)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.poly @x0))
 
;;no pats
:qid is-ExtTest.poly))))

; </end constructor ExtTest.poly>


; <start constructor ExtTest.Poly>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Poly ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
437)
(= __@x0
(ExtTest.Poly (ExtTest.Poly_x __@x0)
(ExtTest.Poly_n __@x0)
(ExtTest.Poly__1 __@x0)))))

; </end constructor ExtTest.Poly>


; </end encoding type ExtTest.poly>


; encoding sigelt val ExtTest.uu___is_Poly


; <Start encoding val ExtTest.uu___is_Poly>


(declare-fun ExtTest.uu___is_Poly (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: poly x -> Prims.bool
(declare-fun Tm_arrow_104a7258fd8665fbb76161a81e569932 () Term)
(declare-fun ExtTest.uu___is_Poly@tok () Term)

; </end encoding val ExtTest.uu___is_Poly>


; encoding sigelt let uu___is_Poly


; <Skipped let uu___is_Poly/>


; encoding sigelt val ExtTest.__proj__Poly__item__n


; <Start encoding val ExtTest.__proj__Poly__item__n>


(declare-fun ExtTest.__proj__Poly__item__n (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: poly x -> nnat
(declare-fun Tm_arrow_80b6a7fd6986bef3e4849bda3d4fcd2c () Term)
(declare-fun ExtTest.__proj__Poly__item__n@tok () Term)

; </end encoding val ExtTest.__proj__Poly__item__n>


; encoding sigelt let __proj__Poly__item__n


; <Skipped let __proj__Poly__item__n/>


; encoding sigelt val ExtTest.__proj__Poly__item___1


; <Start encoding val ExtTest.__proj__Poly__item___1>


(declare-fun ExtTest.__proj__Poly__item___1 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: poly x -> x projectee.n
(declare-fun Tm_arrow_44544d5914377433deef983ed4f73822 () Term)
(declare-fun ExtTest.__proj__Poly__item___1@tok () Term)

; </end encoding val ExtTest.__proj__Poly__item___1>


; encoding sigelt let __proj__Poly__item___1


; <Skipped let __proj__Poly__item___1/>


; encoding sigelt let sch


; <Start encoding let sch>

(declare-fun ExtTest.sch (Term) Term)

(declare-fun ExtTest.sch@tok () Term)
;;;;;;;;;;;;;;;;_: x -> x
(declare-fun Tm_arrow_fcd589b21e6efcf1e5d17b07c282a015 (Term) Term)

; </end encoding let sch>


; encoding sigelt let sch1


; <Start encoding let sch1>

(declare-fun ExtTest.sch1 (Term) Term)

(declare-fun ExtTest.sch1@tok () Term)


; </end encoding let sch1>


; encoding sigelt let sch3


; <Start encoding let sch3>


(declare-fun ExtTest.sch3 (Term) Term)

;;;;;;;;;;;;;;;;x: (_: nnat -> Type) -> Type
(declare-fun Tm_arrow_37b0a7ef1642cf7d5c1339503afbf65d () Term)
(declare-fun ExtTest.sch3@tok () Term)

;;;;;;;;;;;;;;;;_: x O -> x (S O)
(declare-fun Tm_arrow_fcd02765978a9211d67188e9c5dffeaa (Term) Term)

; </end encoding let sch3>


; encoding sigelt let sch3param


; <Start encoding let sch3param>


(declare-fun ExtTest.sch3param (Term) Term)


(declare-fun ExtTest.sch3param@tok () Term)



; </end encoding let sch3param>


; encoding sigelt let idt


; <Start encoding let idt>

(declare-fun ExtTest.idt () Term)

;;;;;;;;;;;;;;;;x: Type -> _: x -> x
(declare-fun Tm_arrow_aca6096c8bcf7cf07fe43ce138335c0d () Term)

; </end encoding let idt>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.vec


; <Start encoding type ExtTest.vec>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.vec (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.vec@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nill (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nill_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nill
(declare-fun ExtTest.Nill@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Conss (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Conss
(declare-fun ExtTest.Conss@tok () Term)
;;;;;;;;;;;;;;;;vec a O
(declare-fun Tm_arrow_6ec8e3384701eac55415a59388697e1c () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: a -> _2: vec a n -> vec a (S n)
(declare-fun Tm_arrow_bfc95a78117e01d2b3ec33b0925448f1 () Term)

; <start constructor ExtTest.vec>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.vec ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
511)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.vec @x0
@x1))
 
;;no pats
:qid is-ExtTest.vec))))

; </end constructor ExtTest.vec>


; <start constructor ExtTest.Nill>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nill ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
518)
(= __@x0
(ExtTest.Nill (ExtTest.Nill_a __@x0)))))

; </end constructor ExtTest.Nill>


; <start constructor ExtTest.Conss>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Conss ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
524)
(= __@x0
(ExtTest.Conss (ExtTest.Conss_a __@x0)
(ExtTest.Conss_n __@x0)
(ExtTest.Conss__1 __@x0)
(ExtTest.Conss__2 __@x0)))))

; </end constructor ExtTest.Conss>


; </end encoding type ExtTest.vec>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.vec@tok
@x0)
@x1)
(ExtTest.vec @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.vec@tok
@x0)
@x1))

:pattern ((ExtTest.vec @x0
@x1))
:qid token_correspondence_ExtTest.vec@tok))

:named token_correspondence_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.Conss @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Conss @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Conss @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6)))
:qid subterm_ordering_ExtTest.Conss))

:named subterm_ordering_ExtTest.Conss))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@x0 Term))
 (! (= (ExtTest.Nill_a (ExtTest.Nill @x0))
@x0)
 

:pattern ((ExtTest.Nill @x0))
:qid projection_inverse_ExtTest.Nill_a))

:named projection_inverse_ExtTest.Nill_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss_n (ExtTest.Conss @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss_n))

:named projection_inverse_ExtTest.Conss_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss_a (ExtTest.Conss @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss_a))

:named projection_inverse_ExtTest.Conss_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss__2 (ExtTest.Conss @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss__2))

:named projection_inverse_ExtTest.Conss__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss__1 (ExtTest.Conss @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss__1))

:named projection_inverse_ExtTest.Conss__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.vec@tok))
:named pre_kinding_ExtTest.vec@tok))
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.vec@tok)

;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.vec@tok
@x0))
 

:pattern ((ApplyTT ExtTest.vec@tok
@x0))
:qid kinding_ExtTest.vec@tok))


;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat))
(HasType (ExtTest.vec @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.vec @x0
@x1))
:qid kinding_ExtTest.vec@tok.1))
)
:named kinding_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.vec @x2
@x3))
(or (and (is-ExtTest.Nill @x1)
(= @x2
(ExtTest.Nill_a @x1))
(= @x3
ExtTest.O@tok))
(and (is-ExtTest.Conss @x1)
(= @x2
(ExtTest.Conss_a @x1))
(= @x3
(ExtTest.S (ExtTest.Conss_n @x1))))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.vec @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.vec))

:named fuel_guarded_inversion_ExtTest.vec))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (= 512
(Term_constr_id ExtTest.vec@tok))
:named fresh_token_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(= ExtTest.O@tok
@x2))
(HasTypeFuel @u0
(ExtTest.Nill @x1)
(ExtTest.vec @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nill @x1)
(ExtTest.vec @x1
@x2)))
:qid data_typing_intro_ExtTest.Nill@tok))

:named data_typing_intro_ExtTest.Nill@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
@x1)
(HasTypeFuel @u0
@x4
(ExtTest.vec @x1
@x2))
(= (ExtTest.S @x2)
@x5))
(HasTypeFuel @u0
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x1
@x5)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x1
@x5)))
:qid data_typing_intro_ExtTest.Conss@tok))

:named data_typing_intro_ExtTest.Conss@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nill @x1)
(ExtTest.vec @x2
@x3))
(and (= ExtTest.O@tok
@x3)
(HasTypeFuel @u0
@x2
Tm_type)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nill @x1)
(ExtTest.vec @x2
@x3)))
:qid data_elim_ExtTest.Nill))

:named data_elim_ExtTest.Nill))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6))
(and (= (ExtTest.S @x2)
@x6)
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
@x5)
(HasTypeFuel @u0
@x4
(ExtTest.vec @x5
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6)))
:qid data_elim_ExtTest.Conss))

:named data_elim_ExtTest.Conss))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 511
(Term_constr_id (ExtTest.vec @x0
@x1)))
 

:pattern ((ExtTest.vec @x0
@x1))
:qid constructor_distinct_ExtTest.vec))

:named constructor_distinct_ExtTest.vec))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@x0 Term))
 (! (= 518
(Term_constr_id (ExtTest.Nill @x0)))
 

:pattern ((ExtTest.Nill @x0))
:qid constructor_distinct_ExtTest.Nill))

:named constructor_distinct_ExtTest.Nill))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 524
(Term_constr_id (ExtTest.Conss @x0
@x1
@x2
@x3)))
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid constructor_distinct_ExtTest.Conss))

:named constructor_distinct_ExtTest.Conss))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.vec @x2
@x3))
(= (ExtTest.vec @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.vec @x2
@x3)))
:qid ExtTest_pretyping_45e40b592d3b435d2d1031e710b2687d))

:named ExtTest_pretyping_45e40b592d3b435d2d1031e710b2687d))
(push) ;; push{4

; Starting query at ExtTest.fst(124,0-126,50)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (a: Type) (_: ExtTest.nnat).
;   Prims.hasEq a /\
;   (forall (a: Type) (_: ExtTest.nnat). {:pattern Prims.hasEq (ExtTest.vec a _)}
;       Prims.hasEq a ==> Prims.hasEq (ExtTest.vec a _)) ==>
;   (forall (n: ExtTest.nnat) (_1: a) (_2: ExtTest.vec a n).
;       Prims.hasEq ExtTest.nnat /\ Prims.hasEq a /\ Prims.hasEq (ExtTest.vec a n))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.vec`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
ExtTest.nnat)

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq @x2)
)
)

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq (ExtTest.vec @x2
@x3))
)
)
 

:pattern ((Prims.hasEq (ExtTest.vec @x2
@x3)))
:qid @query.1))
)

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(forall ((@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x2
ExtTest.nnat)
(HasType @x3
@x0)
(HasType @x4
(ExtTest.vec @x0
@x2)))

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(and 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(126,12-126,16)
(or label_1

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq ExtTest.nnat)
)
)


;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(126,20-126,21)
(or label_2

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq @x0)
)
)


;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(126,26-126,35)
(or label_3

;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Valid 
;; def=ExtTest.fst(124,0-126,50); use=ExtTest.fst(124,0-126,50)
(Prims.hasEq (ExtTest.vec @x0
@x2))
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.vec, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_ExtTest.nnat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.vec


; <Start encoding type ExtTest.vec>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.vec (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.vec@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Nill (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Nill_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Nill
(declare-fun ExtTest.Nill@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Conss (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss__1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Conss__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Conss
(declare-fun ExtTest.Conss@tok () Term)
;;;;;;;;;;;;;;;;vec a O
(declare-fun Tm_arrow_6ec8e3384701eac55415a59388697e1c () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: a -> _2: vec a n -> vec a (S n)
(declare-fun Tm_arrow_bfc95a78117e01d2b3ec33b0925448f1 () Term)

; <start constructor ExtTest.vec>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.vec ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
529)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.vec @x0
@x1))
 
;;no pats
:qid is-ExtTest.vec))))

; </end constructor ExtTest.vec>


; <start constructor ExtTest.Nill>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Nill ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
536)
(= __@x0
(ExtTest.Nill (ExtTest.Nill_a __@x0)))))

; </end constructor ExtTest.Nill>


; <start constructor ExtTest.Conss>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Conss ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
542)
(= __@x0
(ExtTest.Conss (ExtTest.Conss_a __@x0)
(ExtTest.Conss_n __@x0)
(ExtTest.Conss__1 __@x0)
(ExtTest.Conss__2 __@x0)))))

; </end constructor ExtTest.Conss>


; </end encoding type ExtTest.vec>


; encoding sigelt assume ExtTest.vec__uu___haseq


; <Start encoding assume ExtTest.vec__uu___haseq>


; </end encoding assume ExtTest.vec__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Nill


; <Start encoding val ExtTest.uu___is_Nill>

(declare-fun ExtTest.uu___is_Nill (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: vec a _ -> Prims.bool
(declare-fun Tm_arrow_a0a80cc5dc20a8572e0004f330988d5d () Term)
(declare-fun ExtTest.uu___is_Nill@tok () Term)

; </end encoding val ExtTest.uu___is_Nill>


; encoding sigelt let uu___is_Nill


; <Skipped let uu___is_Nill/>


; encoding sigelt val ExtTest.uu___is_Conss


; <Start encoding val ExtTest.uu___is_Conss>

(declare-fun ExtTest.uu___is_Conss (Term Term Term) Term)

(declare-fun ExtTest.uu___is_Conss@tok () Term)

; </end encoding val ExtTest.uu___is_Conss>


; encoding sigelt let uu___is_Conss


; <Skipped let uu___is_Conss/>


; encoding sigelt val ExtTest.__proj__Conss__item__n


; <Start encoding val ExtTest.__proj__Conss__item__n>

(declare-fun Tm_refine_28672e65baa0cad071ff68b2862e1a89 (Term Term) Term)
(declare-fun ExtTest.__proj__Conss__item__n (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: vec a _ {Conss? _} -> nnat
(declare-fun Tm_arrow_183d041cbbf483ae77985066e688b84c () Term)
(declare-fun ExtTest.__proj__Conss__item__n@tok () Term)

; </end encoding val ExtTest.__proj__Conss__item__n>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat)
(HasType @x2
(ExtTest.vec @x0
@x1)))
(HasType (ExtTest.uu___is_Conss @x0
@x1
@x2)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Conss @x0
@x1
@x2))
:qid typing_ExtTest.uu___is_Conss))

:named typing_ExtTest.uu___is_Conss))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.vec@tok
@x0)
@x1)
(ExtTest.vec @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.vec@tok
@x0)
@x1))

:pattern ((ExtTest.vec @x0
@x1))
:qid token_correspondence_ExtTest.vec@tok))

:named token_correspondence_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.Conss @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Conss @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(ExtTest.Conss @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6)))
:qid subterm_ordering_ExtTest.Conss))

:named subterm_ordering_ExtTest.Conss))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Conss__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_28672e65baa0cad071ff68b2862e1a89))

:named refinement_kinding_Tm_refine_28672e65baa0cad071ff68b2862e1a89))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Conss__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(ExtTest.vec @x2
@x3))

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(BoxBool_proj_0 (ExtTest.uu___is_Conss @x2
@x3
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_28672e65baa0cad071ff68b2862e1a89))

:named refinement_interpretation_Tm_refine_28672e65baa0cad071ff68b2862e1a89))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@x0 Term))
 (! (= (ExtTest.Nill_a (ExtTest.Nill @x0))
@x0)
 

:pattern ((ExtTest.Nill @x0))
:qid projection_inverse_ExtTest.Nill_a))

:named projection_inverse_ExtTest.Nill_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss_n (ExtTest.Conss @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss_n))

:named projection_inverse_ExtTest.Conss_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss_a (ExtTest.Conss @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss_a))

:named projection_inverse_ExtTest.Conss_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss__2 (ExtTest.Conss @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss__2))

:named projection_inverse_ExtTest.Conss__2))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ExtTest.Conss__1 (ExtTest.Conss @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid projection_inverse_ExtTest.Conss__1))

:named projection_inverse_ExtTest.Conss__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.vec@tok))
:named pre_kinding_ExtTest.vec@tok))
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.vec@tok)

;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.vec@tok
@x0))
 

:pattern ((ApplyTT ExtTest.vec@tok
@x0))
:qid kinding_ExtTest.vec@tok))


;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat))
(HasType (ExtTest.vec @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.vec @x0
@x1))
:qid kinding_ExtTest.vec@tok.1))
)
:named kinding_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_28672e65baa0cad071ff68b2862e1a89
;;; Fact-ids: Name ExtTest.__proj__Conss__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1)))
(Valid (Prims.hasEq (ExtTest.vec @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1))))
:qid haseqTm_refine_28672e65baa0cad071ff68b2862e1a89))

:named haseqTm_refine_28672e65baa0cad071ff68b2862e1a89))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.vec @x2
@x3))
(or (and (is-ExtTest.Nill @x1)
(= @x2
(ExtTest.Nill_a @x1))
(= @x3
ExtTest.O@tok))
(and (is-ExtTest.Conss @x1)
(= @x2
(ExtTest.Conss_a @x1))
(= @x3
(ExtTest.S (ExtTest.Conss_n @x1))))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.vec @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.vec))

:named fuel_guarded_inversion_ExtTest.vec))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! (= 530
(Term_constr_id ExtTest.vec@tok))
:named fresh_token_ExtTest.vec@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.uu___is_Conss @x0
@x1
@x2)
(BoxBool (is-ExtTest.Conss @x2)))
 

:pattern ((ExtTest.uu___is_Conss @x0
@x1
@x2))
:qid disc_equation_ExtTest.Conss))

:named disc_equation_ExtTest.Conss))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(= ExtTest.O@tok
@x2))
(HasTypeFuel @u0
(ExtTest.Nill @x1)
(ExtTest.vec @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Nill @x1)
(ExtTest.vec @x1
@x2)))
:qid data_typing_intro_ExtTest.Nill@tok))

:named data_typing_intro_ExtTest.Nill@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
@x1)
(HasTypeFuel @u0
@x4
(ExtTest.vec @x1
@x2))
(= (ExtTest.S @x2)
@x5))
(HasTypeFuel @u0
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x1
@x5)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x1
@x5)))
:qid data_typing_intro_ExtTest.Conss@tok))

:named data_typing_intro_ExtTest.Conss@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Nill @x1)
(ExtTest.vec @x2
@x3))
(and (= ExtTest.O@tok
@x3)
(HasTypeFuel @u0
@x2
Tm_type)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Nill @x1)
(ExtTest.vec @x2
@x3)))
:qid data_elim_ExtTest.Nill))

:named data_elim_ExtTest.Nill))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6))
(and (= (ExtTest.S @x2)
@x6)
(HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
@x5)
(HasTypeFuel @u0
@x4
(ExtTest.vec @x5
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Conss @x1
@x2
@x3
@x4)
(ExtTest.vec @x5
@x6)))
:qid data_elim_ExtTest.Conss))

:named data_elim_ExtTest.Conss))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= 529
(Term_constr_id (ExtTest.vec @x0
@x1)))
 

:pattern ((ExtTest.vec @x0
@x1))
:qid constructor_distinct_ExtTest.vec))

:named constructor_distinct_ExtTest.vec))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(125,2-125,6); use=ExtTest.fst(125,2-125,6)
(forall ((@x0 Term))
 (! (= 536
(Term_constr_id (ExtTest.Nill @x0)))
 

:pattern ((ExtTest.Nill @x0))
:qid constructor_distinct_ExtTest.Nill))

:named constructor_distinct_ExtTest.Nill))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 542
(Term_constr_id (ExtTest.Conss @x0
@x1
@x2
@x3)))
 

:pattern ((ExtTest.Conss @x0
@x1
@x2
@x3))
:qid constructor_distinct_ExtTest.Conss))

:named constructor_distinct_ExtTest.Conss))
;;;;;;;;;;;;;;;;Assumption: ExtTest.vec__uu___haseq
;;; Fact-ids: Name ExtTest.vec__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (ExtTest.vec @x0
@x1))))
 

:pattern ((Prims.hasEq (ExtTest.vec @x0
@x1)))
:qid assumption_ExtTest.vec__uu___haseq))
:named assumption_ExtTest.vec__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.vec; Namespace ExtTest; Name ExtTest.Nill; Namespace ExtTest; Name ExtTest.Conss; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(124,5-124,8); use=ExtTest.fst(124,5-124,8)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.vec @x2
@x3))
(= (ExtTest.vec @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.vec @x2
@x3)))
:qid ExtTest_pretyping_45e40b592d3b435d2d1031e710b2687d))

:named ExtTest_pretyping_45e40b592d3b435d2d1031e710b2687d))
(push) ;; push{2

; Starting query at ExtTest.fst(126,10-126,11)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (_: ExtTest.nnat) (projectee: _: ExtTest.vec a _ {Conss? _}).
;   (*  - Could not prove post-condition
; *) ~(Conss? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Conss__item__n`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x2
(Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1))

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,10-126,11)
(not 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,10-126,11)
(BoxBool_proj_0 (ExtTest.uu___is_Conss @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Conss__item__n, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_28672e65baa0cad071ff68b2862e1a89

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Conss__item__n


; <Skipped let __proj__Conss__item__n/>


; encoding sigelt val ExtTest.__proj__Conss__item___1


; <Start encoding val ExtTest.__proj__Conss__item___1>


(declare-fun ExtTest.__proj__Conss__item___1 (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: vec a _ {Conss? _} -> a
(declare-fun Tm_arrow_439c15f9e114bb7453887fa60738a1cd () Term)
(declare-fun ExtTest.__proj__Conss__item___1@tok () Term)

; </end encoding val ExtTest.__proj__Conss__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (_: ExtTest.nnat) (projectee: _: ExtTest.vec a _ {Conss? _}).
;   (*  - Could not prove post-condition
; *) ~(Conss? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Conss__item___1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x2
(Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1))

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(not 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(BoxBool_proj_0 (ExtTest.uu___is_Conss @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Conss__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_28672e65baa0cad071ff68b2862e1a89

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Conss__item___1


; <Skipped let __proj__Conss__item___1/>


; encoding sigelt val ExtTest.__proj__Conss__item___2


; <Start encoding val ExtTest.__proj__Conss__item___2>


(declare-fun ExtTest.__proj__Conss__item___2 (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: vec a _ {Conss? _} -> vec a projectee.n
(declare-fun Tm_arrow_90ba4b0e144cdd1e9abfff652f7e506d () Term)
(declare-fun ExtTest.__proj__Conss__item___2@tok () Term)

; </end encoding val ExtTest.__proj__Conss__item___2>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (_: ExtTest.nnat) (projectee: _: ExtTest.vec a _ {Conss? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(Conss? projectee) ==> Prims.l_False) /\
;   (forall (b: ExtTest.nnat) (b: a) (b: ExtTest.vec a b).
;       projectee == ExtTest.Conss b b b ==> ExtTest.S b == _ /\ Conss? (ExtTest.Conss b b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Conss__item___2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x2
(Tm_refine_28672e65baa0cad071ff68b2862e1a89 @x0
@x1)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(not 
;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(BoxBool_proj_0 (ExtTest.uu___is_Conss @x0
@x1
@x2))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
ExtTest.nnat)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x4 Term))
 (! (implies (HasType @x4
@x0)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
(ExtTest.vec @x0
@x3))

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(= @x2
(ExtTest.Conss @x0
@x3
@x4
@x5))
)

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(and 
;; def=dummy(0,0-0,0); use=ExtTest.fst(126,2-126,7)
(or label_2

;; def=dummy(0,0-0,0); use=ExtTest.fst(126,2-126,7)
(= (ExtTest.S @x3)
@x1)
)


;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(or label_3

;; def=ExtTest.fst(126,2-126,7); use=ExtTest.fst(126,2-126,7)
(BoxBool_proj_0 (ExtTest.uu___is_Conss @x0
@x1
(ExtTest.Conss @x0
@x3
@x4
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
(echo "label_3")
(eval label_3)
(echo "label_2")
(eval label_2)
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.__proj__Conss__item___2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_ExtTest.Conss, refinement_interpretation_Tm_refine_28672e65baa0cad071ff68b2862e1a89

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Conss__item___2


; <Skipped let __proj__Conss__item___2/>


; encoding sigelt let vecn1


; <Start encoding let vecn1>

(declare-fun ExtTest.vecn1 () Term)

; </end encoding let vecn1>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.naryTree


; <Start encoding type ExtTest.naryTree>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.naryTree (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.naryTree@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Leaf (Term Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun ExtTest.Leaf@base () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Leaf
(declare-fun ExtTest.Leaf@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Node (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Node__0 (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun ExtTest.Node@base (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Node
(declare-fun ExtTest.Node@tok () Term)
;;;;;;;;;;;;;;;;naryTree t n
(declare-fun Tm_arrow_5c9ba581113f7fc62c31b3def85b8e3f () Term)
;;;;;;;;;;;;;;;;_0: vec (naryTree t n) n -> naryTree t n
(declare-fun Tm_arrow_28f7b3d71d1dfca9d0a98b514b1fb395 () Term)

; <start constructor ExtTest.naryTree>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.naryTree ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
582)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.naryTree @x0
@x1))
 
;;no pats
:qid is-ExtTest.naryTree))))

; </end constructor ExtTest.naryTree>


; <start constructor ExtTest.Leaf>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Leaf ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
589)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.Leaf @x0
@x1))
 
;;no pats
:qid is-ExtTest.Leaf))))

; </end constructor ExtTest.Leaf>


; <start constructor ExtTest.Node>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Node ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
594)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.Node @x0
@x1
(ExtTest.Node__0 __@x0)))
 
;;no pats
:qid is-ExtTest.Node))))

; </end constructor ExtTest.Node>


; </end encoding type ExtTest.naryTree>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.naryTree@tok
@x0)
@x1)
(ExtTest.naryTree @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.naryTree@tok
@x0)
@x1))

:pattern ((ExtTest.naryTree @x0
@x1))
:qid token_correspondence_ExtTest.naryTree@tok))

:named token_correspondence_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Node @x1
@x2
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5)))
:qid subterm_ordering_ExtTest.Node))

:named subterm_ordering_ExtTest.Node))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Node__0 (ExtTest.Node @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Node__0))

:named projection_inverse_ExtTest.Node__0))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.naryTree@tok))
:named pre_kinding_ExtTest.naryTree@tok))
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.naryTree@tok)

;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.naryTree@tok
@x0))
 

:pattern ((ApplyTT ExtTest.naryTree@tok
@x0))
:qid kinding_ExtTest.naryTree@tok))


;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat))
(HasType (ExtTest.naryTree @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.naryTree @x0
@x1))
:qid kinding_ExtTest.naryTree@tok.1))
)
:named kinding_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.naryTree @x2
@x3))
(or (is-ExtTest.Leaf @x1)
(is-ExtTest.Node @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.naryTree @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.naryTree))

:named fuel_guarded_inversion_ExtTest.naryTree))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (= 583
(Term_constr_id ExtTest.naryTree@tok))
:named fresh_token_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
(ExtTest.vec (ExtTest.naryTree @x1
@x2)
@x2)))
(HasTypeFuel @u0
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x1
@x2)))
:qid data_typing_intro_ExtTest.Node@tok))

:named data_typing_intro_ExtTest.Node@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat))
(HasTypeFuel @u0
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x1
@x2)))
:qid data_typing_intro_ExtTest.Leaf@tok))

:named data_typing_intro_ExtTest.Leaf@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x5
ExtTest.nnat)
(HasTypeFuel @u0
@x3
(ExtTest.vec (ExtTest.naryTree @x4
@x5)
@x5))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5)))
:qid data_elim_ExtTest.Node))

:named data_elim_ExtTest.Node))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x3
@x4))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
ExtTest.nnat)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x3
@x4)))
:qid data_elim_ExtTest.Leaf))

:named data_elim_ExtTest.Leaf))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= 582
(Term_constr_id (ExtTest.naryTree @x0
@x1)))
 

:pattern ((ExtTest.naryTree @x0
@x1))
:qid constructor_distinct_ExtTest.naryTree))

:named constructor_distinct_ExtTest.naryTree))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 594
(Term_constr_id (ExtTest.Node @x0
@x1
@x2)))
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.Node))

:named constructor_distinct_ExtTest.Node))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= 589
(Term_constr_id (ExtTest.Leaf @x0
@x1)))
 

:pattern ((ExtTest.Leaf @x0
@x1))
:qid constructor_distinct_ExtTest.Leaf))

:named constructor_distinct_ExtTest.Leaf))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (is-ExtTest.Node (ExtTest.Node @x0
@x1
@x2))
(= (ExtTest.Node @x0
@x1
@x2)
(ExtTest.Node@base @x2)))
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid constructor_base_ExtTest.Node))

:named constructor_base_ExtTest.Node))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (is-ExtTest.Leaf (ExtTest.Leaf @x0
@x1))
(= (ExtTest.Leaf @x0
@x1)
ExtTest.Leaf@base))
 

:pattern ((ExtTest.Leaf @x0
@x1))
:qid constructor_base_ExtTest.Leaf))

:named constructor_base_ExtTest.Leaf))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.naryTree @x2
@x3))
(= (Term_constr_id (ExtTest.naryTree @x2
@x3))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.naryTree @x2
@x3)))
:qid ExtTest_pretyping_c32c3346c88e60087ac067b651450bc7))

:named ExtTest_pretyping_c32c3346c88e60087ac067b651450bc7))
(push) ;; push{4

; Starting query at ExtTest.fst(130,0-132,47)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (t: Type) (n: ExtTest.nnat).
;   Prims.hasEq t /\
;   (forall (t: Type) (n: ExtTest.nnat). {:pattern Prims.hasEq (ExtTest.naryTree t n)}
;       Prims.hasEq t ==> Prims.hasEq (ExtTest.naryTree t n)) ==>
;   (forall (_0: ExtTest.vec (ExtTest.naryTree t n) n).
;       (*  - Failed to prove that the type
;     'ExtTest.naryTree'
;     supports decidable equality because of this argument.
;   - Add either the 'noeq' or 'unopteq' qualifier
; *)
;       Prims.hasEq (ExtTest.vec (ExtTest.naryTree t n) n))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.naryTree`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Valid 
;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
Tm_type)
(HasType @x3
ExtTest.nnat)

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Valid 
;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Prims.hasEq @x2)
)
)

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Valid 
;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Prims.hasEq (ExtTest.naryTree @x2
@x3))
)
)
 

:pattern ((Prims.hasEq (ExtTest.naryTree @x2
@x3)))
:qid @query.1))
)

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(forall ((@x2 Term))
 (! (implies (HasType @x2
(ExtTest.vec (ExtTest.naryTree @x0
@x1)
@x1))

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(132,9-132,29)
(or label_1

;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Valid 
;; def=ExtTest.fst(130,0-132,47); use=ExtTest.fst(130,0-132,47)
(Prims.hasEq (ExtTest.vec (ExtTest.naryTree @x0
@x1)
@x1))
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.naryTree, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_ExtTest.vec__uu___haseq, kinding_ExtTest.naryTree@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.naryTree


; <Start encoding type ExtTest.naryTree>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.naryTree (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.naryTree@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Leaf (Term Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun ExtTest.Leaf@base () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Leaf
(declare-fun ExtTest.Leaf@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Node (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.Node__0 (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun ExtTest.Node@base (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Node
(declare-fun ExtTest.Node@tok () Term)
;;;;;;;;;;;;;;;;naryTree t n
(declare-fun Tm_arrow_5c9ba581113f7fc62c31b3def85b8e3f () Term)
;;;;;;;;;;;;;;;;_0: vec (naryTree t n) n -> naryTree t n
(declare-fun Tm_arrow_28f7b3d71d1dfca9d0a98b514b1fb395 () Term)

; <start constructor ExtTest.naryTree>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.naryTree ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
598)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.naryTree @x0
@x1))
 
;;no pats
:qid is-ExtTest.naryTree))))

; </end constructor ExtTest.naryTree>


; <start constructor ExtTest.Leaf>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Leaf ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
605)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.Leaf @x0
@x1))
 
;;no pats
:qid is-ExtTest.Leaf))))

; </end constructor ExtTest.Leaf>


; <start constructor ExtTest.Node>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Node ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
610)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(ExtTest.Node @x0
@x1
(ExtTest.Node__0 __@x0)))
 
;;no pats
:qid is-ExtTest.Node))))

; </end constructor ExtTest.Node>


; </end encoding type ExtTest.naryTree>


; encoding sigelt assume ExtTest.naryTree__uu___haseq


; <Start encoding assume ExtTest.naryTree__uu___haseq>


; </end encoding assume ExtTest.naryTree__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Leaf


; <Start encoding val ExtTest.uu___is_Leaf>

(declare-fun ExtTest.uu___is_Leaf (Term Term Term) Term)
;;;;;;;;;;;;;;;;projectee: naryTree t n -> Prims.bool
(declare-fun Tm_arrow_7c4b6bb40afa4bb31fcec471abbd00b2 () Term)
(declare-fun ExtTest.uu___is_Leaf@tok () Term)

; </end encoding val ExtTest.uu___is_Leaf>


; encoding sigelt let uu___is_Leaf


; <Skipped let uu___is_Leaf/>


; encoding sigelt val ExtTest.uu___is_Node


; <Start encoding val ExtTest.uu___is_Node>

(declare-fun ExtTest.uu___is_Node (Term Term Term) Term)

(declare-fun ExtTest.uu___is_Node@tok () Term)

; </end encoding val ExtTest.uu___is_Node>


; encoding sigelt let uu___is_Node


; <Skipped let uu___is_Node/>


; encoding sigelt val ExtTest.__proj__Node__item___0


; <Start encoding val ExtTest.__proj__Node__item___0>

(declare-fun Tm_refine_20040684405eb2eb8a665350855fa329 (Term Term) Term)
(declare-fun ExtTest.__proj__Node__item___0 (Term Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: naryTree t n {Node? _} -> vec (naryTree t n) n
(declare-fun Tm_arrow_0b80b3253e4a27f64c269d19ec7afb8d () Term)
(declare-fun ExtTest.__proj__Node__item___0@tok () Term)

; </end encoding val ExtTest.__proj__Node__item___0>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat)
(HasType @x2
(ExtTest.naryTree @x0
@x1)))
(HasType (ExtTest.uu___is_Node @x0
@x1
@x2)
Prims.bool))
 

:pattern ((ExtTest.uu___is_Node @x0
@x1
@x2))
:qid typing_ExtTest.uu___is_Node))

:named typing_ExtTest.uu___is_Node))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.naryTree@tok
@x0)
@x1)
(ExtTest.naryTree @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.naryTree@tok
@x0)
@x1))

:pattern ((ExtTest.naryTree @x0
@x1))
:qid token_correspondence_ExtTest.naryTree@tok))

:named token_correspondence_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.Node @x1
@x2
@x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5)))
:qid subterm_ordering_ExtTest.Node))

:named subterm_ordering_ExtTest.Node))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__Node__item___0; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_20040684405eb2eb8a665350855fa329 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_20040684405eb2eb8a665350855fa329 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_20040684405eb2eb8a665350855fa329))

:named refinement_kinding_Tm_refine_20040684405eb2eb8a665350855fa329))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__Node__item___0; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_20040684405eb2eb8a665350855fa329 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(ExtTest.naryTree @x2
@x3))

;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(BoxBool_proj_0 (ExtTest.uu___is_Node @x2
@x3
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_20040684405eb2eb8a665350855fa329 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_20040684405eb2eb8a665350855fa329))

:named refinement_interpretation_Tm_refine_20040684405eb2eb8a665350855fa329))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.Node__0 (ExtTest.Node @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid projection_inverse_ExtTest.Node__0))

:named projection_inverse_ExtTest.Node__0))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.naryTree@tok))
:named pre_kinding_ExtTest.naryTree@tok))
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.naryTree@tok)

;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT ExtTest.naryTree@tok
@x0))
 

:pattern ((ApplyTT ExtTest.naryTree@tok
@x0))
:qid kinding_ExtTest.naryTree@tok))


;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat))
(HasType (ExtTest.naryTree @x0
@x1)
Tm_type))
 

:pattern ((ExtTest.naryTree @x0
@x1))
:qid kinding_ExtTest.naryTree@tok.1))
)
:named kinding_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_20040684405eb2eb8a665350855fa329
;;; Fact-ids: Name ExtTest.__proj__Node__item___0; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_20040684405eb2eb8a665350855fa329 @x0
@x1)))
(Valid (Prims.hasEq (ExtTest.naryTree @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_20040684405eb2eb8a665350855fa329 @x0
@x1))))
:qid haseqTm_refine_20040684405eb2eb8a665350855fa329))

:named haseqTm_refine_20040684405eb2eb8a665350855fa329))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.naryTree @x2
@x3))
(or (is-ExtTest.Leaf @x1)
(is-ExtTest.Node @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.naryTree @x2
@x3)))
:qid fuel_guarded_inversion_ExtTest.naryTree))

:named fuel_guarded_inversion_ExtTest.naryTree))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! (= 599
(Term_constr_id ExtTest.naryTree@tok))
:named fresh_token_ExtTest.naryTree@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.uu___is_Node @x0
@x1
@x2)
(BoxBool (is-ExtTest.Node @x2)))
 

:pattern ((ExtTest.uu___is_Node @x0
@x1
@x2))
:qid disc_equation_ExtTest.Node))

:named disc_equation_ExtTest.Node))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat)
(HasTypeFuel @u0
@x3
(ExtTest.vec (ExtTest.naryTree @x1
@x2)
@x2)))
(HasTypeFuel @u0
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x1
@x2)))
:qid data_typing_intro_ExtTest.Node@tok))

:named data_typing_intro_ExtTest.Node@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
ExtTest.nnat))
(HasTypeFuel @u0
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x1
@x2)))
:qid data_typing_intro_ExtTest.Leaf@tok))

:named data_typing_intro_ExtTest.Leaf@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x5
ExtTest.nnat)
(HasTypeFuel @u0
@x3
(ExtTest.vec (ExtTest.naryTree @x4
@x5)
@x5))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Node @x1
@x2
@x3)
(ExtTest.naryTree @x4
@x5)))
:qid data_elim_ExtTest.Node))

:named data_elim_ExtTest.Node))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x3
@x4))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
ExtTest.nnat)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.Leaf @x1
@x2)
(ExtTest.naryTree @x3
@x4)))
:qid data_elim_ExtTest.Leaf))

:named data_elim_ExtTest.Leaf))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= 598
(Term_constr_id (ExtTest.naryTree @x0
@x1)))
 

:pattern ((ExtTest.naryTree @x0
@x1))
:qid constructor_distinct_ExtTest.naryTree))

:named constructor_distinct_ExtTest.naryTree))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 610
(Term_constr_id (ExtTest.Node @x0
@x1
@x2)))
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.Node))

:named constructor_distinct_ExtTest.Node))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@x0 Term) (@x1 Term))
 (! (= 605
(Term_constr_id (ExtTest.Leaf @x0
@x1)))
 

:pattern ((ExtTest.Leaf @x0
@x1))
:qid constructor_distinct_ExtTest.Leaf))

:named constructor_distinct_ExtTest.Leaf))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (is-ExtTest.Node (ExtTest.Node @x0
@x1
@x2))
(= (ExtTest.Node @x0
@x1
@x2)
(ExtTest.Node@base @x2)))
 

:pattern ((ExtTest.Node @x0
@x1
@x2))
:qid constructor_base_ExtTest.Node))

:named constructor_base_ExtTest.Node))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(131,2-131,6); use=ExtTest.fst(131,2-131,6)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (is-ExtTest.Leaf (ExtTest.Leaf @x0
@x1))
(= (ExtTest.Leaf @x0
@x1)
ExtTest.Leaf@base))
 

:pattern ((ExtTest.Leaf @x0
@x1))
:qid constructor_base_ExtTest.Leaf))

:named constructor_base_ExtTest.Leaf))
;;;;;;;;;;;;;;;;Assumption: ExtTest.naryTree__uu___haseq
;;; Fact-ids: Name ExtTest.naryTree__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
ExtTest.nnat)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (ExtTest.naryTree @x0
@x1))))
 

:pattern ((Prims.hasEq (ExtTest.naryTree @x0
@x1)))
:qid assumption_ExtTest.naryTree__uu___haseq))
:named assumption_ExtTest.naryTree__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.naryTree; Namespace ExtTest; Name ExtTest.Leaf; Namespace ExtTest; Name ExtTest.Node; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(130,5-130,13); use=ExtTest.fst(130,5-130,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.naryTree @x2
@x3))
(= (Term_constr_id (ExtTest.naryTree @x2
@x3))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.naryTree @x2
@x3)))
:qid ExtTest_pretyping_c32c3346c88e60087ac067b651450bc7))

:named ExtTest_pretyping_c32c3346c88e60087ac067b651450bc7))
(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (t: Type) (n: ExtTest.nnat) (projectee: _: ExtTest.naryTree t n {Node? _}).
;   (*  - Could not prove post-condition
; *) ~(Node? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__Node__item___0`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x2
(Tm_refine_20040684405eb2eb8a665350855fa329 @x0
@x1))

;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(not 
;; def=ExtTest.fst(132,2-132,6); use=ExtTest.fst(132,2-132,6)
(BoxBool_proj_0 (ExtTest.uu___is_Node @x0
@x1
@x2))
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
; QUERY ID: (ExtTest.__proj__Node__item___0, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_20040684405eb2eb8a665350855fa329

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__Node__item___0


; <Skipped let __proj__Node__item___0/>


; encoding sigelt val ExtTest.two


; <Skipped val ExtTest.two/>


; encoding sigelt let two


; <Start encoding let two>

(declare-fun ExtTest.two (Dummy_sort) Term)

; </end encoding let two>


; encoding sigelt let binaryTree


; <Start encoding let binaryTree>

(declare-fun ExtTest.binaryTree (Term) Term)

(declare-fun ExtTest.binaryTree@tok () Term)

; </end encoding let binaryTree>


; encoding sigelt val ExtTest.binLeaf


; <Skipped val ExtTest.binLeaf/>


; encoding sigelt let binLeaf


; <Start encoding let binLeaf>

(declare-fun ExtTest.binLeaf (Dummy_sort) Term)

; </end encoding let binLeaf>


; encoding sigelt val ExtTest.binNode


; <Skipped val ExtTest.binNode/>


; encoding sigelt let binNode


; <Start encoding let binNode>

(declare-fun ExtTest.binNode (Dummy_sort) Term)

; </end encoding let binNode>


; encoding sigelt let polyvec


; <Start encoding let polyvec>

(declare-fun ExtTest.polyvec () Term)

; </end encoding let polyvec>


; encoding sigelt let listalias


; <Start encoding let listalias>

(declare-fun ExtTest.listalias (Term) Term)

(declare-fun ExtTest.listalias@tok () Term)

; </end encoding let listalias>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.evenlist


; <Start encoding type ExtTest.evenlist>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.evenlist (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.evenlist@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.oddlist (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.oddlist@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.ENil (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ENil_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.ENil
(declare-fun ExtTest.ENil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.ECons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.ECons
(declare-fun ExtTest.ECons@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.OCons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.OCons
(declare-fun ExtTest.OCons@tok () Term)
;;;;;;;;;;;;;;;;evenlist a
(declare-fun Tm_arrow_28fee7d31787783bc240a2602582185e () Term)
;;;;;;;;;;;;;;;;hd: a -> tl: oddlist a -> evenlist a
(declare-fun Tm_arrow_b99ada28a01e1282e9bbe9bddada9b47 () Term)
;;;;;;;;;;;;;;;;hd: a -> tl: evenlist a -> oddlist a
(declare-fun Tm_arrow_358818a0bc9e21e97d9b051c33243077 () Term)

; <start constructor ExtTest.evenlist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.evenlist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
654)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.evenlist @x0))
 
;;no pats
:qid is-ExtTest.evenlist))))

; </end constructor ExtTest.evenlist>


; <start constructor ExtTest.oddlist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.oddlist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
660)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.oddlist @x0))
 
;;no pats
:qid is-ExtTest.oddlist))))

; </end constructor ExtTest.oddlist>


; <start constructor ExtTest.ENil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.ENil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
667)
(= __@x0
(ExtTest.ENil (ExtTest.ENil_a __@x0)))))

; </end constructor ExtTest.ENil>


; <start constructor ExtTest.ECons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.ECons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
672)
(= __@x0
(ExtTest.ECons (ExtTest.ECons_a __@x0)
(ExtTest.ECons_hd __@x0)
(ExtTest.ECons_tl __@x0)))))

; </end constructor ExtTest.ECons>


; <start constructor ExtTest.OCons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.OCons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
677)
(= __@x0
(ExtTest.OCons (ExtTest.OCons_a __@x0)
(ExtTest.OCons_hd __@x0)
(ExtTest.OCons_tl __@x0)))))

; </end constructor ExtTest.OCons>


; </end encoding type ExtTest.evenlist>

;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.oddlist@tok
@x0)
(ExtTest.oddlist @x0))
 

:pattern ((ApplyTT ExtTest.oddlist@tok
@x0))

:pattern ((ExtTest.oddlist @x0))
:qid token_correspondence_ExtTest.oddlist@tok))

:named token_correspondence_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.evenlist@tok
@x0)
(ExtTest.evenlist @x0))
 

:pattern ((ApplyTT ExtTest.evenlist@tok
@x0))

:pattern ((ExtTest.evenlist @x0))
:qid token_correspondence_ExtTest.evenlist@tok))

:named token_correspondence_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.OCons @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.OCons @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4)))
:qid subterm_ordering_ExtTest.OCons))

:named subterm_ordering_ExtTest.OCons))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.ECons @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.ECons @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4)))
:qid subterm_ordering_ExtTest.ECons))

:named subterm_ordering_ExtTest.ECons))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_tl (ExtTest.OCons @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_tl))

:named projection_inverse_ExtTest.OCons_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_hd (ExtTest.OCons @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_hd))

:named projection_inverse_ExtTest.OCons_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_a (ExtTest.OCons @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_a))

:named projection_inverse_ExtTest.OCons_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@x0 Term))
 (! (= (ExtTest.ENil_a (ExtTest.ENil @x0))
@x0)
 

:pattern ((ExtTest.ENil @x0))
:qid projection_inverse_ExtTest.ENil_a))

:named projection_inverse_ExtTest.ENil_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_tl (ExtTest.ECons @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_tl))

:named projection_inverse_ExtTest.ECons_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_hd (ExtTest.ECons @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_hd))

:named projection_inverse_ExtTest.ECons_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_a (ExtTest.ECons @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_a))

:named projection_inverse_ExtTest.ECons_a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.oddlist@tok))
:named pre_kinding_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.evenlist@tok))
:named pre_kinding_ExtTest.evenlist@tok))
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.oddlist@tok)

;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.oddlist @x0)
Tm_type))
 

:pattern ((ExtTest.oddlist @x0))
:qid kinding_ExtTest.oddlist@tok))
)
:named kinding_ExtTest.oddlist@tok))
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.evenlist@tok)

;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.evenlist @x0)
Tm_type))
 

:pattern ((ExtTest.evenlist @x0))
:qid kinding_ExtTest.evenlist@tok))
)
:named kinding_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.oddlist @x2))
(and (is-ExtTest.OCons @x1)
(= @x2
(ExtTest.OCons_a @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.oddlist @x2)))
:qid fuel_guarded_inversion_ExtTest.oddlist))

:named fuel_guarded_inversion_ExtTest.oddlist))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.evenlist @x2))
(or (and (is-ExtTest.ENil @x1)
(= @x2
(ExtTest.ENil_a @x1)))
(and (is-ExtTest.ECons @x1)
(= @x2
(ExtTest.ECons_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.evenlist @x2)))
:qid fuel_guarded_inversion_ExtTest.evenlist))

:named fuel_guarded_inversion_ExtTest.evenlist))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (= 661
(Term_constr_id ExtTest.oddlist@tok))
:named fresh_token_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (= 655
(Term_constr_id ExtTest.evenlist@tok))
:named fresh_token_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.evenlist @x1)))
(HasTypeFuel @u0
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x1)))
:qid data_typing_intro_ExtTest.OCons@tok))

:named data_typing_intro_ExtTest.OCons@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(ExtTest.ENil @x1)
(ExtTest.evenlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.ENil @x1)
(ExtTest.evenlist @x1)))
:qid data_typing_intro_ExtTest.ENil@tok))

:named data_typing_intro_ExtTest.ENil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.oddlist @x1)))
(HasTypeFuel @u0
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x1)))
:qid data_typing_intro_ExtTest.ECons@tok))

:named data_typing_intro_ExtTest.ECons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.evenlist @x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4)))
:qid data_elim_ExtTest.OCons))

:named data_elim_ExtTest.OCons))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ENil @x1)
(ExtTest.evenlist @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ENil @x1)
(ExtTest.evenlist @x2)))
:qid data_elim_ExtTest.ENil))

:named data_elim_ExtTest.ENil))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.oddlist @x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4)))
:qid data_elim_ExtTest.ECons))

:named data_elim_ExtTest.ECons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (= 660
(Term_constr_id (ExtTest.oddlist @x0)))
 

:pattern ((ExtTest.oddlist @x0))
:qid constructor_distinct_ExtTest.oddlist))

:named constructor_distinct_ExtTest.oddlist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (= 654
(Term_constr_id (ExtTest.evenlist @x0)))
 

:pattern ((ExtTest.evenlist @x0))
:qid constructor_distinct_ExtTest.evenlist))

:named constructor_distinct_ExtTest.evenlist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 677
(Term_constr_id (ExtTest.OCons @x0
@x1
@x2)))
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.OCons))

:named constructor_distinct_ExtTest.OCons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@x0 Term))
 (! (= 667
(Term_constr_id (ExtTest.ENil @x0)))
 

:pattern ((ExtTest.ENil @x0))
:qid constructor_distinct_ExtTest.ENil))

:named constructor_distinct_ExtTest.ENil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 672
(Term_constr_id (ExtTest.ECons @x0
@x1
@x2)))
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.ECons))

:named constructor_distinct_ExtTest.ECons))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.oddlist @x2))
(= (ExtTest.oddlist @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.oddlist @x2)))
:qid ExtTest_pretyping_afbffb333cfc5b8338184c952b3dfb3f))

:named ExtTest_pretyping_afbffb333cfc5b8338184c952b3dfb3f))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.evenlist @x2))
(= (ExtTest.evenlist @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.evenlist @x2)))
:qid ExtTest_pretyping_9460b23f191c4c34ea4b168b76930f6f))

:named ExtTest_pretyping_9460b23f191c4c34ea4b168b76930f6f))
(push) ;; push{4

; Starting query at ExtTest.fst(182,0-186,46)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (a: Type) (a: Type).
;   Prims.hasEq a /\
;   (forall (a: Type). {:pattern Prims.hasEq (ExtTest.evenlist a)}
;       Prims.hasEq a ==> Prims.hasEq (ExtTest.evenlist a)) /\
;   Prims.hasEq a /\
;   (forall (a: Type). {:pattern Prims.hasEq (ExtTest.oddlist a)}
;       Prims.hasEq a ==> Prims.hasEq (ExtTest.oddlist a)) ==>
;   (forall (hd: a) (tl: ExtTest.oddlist a). Prims.hasEq a /\ Prims.hasEq (ExtTest.oddlist a)) /\
;   (forall (hd: a) (tl: ExtTest.evenlist a). Prims.hasEq a /\ Prims.hasEq (ExtTest.evenlist a))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.evenlist`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_type)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x0)
)


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x2)
)
)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq (ExtTest.evenlist @x2))
)
)
 

:pattern ((Prims.hasEq (ExtTest.evenlist @x2)))
:qid @query.1))


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x1)
)


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
Tm_type)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x2)
)
)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq (ExtTest.oddlist @x2))
)
)
 

:pattern ((Prims.hasEq (ExtTest.oddlist @x2)))
:qid @query.2))
)

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(and 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x0)
(HasType @x3
(ExtTest.oddlist @x0)))

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(and 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(184,15-184,16)
(or label_1

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x0)
)
)


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(184,23-184,32)
(or label_2

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq (ExtTest.oddlist @x0))
)
)
)
)
 
;;no pats
:qid @query.3))


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
@x1)
(HasType @x3
(ExtTest.evenlist @x1)))

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(and 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(186,15-186,16)
(or label_3

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq @x1)
)
)


;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(186,23-186,33)
(or label_4

;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Valid 
;; def=ExtTest.fst(182,0-186,46); use=ExtTest.fst(182,0-186,46)
(Prims.hasEq (ExtTest.evenlist @x1))
)
)
)
)
 
;;no pats
:qid @query.4))
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
; QUERY ID: (ExtTest.evenlist, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.evenlist


; <Start encoding type ExtTest.evenlist>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.evenlist (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.evenlist@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.oddlist (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.oddlist@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.ENil (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ENil_a (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.ENil
(declare-fun ExtTest.ENil@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.ECons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.ECons_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.ECons
(declare-fun ExtTest.ECons@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.OCons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_hd (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OCons_tl (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.OCons
(declare-fun ExtTest.OCons@tok () Term)
;;;;;;;;;;;;;;;;evenlist a
(declare-fun Tm_arrow_28fee7d31787783bc240a2602582185e () Term)
;;;;;;;;;;;;;;;;hd: a -> tl: oddlist a -> evenlist a
(declare-fun Tm_arrow_b99ada28a01e1282e9bbe9bddada9b47 () Term)
;;;;;;;;;;;;;;;;hd: a -> tl: evenlist a -> oddlist a
(declare-fun Tm_arrow_358818a0bc9e21e97d9b051c33243077 () Term)

; <start constructor ExtTest.evenlist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.evenlist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
681)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.evenlist @x0))
 
;;no pats
:qid is-ExtTest.evenlist))))

; </end constructor ExtTest.evenlist>


; <start constructor ExtTest.oddlist>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.oddlist ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
687)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.oddlist @x0))
 
;;no pats
:qid is-ExtTest.oddlist))))

; </end constructor ExtTest.oddlist>


; <start constructor ExtTest.ENil>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.ENil ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
694)
(= __@x0
(ExtTest.ENil (ExtTest.ENil_a __@x0)))))

; </end constructor ExtTest.ENil>


; <start constructor ExtTest.ECons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.ECons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
699)
(= __@x0
(ExtTest.ECons (ExtTest.ECons_a __@x0)
(ExtTest.ECons_hd __@x0)
(ExtTest.ECons_tl __@x0)))))

; </end constructor ExtTest.ECons>


; <start constructor ExtTest.OCons>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.OCons ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
704)
(= __@x0
(ExtTest.OCons (ExtTest.OCons_a __@x0)
(ExtTest.OCons_hd __@x0)
(ExtTest.OCons_tl __@x0)))))

; </end constructor ExtTest.OCons>


; </end encoding type ExtTest.evenlist>


; encoding sigelt assume ExtTest.evenlist__uu___haseq


; <Start encoding assume ExtTest.evenlist__uu___haseq>


; </end encoding assume ExtTest.evenlist__uu___haseq>


; encoding sigelt assume ExtTest.oddlist__uu___haseq


; <Start encoding assume ExtTest.oddlist__uu___haseq>


; </end encoding assume ExtTest.oddlist__uu___haseq>


; encoding sigelt val ExtTest.uu___is_ENil


; <Start encoding val ExtTest.uu___is_ENil>

(declare-fun ExtTest.uu___is_ENil (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: evenlist a -> Prims.bool
(declare-fun Tm_arrow_c66885d05e8fa7548d59994cfe67a463 () Term)
(declare-fun ExtTest.uu___is_ENil@tok () Term)

; </end encoding val ExtTest.uu___is_ENil>


; encoding sigelt let uu___is_ENil


; <Skipped let uu___is_ENil/>


; encoding sigelt val ExtTest.uu___is_ECons


; <Start encoding val ExtTest.uu___is_ECons>

(declare-fun ExtTest.uu___is_ECons (Term Term) Term)

(declare-fun ExtTest.uu___is_ECons@tok () Term)

; </end encoding val ExtTest.uu___is_ECons>


; encoding sigelt let uu___is_ECons


; <Skipped let uu___is_ECons/>


; encoding sigelt val ExtTest.__proj__ECons__item__hd


; <Start encoding val ExtTest.__proj__ECons__item__hd>

(declare-fun Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 (Term) Term)
(declare-fun ExtTest.__proj__ECons__item__hd (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: evenlist a {ECons? _} -> a
(declare-fun Tm_arrow_f576dcdc66b8eabceca5b2f827b57dc3 () Term)
(declare-fun ExtTest.__proj__ECons__item__hd@tok () Term)

; </end encoding val ExtTest.__proj__ECons__item__hd>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_ECons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(ExtTest.evenlist @x0)))
(HasType (ExtTest.uu___is_ECons @x0
@x1)
Prims.bool))
 

:pattern ((ExtTest.uu___is_ECons @x0
@x1))
:qid typing_ExtTest.uu___is_ECons))

:named typing_ExtTest.uu___is_ECons))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.oddlist@tok
@x0)
(ExtTest.oddlist @x0))
 

:pattern ((ApplyTT ExtTest.oddlist@tok
@x0))

:pattern ((ExtTest.oddlist @x0))
:qid token_correspondence_ExtTest.oddlist@tok))

:named token_correspondence_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.evenlist@tok
@x0)
(ExtTest.evenlist @x0))
 

:pattern ((ApplyTT ExtTest.evenlist@tok
@x0))

:pattern ((ExtTest.evenlist @x0))
:qid token_correspondence_ExtTest.evenlist@tok))

:named token_correspondence_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.OCons @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.OCons @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4)))
:qid subterm_ordering_ExtTest.OCons))

:named subterm_ordering_ExtTest.OCons))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.ECons @x1
@x2
@x3)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(ExtTest.ECons @x1
@x2
@x3)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4)))
:qid subterm_ordering_ExtTest.ECons))

:named subterm_ordering_ExtTest.ECons))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__ECons__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))

:named refinement_kinding_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__ECons__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x2))
(and (HasTypeFuel @u0
@x1
(ExtTest.evenlist @x2))

;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(BoxBool_proj_0 (ExtTest.uu___is_ECons @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x2)))
:qid refinement_interpretation_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))

:named refinement_interpretation_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_tl (ExtTest.OCons @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_tl))

:named projection_inverse_ExtTest.OCons_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_hd (ExtTest.OCons @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_hd))

:named projection_inverse_ExtTest.OCons_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.OCons_a (ExtTest.OCons @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.OCons_a))

:named projection_inverse_ExtTest.OCons_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@x0 Term))
 (! (= (ExtTest.ENil_a (ExtTest.ENil @x0))
@x0)
 

:pattern ((ExtTest.ENil @x0))
:qid projection_inverse_ExtTest.ENil_a))

:named projection_inverse_ExtTest.ENil_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_tl (ExtTest.ECons @x0
@x1
@x2))
@x2)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_tl))

:named projection_inverse_ExtTest.ECons_tl))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_hd (ExtTest.ECons @x0
@x1
@x2))
@x1)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_hd))

:named projection_inverse_ExtTest.ECons_hd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.ECons_a (ExtTest.ECons @x0
@x1
@x2))
@x0)
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid projection_inverse_ExtTest.ECons_a))

:named projection_inverse_ExtTest.ECons_a))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.oddlist@tok))
:named pre_kinding_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.evenlist@tok))
:named pre_kinding_ExtTest.evenlist@tok))
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.oddlist@tok)

;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.oddlist @x0)
Tm_type))
 

:pattern ((ExtTest.oddlist @x0))
:qid kinding_ExtTest.oddlist@tok))
)
:named kinding_ExtTest.oddlist@tok))
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.evenlist@tok)

;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (ExtTest.evenlist @x0)
Tm_type))
 

:pattern ((ExtTest.evenlist @x0))
:qid kinding_ExtTest.evenlist@tok))
)
:named kinding_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77
;;; Fact-ids: Name ExtTest.__proj__ECons__item__hd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0)))
(Valid (Prims.hasEq (ExtTest.evenlist @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0))))
:qid haseqTm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))

:named haseqTm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.oddlist @x2))
(and (is-ExtTest.OCons @x1)
(= @x2
(ExtTest.OCons_a @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.oddlist @x2)))
:qid fuel_guarded_inversion_ExtTest.oddlist))

:named fuel_guarded_inversion_ExtTest.oddlist))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.evenlist @x2))
(or (and (is-ExtTest.ENil @x1)
(= @x2
(ExtTest.ENil_a @x1)))
(and (is-ExtTest.ECons @x1)
(= @x2
(ExtTest.ECons_a @x1)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.evenlist @x2)))
:qid fuel_guarded_inversion_ExtTest.evenlist))

:named fuel_guarded_inversion_ExtTest.evenlist))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (= 688
(Term_constr_id ExtTest.oddlist@tok))
:named fresh_token_ExtTest.oddlist@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! (= 682
(Term_constr_id ExtTest.evenlist@tok))
:named fresh_token_ExtTest.evenlist@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_ECons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.uu___is_ECons @x0
@x1)
(BoxBool (is-ExtTest.ECons @x1)))
 

:pattern ((ExtTest.uu___is_ECons @x0
@x1))
:qid disc_equation_ExtTest.ECons))

:named disc_equation_ExtTest.ECons))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.evenlist @x1)))
(HasTypeFuel @u0
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x1)))
:qid data_typing_intro_ExtTest.OCons@tok))

:named data_typing_intro_ExtTest.OCons@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
(ExtTest.ENil @x1)
(ExtTest.evenlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.ENil @x1)
(ExtTest.evenlist @x1)))
:qid data_typing_intro_ExtTest.ENil@tok))

:named data_typing_intro_ExtTest.ENil@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
@x1)
(HasTypeFuel @u0
@x3
(ExtTest.oddlist @x1)))
(HasTypeFuel @u0
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x1)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x1)))
:qid data_typing_intro_ExtTest.ECons@tok))

:named data_typing_intro_ExtTest.ECons@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.evenlist @x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OCons @x1
@x2
@x3)
(ExtTest.oddlist @x4)))
:qid data_elim_ExtTest.OCons))

:named data_elim_ExtTest.OCons))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ENil @x1)
(ExtTest.evenlist @x2))
(HasTypeFuel @u0
@x2
Tm_type))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ENil @x1)
(ExtTest.evenlist @x2)))
:qid data_elim_ExtTest.ENil))

:named data_elim_ExtTest.ENil))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4))
(and (HasTypeFuel @u0
@x4
Tm_type)
(HasTypeFuel @u0
@x2
@x4)
(HasTypeFuel @u0
@x3
(ExtTest.oddlist @x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.ECons @x1
@x2
@x3)
(ExtTest.evenlist @x4)))
:qid data_elim_ExtTest.ECons))

:named data_elim_ExtTest.ECons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term))
 (! (= 687
(Term_constr_id (ExtTest.oddlist @x0)))
 

:pattern ((ExtTest.oddlist @x0))
:qid constructor_distinct_ExtTest.oddlist))

:named constructor_distinct_ExtTest.oddlist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term))
 (! (= 681
(Term_constr_id (ExtTest.evenlist @x0)))
 

:pattern ((ExtTest.evenlist @x0))
:qid constructor_distinct_ExtTest.evenlist))

:named constructor_distinct_ExtTest.evenlist))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(186,4-186,9); use=ExtTest.fst(186,4-186,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 704
(Term_constr_id (ExtTest.OCons @x0
@x1
@x2)))
 

:pattern ((ExtTest.OCons @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.OCons))

:named constructor_distinct_ExtTest.OCons))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(183,4-183,8); use=ExtTest.fst(183,4-183,8)
(forall ((@x0 Term))
 (! (= 694
(Term_constr_id (ExtTest.ENil @x0)))
 

:pattern ((ExtTest.ENil @x0))
:qid constructor_distinct_ExtTest.ENil))

:named constructor_distinct_ExtTest.ENil))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,4-184,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 699
(Term_constr_id (ExtTest.ECons @x0
@x1
@x2)))
 

:pattern ((ExtTest.ECons @x0
@x1
@x2))
:qid constructor_distinct_ExtTest.ECons))

:named constructor_distinct_ExtTest.ECons))
;;;;;;;;;;;;;;;;Assumption: ExtTest.oddlist__uu___haseq
;;; Fact-ids: Name ExtTest.oddlist__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (ExtTest.oddlist @x0))))
 

:pattern ((Prims.hasEq (ExtTest.oddlist @x0)))
:qid assumption_ExtTest.oddlist__uu___haseq))
:named assumption_ExtTest.oddlist__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: ExtTest.evenlist__uu___haseq
;;; Fact-ids: Name ExtTest.evenlist__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)
(Valid (Prims.hasEq @x0)))
(Valid (Prims.hasEq (ExtTest.evenlist @x0))))
 

:pattern ((Prims.hasEq (ExtTest.evenlist @x0)))
:qid assumption_ExtTest.evenlist__uu___haseq))
:named assumption_ExtTest.evenlist__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(185,4-185,11); use=ExtTest.fst(185,4-185,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.oddlist @x2))
(= (ExtTest.oddlist @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.oddlist @x2)))
:qid ExtTest_pretyping_afbffb333cfc5b8338184c952b3dfb3f))

:named ExtTest_pretyping_afbffb333cfc5b8338184c952b3dfb3f))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.evenlist; Namespace ExtTest; Name ExtTest.ENil; Namespace ExtTest; Name ExtTest.ECons; Namespace ExtTest; Name ExtTest.oddlist; Namespace ExtTest; Name ExtTest.OCons; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(182,5-182,13); use=ExtTest.fst(182,5-182,13)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.evenlist @x2))
(= (ExtTest.evenlist @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.evenlist @x2)))
:qid ExtTest_pretyping_9460b23f191c4c34ea4b168b76930f6f))

:named ExtTest_pretyping_9460b23f191c4c34ea4b168b76930f6f))
(push) ;; push{2

; Starting query at ExtTest.fst(184,12-184,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: ExtTest.evenlist a {ECons? _}).
;   (*  - Could not prove post-condition
; *) ~(ECons? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ECons__item__hd`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0))

;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,12-184,14)
(not 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,12-184,14)
(BoxBool_proj_0 (ExtTest.uu___is_ECons @x0
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
; QUERY ID: (ExtTest.__proj__ECons__item__hd, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ECons__item__hd


; <Skipped let __proj__ECons__item__hd/>


; encoding sigelt val ExtTest.__proj__ECons__item__tl


; <Start encoding val ExtTest.__proj__ECons__item__tl>


(declare-fun ExtTest.__proj__ECons__item__tl (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: evenlist a {ECons? _} -> oddlist a
(declare-fun Tm_arrow_13001e0ee4013f475b78205783a0eca5 () Term)
(declare-fun ExtTest.__proj__ECons__item__tl@tok () Term)

; </end encoding val ExtTest.__proj__ECons__item__tl>

(push) ;; push{2

; Starting query at ExtTest.fst(184,20-184,22)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (projectee: _: ExtTest.evenlist a {ECons? _}).
;   (*  - Could not prove post-condition
; *) ~(ECons? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__ECons__item__tl`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77 @x0))

;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,20-184,22)
(not 
;; def=ExtTest.fst(184,4-184,9); use=ExtTest.fst(184,20-184,22)
(BoxBool_proj_0 (ExtTest.uu___is_ECons @x0
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
; QUERY ID: (ExtTest.__proj__ECons__item__tl, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_c3bf27f5ac628a3e1e1e49ae20a40e77

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__ECons__item__tl


; <Skipped let __proj__ECons__item__tl/>


; encoding sigelt val ExtTest.uu___is_OCons


; <Start encoding val ExtTest.uu___is_OCons>

(declare-fun ExtTest.uu___is_OCons (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: oddlist a -> Prims.bool
(declare-fun Tm_arrow_14a93132b5f9a60808b1d76e31ad0feb () Term)
(declare-fun ExtTest.uu___is_OCons@tok () Term)

; </end encoding val ExtTest.uu___is_OCons>


; encoding sigelt let uu___is_OCons


; <Skipped let uu___is_OCons/>


; encoding sigelt val ExtTest.__proj__OCons__item__hd


; <Start encoding val ExtTest.__proj__OCons__item__hd>

(declare-fun ExtTest.__proj__OCons__item__hd (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: oddlist a -> a
(declare-fun Tm_arrow_3a053a87b5b43d54d7ab23e360c95d89 () Term)
(declare-fun ExtTest.__proj__OCons__item__hd@tok () Term)

; </end encoding val ExtTest.__proj__OCons__item__hd>


; encoding sigelt let __proj__OCons__item__hd


; <Skipped let __proj__OCons__item__hd/>


; encoding sigelt val ExtTest.__proj__OCons__item__tl


; <Start encoding val ExtTest.__proj__OCons__item__tl>

(declare-fun ExtTest.__proj__OCons__item__tl (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: oddlist a -> evenlist a
(declare-fun Tm_arrow_a624ea5a3b0da7b9ee1a2cf5d1333c17 () Term)
(declare-fun ExtTest.__proj__OCons__item__tl@tok () Term)

; </end encoding val ExtTest.__proj__OCons__item__tl>


; encoding sigelt let __proj__OCons__item__tl


; <Skipped let __proj__OCons__item__tl/>

(push) ;; push{2

; tc_inductive

(push) ;; push{3

; haseq


; encoding sigelt type ExtTest.isEven


; <Start encoding type ExtTest.isEven>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.isEven (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.isEven@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.isOdd (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.isOdd@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Ev0 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Ev0
(declare-fun ExtTest.Ev0@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.EvSOdd (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.EvSOdd_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.EvSOdd__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.EvSOdd
(declare-fun ExtTest.EvSOdd@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.OddSEven (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OddSEven_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OddSEven__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.OddSEven
(declare-fun ExtTest.OddSEven@tok () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: isOdd n -> isEven (S n)
(declare-fun Tm_arrow_8ed437aa55b04b522a5a215b4bf0eaa3 () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: isEven n -> isOdd (S n)
(declare-fun Tm_arrow_32cc225a48ced9057ecf2dda31836db9 () Term)

; <start constructor ExtTest.isEven>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.isEven ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
755)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.isEven @x0))
 
;;no pats
:qid is-ExtTest.isEven))))

; </end constructor ExtTest.isEven>


; <start constructor ExtTest.isOdd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.isOdd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
761)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.isOdd @x0))
 
;;no pats
:qid is-ExtTest.isOdd))))

; </end constructor ExtTest.isOdd>


; <start constructor ExtTest.Ev0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Ev0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
768)
(= __@x0
ExtTest.Ev0)))

; </end constructor ExtTest.Ev0>


; <start constructor ExtTest.EvSOdd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.EvSOdd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
771)
(= __@x0
(ExtTest.EvSOdd (ExtTest.EvSOdd_n __@x0)
(ExtTest.EvSOdd__1 __@x0)))))

; </end constructor ExtTest.EvSOdd>


; <start constructor ExtTest.OddSEven>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.OddSEven ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
777)
(= __@x0
(ExtTest.OddSEven (ExtTest.OddSEven_n __@x0)
(ExtTest.OddSEven__1 __@x0)))))

; </end constructor ExtTest.OddSEven>


; </end encoding type ExtTest.isEven>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (HasType ExtTest.Ev0@tok
(ExtTest.isEven ExtTest.O@tok))
:named typing_tok_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.isOdd@tok
@x0)
(ExtTest.isOdd @x0))
 

:pattern ((ApplyTT ExtTest.isOdd@tok
@x0))

:pattern ((ExtTest.isOdd @x0))
:qid token_correspondence_ExtTest.isOdd@tok))

:named token_correspondence_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.isEven@tok
@x0)
(ExtTest.isEven @x0))
 

:pattern ((ApplyTT ExtTest.isEven@tok
@x0))

:pattern ((ExtTest.isEven @x0))
:qid token_correspondence_ExtTest.isEven@tok))

:named token_correspondence_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.OddSEven @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.OddSEven @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid subterm_ordering_ExtTest.OddSEven))

:named subterm_ordering_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.EvSOdd @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.EvSOdd @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid subterm_ordering_ExtTest.EvSOdd))

:named subterm_ordering_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.OddSEven_n (ExtTest.OddSEven @x0
@x1))
@x0)
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid projection_inverse_ExtTest.OddSEven_n))

:named projection_inverse_ExtTest.OddSEven_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.OddSEven__1 (ExtTest.OddSEven @x0
@x1))
@x1)
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid projection_inverse_ExtTest.OddSEven__1))

:named projection_inverse_ExtTest.OddSEven__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.EvSOdd_n (ExtTest.EvSOdd @x0
@x1))
@x0)
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid projection_inverse_ExtTest.EvSOdd_n))

:named projection_inverse_ExtTest.EvSOdd_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.EvSOdd__1 (ExtTest.EvSOdd @x0
@x1))
@x1)
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid projection_inverse_ExtTest.EvSOdd__1))

:named projection_inverse_ExtTest.EvSOdd__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.isOdd@tok))
:named pre_kinding_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.isEven@tok))
:named pre_kinding_ExtTest.isEven@tok))
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.isOdd@tok)

;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.isOdd @x0)
Tm_type))
 

:pattern ((ExtTest.isOdd @x0))
:qid kinding_ExtTest.isOdd@tok))
)
:named kinding_ExtTest.isOdd@tok))
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.isEven@tok)

;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.isEven @x0)
Tm_type))
 

:pattern ((ExtTest.isEven @x0))
:qid kinding_ExtTest.isEven@tok))
)
:named kinding_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.isOdd @x2))
(and (is-ExtTest.OddSEven @x1)
(= @x2
(ExtTest.S (ExtTest.OddSEven_n @x1)))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.isOdd @x2)))
:qid fuel_guarded_inversion_ExtTest.isOdd))

:named fuel_guarded_inversion_ExtTest.isOdd))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.isEven @x2))
(or (and (is-ExtTest.Ev0 @x1)
(= @x2
ExtTest.O@tok))
(and (is-ExtTest.EvSOdd @x1)
(= @x2
(ExtTest.S (ExtTest.EvSOdd_n @x1))))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.isEven @x2)))
:qid fuel_guarded_inversion_ExtTest.isEven))

:named fuel_guarded_inversion_ExtTest.isEven))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 762
(Term_constr_id ExtTest.isOdd@tok))
:named fresh_token_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 756
(Term_constr_id ExtTest.isEven@tok))
:named fresh_token_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= ExtTest.Ev0@tok
ExtTest.Ev0)
:named equality_tok_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isEven @x1))
(= (ExtTest.S @x1)
@x3))
(HasTypeFuel @u0
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid data_typing_intro_ExtTest.OddSEven@tok))

:named data_typing_intro_ExtTest.OddSEven@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isOdd @x1))
(= (ExtTest.S @x1)
@x3))
(HasTypeFuel @u0
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid data_typing_intro_ExtTest.EvSOdd@tok))

:named data_typing_intro_ExtTest.EvSOdd@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(189,4-189,7); use=ExtTest.fst(189,4-189,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (= ExtTest.O@tok
@x1)
(HasTypeFuel @u0
ExtTest.Ev0
(ExtTest.isEven @x1)))
 

:pattern ((HasTypeFuel @u0
ExtTest.Ev0
(ExtTest.isEven @x1)))
:qid data_typing_intro_ExtTest.Ev0@tok))

:named data_typing_intro_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3))
(and (= (ExtTest.S @x1)
@x3)
(HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isEven @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid data_elim_ExtTest.OddSEven))

:named data_elim_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3))
(and (= (ExtTest.S @x1)
@x3)
(HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isOdd @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid data_elim_ExtTest.EvSOdd))

:named data_elim_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(189,4-189,7); use=ExtTest.fst(189,4-189,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
ExtTest.Ev0
(ExtTest.isEven @x1))
(= ExtTest.O@tok
@x1))
 

:pattern ((HasTypeFuel (SFuel @u0)
ExtTest.Ev0
(ExtTest.isEven @x1)))
:qid data_elim_ExtTest.Ev0))

:named data_elim_ExtTest.Ev0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (= 761
(Term_constr_id (ExtTest.isOdd @x0)))
 

:pattern ((ExtTest.isOdd @x0))
:qid constructor_distinct_ExtTest.isOdd))

:named constructor_distinct_ExtTest.isOdd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (= 755
(Term_constr_id (ExtTest.isEven @x0)))
 

:pattern ((ExtTest.isEven @x0))
:qid constructor_distinct_ExtTest.isEven))

:named constructor_distinct_ExtTest.isEven))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= 777
(Term_constr_id (ExtTest.OddSEven @x0
@x1)))
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid constructor_distinct_ExtTest.OddSEven))

:named constructor_distinct_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 771
(Term_constr_id (ExtTest.EvSOdd @x0
@x1)))
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid constructor_distinct_ExtTest.EvSOdd))

:named constructor_distinct_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 768
(Term_constr_id ExtTest.Ev0))
:named constructor_distinct_ExtTest.Ev0))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.isOdd @x2))
(= (ExtTest.isOdd @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.isOdd @x2)))
:qid ExtTest_pretyping_7344c615ea8924c7cae1856973a471b0))

:named ExtTest_pretyping_7344c615ea8924c7cae1856973a471b0))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.isEven @x2))
(= (ExtTest.isEven @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.isEven @x2)))
:qid ExtTest_pretyping_1e0665ae18557269b96c1063f0248586))

:named ExtTest_pretyping_1e0665ae18557269b96c1063f0248586))
(push) ;; push{4

; Starting query at ExtTest.fst(188,0-192,48)

(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: ExtTest.nnat) (_: ExtTest.nnat).
;   (forall (_: ExtTest.nnat). {:pattern Prims.hasEq (ExtTest.isEven _)}
;       Prims.hasEq (ExtTest.isEven _)) /\
;   (forall (_: ExtTest.nnat). {:pattern Prims.hasEq (ExtTest.isOdd _)} Prims.hasEq (ExtTest.isOdd _)) ==>
;   (forall (n: ExtTest.nnat) (_1: ExtTest.isOdd n).
;       Prims.hasEq ExtTest.nnat /\ Prims.hasEq (ExtTest.isOdd n)) /\
;   (forall (n: ExtTest.nnat) (_1: ExtTest.isEven n).
;       Prims.hasEq ExtTest.nnat /\ Prims.hasEq (ExtTest.isEven n))


; Context: While encoding a query
; While typechecking the top-level declaration `type ExtTest.isEven`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x1
ExtTest.nnat)

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
ExtTest.nnat)

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq (ExtTest.isEven @x2))
)
)
 

:pattern ((Prims.hasEq (ExtTest.isEven @x2)))
:qid @query.1))


;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(forall ((@x2 Term))
 (! (implies (HasType @x2
ExtTest.nnat)

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq (ExtTest.isOdd @x2))
)
)
 

:pattern ((Prims.hasEq (ExtTest.isOdd @x2)))
:qid @query.2))
)

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(and 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
ExtTest.nnat)
(HasType @x3
(ExtTest.isOdd @x2)))

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(and 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(190,15-190,19)
(or label_1

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq ExtTest.nnat)
)
)


;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(190,23-190,30)
(or label_2

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq (ExtTest.isOdd @x2))
)
)
)
)
 
;;no pats
:qid @query.3))


;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(forall ((@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x2
ExtTest.nnat)
(HasType @x3
(ExtTest.isEven @x2)))

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(and 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(192,17-192,21)
(or label_3

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq ExtTest.nnat)
)
)


;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(192,25-192,33)
(or label_4

;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Valid 
;; def=ExtTest.fst(188,0-192,48); use=ExtTest.fst(188,0-192,48)
(Prims.hasEq (ExtTest.isEven @x2))
)
)
)
)
 
;;no pats
:qid @query.4))
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
; QUERY ID: (ExtTest.isEven, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query, assumption_ExtTest.nnat__uu___haseq

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 4}pop
(pop) ;; 3}pop
(pop) ;; 2}pop

; encoding sigelt type ExtTest.isEven


; <Start encoding type ExtTest.isEven>

;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.isEven (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.isEven@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.isOdd (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun ExtTest.isOdd@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.Ev0 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.Ev0
(declare-fun ExtTest.Ev0@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.EvSOdd (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.EvSOdd_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.EvSOdd__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.EvSOdd
(declare-fun ExtTest.EvSOdd@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun ExtTest.OddSEven (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OddSEven_n (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun ExtTest.OddSEven__1 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: ExtTest.OddSEven
(declare-fun ExtTest.OddSEven@tok () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: isOdd n -> isEven (S n)
(declare-fun Tm_arrow_8ed437aa55b04b522a5a215b4bf0eaa3 () Term)
;;;;;;;;;;;;;;;;n: nnat -> _1: isEven n -> isOdd (S n)
(declare-fun Tm_arrow_32cc225a48ced9057ecf2dda31836db9 () Term)

; <start constructor ExtTest.isEven>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.isEven ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
782)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.isEven @x0))
 
;;no pats
:qid is-ExtTest.isEven))))

; </end constructor ExtTest.isEven>


; <start constructor ExtTest.isOdd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.isOdd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
788)
(exists ((@x0 Term))
 (! (= __@x0
(ExtTest.isOdd @x0))
 
;;no pats
:qid is-ExtTest.isOdd))))

; </end constructor ExtTest.isOdd>


; <start constructor ExtTest.Ev0>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.Ev0 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
795)
(= __@x0
ExtTest.Ev0)))

; </end constructor ExtTest.Ev0>


; <start constructor ExtTest.EvSOdd>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.EvSOdd ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
798)
(= __@x0
(ExtTest.EvSOdd (ExtTest.EvSOdd_n __@x0)
(ExtTest.EvSOdd__1 __@x0)))))

; </end constructor ExtTest.EvSOdd>


; <start constructor ExtTest.OddSEven>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-ExtTest.OddSEven ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
804)
(= __@x0
(ExtTest.OddSEven (ExtTest.OddSEven_n __@x0)
(ExtTest.OddSEven__1 __@x0)))))

; </end constructor ExtTest.OddSEven>


; </end encoding type ExtTest.isEven>


; encoding sigelt assume ExtTest.isEven__uu___haseq


; <Start encoding assume ExtTest.isEven__uu___haseq>


; </end encoding assume ExtTest.isEven__uu___haseq>


; encoding sigelt assume ExtTest.isOdd__uu___haseq


; <Start encoding assume ExtTest.isOdd__uu___haseq>


; </end encoding assume ExtTest.isOdd__uu___haseq>


; encoding sigelt val ExtTest.uu___is_Ev0


; <Start encoding val ExtTest.uu___is_Ev0>

(declare-fun ExtTest.uu___is_Ev0 (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: isEven _ -> Prims.bool
(declare-fun Tm_arrow_4506dcb56f179e25093243df5968f473 () Term)
(declare-fun ExtTest.uu___is_Ev0@tok () Term)

; </end encoding val ExtTest.uu___is_Ev0>


; encoding sigelt let uu___is_Ev0


; <Skipped let uu___is_Ev0/>


; encoding sigelt val ExtTest.uu___is_EvSOdd


; <Start encoding val ExtTest.uu___is_EvSOdd>

(declare-fun ExtTest.uu___is_EvSOdd (Term Term) Term)

(declare-fun ExtTest.uu___is_EvSOdd@tok () Term)

; </end encoding val ExtTest.uu___is_EvSOdd>


; encoding sigelt let uu___is_EvSOdd


; <Skipped let uu___is_EvSOdd/>


; encoding sigelt val ExtTest.__proj__EvSOdd__item__n


; <Start encoding val ExtTest.__proj__EvSOdd__item__n>

(declare-fun Tm_refine_ac13ae3ade7282008f704815464dd241 (Term) Term)
(declare-fun ExtTest.__proj__EvSOdd__item__n (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: isEven _ {EvSOdd? _} -> nnat
(declare-fun Tm_arrow_82f7b9366a1d25d3f14dab2ad239efa4 () Term)
(declare-fun ExtTest.__proj__EvSOdd__item__n@tok () Term)

; </end encoding val ExtTest.__proj__EvSOdd__item__n>

;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (HasType ExtTest.Ev0@tok
(ExtTest.isEven ExtTest.O@tok))
:named typing_tok_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.uu___is_EvSOdd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
ExtTest.nnat)
(HasType @x1
(ExtTest.isEven @x0)))
(HasType (ExtTest.uu___is_EvSOdd @x0
@x1)
Prims.bool))
 

:pattern ((ExtTest.uu___is_EvSOdd @x0
@x1))
:qid typing_ExtTest.uu___is_EvSOdd))

:named typing_ExtTest.uu___is_EvSOdd))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.isOdd@tok
@x0)
(ExtTest.isOdd @x0))
 

:pattern ((ApplyTT ExtTest.isOdd@tok
@x0))

:pattern ((ExtTest.isOdd @x0))
:qid token_correspondence_ExtTest.isOdd@tok))

:named token_correspondence_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (= (ApplyTT ExtTest.isEven@tok
@x0)
(ExtTest.isEven @x0))
 

:pattern ((ApplyTT ExtTest.isEven@tok
@x0))

:pattern ((ExtTest.isEven @x0))
:qid token_correspondence_ExtTest.isEven@tok))

:named token_correspondence_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.OddSEven @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.OddSEven @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid subterm_ordering_ExtTest.OddSEven))

:named subterm_ordering_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x1
(ExtTest.EvSOdd @x1
@x2)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(ExtTest.EvSOdd @x1
@x2)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid subterm_ordering_ExtTest.EvSOdd))

:named subterm_ordering_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name ExtTest.__proj__EvSOdd__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_ac13ae3ade7282008f704815464dd241 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_ac13ae3ade7282008f704815464dd241 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_ac13ae3ade7282008f704815464dd241))

:named refinement_kinding_Tm_refine_ac13ae3ade7282008f704815464dd241))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name ExtTest.__proj__EvSOdd__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ac13ae3ade7282008f704815464dd241 @x2))
(and (HasTypeFuel @u0
@x1
(ExtTest.isEven @x2))

;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(BoxBool_proj_0 (ExtTest.uu___is_EvSOdd @x2
@x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ac13ae3ade7282008f704815464dd241 @x2)))
:qid refinement_interpretation_Tm_refine_ac13ae3ade7282008f704815464dd241))

:named refinement_interpretation_Tm_refine_ac13ae3ade7282008f704815464dd241))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.OddSEven_n (ExtTest.OddSEven @x0
@x1))
@x0)
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid projection_inverse_ExtTest.OddSEven_n))

:named projection_inverse_ExtTest.OddSEven_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.OddSEven__1 (ExtTest.OddSEven @x0
@x1))
@x1)
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid projection_inverse_ExtTest.OddSEven__1))

:named projection_inverse_ExtTest.OddSEven__1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.EvSOdd_n (ExtTest.EvSOdd @x0
@x1))
@x0)
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid projection_inverse_ExtTest.EvSOdd_n))

:named projection_inverse_ExtTest.EvSOdd_n))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.EvSOdd__1 (ExtTest.EvSOdd @x0
@x1))
@x1)
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid projection_inverse_ExtTest.EvSOdd__1))

:named projection_inverse_ExtTest.EvSOdd__1))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.isOdd@tok))
:named pre_kinding_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (is-Tm_arrow (PreType ExtTest.isEven@tok))
:named pre_kinding_ExtTest.isEven@tok))
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.isOdd@tok)

;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.isOdd @x0)
Tm_type))
 

:pattern ((ExtTest.isOdd @x0))
:qid kinding_ExtTest.isOdd@tok))
)
:named kinding_ExtTest.isOdd@tok))
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (and (IsTotFun ExtTest.isEven@tok)

;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(HasType (ExtTest.isEven @x0)
Tm_type))
 

:pattern ((ExtTest.isEven @x0))
:qid kinding_ExtTest.isEven@tok))
)
:named kinding_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ac13ae3ade7282008f704815464dd241
;;; Fact-ids: Name ExtTest.__proj__EvSOdd__item__n; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ac13ae3ade7282008f704815464dd241 @x0)))
(Valid (Prims.hasEq (ExtTest.isEven @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ac13ae3ade7282008f704815464dd241 @x0))))
:qid haseqTm_refine_ac13ae3ade7282008f704815464dd241))

:named haseqTm_refine_ac13ae3ade7282008f704815464dd241))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(ExtTest.isOdd @x2))
(and (is-ExtTest.OddSEven @x1)
(= @x2
(ExtTest.S (ExtTest.OddSEven_n @x1)))))
 

:pattern ((HasTypeFuel @u0
@x1
(ExtTest.isOdd @x2)))
:qid fuel_guarded_inversion_ExtTest.isOdd))

:named fuel_guarded_inversion_ExtTest.isOdd))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
(ExtTest.isEven @x2))
(or (and (is-ExtTest.Ev0 @x1)
(= @x2
ExtTest.O@tok))
(and (is-ExtTest.EvSOdd @x1)
(= @x2
(ExtTest.S (ExtTest.EvSOdd_n @x1))))))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
(ExtTest.isEven @x2)))
:qid fuel_guarded_inversion_ExtTest.isEven))

:named fuel_guarded_inversion_ExtTest.isEven))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 789
(Term_constr_id ExtTest.isOdd@tok))
:named fresh_token_ExtTest.isOdd@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 783
(Term_constr_id ExtTest.isEven@tok))
:named fresh_token_ExtTest.isEven@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= ExtTest.Ev0@tok
ExtTest.Ev0)
:named equality_tok_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name ExtTest.uu___is_EvSOdd; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.uu___is_EvSOdd @x0
@x1)
(BoxBool (is-ExtTest.EvSOdd @x1)))
 

:pattern ((ExtTest.uu___is_EvSOdd @x0
@x1))
:qid disc_equation_ExtTest.EvSOdd))

:named disc_equation_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isEven @x1))
(= (ExtTest.S @x1)
@x3))
(HasTypeFuel @u0
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid data_typing_intro_ExtTest.OddSEven@tok))

:named data_typing_intro_ExtTest.OddSEven@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isOdd @x1))
(= (ExtTest.S @x1)
@x3))
(HasTypeFuel @u0
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
 

:pattern ((HasTypeFuel @u0
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid data_typing_intro_ExtTest.EvSOdd@tok))

:named data_typing_intro_ExtTest.EvSOdd@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(189,4-189,7); use=ExtTest.fst(189,4-189,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (= ExtTest.O@tok
@x1)
(HasTypeFuel @u0
ExtTest.Ev0
(ExtTest.isEven @x1)))
 

:pattern ((HasTypeFuel @u0
ExtTest.Ev0
(ExtTest.isEven @x1)))
:qid data_typing_intro_ExtTest.Ev0@tok))

:named data_typing_intro_ExtTest.Ev0@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3))
(and (= (ExtTest.S @x1)
@x3)
(HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isEven @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.OddSEven @x1
@x2)
(ExtTest.isOdd @x3)))
:qid data_elim_ExtTest.OddSEven))

:named data_elim_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3))
(and (= (ExtTest.S @x1)
@x3)
(HasTypeFuel @u0
@x1
ExtTest.nnat)
(HasTypeFuel @u0
@x2
(ExtTest.isOdd @x1))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(ExtTest.EvSOdd @x1
@x2)
(ExtTest.isEven @x3)))
:qid data_elim_ExtTest.EvSOdd))

:named data_elim_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(189,4-189,7); use=ExtTest.fst(189,4-189,7)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
ExtTest.Ev0
(ExtTest.isEven @x1))
(= ExtTest.O@tok
@x1))
 

:pattern ((HasTypeFuel (SFuel @u0)
ExtTest.Ev0
(ExtTest.isEven @x1)))
:qid data_elim_ExtTest.Ev0))

:named data_elim_ExtTest.Ev0))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term))
 (! (= 788
(Term_constr_id (ExtTest.isOdd @x0)))
 

:pattern ((ExtTest.isOdd @x0))
:qid constructor_distinct_ExtTest.isOdd))

:named constructor_distinct_ExtTest.isOdd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term))
 (! (= 782
(Term_constr_id (ExtTest.isEven @x0)))
 

:pattern ((ExtTest.isEven @x0))
:qid constructor_distinct_ExtTest.isEven))

:named constructor_distinct_ExtTest.isEven))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= 804
(Term_constr_id (ExtTest.OddSEven @x0
@x1)))
 

:pattern ((ExtTest.OddSEven @x0
@x1))
:qid constructor_distinct_ExtTest.OddSEven))

:named constructor_distinct_ExtTest.OddSEven))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= 798
(Term_constr_id (ExtTest.EvSOdd @x0
@x1)))
 

:pattern ((ExtTest.EvSOdd @x0
@x1))
:qid constructor_distinct_ExtTest.EvSOdd))

:named constructor_distinct_ExtTest.EvSOdd))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! (= 795
(Term_constr_id ExtTest.Ev0))
:named constructor_distinct_ExtTest.Ev0))
;;;;;;;;;;;;;;;;Assumption: ExtTest.isOdd__uu___haseq
;;; Fact-ids: Name ExtTest.isOdd__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(Valid (Prims.hasEq (ExtTest.isOdd @x0))))
 

:pattern ((Prims.hasEq (ExtTest.isOdd @x0)))
:qid assumption_ExtTest.isOdd__uu___haseq))
:named assumption_ExtTest.isOdd__uu___haseq))
;;;;;;;;;;;;;;;;Assumption: ExtTest.isEven__uu___haseq
;;; Fact-ids: Name ExtTest.isEven__uu___haseq; Namespace ExtTest
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
ExtTest.nnat)
(Valid (Prims.hasEq (ExtTest.isEven @x0))))
 

:pattern ((Prims.hasEq (ExtTest.isEven @x0)))
:qid assumption_ExtTest.isEven__uu___haseq))
:named assumption_ExtTest.isEven__uu___haseq))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(191,4-191,9); use=ExtTest.fst(191,4-191,9)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.isOdd @x2))
(= (ExtTest.isOdd @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.isOdd @x2)))
:qid ExtTest_pretyping_7344c615ea8924c7cae1856973a471b0))

:named ExtTest_pretyping_7344c615ea8924c7cae1856973a471b0))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name ExtTest.isEven; Namespace ExtTest; Name ExtTest.Ev0; Namespace ExtTest; Name ExtTest.EvSOdd; Namespace ExtTest; Name ExtTest.isOdd; Namespace ExtTest; Name ExtTest.OddSEven; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(188,5-188,11); use=ExtTest.fst(188,5-188,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(ExtTest.isEven @x2))
(= (ExtTest.isEven @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(ExtTest.isEven @x2)))
:qid ExtTest_pretyping_1e0665ae18557269b96c1063f0248586))

:named ExtTest_pretyping_1e0665ae18557269b96c1063f0248586))
(push) ;; push{2

; Starting query at ExtTest.fst(190,13-190,14)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: ExtTest.nnat) (projectee: _: ExtTest.isEven _ {EvSOdd? _}).
;   (*  - Could not prove post-condition
; *) ~(EvSOdd? projectee) ==> Prims.l_False


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EvSOdd__item__n`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x1
(Tm_refine_ac13ae3ade7282008f704815464dd241 @x0))

;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,13-190,14)
(not 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,13-190,14)
(BoxBool_proj_0 (ExtTest.uu___is_EvSOdd @x0
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
; QUERY ID: (ExtTest.__proj__EvSOdd__item__n, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_ac13ae3ade7282008f704815464dd241

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EvSOdd__item__n


; <Skipped let __proj__EvSOdd__item__n/>


; encoding sigelt val ExtTest.__proj__EvSOdd__item___1


; <Start encoding val ExtTest.__proj__EvSOdd__item___1>


(declare-fun ExtTest.__proj__EvSOdd__item___1 (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: _: isEven _ {EvSOdd? _} -> isOdd projectee.n
(declare-fun Tm_arrow_699e8dd7a230846c11d0dd4f0ad48e5a () Term)
(declare-fun ExtTest.__proj__EvSOdd__item___1@tok () Term)

; </end encoding val ExtTest.__proj__EvSOdd__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)


; Encoding query formula : forall (_: ExtTest.nnat) (projectee: _: ExtTest.isEven _ {EvSOdd? _}).
;   (*  - Could not prove post-condition
; *)
;   (~(EvSOdd? projectee) ==> Prims.l_False) /\
;   (forall (b: ExtTest.nnat) (b: ExtTest.isOdd b).
;       projectee == ExtTest.EvSOdd b b ==> ExtTest.S b == _ /\ EvSOdd? (ExtTest.EvSOdd b b))


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__EvSOdd__item___1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x1
(Tm_refine_ac13ae3ade7282008f704815464dd241 @x0)))

;; def=Prims.fst(459,77-459,89); use=Prims.fst(459,77-459,89)
(and (implies 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(not 
;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(BoxBool_proj_0 (ExtTest.uu___is_EvSOdd @x0
@x1))
)

label_1)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
ExtTest.nnat)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(ExtTest.isOdd @x2))

;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(= @x1
(ExtTest.EvSOdd @x2
@x3))
)

;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(and 
;; def=dummy(0,0-0,0); use=ExtTest.fst(190,4-190,10)
(or label_2

;; def=dummy(0,0-0,0); use=ExtTest.fst(190,4-190,10)
(= (ExtTest.S @x2)
@x0)
)


;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(or label_3

;; def=ExtTest.fst(190,4-190,10); use=ExtTest.fst(190,4-190,10)
(BoxBool_proj_0 (ExtTest.uu___is_EvSOdd @x0
(ExtTest.EvSOdd @x2
@x3)))
)
)
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
; QUERY ID: (ExtTest.__proj__EvSOdd__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_ExtTest.EvSOdd, refinement_interpretation_Tm_refine_ac13ae3ade7282008f704815464dd241

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__EvSOdd__item___1


; <Skipped let __proj__EvSOdd__item___1/>


; encoding sigelt val ExtTest.uu___is_OddSEven


; <Start encoding val ExtTest.uu___is_OddSEven>

(declare-fun ExtTest.uu___is_OddSEven (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: isOdd _ -> Prims.bool
(declare-fun Tm_arrow_3e19302a62451dc7767ca4f043067a49 () Term)
(declare-fun ExtTest.uu___is_OddSEven@tok () Term)

; </end encoding val ExtTest.uu___is_OddSEven>


; encoding sigelt let uu___is_OddSEven


; <Skipped let uu___is_OddSEven/>


; encoding sigelt val ExtTest.__proj__OddSEven__item__n


; <Start encoding val ExtTest.__proj__OddSEven__item__n>

(declare-fun ExtTest.__proj__OddSEven__item__n (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: isOdd _ -> nnat
(declare-fun Tm_arrow_753a46771a168fbbc87cd8b0c3aba797 () Term)
(declare-fun ExtTest.__proj__OddSEven__item__n@tok () Term)

; </end encoding val ExtTest.__proj__OddSEven__item__n>


; encoding sigelt let __proj__OddSEven__item__n


; <Skipped let __proj__OddSEven__item__n/>


; encoding sigelt val ExtTest.__proj__OddSEven__item___1


; <Start encoding val ExtTest.__proj__OddSEven__item___1>

(declare-fun ExtTest.__proj__OddSEven__item___1 (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: isOdd _ -> isEven projectee.n
(declare-fun Tm_arrow_468756728e908d271da2bae8f1343ec9 () Term)
(declare-fun ExtTest.__proj__OddSEven__item___1@tok () Term)

; </end encoding val ExtTest.__proj__OddSEven__item___1>

(push) ;; push{2

; Starting query at dummy(0,0-0,0)

(declare-fun label_1 () Bool)

; Encoding query formula : forall (_: ExtTest.nnat) (projectee: ExtTest.isOdd _).
;   (*  - Could not prove post-condition
; *)
;   forall (b: ExtTest.nnat) (b: ExtTest.isEven b).
;     projectee == ExtTest.OddSEven b b ==> ExtTest.S b == _


; Context: While encoding a query
; While typechecking the top-level declaration `let __proj__OddSEven__item___1`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
ExtTest.nnat)
(HasType @x1
(ExtTest.isOdd @x0)))

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x2 Term))
 (! (implies (HasType @x2
ExtTest.nnat)

;; def=Prims.fst(413,99-413,120); use=Prims.fst(431,19-431,33)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
(ExtTest.isEven @x2))

;; def=ExtTest.fst(192,4-192,12); use=ExtTest.fst(192,4-192,12)
(= @x1
(ExtTest.OddSEven @x2
@x3))
)

;; def=dummy(0,0-0,0); use=ExtTest.fst(192,4-192,12)
(or label_1

;; def=dummy(0,0-0,0); use=ExtTest.fst(192,4-192,12)
(= (ExtTest.S @x2)
@x0)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (ExtTest.__proj__OddSEven__item___1, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, data_elim_ExtTest.OddSEven

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let __proj__OddSEven__item___1


; <Skipped let __proj__OddSEven__item___1/>


; encoding sigelt val ExtTest.ev2


; <Skipped val ExtTest.ev2/>


; encoding sigelt let ev2


; <Start encoding let ev2>

(declare-fun ExtTest.ev2 (Dummy_sort) Term)

; </end encoding let ev2>


; encoding sigelt let someLemmaStatement


; <Start encoding let someLemmaStatement>

(declare-fun ExtTest.someLemmaStatement () Term)
;;;;;;;;;;;;;;;;_: nnat -> _: nnat -> Prims.unit
(declare-fun Tm_arrow_284c479d7d142453c8a53fc0421e36a3 () Term)

; </end encoding let someLemmaStatement>


; encoding sigelt let trivialLemmaSatement


; <Start encoding let trivialLemmaSatement>

(declare-fun ExtTest.trivialLemmaSatement () Term)
(declare-fun Tm_refine_87a6d0a2ebd7c06ac454ad2547251158 (Term Term) Term)
;;;;;;;;;;;;;;;;n: nnat -> m: nnat -> FStar.Pervasives.Lemma (ensures add n m == add m n)
(declare-fun Tm_arrow_e2f3299dda416e4232ddfcd5b76cebe9 () Term)

; </end encoding let trivialLemmaSatement>


; encoding sigelt val ExtTest.add0Comm


; <Skipped val ExtTest.add0Comm/>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name ExtTest.add; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
ExtTest.nnat)
(HasType @x1
ExtTest.nnat))
(HasType (ExtTest.add @x0
@x1)
ExtTest.nnat))
 

:pattern ((ExtTest.add @x0
@x1))
:qid typing_ExtTest.add))

:named typing_ExtTest.add))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name ExtTest.add; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)
(HasType @x2
ExtTest.nnat))
(HasType (ExtTest.add.fuel_instrumented @u0
@x1
@x2)
ExtTest.nnat))
 

:pattern ((ExtTest.add.fuel_instrumented @u0
@x1
@x2))
:qid token_correspondence_ExtTest.add.fuel_instrumented))

:named token_correspondence_ExtTest.add.fuel_instrumented))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: ExtTest.add
;;; Fact-ids: Name ExtTest.add; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)
(HasType @x2
ExtTest.nnat))
(= (ExtTest.add.fuel_instrumented (SFuel @u0)
@x1
@x2)
(let ((@lb3 @x1))
(ite (is-ExtTest.O @lb3)
@x2
(ite (is-ExtTest.S @lb3)
(ExtTest.S (ExtTest.add.fuel_instrumented @u0
(ExtTest.S__0 @lb3)
@x2))
Tm_unit)))))
 :weight 0


:pattern ((ExtTest.add.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid equation_with_fuel_ExtTest.add.fuel_instrumented))

:named equation_with_fuel_ExtTest.add.fuel_instrumented))
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name ExtTest.add; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (= (ExtTest.add.fuel_instrumented (SFuel @u0)
@x1
@x2)
(ExtTest.add.fuel_instrumented ZFuel
@x1
@x2))
 

:pattern ((ExtTest.add.fuel_instrumented (SFuel @u0)
@x1
@x2))
:qid @fuel_irrelevance_ExtTest.add.fuel_instrumented))

:named @fuel_irrelevance_ExtTest.add.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name ExtTest.add; Namespace ExtTest
(assert (! 
;; def=ExtTest.fst(62,8-62,11); use=ExtTest.fst(62,8-62,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ExtTest.add @x0
@x1)
(ExtTest.add.fuel_instrumented MaxFuel
@x0
@x1))
 

:pattern ((ExtTest.add @x0
@x1))
:qid @fuel_correspondence_ExtTest.add.fuel_instrumented))

:named @fuel_correspondence_ExtTest.add.fuel_instrumented))
(push) ;; push{2

; Starting query at ExtTest.fst(217,0-219,21)

;;;;;;;;;;;;;;;;n : ExtTest.nnat (ExtTest.nnat)
(declare-fun x_e37378695de4217242c510e652a88706_0 () Term)
;;;;;;;;;;;;;;;;binder_x_e37378695de4217242c510e652a88706_0
;;; Fact-ids: 
(assert (! (HasType x_e37378695de4217242c510e652a88706_0
ExtTest.nnat)
:named binder_x_e37378695de4217242c510e652a88706_0))
;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun ExtTest.add0Comm (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun ExtTest.add0Comm@tok () Term)
(declare-fun label_4 () Bool)
(declare-fun label_3 () Bool)
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (p: Prims.pure_post Prims.unit).
;   (forall (pure_result: Prims.unit).
;       ExtTest.add n ExtTest.O == ExtTest.add ExtTest.O n ==> p pure_result) ==>
;   (forall (k: Prims.pure_post Prims.unit).
;       (forall (x: Prims.unit). {:pattern Prims.guard_free (k x)} p x ==> k x) ==>
;       (~(O? n) /\ ~(S? n) ==> Prims.l_False) /\
;       (n == ExtTest.O ==> (forall (any_result: Prims.unit). k any_result)) /\
;       (~(O? n) ==>
;         (forall (b: ExtTest.nnat).
;             n == ExtTest.S b ==>
;             b << n /\
;             (forall (any_result: ExtTest.nnat).
;                 b == any_result ==>
;                 (forall (pure_result: Prims.unit).
;                     ExtTest.add b ExtTest.O == ExtTest.add ExtTest.O b ==> k pure_result)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec add0Comm`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
;; def=ExtTest.fst(217,0-219,21); use=ExtTest.fst(217,0-219,21)
(forall ((@x0 Term))
 (! (implies (and (HasType @x0
(Prims.pure_post Prims.unit))

;; def=Prims.fst(441,36-441,97); use=ExtTest.fst(217,0-219,21)
(forall ((@x1 Term))
 (! (implies (and (or label_1
(HasType @x1
Prims.unit))

;; def=ExtTest.fst(215,32-215,52); use=ExtTest.fst(217,0-219,21)
(or label_2

;; def=ExtTest.fst(215,32-215,52); use=ExtTest.fst(217,0-219,21)
(= (ExtTest.add x_e37378695de4217242c510e652a88706_0
ExtTest.O@tok)
(ExtTest.add ExtTest.O@tok
x_e37378695de4217242c510e652a88706_0))
)
)

;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(217,0-219,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(217,0-219,21)
(ApplyTT @x0
@x1)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(217,0-219,21)
(Valid 
;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(217,0-219,21)
(ApplyTT @x0
@x1)
)
)
:qid @query.1))
)

;; def=Prims.fst(402,2-402,97); use=ExtTest.fst(217,0-219,21)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
(Prims.pure_post Prims.unit))

;; def=Prims.fst(402,2-402,97); use=ExtTest.fst(217,0-219,21)
(forall ((@x2 Term))
 (! (implies 
;; def=Prims.fst(402,73-402,79); use=ExtTest.fst(217,0-219,21)
(Valid 
;; def=Prims.fst(402,73-402,79); use=ExtTest.fst(217,0-219,21)
(ApplyTT @x0
@x2)
)


;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(217,0-219,21)
(Valid 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(217,0-219,21)
(ApplyTT @x1
@x2)
)
)
 :weight 0


:pattern ((ApplyTT @x1
@x2))
:qid @query.3))
)

;; def=Prims.fst(459,77-459,89); use=ExtTest.fst(217,0-219,21)
(and (implies 
;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(and 
;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(not 
;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(not 
;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(BoxBool_proj_0 (ExtTest.uu___is_S x_e37378695de4217242c510e652a88706_0))
)
)

label_3)
(implies 
;; def=ExtTest.fst(216,17-218,3); use=ExtTest.fst(217,6-218,3)
(= x_e37378695de4217242c510e652a88706_0
ExtTest.O@tok)


;; def=Prims.fst(451,66-451,102); use=ExtTest.fst(217,0-219,21)
(forall ((@x2 Term))
 (! (implies (HasType @x2
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=ExtTest.fst(217,0-219,21)
(Valid 
;; def=Prims.fst(451,90-451,102); use=ExtTest.fst(217,0-219,21)
(ApplyTT @x1
@x2)
)
)
 
;;no pats
:qid @query.4))
)
(implies 
;; def=Prims.fst(389,19-389,21); use=ExtTest.fst(217,0-219,21)
(not 
;; def=ExtTest.fst(216,17-216,18); use=ExtTest.fst(217,6-217,7)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=Prims.fst(413,99-413,120); use=ExtTest.fst(217,0-219,21)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
ExtTest.nnat)

;; def=ExtTest.fst(216,17-219,6); use=ExtTest.fst(217,6-219,6)
(= x_e37378695de4217242c510e652a88706_0
(ExtTest.S @x2))
)

;; def=Prims.fst(459,77-459,89); use=ExtTest.fst(217,0-219,21)
(and 
;; def=ExtTest.fst(217,0-219,21); use=ExtTest.fst(219,19-219,21)
(or label_4

;; def=ExtTest.fst(217,0-219,21); use=ExtTest.fst(219,19-219,21)
(Valid 
;; def=ExtTest.fst(217,0-219,21); use=ExtTest.fst(219,19-219,21)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x2
x_e37378695de4217242c510e652a88706_0)
)
)


;; def=Prims.fst(451,66-451,102); use=ExtTest.fst(217,0-219,21)
(forall ((@x3 Term))
 (! (implies (and (HasType @x3
ExtTest.nnat)

;; def=ExtTest.fst(215,16-219,6); use=ExtTest.fst(217,0-219,21)
(= @x2
@x3)
)

;; def=Prims.fst(441,36-441,97); use=ExtTest.fst(219,10-219,18)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
Prims.unit)

;; def=ExtTest.fst(215,32-215,52); use=ExtTest.fst(219,10-219,18)
(= (ExtTest.add @x2
ExtTest.O@tok)
(ExtTest.add ExtTest.O@tok
@x2))
)

;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(219,10-219,18)
(Valid 
;; def=Prims.fst(441,83-441,96); use=ExtTest.fst(219,10-219,18)
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
; QUERY ID: (ExtTest.add0Comm, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxFuel_assumption, @MaxIFuel_assumption, @fuel_correspondence_ExtTest.add.fuel_instrumented, @fuel_irrelevance_ExtTest.add.fuel_instrumented, @query, ExtTest_pretyping_e37378695de4217242c510e652a88706, binder_x_e37378695de4217242c510e652a88706_0, constructor_distinct_ExtTest.O, constructor_distinct_ExtTest.S, disc_equation_ExtTest.O, disc_equation_ExtTest.S, equality_tok_ExtTest.O@tok, equation_with_fuel_ExtTest.add.fuel_instrumented, fuel_guarded_inversion_ExtTest.nnat, projection_inverse_BoxBool_proj_0, projection_inverse_ExtTest.S__0, subterm_ordering_ExtTest.S, typing_tok_ExtTest.O@tok

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let rec add0Comm


; <Start encoding let rec add0Comm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun ExtTest.add0Comm (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun ExtTest.add0Comm@tok () Term)

; </end encoding let rec add0Comm>


; encoding sigelt val ExtTest.add0CommUse


; <Skipped val ExtTest.add0CommUse/>


; encoding sigelt let add0CommUse


; <Start encoding let add0CommUse>

(declare-fun ExtTest.add0CommUse (Term) Term)
;;;;;;;;;;;;;;;;n: nnat -> Prims.unit
(declare-fun Tm_arrow_488adec10db32f009e6b56eeb51a455b () Term)
(declare-fun ExtTest.add0CommUse@tok () Term)

; </end encoding let add0CommUse>


; encoding sigelt val ExtTest.add0CommUse2


; <Skipped val ExtTest.add0CommUse2/>


; encoding sigelt let add0CommUse2


; <Start encoding let add0CommUse2>

(declare-fun ExtTest.add0CommUse2 (Term) Term)

(declare-fun ExtTest.add0CommUse2@tok () Term)

; </end encoding let add0CommUse2>


; encoding sigelt val ExtTest.unitAsNat


; <Skipped val ExtTest.unitAsNat/>


; encoding sigelt let unitAsNat


; <Start encoding let unitAsNat>

(declare-fun ExtTest.unitAsNat (Term) Term)
;;;;;;;;;;;;;;;;u20: Prims.unit -> nnat
(declare-fun Tm_arrow_04c80b3eb6105d57b8554ab71bce9063 () Term)
(declare-fun ExtTest.unitAsNat@tok () Term)

; </end encoding let unitAsNat>


; encoding sigelt val ExtTest.add0CommUse3


; <Skipped val ExtTest.add0CommUse3/>


; encoding sigelt let add0CommUse3


; <Start encoding let add0CommUse3>

(declare-fun ExtTest.add0CommUse3 (Term) Term)

(declare-fun ExtTest.add0CommUse3@tok () Term)

; </end encoding let add0CommUse3>


; encoding sigelt val ExtTest.add0CommAlias


; <Skipped val ExtTest.add0CommAlias/>


; encoding sigelt let add0CommAlias


; <Start encoding let add0CommAlias>

(declare-fun ExtTest.add0CommAlias (Term) Term)

(declare-fun ExtTest.add0CommAlias@tok () Term)

; </end encoding let add0CommAlias>


; encoding sigelt val ExtTest.mult2


; <Skipped val ExtTest.mult2/>

(push) ;; push{2

; Starting query at ExtTest.fst(245,0-247,28)

;;;;;;;;;;;;;;;;a : ExtTest.nnat (ExtTest.nnat)
(declare-fun x_e37378695de4217242c510e652a88706_0 () Term)
;;;;;;;;;;;;;;;;binder_x_e37378695de4217242c510e652a88706_0
;;; Fact-ids: 
(assert (! (HasType x_e37378695de4217242c510e652a88706_0
ExtTest.nnat)
:named binder_x_e37378695de4217242c510e652a88706_0))
;;;;;;;;;;;;;;;;b : ExtTest.nnat (ExtTest.nnat)
(declare-fun x_e37378695de4217242c510e652a88706_1 () Term)
;;;;;;;;;;;;;;;;binder_x_e37378695de4217242c510e652a88706_1
;;; Fact-ids: 
(assert (! (HasType x_e37378695de4217242c510e652a88706_1
ExtTest.nnat)
:named binder_x_e37378695de4217242c510e652a88706_1))
(declare-fun Tm_refine_25c00178a9bab1dea77e685aa2cd42de (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_25c00178a9bab1dea77e685aa2cd42de))

:named refinement_kinding_Tm_refine_25c00178a9bab1dea77e685aa2cd42de))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x2))
(and (HasTypeFuel @u0
@x1
ExtTest.nnat)

;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)

;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(or 
;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(245,0-247,28)
(Valid 
;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(245,0-247,28)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x2
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(and 
;; def=ExtTest.fst(243,12-244,15); use=ExtTest.fst(243,12-244,15)
(Valid 
;; def=ExtTest.fst(243,12-244,15); use=ExtTest.fst(243,12-244,15)
(Prims.op_Equals_Equals_Equals ExtTest.nnat
ExtTest.nnat
@x2
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(245,0-247,28)
(Valid 
;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(245,0-247,28)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_1)
)
)
)

))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x2)))
:qid refinement_interpretation_Tm_refine_25c00178a9bab1dea77e685aa2cd42de))

:named refinement_interpretation_Tm_refine_25c00178a9bab1dea77e685aa2cd42de))
;;;;;;;;;;;;;;;;haseq for Tm_refine_25c00178a9bab1dea77e685aa2cd42de
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x0)))
(Valid (Prims.hasEq ExtTest.nnat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x0))))
:qid haseqTm_refine_25c00178a9bab1dea77e685aa2cd42de))

:named haseqTm_refine_25c00178a9bab1dea77e685aa2cd42de))
(declare-fun ExtTest.mult2 (Term Term) Term)

;;;;;;;;;;;;;;;;a: nnat -> b: nnat{a << a \/ a === a /\ b << b} -> nnat
(declare-fun Tm_arrow_7322cef5019036a1f793370ffa816615 () Term)
;;;;;;;;;;;;;;;;kinding_Tm_arrow_7322cef5019036a1f793370ffa816615
;;; Fact-ids: 
(assert (! (HasType Tm_arrow_7322cef5019036a1f793370ffa816615
Tm_type)
:named kinding_Tm_arrow_7322cef5019036a1f793370ffa816615))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_7322cef5019036a1f793370ffa816615)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_7322cef5019036a1f793370ffa816615))
:qid ExtTest_pre_typing_Tm_arrow_7322cef5019036a1f793370ffa816615))

:named ExtTest_pre_typing_Tm_arrow_7322cef5019036a1f793370ffa816615))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_7322cef5019036a1f793370ffa816615
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_7322cef5019036a1f793370ffa816615)
(and 
;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)
(HasType @x2
(Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x1)))
(HasType (ApplyTT (ApplyTT @x0
@x1)
@x2)
ExtTest.nnat))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid ExtTest_interpretation_Tm_arrow_7322cef5019036a1f793370ffa816615.1))

(IsTotFun @x0)

;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(243,12-247,28)
(forall ((@x1 Term))
 (! (implies (HasType @x1
ExtTest.nnat)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid ExtTest_interpretation_Tm_arrow_7322cef5019036a1f793370ffa816615.2))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_7322cef5019036a1f793370ffa816615))
:qid ExtTest_interpretation_Tm_arrow_7322cef5019036a1f793370ffa816615))

:named ExtTest_interpretation_Tm_arrow_7322cef5019036a1f793370ffa816615))
(declare-fun ExtTest.mult2@tok () Term)
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(244,8-244,13); use=ExtTest.fst(244,8-244,13)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.mult2@tok
@x0)
@x1)
(ExtTest.mult2 @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT ExtTest.mult2@tok
@x0)
@x1))
:qid token_correspondence_ExtTest.mult2))

:named token_correspondence_ExtTest.mult2))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(244,8-244,13); use=ExtTest.fst(244,8-244,13)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType ExtTest.mult2@tok
Tm_arrow_7322cef5019036a1f793370ffa816615))

;; def=ExtTest.fst(244,8-244,13); use=ExtTest.fst(244,8-244,13)
(forall ((@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT ExtTest.mult2@tok
@x1)
@x2)
(ExtTest.mult2 @x1
@x2))
 

:pattern ((ExtTest.mult2 @x1
@x2))
:qid function_token_typing_ExtTest.mult2.1))
)
 

:pattern ((ApplyTT @x0
ExtTest.mult2@tok))
:qid function_token_typing_ExtTest.mult2))

:named function_token_typing_ExtTest.mult2))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: 
(assert (! 
;; def=ExtTest.fst(244,8-244,13); use=ExtTest.fst(244,8-244,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
ExtTest.nnat)
(HasType @x1
(Tm_refine_25c00178a9bab1dea77e685aa2cd42de @x0)))
(HasType (ExtTest.mult2 @x0
@x1)
ExtTest.nnat))
 

:pattern ((ExtTest.mult2 @x0
@x1))
:qid typing_ExtTest.mult2))

:named typing_ExtTest.mult2))
(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

; Encoding query formula : forall (k: Prims.pure_post ExtTest.nnat).
;   (forall (x: ExtTest.nnat). {:pattern Prims.guard_free (k x)} Prims.auto_squash (k x)) ==>
;   (~(O? a) /\ ~(S? a) ==> Prims.l_False) /\
;   (~(O? a) ==> (forall (b: ExtTest.nnat). a == ExtTest.S b ==> b << a \/ b === a /\ b << b))


; Context: While encoding a query
; While typechecking the top-level declaration `let rec mult2`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(Prims.pure_post ExtTest.nnat))

;; def=Prims.fst(402,27-402,88); use=ExtTest.fst(245,0-247,28)
(forall ((@x1 Term))
 (! 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(245,0-247,28)
(Valid 
;; def=Prims.fst(402,84-402,87); use=ExtTest.fst(245,0-247,28)
(ApplyTT @x0
@x1)
)

 

:pattern ((ApplyTT @x0
@x1))
:qid @query.1))
)

;; def=Prims.fst(459,77-459,89); use=ExtTest.fst(245,0-247,28)
(and (implies 
;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(and 
;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(not 
;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(not 
;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(BoxBool_proj_0 (ExtTest.uu___is_S x_e37378695de4217242c510e652a88706_0))
)
)

label_1)
(implies 
;; def=Prims.fst(389,19-389,21); use=ExtTest.fst(245,0-247,28)
(not 
;; def=ExtTest.fst(244,14-244,15); use=ExtTest.fst(245,6-245,7)
(BoxBool_proj_0 (ExtTest.uu___is_O x_e37378695de4217242c510e652a88706_0))
)


;; def=Prims.fst(413,99-413,120); use=ExtTest.fst(245,0-247,28)
(forall ((@x1 Term))
 (! (implies (and (HasType @x1
ExtTest.nnat)

;; def=ExtTest.fst(244,14-247,6); use=ExtTest.fst(245,6-247,6)
(= x_e37378695de4217242c510e652a88706_0
(ExtTest.S @x1))
)

;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(247,26-247,27)
(or label_2

;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(247,26-247,27)
(Valid 
;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(247,26-247,27)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(243,12-247,28); use=ExtTest.fst(247,26-247,27)
(and 
;; def=ExtTest.fst(243,12-244,15); use=ExtTest.fst(247,26-247,27)
(Valid 
;; def=ExtTest.fst(243,12-244,15); use=ExtTest.fst(247,26-247,27)
(Prims.op_Equals_Equals_Equals ExtTest.nnat
ExtTest.nnat
@x1
x_e37378695de4217242c510e652a88706_0)
)


;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(247,26-247,27)
(Valid 
;; def=ExtTest.fst(245,0-247,28); use=ExtTest.fst(247,26-247,27)
(Prims.precedes ExtTest.nnat
ExtTest.nnat
x_e37378695de4217242c510e652a88706_1
x_e37378695de4217242c510e652a88706_1)
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
; QUERY ID: (ExtTest.mult2, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, ExtTest_pretyping_e37378695de4217242c510e652a88706, binder_x_e37378695de4217242c510e652a88706_0, disc_equation_ExtTest.O, disc_equation_ExtTest.S, equality_tok_ExtTest.O@tok, fuel_guarded_inversion_ExtTest.nnat, projection_inverse_BoxBool_proj_0, projection_inverse_ExtTest.S__0, subterm_ordering_ExtTest.S, typing_tok_ExtTest.O@tok
