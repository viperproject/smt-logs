
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


; Externals for interface FStar.Map


; <Start encoding val FStar.Map.t>

(declare-fun FStar.Map.t (Term Term) Term)
(declare-fun Tm_arrow_2b8b9bde9fdc9f797e5827d0c154aeeb () Term)
(declare-fun FStar.Map.t@tok () Term)

; </end encoding val FStar.Map.t>


; <Start encoding val FStar.Map.sel>

(declare-fun FStar.Map.sel (Term Term Term Term) Term)
(declare-fun Tm_arrow_28a168f8d4c6d78564a214862be72b08 () Term)
(declare-fun FStar.Map.sel@tok () Term)

; </end encoding val FStar.Map.sel>


; <Start encoding val FStar.Map.upd>

(declare-fun FStar.Map.upd (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_b19283e90b47034162373413c6a19933 () Term)
(declare-fun FStar.Map.upd@tok () Term)

; </end encoding val FStar.Map.upd>


; <Start encoding val FStar.Map.const>

(declare-fun FStar.Map.const (Term Term Term) Term)
(declare-fun Tm_arrow_867ad7c8cdd01bd87f415b1f9e0b39ac () Term)
(declare-fun FStar.Map.const@tok () Term)

; </end encoding val FStar.Map.const>


; <Start encoding val FStar.Map.domain>

(declare-fun FStar.Map.domain (Term Term Term) Term)
(declare-fun Tm_arrow_6e8371e4f424600b54c69f2eb03b48d8 () Term)
(declare-fun FStar.Map.domain@tok () Term)

; </end encoding val FStar.Map.domain>


; <Start encoding val FStar.Map.contains>

(declare-fun FStar.Map.contains (Term Term Term Term) Term)
(declare-fun Tm_arrow_32b461b2324f01c7a6bc6b577725566d () Term)
(declare-fun FStar.Map.contains@tok () Term)

; </end encoding val FStar.Map.contains>


; <Start encoding val FStar.Map.concat>

(declare-fun FStar.Map.concat (Term Term Term Term) Term)
(declare-fun Tm_arrow_b137090ab92fa6ffe958df8f30b9f54e () Term)
(declare-fun FStar.Map.concat@tok () Term)

; </end encoding val FStar.Map.concat>


; <Start encoding val FStar.Map.map_val>


(declare-fun FStar.Map.map_val (Term Term Term Term Term) Term)

(declare-fun Tm_arrow_9123217b92d7c89a4449fe44590b9f47 () Term)
(declare-fun FStar.Map.map_val@tok () Term)

; </end encoding val FStar.Map.map_val>


; <Start encoding val FStar.Map.restrict>

(declare-fun FStar.Map.restrict (Term Term Term Term) Term)
(declare-fun Tm_arrow_e8f96ed4bf330326d457be2f8416d734 () Term)
(declare-fun FStar.Map.restrict@tok () Term)

; </end encoding val FStar.Map.restrict>


; <Start encoding let const_on>

(declare-fun FStar.Map.const_on (Term Term Term Term) Term)
(declare-fun Tm_arrow_f99b4e662f3e4a97cdb11f6ede73601e () Term)
(declare-fun FStar.Map.const_on@tok () Term)

; </end encoding let const_on>


; <Start encoding val FStar.Map.map_literal>


(declare-fun FStar.Map.map_literal (Term Term Term) Term)

(declare-fun Tm_arrow_fb1dd96195814b8107d05d25a2bbb566 () Term)
(declare-fun FStar.Map.map_literal@tok () Term)

; </end encoding val FStar.Map.map_literal>


; <Start encoding let disjoint_dom>

(declare-fun FStar.Map.disjoint_dom (Term Term Term Term) Term)
(declare-fun Tm_arrow_556fc2b76256aeb4c51415a912920e4f () Term)
(declare-fun FStar.Map.disjoint_dom@tok () Term)

; </end encoding let disjoint_dom>


; <Start encoding let has_dom>

(declare-fun FStar.Map.has_dom (Term Term Term Term) Term)
(declare-fun Tm_arrow_978eafbacd55316f8accb3c830570c46 () Term)
(declare-fun FStar.Map.has_dom@tok () Term)

; </end encoding let has_dom>


; <Start encoding val FStar.Map.lemma_SelUpd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelUpd1 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelUpd1@tok () Term)

; </end encoding val FStar.Map.lemma_SelUpd1>


; <Start encoding val FStar.Map.lemma_SelUpd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelUpd2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelUpd2@tok () Term)

; </end encoding val FStar.Map.lemma_SelUpd2>


; <Start encoding val FStar.Map.lemma_SelConst>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConst (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConst@tok () Term)

; </end encoding val FStar.Map.lemma_SelConst>


; <Start encoding val FStar.Map.lemma_SelRestrict>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelRestrict (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelRestrict@tok () Term)

; </end encoding val FStar.Map.lemma_SelRestrict>


; <Start encoding val FStar.Map.lemma_SelConcat1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConcat1 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConcat1@tok () Term)

; </end encoding val FStar.Map.lemma_SelConcat1>


; <Start encoding val FStar.Map.lemma_SelConcat2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelConcat2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelConcat2@tok () Term)

; </end encoding val FStar.Map.lemma_SelConcat2>


; <Start encoding val FStar.Map.lemma_SelMapVal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_SelMapVal (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_SelMapVal@tok () Term)


; </end encoding val FStar.Map.lemma_SelMapVal>


; <Start encoding val FStar.Map.lemma_InDomUpd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomUpd1 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomUpd1@tok () Term)

; </end encoding val FStar.Map.lemma_InDomUpd1>


; <Start encoding val FStar.Map.lemma_InDomUpd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomUpd2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomUpd2@tok () Term)

; </end encoding val FStar.Map.lemma_InDomUpd2>


; <Start encoding val FStar.Map.lemma_InDomConstMap>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomConstMap (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomConstMap@tok () Term)

; </end encoding val FStar.Map.lemma_InDomConstMap>


; <Start encoding val FStar.Map.lemma_InDomConcat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomConcat (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomConcat@tok () Term)

; </end encoding val FStar.Map.lemma_InDomConcat>


; <Start encoding val FStar.Map.lemma_InMapVal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InMapVal (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InMapVal@tok () Term)


; </end encoding val FStar.Map.lemma_InMapVal>


; <Start encoding val FStar.Map.lemma_InDomRestrict>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_InDomRestrict (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_InDomRestrict@tok () Term)

; </end encoding val FStar.Map.lemma_InDomRestrict>


; <Start encoding val FStar.Map.lemma_ContainsDom>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_ContainsDom (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_ContainsDom@tok () Term)

; </end encoding val FStar.Map.lemma_ContainsDom>


; <Start encoding val FStar.Map.lemma_UpdDomain>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_UpdDomain (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_UpdDomain@tok () Term)

; </end encoding val FStar.Map.lemma_UpdDomain>


; <Start encoding val FStar.Map.lemma_map_literal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_map_literal (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_map_literal@tok () Term)


; </end encoding val FStar.Map.lemma_map_literal>


; <Start encoding val FStar.Map.equal>

(declare-fun FStar.Map.equal (Term Term Term Term) Term)
(declare-fun Tm_arrow_8d5e09121919a406639e2201d1f5d3dd () Term)
(declare-fun FStar.Map.equal@tok () Term)

; </end encoding val FStar.Map.equal>


; <Start encoding val FStar.Map.lemma_equal_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_intro (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_intro@tok () Term)

; </end encoding val FStar.Map.lemma_equal_intro>


; <Start encoding val FStar.Map.lemma_equal_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_elim (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_elim@tok () Term)

; </end encoding val FStar.Map.lemma_equal_elim>


; <Start encoding val FStar.Map.lemma_equal_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Map.lemma_equal_refl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Map.lemma_equal_refl@tok () Term)

; </end encoding val FStar.Map.lemma_equal_refl>


; End Externals for interface FStar.Map


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

(declare-fun Tm_refine_9f8cb5a84b67f50c9d5f87a914037545 (Term Term) Term)




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


; Externals for interface FStar.Monotonic.HyperHeap


; <Start encoding val FStar.Monotonic.HyperHeap.rid>

(declare-fun FStar.Monotonic.HyperHeap.rid (Dummy_sort) Term)

; </end encoding val FStar.Monotonic.HyperHeap.rid>


; <Start encoding val FStar.Monotonic.HyperHeap.reveal>

(declare-fun FStar.Monotonic.HyperHeap.reveal (Term) Term)
(declare-fun Tm_ghost_arrow_4673cc3ebcc5d201b12f33a0db25b7d9 () Term)
(declare-fun FStar.Monotonic.HyperHeap.reveal@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.reveal>


; <Start encoding let rid_last_component>

(declare-fun FStar.Monotonic.HyperHeap.rid_last_component (Term) Term)
(declare-fun Tm_ghost_arrow_db06a4e46dfe5d9c1d2168d929927fce () Term)
(declare-fun FStar.Monotonic.HyperHeap.rid_last_component@tok () Term)

; </end encoding let rid_last_component>


; <Start encoding val FStar.Monotonic.HyperHeap.color>

(declare-fun FStar.Monotonic.HyperHeap.color (Term) Term)

(declare-fun FStar.Monotonic.HyperHeap.color@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.color>


; <Start encoding val FStar.Monotonic.HyperHeap.rid_freeable>

(declare-fun FStar.Monotonic.HyperHeap.rid_freeable (Term) Term)
(declare-fun Tm_ghost_arrow_cb09c5a76ccfcd8944f649d96b8525c0 () Term)
(declare-fun FStar.Monotonic.HyperHeap.rid_freeable@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.rid_freeable>


; <Start encoding let hmap>

(declare-fun FStar.Monotonic.HyperHeap.hmap () Term)

; </end encoding let hmap>


; <Start encoding val FStar.Monotonic.HyperHeap.root>

(declare-fun FStar.Monotonic.HyperHeap.root (Dummy_sort) Term)
(declare-fun Tm_refine_365abba901205a01d0ef28ebf2198c47 () Term)


; </end encoding val FStar.Monotonic.HyperHeap.root>


; <Start encoding val FStar.Monotonic.HyperHeap.root_last_component>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_last_component (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_last_component@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.root_last_component>


; <Start encoding let root_has_color_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_has_color_zero (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_has_color_zero@tok () Term)

; </end encoding let root_has_color_zero>


; <Start encoding val FStar.Monotonic.HyperHeap.root_is_not_freeable>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_is_not_freeable (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_is_not_freeable@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.root_is_not_freeable>


; <Start encoding val FStar.Monotonic.HyperHeap.rid_length>

(declare-fun FStar.Monotonic.HyperHeap.rid_length (Term) Term)
(declare-fun Tm_ghost_arrow_3280ec491839a78d1ca91ef641a03728 () Term)
(declare-fun FStar.Monotonic.HyperHeap.rid_length@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.rid_length>


; <Start encoding val FStar.Monotonic.HyperHeap.rid_tail>

(declare-fun Tm_refine_085b55aa6b726cf07dbab52057ffb51c () Term)
(declare-fun FStar.Monotonic.HyperHeap.rid_tail (Term) Term)

(declare-fun Tm_arrow_78520bace6740fd696ae7592e1f50b8a () Term)
(declare-fun FStar.Monotonic.HyperHeap.rid_tail@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.rid_tail>


; <Start encoding val FStar.Monotonic.HyperHeap.includes>

(declare-fun FStar.Monotonic.HyperHeap.includes (Term Term) Term)
(declare-fun Tm_ghost_arrow_0974bd70c0e6dc8c5552c9a9b244a827 () Term)
(declare-fun FStar.Monotonic.HyperHeap.includes@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.includes>


; <Start encoding let disjoint>

(declare-fun FStar.Monotonic.HyperHeap.disjoint (Term Term) Term)

(declare-fun FStar.Monotonic.HyperHeap.disjoint@tok () Term)

; </end encoding let disjoint>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_disjoint_includes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_disjoint_includes (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_disjoint_includes@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_disjoint_includes>


; <Start encoding val FStar.Monotonic.HyperHeap.extends>

(declare-fun FStar.Monotonic.HyperHeap.extends (Term Term) Term)

(declare-fun FStar.Monotonic.HyperHeap.extends@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.extends>


; <Start encoding val FStar.Monotonic.HyperHeap.parent>

(declare-fun Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a () Term)
(declare-fun FStar.Monotonic.HyperHeap.parent (Term) Term)

(declare-fun Tm_arrow_4c28f85cf3e2175be134547031d19bee () Term)
(declare-fun FStar.Monotonic.HyperHeap.parent@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.parent>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_includes_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_refl (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_refl@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_includes_refl>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_extends_includes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_includes (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_includes@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_extends_includes>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_extends_disjoint>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_disjoint (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_disjoint@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_extends_disjoint>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_extends_parent>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_parent (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_parent@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.lemma_extends_parent>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_extends_not_root>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_not_root (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_not_root@tok () Term)
(declare-fun Tm_refine_cbd24d5334c6bfffa6fd8a84fb787f7a (Term) Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_extends_not_root>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_extends_only_parent>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_only_parent (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_extends_only_parent@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.lemma_extends_only_parent>


; <Start encoding val FStar.Monotonic.HyperHeap.mod_set>

(declare-fun FStar.Monotonic.HyperHeap.mod_set (Term) Term)
(declare-fun Tm_arrow_1ce44d9d7b660b1a3d7844e49869d710 () Term)
(declare-fun FStar.Monotonic.HyperHeap.mod_set@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.mod_set>


; <Start encoding assume FStar.Monotonic.HyperHeap.Mod_set_def>


; </end encoding assume FStar.Monotonic.HyperHeap.Mod_set_def>


; <Start encoding let modifies>

(declare-fun FStar.Monotonic.HyperHeap.modifies (Term Term Term) Term)
(declare-fun Tm_arrow_20bc1d7024c63b2383675e1d2233de49 () Term)
(declare-fun FStar.Monotonic.HyperHeap.modifies@tok () Term)

; </end encoding let modifies>


; <Start encoding let modifies_just>

(declare-fun FStar.Monotonic.HyperHeap.modifies_just (Term Term Term) Term)

(declare-fun FStar.Monotonic.HyperHeap.modifies_just@tok () Term)

; </end encoding let modifies_just>


; <Start encoding let modifies_one>

(declare-fun FStar.Monotonic.HyperHeap.modifies_one (Term Term Term) Term)
(declare-fun Tm_arrow_c9e8de76549becacc029ffdd2af0ff97 () Term)
(declare-fun FStar.Monotonic.HyperHeap.modifies_one@tok () Term)

; </end encoding let modifies_one>


; <Start encoding let equal_on>

(declare-fun FStar.Monotonic.HyperHeap.equal_on (Term Term Term) Term)

(declare-fun FStar.Monotonic.HyperHeap.equal_on@tok () Term)

; </end encoding let equal_on>


; <Start encoding let lemma_modifies_just_trans>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_just_trans (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_just_trans@tok () Term)

; </end encoding let lemma_modifies_just_trans>


; <Start encoding let lemma_modifies_trans>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_trans (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_trans@tok () Term)

; </end encoding let lemma_modifies_trans>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_includes_trans>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_trans (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_includes_trans@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_includes_trans>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_modset>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modset (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modset@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_modset>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_modifies_includes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_includes (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_includes@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_modifies_includes>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_modifies_includes2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_includes2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_modifies_includes2@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_modifies_includes2>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_disjoint_parents>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_disjoint_parents (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_disjoint_parents@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_disjoint_parents>


; <Start encoding val FStar.Monotonic.HyperHeap.lemma_include_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_include_cons (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.lemma_include_cons@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.lemma_include_cons>


; <Start encoding let disjoint_regions>

(declare-fun FStar.Monotonic.HyperHeap.disjoint_regions (Term Term) Term)
(declare-fun Tm_arrow_00688474232f98821d9c04b9dffe8c61 () Term)
(declare-fun FStar.Monotonic.HyperHeap.disjoint_regions@tok () Term)

; </end encoding let disjoint_regions>


; <Start encoding val FStar.Monotonic.HyperHeap.extends_parent>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.extends_parent (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.extends_parent@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.extends_parent>


; <Start encoding val FStar.Monotonic.HyperHeap.includes_child>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.includes_child (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.includes_child@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.includes_child>


; <Start encoding val FStar.Monotonic.HyperHeap.root_is_root>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_is_root (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperHeap.root_is_root@tok () Term)

; </end encoding val FStar.Monotonic.HyperHeap.root_is_root>


; <Start encoding let extend_post>

(declare-fun FStar.Monotonic.HyperHeap.extend_post (Term Term Term Term) Term)
(declare-fun Tm_arrow_3c2f82ed0ed8ea7e1d6a83dc75ecda59 () Term)
(declare-fun FStar.Monotonic.HyperHeap.extend_post@tok () Term)
(declare-fun Tm_arrow_48888a65ae59c26b88d40b27e2460933 () Term)
(declare-fun Tm_abs_269a5936c29d9b6613e0ba9061d6b37b (Term Term Term Term) Term)

; </end encoding let extend_post>


; <Start encoding val FStar.Monotonic.HyperHeap.extend>

(declare-fun FStar.Monotonic.HyperHeap.extend (Term Term Term) Term)
(declare-fun Tm_refine_a699e8f550698e7794f1eae9aa746fed (Term Term Term) Term)
(declare-fun Tm_arrow_5c350fc581e8c646c3484bcf6b3091da () Term)
(declare-fun FStar.Monotonic.HyperHeap.extend@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.extend>


; <Start encoding val FStar.Monotonic.HyperHeap.extend_monochrome_freeable>

(declare-fun FStar.Monotonic.HyperHeap.extend_monochrome_freeable (Term Term Term) Term)
(declare-fun Tm_refine_85be5bcd183ae84c32835fc8fb01e69e (Term Term Term) Term)
(declare-fun Tm_arrow_ec150d711f5fcd84355d77209a0f4d6b () Term)
(declare-fun FStar.Monotonic.HyperHeap.extend_monochrome_freeable@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.extend_monochrome_freeable>


; <Start encoding val FStar.Monotonic.HyperHeap.extend_monochrome>

(declare-fun FStar.Monotonic.HyperHeap.extend_monochrome (Term Term) Term)
(declare-fun Tm_refine_895293590f5cae5325f393b7019bf751 (Term Term) Term)
(declare-fun Tm_arrow_07bc2034787bd7b8346c79efc7152f5e () Term)
(declare-fun FStar.Monotonic.HyperHeap.extend_monochrome@tok () Term)


; </end encoding val FStar.Monotonic.HyperHeap.extend_monochrome>


; End Externals for interface FStar.Monotonic.HyperHeap


; Externals for interface FStar.Monotonic.HyperStack


; <Start encoding let is_in>

(declare-fun FStar.Monotonic.HyperStack.is_in (Term Term) Term)
(declare-fun Tm_arrow_98472382c4039c4fb6e189014e134e46 () Term)
(declare-fun FStar.Monotonic.HyperStack.is_in@tok () Term)

; </end encoding let is_in>


; <Start encoding let is_stack_region>

(declare-fun FStar.Monotonic.HyperStack.is_stack_region (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_stack_region@tok () Term)

; </end encoding let is_stack_region>


; <Start encoding let is_heap_color>

(declare-fun FStar.Monotonic.HyperStack.is_heap_color (Term) Term)
(declare-fun Tm_arrow_2b00b574e3c859da902fc1b8ce85c0f1 () Term)
(declare-fun FStar.Monotonic.HyperStack.is_heap_color@tok () Term)

; </end encoding let is_heap_color>


; <Start encoding let is_eternal_region>

(declare-fun FStar.Monotonic.HyperStack.is_eternal_region (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_eternal_region@tok () Term)

; </end encoding let is_eternal_region>


; <Start encoding let is_eternal_region_hs>

(declare-fun FStar.Monotonic.HyperStack.is_eternal_region_hs (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_eternal_region_hs@tok () Term)

; </end encoding let is_eternal_region_hs>


; <Start encoding let sid>

(declare-fun FStar.Monotonic.HyperStack.sid () Term)
(declare-fun Tm_refine_c1ce603279aac7a7c378033ea416a653 () Term)

; </end encoding let sid>


; <Start encoding let is_above>

(declare-fun FStar.Monotonic.HyperStack.is_above (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_above@tok () Term)

; </end encoding let is_above>


; <Start encoding let is_just_below>

(declare-fun FStar.Monotonic.HyperStack.is_just_below (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_just_below@tok () Term)

; </end encoding let is_just_below>


; <Start encoding let is_below>

(declare-fun FStar.Monotonic.HyperStack.is_below (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_below@tok () Term)

; </end encoding let is_below>


; <Start encoding let is_strictly_below>

(declare-fun FStar.Monotonic.HyperStack.is_strictly_below (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_strictly_below@tok () Term)

; </end encoding let is_strictly_below>


; <Start encoding let is_strictly_above>

(declare-fun FStar.Monotonic.HyperStack.is_strictly_above (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.is_strictly_above@tok () Term)

; </end encoding let is_strictly_above>


; <Start encoding let map_invariant_predicate>

(declare-fun FStar.Monotonic.HyperStack.map_invariant_predicate (Term) Term)
(declare-fun Tm_arrow_997df7a914ebeafc2ba149725a334c28 () Term)
(declare-fun FStar.Monotonic.HyperStack.map_invariant_predicate@tok () Term)

; </end encoding let map_invariant_predicate>


; <Start encoding let downward_closed_predicate>

(declare-fun FStar.Monotonic.HyperStack.downward_closed_predicate (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.downward_closed_predicate@tok () Term)

; </end encoding let downward_closed_predicate>


; <Start encoding let tip_top_predicate>

(declare-fun FStar.Monotonic.HyperStack.tip_top_predicate (Term Term) Term)
(declare-fun Tm_arrow_7df774c88c8cef87d5338082c4add0dc () Term)
(declare-fun FStar.Monotonic.HyperStack.tip_top_predicate@tok () Term)

; </end encoding let tip_top_predicate>


; <Start encoding let rid_ctr_pred_predicate>

(declare-fun FStar.Monotonic.HyperStack.rid_ctr_pred_predicate (Term Term) Term)
(declare-fun Tm_arrow_7285a9d9213dc0d0f9fb806920c1c44d () Term)
(declare-fun FStar.Monotonic.HyperStack.rid_ctr_pred_predicate@tok () Term)

; </end encoding let rid_ctr_pred_predicate>


; <Start encoding val FStar.Monotonic.HyperStack.map_invariant>

(declare-fun FStar.Monotonic.HyperStack.map_invariant (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.map_invariant@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.map_invariant>


; <Start encoding val FStar.Monotonic.HyperStack.downward_closed>

(declare-fun FStar.Monotonic.HyperStack.downward_closed (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.downward_closed@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.downward_closed>


; <Start encoding val FStar.Monotonic.HyperStack.tip_top>

(declare-fun FStar.Monotonic.HyperStack.tip_top (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.tip_top@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.tip_top>


; <Start encoding val FStar.Monotonic.HyperStack.rid_ctr_pred>

(declare-fun FStar.Monotonic.HyperStack.rid_ctr_pred (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.rid_ctr_pred@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.rid_ctr_pred>


; <Start encoding let is_tip>

(declare-fun FStar.Monotonic.HyperStack.is_tip (Term Term) Term)
(declare-fun Tm_arrow_827d51b58b1f545009480b9357ddb55c () Term)
(declare-fun FStar.Monotonic.HyperStack.is_tip@tok () Term)

; </end encoding let is_tip>


; <Start encoding let is_wf_with_ctr_and_tip>

(declare-fun FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip (Term Term Term) Term)
(declare-fun Tm_arrow_b82a248445c0b0e4174cee49920de04b () Term)
(declare-fun FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip@tok () Term)

; </end encoding let is_wf_with_ctr_and_tip>


; <Start encoding val FStar.Monotonic.HyperStack.mem'>

(declare-fun FStar.Monotonic.HyperStack.mem_ () Term)

; </end encoding val FStar.Monotonic.HyperStack.mem'>


; <Start encoding val FStar.Monotonic.HyperStack.mk_mem>

(declare-fun FStar.Monotonic.HyperStack.mk_mem (Term Term Term) Term)
(declare-fun Tm_arrow_1bee5bc877c09107d0db9346176d4356 () Term)
(declare-fun FStar.Monotonic.HyperStack.mk_mem@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.mk_mem>


; <Start encoding val FStar.Monotonic.HyperStack.get_hmap>

(declare-fun FStar.Monotonic.HyperStack.get_hmap (Term) Term)
(declare-fun Tm_arrow_5b2077c44231589180b4ae3aea09ba98 () Term)
(declare-fun FStar.Monotonic.HyperStack.get_hmap@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.get_hmap>


; <Start encoding val FStar.Monotonic.HyperStack.get_rid_ctr>

(declare-fun FStar.Monotonic.HyperStack.get_rid_ctr (Term) Term)
(declare-fun Tm_arrow_de204c147a8a221f2b09accedd4ec026 () Term)
(declare-fun FStar.Monotonic.HyperStack.get_rid_ctr@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.get_rid_ctr>


; <Start encoding val FStar.Monotonic.HyperStack.get_tip>

(declare-fun FStar.Monotonic.HyperStack.get_tip (Term) Term)
(declare-fun Tm_arrow_27d5d52a8bf4afa759c5b5b1800059d7 () Term)
(declare-fun FStar.Monotonic.HyperStack.get_tip@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.get_tip>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_mk_mem'_projectors>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_mk_mem__projectors (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_mk_mem__projectors@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_mk_mem'_projectors>


; <Start encoding let mem>

(declare-fun FStar.Monotonic.HyperStack.mem () Term)
(declare-fun Tm_refine_05e15190c946858f68c69156f585f95a () Term)

; </end encoding let mem>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_mem_projectors_are_in_wf_relation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_mem_projectors_are_in_wf_relation (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_mem_projectors_are_in_wf_relation@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_mem_projectors_are_in_wf_relation>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_intro@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_intro>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_elim (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_elim@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_is_wf_ctr_and_tip_elim>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_map_invariant>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_map_invariant (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_map_invariant@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_map_invariant>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_downward_closed>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_downward_closed (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_downward_closed@tok () Term)


; </end encoding val FStar.Monotonic.HyperStack.lemma_downward_closed>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_tip_top>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_tip_top (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_tip_top@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_tip_top>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_tip_top_smt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_tip_top_smt (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_tip_top_smt@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_tip_top_smt>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_rid_ctr_pred>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_rid_ctr_pred (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_rid_ctr_pred@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_rid_ctr_pred>


; <Start encoding let empty_mem>

(declare-fun FStar.Monotonic.HyperStack.empty_mem (Dummy_sort) Term)

; </end encoding let empty_mem>


; <Start encoding let heap_region_does_not_overlap_with_tip>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.heap_region_does_not_overlap_with_tip (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.heap_region_does_not_overlap_with_tip@tok () Term)

; </end encoding let heap_region_does_not_overlap_with_tip>


; <Start encoding let poppable>

(declare-fun FStar.Monotonic.HyperStack.poppable (Term) Term)
(declare-fun Tm_arrow_546cd6d8513ee5ac624826e72053296e () Term)
(declare-fun FStar.Monotonic.HyperStack.poppable@tok () Term)

; </end encoding let poppable>


; <Start encoding let remove_elt>

(declare-fun FStar.Monotonic.HyperStack.remove_elt (Term Term Term) Term)
(declare-fun Tm_arrow_c7267a504a18289d327360e384c4260d () Term)
(declare-fun FStar.Monotonic.HyperStack.remove_elt@tok () Term)

; </end encoding let remove_elt>


; <Start encoding let popped>

(declare-fun FStar.Monotonic.HyperStack.popped (Term Term) Term)
(declare-fun Tm_arrow_9b982241dc761f1777c4e1f2e5ee9f6f () Term)
(declare-fun FStar.Monotonic.HyperStack.popped@tok () Term)

; </end encoding let popped>


; <Start encoding let pop>

(declare-fun Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c () Term)
(declare-fun FStar.Monotonic.HyperStack.pop (Term) Term)

(declare-fun Tm_arrow_f07cd46dd1f36155af4f12fa7aab3efe () Term)
(declare-fun FStar.Monotonic.HyperStack.pop@tok () Term)


; </end encoding let pop>


; <Start encoding type FStar.Monotonic.HyperStack.mreference'>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Monotonic.HyperStack.mreference_ (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Monotonic.HyperStack.mreference_@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Monotonic.HyperStack.MkRef (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.MkRef_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.MkRef_rel (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.MkRef_frame (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.MkRef_ref (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Monotonic.HyperStack.MkRef
(declare-fun FStar.Monotonic.HyperStack.MkRef@tok () Term)
(declare-fun Tm_arrow_48f85f15527c9a2301806ab1cde0f498 () Term)

; <start constructor FStar.Monotonic.HyperStack.mreference_>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Monotonic.HyperStack.mreference_ ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
163)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
 
;;no pats
:qid is-FStar.Monotonic.HyperStack.mreference_))))

; </end constructor FStar.Monotonic.HyperStack.mreference_>


; <start constructor FStar.Monotonic.HyperStack.MkRef>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Monotonic.HyperStack.MkRef ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
170)
(= __@x0
(FStar.Monotonic.HyperStack.MkRef (FStar.Monotonic.HyperStack.MkRef_a __@x0)
(FStar.Monotonic.HyperStack.MkRef_rel __@x0)
(FStar.Monotonic.HyperStack.MkRef_frame __@x0)
(FStar.Monotonic.HyperStack.MkRef_ref __@x0)))))

; </end constructor FStar.Monotonic.HyperStack.MkRef>


; </end encoding type FStar.Monotonic.HyperStack.mreference'>


; <Start encoding val FStar.Monotonic.HyperStack.uu___is_MkRef>

(declare-fun FStar.Monotonic.HyperStack.uu___is_MkRef (Term Term Term) Term)
(declare-fun Tm_arrow_bf852805425ee7a1dd5e7d5557fca875 () Term)
(declare-fun FStar.Monotonic.HyperStack.uu___is_MkRef@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.uu___is_MkRef>


; <Skipped let uu___is_MkRef/>


; <Start encoding val FStar.Monotonic.HyperStack.__proj__MkRef__item__frame>

(declare-fun FStar.Monotonic.HyperStack.__proj__MkRef__item__frame (Term Term Term) Term)
(declare-fun Tm_arrow_414898075afacec684feebc9e5ad18f0 () Term)
(declare-fun FStar.Monotonic.HyperStack.__proj__MkRef__item__frame@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.__proj__MkRef__item__frame>


; <Skipped let __proj__MkRef__item__frame/>


; <Start encoding val FStar.Monotonic.HyperStack.__proj__MkRef__item__ref>

(declare-fun FStar.Monotonic.HyperStack.__proj__MkRef__item__ref (Term Term Term) Term)
(declare-fun Tm_arrow_4782baeaa5dd029fe41ef743f5cecc90 () Term)
(declare-fun FStar.Monotonic.HyperStack.__proj__MkRef__item__ref@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.__proj__MkRef__item__ref>


; <Skipped let __proj__MkRef__item__ref/>


; <Start encoding let mreference>

(declare-fun FStar.Monotonic.HyperStack.mreference (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.mreference@tok () Term)

; </end encoding let mreference>


; <Start encoding let frameOf>

(declare-fun FStar.Monotonic.HyperStack.frameOf (Term Term Term) Term)
(declare-fun Tm_arrow_4d3c3931a5ae4ceb417aa66c3de41479 () Term)
(declare-fun FStar.Monotonic.HyperStack.frameOf@tok () Term)

; </end encoding let frameOf>


; <Start encoding let mk_mreference>

(declare-fun FStar.Monotonic.HyperStack.mk_mreference (Term Term Term Term) Term)
(declare-fun Tm_arrow_193191bb86dc919dc9d7148212c0a3e8 () Term)
(declare-fun FStar.Monotonic.HyperStack.mk_mreference@tok () Term)

; </end encoding let mk_mreference>


; <Start encoding val FStar.Monotonic.HyperStack.as_ref>

(declare-fun FStar.Monotonic.HyperStack.as_ref (Term Term Term) Term)
(declare-fun Tm_arrow_f2aea05e253bbf925cf94ff24c2876cd () Term)
(declare-fun FStar.Monotonic.HyperStack.as_ref@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.as_ref>


; <Start encoding let as_addr>

(declare-fun FStar.Monotonic.HyperStack.as_addr (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_5b1cb5d82f88103d247469c73aa33921 () Term)
(declare-fun FStar.Monotonic.HyperStack.as_addr@tok () Term)

; </end encoding let as_addr>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_as_ref_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_as_ref_inj (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_as_ref_inj@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_as_ref_inj>


; <Start encoding let is_mm>

(declare-fun FStar.Monotonic.HyperStack.is_mm (Term Term Term) Term)
(declare-fun Tm_ghost_arrow_104da30ccab2258bce7d07b8b0d0c618 () Term)
(declare-fun FStar.Monotonic.HyperStack.is_mm@tok () Term)

; </end encoding let is_mm>


; <Start encoding let mstackref>

(declare-fun FStar.Monotonic.HyperStack.mstackref (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.mstackref@tok () Term)
(declare-fun Tm_refine_3415ed6c7abc7d0c55726285f3ae5f3f (Term Term) Term)

; </end encoding let mstackref>


; <Start encoding let mref>

(declare-fun FStar.Monotonic.HyperStack.mref (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.mref@tok () Term)
(declare-fun Tm_refine_4deaad73cd92bc948bb28924e869c4ab (Term Term) Term)

; </end encoding let mref>


; <Start encoding let mmmstackref>

(declare-fun FStar.Monotonic.HyperStack.mmmstackref (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.mmmstackref@tok () Term)
(declare-fun Tm_refine_077942947f03017592acbd4457f123a1 (Term Term) Term)

; </end encoding let mmmstackref>


; <Start encoding let mmmref>

(declare-fun FStar.Monotonic.HyperStack.mmmref (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.mmmref@tok () Term)
(declare-fun Tm_refine_433a6ba0587d1ca6a1ced9d7f162c4b1 (Term Term) Term)

; </end encoding let mmmref>


; <Start encoding let s_mref>

(declare-fun FStar.Monotonic.HyperStack.s_mref (Term Term Term) Term)
(declare-fun Tm_arrow_0955d13bb7bafe0ab120f4ece342f3f3 () Term)
(declare-fun FStar.Monotonic.HyperStack.s_mref@tok () Term)
(declare-fun Tm_refine_4c99049ff36722c69a2742a31dbda2b0 (Term Term Term) Term)

; </end encoding let s_mref>


; <Start encoding let live_region>

(declare-fun FStar.Monotonic.HyperStack.live_region (Term Term) Term)
(declare-fun Tm_arrow_6938252efeb34531b3379f5c2f722a73 () Term)
(declare-fun FStar.Monotonic.HyperStack.live_region@tok () Term)

; </end encoding let live_region>


; <Start encoding let contains>

(declare-fun FStar.Monotonic.HyperStack.contains (Term Term Term Term) Term)
(declare-fun Tm_arrow_2ce4a038953d56734647c4bcc81f0778 () Term)
(declare-fun FStar.Monotonic.HyperStack.contains@tok () Term)

; </end encoding let contains>


; <Start encoding let unused_in>

(declare-fun FStar.Monotonic.HyperStack.unused_in (Term Term Term Term) Term)
(declare-fun Tm_arrow_9bdaed72900d49bb4988c0c01c469742 () Term)
(declare-fun FStar.Monotonic.HyperStack.unused_in@tok () Term)

; </end encoding let unused_in>


; <Start encoding let contains_ref_in_its_region>

(declare-fun FStar.Monotonic.HyperStack.contains_ref_in_its_region (Term Term Term Term) Term)
(declare-fun Tm_arrow_7096958e2403010b9fdc37d79fd4e3e2 () Term)
(declare-fun FStar.Monotonic.HyperStack.contains_ref_in_its_region@tok () Term)

; </end encoding let contains_ref_in_its_region>


; <Start encoding let fresh_ref>

(declare-fun FStar.Monotonic.HyperStack.fresh_ref (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_df8b559c9576d8497a24dd7eb23c85dc () Term)
(declare-fun FStar.Monotonic.HyperStack.fresh_ref@tok () Term)

; </end encoding let fresh_ref>


; <Start encoding let fresh_region>

(declare-fun FStar.Monotonic.HyperStack.fresh_region (Term Term Term) Term)
(declare-fun Tm_arrow_1711726a7704833722825b5a56be830f () Term)
(declare-fun FStar.Monotonic.HyperStack.fresh_region@tok () Term)

; </end encoding let fresh_region>


; <Start encoding let sel>

(declare-fun FStar.Monotonic.HyperStack.sel (Term Term Term Term) Term)
(declare-fun Tm_ghost_arrow_da3a3381b5b1ab77954e6bff14854feb () Term)
(declare-fun FStar.Monotonic.HyperStack.sel@tok () Term)

; </end encoding let sel>


; <Start encoding let upd>

(declare-fun Tm_refine_d58d7e3b4b6ce757231e9089061120a0 (Term Term Term) Term)
(declare-fun FStar.Monotonic.HyperStack.upd (Term Term Term Term Term) Term)

(declare-fun Tm_ghost_arrow_c996fa8dd1022ef46a081fe8a2b75eb9 () Term)
(declare-fun FStar.Monotonic.HyperStack.upd@tok () Term)


; </end encoding let upd>


; <Start encoding let alloc>

(declare-fun Tm_refine_ad20a5ca24eede13005e3284b6c2d373 (Term) Term)
(declare-fun FStar.Monotonic.HyperStack.alloc (Term Term Term Term Term Term) Term)

(declare-fun Tm_refine_6d70f3cfce1bc3bbf4818c3b445e0424 (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_9753433918dfe0ffcaec5aef968e8747 () Term)
(declare-fun FStar.Monotonic.HyperStack.alloc@tok () Term)



; </end encoding let alloc>


; <Start encoding let free>

(declare-fun Tm_refine_2d11d4ede243934a578949d9aa1c906a (Term Term) Term)
(declare-fun Tm_refine_548ef817ca26695e20678a9213795842 (Term Term Term) Term)
(declare-fun FStar.Monotonic.HyperStack.free (Term Term Term Term) Term)


(declare-fun Tm_arrow_958328828628bea6229f5e623dac51fc () Term)
(declare-fun FStar.Monotonic.HyperStack.free@tok () Term)



; </end encoding let free>


; <Start encoding let upd_tot>

(declare-fun Tm_refine_778b19525c5cb6c7b65c06252db153f7 (Term Term Term) Term)
(declare-fun FStar.Monotonic.HyperStack.upd_tot (Term Term Term Term Term) Term)

(declare-fun Tm_arrow_206c46c9a18dd03e5ac7c9b5c279ac76 () Term)
(declare-fun FStar.Monotonic.HyperStack.upd_tot@tok () Term)


; </end encoding let upd_tot>


; <Start encoding let sel_tot>


(declare-fun FStar.Monotonic.HyperStack.sel_tot (Term Term Term Term) Term)

(declare-fun Tm_arrow_2bb505300860292e7879c7f06bf5c252 () Term)
(declare-fun FStar.Monotonic.HyperStack.sel_tot@tok () Term)


; </end encoding let sel_tot>


; <Start encoding let fresh_frame>

(declare-fun FStar.Monotonic.HyperStack.fresh_frame (Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.fresh_frame@tok () Term)

; </end encoding let fresh_frame>


; <Start encoding let hs_push_frame>

(declare-fun FStar.Monotonic.HyperStack.hs_push_frame (Term) Term)
(declare-fun Tm_refine_b7d1addc48193ac698e1fc2904742dbd (Term) Term)
(declare-fun Tm_arrow_c3285374add210f4c5225f85b0d6b6af () Term)
(declare-fun FStar.Monotonic.HyperStack.hs_push_frame@tok () Term)


; </end encoding let hs_push_frame>


; <Start encoding let new_eternal_region>

(declare-fun Tm_refine_70adfa3d90da23bbd361e2fc8530de01 (Term) Term)
(declare-fun Tm_refine_e033ceacea9c846f5627c822e84f9414 () Term)
(declare-fun FStar.Monotonic.HyperStack.new_eternal_region (Term Term Term) Term)


(declare-fun Tm_refine_a88d6b2bc46617f49b283f0ff73bd7cf (Term) Term)
(declare-fun Tm_arrow_5ed1a2f68d410b8de569b249f8f9c797 () Term)
(declare-fun FStar.Monotonic.HyperStack.new_eternal_region@tok () Term)




; </end encoding let new_eternal_region>


; <Start encoding let new_freeable_heap_region>


(declare-fun FStar.Monotonic.HyperStack.new_freeable_heap_region (Term Term) Term)

(declare-fun Tm_refine_1edb6214e12e1252d3e7d5e5b21608ca (Term) Term)
(declare-fun Tm_arrow_f5c071f6f5e62653a5f8832c220731b1 () Term)
(declare-fun FStar.Monotonic.HyperStack.new_freeable_heap_region@tok () Term)



; </end encoding let new_freeable_heap_region>


; <Start encoding let free_heap_region>

(declare-fun Tm_refine_4c7fb9b4fa48e3fdc90fc02ede2b941d (Term) Term)
(declare-fun FStar.Monotonic.HyperStack.free_heap_region (Term Term) Term)

(declare-fun Tm_arrow_7759e3626bb9975b5dac006d882496ed () Term)
(declare-fun FStar.Monotonic.HyperStack.free_heap_region@tok () Term)


; </end encoding let free_heap_region>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_sel_same_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_sel_same_addr (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_sel_same_addr@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_sel_same_addr>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_upd_same_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_upd_same_addr (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_upd_same_addr@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_upd_same_addr>


; <Start encoding val FStar.Monotonic.HyperStack.mreference_distinct_sel_disjoint>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.mreference_distinct_sel_disjoint (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.mreference_distinct_sel_disjoint@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.mreference_distinct_sel_disjoint>


; <Start encoding let modifies>

(declare-fun FStar.Monotonic.HyperStack.modifies (Term Term Term) Term)
(declare-fun Tm_arrow_35b560eb432f9cf5e43231bfa666bd38 () Term)
(declare-fun FStar.Monotonic.HyperStack.modifies@tok () Term)

; </end encoding let modifies>


; <Start encoding let modifies_transitively>

(declare-fun FStar.Monotonic.HyperStack.modifies_transitively (Term Term Term) Term)

(declare-fun FStar.Monotonic.HyperStack.modifies_transitively@tok () Term)

; </end encoding let modifies_transitively>


; <Start encoding let heap_only>

(declare-fun FStar.Monotonic.HyperStack.heap_only (Term) Term)

(declare-fun FStar.Monotonic.HyperStack.heap_only@tok () Term)

; </end encoding let heap_only>


; <Start encoding let top_frame>

(declare-fun FStar.Monotonic.HyperStack.top_frame (Term) Term)
(declare-fun Tm_arrow_ba8e2bc5d986e5ef6f22c693f8393d6c () Term)
(declare-fun FStar.Monotonic.HyperStack.top_frame@tok () Term)

; </end encoding let top_frame>


; <Start encoding val FStar.Monotonic.HyperStack.modifies_drop_tip>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.modifies_drop_tip (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.modifies_drop_tip@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.modifies_drop_tip>


; <Start encoding let modifies_one>

(declare-fun FStar.Monotonic.HyperStack.modifies_one (Term Term Term) Term)
(declare-fun Tm_arrow_e64e59d46e201be37bd9843047c52a93 () Term)
(declare-fun FStar.Monotonic.HyperStack.modifies_one@tok () Term)

; </end encoding let modifies_one>


; <Start encoding let modifies_ref>

(declare-fun FStar.Monotonic.HyperStack.modifies_ref (Term Term Term Term) Term)
(declare-fun Tm_arrow_a9c0264064751299d8ce645e9e1ce7c7 () Term)
(declare-fun FStar.Monotonic.HyperStack.modifies_ref@tok () Term)

; </end encoding let modifies_ref>


; <Start encoding type FStar.Monotonic.HyperStack.some_ref>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Monotonic.HyperStack.some_ref () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Monotonic.HyperStack.Ref (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.Ref_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.Ref_rel (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Monotonic.HyperStack.Ref__2 (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Monotonic.HyperStack.Ref
(declare-fun FStar.Monotonic.HyperStack.Ref@tok () Term)
(declare-fun Tm_arrow_dda32a8506aa63db1ac535b1ad92afc8 () Term)

; <start constructor FStar.Monotonic.HyperStack.some_ref>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Monotonic.HyperStack.some_ref ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
291)
(= __@x0
FStar.Monotonic.HyperStack.some_ref)))

; </end constructor FStar.Monotonic.HyperStack.some_ref>


; <start constructor FStar.Monotonic.HyperStack.Ref>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Monotonic.HyperStack.Ref ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
297)
(= __@x0
(FStar.Monotonic.HyperStack.Ref (FStar.Monotonic.HyperStack.Ref_a __@x0)
(FStar.Monotonic.HyperStack.Ref_rel __@x0)
(FStar.Monotonic.HyperStack.Ref__2 __@x0)))))

; </end constructor FStar.Monotonic.HyperStack.Ref>


; </end encoding type FStar.Monotonic.HyperStack.some_ref>


; <Start encoding val FStar.Monotonic.HyperStack.uu___is_Ref>

(declare-fun FStar.Monotonic.HyperStack.uu___is_Ref (Term) Term)
(declare-fun Tm_arrow_4c678f39425ad52a920c838c6688a697 () Term)
(declare-fun FStar.Monotonic.HyperStack.uu___is_Ref@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.uu___is_Ref>


; <Skipped let uu___is_Ref/>


; <Start encoding val FStar.Monotonic.HyperStack.__proj__Ref__item__a>

(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item__a (Term) Term)
(declare-fun Tm_arrow_5270374555e0647452398f9b50180555 () Term)
(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item__a@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.__proj__Ref__item__a>


; <Skipped let __proj__Ref__item__a/>


; <Start encoding val FStar.Monotonic.HyperStack.__proj__Ref__item__rel>

(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item__rel (Term) Term)
(declare-fun Tm_arrow_718f36c619c7630e2fb45c52cce2366c () Term)
(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item__rel@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.__proj__Ref__item__rel>


; <Skipped let __proj__Ref__item__rel/>


; <Start encoding val FStar.Monotonic.HyperStack.__proj__Ref__item___2>

(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item___2 (Term) Term)
(declare-fun Tm_arrow_806c24414e6bd3319b784690cfbd8f7f () Term)
(declare-fun FStar.Monotonic.HyperStack.__proj__Ref__item___2@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.__proj__Ref__item___2>


; <Skipped let __proj__Ref__item___2/>


; <Start encoding let some_refs>

(declare-fun FStar.Monotonic.HyperStack.some_refs () Term)

; </end encoding let some_refs>


; <Start encoding let rec regions_of_some_refs>

(declare-fun FStar.Monotonic.HyperStack.regions_of_some_refs (Term) Term)
(declare-fun Tm_arrow_1a301db6553c90fa6448f04e0d6c188c () Term)
(declare-fun FStar.Monotonic.HyperStack.regions_of_some_refs@tok () Term)

; </end encoding let rec regions_of_some_refs>


; <Start encoding let rec refs_in_region>

(declare-fun FStar.Monotonic.HyperStack.refs_in_region (Term Term) Term)
(declare-fun Tm_ghost_arrow_27428d2e2ba695b61412787724fcb6d3 () Term)
(declare-fun FStar.Monotonic.HyperStack.refs_in_region@tok () Term)

; </end encoding let rec refs_in_region>


; <Start encoding let rec modifies_some_refs>

(declare-fun FStar.Monotonic.HyperStack.modifies_some_refs (Term Term Term Term) Term)
(declare-fun Tm_arrow_81fbd36f40f87c76dcb4bfdd205c8713 () Term)
(declare-fun FStar.Monotonic.HyperStack.modifies_some_refs@tok () Term)

; </end encoding let rec modifies_some_refs>


; <Start encoding let norm_steps>

(declare-fun FStar.Monotonic.HyperStack.norm_steps (Dummy_sort) Term)

; </end encoding let norm_steps>


; <Start encoding let mods>

(declare-fun FStar.Monotonic.HyperStack.mods (Term Term Term) Term)
(declare-fun Tm_arrow_4696b6dec38e96b0ff2cc0f77b9b9d25 () Term)
(declare-fun FStar.Monotonic.HyperStack.mods@tok () Term)

; </end encoding let mods>


; <Start encoding val FStar.Monotonic.HyperStack.eternal_disjoint_from_tip>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.eternal_disjoint_from_tip (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.eternal_disjoint_from_tip@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.eternal_disjoint_from_tip>


; <Start encoding val FStar.Monotonic.HyperStack.above_tip_is_live>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.above_tip_is_live (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.above_tip_is_live@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.above_tip_is_live>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_cancel_same_mref_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_cancel_same_mref_upd (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_cancel_same_mref_upd@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_cancel_same_mref_upd>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_upd_with_sel>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_upd_with_sel (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_upd_with_sel@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_upd_with_sel>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_commute_distinct_upds>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_commute_distinct_upds (Term Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_heap_equality_commute_distinct_upds@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_heap_equality_commute_distinct_upds>


; <Start encoding val FStar.Monotonic.HyperStack.lemma_next_addr_contained_refs_addr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_next_addr_contained_refs_addr (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.lemma_next_addr_contained_refs_addr@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.lemma_next_addr_contained_refs_addr>


; <Start encoding val FStar.Monotonic.HyperStack.aref>

(declare-fun FStar.Monotonic.HyperStack.aref () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref>


; <Start encoding val FStar.Monotonic.HyperStack.dummy_aref>

(declare-fun FStar.Monotonic.HyperStack.dummy_aref (Dummy_sort) Term)

; </end encoding val FStar.Monotonic.HyperStack.dummy_aref>


; <Start encoding val FStar.Monotonic.HyperStack.aref_equal>

(declare-fun FStar.Monotonic.HyperStack.aref_equal (Term Term) Term)

(declare-fun Tm_ghost_arrow_1b7cb1169620f43f85e290e3d858a7a8 () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_equal@tok () Term)


; </end encoding val FStar.Monotonic.HyperStack.aref_equal>


; <Start encoding val FStar.Monotonic.HyperStack.aref_of>

(declare-fun FStar.Monotonic.HyperStack.aref_of (Term Term Term) Term)
(declare-fun Tm_arrow_48d0e5201edd70ed900a8b3081c63c84 () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.frameOf_aref>

(declare-fun FStar.Monotonic.HyperStack.frameOf_aref (Term) Term)
(declare-fun Tm_ghost_arrow_079ff324706806c18345a3a03ce4f48a () Term)
(declare-fun FStar.Monotonic.HyperStack.frameOf_aref@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.frameOf_aref>


; <Start encoding val FStar.Monotonic.HyperStack.frameOf_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.frameOf_aref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.frameOf_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.frameOf_aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.aref_as_addr>

(declare-fun FStar.Monotonic.HyperStack.aref_as_addr (Term) Term)
(declare-fun Tm_ghost_arrow_c2454872dc1e352c00eef3d9c96bf5f9 () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_as_addr@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_as_addr>


; <Start encoding val FStar.Monotonic.HyperStack.aref_as_addr_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_as_addr_aref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_as_addr_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_as_addr_aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.aref_is_mm>

(declare-fun FStar.Monotonic.HyperStack.aref_is_mm (Term) Term)
(declare-fun Tm_ghost_arrow_2982c7f39800aa50cc8a5de0eb014a42 () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_is_mm@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_is_mm>


; <Start encoding val FStar.Monotonic.HyperStack.is_mm_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.is_mm_aref_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.is_mm_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.is_mm_aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.aref_unused_in>

(declare-fun FStar.Monotonic.HyperStack.aref_unused_in (Term Term) Term)
(declare-fun Tm_arrow_ccdb2c897f7a240c3ca4f0401e676755 () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_unused_in@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_unused_in>


; <Start encoding val FStar.Monotonic.HyperStack.unused_in_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.unused_in_aref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.unused_in_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.unused_in_aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.contains_aref_unused_in>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.contains_aref_unused_in (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.contains_aref_unused_in@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.contains_aref_unused_in>


; <Start encoding val FStar.Monotonic.HyperStack.aref_live_at>

(declare-fun FStar.Monotonic.HyperStack.aref_live_at (Term Term Term Term) Term)
(declare-fun Tm_arrow_2d9f5b6f0186d850e2a4bf1e4711933d () Term)
(declare-fun FStar.Monotonic.HyperStack.aref_live_at@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_live_at>


; <Start encoding val FStar.Monotonic.HyperStack.greference_of>

(declare-fun FStar.Monotonic.HyperStack.greference_of (Term Term Term) Term)
(declare-fun Tm_refine_1d7f81705c35971e00b909e37163cd25 (Term Term) Term)
(declare-fun Tm_ghost_arrow_d63b397d1230bc96e740496df9065379 () Term)
(declare-fun FStar.Monotonic.HyperStack.greference_of@tok () Term)


; </end encoding val FStar.Monotonic.HyperStack.greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.reference_of>

(declare-fun FStar.Monotonic.HyperStack.reference_of (Term Term Term Term) Term)
(declare-fun Tm_refine_81a0d54c78434fc678ec7202c4b9fc09 (Term Term Term Term) Term)
(declare-fun Tm_arrow_ef3959e407cf35b6478a97065b8b015b () Term)
(declare-fun FStar.Monotonic.HyperStack.reference_of@tok () Term)


; </end encoding val FStar.Monotonic.HyperStack.reference_of>


; <Start encoding val FStar.Monotonic.HyperStack.aref_live_at_aref_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_live_at_aref_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_live_at_aref_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_live_at_aref_of>


; <Start encoding val FStar.Monotonic.HyperStack.contains_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.contains_greference_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.contains_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.contains_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.aref_of_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_of_greference_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.aref_of_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.aref_of_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.frameOf_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.frameOf_greference_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.frameOf_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.frameOf_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.as_addr_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.as_addr_greference_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.as_addr_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.as_addr_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.is_mm_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.is_mm_greference_of (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.is_mm_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.is_mm_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.unused_in_greference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.unused_in_greference_of (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.unused_in_greference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.unused_in_greference_of>


; <Start encoding val FStar.Monotonic.HyperStack.sel_reference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.sel_reference_of (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.sel_reference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.sel_reference_of>


; <Start encoding val FStar.Monotonic.HyperStack.upd_reference_of>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Monotonic.HyperStack.upd_reference_of (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Monotonic.HyperStack.upd_reference_of@tok () Term)

; </end encoding val FStar.Monotonic.HyperStack.upd_reference_of>


; End Externals for interface FStar.Monotonic.HyperStack


; Externals for module FStar.HyperStack


; <Start encoding let reference>

(declare-fun FStar.HyperStack.reference (Term) Term)

(declare-fun FStar.HyperStack.reference@tok () Term)

; </end encoding let reference>


; <Start encoding let stackref>

(declare-fun FStar.HyperStack.stackref (Term) Term)

(declare-fun FStar.HyperStack.stackref@tok () Term)

; </end encoding let stackref>


; <Start encoding let ref>

(declare-fun FStar.HyperStack.ref (Term) Term)

(declare-fun FStar.HyperStack.ref@tok () Term)

; </end encoding let ref>


; <Start encoding let mmstackref>

(declare-fun FStar.HyperStack.mmstackref (Term) Term)

(declare-fun FStar.HyperStack.mmstackref@tok () Term)

; </end encoding let mmstackref>


; <Start encoding let mmref>

(declare-fun FStar.HyperStack.mmref (Term) Term)

(declare-fun FStar.HyperStack.mmref@tok () Term)

; </end encoding let mmref>


; <Start encoding let s_ref>

(declare-fun FStar.HyperStack.s_ref (Term Term) Term)
(declare-fun Tm_arrow_d7b8ad4343351a3e17e61a17b9118e67 () Term)
(declare-fun FStar.HyperStack.s_ref@tok () Term)

; </end encoding let s_ref>


; <Start encoding let reference_distinct_sel_disjoint>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.reference_distinct_sel_disjoint (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.reference_distinct_sel_disjoint@tok () Term)

; </end encoding let reference_distinct_sel_disjoint>


; End Externals for module FStar.HyperStack


; Externals for interface FStar.HyperStack.ST


; <Start encoding let contains_region>

(declare-fun FStar.HyperStack.ST.contains_region (Term Term) Term)

(declare-fun FStar.HyperStack.ST.contains_region@tok () Term)

; </end encoding let contains_region>


; <Start encoding val FStar.HyperStack.ST.mem_rel>

(declare-fun FStar.HyperStack.ST.mem_rel (Dummy_sort) Term)

; </end encoding val FStar.HyperStack.ST.mem_rel>


; <Start encoding let mem_predicate>

(declare-fun FStar.HyperStack.ST.mem_predicate () Term)
(declare-fun Tm_arrow_870e61e1362ee02b904fb2aa631e959a () Term)

; </end encoding let mem_predicate>


; <Start encoding val FStar.HyperStack.ST.region_contains_pred>

(declare-fun FStar.HyperStack.ST.region_contains_pred (Term) Term)
(declare-fun Tm_arrow_321b3a56183945c533045886533882ee () Term)
(declare-fun FStar.HyperStack.ST.region_contains_pred@tok () Term)

; </end encoding val FStar.HyperStack.ST.region_contains_pred>


; <Start encoding val FStar.HyperStack.ST.ref_contains_pred>

(declare-fun FStar.HyperStack.ST.ref_contains_pred (Term Term Term) Term)
(declare-fun Tm_arrow_f19d850412523c9b0808b11aefb2bb9b () Term)
(declare-fun FStar.HyperStack.ST.ref_contains_pred@tok () Term)

; </end encoding val FStar.HyperStack.ST.ref_contains_pred>


; <Skipped new_effect { GST ... }/>


; <Start encoding let gst_pre>

(declare-fun FStar.HyperStack.ST.gst_pre () Term)

; </end encoding let gst_pre>


; <Start encoding let gst_post'>

(declare-fun FStar.HyperStack.ST.gst_post_ (Term Term) Term)

(declare-fun FStar.HyperStack.ST.gst_post_@tok () Term)

; </end encoding let gst_post'>


; <Start encoding let gst_post>

(declare-fun FStar.HyperStack.ST.gst_post (Term) Term)

(declare-fun FStar.HyperStack.ST.gst_post@tok () Term)

; </end encoding let gst_post>


; <Start encoding let gst_wp>

(declare-fun FStar.HyperStack.ST.gst_wp (Term) Term)

(declare-fun FStar.HyperStack.ST.gst_wp@tok () Term)

; </end encoding let gst_wp>


; <Start encoding let lift_div_gst>

(declare-fun FStar.HyperStack.ST.lift_div_gst (Term Term Term Term) Term)
(declare-fun Tm_arrow_701cc1858e659c48169fa96e4d3335d0 () Term)
(declare-fun FStar.HyperStack.ST.lift_div_gst@tok () Term)



; </end encoding let lift_div_gst>


; <Skipped sub_effect DIV ~> GST/>


; <Start encoding val FStar.HyperStack.ST.stable>

(declare-fun FStar.HyperStack.ST.stable (Term) Term)
(declare-fun Tm_arrow_ef6a03d8b9fa78220b5247ff6c2eebff () Term)
(declare-fun FStar.HyperStack.ST.stable@tok () Term)

; </end encoding val FStar.HyperStack.ST.stable>


; <Start encoding val FStar.HyperStack.ST.witnessed>

(declare-fun FStar.HyperStack.ST.witnessed (Term) Term)

(declare-fun FStar.HyperStack.ST.witnessed@tok () Term)

; </end encoding val FStar.HyperStack.ST.witnessed>


; <Start encoding val FStar.HyperStack.ST.gst_get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.gst_get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.gst_get@tok () Term)

; </end encoding val FStar.HyperStack.ST.gst_get>


; <Start encoding val FStar.HyperStack.ST.gst_put>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.gst_put (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.gst_put@tok () Term)

; </end encoding val FStar.HyperStack.ST.gst_put>


; <Start encoding val FStar.HyperStack.ST.gst_witness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.gst_witness (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.gst_witness@tok () Term)

; </end encoding val FStar.HyperStack.ST.gst_witness>


; <Start encoding val FStar.HyperStack.ST.gst_recall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.gst_recall (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.gst_recall@tok () Term)

; </end encoding val FStar.HyperStack.ST.gst_recall>


; <Start encoding val FStar.HyperStack.ST.lemma_functoriality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_functoriality (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_functoriality@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_functoriality>


; <Start encoding let st_pre>

(declare-fun FStar.HyperStack.ST.st_pre () Term)

; </end encoding let st_pre>


; <Start encoding let st_post'>

(declare-fun FStar.HyperStack.ST.st_post_ (Term Term) Term)

(declare-fun FStar.HyperStack.ST.st_post_@tok () Term)

; </end encoding let st_post'>


; <Start encoding let st_post>

(declare-fun FStar.HyperStack.ST.st_post (Term) Term)

(declare-fun FStar.HyperStack.ST.st_post@tok () Term)

; </end encoding let st_post>


; <Start encoding let st_wp>

(declare-fun FStar.HyperStack.ST.st_wp (Term) Term)

(declare-fun FStar.HyperStack.ST.st_wp@tok () Term)

; </end encoding let st_wp>


; <Skipped new_effect { STATE ... }/>


; <Start encoding let lift_gst_state>

(declare-fun FStar.HyperStack.ST.lift_gst_state (Term Term) Term)
(declare-fun Tm_arrow_273f1333c42f0daf404e533f2c864fb4 () Term)
(declare-fun FStar.HyperStack.ST.lift_gst_state@tok () Term)

; </end encoding let lift_gst_state>


; <Skipped sub_effect GST ~> STATE/>


; <Skipped effect Unsafe a pre post = FStar.HyperStack.ST.STATE a/>


; <Start encoding let equal_heap_dom>

(declare-fun FStar.HyperStack.ST.equal_heap_dom (Term Term Term) Term)
(declare-fun Tm_arrow_6d5672c833f519a7d072251969e31b4a () Term)
(declare-fun FStar.HyperStack.ST.equal_heap_dom@tok () Term)

; </end encoding let equal_heap_dom>


; <Start encoding let contained_region>

(declare-fun FStar.HyperStack.ST.contained_region (Term Term Term) Term)
(declare-fun Tm_arrow_f9931d1436e2abb4a4a9e4018d23e252 () Term)
(declare-fun FStar.HyperStack.ST.contained_region@tok () Term)

; </end encoding let contained_region>


; <Start encoding let contained_stack_region>

(declare-fun FStar.HyperStack.ST.contained_stack_region (Term Term Term) Term)

(declare-fun FStar.HyperStack.ST.contained_stack_region@tok () Term)

; </end encoding let contained_stack_region>


; <Start encoding let contained_non_tip_region>

(declare-fun FStar.HyperStack.ST.contained_non_tip_region (Term Term Term) Term)

(declare-fun FStar.HyperStack.ST.contained_non_tip_region@tok () Term)

; </end encoding let contained_non_tip_region>


; <Start encoding let contained_non_tip_stack_region>

(declare-fun FStar.HyperStack.ST.contained_non_tip_stack_region (Term Term Term) Term)

(declare-fun FStar.HyperStack.ST.contained_non_tip_stack_region@tok () Term)

; </end encoding let contained_non_tip_stack_region>


; <Start encoding let same_refs_common>


(declare-fun FStar.HyperStack.ST.same_refs_common (Term Term Term) Term)

(declare-fun Tm_arrow_5e054144859029cb726d08f541917b32 () Term)
(declare-fun FStar.HyperStack.ST.same_refs_common@tok () Term)

; </end encoding let same_refs_common>


; <Start encoding val FStar.HyperStack.ST.same_refs_in_all_regions>

(declare-fun FStar.HyperStack.ST.same_refs_in_all_regions (Term Term) Term)
(declare-fun Tm_arrow_1cc02cd7154a75e36e508db4b24abd50 () Term)
(declare-fun FStar.HyperStack.ST.same_refs_in_all_regions@tok () Term)

; </end encoding val FStar.HyperStack.ST.same_refs_in_all_regions>


; <Start encoding val FStar.HyperStack.ST.same_refs_in_stack_regions>

(declare-fun FStar.HyperStack.ST.same_refs_in_stack_regions (Term Term) Term)

(declare-fun FStar.HyperStack.ST.same_refs_in_stack_regions@tok () Term)

; </end encoding val FStar.HyperStack.ST.same_refs_in_stack_regions>


; <Start encoding val FStar.HyperStack.ST.same_refs_in_non_tip_regions>

(declare-fun FStar.HyperStack.ST.same_refs_in_non_tip_regions (Term Term) Term)

(declare-fun FStar.HyperStack.ST.same_refs_in_non_tip_regions@tok () Term)

; </end encoding val FStar.HyperStack.ST.same_refs_in_non_tip_regions>


; <Start encoding val FStar.HyperStack.ST.same_refs_in_non_tip_stack_regions>

(declare-fun FStar.HyperStack.ST.same_refs_in_non_tip_stack_regions (Term Term) Term)

(declare-fun FStar.HyperStack.ST.same_refs_in_non_tip_stack_regions@tok () Term)

; </end encoding val FStar.HyperStack.ST.same_refs_in_non_tip_stack_regions>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_intro (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_intro@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_intro>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_elim@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_regions_elim>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_intro (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_intro@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_intro>


; <Start encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_elim@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_same_refs_in_non_tip_stack_regions_elim>


; <Start encoding let equal_domains>

(declare-fun FStar.HyperStack.ST.equal_domains (Term Term) Term)

(declare-fun FStar.HyperStack.ST.equal_domains@tok () Term)

; </end encoding let equal_domains>


; <Start encoding val FStar.HyperStack.ST.lemma_equal_domains_trans>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_equal_domains_trans (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_equal_domains_trans@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_equal_domains_trans>


; <Skipped effect Stack a pre post = FStar.HyperStack.ST.STATE a/>


; <Skipped effect Heap a pre post = FStar.HyperStack.ST.STATE a/>


; <Start encoding let equal_stack_domains>

(declare-fun FStar.HyperStack.ST.equal_stack_domains (Term Term) Term)

(declare-fun FStar.HyperStack.ST.equal_stack_domains@tok () Term)

; </end encoding let equal_stack_domains>


; <Skipped effect ST a pre post = FStar.HyperStack.ST.STATE a/>


; <Skipped effect St a = FStar.HyperStack.ST.ST a/>


; <Start encoding let inline_stack_inv>



(declare-fun FStar.HyperStack.ST.inline_stack_inv (Term Term) Term)


(declare-fun Tm_arrow_e8f67696ee59fc5cb7ae84b16aecb1a2 () Term)
(declare-fun FStar.HyperStack.ST.inline_stack_inv@tok () Term)



; </end encoding let inline_stack_inv>


; <Skipped effect StackInline a pre post = FStar.HyperStack.ST.STATE a/>


; <Start encoding let inline_inv>



(declare-fun FStar.HyperStack.ST.inline_inv (Term Term) Term)



(declare-fun FStar.HyperStack.ST.inline_inv@tok () Term)



; </end encoding let inline_inv>


; <Skipped effect Inline a pre post = FStar.HyperStack.ST.STATE a/>


; <Skipped effect STL a pre post = FStar.HyperStack.ST.Stack a/>


; <Skipped sub_effect DIV ~> STATE/>


; <Start encoding let mreference>

(declare-fun FStar.HyperStack.ST.mreference (Term Term) Term)

(declare-fun FStar.HyperStack.ST.mreference@tok () Term)
(declare-fun Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 (Term Term) Term)

; </end encoding let mreference>


; <Start encoding let mstackref>

(declare-fun FStar.HyperStack.ST.mstackref (Term Term) Term)

(declare-fun FStar.HyperStack.ST.mstackref@tok () Term)
(declare-fun Tm_refine_3107a49075513d87f81f8b8614ef7aa0 (Term Term) Term)

; </end encoding let mstackref>


; <Start encoding let mref>

(declare-fun FStar.HyperStack.ST.mref (Term Term) Term)

(declare-fun FStar.HyperStack.ST.mref@tok () Term)
(declare-fun Tm_refine_1a1278f1aecd37594ba20d888b7fd230 (Term Term) Term)

; </end encoding let mref>


; <Start encoding let mmmstackref>

(declare-fun FStar.HyperStack.ST.mmmstackref (Term Term) Term)

(declare-fun FStar.HyperStack.ST.mmmstackref@tok () Term)
(declare-fun Tm_refine_1fe4ea9449b44f071a0ba69c564508a4 (Term Term) Term)

; </end encoding let mmmstackref>


; <Start encoding let mmmref>

(declare-fun FStar.HyperStack.ST.mmmref (Term Term) Term)

(declare-fun FStar.HyperStack.ST.mmmref@tok () Term)
(declare-fun Tm_refine_38378a752eceb5d6a72bc0c44cfdc7c2 (Term Term) Term)

; </end encoding let mmmref>


; <Start encoding let s_mref>

(declare-fun FStar.HyperStack.ST.s_mref (Term Term Term) Term)

(declare-fun FStar.HyperStack.ST.s_mref@tok () Term)
(declare-fun Tm_refine_dacb5562bc5e314a9813ca622c89b3c4 (Term Term Term) Term)

; </end encoding let s_mref>


; <Start encoding let reference>

(declare-fun FStar.HyperStack.ST.reference (Term) Term)

(declare-fun FStar.HyperStack.ST.reference@tok () Term)

; </end encoding let reference>


; <Start encoding let stackref>

(declare-fun FStar.HyperStack.ST.stackref (Term) Term)

(declare-fun FStar.HyperStack.ST.stackref@tok () Term)

; </end encoding let stackref>


; <Start encoding let ref>

(declare-fun FStar.HyperStack.ST.ref (Term) Term)

(declare-fun FStar.HyperStack.ST.ref@tok () Term)

; </end encoding let ref>


; <Start encoding let mmstackref>

(declare-fun FStar.HyperStack.ST.mmstackref (Term) Term)

(declare-fun FStar.HyperStack.ST.mmstackref@tok () Term)

; </end encoding let mmstackref>


; <Start encoding let mmref>

(declare-fun FStar.HyperStack.ST.mmref (Term) Term)

(declare-fun FStar.HyperStack.ST.mmref@tok () Term)

; </end encoding let mmref>


; <Start encoding let s_ref>

(declare-fun FStar.HyperStack.ST.s_ref (Term Term) Term)

(declare-fun FStar.HyperStack.ST.s_ref@tok () Term)

; </end encoding let s_ref>


; <Start encoding let is_eternal_region>

(declare-fun FStar.HyperStack.ST.is_eternal_region (Term) Term)

(declare-fun FStar.HyperStack.ST.is_eternal_region@tok () Term)

; </end encoding let is_eternal_region>


; <Start encoding val FStar.HyperStack.ST.push_frame>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.push_frame (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.push_frame@tok () Term)

; </end encoding val FStar.HyperStack.ST.push_frame>


; <Start encoding val FStar.HyperStack.ST.pop_frame>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.pop_frame (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.pop_frame@tok () Term)

; </end encoding val FStar.HyperStack.ST.pop_frame>


; <Skipped #push-options "--z3rlimit 40"/>


; <Start encoding let salloc_post>

(declare-fun Tm_refine_2bdd80b2320af9c61ccb8754d0f9f879 (Term Term) Term)
(declare-fun FStar.HyperStack.ST.salloc_post (Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_595aa15661468d8f0f5ddf046029a7d0 () Term)
(declare-fun FStar.HyperStack.ST.salloc_post@tok () Term)


; </end encoding let salloc_post>


; <Skipped #pop-options/>


; <Start encoding val FStar.HyperStack.ST.salloc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.salloc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.salloc@tok () Term)

; </end encoding val FStar.HyperStack.ST.salloc>


; <Start encoding val FStar.HyperStack.ST.salloc_mm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.salloc_mm (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.salloc_mm@tok () Term)

; </end encoding val FStar.HyperStack.ST.salloc_mm>


; <Start encoding val FStar.HyperStack.ST.sfree>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.sfree (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.sfree@tok () Term)

; </end encoding val FStar.HyperStack.ST.sfree>


; <Start encoding let new_region_post_common>

(declare-fun FStar.HyperStack.ST.new_region_post_common (Term Term Term Term) Term)
(declare-fun Tm_arrow_d31d7cded6ad26852e51d81de5480738 () Term)
(declare-fun FStar.HyperStack.ST.new_region_post_common@tok () Term)

; </end encoding let new_region_post_common>


; <Start encoding val FStar.HyperStack.ST.new_region>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.new_region (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.new_region@tok () Term)

; </end encoding val FStar.HyperStack.ST.new_region>


; <Start encoding val FStar.HyperStack.ST.new_colored_region>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.new_colored_region (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.new_colored_region@tok () Term)

; </end encoding val FStar.HyperStack.ST.new_colored_region>


; <Start encoding let ralloc_post>

(declare-fun FStar.HyperStack.ST.ralloc_post (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f09793193db5aed5286c32417f6982ec () Term)
(declare-fun FStar.HyperStack.ST.ralloc_post@tok () Term)

; </end encoding let ralloc_post>


; <Start encoding val FStar.HyperStack.ST.ralloc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.ralloc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.ralloc@tok () Term)

; </end encoding val FStar.HyperStack.ST.ralloc>


; <Start encoding val FStar.HyperStack.ST.ralloc_mm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.ralloc_mm (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.ralloc_mm@tok () Term)

; </end encoding val FStar.HyperStack.ST.ralloc_mm>


; <Start encoding let is_live_for_rw_in>

(declare-fun FStar.HyperStack.ST.is_live_for_rw_in (Term Term Term Term) Term)
(declare-fun Tm_arrow_62dec7a98718083f01f5648f99bb645b () Term)
(declare-fun FStar.HyperStack.ST.is_live_for_rw_in@tok () Term)

; </end encoding let is_live_for_rw_in>


; <Start encoding val FStar.HyperStack.ST.rfree>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.rfree (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.rfree@tok () Term)

; </end encoding val FStar.HyperStack.ST.rfree>


; <Start encoding let assign_post>

(declare-fun FStar.HyperStack.ST.assign_post (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a97f9152aeaae701e69a9ba6f661afa6 () Term)
(declare-fun FStar.HyperStack.ST.assign_post@tok () Term)

; </end encoding let assign_post>


; <Start encoding val FStar.HyperStack.ST.op_Colon_Equals>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.op_Colon_Equals (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.op_Colon_Equals@tok () Term)

; </end encoding val FStar.HyperStack.ST.op_Colon_Equals>


; <Start encoding let deref_post>

(declare-fun FStar.HyperStack.ST.deref_post (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_d97176a542ccf4ce0745db22eea4c8f6 () Term)
(declare-fun FStar.HyperStack.ST.deref_post@tok () Term)

; </end encoding let deref_post>


; <Start encoding val FStar.HyperStack.ST.op_Bang>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.op_Bang (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.op_Bang@tok () Term)

; </end encoding val FStar.HyperStack.ST.op_Bang>


; <Start encoding let modifies_none>

(declare-fun FStar.HyperStack.ST.modifies_none (Term Term) Term)

(declare-fun FStar.HyperStack.ST.modifies_none@tok () Term)

; </end encoding let modifies_none>


; <Start encoding val FStar.HyperStack.ST.get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.get@tok () Term)

; </end encoding val FStar.HyperStack.ST.get>


; <Start encoding val FStar.HyperStack.ST.recall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.recall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.recall@tok () Term)

; </end encoding val FStar.HyperStack.ST.recall>


; <Start encoding val FStar.HyperStack.ST.recall_region>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.recall_region (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.recall_region@tok () Term)

; </end encoding val FStar.HyperStack.ST.recall_region>


; <Start encoding val FStar.HyperStack.ST.witness_region>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.witness_region (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.witness_region@tok () Term)

; </end encoding val FStar.HyperStack.ST.witness_region>


; <Start encoding val FStar.HyperStack.ST.witness_hsref>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.witness_hsref (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.witness_hsref@tok () Term)

; </end encoding val FStar.HyperStack.ST.witness_hsref>


; <Start encoding let erid>

(declare-fun FStar.HyperStack.ST.erid () Term)
(declare-fun Tm_refine_6c5072d4c9562dd38fd2703ecfb013df () Term)

; </end encoding let erid>


; <Start encoding let m_rref>

(declare-fun FStar.HyperStack.ST.m_rref (Term Term Term) Term)
(declare-fun Tm_arrow_f946e1a0cb5443984177a7ea6d40bfde () Term)
(declare-fun FStar.HyperStack.ST.m_rref@tok () Term)
(declare-fun Tm_refine_f596a1e23d65ebe54b463345ece4e00f (Term Term Term) Term)

; </end encoding let m_rref>


; <Start encoding let stable_on>

(declare-fun FStar.HyperStack.ST.stable_on (Term Term Term Term) Term)
(declare-fun Tm_arrow_36c80cd5e76a950725cd81ef88c4c3ca () Term)
(declare-fun FStar.HyperStack.ST.stable_on@tok () Term)

; </end encoding let stable_on>


; <Start encoding let stable_on_t>

(declare-fun FStar.HyperStack.ST.stable_on_t (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_f0eb74832c5ea94cfa4fef315871598d () Term)
(declare-fun FStar.HyperStack.ST.stable_on_t@tok () Term)

; </end encoding let stable_on_t>


; <Start encoding val FStar.HyperStack.ST.mr_witness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.mr_witness (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.mr_witness@tok () Term)

; </end encoding val FStar.HyperStack.ST.mr_witness>


; <Start encoding val FStar.HyperStack.ST.weaken_witness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.weaken_witness (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.weaken_witness@tok () Term)

; </end encoding val FStar.HyperStack.ST.weaken_witness>


; <Start encoding val FStar.HyperStack.ST.testify>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.testify (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.testify@tok () Term)

; </end encoding val FStar.HyperStack.ST.testify>


; <Start encoding val FStar.HyperStack.ST.testify_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.testify_forall (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.testify_forall@tok () Term)

; </end encoding val FStar.HyperStack.ST.testify_forall>


; <Start encoding val FStar.HyperStack.ST.testify_forall_region_contains_pred>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.testify_forall_region_contains_pred (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.testify_forall_region_contains_pred@tok () Term)

; </end encoding val FStar.HyperStack.ST.testify_forall_region_contains_pred>


; <Start encoding val FStar.HyperStack.ST.token_p>

(declare-fun FStar.HyperStack.ST.token_p (Term Term Term Term) Term)
(declare-fun Tm_arrow_f318dfb6ba2e4e6287ddbd0e8eadad87 () Term)
(declare-fun FStar.HyperStack.ST.token_p@tok () Term)

; </end encoding val FStar.HyperStack.ST.token_p>


; <Start encoding val FStar.HyperStack.ST.witness_p>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.witness_p (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.witness_p@tok () Term)

; </end encoding val FStar.HyperStack.ST.witness_p>


; <Start encoding val FStar.HyperStack.ST.recall_p>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.recall_p (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.recall_p@tok () Term)

; </end encoding val FStar.HyperStack.ST.recall_p>


; <Start encoding val FStar.HyperStack.ST.token_functoriality>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.token_functoriality (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.token_functoriality@tok () Term)

; </end encoding val FStar.HyperStack.ST.token_functoriality>


; <Start encoding let ex_rid>

(declare-fun FStar.HyperStack.ST.ex_rid () Term)

; </end encoding let ex_rid>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_constant>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_constant (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_constant@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_constant>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_nested>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_nested (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_nested@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_nested>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_and>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_and (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_and@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_and>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_or>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_or (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_or@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_or>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_impl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_impl (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_impl@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_impl>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_forall>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_forall (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_forall@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_forall>


; <Start encoding val FStar.HyperStack.ST.lemma_witnessed_exists>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_exists (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.lemma_witnessed_exists@tok () Term)

; </end encoding val FStar.HyperStack.ST.lemma_witnessed_exists>


; <Start encoding let is_freeable_heap_region>

(declare-fun FStar.HyperStack.ST.is_freeable_heap_region (Term) Term)

(declare-fun FStar.HyperStack.ST.is_freeable_heap_region@tok () Term)

; </end encoding let is_freeable_heap_region>


; <Start encoding let d_hrid>

(declare-fun FStar.HyperStack.ST.d_hrid () Term)
(declare-fun Tm_refine_a6918a83312e51579e26340a47646253 () Term)

; </end encoding let d_hrid>


; <Start encoding val FStar.HyperStack.ST.drgn>

(declare-fun FStar.HyperStack.ST.drgn () Term)

; </end encoding val FStar.HyperStack.ST.drgn>


; <Start encoding val FStar.HyperStack.ST.rid_of_drgn>

(declare-fun FStar.HyperStack.ST.rid_of_drgn (Term) Term)
(declare-fun Tm_arrow_8c9ac69e15a63496af078943001e86c3 () Term)
(declare-fun FStar.HyperStack.ST.rid_of_drgn@tok () Term)

; </end encoding val FStar.HyperStack.ST.rid_of_drgn>


; <Start encoding val FStar.HyperStack.ST.new_drgn>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.new_drgn (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.new_drgn@tok () Term)

; </end encoding val FStar.HyperStack.ST.new_drgn>


; <Start encoding val FStar.HyperStack.ST.free_drgn>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.free_drgn (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.free_drgn@tok () Term)

; </end encoding val FStar.HyperStack.ST.free_drgn>


; <Start encoding val FStar.HyperStack.ST.ralloc_drgn>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.ralloc_drgn (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.ralloc_drgn@tok () Term)

; </end encoding val FStar.HyperStack.ST.ralloc_drgn>


; <Start encoding val FStar.HyperStack.ST.ralloc_drgn_mm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.ralloc_drgn_mm (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.ralloc_drgn_mm@tok () Term)

; </end encoding val FStar.HyperStack.ST.ralloc_drgn_mm>


; <Start encoding let break_vc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.HyperStack.ST.break_vc (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.HyperStack.ST.break_vc@tok () Term)

; </end encoding let break_vc>


; End Externals for interface FStar.HyperStack.ST

(push) ;; push{1

; Internals for InlineLet


; encoding sigelt type InlineLet.pkg


; <Start encoding type InlineLet.pkg>

;;;;;;;;;;;;;;;;Constructor
(declare-fun InlineLet.pkg (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun InlineLet.pkg@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun InlineLet.Pkg (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun InlineLet.Pkg_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun InlineLet.Pkg_something (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: InlineLet.Pkg
(declare-fun InlineLet.Pkg@tok () Term)
(declare-fun Non_total_Tm_arrow_e9080c1cc55d66b2ecdcd8c2a191923f (Term) Term)

;;;;;;;;;;;;;;;;something: (_: a -> FStar.HyperStack.ST.St (a & Prims.int)) -> pkg a
(declare-fun Tm_arrow_69c54dcd43d6ed213e6164ccc98e9bef () Term)

; <start constructor InlineLet.pkg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-InlineLet.pkg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
104)
(exists ((@x0 Term))
 (! (= __@x0
(InlineLet.pkg @x0))
 
;;no pats
:qid is-InlineLet.pkg))))

; </end constructor InlineLet.pkg>


; <start constructor InlineLet.Pkg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-InlineLet.Pkg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
121)
(= __@x0
(InlineLet.Pkg (InlineLet.Pkg_a __@x0)
(InlineLet.Pkg_something __@x0)))))

; </end constructor InlineLet.Pkg>


; </end encoding type InlineLet.pkg>


; encoding sigelt val InlineLet.uu___is_Pkg


; <Start encoding val InlineLet.uu___is_Pkg>

(declare-fun InlineLet.uu___is_Pkg (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: pkg a -> Prims.bool
(declare-fun Tm_arrow_758069e702c2c5696f81e9be9f8cdb23 () Term)
(declare-fun InlineLet.uu___is_Pkg@tok () Term)

; </end encoding val InlineLet.uu___is_Pkg>


; encoding sigelt let uu___is_Pkg


; <Skipped let uu___is_Pkg/>


; encoding sigelt val InlineLet.__proj__Pkg__item__something


; <Start encoding val InlineLet.__proj__Pkg__item__something>

(declare-fun InlineLet.__proj__Pkg__item__something (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: pkg a -> _: a -> FStar.HyperStack.ST.St (a & Prims.int)
(declare-fun Tm_arrow_2d1d9797096737dca2591456f305a491 () Term)
(declare-fun InlineLet.__proj__Pkg__item__something@tok () Term)


; </end encoding val InlineLet.__proj__Pkg__item__something>


; encoding sigelt let __proj__Pkg__item__something


; <Skipped let __proj__Pkg__item__something/>


; encoding sigelt let pkg_something


; <Start encoding let pkg_something>

(declare-fun InlineLet.pkg_something (Term Term) Term)


(declare-fun InlineLet.pkg_something@tok () Term)


; </end encoding let pkg_something>


; encoding sigelt type InlineLet.local_pkg


; <Start encoding type InlineLet.local_pkg>

;;;;;;;;;;;;;;;;Constructor
(declare-fun InlineLet.local_pkg (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun InlineLet.local_pkg@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun InlineLet.LocalPkg (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun InlineLet.LocalPkg_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun InlineLet.LocalPkg_local_something (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: InlineLet.LocalPkg
(declare-fun InlineLet.LocalPkg@tok () Term)
(declare-fun Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79 (Term) Term)

;;;;;;;;;;;;;;;;local_something: (_: a -> FStar.HyperStack.ST.St Prims.int) -> local_pkg a
(declare-fun Tm_arrow_8e6faae9fe5557e5c453ae4d4c5159f7 () Term)

; <start constructor InlineLet.local_pkg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-InlineLet.local_pkg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
181)
(exists ((@x0 Term))
 (! (= __@x0
(InlineLet.local_pkg @x0))
 
;;no pats
:qid is-InlineLet.local_pkg))))

; </end constructor InlineLet.local_pkg>


; <start constructor InlineLet.LocalPkg>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-InlineLet.LocalPkg ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
198)
(= __@x0
(InlineLet.LocalPkg (InlineLet.LocalPkg_a __@x0)
(InlineLet.LocalPkg_local_something __@x0)))))

; </end constructor InlineLet.LocalPkg>


; </end encoding type InlineLet.local_pkg>


; encoding sigelt val InlineLet.uu___is_LocalPkg


; <Start encoding val InlineLet.uu___is_LocalPkg>

(declare-fun InlineLet.uu___is_LocalPkg (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: local_pkg a -> Prims.bool
(declare-fun Tm_arrow_862125b04f14c7a0565234ac067638ef () Term)
(declare-fun InlineLet.uu___is_LocalPkg@tok () Term)

; </end encoding val InlineLet.uu___is_LocalPkg>


; encoding sigelt let uu___is_LocalPkg


; <Skipped let uu___is_LocalPkg/>


; encoding sigelt val InlineLet.__proj__LocalPkg__item__local_something


; <Start encoding val InlineLet.__proj__LocalPkg__item__local_something>

(declare-fun InlineLet.__proj__LocalPkg__item__local_something (Term Term) Term)

;;;;;;;;;;;;;;;;projectee: local_pkg a -> _: a -> FStar.HyperStack.ST.St Prims.int
(declare-fun Tm_arrow_260b07516e0a7924055a80585079afba () Term)
(declare-fun InlineLet.__proj__LocalPkg__item__local_something@tok () Term)


; </end encoding val InlineLet.__proj__LocalPkg__item__local_something>


; encoding sigelt let __proj__LocalPkg__item__local_something


; <Skipped let __proj__LocalPkg__item__local_something/>


; encoding sigelt let local_something


; <Start encoding let local_something>

(declare-fun InlineLet.local_something (Term Term) Term)


(declare-fun InlineLet.local_something@tok () Term)


; </end encoding let local_something>

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
;;;;;;;;;;;;;;;;typing_Tm_abs_568747eb5009c1dec504311dee989dc2
;;; Fact-ids: Name FStar.Heap.trivial_rel; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(20,60-20,64); use=FStar.Heap.fst(20,60-20,64)
(forall ((@x0 Term))
 (! (HasType (Tm_abs_568747eb5009c1dec504311dee989dc2 @x0)
(Tm_arrow_a19f9d49348d4e0038f0ded87d87802f @x0))
 

:pattern ((Tm_abs_568747eb5009c1dec504311dee989dc2 @x0))
:qid typing_Tm_abs_568747eb5009c1dec504311dee989dc2))

:named typing_Tm_abs_568747eb5009c1dec504311dee989dc2))
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
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (HasType Prims.prop
Tm_type)
:named typing_Prims.prop))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Prims.pos
Tm_type)
:named typing_Prims.pos))
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
;;; Fact-ids: Name FStar.Set.union; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(40,4-40,9); use=FStar.Set.fsti(40,4-40,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.union @x0
@x1
@x2)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Set.union @x0
@x1
@x2))
:qid typing_FStar.Set.union))

:named typing_FStar.Set.union))
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
;;; Fact-ids: Name FStar.Set.equal; Namespace FStar.Set
(assert (! 
;; def=FStar.Set.fsti(25,4-25,9); use=FStar.Set.fsti(25,4-25,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0)))
(HasType (FStar.Set.equal @x0
@x1
@x2)
Tm_type))
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid typing_FStar.Set.equal))

:named typing_FStar.Set.equal))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.upd; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(296,4-296,7); use=FStar.Monotonic.HyperStack.fsti(296,4-296,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.HyperStack.mem)
(HasType @x3
(Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x2
@x0
@x1))
(HasType @x4
@x0))
(HasType (FStar.Monotonic.HyperStack.upd @x0
@x1
@x2
@x3
@x4)
FStar.Monotonic.HyperStack.mem))
 

:pattern ((FStar.Monotonic.HyperStack.upd @x0
@x1
@x2
@x3
@x4))
:qid typing_FStar.Monotonic.HyperStack.upd))

:named typing_FStar.Monotonic.HyperStack.upd))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.tip_top; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(78,4-78,11); use=FStar.Monotonic.HyperStack.fsti(78,4-78,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
FStar.Monotonic.HyperHeap.hmap))
(HasType (FStar.Monotonic.HyperStack.tip_top @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.tip_top @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.tip_top))

:named typing_FStar.Monotonic.HyperStack.tip_top))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.sel; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(293,4-293,7); use=FStar.Monotonic.HyperStack.fsti(293,4-293,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.HyperStack.mem)
(HasType @x3
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.sel @x0
@x1
@x2
@x3)
@x0))
 

:pattern ((FStar.Monotonic.HyperStack.sel @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.HyperStack.sel))

:named typing_FStar.Monotonic.HyperStack.sel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.rid_ctr_pred; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(80,4-80,16); use=FStar.Monotonic.HyperStack.fsti(80,4-80,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperHeap.hmap)
(HasType @x1
Prims.int))
(HasType (FStar.Monotonic.HyperStack.rid_ctr_pred @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.rid_ctr_pred @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.rid_ctr_pred))

:named typing_FStar.Monotonic.HyperStack.rid_ctr_pred))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.poppable; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(189,4-189,12); use=FStar.Monotonic.HyperStack.fsti(189,4-189,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType (FStar.Monotonic.HyperStack.poppable @x0)
Prims.logical))
 

:pattern ((FStar.Monotonic.HyperStack.poppable @x0))
:qid typing_FStar.Monotonic.HyperStack.poppable))

:named typing_FStar.Monotonic.HyperStack.poppable))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(221,4-221,14); use=FStar.Monotonic.HyperStack.fsti(221,4-221,14)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.Monotonic.HyperStack.mreference @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.mreference @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.mreference))

:named typing_FStar.Monotonic.HyperStack.mreference))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(256,4-256,8); use=FStar.Monotonic.HyperStack.fsti(256,4-256,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.Monotonic.HyperStack.mref @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.mref @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.mref))

:named typing_FStar.Monotonic.HyperStack.mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mk_mreference; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(227,4-227,17); use=FStar.Monotonic.HyperStack.fsti(227,4-227,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x3
(FStar.Monotonic.Heap.mref @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.mk_mreference @x0
@x1
@x2
@x3)
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
 

:pattern ((FStar.Monotonic.HyperStack.mk_mreference @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.HyperStack.mk_mreference))

:named typing_FStar.Monotonic.HyperStack.mk_mreference))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mk_mem; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(97,12-97,18); use=FStar.Monotonic.HyperStack.fsti(97,12-97,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
FStar.Monotonic.HyperHeap.hmap)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
(HasType (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2)
FStar.Monotonic.HyperStack.mem_))
 

:pattern ((FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.mk_mem))

:named typing_FStar.Monotonic.HyperStack.mk_mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem'; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType FStar.Monotonic.HyperStack.mem_
Tm_type)
:named typing_FStar.Monotonic.HyperStack.mem_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType FStar.Monotonic.HyperStack.mem
Tm_type)
:named typing_FStar.Monotonic.HyperStack.mem))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.map_invariant; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(74,4-74,17); use=FStar.Monotonic.HyperStack.fsti(74,4-74,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperHeap.hmap)
(HasType (FStar.Monotonic.HyperStack.map_invariant @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.map_invariant @x0))
:qid typing_FStar.Monotonic.HyperStack.map_invariant))

:named typing_FStar.Monotonic.HyperStack.map_invariant))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.live_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(273,4-273,15); use=FStar.Monotonic.HyperStack.fsti(273,4-273,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
(HasType (FStar.Monotonic.HyperStack.live_region @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperStack.live_region @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.live_region))

:named typing_FStar.Monotonic.HyperStack.live_region))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(87,4-87,26); use=FStar.Monotonic.HyperStack.fsti(87,4-87,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperHeap.hmap)
(HasType @x1
Prims.int)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
(HasType (FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2)
Prims.logical))
 

:pattern ((FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))

:named typing_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(82,4-82,10); use=FStar.Monotonic.HyperStack.fsti(82,4-82,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
FStar.Monotonic.HyperHeap.hmap))
(HasType (FStar.Monotonic.HyperStack.is_tip @x0
@x1)
Prims.logical))
 

:pattern ((FStar.Monotonic.HyperStack.is_tip @x0
@x1))
:qid typing_FStar.Monotonic.HyperStack.is_tip))

:named typing_FStar.Monotonic.HyperStack.is_tip))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_stack_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(28,4-28,19); use=FStar.Monotonic.HyperStack.fsti(28,4-28,19)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.Monotonic.HyperStack.is_stack_region @x0)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperStack.is_stack_region @x0))
:qid typing_FStar.Monotonic.HyperStack.is_stack_region))

:named typing_FStar.Monotonic.HyperStack.is_stack_region))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_mm; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(245,4-245,9); use=FStar.Monotonic.HyperStack.fsti(245,4-245,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.is_mm @x0
@x1
@x2)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperStack.is_mm @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.is_mm))

:named typing_FStar.Monotonic.HyperStack.is_mm))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_heap_color; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(29,4-29,17); use=FStar.Monotonic.HyperStack.fsti(29,4-29,17)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.int)
(HasType (FStar.Monotonic.HyperStack.is_heap_color @x0)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperStack.is_heap_color @x0))
:qid typing_FStar.Monotonic.HyperStack.is_heap_color))

:named typing_FStar.Monotonic.HyperStack.is_heap_color))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.get_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(101,4-101,11); use=FStar.Monotonic.HyperStack.fsti(101,4-101,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperStack.mem_)
(HasType (FStar.Monotonic.HyperStack.get_tip @x0)
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
 

:pattern ((FStar.Monotonic.HyperStack.get_tip @x0))
:qid typing_FStar.Monotonic.HyperStack.get_tip))

:named typing_FStar.Monotonic.HyperStack.get_tip))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.get_rid_ctr; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(100,4-100,15); use=FStar.Monotonic.HyperStack.fsti(100,4-100,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperStack.mem_)
(HasType (FStar.Monotonic.HyperStack.get_rid_ctr @x0)
Prims.int))
 

:pattern ((FStar.Monotonic.HyperStack.get_rid_ctr @x0))
:qid typing_FStar.Monotonic.HyperStack.get_rid_ctr))

:named typing_FStar.Monotonic.HyperStack.get_rid_ctr))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.get_hmap; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(99,4-99,12); use=FStar.Monotonic.HyperStack.fsti(99,4-99,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperStack.mem_)
(HasType (FStar.Monotonic.HyperStack.get_hmap @x0)
FStar.Monotonic.HyperHeap.hmap))
 

:pattern ((FStar.Monotonic.HyperStack.get_hmap @x0))
:qid typing_FStar.Monotonic.HyperStack.get_hmap))

:named typing_FStar.Monotonic.HyperStack.get_hmap))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.frameOf; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(224,4-224,11); use=FStar.Monotonic.HyperStack.fsti(224,4-224,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2)
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
 

:pattern ((FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.frameOf))

:named typing_FStar.Monotonic.HyperStack.frameOf))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.downward_closed; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(76,4-76,19); use=FStar.Monotonic.HyperStack.fsti(76,4-76,19)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperHeap.hmap)
(HasType (FStar.Monotonic.HyperStack.downward_closed @x0)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.downward_closed @x0))
:qid typing_FStar.Monotonic.HyperStack.downward_closed))

:named typing_FStar.Monotonic.HyperStack.downward_closed))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.contains_ref_in_its_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(283,4-283,30); use=FStar.Monotonic.HyperStack.fsti(283,4-283,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.HyperStack.mem)
(HasType @x3
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.contains_ref_in_its_region @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.contains_ref_in_its_region @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.HyperStack.contains_ref_in_its_region))

:named typing_FStar.Monotonic.HyperStack.contains_ref_in_its_region))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.contains; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(275,4-275,12); use=FStar.Monotonic.HyperStack.fsti(275,4-275,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.HyperStack.mem)
(HasType @x3
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3)
Prims.logical))
 

:pattern ((FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3))
:qid typing_FStar.Monotonic.HyperStack.contains))

:named typing_FStar.Monotonic.HyperStack.contains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.as_ref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(233,4-233,10); use=FStar.Monotonic.HyperStack.fsti(233,4-233,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x2)
(FStar.Monotonic.Heap.mref @x0
@x1)))
 

:pattern ((FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.as_ref))

:named typing_FStar.Monotonic.HyperStack.as_ref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.__proj__MkRef__item__frame; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,12-219,17); use=FStar.Monotonic.HyperStack.fsti(219,12-219,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference_ @x0
@x1)))
(HasType (FStar.Monotonic.HyperStack.__proj__MkRef__item__frame @x0
@x1
@x2)
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
 

:pattern ((FStar.Monotonic.HyperStack.__proj__MkRef__item__frame @x0
@x1
@x2))
:qid typing_FStar.Monotonic.HyperStack.__proj__MkRef__item__frame))

:named typing_FStar.Monotonic.HyperStack.__proj__MkRef__item__frame))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.root; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(50,4-50,8); use=FStar.Monotonic.HyperHeap.fsti(50,4-50,8)
(forall ((@u0 Dummy_sort))
 (! (HasType (FStar.Monotonic.HyperHeap.root @u0)
Tm_refine_365abba901205a01d0ef28ebf2198c47)
 

:pattern ((FStar.Monotonic.HyperHeap.root @u0))
:qid typing_FStar.Monotonic.HyperHeap.root))

:named typing_FStar.Monotonic.HyperHeap.root))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid_length; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(58,12-58,22); use=FStar.Monotonic.HyperHeap.fsti(58,12-58,22)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.Monotonic.HyperHeap.rid_length @x0)
Prims.nat))
 

:pattern ((FStar.Monotonic.HyperHeap.rid_length @x0))
:qid typing_FStar.Monotonic.HyperHeap.rid_length))

:named typing_FStar.Monotonic.HyperHeap.rid_length))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid_freeable; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(46,4-46,16); use=FStar.Monotonic.HyperHeap.fsti(46,4-46,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.Monotonic.HyperHeap.rid_freeable @x0)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperHeap.rid_freeable @x0))
:qid typing_FStar.Monotonic.HyperHeap.rid_freeable))

:named typing_FStar.Monotonic.HyperHeap.rid_freeable))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(34,4-34,7); use=FStar.Monotonic.HyperHeap.fsti(34,4-34,7)
(forall ((@u0 Dummy_sort))
 (! (HasType (FStar.Monotonic.HyperHeap.rid @u0)
Prims.eqtype)
 

:pattern ((FStar.Monotonic.HyperHeap.rid @u0))
:qid typing_FStar.Monotonic.HyperHeap.rid))

:named typing_FStar.Monotonic.HyperHeap.rid))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.includes; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(62,4-62,12); use=FStar.Monotonic.HyperHeap.fsti(62,4-62,12)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
(HasType (FStar.Monotonic.HyperHeap.includes @x0
@x1)
Prims.bool))
 

:pattern ((FStar.Monotonic.HyperHeap.includes @x0
@x1))
:qid typing_FStar.Monotonic.HyperHeap.includes))

:named typing_FStar.Monotonic.HyperHeap.includes))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.hmap; Namespace FStar.Monotonic.HyperHeap
(assert (! (HasType FStar.Monotonic.HyperHeap.hmap
Tm_type)
:named typing_FStar.Monotonic.HyperHeap.hmap))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.color; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(44,4-44,9); use=FStar.Monotonic.HyperHeap.fsti(44,4-44,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.Monotonic.HyperHeap.color @x0)
Prims.int))
 

:pattern ((FStar.Monotonic.HyperHeap.color @x0))
:qid typing_FStar.Monotonic.HyperHeap.color))

:named typing_FStar.Monotonic.HyperHeap.color))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Monotonic.Heap.upd; Namespace FStar.Monotonic.Heap
(assert (! 
;; def=FStar.Monotonic.Heap.fsti(78,4-78,7); use=FStar.Monotonic.Heap.fsti(78,4-78,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
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
@x0))
(HasType (FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4)
FStar.Monotonic.Heap.heap))
 

:pattern ((FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4))
:qid typing_FStar.Monotonic.Heap.upd))

:named typing_FStar.Monotonic.Heap.upd))
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
;;; Fact-ids: Name FStar.Map.upd; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(42,4-42,7); use=FStar.Map.fsti(42,4-42,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))
(HasType (FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
(FStar.Map.t @x0
@x1)))
 

:pattern ((FStar.Map.upd @x0
@x1
@x2
@x3
@x4))
:qid typing_FStar.Map.upd))

:named typing_FStar.Map.upd))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.t; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(35,4-35,5); use=FStar.Map.fsti(35,4-35,5)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type))
(HasType (FStar.Map.t @x0
@x1)
Tm_type))
 

:pattern ((FStar.Map.t @x0
@x1))
:qid typing_FStar.Map.t))

:named typing_FStar.Map.t))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.sel; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(39,4-39,7); use=FStar.Map.fsti(39,4-39,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))
(HasType (FStar.Map.sel @x0
@x1
@x2
@x3)
@x1))
 

:pattern ((FStar.Map.sel @x0
@x1
@x2
@x3))
:qid typing_FStar.Map.sel))

:named typing_FStar.Map.sel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.domain; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(48,4-48,10); use=FStar.Map.fsti(48,4-48,10)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1)))
(HasType (FStar.Map.domain @x0
@x1
@x2)
(FStar.Set.set @x0)))
 

:pattern ((FStar.Map.domain @x0
@x1
@x2))
:qid typing_FStar.Map.domain))

:named typing_FStar.Map.domain))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Map.contains; Namespace FStar.Map
(assert (! 
;; def=FStar.Map.fsti(51,4-51,12); use=FStar.Map.fsti(51,4-51,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))
(HasType (FStar.Map.contains @x0
@x1
@x2
@x3)
Prims.bool))
 

:pattern ((FStar.Map.contains @x0
@x1
@x2
@x3))
:qid typing_FStar.Map.contains))

:named typing_FStar.Map.contains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.witnessed; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(67,4-67,13); use=FStar.HyperStack.ST.fsti(67,4-67,13)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.HyperStack.ST.mem_predicate)
(HasType (FStar.HyperStack.ST.witnessed @x0)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.witnessed @x0))
:qid typing_FStar.HyperStack.ST.witnessed))

:named typing_FStar.HyperStack.ST.witnessed))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.same_refs_in_stack_regions; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(144,4-144,30); use=FStar.HyperStack.ST.fsti(144,4-144,30)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1))
:qid typing_FStar.HyperStack.ST.same_refs_in_stack_regions))

:named typing_FStar.HyperStack.ST.same_refs_in_stack_regions))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.same_refs_in_all_regions; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(143,4-143,28); use=FStar.HyperStack.ST.fsti(143,4-143,28)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1))
:qid typing_FStar.HyperStack.ST.same_refs_in_all_regions))

:named typing_FStar.HyperStack.ST.same_refs_in_all_regions))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.region_contains_pred; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(37,4-37,24); use=FStar.HyperStack.ST.fsti(37,4-37,24)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.HyperStack.ST.region_contains_pred @x0)
FStar.HyperStack.ST.mem_predicate))
 

:pattern ((FStar.HyperStack.ST.region_contains_pred @x0))
:qid typing_FStar.HyperStack.ST.region_contains_pred))

:named typing_FStar.HyperStack.ST.region_contains_pred))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.ref_contains_pred; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(39,4-39,21); use=FStar.HyperStack.ST.fsti(39,4-39,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(HasType (FStar.HyperStack.ST.ref_contains_pred @x0
@x1
@x2)
FStar.HyperStack.ST.mem_predicate))
 

:pattern ((FStar.HyperStack.ST.ref_contains_pred @x0
@x1
@x2))
:qid typing_FStar.HyperStack.ST.ref_contains_pred))

:named typing_FStar.HyperStack.ST.ref_contains_pred))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.ref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(301,5-301,8); use=FStar.HyperStack.ST.fsti(301,5-301,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.HyperStack.ST.ref @x0)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.ref @x0))
:qid typing_FStar.HyperStack.ST.ref))

:named typing_FStar.HyperStack.ST.ref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.mreference; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(281,5-281,15); use=FStar.HyperStack.ST.fsti(281,5-281,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.HyperStack.ST.mreference @x0
@x1)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.mreference @x0
@x1))
:qid typing_FStar.HyperStack.ST.mreference))

:named typing_FStar.HyperStack.ST.mreference))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.mref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(287,5-287,9); use=FStar.HyperStack.ST.fsti(287,5-287,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.HyperStack.ST.mref @x0
@x1)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.mref @x0
@x1))
:qid typing_FStar.HyperStack.ST.mref))

:named typing_FStar.HyperStack.ST.mref))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! (HasType FStar.HyperStack.ST.mem_predicate
Tm_type)
:named typing_FStar.HyperStack.ST.mem_predicate))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.is_live_for_rw_in; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(401,4-401,21); use=FStar.HyperStack.ST.fsti(401,4-401,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.HyperStack.ST.mreference @x0
@x1))
(HasType @x3
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3))
:qid typing_FStar.HyperStack.ST.is_live_for_rw_in))

:named typing_FStar.HyperStack.ST.is_live_for_rw_in))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.is_freeable_heap_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(563,4-563,27); use=FStar.HyperStack.ST.fsti(563,4-563,27)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.HyperStack.ST.is_freeable_heap_region @x0)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.is_freeable_heap_region @x0))
:qid typing_FStar.HyperStack.ST.is_freeable_heap_region))

:named typing_FStar.HyperStack.ST.is_freeable_heap_region))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.is_eternal_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(306,4-306,21); use=FStar.HyperStack.ST.fsti(306,4-306,21)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType (FStar.HyperStack.ST.is_eternal_region @x0)
Tm_type))
 

:pattern ((FStar.HyperStack.ST.is_eternal_region @x0))
:qid typing_FStar.HyperStack.ST.is_eternal_region))

:named typing_FStar.HyperStack.ST.is_eternal_region))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.equal_stack_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(216,4-216,23); use=FStar.HyperStack.ST.fsti(216,4-216,23)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.equal_stack_domains @x0
@x1)
Prims.logical))
 

:pattern ((FStar.HyperStack.ST.equal_stack_domains @x0
@x1))
:qid typing_FStar.HyperStack.ST.equal_stack_domains))

:named typing_FStar.HyperStack.ST.equal_stack_domains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.equal_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(185,4-185,17); use=FStar.HyperStack.ST.fsti(185,4-185,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.equal_domains @x0
@x1)
Prims.logical))
 

:pattern ((FStar.HyperStack.ST.equal_domains @x0
@x1))
:qid typing_FStar.HyperStack.ST.equal_domains))

:named typing_FStar.HyperStack.ST.equal_domains))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Heap.trivial_rel; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(20,4-20,15); use=FStar.Heap.fst(20,4-20,15)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Heap.trivial_rel @x0)
(FStar.Preorder.relation @x0)))
 

:pattern ((FStar.Heap.trivial_rel @x0))
:qid typing_FStar.Heap.trivial_rel))

:named typing_FStar.Heap.trivial_rel))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,4-22,20); use=FStar.Heap.fst(22,4-22,20)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Heap.trivial_preorder @x0)
(FStar.Preorder.preorder @x0)))
 

:pattern ((FStar.Heap.trivial_preorder @x0))
:qid typing_FStar.Heap.trivial_preorder))

:named typing_FStar.Heap.trivial_preorder))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(30,5-30,14); use=InlineLet.fst(30,5-30,14)
(forall ((@x0 Term))
 (! (= (ApplyTT InlineLet.local_pkg@tok
@x0)
(InlineLet.local_pkg @x0))
 

:pattern ((ApplyTT InlineLet.local_pkg@tok
@x0))

:pattern ((InlineLet.local_pkg @x0))
:qid token_correspondence_InlineLet.local_pkg@tok))

:named token_correspondence_InlineLet.local_pkg@tok))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT FStar.Monotonic.HyperStack.mreference_@tok
@x0)
@x1)
(FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT FStar.Monotonic.HyperStack.mreference_@tok
@x0)
@x1))

:pattern ((FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
:qid token_correspondence_FStar.Monotonic.HyperStack.mreference_@tok))

:named token_correspondence_FStar.Monotonic.HyperStack.mreference_@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,4-22,20); use=FStar.Heap.fst(22,4-22,20)
(forall ((@x0 Term))
 (! (= (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Heap.trivial_preorder @x0))
 

:pattern ((ApplyTT FStar.Heap.trivial_preorder@tok
@x0))
:qid token_correspondence_FStar.Heap.trivial_preorder))

:named token_correspondence_FStar.Heap.trivial_preorder))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(InlineLet.LocalPkg @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x3)))
:qid subterm_ordering_InlineLet.LocalPkg))

:named subterm_ordering_InlineLet.LocalPkg))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x5
@x6)))
:qid subterm_ordering_FStar.Monotonic.HyperStack.MkRef))

:named subterm_ordering_FStar.Monotonic.HyperStack.MkRef))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.upd; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(296,44-296,91); use=FStar.Monotonic.HyperStack.fsti(296,44-296,91)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_d58d7e3b4b6ce757231e9089061120a0))

:named refinement_kinding_Tm_refine_d58d7e3b4b6ce757231e9089061120a0))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperStack.sid; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType Tm_refine_c1ce603279aac7a7c378033ea416a653
Tm_type)
:named refinement_kinding_Tm_refine_c1ce603279aac7a7c378033ea416a653))
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
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_afd51579b90d50ea23e03b743a1fa001
Tm_type)
:named refinement_kinding_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.HyperStack.ST.d_hrid; Namespace FStar.HyperStack.ST
(assert (! (HasType Tm_refine_a6918a83312e51579e26340a47646253
Tm_type)
:named refinement_kinding_Tm_refine_a6918a83312e51579e26340a47646253))
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
;;; Fact-ids: Name FStar.HyperStack.ST.erid; Namespace FStar.HyperStack.ST
(assert (! (HasType Tm_refine_6c5072d4c9562dd38fd2703ecfb013df
Tm_type)
:named refinement_kinding_Tm_refine_6c5072d4c9562dd38fd2703ecfb013df))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(257,2-257,73); use=FStar.Monotonic.HyperStack.fsti(257,2-257,73)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_4deaad73cd92bc948bb28924e869c4ab))

:named refinement_kinding_Tm_refine_4deaad73cd92bc948bb28924e869c4ab))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperStack.pop; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c
Tm_type)
:named refinement_kinding_Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Tm_refine_414d0a9f578ab0048252f8c8f552b99f
Tm_type)
:named refinement_kinding_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.root; Namespace FStar.Monotonic.HyperHeap
(assert (! (HasType Tm_refine_365abba901205a01d0ef28ebf2198c47
Tm_type)
:named refinement_kinding_Tm_refine_365abba901205a01d0ef28ebf2198c47))
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
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.parent; Namespace FStar.Monotonic.HyperHeap
(assert (! (HasType Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a
Tm_type)
:named refinement_kinding_Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.HyperStack.ST.mref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(288,2-289,66); use=FStar.HyperStack.ST.fsti(288,2-289,66)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_1a1278f1aecd37594ba20d888b7fd230))

:named refinement_kinding_Tm_refine_1a1278f1aecd37594ba20d888b7fd230))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid_tail; Namespace FStar.Monotonic.HyperHeap
(assert (! (HasType Tm_refine_085b55aa6b726cf07dbab52057ffb51c
Tm_type)
:named refinement_kinding_Tm_refine_085b55aa6b726cf07dbab52057ffb51c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType Tm_refine_05e15190c946858f68c69156f585f95a
Tm_type)
:named refinement_kinding_Tm_refine_05e15190c946858f68c69156f585f95a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.HyperStack.ST.mreference; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(282,2-283,72); use=FStar.HyperStack.ST.fsti(282,2-283,72)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4))

:named refinement_kinding_Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.upd; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(296,44-296,91); use=FStar.Monotonic.HyperStack.fsti(296,44-296,91)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mreference @x3
@x4))

;; def=FStar.Monotonic.HyperStack.fsti(296,64-296,89); use=FStar.Monotonic.HyperStack.fsti(296,64-296,89)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.live_region @x2
(FStar.Monotonic.HyperStack.frameOf @x3
@x4
@x1)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_d58d7e3b4b6ce757231e9089061120a0))

:named refinement_interpretation_Tm_refine_d58d7e3b4b6ce757231e9089061120a0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.HyperStack.sid; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(36,11-36,35); use=FStar.Monotonic.HyperStack.fsti(36,11-36,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_c1ce603279aac7a7c378033ea416a653)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperStack.fsti(36,17-36,34); use=FStar.Monotonic.HyperStack.fsti(36,17-36,34)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_stack_region @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_c1ce603279aac7a7c378033ea416a653))
:qid refinement_interpretation_Tm_refine_c1ce603279aac7a7c378033ea416a653))

:named refinement_interpretation_Tm_refine_c1ce603279aac7a7c378033ea416a653))
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
;;; Fact-ids: Name FStar.HyperStack.ST.d_hrid; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(566,14-566,46); use=FStar.HyperStack.ST.fsti(566,14-566,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a6918a83312e51579e26340a47646253)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(566,20-566,45); use=FStar.HyperStack.ST.fsti(566,20-566,45)
(Valid 
;; def=FStar.HyperStack.ST.fsti(566,20-566,45); use=FStar.HyperStack.ST.fsti(566,20-566,45)
(FStar.HyperStack.ST.is_freeable_heap_region @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a6918a83312e51579e26340a47646253))
:qid refinement_interpretation_Tm_refine_a6918a83312e51579e26340a47646253))

:named refinement_interpretation_Tm_refine_a6918a83312e51579e26340a47646253))
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
;;; Fact-ids: Name FStar.HyperStack.ST.erid; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(468,12-468,38); use=FStar.HyperStack.ST.fsti(468,12-468,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_6c5072d4c9562dd38fd2703ecfb013df)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(468,18-468,37); use=FStar.HyperStack.ST.fsti(468,18-468,37)
(Valid 
;; def=FStar.HyperStack.ST.fsti(468,18-468,37); use=FStar.HyperStack.ST.fsti(468,18-468,37)
(FStar.HyperStack.ST.is_eternal_region @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_6c5072d4c9562dd38fd2703ecfb013df))
:qid refinement_interpretation_Tm_refine_6c5072d4c9562dd38fd2703ecfb013df))

:named refinement_interpretation_Tm_refine_6c5072d4c9562dd38fd2703ecfb013df))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(257,2-257,73); use=FStar.Monotonic.HyperStack.fsti(257,2-257,73)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mreference @x2
@x3))
(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x2
@x3
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x2
@x3
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x2
@x3
@x1)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x2
@x3)))
:qid refinement_interpretation_Tm_refine_4deaad73cd92bc948bb28924e869c4ab))

:named refinement_interpretation_Tm_refine_4deaad73cd92bc948bb28924e869c4ab))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.HyperStack.pop; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(200,8-200,29); use=FStar.Monotonic.HyperStack.fsti(200,8-200,29)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c)
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.Monotonic.HyperStack.fsti(200,16-200,27); use=FStar.Monotonic.HyperStack.fsti(200,16-200,27)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(200,16-200,27); use=FStar.Monotonic.HyperStack.fsti(200,16-200,27)
(FStar.Monotonic.HyperStack.poppable @x1)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))
:qid refinement_interpretation_Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))

:named refinement_interpretation_Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))
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
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.root; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(50,11-50,54); use=FStar.Monotonic.HyperHeap.fsti(50,11-50,54)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_365abba901205a01d0ef28ebf2198c47)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(50,17-50,29); use=FStar.Monotonic.HyperHeap.fsti(50,17-50,29)
(= (FStar.Monotonic.HyperHeap.color @x1)
(BoxInt 0))

(not (BoxBool_proj_0 (FStar.Monotonic.HyperHeap.rid_freeable @x1)))))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_365abba901205a01d0ef28ebf2198c47))
:qid refinement_interpretation_Tm_refine_365abba901205a01d0ef28ebf2198c47))

:named refinement_interpretation_Tm_refine_365abba901205a01d0ef28ebf2198c47))
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
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.parent; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(74,11-74,30); use=FStar.Monotonic.HyperHeap.fsti(74,11-74,30)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(74,18-74,28); use=FStar.Monotonic.HyperHeap.fsti(74,18-74,28)
(not 
;; def=FStar.Monotonic.HyperHeap.fsti(74,18-74,28); use=FStar.Monotonic.HyperHeap.fsti(74,18-74,28)
(= @x1
(FStar.Monotonic.HyperHeap.root Dummy_value))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a))
:qid refinement_interpretation_Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a))

:named refinement_interpretation_Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.HyperStack.ST.mref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(288,2-289,66); use=FStar.HyperStack.ST.fsti(288,2-289,66)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mref @x2
@x3))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=FStar.HyperStack.ST.fsti(288,18-288,49)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=FStar.HyperStack.ST.fsti(288,18-288,49)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x2
@x3
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=FStar.HyperStack.ST.fsti(289,18-289,65)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=FStar.HyperStack.ST.fsti(289,18-289,65)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x2
@x3
@x1)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_1a1278f1aecd37594ba20d888b7fd230))

:named refinement_interpretation_Tm_refine_1a1278f1aecd37594ba20d888b7fd230))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid_tail; Namespace FStar.Monotonic.HyperHeap
(assert (! 
;; def=FStar.Monotonic.HyperHeap.fsti(60,21-60,46); use=FStar.Monotonic.HyperHeap.fsti(60,21-60,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_085b55aa6b726cf07dbab52057ffb51c)
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(60,28-60,44); use=FStar.Monotonic.HyperHeap.fsti(60,28-60,44)
(> (BoxInt_proj_0 (FStar.Monotonic.HyperHeap.rid_length @x1))
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_085b55aa6b726cf07dbab52057ffb51c))
:qid refinement_interpretation_Tm_refine_085b55aa6b726cf07dbab52057ffb51c))

:named refinement_interpretation_Tm_refine_085b55aa6b726cf07dbab52057ffb51c))
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
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(112,17-112,89); use=FStar.Monotonic.HyperStack.fsti(112,17-112,89)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_05e15190c946858f68c69156f585f95a)
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.HyperStack.mem_)

;; def=FStar.Monotonic.HyperStack.fsti(112,24-112,87); use=FStar.Monotonic.HyperStack.fsti(112,24-112,87)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(112,24-112,87); use=FStar.Monotonic.HyperStack.fsti(112,24-112,87)
(FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip (FStar.Monotonic.HyperStack.get_hmap @x1)
(FStar.Monotonic.HyperStack.get_rid_ctr @x1)
(FStar.Monotonic.HyperStack.get_tip @x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_05e15190c946858f68c69156f585f95a))
:qid refinement_interpretation_Tm_refine_05e15190c946858f68c69156f585f95a))

:named refinement_interpretation_Tm_refine_05e15190c946858f68c69156f585f95a))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.HyperStack.ST.mreference; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(282,2-283,72); use=FStar.HyperStack.ST.fsti(282,2-283,72)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mreference @x2
@x3))

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=FStar.HyperStack.ST.fsti(282,24-282,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=FStar.HyperStack.ST.fsti(282,24-282,55)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x2
@x3
@x1))
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=FStar.HyperStack.ST.fsti(283,24-283,71)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=FStar.HyperStack.ST.fsti(283,24-283,71)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x2
@x3
@x1)))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4))

:named refinement_interpretation_Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (InlineLet.LocalPkg_local_something (InlineLet.LocalPkg @x0
@x1))
@x1)
 

:pattern ((InlineLet.LocalPkg @x0
@x1))
:qid projection_inverse_InlineLet.LocalPkg_local_something))

:named projection_inverse_InlineLet.LocalPkg_local_something))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= (InlineLet.LocalPkg_a (InlineLet.LocalPkg @x0
@x1))
@x0)
 

:pattern ((InlineLet.LocalPkg @x0
@x1))
:qid projection_inverse_InlineLet.LocalPkg_a))

:named projection_inverse_InlineLet.LocalPkg_a))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.MkRef_rel (FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Monotonic.HyperStack.MkRef_rel))

:named projection_inverse_FStar.Monotonic.HyperStack.MkRef_rel))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.MkRef_ref (FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Monotonic.HyperStack.MkRef_ref))

:named projection_inverse_FStar.Monotonic.HyperStack.MkRef_ref))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.MkRef_frame (FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Monotonic.HyperStack.MkRef_frame))

:named projection_inverse_FStar.Monotonic.HyperStack.MkRef_frame))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.MkRef_a (FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
:qid projection_inverse_FStar.Monotonic.HyperStack.MkRef_a))

:named projection_inverse_FStar.Monotonic.HyperStack.MkRef_a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name FStar.Monotonic.HyperStack.__proj__MkRef__item__frame; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,12-219,17); use=FStar.Monotonic.HyperStack.fsti(219,12-219,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Monotonic.HyperStack.__proj__MkRef__item__frame @x0
@x1
@x2)
(FStar.Monotonic.HyperStack.MkRef_frame @x2))
 

:pattern ((FStar.Monotonic.HyperStack.__proj__MkRef__item__frame @x0
@x1
@x2))
:qid proj_equation_FStar.Monotonic.HyperStack.MkRef_frame))

:named proj_equation_FStar.Monotonic.HyperStack.MkRef_frame))
;;; Fact-ids: Name Prims.op_Negation; Namespace Prims
(assert (! 
;; def=Prims.fst(534,4-534,15); use=Prims.fst(534,4-534,15)
(forall ((@x0 Term))
 (! (= (Prims.op_Negation @x0)
(BoxBool (not (BoxBool_proj_0 @x0))))
 

:pattern ((Prims.op_Negation @x0))
:qid primitive_Prims.op_Negation))

:named primitive_Prims.op_Negation))
;;; Fact-ids: Name Prims.op_LessThanOrEqual; Namespace Prims
(assert (! 
;; def=Prims.fst(564,4-564,22); use=Prims.fst(564,4-564,22)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_LessThanOrEqual @x0
@x1)
(BoxBool (<= (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_LessThanOrEqual @x0
@x1))
:qid primitive_Prims.op_LessThanOrEqual))

:named primitive_Prims.op_LessThanOrEqual))
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
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! (is-Tm_arrow (PreType InlineLet.local_pkg@tok))
:named pre_kinding_InlineLet.local_pkg@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (is-Tm_arrow (PreType FStar.Pervasives.Native.tuple2@tok))
:named pre_kinding_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! (is-Tm_arrow (PreType FStar.Monotonic.HyperStack.mreference_@tok))
:named pre_kinding_FStar.Monotonic.HyperStack.mreference_@tok))
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(30,16-31,44); use=InlineLet.fst(31,33-31,44)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79 @x0)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79 @x0)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79))

:named non_total_function_typing_Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Set.mem_union
;;; Fact-ids: Name FStar.Set.mem_union; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
@x0)
(HasType @x2
(FStar.Set.set @x0))
(HasType @x3
(FStar.Set.set @x0)))

;; def=FStar.Set.fsti(72,12-72,58); use=FStar.Set.fsti(72,12-72,58)
(= (FStar.Set.mem @x0
@x1
(FStar.Set.union @x0
@x2
@x3))
(Prims.op_BarBar (FStar.Set.mem @x0
@x1
@x2)
(FStar.Set.mem @x0
@x1
@x3)))
)
 

:pattern ((FStar.Set.mem @x0
@x1
(FStar.Set.union @x0
@x2
@x3)))
:qid lemma_FStar.Set.mem_union))
:named lemma_FStar.Set.mem_union))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_refl
;;; Fact-ids: Name FStar.Set.lemma_equal_refl; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(111,14-111,24); use=FStar.Set.fsti(111,14-111,24)
(= @x1
@x2)
)

;; def=FStar.Set.fsti(112,14-112,27); use=FStar.Set.fsti(112,14-112,27)
(Valid 
;; def=FStar.Set.fsti(112,14-112,27); use=FStar.Set.fsti(112,14-112,27)
(FStar.Set.equal @x0
@x1
@x2)
)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_refl))
:named lemma_FStar.Set.lemma_equal_refl))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_intro
;;; Fact-ids: Name FStar.Set.lemma_equal_intro; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(101,15-101,46); use=FStar.Set.fsti(101,15-101,46)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x0)

;; def=FStar.Set.fsti(101,26-101,45); use=FStar.Set.fsti(101,26-101,45)
(= (FStar.Set.mem @x0
@x3
@x1)
(FStar.Set.mem @x0
@x3
@x2))
)
 
;;no pats
:qid lemma_FStar.Set.lemma_equal_intro.1))
)

;; def=FStar.Set.fsti(102,13-102,26); use=FStar.Set.fsti(102,13-102,26)
(Valid 
;; def=FStar.Set.fsti(102,13-102,26); use=FStar.Set.fsti(102,13-102,26)
(FStar.Set.equal @x0
@x1
@x2)
)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_intro))
:named lemma_FStar.Set.lemma_equal_intro))
;;;;;;;;;;;;;;;;Lemma: FStar.Set.lemma_equal_elim
;;; Fact-ids: Name FStar.Set.lemma_equal_elim; Namespace FStar.Set
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
(FStar.Set.set @x0))
(HasType @x2
(FStar.Set.set @x0))

;; def=FStar.Set.fsti(106,14-106,27); use=FStar.Set.fsti(106,14-106,27)
(Valid 
;; def=FStar.Set.fsti(106,14-106,27); use=FStar.Set.fsti(106,14-106,27)
(FStar.Set.equal @x0
@x1
@x2)
)
)

;; def=FStar.Set.fsti(107,14-107,24); use=FStar.Set.fsti(107,14-107,24)
(= @x1
@x2)
)
 

:pattern ((FStar.Set.equal @x0
@x1
@x2))
:qid lemma_FStar.Set.lemma_equal_elim))
:named lemma_FStar.Set.lemma_equal_elim))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperStack.lemma_tip_top_smt
;;; Fact-ids: Name FStar.Monotonic.HyperStack.lemma_tip_top_smt; Namespace FStar.Monotonic.HyperStack
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperStack.fsti(160,19-160,38); use=FStar.Monotonic.HyperStack.fsti(160,19-160,38)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_stack_region @x1))
)

;; def=FStar.Monotonic.HyperStack.fsti(161,19-161,69); use=FStar.Monotonic.HyperStack.fsti(161,19-161,69)
(iff 
;; def=FStar.Monotonic.HyperStack.fsti(161,20-161,40); use=FStar.Monotonic.HyperStack.fsti(161,20-161,40)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1))


;; def=FStar.Monotonic.HyperStack.fsti(161,46-161,68); use=FStar.Monotonic.HyperStack.fsti(161,46-161,68)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x1
(FStar.Monotonic.HyperStack.get_tip @x0)))
)
)
 

:pattern ((FStar.Monotonic.HyperStack.is_stack_region @x1) (FStar.Monotonic.HyperHeap.includes @x1
(FStar.Monotonic.HyperStack.get_tip @x0)))

:pattern ((FStar.Monotonic.HyperStack.is_stack_region @x1) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1))
:qid lemma_FStar.Monotonic.HyperStack.lemma_tip_top_smt))
:named lemma_FStar.Monotonic.HyperStack.lemma_tip_top_smt))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperStack.lemma_mk_mem'_projectors
;;; Fact-ids: Name FStar.Monotonic.HyperStack.lemma_mk_mem'_projectors; Namespace FStar.Monotonic.HyperStack
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
FStar.Monotonic.HyperHeap.hmap)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value)))

;; def=FStar.Monotonic.HyperStack.fsti(106,13-106,78); use=FStar.Monotonic.HyperStack.fsti(106,13-106,78)
(and 
;; def=FStar.Monotonic.HyperStack.fsti(106,14-106,29); use=FStar.Monotonic.HyperStack.fsti(106,14-106,29)
(= (FStar.Monotonic.HyperStack.get_hmap (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2))
@x1)


;; def=FStar.Monotonic.HyperStack.fsti(106,33-106,57); use=FStar.Monotonic.HyperStack.fsti(106,33-106,57)
(= (FStar.Monotonic.HyperStack.get_rid_ctr (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2))
@x0)


;; def=FStar.Monotonic.HyperStack.fsti(106,61-106,77); use=FStar.Monotonic.HyperStack.fsti(106,61-106,77)
(= (FStar.Monotonic.HyperStack.get_tip (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2))
@x2)
)
)
 

:pattern ((FStar.Monotonic.HyperStack.get_hmap (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2)))

:pattern ((FStar.Monotonic.HyperStack.get_rid_ctr (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2)))

:pattern ((FStar.Monotonic.HyperStack.get_tip (FStar.Monotonic.HyperStack.mk_mem @x0
@x1
@x2)))
:qid lemma_FStar.Monotonic.HyperStack.lemma_mk_mem__projectors))
:named lemma_FStar.Monotonic.HyperStack.lemma_mk_mem__projectors))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperStack.lemma_map_invariant
;;; Fact-ids: Name FStar.Monotonic.HyperStack.lemma_map_invariant; Namespace FStar.Monotonic.HyperStack
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperStack.fsti(135,20-135,40); use=FStar.Monotonic.HyperStack.fsti(135,20-135,40)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1))


;; def=FStar.Monotonic.HyperStack.fsti(135,44-135,58); use=FStar.Monotonic.HyperStack.fsti(135,44-135,58)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x2
@x1))
)

;; def=FStar.Monotonic.HyperStack.fsti(136,19-136,41); use=FStar.Monotonic.HyperStack.fsti(136,19-136,41)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))
)
 

:pattern ((FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1) (FStar.Monotonic.HyperHeap.includes @x2
@x1) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))
:qid lemma_FStar.Monotonic.HyperStack.lemma_map_invariant))
:named lemma_FStar.Monotonic.HyperStack.lemma_map_invariant))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperStack.lemma_downward_closed
;;; Fact-ids: Name FStar.Monotonic.HyperStack.lemma_downward_closed; Namespace FStar.Monotonic.HyperStack
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x2
Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a)

;; def=FStar.Monotonic.HyperStack.fsti(142,20-142,40); use=FStar.Monotonic.HyperStack.fsti(142,20-142,40)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1))


;; def=FStar.Monotonic.HyperStack.fsti(142,44-142,58); use=FStar.Monotonic.HyperStack.fsti(142,44-142,58)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x2
@x1))
)

;; def=FStar.Monotonic.HyperStack.fsti(143,19-144,52); use=FStar.Monotonic.HyperStack.fsti(143,19-144,52)
(and 
;; def=FStar.Monotonic.HyperStack.fsti(143,20-143,70); use=FStar.Monotonic.HyperStack.fsti(143,20-143,70)
(= (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color @x1))
(FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color @x2)))


;; def=FStar.Monotonic.HyperStack.fsti(144,13-144,51); use=FStar.Monotonic.HyperStack.fsti(144,13-144,51)
(= (FStar.Monotonic.HyperStack.is_stack_region @x1)
(FStar.Monotonic.HyperStack.is_stack_region @x2))
)
)
 

:pattern ((FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1) (FStar.Monotonic.HyperHeap.includes @x2
@x1) (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color @x2)))

:pattern ((FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1) (FStar.Monotonic.HyperHeap.includes @x2
@x1) (FStar.Monotonic.HyperStack.is_stack_region @x2))
:qid lemma_FStar.Monotonic.HyperStack.lemma_downward_closed))
:named lemma_FStar.Monotonic.HyperStack.lemma_downward_closed))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperStack.lemma_as_ref_inj
;;; Fact-ids: Name FStar.Monotonic.HyperStack.lemma_as_ref_inj; Namespace FStar.Monotonic.HyperStack
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))

;; def=FStar.Monotonic.HyperStack.fsti(242,34-242,77); use=FStar.Monotonic.HyperStack.fsti(242,34-242,77)
(= (FStar.Monotonic.HyperStack.mk_mreference @x0
@x1
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2)
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x2))
@x2)
)
 

:pattern ((FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x2))
:qid lemma_FStar.Monotonic.HyperStack.lemma_as_ref_inj))
:named lemma_FStar.Monotonic.HyperStack.lemma_as_ref_inj))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperHeap.root_is_root
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.root_is_root; Namespace FStar.Monotonic.HyperHeap
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(175,19-175,36); use=FStar.Monotonic.HyperHeap.fsti(175,19-175,36)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x0
(FStar.Monotonic.HyperHeap.root Dummy_value)))
)

;; def=FStar.Monotonic.HyperHeap.fsti(176,19-176,30); use=FStar.Monotonic.HyperHeap.fsti(176,19-176,30)
(= @x0
(FStar.Monotonic.HyperHeap.root Dummy_value))
)
 

:pattern ((FStar.Monotonic.HyperHeap.includes @x0
(FStar.Monotonic.HyperHeap.root Dummy_value)))
:qid lemma_FStar.Monotonic.HyperHeap.root_is_root))
:named lemma_FStar.Monotonic.HyperHeap.root_is_root))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperHeap.lemma_includes_trans
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.lemma_includes_trans; Namespace FStar.Monotonic.HyperHeap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(137,21-137,33); use=FStar.Monotonic.HyperHeap.fsti(137,21-137,33)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x0
@x1))


;; def=FStar.Monotonic.HyperHeap.fsti(137,37-137,49); use=FStar.Monotonic.HyperHeap.fsti(137,37-137,49)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x1
@x2))
)

;; def=FStar.Monotonic.HyperHeap.fsti(138,20-138,34); use=FStar.Monotonic.HyperHeap.fsti(138,20-138,34)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x0
@x2))
)
 

:pattern ((FStar.Monotonic.HyperHeap.includes @x0
@x1) (FStar.Monotonic.HyperHeap.includes @x1
@x2))
:qid lemma_FStar.Monotonic.HyperHeap.lemma_includes_trans))
:named lemma_FStar.Monotonic.HyperHeap.lemma_includes_trans))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperHeap.lemma_includes_refl
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.lemma_includes_refl; Namespace FStar.Monotonic.HyperHeap
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(77,9-77,23); use=FStar.Monotonic.HyperHeap.fsti(77,9-77,23)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x0
@x0))
)
 

:pattern ((FStar.Monotonic.HyperHeap.includes @x0
@x0))
:qid lemma_FStar.Monotonic.HyperHeap.lemma_includes_refl))
:named lemma_FStar.Monotonic.HyperHeap.lemma_includes_refl))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric; Namespace FStar.Monotonic.HyperHeap
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.Monotonic.HyperHeap.fsti(86,20-86,32); use=FStar.Monotonic.HyperHeap.fsti(86,20-86,32)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x0
@x1))


;; def=FStar.Monotonic.HyperHeap.fsti(86,36-86,43); use=FStar.Monotonic.HyperHeap.fsti(86,36-86,43)
(not 
;; def=FStar.Monotonic.HyperHeap.fsti(86,36-86,43); use=FStar.Monotonic.HyperHeap.fsti(86,36-86,43)
(= @x0
@x1)
)
)
(not (BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes @x1
@x0))))
 

:pattern ((FStar.Monotonic.HyperHeap.includes @x0
@x1))
:qid lemma_FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric))
:named lemma_FStar.Monotonic.HyperHeap.lemma_includes_anti_symmetric))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_well_typed_upd_contains
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_well_typed_upd_contains; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
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
@x0)
(HasType @x7
(FStar.Monotonic.Heap.mref @x1
@x3))

;; def=FStar.Monotonic.Heap.fsti(221,19-221,36); use=FStar.Monotonic.Heap.fsti(221,19-221,36)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(221,19-221,36); use=FStar.Monotonic.Heap.fsti(221,19-221,36)
(FStar.Monotonic.Heap.contains @x0
@x2
@x4
@x5)
)
)

;; def=FStar.Monotonic.Heap.fsti(223,13-223,50); use=FStar.Monotonic.Heap.fsti(223,13-223,50)
(iff 
;; def=FStar.Monotonic.Heap.fsti(223,13-223,29); use=FStar.Monotonic.Heap.fsti(223,13-223,29)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(223,13-223,29); use=FStar.Monotonic.Heap.fsti(223,13-223,29)
(FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7)
)


;; def=FStar.Monotonic.Heap.fsti(223,35-223,50); use=FStar.Monotonic.Heap.fsti(223,35-223,50)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(223,35-223,50); use=FStar.Monotonic.Heap.fsti(223,35-223,50)
(FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x7)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7))
:qid lemma_FStar.Monotonic.Heap.lemma_well_typed_upd_contains))
:named lemma_FStar.Monotonic.Heap.lemma_well_typed_upd_contains))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_upd_unused
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_upd_unused; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
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
@x0)
(HasType @x7
(FStar.Monotonic.Heap.mref @x1
@x3)))

;; def=FStar.Monotonic.Heap.fsti(243,19-243,100); use=FStar.Monotonic.Heap.fsti(243,19-243,100)
(iff 
;; def=FStar.Monotonic.Heap.fsti(243,20-243,66); use=FStar.Monotonic.Heap.fsti(243,20-243,66)
(and 
;; def=FStar.Monotonic.Heap.fsti(243,21-243,45); use=FStar.Monotonic.Heap.fsti(243,21-243,45)
(not (= (FStar.Monotonic.Heap.addr_of @x0
@x2
@x5)
(FStar.Monotonic.Heap.addr_of @x1
@x3
@x7)))


;; def=FStar.Monotonic.Heap.fsti(243,49-243,65); use=FStar.Monotonic.Heap.fsti(243,49-243,65)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(243,49-243,65); use=FStar.Monotonic.Heap.fsti(243,49-243,65)
(FStar.Monotonic.Heap.unused_in @x1
@x3
@x7
@x4)
)
)


;; def=FStar.Monotonic.Heap.fsti(243,72-243,99); use=FStar.Monotonic.Heap.fsti(243,72-243,99)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(243,72-243,99); use=FStar.Monotonic.Heap.fsti(243,72-243,99)
(FStar.Monotonic.Heap.unused_in @x1
@x3
@x7
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6))
)
)
)
 

:pattern ((FStar.Monotonic.Heap.unused_in @x1
@x3
@x7
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)))
:qid lemma_FStar.Monotonic.Heap.lemma_upd_unused))
:named lemma_FStar.Monotonic.Heap.lemma_upd_unused))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_upd_contains_different_addr
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_upd_contains_different_addr; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
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
@x0)
(HasType @x7
(FStar.Monotonic.Heap.mref @x1
@x3))

;; def=FStar.Monotonic.Heap.fsti(236,20-236,35); use=FStar.Monotonic.Heap.fsti(236,20-236,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(236,20-236,35); use=FStar.Monotonic.Heap.fsti(236,20-236,35)
(FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x7)
)


;; def=FStar.Monotonic.Heap.fsti(236,39-236,63); use=FStar.Monotonic.Heap.fsti(236,39-236,63)
(not (= (FStar.Monotonic.Heap.addr_of @x0
@x2
@x5)
(FStar.Monotonic.Heap.addr_of @x1
@x3
@x7)))
)

;; def=FStar.Monotonic.Heap.fsti(237,19-237,47); use=FStar.Monotonic.Heap.fsti(237,19-237,47)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(237,19-237,47); use=FStar.Monotonic.Heap.fsti(237,19-237,47)
(FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7))
:qid lemma_FStar.Monotonic.Heap.lemma_upd_contains_different_addr))
:named lemma_FStar.Monotonic.Heap.lemma_upd_contains_different_addr))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_upd_contains
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_upd_contains; Namespace FStar.Monotonic.Heap
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
@x0))

;; def=FStar.Monotonic.Heap.fsti(216,19-216,45); use=FStar.Monotonic.Heap.fsti(216,19-216,45)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(216,19-216,45); use=FStar.Monotonic.Heap.fsti(216,19-216,45)
(FStar.Monotonic.Heap.contains @x0
@x1
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4)
@x3)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x0
@x1
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4)
@x3))
:qid lemma_FStar.Monotonic.Heap.lemma_upd_contains))
:named lemma_FStar.Monotonic.Heap.lemma_upd_contains))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_unused_upd_modifies
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_unused_upd_modifies; Namespace FStar.Monotonic.Heap
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
@x0)

;; def=FStar.Monotonic.Heap.fsti(252,19-252,36); use=FStar.Monotonic.Heap.fsti(252,19-252,36)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(252,19-252,36); use=FStar.Monotonic.Heap.fsti(252,19-252,36)
(FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2)
)
)

;; def=FStar.Monotonic.Heap.fsti(253,19-253,71); use=FStar.Monotonic.Heap.fsti(253,19-253,71)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(253,19-253,71); use=FStar.Monotonic.Heap.fsti(253,19-253,71)
(FStar.Monotonic.Heap.modifies (FStar.Set.singleton Prims.nat
(FStar.Monotonic.Heap.addr_of @x0
@x1
@x3))
@x2
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4))
)
)
 

:pattern ((FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4) (FStar.Monotonic.Heap.unused_in @x0
@x1
@x3
@x2))
:qid lemma_FStar.Monotonic.Heap.lemma_unused_upd_modifies))
:named lemma_FStar.Monotonic.Heap.lemma_unused_upd_modifies))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_unused_upd_contains
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_unused_upd_contains; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
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
@x0)
(HasType @x7
(FStar.Monotonic.Heap.mref @x1
@x3))

;; def=FStar.Monotonic.Heap.fsti(228,19-228,37); use=FStar.Monotonic.Heap.fsti(228,19-228,37)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(228,19-228,37); use=FStar.Monotonic.Heap.fsti(228,19-228,37)
(FStar.Monotonic.Heap.unused_in @x0
@x2
@x5
@x4)
)
)

;; def=FStar.Monotonic.Heap.fsti(230,13-231,73); use=FStar.Monotonic.Heap.fsti(230,13-231,73)
(and 
;; def=FStar.Monotonic.Heap.fsti(230,13-230,52); use=FStar.Monotonic.Heap.fsti(230,13-230,52)
(implies 
;; def=FStar.Monotonic.Heap.fsti(230,14-230,29); use=FStar.Monotonic.Heap.fsti(230,14-230,29)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(230,14-230,29); use=FStar.Monotonic.Heap.fsti(230,14-230,29)
(FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x7)
)


;; def=FStar.Monotonic.Heap.fsti(230,35-230,51); use=FStar.Monotonic.Heap.fsti(230,35-230,51)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(230,35-230,51); use=FStar.Monotonic.Heap.fsti(230,35-230,51)
(FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7)
)
)


;; def=FStar.Monotonic.Heap.fsti(231,6-231,73); use=FStar.Monotonic.Heap.fsti(231,6-231,73)
(implies 
;; def=FStar.Monotonic.Heap.fsti(231,7-231,23); use=FStar.Monotonic.Heap.fsti(231,7-231,23)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(231,7-231,23); use=FStar.Monotonic.Heap.fsti(231,7-231,23)
(FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7)
)


;; def=FStar.Monotonic.Heap.fsti(231,28-231,72); use=FStar.Monotonic.Heap.fsti(231,28-231,72)
(or 
;; def=FStar.Monotonic.Heap.fsti(231,29-231,44); use=FStar.Monotonic.Heap.fsti(231,29-231,44)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(231,29-231,44); use=FStar.Monotonic.Heap.fsti(231,29-231,44)
(FStar.Monotonic.Heap.contains @x1
@x3
@x4
@x7)
)


;; def=FStar.Monotonic.Heap.fsti(231,48-231,71); use=FStar.Monotonic.Heap.fsti(231,48-231,71)
(= (FStar.Monotonic.Heap.addr_of @x1
@x3
@x7)
(FStar.Monotonic.Heap.addr_of @x0
@x2
@x5))
)
)
)
)
 

:pattern ((FStar.Monotonic.Heap.contains @x1
@x3
(FStar.Monotonic.Heap.upd @x0
@x2
@x4
@x5
@x6)
@x7))
:qid lemma_FStar.Monotonic.Heap.lemma_unused_upd_contains))
:named lemma_FStar.Monotonic.Heap.lemma_unused_upd_contains))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_sel_upd2
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_sel_upd2; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
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
(HasType @x7
@x1)

;; def=FStar.Monotonic.Heap.fsti(202,19-202,45); use=FStar.Monotonic.Heap.fsti(202,19-202,45)
(not (= (FStar.Monotonic.Heap.addr_of @x0
@x2
@x5)
(FStar.Monotonic.Heap.addr_of @x1
@x3
@x6)))
)

;; def=FStar.Monotonic.Heap.fsti(203,19-203,52); use=FStar.Monotonic.Heap.fsti(203,19-203,52)
(= (FStar.Monotonic.Heap.sel @x0
@x2
(FStar.Monotonic.Heap.upd @x1
@x3
@x4
@x6
@x7)
@x5)
(FStar.Monotonic.Heap.sel @x0
@x2
@x4
@x5))
)
 

:pattern ((FStar.Monotonic.Heap.sel @x0
@x2
(FStar.Monotonic.Heap.upd @x1
@x3
@x4
@x6
@x7)
@x5))
:qid lemma_FStar.Monotonic.Heap.lemma_sel_upd2))
:named lemma_FStar.Monotonic.Heap.lemma_sel_upd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_sel_upd1
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_sel_upd1; Namespace FStar.Monotonic.Heap
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
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
@x0)
(HasType @x5
(FStar.Monotonic.Heap.mref @x0
@x1))

;; def=FStar.Monotonic.Heap.fsti(197,20-197,43); use=FStar.Monotonic.Heap.fsti(197,20-197,43)
(= (FStar.Monotonic.Heap.addr_of @x0
@x1
@x3)
(FStar.Monotonic.Heap.addr_of @x0
@x1
@x5))


;; def=FStar.Monotonic.Heap.fsti(197,47-197,67); use=FStar.Monotonic.Heap.fsti(197,47-197,67)
(= (FStar.Monotonic.Heap.is_mm @x0
@x1
@x3)
(FStar.Monotonic.Heap.is_mm @x0
@x1
@x5))
)

;; def=FStar.Monotonic.Heap.fsti(198,19-198,45); use=FStar.Monotonic.Heap.fsti(198,19-198,45)
(= (FStar.Monotonic.Heap.sel @x0
@x1
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4)
@x5)
@x4)
)
 

:pattern ((FStar.Monotonic.Heap.sel @x0
@x1
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4)
@x5))
:qid lemma_FStar.Monotonic.Heap.lemma_sel_upd1))
:named lemma_FStar.Monotonic.Heap.lemma_sel_upd1))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Monotonic.Heap.lemma_contains_upd_modifies
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_contains_upd_modifies; Namespace FStar.Monotonic.Heap
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
@x0)

;; def=FStar.Monotonic.Heap.fsti(247,19-247,35); use=FStar.Monotonic.Heap.fsti(247,19-247,35)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(247,19-247,35); use=FStar.Monotonic.Heap.fsti(247,19-247,35)
(FStar.Monotonic.Heap.contains @x0
@x1
@x2
@x3)
)
)

;; def=FStar.Monotonic.Heap.fsti(248,19-248,69); use=FStar.Monotonic.Heap.fsti(248,19-248,69)
(Valid 
;; def=FStar.Monotonic.Heap.fsti(248,19-248,69); use=FStar.Monotonic.Heap.fsti(248,19-248,69)
(FStar.Monotonic.Heap.modifies (FStar.Set.singleton Prims.nat
(FStar.Monotonic.Heap.addr_of @x0
@x1
@x3))
@x2
(FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4))
)
)
 

:pattern ((FStar.Monotonic.Heap.upd @x0
@x1
@x2
@x3
@x4))
:qid lemma_FStar.Monotonic.Heap.lemma_contains_upd_modifies))
:named lemma_FStar.Monotonic.Heap.lemma_contains_upd_modifies))
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
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_UpdDomain
;;; Fact-ids: Name FStar.Map.lemma_UpdDomain; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))

;; def=FStar.Map.fsti(153,17-153,84); use=FStar.Map.fsti(153,17-153,84)
(Valid 
;; def=FStar.Map.fsti(153,17-153,84); use=FStar.Map.fsti(153,17-153,84)
(FStar.Set.equal @x0
(FStar.Map.domain @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4))
(FStar.Set.union @x0
(FStar.Map.domain @x0
@x1
@x2)
(FStar.Set.singleton @x0
@x3)))
)
)
 

:pattern ((FStar.Map.domain @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)))
:qid lemma_FStar.Map.lemma_UpdDomain))
:named lemma_FStar.Map.lemma_UpdDomain))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_SelUpd2
;;; Fact-ids: Name FStar.Map.lemma_SelUpd2; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1)

;; def=FStar.Map.fsti(100,51-100,58); use=FStar.Map.fsti(100,51-100,58)
(not 
;; def=FStar.Map.fsti(100,51-100,58); use=FStar.Map.fsti(100,51-100,58)
(= @x4
@x3)
)
)

;; def=FStar.Map.fsti(100,63-100,94); use=FStar.Map.fsti(100,63-100,94)
(= (FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3)
(FStar.Map.sel @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3))
:qid lemma_FStar.Map.lemma_SelUpd2))
:named lemma_FStar.Map.lemma_SelUpd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_SelUpd1
;;; Fact-ids: Name FStar.Map.lemma_SelUpd1; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x1))

;; def=FStar.Map.fsti(96,50-96,74); use=FStar.Map.fsti(96,50-96,74)
(= (FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
@x3)
@x4)
)
 

:pattern ((FStar.Map.sel @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x4)
@x3))
:qid lemma_FStar.Map.lemma_SelUpd1))
:named lemma_FStar.Map.lemma_SelUpd1))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_InDomUpd2
;;; Fact-ids: Name FStar.Map.lemma_InDomUpd2; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1)

;; def=FStar.Map.fsti(128,53-128,60); use=FStar.Map.fsti(128,53-128,60)
(not 
;; def=FStar.Map.fsti(128,53-128,60); use=FStar.Map.fsti(128,53-128,60)
(= @x4
@x3)
)
)

;; def=FStar.Map.fsti(128,65-128,106); use=FStar.Map.fsti(128,65-128,106)
(= (FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3)
(FStar.Map.contains @x0
@x1
@x2
@x3))
)
 

:pattern ((FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x4
@x5)
@x3))
:qid lemma_FStar.Map.lemma_InDomUpd2))
:named lemma_FStar.Map.lemma_InDomUpd2))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_InDomUpd1
;;; Fact-ids: Name FStar.Map.lemma_InDomUpd1; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0)
(HasType @x4
@x0)
(HasType @x5
@x1))

;; def=FStar.Map.fsti(124,52-124,106); use=FStar.Map.fsti(124,52-124,106)
(= (FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x5)
@x4)
(Prims.op_BarBar (Prims.op_Equality @x0
@x3
@x4)
(FStar.Map.contains @x0
@x1
@x2
@x4)))
)
 

:pattern ((FStar.Map.contains @x0
@x1
(FStar.Map.upd @x0
@x1
@x2
@x3
@x5)
@x4))
:qid lemma_FStar.Map.lemma_InDomUpd1))
:named lemma_FStar.Map.lemma_InDomUpd1))
;;;;;;;;;;;;;;;;Lemma: FStar.Map.lemma_ContainsDom
;;; Fact-ids: Name FStar.Map.lemma_ContainsDom; Namespace FStar.Map
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Prims.eqtype)
(HasType @x1
Tm_type)
(HasType @x2
(FStar.Map.t @x0
@x1))
(HasType @x3
@x0))

;; def=FStar.Map.fsti(148,33-148,68); use=FStar.Map.fsti(148,33-148,68)
(= (FStar.Map.contains @x0
@x1
@x2
@x3)
(FStar.Set.mem @x0
@x3
(FStar.Map.domain @x0
@x1
@x2)))
)
 

:pattern ((FStar.Map.contains @x0
@x1
@x2
@x3))

:pattern ((FStar.Set.mem @x0
@x3
(FStar.Map.domain @x0
@x1
@x2)))
:qid lemma_FStar.Map.lemma_ContainsDom))
:named lemma_FStar.Map.lemma_ContainsDom))
;;;;;;;;;;;;;;;;Lemma: FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro
;;; Fact-ids: Name FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro; Namespace FStar.HyperStack.ST
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(140,2-140,54); use=FStar.HyperStack.ST.fsti(158,20-158,36)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(128,19-128,36); use=FStar.HyperStack.ST.fsti(158,37-158,59)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_stack_region @x2))


;; def=FStar.HyperStack.ST.fsti(124,19-124,41); use=FStar.HyperStack.ST.fsti(158,37-158,59)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))


;; def=FStar.HyperStack.ST.fsti(124,45-124,67); use=FStar.HyperStack.ST.fsti(158,37-158,59)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)

;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(158,20-158,36)
(Valid 
;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(158,20-158,36)
(FStar.Monotonic.Heap.equal_dom (FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2)
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)
)
 
;;no pats
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro.1))
)

;; def=FStar.HyperStack.ST.fsti(158,78-158,112); use=FStar.HyperStack.ST.fsti(158,78-158,112)
(Valid 
;; def=FStar.HyperStack.ST.fsti(158,78-158,112); use=FStar.HyperStack.ST.fsti(158,78-158,112)
(FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1)
)
)
 

:pattern ((FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1))
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro))
:named lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro))
;;;;;;;;;;;;;;;;Lemma: FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim
;;; Fact-ids: Name FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim; Namespace FStar.HyperStack.ST
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(161,20-161,52); use=FStar.HyperStack.ST.fsti(161,20-161,52)
(Valid 
;; def=FStar.HyperStack.ST.fsti(161,20-161,52); use=FStar.HyperStack.ST.fsti(161,20-161,52)
(FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1)
)


;; def=FStar.HyperStack.ST.fsti(128,19-128,36); use=FStar.HyperStack.ST.fsti(161,56-161,78)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_stack_region @x2))


;; def=FStar.HyperStack.ST.fsti(124,19-124,41); use=FStar.HyperStack.ST.fsti(161,56-161,78)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))


;; def=FStar.HyperStack.ST.fsti(124,45-124,67); use=FStar.HyperStack.ST.fsti(161,56-161,78)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)

;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(161,100-161,114)
(Valid 
;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(161,100-161,114)
(FStar.Monotonic.Heap.equal_dom (FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2)
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)
)
 

:pattern ((FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1) (FStar.Monotonic.HyperStack.is_stack_region @x2) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))

:pattern ((FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1) (FStar.Monotonic.HyperStack.is_stack_region @x2) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim))
:named lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim))
;;;;;;;;;;;;;;;;Lemma: FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro
;;; Fact-ids: Name FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro; Namespace FStar.HyperStack.ST
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(140,2-140,54); use=FStar.HyperStack.ST.fsti(150,20-150,36)
(forall ((@x2 Term))
 (! (implies (and (HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(124,19-124,41); use=FStar.HyperStack.ST.fsti(150,37-150,53)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))


;; def=FStar.HyperStack.ST.fsti(124,45-124,67); use=FStar.HyperStack.ST.fsti(150,37-150,53)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)

;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(150,20-150,36)
(Valid 
;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(150,20-150,36)
(FStar.Monotonic.Heap.equal_dom (FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2)
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)
)
 
;;no pats
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro.1))
)

;; def=FStar.HyperStack.ST.fsti(150,72-150,104); use=FStar.HyperStack.ST.fsti(150,72-150,104)
(Valid 
;; def=FStar.HyperStack.ST.fsti(150,72-150,104); use=FStar.HyperStack.ST.fsti(150,72-150,104)
(FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1)
)
)
 

:pattern ((FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1))
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro))
:named lemma_FStar.HyperStack.ST.lemma_same_refs_in_all_regions_intro))
;;;;;;;;;;;;;;;;Lemma: FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim
;;; Fact-ids: Name FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim; Namespace FStar.HyperStack.ST
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))

;; def=FStar.HyperStack.ST.fsti(153,20-153,50); use=FStar.HyperStack.ST.fsti(153,20-153,50)
(Valid 
;; def=FStar.HyperStack.ST.fsti(153,20-153,50); use=FStar.HyperStack.ST.fsti(153,20-153,50)
(FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1)
)


;; def=FStar.HyperStack.ST.fsti(124,19-124,41); use=FStar.HyperStack.ST.fsti(153,54-153,70)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))


;; def=FStar.HyperStack.ST.fsti(124,45-124,67); use=FStar.HyperStack.ST.fsti(153,54-153,70)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)

;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(153,92-153,106)
(Valid 
;; def=FStar.HyperStack.ST.fsti(120,4-120,70); use=FStar.HyperStack.ST.fsti(153,92-153,106)
(FStar.Monotonic.Heap.equal_dom (FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2)
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
)
)
 

:pattern ((FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x2))

:pattern ((FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1) (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)
@x2))
:qid lemma_FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim))
:named lemma_FStar.HyperStack.ST.lemma_same_refs_in_all_regions_elim))
;;;;;;;;;;;;;;;;Lemma: FStar.HyperStack.ST.lemma_equal_domains_trans
;;; Fact-ids: Name FStar.HyperStack.ST.lemma_equal_domains_trans; Namespace FStar.HyperStack.ST
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem)
(HasType @x2
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(191,20-191,39); use=FStar.HyperStack.ST.fsti(191,20-191,39)
(Valid 
;; def=FStar.HyperStack.ST.fsti(191,20-191,39); use=FStar.HyperStack.ST.fsti(191,20-191,39)
(FStar.HyperStack.ST.equal_domains @x0
@x1)
)


;; def=FStar.HyperStack.ST.fsti(191,43-191,62); use=FStar.HyperStack.ST.fsti(191,43-191,62)
(Valid 
;; def=FStar.HyperStack.ST.fsti(191,43-191,62); use=FStar.HyperStack.ST.fsti(191,43-191,62)
(FStar.HyperStack.ST.equal_domains @x1
@x2)
)
)

;; def=FStar.HyperStack.ST.fsti(192,19-192,40); use=FStar.HyperStack.ST.fsti(192,19-192,40)
(Valid 
;; def=FStar.HyperStack.ST.fsti(192,19-192,40); use=FStar.HyperStack.ST.fsti(192,19-192,40)
(FStar.HyperStack.ST.equal_domains @x0
@x2)
)
)
 

:pattern ((FStar.HyperStack.ST.equal_domains @x0
@x1) (FStar.HyperStack.ST.equal_domains @x1
@x2))
:qid lemma_FStar.HyperStack.ST.lemma_equal_domains_trans))
:named lemma_FStar.HyperStack.ST.lemma_equal_domains_trans))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_870e61e1362ee02b904fb2aa631e959a
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! (HasType Tm_arrow_870e61e1362ee02b904fb2aa631e959a
Tm_type)
:named kinding_Tm_arrow_870e61e1362ee02b904fb2aa631e959a))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_1a6db055683d4a5b8a00786676e339b5
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! (HasType Tm_arrow_1a6db055683d4a5b8a00786676e339b5
Tm_type)
:named kinding_Tm_arrow_1a6db055683d4a5b8a00786676e339b5))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! (and (IsTotFun InlineLet.local_pkg@tok)

;; def=InlineLet.fst(30,5-30,14); use=InlineLet.fst(30,5-30,14)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (InlineLet.local_pkg @x0)
Tm_type))
 

:pattern ((InlineLet.local_pkg @x0))
:qid kinding_InlineLet.local_pkg@tok))
)
:named kinding_InlineLet.local_pkg@tok))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! (and (IsTotFun FStar.Monotonic.HyperStack.mreference_@tok)

;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT FStar.Monotonic.HyperStack.mreference_@tok
@x0))
 

:pattern ((ApplyTT FStar.Monotonic.HyperStack.mreference_@tok
@x0))
:qid kinding_FStar.Monotonic.HyperStack.mreference_@tok))


;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0)))
(HasType (FStar.Monotonic.HyperStack.mreference_ @x0
@x1)
Tm_type))
 

:pattern ((FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
:qid kinding_FStar.Monotonic.HyperStack.mreference_@tok.1))
)
:named kinding_FStar.Monotonic.HyperStack.mreference_@tok))
;;;;;;;;;;;;;;;;interpretation_Tm_abs_568747eb5009c1dec504311dee989dc2
;;; Fact-ids: Name FStar.Heap.trivial_rel; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(20,60-20,64); use=FStar.Heap.fst(20,60-20,64)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (Tm_abs_568747eb5009c1dec504311dee989dc2 @x2)
@x0)
@x1)
Prims.l_True)
 

:pattern ((ApplyTT (ApplyTT (Tm_abs_568747eb5009c1dec504311dee989dc2 @x2)
@x0)
@x1))
:qid interpretation_Tm_abs_568747eb5009c1dec504311dee989dc2))

:named interpretation_Tm_abs_568747eb5009c1dec504311dee989dc2))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_d58d7e3b4b6ce757231e9089061120a0
;;; Fact-ids: Name FStar.Monotonic.HyperStack.upd; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(296,44-296,91); use=FStar.Monotonic.HyperStack.fsti(296,44-296,91)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x0
@x1
@x2)))
(Valid (Prims.hasEq (FStar.Monotonic.HyperStack.mreference @x1
@x2))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d58d7e3b4b6ce757231e9089061120a0 @x0
@x1
@x2))))
:qid haseqTm_refine_d58d7e3b4b6ce757231e9089061120a0))

:named haseqTm_refine_d58d7e3b4b6ce757231e9089061120a0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c1ce603279aac7a7c378033ea416a653
;;; Fact-ids: Name FStar.Monotonic.HyperStack.sid; Namespace FStar.Monotonic.HyperStack
(assert (! (iff (Valid (Prims.hasEq Tm_refine_c1ce603279aac7a7c378033ea416a653))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_c1ce603279aac7a7c378033ea416a653))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_afd51579b90d50ea23e03b743a1fa001
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_afd51579b90d50ea23e03b743a1fa001))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_afd51579b90d50ea23e03b743a1fa001))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a6918a83312e51579e26340a47646253
;;; Fact-ids: Name FStar.HyperStack.ST.d_hrid; Namespace FStar.HyperStack.ST
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a6918a83312e51579e26340a47646253))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_a6918a83312e51579e26340a47646253))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_6c5072d4c9562dd38fd2703ecfb013df
;;; Fact-ids: Name FStar.HyperStack.ST.erid; Namespace FStar.HyperStack.ST
(assert (! (iff (Valid (Prims.hasEq Tm_refine_6c5072d4c9562dd38fd2703ecfb013df))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_6c5072d4c9562dd38fd2703ecfb013df))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4deaad73cd92bc948bb28924e869c4ab
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(257,2-257,73); use=FStar.Monotonic.HyperStack.fsti(257,2-257,73)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x0
@x1)))
(Valid (Prims.hasEq (FStar.Monotonic.HyperStack.mreference @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x0
@x1))))
:qid haseqTm_refine_4deaad73cd92bc948bb28924e869c4ab))

:named haseqTm_refine_4deaad73cd92bc948bb28924e869c4ab))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c
;;; Fact-ids: Name FStar.Monotonic.HyperStack.pop; Namespace FStar.Monotonic.HyperStack
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))
(Valid (Prims.hasEq FStar.Monotonic.HyperStack.mem)))
:named haseqTm_refine_4a9f5a632ccb67c4adcfd65a1dab0c7c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_414d0a9f578ab0048252f8c8f552b99f
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_365abba901205a01d0ef28ebf2198c47
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.root; Namespace FStar.Monotonic.HyperHeap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_365abba901205a01d0ef28ebf2198c47))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_365abba901205a01d0ef28ebf2198c47))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.parent; Namespace FStar.Monotonic.HyperHeap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_1cc6c9f8558dddb337b6c1187115cd6a))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_1cc6c9f8558dddb337b6c1187115cd6a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1a1278f1aecd37594ba20d888b7fd230
;;; Fact-ids: Name FStar.HyperStack.ST.mref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(288,2-289,66); use=FStar.HyperStack.ST.fsti(288,2-289,66)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Monotonic.HyperStack.mref @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x0
@x1))))
:qid haseqTm_refine_1a1278f1aecd37594ba20d888b7fd230))

:named haseqTm_refine_1a1278f1aecd37594ba20d888b7fd230))
;;;;;;;;;;;;;;;;haseq for Tm_refine_085b55aa6b726cf07dbab52057ffb51c
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.rid_tail; Namespace FStar.Monotonic.HyperHeap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_085b55aa6b726cf07dbab52057ffb51c))
(Valid (Prims.hasEq (FStar.Monotonic.HyperHeap.rid Dummy_value))))
:named haseqTm_refine_085b55aa6b726cf07dbab52057ffb51c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_05e15190c946858f68c69156f585f95a
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! (iff (Valid (Prims.hasEq Tm_refine_05e15190c946858f68c69156f585f95a))
(Valid (Prims.hasEq FStar.Monotonic.HyperStack.mem_)))
:named haseqTm_refine_05e15190c946858f68c69156f585f95a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4
;;; Fact-ids: Name FStar.HyperStack.ST.mreference; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(282,2-283,72); use=FStar.HyperStack.ST.fsti(282,2-283,72)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x0
@x1)))
(Valid (Prims.hasEq (FStar.Monotonic.HyperStack.mreference @x0
@x1))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x0
@x1))))
:qid haseqTm_refine_003cbb363565c5358e7ed8a8d7dba6d4))

:named haseqTm_refine_003cbb363565c5358e7ed8a8d7dba6d4))
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
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (HasType Prims.pos
Tm_type)
:named function_token_typing_Prims.pos))
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
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem'; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType FStar.Monotonic.HyperStack.mem_
Tm_type)
:named function_token_typing_FStar.Monotonic.HyperStack.mem_))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! (HasType FStar.Monotonic.HyperStack.mem
Tm_type)
:named function_token_typing_FStar.Monotonic.HyperStack.mem))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.hmap; Namespace FStar.Monotonic.HyperHeap
(assert (! (HasType FStar.Monotonic.HyperHeap.hmap
Tm_type)
:named function_token_typing_FStar.Monotonic.HyperHeap.hmap))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Monotonic.Heap.heap; Namespace FStar.Monotonic.Heap
(assert (! (HasType FStar.Monotonic.Heap.heap
Tm_type)
:named function_token_typing_FStar.Monotonic.Heap.heap))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! (HasType FStar.HyperStack.ST.mem_predicate
Tm_type)
:named function_token_typing_FStar.HyperStack.ST.mem_predicate))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,4-22,20); use=FStar.Heap.fst(22,4-22,20)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType FStar.Heap.trivial_preorder@tok
Tm_arrow_1a6db055683d4a5b8a00786676e339b5))

;; def=FStar.Heap.fst(22,4-22,20); use=FStar.Heap.fst(22,4-22,20)
(forall ((@x1 Term))
 (! (= (ApplyTT FStar.Heap.trivial_preorder@tok
@x1)
(FStar.Heap.trivial_preorder @x1))
 

:pattern ((FStar.Heap.trivial_preorder @x1))
:qid function_token_typing_FStar.Heap.trivial_preorder.1))
)
 

:pattern ((ApplyTT @x0
FStar.Heap.trivial_preorder@tok))
:qid function_token_typing_FStar.Heap.trivial_preorder))

:named function_token_typing_FStar.Heap.trivial_preorder))
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
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(30,5-30,14); use=InlineLet.fst(30,5-30,14)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(InlineLet.local_pkg @x2))
(and (is-InlineLet.LocalPkg @x1)
(= @x2
(InlineLet.LocalPkg_a @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(InlineLet.local_pkg @x2)))
:qid fuel_guarded_inversion_InlineLet.local_pkg))

:named fuel_guarded_inversion_InlineLet.local_pkg))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mreference_ @x2
@x3))
(and (is-FStar.Monotonic.HyperStack.MkRef @x1)
(= @x2
(FStar.Monotonic.HyperStack.MkRef_a @x1))
(= @x3
(FStar.Monotonic.HyperStack.MkRef_rel @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(FStar.Monotonic.HyperStack.mreference_ @x2
@x3)))
:qid fuel_guarded_inversion_FStar.Monotonic.HyperStack.mreference_))

:named fuel_guarded_inversion_FStar.Monotonic.HyperStack.mreference_))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! (= 182
(Term_constr_id InlineLet.local_pkg@tok))
:named fresh_token_InlineLet.local_pkg@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Pervasives.Native.tuple2; Namespace FStar.Pervasives.Native; Name FStar.Pervasives.Native.Mktuple2; Namespace FStar.Pervasives.Native
(assert (! (= 126
(Term_constr_id FStar.Pervasives.Native.tuple2@tok))
:named fresh_token_FStar.Pervasives.Native.tuple2@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! (= 164
(Term_constr_id FStar.Monotonic.HyperStack.mreference_@tok))
:named fresh_token_FStar.Monotonic.HyperStack.mreference_@tok))
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
;;;;;;;;;;;;;;;;Equation for Prims.prop
;;; Fact-ids: Name Prims.prop; Namespace Prims
(assert (! (= Prims.prop
Tm_refine_73f210ca6e0061ed4a3150f69b8f33bf)
:named equation_Prims.prop))
;;;;;;;;;;;;;;;;Equation for Prims.pos
;;; Fact-ids: Name Prims.pos; Namespace Prims
(assert (! (= Prims.pos
Tm_refine_774ba3f728d91ead8ef40be66c9802e5)
:named equation_Prims.pos))
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
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.upd
;;; Fact-ids: Name FStar.Monotonic.HyperStack.upd; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(296,4-296,7); use=FStar.Monotonic.HyperStack.fsti(296,4-296,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (= (FStar.Monotonic.HyperStack.upd @x0
@x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mk_mem (FStar.Monotonic.HyperStack.get_rid_ctr @x2)
(FStar.Map.upd (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x2)
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3)
(FStar.Monotonic.Heap.upd @x0
@x1
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x2)
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3))
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x3)
@x4))
(FStar.Monotonic.HyperStack.get_tip @x2)))
 

:pattern ((FStar.Monotonic.HyperStack.upd @x0
@x1
@x2
@x3
@x4))
:qid equation_FStar.Monotonic.HyperStack.upd))

:named equation_FStar.Monotonic.HyperStack.upd))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.sel
;;; Fact-ids: Name FStar.Monotonic.HyperStack.sel; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(293,4-293,7); use=FStar.Monotonic.HyperStack.fsti(293,4-293,7)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.sel @x0
@x1
@x2
@x3)
(FStar.Monotonic.Heap.sel @x0
@x1
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x2)
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3))
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x3)))
 

:pattern ((FStar.Monotonic.HyperStack.sel @x0
@x1
@x2
@x3))
:qid equation_FStar.Monotonic.HyperStack.sel))

:named equation_FStar.Monotonic.HyperStack.sel))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.poppable
;;; Fact-ids: Name FStar.Monotonic.HyperStack.poppable; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(189,4-189,12); use=FStar.Monotonic.HyperStack.fsti(189,4-189,12)
(forall ((@x0 Term))
 (! (= (Valid (FStar.Monotonic.HyperStack.poppable @x0))

;; def=FStar.Monotonic.HyperStack.fsti(189,23-189,41); use=FStar.Monotonic.HyperStack.fsti(189,23-189,41)
(not 
;; def=FStar.Monotonic.HyperStack.fsti(189,23-189,41); use=FStar.Monotonic.HyperStack.fsti(189,23-189,41)
(= (FStar.Monotonic.HyperStack.get_tip @x0)
(FStar.Monotonic.HyperHeap.root Dummy_value))
)
)
 

:pattern ((FStar.Monotonic.HyperStack.poppable @x0))
:qid equation_FStar.Monotonic.HyperStack.poppable))

:named equation_FStar.Monotonic.HyperStack.poppable))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.mreference
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(221,4-221,14); use=FStar.Monotonic.HyperStack.fsti(221,4-221,14)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Monotonic.HyperStack.mreference @x0
@x1)
(FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
 

:pattern ((FStar.Monotonic.HyperStack.mreference @x0
@x1))
:qid equation_FStar.Monotonic.HyperStack.mreference))

:named equation_FStar.Monotonic.HyperStack.mreference))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.mref
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mref; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(256,4-256,8); use=FStar.Monotonic.HyperStack.fsti(256,4-256,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Monotonic.HyperStack.mref @x0
@x1)
(Tm_refine_4deaad73cd92bc948bb28924e869c4ab @x0
@x1))
 

:pattern ((FStar.Monotonic.HyperStack.mref @x0
@x1))
:qid equation_FStar.Monotonic.HyperStack.mref))

:named equation_FStar.Monotonic.HyperStack.mref))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.mk_mreference
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mk_mreference; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(227,4-227,17); use=FStar.Monotonic.HyperStack.fsti(227,4-227,17)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.mk_mreference @x0
@x1
@x2
@x3)
(FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
 

:pattern ((FStar.Monotonic.HyperStack.mk_mreference @x0
@x1
@x2
@x3))
:qid equation_FStar.Monotonic.HyperStack.mk_mreference))

:named equation_FStar.Monotonic.HyperStack.mk_mreference))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.mem
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mem; Namespace FStar.Monotonic.HyperStack
(assert (! (= FStar.Monotonic.HyperStack.mem
Tm_refine_05e15190c946858f68c69156f585f95a)
:named equation_FStar.Monotonic.HyperStack.mem))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.live_region
;;; Fact-ids: Name FStar.Monotonic.HyperStack.live_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(273,4-273,15); use=FStar.Monotonic.HyperStack.fsti(273,4-273,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.Monotonic.HyperStack.live_region @x0
@x1)
(FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0)
@x1))
 

:pattern ((FStar.Monotonic.HyperStack.live_region @x0
@x1))
:qid equation_FStar.Monotonic.HyperStack.live_region))

:named equation_FStar.Monotonic.HyperStack.live_region))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(87,4-87,26); use=FStar.Monotonic.HyperStack.fsti(87,4-87,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Valid (FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2))

;; def=FStar.Monotonic.HyperStack.fsti(88,4-93,22); use=FStar.Monotonic.HyperStack.fsti(88,4-93,22)
(and (not (BoxBool_proj_0 (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperHeap.root Dummy_value))))

;; def=FStar.Monotonic.HyperStack.fsti(89,4-89,18); use=FStar.Monotonic.HyperStack.fsti(89,4-89,18)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
@x0
(FStar.Monotonic.HyperHeap.root Dummy_value)))


;; def=FStar.Monotonic.HyperStack.fsti(90,4-90,18); use=FStar.Monotonic.HyperStack.fsti(90,4-90,18)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(90,4-90,18); use=FStar.Monotonic.HyperStack.fsti(90,4-90,18)
(FStar.Monotonic.HyperStack.is_tip @x2
@x0)
)


;; def=FStar.Monotonic.HyperStack.fsti(91,4-91,19); use=FStar.Monotonic.HyperStack.fsti(91,4-91,19)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(91,4-91,19); use=FStar.Monotonic.HyperStack.fsti(91,4-91,19)
(FStar.Monotonic.HyperStack.map_invariant @x0)
)


;; def=FStar.Monotonic.HyperStack.fsti(92,4-92,21); use=FStar.Monotonic.HyperStack.fsti(92,4-92,21)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(92,4-92,21); use=FStar.Monotonic.HyperStack.fsti(92,4-92,21)
(FStar.Monotonic.HyperStack.downward_closed @x0)
)


;; def=FStar.Monotonic.HyperStack.fsti(93,4-93,22); use=FStar.Monotonic.HyperStack.fsti(93,4-93,22)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(93,4-93,22); use=FStar.Monotonic.HyperStack.fsti(93,4-93,22)
(FStar.Monotonic.HyperStack.rid_ctr_pred @x0
@x1)
)
)
)
 

:pattern ((FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2))
:qid equation_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))

:named equation_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.is_tip
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(82,4-82,10); use=FStar.Monotonic.HyperStack.fsti(82,4-82,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.Monotonic.HyperStack.is_tip @x0
@x1))

;; def=FStar.Monotonic.HyperStack.fsti(83,2-85,15); use=FStar.Monotonic.HyperStack.fsti(83,2-85,15)
(and 
;; def=FStar.Monotonic.HyperStack.fsti(83,2-83,37); use=FStar.Monotonic.HyperStack.fsti(83,2-83,37)
(or 
;; def=FStar.Monotonic.HyperStack.fsti(83,3-83,22); use=FStar.Monotonic.HyperStack.fsti(83,3-83,22)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_stack_region @x0))


;; def=FStar.Monotonic.HyperStack.fsti(83,26-83,36); use=FStar.Monotonic.HyperStack.fsti(83,26-83,36)
(= @x0
(FStar.Monotonic.HyperHeap.root Dummy_value))
)


;; def=FStar.Monotonic.HyperStack.fsti(84,2-84,15); use=FStar.Monotonic.HyperStack.fsti(84,2-84,15)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
@x1
@x0))


;; def=FStar.Monotonic.HyperStack.fsti(85,2-85,15); use=FStar.Monotonic.HyperStack.fsti(85,2-85,15)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(85,2-85,15); use=FStar.Monotonic.HyperStack.fsti(85,2-85,15)
(FStar.Monotonic.HyperStack.tip_top @x0
@x1)
)
)
)
 

:pattern ((FStar.Monotonic.HyperStack.is_tip @x0
@x1))
:qid equation_FStar.Monotonic.HyperStack.is_tip))

:named equation_FStar.Monotonic.HyperStack.is_tip))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.is_stack_region
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_stack_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(28,4-28,19); use=FStar.Monotonic.HyperStack.fsti(28,4-28,19)
(forall ((@x0 Term))
 (! (= (FStar.Monotonic.HyperStack.is_stack_region @x0)
(Prims.op_GreaterThan (FStar.Monotonic.HyperHeap.color @x0)
(BoxInt 0)))
 

:pattern ((FStar.Monotonic.HyperStack.is_stack_region @x0))
:qid equation_FStar.Monotonic.HyperStack.is_stack_region))

:named equation_FStar.Monotonic.HyperStack.is_stack_region))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.is_mm
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_mm; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(245,4-245,9); use=FStar.Monotonic.HyperStack.fsti(245,4-245,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Monotonic.HyperStack.is_mm @x0
@x1
@x2)
(FStar.Monotonic.Heap.is_mm @x0
@x1
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x2)))
 

:pattern ((FStar.Monotonic.HyperStack.is_mm @x0
@x1
@x2))
:qid equation_FStar.Monotonic.HyperStack.is_mm))

:named equation_FStar.Monotonic.HyperStack.is_mm))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.is_heap_color
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_heap_color; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(29,4-29,17); use=FStar.Monotonic.HyperStack.fsti(29,4-29,17)
(forall ((@x0 Term))
 (! (= (FStar.Monotonic.HyperStack.is_heap_color @x0)
(Prims.op_LessThanOrEqual @x0
(BoxInt 0)))
 

:pattern ((FStar.Monotonic.HyperStack.is_heap_color @x0))
:qid equation_FStar.Monotonic.HyperStack.is_heap_color))

:named equation_FStar.Monotonic.HyperStack.is_heap_color))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.frameOf
;;; Fact-ids: Name FStar.Monotonic.HyperStack.frameOf; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(224,4-224,11); use=FStar.Monotonic.HyperStack.fsti(224,4-224,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2)
(FStar.Monotonic.HyperStack.__proj__MkRef__item__frame @x0
@x1
@x2))
 

:pattern ((FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2))
:qid equation_FStar.Monotonic.HyperStack.frameOf))

:named equation_FStar.Monotonic.HyperStack.frameOf))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.contains_ref_in_its_region
;;; Fact-ids: Name FStar.Monotonic.HyperStack.contains_ref_in_its_region; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(283,4-283,30); use=FStar.Monotonic.HyperStack.fsti(283,4-283,30)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (FStar.Monotonic.HyperStack.contains_ref_in_its_region @x0
@x1
@x2
@x3)
(FStar.Monotonic.Heap.contains @x0
@x1
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x2)
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3))
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x3)))
 

:pattern ((FStar.Monotonic.HyperStack.contains_ref_in_its_region @x0
@x1
@x2
@x3))
:qid equation_FStar.Monotonic.HyperStack.contains_ref_in_its_region))

:named equation_FStar.Monotonic.HyperStack.contains_ref_in_its_region))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperStack.contains
;;; Fact-ids: Name FStar.Monotonic.HyperStack.contains; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(275,4-275,12); use=FStar.Monotonic.HyperStack.fsti(275,4-275,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3))

;; def=FStar.Monotonic.HyperStack.fsti(276,2-277,61); use=FStar.Monotonic.HyperStack.fsti(276,2-277,61)
(and 
;; def=FStar.Monotonic.HyperStack.fsti(276,2-276,27); use=FStar.Monotonic.HyperStack.fsti(276,2-276,27)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.live_region @x2
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3)))


;; def=FStar.Monotonic.HyperStack.fsti(277,2-277,61); use=FStar.Monotonic.HyperStack.fsti(277,2-277,61)
(Valid 
;; def=FStar.Monotonic.HyperStack.fsti(277,2-277,61); use=FStar.Monotonic.HyperStack.fsti(277,2-277,61)
(FStar.Monotonic.Heap.contains @x0
@x1
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x2)
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x3))
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x3))
)
)
)
 

:pattern ((FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3))
:qid equation_FStar.Monotonic.HyperStack.contains))

:named equation_FStar.Monotonic.HyperStack.contains))
;;;;;;;;;;;;;;;;Equation for FStar.Monotonic.HyperHeap.hmap
;;; Fact-ids: Name FStar.Monotonic.HyperHeap.hmap; Namespace FStar.Monotonic.HyperHeap
(assert (! (= FStar.Monotonic.HyperHeap.hmap
(FStar.Map.t (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap))
:named equation_FStar.Monotonic.HyperHeap.hmap))
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
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.ref
;;; Fact-ids: Name FStar.HyperStack.ST.ref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(301,5-301,8); use=FStar.HyperStack.ST.fsti(301,5-301,8)
(forall ((@x0 Term))
 (! (= (FStar.HyperStack.ST.ref @x0)
(FStar.HyperStack.ST.mref @x0
(FStar.Heap.trivial_preorder @x0)))
 

:pattern ((FStar.HyperStack.ST.ref @x0))
:qid equation_FStar.HyperStack.ST.ref))

:named equation_FStar.HyperStack.ST.ref))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.mreference
;;; Fact-ids: Name FStar.HyperStack.ST.mreference; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(281,5-281,15); use=FStar.HyperStack.ST.fsti(281,5-281,15)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.HyperStack.ST.mreference @x0
@x1)
(Tm_refine_003cbb363565c5358e7ed8a8d7dba6d4 @x0
@x1))
 

:pattern ((FStar.HyperStack.ST.mreference @x0
@x1))
:qid equation_FStar.HyperStack.ST.mreference))

:named equation_FStar.HyperStack.ST.mreference))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.mref
;;; Fact-ids: Name FStar.HyperStack.ST.mref; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(287,5-287,9); use=FStar.HyperStack.ST.fsti(287,5-287,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (FStar.HyperStack.ST.mref @x0
@x1)
(Tm_refine_1a1278f1aecd37594ba20d888b7fd230 @x0
@x1))
 

:pattern ((FStar.HyperStack.ST.mref @x0
@x1))
:qid equation_FStar.HyperStack.ST.mref))

:named equation_FStar.HyperStack.ST.mref))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.mem_predicate
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! (= FStar.HyperStack.ST.mem_predicate
Tm_arrow_870e61e1362ee02b904fb2aa631e959a)
:named equation_FStar.HyperStack.ST.mem_predicate))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.is_live_for_rw_in
;;; Fact-ids: Name FStar.HyperStack.ST.is_live_for_rw_in; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(401,4-401,21); use=FStar.HyperStack.ST.fsti(401,4-401,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Valid (FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3))

;; def=FStar.HyperStack.ST.fsti(402,2-405,66); use=FStar.HyperStack.ST.fsti(402,2-405,66)
(or 
;; def=FStar.HyperStack.ST.fsti(402,2-402,18); use=FStar.HyperStack.ST.fsti(402,2-402,18)
(Valid 
;; def=FStar.HyperStack.ST.fsti(402,2-402,18); use=FStar.HyperStack.ST.fsti(402,2-402,18)
(FStar.Monotonic.HyperStack.contains @x0
@x1
@x3
@x2)
)


;; def=FStar.HyperStack.ST.fsti(404,5-405,65); use=FStar.HyperStack.ST.fsti(404,5-405,65)
(and 
;; def=FStar.HyperStack.ST.fsti(404,5-404,55); use=FStar.HyperStack.ST.fsti(404,5-404,55)
(or 
;; def=FStar.HyperStack.ST.fsti(404,6-404,25); use=FStar.HyperStack.ST.fsti(404,6-404,25)
(Valid 
;; def=FStar.HyperStack.ST.fsti(404,6-404,25); use=FStar.HyperStack.ST.fsti(404,6-404,25)
(FStar.HyperStack.ST.is_eternal_region (FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2))
)


;; def=FStar.HyperStack.ST.fsti(404,29-404,54); use=FStar.HyperStack.ST.fsti(404,29-404,54)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.includes (FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x2)
(FStar.Monotonic.HyperStack.get_tip @x3)))
)


;; def=FStar.HyperStack.ST.fsti(405,5-405,65); use=FStar.HyperStack.ST.fsti(405,5-405,65)
(or (not (BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_mm @x0
@x1
@x2)))

;; def=FStar.HyperStack.ST.fsti(405,29-405,64); use=FStar.HyperStack.ST.fsti(405,29-405,64)
(Valid 
;; def=FStar.HyperStack.ST.fsti(405,29-405,64); use=FStar.HyperStack.ST.fsti(405,29-405,64)
(FStar.Monotonic.HyperStack.contains_ref_in_its_region @x0
@x1
@x3
@x2)
)
)
)
)
)
 

:pattern ((FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3))
:qid equation_FStar.HyperStack.ST.is_live_for_rw_in))

:named equation_FStar.HyperStack.ST.is_live_for_rw_in))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.is_freeable_heap_region
;;; Fact-ids: Name FStar.HyperStack.ST.is_freeable_heap_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(563,4-563,27); use=FStar.HyperStack.ST.fsti(563,4-563,27)
(forall ((@x0 Term))
 (! (= (Valid (FStar.HyperStack.ST.is_freeable_heap_region @x0))

;; def=FStar.HyperStack.ST.fsti(564,2-564,87); use=FStar.HyperStack.ST.fsti(564,2-564,87)
(and 
;; def=FStar.HyperStack.ST.fsti(564,2-564,28); use=FStar.HyperStack.ST.fsti(564,2-564,28)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color @x0)))


;; def=FStar.HyperStack.ST.fsti(564,32-564,49); use=FStar.HyperStack.ST.fsti(564,32-564,49)
(BoxBool_proj_0 (FStar.Monotonic.HyperHeap.rid_freeable @x0))


;; def=FStar.HyperStack.ST.fsti(564,53-564,87); use=FStar.HyperStack.ST.fsti(564,53-564,87)
(Valid 
;; def=FStar.HyperStack.ST.fsti(564,53-564,87); use=FStar.HyperStack.ST.fsti(564,53-564,87)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred @x0))
)
)
)
 

:pattern ((FStar.HyperStack.ST.is_freeable_heap_region @x0))
:qid equation_FStar.HyperStack.ST.is_freeable_heap_region))

:named equation_FStar.HyperStack.ST.is_freeable_heap_region))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.is_eternal_region
;;; Fact-ids: Name FStar.HyperStack.ST.is_eternal_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(306,4-306,21); use=FStar.HyperStack.ST.fsti(306,4-306,21)
(forall ((@x0 Term))
 (! (= (Valid (FStar.HyperStack.ST.is_eternal_region @x0))

;; def=FStar.HyperStack.ST.fsti(307,4-307,85); use=FStar.HyperStack.ST.fsti(307,4-307,85)
(and (BoxBool_proj_0 (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color @x0)))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable @x0)))

;; def=FStar.HyperStack.ST.fsti(307,33-307,85); use=FStar.HyperStack.ST.fsti(307,33-307,85)
(or 
;; def=FStar.HyperStack.ST.fsti(307,34-307,46); use=FStar.HyperStack.ST.fsti(307,34-307,46)
(= @x0
(FStar.Monotonic.HyperHeap.root Dummy_value))


;; def=FStar.HyperStack.ST.fsti(307,50-307,84); use=FStar.HyperStack.ST.fsti(307,50-307,84)
(Valid 
;; def=FStar.HyperStack.ST.fsti(307,50-307,84); use=FStar.HyperStack.ST.fsti(307,50-307,84)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred @x0))
)
)
)
)
 

:pattern ((FStar.HyperStack.ST.is_eternal_region @x0))
:qid equation_FStar.HyperStack.ST.is_eternal_region))

:named equation_FStar.HyperStack.ST.is_eternal_region))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.equal_stack_domains
;;; Fact-ids: Name FStar.HyperStack.ST.equal_stack_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(216,4-216,23); use=FStar.HyperStack.ST.fsti(216,4-216,23)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.HyperStack.ST.equal_stack_domains @x0
@x1))

;; def=FStar.HyperStack.ST.fsti(217,2-218,34); use=FStar.HyperStack.ST.fsti(217,2-218,34)
(and 
;; def=FStar.HyperStack.ST.fsti(217,2-217,26); use=FStar.HyperStack.ST.fsti(217,2-217,26)
(= (FStar.Monotonic.HyperStack.get_tip @x0)
(FStar.Monotonic.HyperStack.get_tip @x1))


;; def=FStar.HyperStack.ST.fsti(218,2-218,34); use=FStar.HyperStack.ST.fsti(218,2-218,34)
(Valid 
;; def=FStar.HyperStack.ST.fsti(218,2-218,34); use=FStar.HyperStack.ST.fsti(218,2-218,34)
(FStar.HyperStack.ST.same_refs_in_stack_regions @x0
@x1)
)
)
)
 

:pattern ((FStar.HyperStack.ST.equal_stack_domains @x0
@x1))
:qid equation_FStar.HyperStack.ST.equal_stack_domains))

:named equation_FStar.HyperStack.ST.equal_stack_domains))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.equal_domains
;;; Fact-ids: Name FStar.HyperStack.ST.equal_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(185,4-185,17); use=FStar.HyperStack.ST.fsti(185,4-185,17)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (FStar.HyperStack.ST.equal_domains @x0
@x1))

;; def=FStar.HyperStack.ST.fsti(186,2-188,32); use=FStar.HyperStack.ST.fsti(186,2-188,32)
(and 
;; def=FStar.HyperStack.ST.fsti(186,2-186,26); use=FStar.HyperStack.ST.fsti(186,2-186,26)
(= (FStar.Monotonic.HyperStack.get_tip @x0)
(FStar.Monotonic.HyperStack.get_tip @x1))


;; def=FStar.HyperStack.ST.fsti(187,2-187,65); use=FStar.HyperStack.ST.fsti(187,2-187,65)
(Valid 
;; def=FStar.HyperStack.ST.fsti(187,2-187,65); use=FStar.HyperStack.ST.fsti(187,2-187,65)
(FStar.Set.equal (FStar.Monotonic.HyperHeap.rid Dummy_value)
(FStar.Map.domain (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x0))
(FStar.Map.domain (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x1)))
)


;; def=FStar.HyperStack.ST.fsti(188,2-188,32); use=FStar.HyperStack.ST.fsti(188,2-188,32)
(Valid 
;; def=FStar.HyperStack.ST.fsti(188,2-188,32); use=FStar.HyperStack.ST.fsti(188,2-188,32)
(FStar.HyperStack.ST.same_refs_in_all_regions @x0
@x1)
)
)
)
 

:pattern ((FStar.HyperStack.ST.equal_domains @x0
@x1))
:qid equation_FStar.HyperStack.ST.equal_domains))

:named equation_FStar.HyperStack.ST.equal_domains))
;;;;;;;;;;;;;;;;Equation for FStar.Heap.trivial_rel
;;; Fact-ids: Name FStar.Heap.trivial_rel; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(20,4-20,15); use=FStar.Heap.fst(20,4-20,15)
(forall ((@x0 Term))
 (! (= (FStar.Heap.trivial_rel @x0)
(Tm_abs_568747eb5009c1dec504311dee989dc2 @x0))
 

:pattern ((FStar.Heap.trivial_rel @x0))
:qid equation_FStar.Heap.trivial_rel))

:named equation_FStar.Heap.trivial_rel))
;;;;;;;;;;;;;;;;Equation for FStar.Heap.trivial_preorder
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,4-22,20); use=FStar.Heap.fst(22,4-22,20)
(forall ((@x0 Term))
 (! (= (FStar.Heap.trivial_preorder @x0)
(FStar.Heap.trivial_rel @x0))
 

:pattern ((FStar.Heap.trivial_preorder @x0))
:qid equation_FStar.Heap.trivial_preorder))

:named equation_FStar.Heap.trivial_preorder))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.HyperStack.poppable
;;; Fact-ids: Name FStar.Monotonic.HyperStack.poppable; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(189,4-189,12); use=FStar.Monotonic.HyperStack.fsti(189,4-189,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
FStar.Monotonic.HyperStack.mem)
(Valid (Prims.subtype_of (FStar.Monotonic.HyperStack.poppable @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.HyperStack.poppable @x0)
Prims.unit))
:qid defn_equation_FStar.Monotonic.HyperStack.poppable))

:named defn_equation_FStar.Monotonic.HyperStack.poppable))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(87,4-87,26); use=FStar.Monotonic.HyperStack.fsti(87,4-87,26)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperHeap.hmap)
(HasType @x1
Prims.int)
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value)))
(Valid (Prims.subtype_of (FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip @x0
@x1
@x2)
Prims.unit))
:qid defn_equation_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))

:named defn_equation_FStar.Monotonic.HyperStack.is_wf_with_ctr_and_tip))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.HyperStack.is_tip
;;; Fact-ids: Name FStar.Monotonic.HyperStack.is_tip; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(82,4-82,10); use=FStar.Monotonic.HyperStack.fsti(82,4-82,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x1
FStar.Monotonic.HyperHeap.hmap))
(Valid (Prims.subtype_of (FStar.Monotonic.HyperStack.is_tip @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.HyperStack.is_tip @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.Monotonic.HyperStack.is_tip))

:named defn_equation_FStar.Monotonic.HyperStack.is_tip))
;;;;;;;;;;;;;;;;Prop-typing for FStar.Monotonic.HyperStack.contains
;;; Fact-ids: Name FStar.Monotonic.HyperStack.contains; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(275,4-275,12); use=FStar.Monotonic.HyperStack.fsti(275,4-275,12)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
FStar.Monotonic.HyperStack.mem)
(HasType @x3
(FStar.Monotonic.HyperStack.mreference @x0
@x1)))
(Valid (Prims.subtype_of (FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.Monotonic.HyperStack.contains @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_FStar.Monotonic.HyperStack.contains))

:named defn_equation_FStar.Monotonic.HyperStack.contains))
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
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.is_live_for_rw_in
;;; Fact-ids: Name FStar.HyperStack.ST.is_live_for_rw_in; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(401,4-401,21); use=FStar.HyperStack.ST.fsti(401,4-401,21)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.HyperStack.ST.mreference @x0
@x1))
(HasType @x3
FStar.Monotonic.HyperStack.mem))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.is_live_for_rw_in @x0
@x1
@x2
@x3)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.is_live_for_rw_in))

:named defn_equation_FStar.HyperStack.ST.is_live_for_rw_in))
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.is_freeable_heap_region
;;; Fact-ids: Name FStar.HyperStack.ST.is_freeable_heap_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(563,4-563,27); use=FStar.HyperStack.ST.fsti(563,4-563,27)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.is_freeable_heap_region @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.is_freeable_heap_region @x0)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.is_freeable_heap_region))

:named defn_equation_FStar.HyperStack.ST.is_freeable_heap_region))
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.is_eternal_region
;;; Fact-ids: Name FStar.HyperStack.ST.is_eternal_region; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(306,4-306,21); use=FStar.HyperStack.ST.fsti(306,4-306,21)
(forall ((@x0 Term))
 (! (implies (HasType @x0
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.is_eternal_region @x0)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.is_eternal_region @x0)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.is_eternal_region))

:named defn_equation_FStar.HyperStack.ST.is_eternal_region))
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.equal_stack_domains
;;; Fact-ids: Name FStar.HyperStack.ST.equal_stack_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(216,4-216,23); use=FStar.HyperStack.ST.fsti(216,4-216,23)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.equal_stack_domains @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.equal_stack_domains @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.equal_stack_domains))

:named defn_equation_FStar.HyperStack.ST.equal_stack_domains))
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.equal_domains
;;; Fact-ids: Name FStar.HyperStack.ST.equal_domains; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(185,4-185,17); use=FStar.HyperStack.ST.fsti(185,4-185,17)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
FStar.Monotonic.HyperStack.mem)
(HasType @x1
FStar.Monotonic.HyperStack.mem))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.equal_domains @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.equal_domains @x0
@x1)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.equal_domains))

:named defn_equation_FStar.HyperStack.ST.equal_domains))
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
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79 @x1)))
(HasTypeFuel @u0
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x1)))
 

:pattern ((HasTypeFuel @u0
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x1)))
:qid data_typing_intro_InlineLet.LocalPkg@tok))

:named data_typing_intro_InlineLet.LocalPkg@tok))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(FStar.Preorder.preorder @x1))
(HasTypeFuel @u0
@x3
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasTypeFuel @u0
@x4
(FStar.Monotonic.Heap.mref @x1
@x2)))
(HasTypeFuel @u0
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x1
@x2)))
:qid data_typing_intro_FStar.Monotonic.HyperStack.MkRef@tok))

:named data_typing_intro_FStar.Monotonic.HyperStack.MkRef@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
(Non_total_Tm_arrow_970a61eee5b0245ae9088c9f63c2fb79 @x3))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(InlineLet.LocalPkg @x1
@x2)
(InlineLet.local_pkg @x3)))
:qid data_elim_InlineLet.LocalPkg))

:named data_elim_InlineLet.LocalPkg))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x5
@x6))
(and (HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(FStar.Preorder.preorder @x5))
(HasTypeFuel @u0
@x3
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasTypeFuel @u0
@x4
(FStar.Monotonic.Heap.mref @x5
@x6))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(FStar.Monotonic.HyperStack.MkRef @x1
@x2
@x3
@x4)
(FStar.Monotonic.HyperStack.mreference_ @x5
@x6)))
:qid data_elim_FStar.Monotonic.HyperStack.MkRef))

:named data_elim_FStar.Monotonic.HyperStack.MkRef))
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
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(30,5-30,14); use=InlineLet.fst(30,5-30,14)
(forall ((@x0 Term))
 (! (= 181
(Term_constr_id (InlineLet.local_pkg @x0)))
 

:pattern ((InlineLet.local_pkg @x0))
:qid constructor_distinct_InlineLet.local_pkg))

:named constructor_distinct_InlineLet.local_pkg))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(31,4-31,12); use=InlineLet.fst(31,4-31,12)
(forall ((@x0 Term) (@x1 Term))
 (! (= 198
(Term_constr_id (InlineLet.LocalPkg @x0
@x1)))
 

:pattern ((InlineLet.LocalPkg @x0
@x1))
:qid constructor_distinct_InlineLet.LocalPkg))

:named constructor_distinct_InlineLet.LocalPkg))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= 163
(Term_constr_id (FStar.Monotonic.HyperStack.mreference_ @x0
@x1)))
 

:pattern ((FStar.Monotonic.HyperStack.mreference_ @x0
@x1))
:qid constructor_distinct_FStar.Monotonic.HyperStack.mreference_))

:named constructor_distinct_FStar.Monotonic.HyperStack.mreference_))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(219,4-219,9); use=FStar.Monotonic.HyperStack.fsti(219,4-219,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 170
(Term_constr_id (FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3)))
 

:pattern ((FStar.Monotonic.HyperStack.MkRef @x0
@x1
@x2
@x3))
:qid constructor_distinct_FStar.Monotonic.HyperStack.MkRef))

:named constructor_distinct_FStar.Monotonic.HyperStack.MkRef))
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
;;; Fact-ids: Name InlineLet.local_pkg; Namespace InlineLet; Name InlineLet.LocalPkg; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(30,5-30,14); use=InlineLet.fst(30,5-30,14)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(InlineLet.local_pkg @x2))
(= (InlineLet.local_pkg @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(InlineLet.local_pkg @x2)))
:qid InlineLet_pretyping_22398273f512763bdce168a9ceeceae8))

:named InlineLet_pretyping_22398273f512763bdce168a9ceeceae8))
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
;;; Fact-ids: Name FStar.Monotonic.HyperStack.mreference'; Namespace FStar.Monotonic.HyperStack; Name FStar.Monotonic.HyperStack.MkRef; Namespace FStar.Monotonic.HyperStack
(assert (! 
;; def=FStar.Monotonic.HyperStack.fsti(218,5-218,16); use=FStar.Monotonic.HyperStack.fsti(218,5-218,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Monotonic.HyperStack.mreference_ @x2
@x3))
(= (FStar.Monotonic.HyperStack.mreference_ @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Monotonic.HyperStack.mreference_ @x2
@x3)))
:qid FStar.Monotonic.HyperStack_pretyping_fefbd35e6ac4b27a757485121cb06767))

:named FStar.Monotonic.HyperStack_pretyping_fefbd35e6ac4b27a757485121cb06767))
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
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(34,21-34,33); use=FStar.HyperStack.ST.fsti(34,21-34,33)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_870e61e1362ee02b904fb2aa631e959a)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_870e61e1362ee02b904fb2aa631e959a))
:qid FStar.HyperStack.ST_pre_typing_Tm_arrow_870e61e1362ee02b904fb2aa631e959a))

:named FStar.HyperStack.ST_pre_typing_Tm_arrow_870e61e1362ee02b904fb2aa631e959a))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_870e61e1362ee02b904fb2aa631e959a
;;; Fact-ids: Name FStar.HyperStack.ST.mem_predicate; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(34,21-34,33); use=FStar.HyperStack.ST.fsti(34,21-34,33)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_870e61e1362ee02b904fb2aa631e959a)
(and 
;; def=FStar.HyperStack.ST.fsti(34,21-34,33); use=FStar.HyperStack.ST.fsti(34,21-34,33)
(forall ((@x1 Term))
 (! (implies (HasType @x1
FStar.Monotonic.HyperStack.mem)
(HasType (ApplyTT @x0
@x1)
Tm_type))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.HyperStack.ST_interpretation_Tm_arrow_870e61e1362ee02b904fb2aa631e959a.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_870e61e1362ee02b904fb2aa631e959a))
:qid FStar.HyperStack.ST_interpretation_Tm_arrow_870e61e1362ee02b904fb2aa631e959a))

:named FStar.HyperStack.ST_interpretation_Tm_arrow_870e61e1362ee02b904fb2aa631e959a))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,24-22,51); use=FStar.Heap.fst(22,24-22,51)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_1a6db055683d4a5b8a00786676e339b5)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_1a6db055683d4a5b8a00786676e339b5))
:qid FStar.Heap_pre_typing_Tm_arrow_1a6db055683d4a5b8a00786676e339b5))

:named FStar.Heap_pre_typing_Tm_arrow_1a6db055683d4a5b8a00786676e339b5))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_1a6db055683d4a5b8a00786676e339b5
;;; Fact-ids: Name FStar.Heap.trivial_preorder; Namespace FStar.Heap
(assert (! 
;; def=FStar.Heap.fst(22,24-22,51); use=FStar.Heap.fst(22,24-22,51)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_1a6db055683d4a5b8a00786676e339b5)
(and 
;; def=FStar.Heap.fst(22,24-22,51); use=FStar.Heap.fst(22,24-22,51)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(HasType (ApplyTT @x0
@x1)
(FStar.Preorder.preorder @x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid FStar.Heap_interpretation_Tm_arrow_1a6db055683d4a5b8a00786676e339b5.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
Tm_arrow_1a6db055683d4a5b8a00786676e339b5))
:qid FStar.Heap_interpretation_Tm_arrow_1a6db055683d4a5b8a00786676e339b5))

:named FStar.Heap_interpretation_Tm_arrow_1a6db055683d4a5b8a00786676e339b5))
(push) ;; push{2

; Starting query at InlineLet.fst(40,2-47,13)

(declare-fun label_29 () Bool)
(declare-fun label_28 () Bool)
(declare-fun label_27 () Bool)
(declare-fun label_26 () Bool)
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
(declare-fun Tm_refine_58798f06d8983c7a49f2158df13d0920 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_58798f06d8983c7a49f2158df13d0920))

:named refinement_kinding_Tm_refine_58798f06d8983c7a49f2158df13d0920))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x2
(FStar.Heap.trivial_preorder @x2)
@x3
@x4)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_58798f06d8983c7a49f2158df13d0920))

:named refinement_interpretation_Tm_refine_58798f06d8983c7a49f2158df13d0920))
;;;;;;;;;;;;;;;;haseq for Tm_refine_58798f06d8983c7a49f2158df13d0920
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x2)))
(Valid (Prims.hasEq FStar.Monotonic.HyperStack.mem)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x2))))
:qid haseqTm_refine_58798f06d8983c7a49f2158df13d0920))

:named haseqTm_refine_58798f06d8983c7a49f2158df13d0920))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: 
(assert (! (Valid (ApplyTT __uu__PartialApp
FStar.Heap.trivial_preorder@tok))
:named @kick_partial_app_e9b8f8051fb9eb623eed66e7c0d7dd00))
(declare-fun Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_7f1d078ef9fd75c42e148658d4b495c7))

:named refinement_kinding_Tm_refine_7f1d078ef9fd75c42e148658d4b495c7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x2
(FStar.Heap.trivial_preorder @x2)
@x3
@x4)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x2)
(FStar.Monotonic.HyperStack.sel @x2
(FStar.Heap.trivial_preorder @x2)
@x4
@x3))
@x5)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_7f1d078ef9fd75c42e148658d4b495c7))

:named refinement_interpretation_Tm_refine_7f1d078ef9fd75c42e148658d4b495c7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_7f1d078ef9fd75c42e148658d4b495c7
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(201,69-201,77); use=InlineLet.fst(42,14-42,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq FStar.Monotonic.HyperStack.mem)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_7f1d078ef9fd75c42e148658d4b495c7))

:named haseqTm_refine_7f1d078ef9fd75c42e148658d4b495c7))















(declare-fun Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d (Term Term) Term)
;;;;;;;;;;;;;;;;Typing for non-total arrows
;;; Fact-ids: 
(assert (! 
;; def=InlineLet.fst(39,22-39,23); use=InlineLet.fst(40,2-47,13)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.HyperStack.ST.ref @x0)))
(HasType (Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d @x0
@x1)
Tm_type))
 

:pattern ((HasType (Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d @x0
@x1)
Tm_type))
:qid non_total_function_typing_Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d))

:named non_total_function_typing_Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d))






; Encoding query formula : forall (a: Type) (r: FStar.HyperStack.ST.ref a) (lp: InlineLet.local_pkg a).
;   (*  - Could not prove post-condition
; *)
;   (forall (x: a)
;       (p: FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem (a & Prims.int))
;       (h0: FStar.Monotonic.HyperStack.mem).
;       (*  - Could not prove post-condition
; *)
;       (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                   r)) &&
;         Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                   r)) &&
;         Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                   r)) ==>
;         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                   r))) /\
;       (FStar.HyperStack.ST.is_live_for_rw_in r h0 ==>
;         (forall (a: a).
;             (*  - Could not prove post-condition
; *)
;             (forall (_: FStar.Monotonic.HyperStack.mem).
;                 (*  - Subtyping check failed
;   - Expected type
;       FStar.HyperStack.ST.mreference a (FStar.Heap.trivial_preorder a)
;     got type FStar.HyperStack.ST.ref a
; *)
;                 FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                           r)) &&
;                 Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                           r)) &&
;                 Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                           r)) ==>
;                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                           r))) /\
;             (forall (any_result: Type).
;                 _:
;                 FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_live_for_rw_in r h0} ==
;                 any_result ==>
;                 (forall (_: FStar.Monotonic.HyperStack.mem).
;                     (*  - Subtyping check failed
;   - Expected type
;       FStar.HyperStack.ST.mreference a (FStar.Heap.trivial_preorder a)
;     got type FStar.HyperStack.ST.ref a
; *)
;                     FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                               r)) &&
;                     Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                               r)) &&
;                     Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                               r)) ==>
;                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                               r))) /\
;                 (forall (h1:
;                     _: FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_live_for_rw_in r h0}).
;                     (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                                 r)) &&
;                       Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                 r)) &&
;                       Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                                 r)) ==>
;                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                                 r))) /\
;                     (FStar.HyperStack.ST.is_live_for_rw_in r h0 /\
;                       (h1 == h0) /\ FStar.Monotonic.HyperStack.contains h0 r /\
;                       (a == FStar.Monotonic.HyperStack.sel h0 r) /\
;                       FStar.HyperStack.ST.equal_domains h0 h1 ==>
;                       (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                                   r)) &&
;                         Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                   r)) &&
;                         Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                                   r)) ==>
;                         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                         FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                                   r))) /\
;                       (FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                         FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x ==>
;                         (forall (a: Prims.unit).
;                             (*  - Could not prove post-condition
; *)
;                             (forall (_: FStar.Monotonic.HyperStack.mem).
;                                 (*  - Subtyping check failed
;   - Expected type
;       FStar.HyperStack.ST.mreference a (FStar.Heap.trivial_preorder a)
;     got type FStar.HyperStack.ST.ref a
; *)
;                                 FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color
;                                       (FStar.Monotonic.HyperStack.frameOf r)) &&
;                                 Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                           r)) &&
;                                 Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                       r) /\
;                                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                       (FStar.Monotonic.HyperStack.frameOf r)) ==>
;                                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                       r) /\
;                                 FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                       (FStar.Monotonic.HyperStack.frameOf r))) /\
;                             (forall (any_result: Type).
;                                 _:
;                                 FStar.Monotonic.HyperStack.mem
;                                   { FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                                     FStar.Heap.trivial_preorder a
;                                       (FStar.Monotonic.HyperStack.sel h1 r)
;                                       x } ==
;                                 any_result ==>
;                                 (forall (_: FStar.Monotonic.HyperStack.mem).
;                                     (*  - Subtyping check failed
;   - Expected type
;       FStar.HyperStack.ST.mreference a (FStar.Heap.trivial_preorder a)
;     got type FStar.HyperStack.ST.ref a
; *)
;                                     FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color
;                                           (FStar.Monotonic.HyperStack.frameOf r)) &&
;                                     Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                               r)) &&
;                                     Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                           r) /\
;                                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                           (FStar.Monotonic.HyperStack.frameOf r)) ==>
;                                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                           r) /\
;                                     FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                           (FStar.Monotonic.HyperStack.frameOf r))) /\
;                                 (forall (h1:
;                                     _:
;                                     FStar.Monotonic.HyperStack.mem
;                                       { FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                                         FStar.Heap.trivial_preorder a
;                                           (FStar.Monotonic.HyperStack.sel h1 r)
;                                           x }).
;                                     (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color
;                                             (FStar.Monotonic.HyperStack.frameOf r)) &&
;                                       Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                                 r)) &&
;                                       Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                             r) /\
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                             (FStar.Monotonic.HyperStack.frameOf r)) ==>
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                             r) /\
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                             (FStar.Monotonic.HyperStack.frameOf r))) /\
;                                     (FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                                       FStar.Heap.trivial_preorder a
;                                         (FStar.Monotonic.HyperStack.sel h1 r)
;                                         x ==>
;                                       FStar.Monotonic.HyperStack.contains h1 r ==>
;                                       FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color
;                                             (FStar.Monotonic.HyperStack.frameOf r)) &&
;                                       Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                                                 r)) &&
;                                       Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred
;                                             r) /\
;                                       FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred
;                                             (FStar.Monotonic.HyperStack.frameOf r)) ==>
;                                       FStar.Monotonic.HyperStack.live_region h1
;                                         (FStar.Monotonic.HyperStack.frameOf r)))))))))))) /\
;   (forall (x: a).
;       (*  - Could not prove post-condition
; *)
;       forall (p: FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem (a & Prims.int))
;         (h: FStar.Monotonic.HyperStack.mem).
;         FStar.HyperStack.ST.is_live_for_rw_in r h /\
;         (forall (a: a)
;             (h1: _: FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_live_for_rw_in r h}).
;             FStar.HyperStack.ST.is_live_for_rw_in r h /\
;             (h1 == h) /\ FStar.Monotonic.HyperStack.contains h r /\
;             (a == FStar.Monotonic.HyperStack.sel h r) /\ FStar.HyperStack.ST.equal_domains h h1 ==>
;             FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;             FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;             (forall (a: Prims.unit)
;                 (h1:
;                 _:
;                 FStar.Monotonic.HyperStack.mem
;                   { FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                     FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x }).
;                 FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                 FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;                 FStar.Monotonic.HyperStack.contains h1 r /\
;                 (h1 == FStar.Monotonic.HyperStack.upd h1 r x) /\
;                 FStar.HyperStack.ST.equal_domains h1 h1 ==>
;                 (forall (a: Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;                     FStar.HyperStack.ST.equal_stack_domains h1 h1 ==>
;                     (forall (any_result: a & Prims.int). p any_result h1)))) ==>
;         (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                     r)) &&
;           Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                     r)) &&
;           Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;           FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;           FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                     r)) ==>
;           FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;           FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                     r))) /\
;         (forall (any_result: FStar.HyperStack.ST.ref a).
;             r == any_result ==>
;             FStar.HyperStack.ST.is_live_for_rw_in r h /\
;             (forall (a: a)
;                 (h1: _: FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_live_for_rw_in r h}).
;                 FStar.HyperStack.ST.is_live_for_rw_in r h /\
;                 (h1 == h) /\ FStar.Monotonic.HyperStack.contains h r /\
;                 (a == FStar.Monotonic.HyperStack.sel h r) /\ FStar.HyperStack.ST.equal_domains h h1 ==>
;                 (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf
;                             r)) &&
;                   Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf
;                             r)) &&
;                   Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm r) /\
;                   FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                   FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                             r)) ==>
;                   FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred r) /\
;                   FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf
;                             r))) /\
;                 (forall (any_result: FStar.HyperStack.ST.ref a).
;                     r == any_result ==>
;                     FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                     FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;                     (forall (a: Prims.unit)
;                         (h1:
;                         _:
;                         FStar.Monotonic.HyperStack.mem
;                           { FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                             FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x })
;                       .
;                         FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                         FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;                         FStar.Monotonic.HyperStack.contains h1 r /\
;                         (h1 == FStar.Monotonic.HyperStack.upd h1 r x) /\
;                         FStar.HyperStack.ST.equal_domains h1 h1 ==>
;                         (forall (a: Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;                             FStar.HyperStack.ST.equal_stack_domains h1 h1 ==> p (a, a) h1)))))) /\
;   (forall (any_result: (x: a -> FStar.HyperStack.ST.STATE (a & Prims.int)))
;       (x: a)
;       (p: FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem (a & Prims.int))
;       (h: FStar.Monotonic.HyperStack.mem).
;       (forall (a: a & Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;           FStar.HyperStack.ST.equal_stack_domains h h1 ==> p a h1) ==>
;       FStar.HyperStack.ST.is_live_for_rw_in r h /\
;       (forall (a: a)
;           (h1: _: FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_live_for_rw_in r h}).
;           FStar.HyperStack.ST.is_live_for_rw_in r h /\
;           (h1 == h) /\ FStar.Monotonic.HyperStack.contains h r /\
;           (a == FStar.Monotonic.HyperStack.sel h r) /\ FStar.HyperStack.ST.equal_domains h h1 ==>
;           FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;           FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;           (forall (a: Prims.unit)
;               (h1:
;               _:
;               FStar.Monotonic.HyperStack.mem
;                 { FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;                   FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x }).
;               FStar.HyperStack.ST.is_live_for_rw_in r h1 /\
;               FStar.Heap.trivial_preorder a (FStar.Monotonic.HyperStack.sel h1 r) x /\
;               FStar.Monotonic.HyperStack.contains h1 r /\
;               (h1 == FStar.Monotonic.HyperStack.upd h1 r x) /\
;               FStar.HyperStack.ST.equal_domains h1 h1 ==>
;               (forall (a: Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;                   FStar.HyperStack.ST.equal_stack_domains h1 h1 ==>
;                   (forall (any_result: a & Prims.int). p any_result h1)))))


; Context: While encoding a query
; While typechecking the top-level declaration `let pkg_of_local_pkg`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
(FStar.HyperStack.ST.ref @x0))
(HasType @x2
(InlineLet.local_pkg @x0)))

;; def=Prims.fst(459,77-459,89); use=InlineLet.fst(40,2-47,13)
(and 
;; def=dummy(0,0-0,0); use=InlineLet.fst(40,2-47,13)
(forall ((@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x3
@x0)
(HasType @x4
(FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem
(FStar.Pervasives.Native.tuple2 @x0
Prims.int)))
(HasType @x5
FStar.Monotonic.HyperStack.mem))

;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(42,14-42,15)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(or label_1

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(or label_2

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
(implies 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)


;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x6 Term))
 (! (implies (HasType @x6
@x0)

;; def=Prims.fst(459,77-459,89); use=InlineLet.fst(42,14-42,15)
(and 
;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
FStar.Monotonic.HyperStack.mem)
(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)

;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(or label_3

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(or label_4

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
 
;;no pats
:qid @query.3))


;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(42,14-42,15)
(forall ((@x7 Term))
 (! (implies (and (HasType @x7
Tm_type)

;; def=Prims.fst(286,16-286,17); use=InlineLet.fst(42,14-42,15)
(= (Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x5)
@x7)
)

;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(and 
;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
FStar.Monotonic.HyperStack.mem)
(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)

;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(or label_5

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(or label_6

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
 
;;no pats
:qid @query.5))


;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x8 Term))
 (! (implies (HasType @x8
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x5))

;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(42,14-42,15)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(or label_7

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(or label_8

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
(implies 
;; def=FStar.HyperStack.ST.fsti(203,66-203,110); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)


;; def=FStar.HyperStack.ST.fsti(423,2-423,10); use=InlineLet.fst(42,14-42,15)
(= @x8
@x5)


;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1)
)


;; def=FStar.HyperStack.ST.fsti(423,33-423,57); use=InlineLet.fst(42,14-42,15)
(= @x6
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.equal_domains @x5
@x8)
)
)


;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(42,14-42,15)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(or label_9

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(or label_10

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
(implies 
;; def=FStar.HyperStack.ST.fsti(419,32-419,77); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x3)
)
)


;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x9 Term))
 (! (implies (HasType @x9
Prims.unit)

;; def=Prims.fst(459,77-459,89); use=InlineLet.fst(42,14-42,15)
(and 
;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
FStar.Monotonic.HyperStack.mem)
(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)

;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(or label_11

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(or label_12

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
 
;;no pats
:qid @query.8))


;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(42,14-42,15)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Tm_type)

;; def=Prims.fst(286,16-286,17); use=InlineLet.fst(42,14-42,15)
(= (Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x8
@x3)
@x10)
)

;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(and 
;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
FStar.Monotonic.HyperStack.mem)
(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)

;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(or label_13

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(or label_14

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
 
;;no pats
:qid @query.10))


;; def=dummy(0,0-0,0); use=InlineLet.fst(42,14-42,15)
(forall ((@x11 Term))
 (! (implies (HasType @x11
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x8
@x3))

;; def=InlineLet.fst(39,25-39,26); use=InlineLet.fst(42,14-42,15)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(42,14-42,15)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(or label_15

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(or label_16

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)
(implies (and 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(42,14-42,15)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x3)
)


;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(42,14-42,15)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1)
)

(BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)

;; def=FStar.Monotonic.HyperStack.fsti(296,64-296,89); use=InlineLet.fst(43,6-43,7)
(or label_17

;; def=FStar.Monotonic.HyperStack.fsti(296,64-296,89); use=InlineLet.fst(42,14-42,15)
(BoxBool_proj_0 (FStar.Monotonic.HyperStack.live_region @x8
(FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
))
)
 
;;no pats
:qid @query.11))
)
)
 
;;no pats
:qid @query.9))
)
)
 
;;no pats
:qid @query.7))
))
))
)
 
;;no pats
:qid @query.6))
)
)
 
;;no pats
:qid @query.4))
)
)
 
;;no pats
:qid @query.2))
))
)
 
;;no pats
:qid @query.1))


;; def=dummy(0,0-0,0); use=InlineLet.fst(40,2-47,13)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x0)

;; def=FStar.Pervasives.fsti(484,2-484,63); use=InlineLet.fst(40,2-47,13)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem
(FStar.Pervasives.Native.tuple2 @x0
Prims.int)))
(HasType @x5
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(42,14-42,15)
(forall ((@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x6
@x0)
(HasType @x7
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x5))

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)


;; def=FStar.HyperStack.ST.fsti(423,2-423,10); use=InlineLet.fst(42,14-42,15)
(= @x7
@x5)


;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1)
)


;; def=FStar.HyperStack.ST.fsti(423,33-423,57); use=InlineLet.fst(42,14-42,15)
(= @x6
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.equal_domains @x5
@x7)
)
)

;; def=FStar.HyperStack.ST.fsti(203,43-203,122); use=InlineLet.fst(43,8-43,10)
(and 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x7)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x7
@x1))
@x3)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(43,8-43,10)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x8
Prims.unit)
(HasType @x9
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x7
@x3))

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x7)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x7
@x1))
@x3)
)


;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(43,8-43,10)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x7
@x1)
)


;; def=FStar.HyperStack.ST.fsti(412,21-412,48); use=InlineLet.fst(43,8-43,10)
(= @x9
(FStar.Monotonic.HyperStack.upd @x0
(FStar.Heap.trivial_preorder @x0)
@x7
@x1
@x3))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.equal_domains @x7
@x9)
)
)

;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(44,14-44,29)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
Prims.int)
(HasType @x11
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(44,14-44,29)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(44,14-44,29)
(FStar.HyperStack.ST.equal_stack_domains @x9
@x11)
)
)

;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(41,21-45,10)
(forall ((@x12 Term))
 (! (implies (HasType @x12
(FStar.Pervasives.Native.tuple2 @x0
Prims.int))

;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(41,21-45,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(41,21-45,10)
(ApplyTT (ApplyTT @x4
@x12)
@x11)
)
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
)
 
;;no pats
:qid @query.14))
)

;; def=Prims.fst(459,77-459,89); use=InlineLet.fst(41,21-45,10)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(42,15-42,16)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,15-42,16)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(42,15-42,16)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,15-42,16)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(42,15-42,16)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(42,15-42,16)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(or label_18

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(42,15-42,16)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(or label_19

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(42,15-42,16)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)

;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(41,21-45,10)
(forall ((@x6 Term))
 (! (implies (and (HasType @x6
(FStar.HyperStack.ST.ref @x0))

;; def=FStar.HyperStack.ST.fsti(429,41-429,42); use=InlineLet.fst(41,21-45,10)
(= @x1
@x6)
)

;; def=FStar.HyperStack.ST.fsti(203,43-203,122); use=InlineLet.fst(42,14-42,15)
(and 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(or label_20

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(42,14-42,15)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
@x0)
(HasType @x8
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x5))

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x5)
)


;; def=FStar.HyperStack.ST.fsti(423,2-423,10); use=InlineLet.fst(42,14-42,15)
(= @x8
@x5)


;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(42,14-42,15)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1)
)


;; def=FStar.HyperStack.ST.fsti(423,33-423,57); use=InlineLet.fst(42,14-42,15)
(= @x7
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x5
@x1))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(42,14-42,15)
(FStar.HyperStack.ST.equal_domains @x5
@x8)
)
)

;; def=Prims.fst(459,77-459,89); use=InlineLet.fst(41,21-45,10)
(and (implies 
;; def=FStar.HyperStack.ST.fsti(288,18-289,65); use=InlineLet.fst(43,6-43,7)
(and (BoxBool_proj_0 (Prims.op_AmpAmp (FStar.Monotonic.HyperStack.is_heap_color (FStar.Monotonic.HyperHeap.color (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
(Prims.op_Negation (FStar.Monotonic.HyperHeap.rid_freeable (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))))
(BoxBool_proj_0 (Prims.op_Negation (FStar.Monotonic.HyperStack.is_mm @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))

;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(43,6-43,7)
(Valid 
;; def=FStar.HyperStack.ST.fsti(288,18-288,49); use=InlineLet.fst(43,6-43,7)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)


;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(43,6-43,7)
(Valid 
;; def=FStar.HyperStack.ST.fsti(289,18-289,65); use=InlineLet.fst(43,6-43,7)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)


;; def=FStar.HyperStack.ST.fsti(282,24-283,71); use=InlineLet.fst(43,6-43,7)
(and 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(or label_21

;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(Valid 
;; def=FStar.HyperStack.ST.fsti(282,24-282,55); use=InlineLet.fst(43,6-43,7)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.ref_contains_pred @x0
(FStar.Heap.trivial_preorder @x0)
@x1))
)
)


;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(or label_22

;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(Valid 
;; def=FStar.HyperStack.ST.fsti(283,24-283,71); use=InlineLet.fst(43,6-43,7)
(FStar.HyperStack.ST.witnessed (FStar.HyperStack.ST.region_contains_pred (FStar.Monotonic.HyperStack.frameOf @x0
(FStar.Heap.trivial_preorder @x0)
@x1)))
)
)
)
)

;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(41,21-45,10)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
(FStar.HyperStack.ST.ref @x0))

;; def=FStar.HyperStack.ST.fsti(418,49-418,50); use=InlineLet.fst(41,21-45,10)
(= @x1
@x9)
)

;; def=FStar.HyperStack.ST.fsti(203,43-203,122); use=InlineLet.fst(43,8-43,10)
(and 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(or label_23

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(or label_24

;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x3)
)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(43,8-43,10)
(forall ((@x10 Term) (@x11 Term))
 (! (implies (and (HasType @x10
Prims.unit)
(HasType @x11
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x8
@x3))

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(43,8-43,10)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x3)
)


;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(43,8-43,10)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1)
)


;; def=FStar.HyperStack.ST.fsti(412,21-412,48); use=InlineLet.fst(43,8-43,10)
(= @x11
(FStar.Monotonic.HyperStack.upd @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1
@x3))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(43,8-43,10)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(43,8-43,10)
(FStar.HyperStack.ST.equal_domains @x8
@x11)
)
)

;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(44,14-44,29)
(forall ((@x12 Term) (@x13 Term))
 (! (implies (and (HasType @x12
Prims.int)
(HasType @x13
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(44,14-44,29)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(44,14-44,29)
(FStar.HyperStack.ST.equal_stack_domains @x11
@x13)
)
)

;; def=FStar.Pervasives.fsti(463,24-463,34); use=InlineLet.fst(41,21-45,10)
(or label_25

;; def=FStar.Pervasives.fsti(463,24-463,34); use=InlineLet.fst(41,21-45,10)
(Valid 
;; def=FStar.Pervasives.fsti(463,24-463,34); use=InlineLet.fst(41,21-45,10)
(ApplyTT (ApplyTT @x4
(FStar.Pervasives.Native.Mktuple2 @x0
Prims.int
@x7
@x12))
@x13)
)
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
:qid @query.13))
)
 
;;no pats
:qid @query.12))


;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(40,2-47,13)
(forall ((@x3 Term))
 (! (implies (HasType @x3
(Non_total_Tm_arrow_71cee8ce5bc95b3a2cc2d00bb3bb5c4d @x0
@x1))

;; def=dummy(0,0-0,0); use=InlineLet.fst(47,6-47,13)
(forall ((@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x4
@x0)
(HasType @x5
(FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem
(FStar.Pervasives.Native.tuple2 @x0
Prims.int)))
(HasType @x6
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(47,6-47,13)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
(FStar.Pervasives.Native.tuple2 @x0
Prims.int))
(HasType @x8
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.equal_stack_domains @x6
@x8)
)
)

;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(47,6-47,13)
(ApplyTT (ApplyTT @x5
@x7)
@x8)
)
)
 
;;no pats
:qid @query.25))
)

;; def=FStar.HyperStack.ST.fsti(203,43-203,122); use=InlineLet.fst(47,6-47,13)
(and 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(47,6-47,13)
(or label_26

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x6)
)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(47,6-47,13)
(forall ((@x7 Term) (@x8 Term))
 (! (implies (and (HasType @x7
@x0)
(HasType @x8
(Tm_refine_58798f06d8983c7a49f2158df13d0920 @x0
@x1
@x6))

;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(430,31-430,54); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x6)
)


;; def=FStar.HyperStack.ST.fsti(423,2-423,10); use=InlineLet.fst(47,6-47,13)
(= @x8
@x6)


;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(423,14-423,29); use=InlineLet.fst(47,6-47,13)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x6
@x1)
)


;; def=FStar.HyperStack.ST.fsti(423,33-423,57); use=InlineLet.fst(47,6-47,13)
(= @x7
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x6
@x1))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.equal_domains @x6
@x8)
)
)

;; def=FStar.HyperStack.ST.fsti(203,43-203,122); use=InlineLet.fst(47,6-47,13)
(and 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(47,6-47,13)
(or label_27

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(47,6-47,13)
(or label_28

;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(47,6-47,13)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x4)
)
)


;; def=FStar.HyperStack.ST.fsti(203,52-203,122); use=InlineLet.fst(47,6-47,13)
(forall ((@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x9
Prims.unit)
(HasType @x10
(Tm_refine_7f1d078ef9fd75c42e148658d4b495c7 @x0
@x1
@x8
@x4))

;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,32-419,55); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.is_live_for_rw_in @x0
(FStar.Heap.trivial_preorder @x0)
@x1
@x8)
)


;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(419,59-419,77); use=InlineLet.fst(47,6-47,13)
(ApplyTT (ApplyTT (ApplyTT FStar.Heap.trivial_preorder@tok
@x0)
(FStar.Monotonic.HyperStack.sel @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1))
@x4)
)


;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(412,2-412,17); use=InlineLet.fst(47,6-47,13)
(FStar.Monotonic.HyperStack.contains @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1)
)


;; def=FStar.HyperStack.ST.fsti(412,21-412,48); use=InlineLet.fst(47,6-47,13)
(= @x10
(FStar.Monotonic.HyperStack.upd @x0
(FStar.Heap.trivial_preorder @x0)
@x8
@x1
@x4))


;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(203,91-203,109); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.equal_domains @x8
@x10)
)
)

;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(47,6-47,13)
(forall ((@x11 Term) (@x12 Term))
 (! (implies (and (HasType @x11
Prims.int)
(HasType @x12
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(47,6-47,13)
(FStar.HyperStack.ST.equal_stack_domains @x10
@x12)
)
)

;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(47,6-47,13)
(forall ((@x13 Term))
 (! (implies (HasType @x13
(FStar.Pervasives.Native.tuple2 @x0
Prims.int))

;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(47,6-47,13)
(or label_29

;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(47,6-47,13)
(Valid 
;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(47,6-47,13)
(ApplyTT (ApplyTT @x5
@x13)
@x12)
)
)
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
)
 
;;no pats
:qid @query.26))
)
)
 
;;no pats
:qid @query.24))
)
 
;;no pats
:qid @query.23))
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
(echo "label_29")
(eval label_29)
(echo "label_28")
(eval label_28)
(echo "label_27")
(eval label_27)
(echo "label_26")
(eval label_26)
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
; QUERY ID: (InlineLet.pkg_of_local_pkg, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, Prims_pretyping_ae567c2fb75be05905677af440075565, data_typing_intro_FStar.Pervasives.Native.Mktuple2@tok, equation_FStar.Heap.trivial_preorder, equation_FStar.Heap.trivial_rel, equation_FStar.HyperStack.ST.equal_domains, equation_FStar.HyperStack.ST.equal_stack_domains, equation_FStar.HyperStack.ST.is_eternal_region, equation_FStar.HyperStack.ST.is_live_for_rw_in, equation_FStar.HyperStack.ST.mref, equation_FStar.HyperStack.ST.ref, equation_FStar.Monotonic.HyperHeap.hmap, equation_FStar.Monotonic.HyperStack.contains, equation_FStar.Monotonic.HyperStack.is_heap_color, equation_FStar.Monotonic.HyperStack.is_stack_region, equation_FStar.Monotonic.HyperStack.mem, equation_FStar.Monotonic.HyperStack.mref, equation_FStar.Monotonic.HyperStack.upd, equation_Prims.eqtype, fuel_guarded_inversion_InlineLet.local_pkg, function_token_typing_FStar.Heap.trivial_preorder, function_token_typing_Prims.__cache_version_number__, int_inversion, interpretation_Tm_abs_568747eb5009c1dec504311dee989dc2, lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_elim, lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro, lemma_FStar.Map.lemma_ContainsDom, lemma_FStar.Map.lemma_SelUpd2, lemma_FStar.Monotonic.HyperStack.lemma_mk_mem__projectors, lemma_FStar.Set.lemma_equal_elim, primitive_Prims.op_AmpAmp, primitive_Prims.op_GreaterThan, primitive_Prims.op_LessThanOrEqual, primitive_Prims.op_Negation, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_05e15190c946858f68c69156f585f95a, refinement_interpretation_Tm_refine_1a1278f1aecd37594ba20d888b7fd230, refinement_interpretation_Tm_refine_414d0a9f578ab0048252f8c8f552b99f, refinement_interpretation_Tm_refine_4deaad73cd92bc948bb28924e869c4ab, refinement_interpretation_Tm_refine_7f1d078ef9fd75c42e148658d4b495c7, true_interp, typing_FStar.Heap.trivial_preorder, typing_FStar.Map.domain, typing_FStar.Map.sel, typing_FStar.Map.upd, typing_FStar.Monotonic.Heap.heap, typing_FStar.Monotonic.Heap.upd, typing_FStar.Monotonic.HyperHeap.rid, typing_FStar.Monotonic.HyperStack.as_ref, typing_FStar.Monotonic.HyperStack.frameOf, typing_FStar.Monotonic.HyperStack.get_hmap, typing_FStar.Monotonic.HyperStack.get_rid_ctr, typing_FStar.Monotonic.HyperStack.get_tip, typing_FStar.Monotonic.HyperStack.mk_mem, typing_Prims.int

; Z3 invocation started by F*
; F* version: 2024.12.03~dev -- commit hash: a3be6122b76ec0ca29030e1ff72576dceeede19d
; Z3 version (according to F*): 4.12.1

(pop) ;; 2}pop

; encoding sigelt let pkg_of_local_pkg


; <Start encoding let pkg_of_local_pkg>

(declare-fun InlineLet.pkg_of_local_pkg (Term Term Term) Term)
;;;;;;;;;;;;;;;;r: FStar.HyperStack.ST.ref a -> lp: local_pkg a -> pkg a
(declare-fun Tm_arrow_d923c8faa4fc1222c6063c90e2e62332 () Term)
(declare-fun InlineLet.pkg_of_local_pkg@tok () Term)
;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_InlineLet_295 (Term Term Term) Term)

; </end encoding let pkg_of_local_pkg>


; encoding sigelt val InlineLet.some_stateful_operation


; <Start encoding val InlineLet.some_stateful_operation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun InlineLet.some_stateful_operation (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun InlineLet.some_stateful_operation@tok () Term)

; </end encoding val InlineLet.some_stateful_operation>


; encoding sigelt let ideal


; <Start encoding let ideal>

(declare-fun InlineLet.ideal (Dummy_sort) Term)

; </end encoding let ideal>


; encoding sigelt let maybe_ideal_op


; <Start encoding let maybe_ideal_op>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun InlineLet.maybe_ideal_op (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun InlineLet.maybe_ideal_op@tok () Term)

; </end encoding let maybe_ideal_op>

;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name InlineLet.ideal; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(52,4-52,9); use=InlineLet.fst(52,4-52,9)
(forall ((@u0 Dummy_sort))
 (! (HasType (InlineLet.ideal @u0)
Prims.bool)
 

:pattern ((InlineLet.ideal @u0))
:qid typing_InlineLet.ideal))

:named typing_InlineLet.ideal))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.HyperStack.ST.ralloc_post; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(380,4-380,15); use=FStar.HyperStack.ST.fsti(380,4-380,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x3
@x0)
(HasType @x4
FStar.Monotonic.HyperStack.mem)
(HasType @x5
(FStar.HyperStack.ST.mreference @x0
@x1))
(HasType @x6
FStar.Monotonic.HyperStack.mem))
(HasType (FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Prims.logical))
 

:pattern ((FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid typing_FStar.HyperStack.ST.ralloc_post))

:named typing_FStar.HyperStack.ST.ralloc_post))
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
;;;;;;;;;;;;;;;;Equation for InlineLet.ideal
;;; Fact-ids: Name InlineLet.ideal; Namespace InlineLet
(assert (! 
;; def=InlineLet.fst(52,4-52,9); use=InlineLet.fst(52,4-52,9)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=InlineLet.fst(52,4-52,9); use=InlineLet.fst(52,4-52,9)
(InlineLet.ideal @u0)

(BoxBool false))
 

:pattern (
;; def=InlineLet.fst(52,4-52,9); use=InlineLet.fst(52,4-52,9)
(InlineLet.ideal @u0)
)
:qid equation_InlineLet.ideal))

:named equation_InlineLet.ideal))
;;;;;;;;;;;;;;;;Equation for FStar.HyperStack.ST.ralloc_post
;;; Fact-ids: Name FStar.HyperStack.ST.ralloc_post; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(380,4-380,15); use=FStar.HyperStack.ST.fsti(380,4-380,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (= (Valid (FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6))

;; def=FStar.HyperStack.ST.fsti(383,2-386,21); use=FStar.HyperStack.ST.fsti(383,2-386,21)
(and 
;; def=FStar.HyperStack.ST.fsti(383,2-383,36); use=FStar.HyperStack.ST.fsti(383,2-383,36)
(Valid 
;; def=FStar.HyperStack.ST.fsti(383,2-383,36); use=FStar.HyperStack.ST.fsti(383,2-383,36)
(FStar.Monotonic.Heap.unused_in @x0
@x1
(FStar.Monotonic.HyperStack.as_ref @x0
@x1
@x5)
(FStar.Map.sel (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x4)
@x2))
)


;; def=FStar.HyperStack.ST.fsti(384,2-384,23); use=FStar.HyperStack.ST.fsti(384,2-384,23)
(BoxBool_proj_0 (FStar.Map.contains (FStar.Monotonic.HyperHeap.rid Dummy_value)
FStar.Monotonic.Heap.heap
(FStar.Monotonic.HyperStack.get_hmap @x4)
@x2))


;; def=FStar.HyperStack.ST.fsti(385,2-385,15); use=FStar.HyperStack.ST.fsti(385,2-385,15)
(= @x2
(FStar.Monotonic.HyperStack.frameOf @x0
@x1
@x5))


;; def=FStar.HyperStack.ST.fsti(386,2-386,21); use=FStar.HyperStack.ST.fsti(386,2-386,21)
(= @x6
(FStar.Monotonic.HyperStack.upd @x0
@x1
@x4
@x5
@x3))
)
)
 

:pattern ((FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6))
:qid equation_FStar.HyperStack.ST.ralloc_post))

:named equation_FStar.HyperStack.ST.ralloc_post))
;;;;;;;;;;;;;;;;Prop-typing for FStar.HyperStack.ST.ralloc_post
;;; Fact-ids: Name FStar.HyperStack.ST.ralloc_post; Namespace FStar.HyperStack.ST
(assert (! 
;; def=FStar.HyperStack.ST.fsti(380,4-380,15); use=FStar.HyperStack.ST.fsti(380,4-380,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Preorder.preorder @x0))
(HasType @x2
(FStar.Monotonic.HyperHeap.rid Dummy_value))
(HasType @x3
@x0)
(HasType @x4
FStar.Monotonic.HyperStack.mem)
(HasType @x5
(FStar.HyperStack.ST.mreference @x0
@x1))
(HasType @x6
FStar.Monotonic.HyperStack.mem))
(Valid (Prims.subtype_of (FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Prims.unit)))
 

:pattern ((Prims.subtype_of (FStar.HyperStack.ST.ralloc_post @x0
@x1
@x2
@x3
@x4
@x5
@x6)
Prims.unit))
:qid defn_equation_FStar.HyperStack.ST.ralloc_post))

:named defn_equation_FStar.HyperStack.ST.ralloc_post))
(push) ;; push{2

; Starting query at InlineLet.fst(65,48-69,22)

(declare-fun label_2 () Bool)
(declare-fun label_1 () Bool)

(declare-fun Tm_refine_161e04719814801d293219f408210f95 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(225,66-225,74); use=InlineLet.fst(66,40-66,46)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_161e04719814801d293219f408210f95 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_161e04719814801d293219f408210f95 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_161e04719814801d293219f408210f95))

:named refinement_kinding_Tm_refine_161e04719814801d293219f408210f95))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(225,66-225,74); use=InlineLet.fst(66,40-66,46)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_161e04719814801d293219f408210f95 @x2))
(and (HasTypeFuel @u0
@x1
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(Valid 
;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(FStar.HyperStack.ST.is_eternal_region @x2)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_161e04719814801d293219f408210f95 @x2)))
:qid refinement_interpretation_Tm_refine_161e04719814801d293219f408210f95))

:named refinement_interpretation_Tm_refine_161e04719814801d293219f408210f95))
;;;;;;;;;;;;;;;;haseq for Tm_refine_161e04719814801d293219f408210f95
;;; Fact-ids: 
(assert (! 
;; def=FStar.HyperStack.ST.fsti(225,66-225,74); use=InlineLet.fst(66,40-66,46)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_161e04719814801d293219f408210f95 @x0)))
(Valid (Prims.hasEq FStar.Monotonic.HyperStack.mem)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_161e04719814801d293219f408210f95 @x0))))
:qid haseqTm_refine_161e04719814801d293219f408210f95))

:named haseqTm_refine_161e04719814801d293219f408210f95))

; Encoding query formula : forall (r: FStar.Monotonic.HyperHeap.rid{FStar.HyperStack.ST.is_eternal_region r})
;   (x: Prims.bool)
;   (h0: FStar.Monotonic.HyperStack.mem).
;   FStar.HyperStack.ST.is_eternal_region r /\
;   (forall (a: FStar.HyperStack.ST.mref Prims.int (FStar.Heap.trivial_preorder Prims.int))
;       (h1: _: FStar.Monotonic.HyperStack.mem{FStar.HyperStack.ST.is_eternal_region r}).
;       FStar.HyperStack.ST.is_eternal_region r /\ FStar.HyperStack.ST.ralloc_post r 0 h0 a h1 /\
;       FStar.HyperStack.ST.equal_stack_domains h0 h1 ==>
;       (forall (i: Prims.int)
;           (p: FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem Prims.int)
;           (h: FStar.Monotonic.HyperStack.mem).
;           (forall (a: Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;               FStar.HyperStack.ST.equal_stack_domains h h1 ==> p a h1) ==>
;           (forall (k: FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem Prims.int).
;               (forall (x: Prims.int) (h: FStar.Monotonic.HyperStack.mem).
;                   {:pattern Prims.guard_free (k x h)}
;                   p x h ==> k x h) ==>
;               (InlineLet.ideal == true ==>
;                 (forall (a: Prims.int) (h1: FStar.Monotonic.HyperStack.mem).
;                     FStar.HyperStack.ST.equal_stack_domains h h1 ==> k a h1)) /\
;               (~(InlineLet.ideal = true) ==>
;                 (forall (b: Prims.bool).
;                     InlineLet.ideal == b ==>
;                     (forall (any_result: Prims.int).
;                         any_result == i + 1 ==>
;                         (forall (return_val: Prims.int). return_val == any_result ==> k return_val h
;                         )))))))


; Context: While encoding a query
; While typechecking the top-level declaration `let test`

(push) ;; push{0

; <fuel='2' ifuel='1'>

;;; Fact-ids: 
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
Tm_refine_6c5072d4c9562dd38fd2703ecfb013df)
(HasType @x1
Prims.bool)
(HasType @x2
FStar.Monotonic.HyperStack.mem))

;; def=FStar.HyperStack.ST.fsti(227,43-227,128); use=InlineLet.fst(66,40-66,46)
(and 
;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(or label_1

;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(Valid 
;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(FStar.HyperStack.ST.is_eternal_region @x0)
)
)


;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(66,40-66,46)
(forall ((@x3 Term) (@x4 Term))
 (! (implies (and (HasType @x3
(FStar.HyperStack.ST.mref Prims.int
(FStar.Heap.trivial_preorder Prims.int)))
(HasType @x4
(Tm_refine_161e04719814801d293219f408210f95 @x0))

;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(Valid 
;; def=FStar.HyperStack.ST.fsti(389,39-389,58); use=InlineLet.fst(66,40-66,46)
(FStar.HyperStack.ST.is_eternal_region @x0)
)


;; def=FStar.HyperStack.ST.fsti(227,76-227,87); use=InlineLet.fst(66,40-66,46)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,76-227,87); use=InlineLet.fst(66,40-66,46)
(FStar.HyperStack.ST.ralloc_post Prims.int
(FStar.Heap.trivial_preorder Prims.int)
@x0
(BoxInt 0)
@x2
@x3
@x4)
)


;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(66,40-66,46)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(66,40-66,46)
(FStar.HyperStack.ST.equal_stack_domains @x2
@x4)
)
)

;; def=dummy(0,0-0,0); use=InlineLet.fst(68,41-68,55)
(forall ((@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (and (HasType @x5
Prims.int)
(HasType @x6
(FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem
Prims.int))
(HasType @x7
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(68,41-68,55)
(forall ((@x8 Term) (@x9 Term))
 (! (implies (and (HasType @x8
Prims.int)
(HasType @x9
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(68,41-68,55)
(FStar.HyperStack.ST.equal_stack_domains @x7
@x9)
)
)

;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(68,41-68,55)
(ApplyTT (ApplyTT @x6
@x8)
@x9)
)
)
 
;;no pats
:qid @query.3))
)

;; def=FStar.Pervasives.fsti(478,2-479,93); use=InlineLet.fst(68,41-68,55)
(forall ((@x8 Term))
 (! (implies (and (HasType @x8
(FStar.Pervasives.st_post_h FStar.Monotonic.HyperStack.mem
Prims.int))

;; def=FStar.Pervasives.fsti(478,2-479,93); use=InlineLet.fst(68,41-68,55)
(forall ((@x9 Term) (@x10 Term))
 (! (implies 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=InlineLet.fst(68,41-68,55)
(or label_2

;; def=FStar.Pervasives.fsti(479,62-479,70); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.Pervasives.fsti(479,62-479,70); use=InlineLet.fst(68,41-68,55)
(ApplyTT (ApplyTT @x6
@x9)
@x10)
)
)


;; def=FStar.Pervasives.fsti(479,75-479,80); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.Pervasives.fsti(479,75-479,80); use=InlineLet.fst(68,41-68,55)
(ApplyTT (ApplyTT @x8
@x9)
@x10)
)
)
 :weight 0


:pattern ((ApplyTT (ApplyTT @x8
@x9)
@x10))
:qid @query.5))
)

;; def=FStar.Pervasives.fsti(472,7-472,50); use=InlineLet.fst(68,41-68,55)
(and (implies 
;; def=InlineLet.fst(56,7-56,12); use=InlineLet.fst(68,41-68,55)
(= (InlineLet.ideal Dummy_value)
(BoxBool true))


;; def=FStar.HyperStack.ST.fsti(227,52-227,128); use=InlineLet.fst(68,41-68,55)
(forall ((@x9 Term) (@x10 Term))
 (! (implies (and (HasType @x9
Prims.int)
(HasType @x10
FStar.Monotonic.HyperStack.mem)

;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,91-227,115); use=InlineLet.fst(68,41-68,55)
(FStar.HyperStack.ST.equal_stack_domains @x7
@x10)
)
)

;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(227,121-227,127); use=InlineLet.fst(68,41-68,55)
(ApplyTT (ApplyTT @x8
@x9)
@x10)
)
)
 
;;no pats
:qid @query.6))
)
(implies 
;; def=FStar.Pervasives.fsti(472,27-472,29); use=InlineLet.fst(68,41-68,55)
(not 
;; def=InlineLet.fst(56,7-56,12); use=InlineLet.fst(68,41-68,55)
(= (InlineLet.ideal Dummy_value)
(BoxBool true))
)


;; def=Prims.fst(413,99-413,120); use=InlineLet.fst(68,41-68,55)
(forall ((@x9 Term))
 (! (implies (and (HasType @x9
Prims.bool)

;; def=InlineLet.fst(56,7-58,14); use=InlineLet.fst(68,41-68,55)
(= (InlineLet.ideal Dummy_value)
@x9)
)

;; def=Prims.fst(451,66-451,102); use=InlineLet.fst(68,41-68,55)
(forall ((@x10 Term))
 (! (implies (and (HasType @x10
Prims.int)

;; def=InlineLet.fst(49,46-58,14); use=InlineLet.fst(68,41-68,55)
(= @x10
(Prims.op_Addition @x5
(BoxInt 1)))
)

;; def=Prims.fst(356,2-356,58); use=InlineLet.fst(68,41-68,55)
(forall ((@x11 Term))
 (! (implies (and (HasType @x11
Prims.int)

;; def=Prims.fst(356,26-356,41); use=InlineLet.fst(68,41-68,55)
(= @x11
@x10)
)

;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(68,41-68,55)
(Valid 
;; def=FStar.HyperStack.ST.fsti(274,85-274,90); use=InlineLet.fst(68,41-68,55)
(ApplyTT (ApplyTT @x8
@x11)
@x7)
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
))
)
 
;;no pats
:qid @query.4))
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
; QUERY ID: (InlineLet.test, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, bool_inversion, equation_FStar.HyperStack.ST.equal_stack_domains, equation_FStar.HyperStack.ST.is_eternal_region, equation_FStar.Monotonic.Heap.equal_dom, equation_FStar.Monotonic.HyperStack.is_heap_color, equation_InlineLet.ideal, lemma_FStar.HyperStack.ST.lemma_same_refs_in_stack_regions_intro, primitive_Prims.op_Negation, projection_inverse_BoxBool_proj_0, refinement_interpretation_Tm_refine_6c5072d4c9562dd38fd2703ecfb013df, typing_FStar.Monotonic.HyperHeap.color, typing_FStar.Monotonic.HyperHeap.rid_freeable, typing_FStar.Monotonic.HyperStack.is_heap_color