
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


; Externals for interface FStar.Math.Lemmas


; <Start encoding val FStar.Math.Lemmas.euclidean_div_axiom>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.euclidean_div_axiom (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.euclidean_div_axiom@tok () Term)

; </end encoding val FStar.Math.Lemmas.euclidean_div_axiom>


; <Start encoding val FStar.Math.Lemmas.lemma_eucl_div_bound>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_eucl_div_bound (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_eucl_div_bound@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_eucl_div_bound>


; <Start encoding val FStar.Math.Lemmas.lemma_mult_le_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_le_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_le_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mult_le_left>


; <Start encoding val FStar.Math.Lemmas.lemma_mult_le_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_le_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_le_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mult_le_right>


; <Start encoding val FStar.Math.Lemmas.lemma_mult_lt_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mult_lt_left>


; <Start encoding val FStar.Math.Lemmas.lemma_mult_lt_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mult_lt_right>


; <Start encoding val FStar.Math.Lemmas.lemma_mult_lt_sqr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_sqr (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mult_lt_sqr@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mult_lt_sqr>


; <Start encoding val FStar.Math.Lemmas.swap_mul>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.swap_mul (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.swap_mul@tok () Term)

; </end encoding val FStar.Math.Lemmas.swap_mul>


; <Start encoding val FStar.Math.Lemmas.lemma_cancel_mul>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_cancel_mul (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_cancel_mul@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_cancel_mul>


; <Start encoding val FStar.Math.Lemmas.distributivity_add_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.distributivity_add_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.distributivity_add_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.distributivity_add_left>


; <Start encoding val FStar.Math.Lemmas.distributivity_add_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.distributivity_add_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.distributivity_add_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.distributivity_add_right>


; <Start encoding val FStar.Math.Lemmas.paren_mul_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.paren_mul_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.paren_mul_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.paren_mul_left>


; <Start encoding val FStar.Math.Lemmas.paren_mul_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.paren_mul_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.paren_mul_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.paren_mul_right>


; <Start encoding val FStar.Math.Lemmas.paren_add_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.paren_add_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.paren_add_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.paren_add_left>


; <Start encoding val FStar.Math.Lemmas.paren_add_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.paren_add_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.paren_add_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.paren_add_right>


; <Start encoding val FStar.Math.Lemmas.addition_is_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.addition_is_associative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.addition_is_associative@tok () Term)

; </end encoding val FStar.Math.Lemmas.addition_is_associative>


; <Start encoding val FStar.Math.Lemmas.subtraction_is_distributive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.subtraction_is_distributive (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.subtraction_is_distributive@tok () Term)

; </end encoding val FStar.Math.Lemmas.subtraction_is_distributive>


; <Start encoding val FStar.Math.Lemmas.swap_add_plus_minus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.swap_add_plus_minus (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.swap_add_plus_minus@tok () Term)

; </end encoding val FStar.Math.Lemmas.swap_add_plus_minus>


; <Start encoding val FStar.Math.Lemmas.neg_mul_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.neg_mul_left (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.neg_mul_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.neg_mul_left>


; <Start encoding val FStar.Math.Lemmas.neg_mul_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.neg_mul_right (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.neg_mul_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.neg_mul_right>


; <Start encoding val FStar.Math.Lemmas.swap_neg_mul>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.swap_neg_mul (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.swap_neg_mul@tok () Term)

; </end encoding val FStar.Math.Lemmas.swap_neg_mul>


; <Start encoding val FStar.Math.Lemmas.distributivity_sub_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.distributivity_sub_left (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.distributivity_sub_left@tok () Term)

; </end encoding val FStar.Math.Lemmas.distributivity_sub_left>


; <Start encoding val FStar.Math.Lemmas.distributivity_sub_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.distributivity_sub_right (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.distributivity_sub_right@tok () Term)

; </end encoding val FStar.Math.Lemmas.distributivity_sub_right>


; <Start encoding val FStar.Math.Lemmas.mul_binds_tighter>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_binds_tighter (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_binds_tighter@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_binds_tighter>


; <Start encoding val FStar.Math.Lemmas.lemma_abs_mul>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_abs_mul (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_abs_mul@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_abs_mul>


; <Start encoding val FStar.Math.Lemmas.lemma_abs_bound>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_abs_bound (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_abs_bound@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_abs_bound>


; <Start encoding val FStar.Math.Lemmas.mul_ineq1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_ineq1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_ineq1@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_ineq1>


; <Start encoding val FStar.Math.Lemmas.add_zero_left_is_same>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.add_zero_left_is_same (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.add_zero_left_is_same@tok () Term)

; </end encoding val FStar.Math.Lemmas.add_zero_left_is_same>


; <Start encoding val FStar.Math.Lemmas.add_zero_right_is_same>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.add_zero_right_is_same (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.add_zero_right_is_same@tok () Term)

; </end encoding val FStar.Math.Lemmas.add_zero_right_is_same>


; <Start encoding val FStar.Math.Lemmas.mul_one_left_is_same>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_one_left_is_same (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_one_left_is_same@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_one_left_is_same>


; <Start encoding val FStar.Math.Lemmas.mul_one_right_is_same>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_one_right_is_same (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_one_right_is_same@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_one_right_is_same>


; <Start encoding val FStar.Math.Lemmas.mul_zero_left_is_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_zero_left_is_zero (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_zero_left_is_zero@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_zero_left_is_zero>


; <Start encoding val FStar.Math.Lemmas.mul_zero_right_is_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mul_zero_right_is_zero (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mul_zero_right_is_zero@tok () Term)

; </end encoding val FStar.Math.Lemmas.mul_zero_right_is_zero>


; <Start encoding val FStar.Math.Lemmas.nat_times_nat_is_nat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.nat_times_nat_is_nat (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.nat_times_nat_is_nat@tok () Term)

; </end encoding val FStar.Math.Lemmas.nat_times_nat_is_nat>


; <Start encoding val FStar.Math.Lemmas.pos_times_pos_is_pos>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pos_times_pos_is_pos (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pos_times_pos_is_pos@tok () Term)

; </end encoding val FStar.Math.Lemmas.pos_times_pos_is_pos>


; <Start encoding val FStar.Math.Lemmas.nat_over_pos_is_nat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.nat_over_pos_is_nat (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.nat_over_pos_is_nat@tok () Term)

; </end encoding val FStar.Math.Lemmas.nat_over_pos_is_nat>


; <Start encoding val FStar.Math.Lemmas.nat_plus_nat_equal_zero_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.nat_plus_nat_equal_zero_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.nat_plus_nat_equal_zero_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.nat_plus_nat_equal_zero_lemma>


; <Start encoding val FStar.Math.Lemmas.int_times_int_equal_zero_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.int_times_int_equal_zero_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.int_times_int_equal_zero_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.int_times_int_equal_zero_lemma>


; <Start encoding val FStar.Math.Lemmas.pow2_double_sum>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_double_sum (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_double_sum@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_double_sum>


; <Start encoding val FStar.Math.Lemmas.pow2_double_mult>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_double_mult (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_double_mult@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_double_mult>


; <Start encoding val FStar.Math.Lemmas.pow2_lt_compat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_lt_compat (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_lt_compat@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_lt_compat>


; <Start encoding val FStar.Math.Lemmas.pow2_le_compat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_le_compat (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_le_compat@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_le_compat>


; <Start encoding val FStar.Math.Lemmas.pow2_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_plus (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_plus@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_plus>


; <Start encoding val FStar.Math.Lemmas.pow2_minus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_minus (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_minus@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_minus>


; <Start encoding val FStar.Math.Lemmas.multiply_fractions>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.multiply_fractions (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.multiply_fractions@tok () Term)

; </end encoding val FStar.Math.Lemmas.multiply_fractions>


; <Start encoding val FStar.Math.Lemmas.modulo_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_lemma>


; <Start encoding val FStar.Math.Lemmas.lemma_div_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_mod (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_mod@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_mod>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_lt (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_lt@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_lt>


; <Start encoding val FStar.Math.Lemmas.lemma_div_lt_nat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_lt_nat (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_lt_nat@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_lt_nat>


; <Start encoding val FStar.Math.Lemmas.lemma_div_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_lt (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_lt@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_lt>


; <Start encoding val FStar.Math.Lemmas.bounded_multiple_is_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.bounded_multiple_is_zero (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.bounded_multiple_is_zero@tok () Term)

; </end encoding val FStar.Math.Lemmas.bounded_multiple_is_zero>


; <Start encoding val FStar.Math.Lemmas.small_div>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_div (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_div@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_div>


; <Start encoding val FStar.Math.Lemmas.small_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_mod (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_mod@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_mod>


; <Start encoding val FStar.Math.Lemmas.lt_multiple_is_equal>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lt_multiple_is_equal (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lt_multiple_is_equal@tok () Term)

; </end encoding val FStar.Math.Lemmas.lt_multiple_is_equal>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_plus>


; <Start encoding val FStar.Math.Lemmas.lemma_div_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_plus (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_plus@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_plus>


; <Start encoding val FStar.Math.Lemmas.lemma_div_mod_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_mod_plus (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_mod_plus@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_mod_plus>


; <Start encoding val FStar.Math.Lemmas.add_div_mod_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.add_div_mod_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.add_div_mod_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.add_div_mod_1>


; <Start encoding val FStar.Math.Lemmas.sub_div_mod_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.sub_div_mod_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.sub_div_mod_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.sub_div_mod_1>


; <Start encoding val FStar.Math.Lemmas.cancel_mul_div>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.cancel_mul_div (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.cancel_mul_div@tok () Term)

; </end encoding val FStar.Math.Lemmas.cancel_mul_div>


; <Start encoding val FStar.Math.Lemmas.cancel_mul_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.cancel_mul_mod (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.cancel_mul_mod@tok () Term)

; </end encoding val FStar.Math.Lemmas.cancel_mul_mod>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_add_distr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_add_distr (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_add_distr@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_add_distr>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_sub_distr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_distr (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_distr@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_sub_distr>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_sub_0>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_0 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_0@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_sub_0>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_sub_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_sub_1>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_mul_distr_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mul_distr_l (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mul_distr_l@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_mul_distr_l>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_mul_distr_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mul_distr_r (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mul_distr_r@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_mul_distr_r>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_injective (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_injective@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_injective>


; <Start encoding val FStar.Math.Lemmas.lemma_mul_sub_distr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_sub_distr (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_sub_distr@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mul_sub_distr>


; <Start encoding val FStar.Math.Lemmas.lemma_div_exact>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_exact (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_exact@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_exact>


; <Start encoding val FStar.Math.Lemmas.div_exact_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.div_exact_r (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.div_exact_r@tok () Term)

; </end encoding val FStar.Math.Lemmas.div_exact_r>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_spec (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_spec@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_spec>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_spec2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_spec2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_spec2@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_spec2>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_plus_distr_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_distr_l (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_distr_l@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_plus_distr_l>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_plus_distr_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_distr_r (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_distr_r@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_plus_distr_r>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mod (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_mod@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_mod>


; <Start encoding val FStar.Math.Lemmas.euclidean_division_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.euclidean_division_definition (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.euclidean_division_definition@tok () Term)

; </end encoding val FStar.Math.Lemmas.euclidean_division_definition>


; <Start encoding val FStar.Math.Lemmas.modulo_range_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_range_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_range_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_range_lemma>


; <Start encoding val FStar.Math.Lemmas.small_modulo_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_modulo_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_modulo_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_modulo_lemma_1>


; <Start encoding val FStar.Math.Lemmas.small_modulo_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_modulo_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_modulo_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_modulo_lemma_2>


; <Start encoding val FStar.Math.Lemmas.small_division_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_division_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_division_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_division_lemma_1>


; <Start encoding val FStar.Math.Lemmas.small_division_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.small_division_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.small_division_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.small_division_lemma_2>


; <Start encoding val FStar.Math.Lemmas.multiplication_order_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.multiplication_order_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.multiplication_order_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.multiplication_order_lemma>


; <Start encoding val FStar.Math.Lemmas.division_propriety>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_propriety (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_propriety@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_propriety>


; <Start encoding val FStar.Math.Lemmas.division_definition_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_definition_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_definition_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_definition_lemma_1>


; <Start encoding val FStar.Math.Lemmas.division_definition_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_definition_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_definition_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_definition_lemma_2>


; <Start encoding val FStar.Math.Lemmas.division_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_definition (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_definition@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_definition>


; <Start encoding val FStar.Math.Lemmas.multiple_division_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.multiple_division_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.multiple_division_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.multiple_division_lemma>


; <Start encoding val FStar.Math.Lemmas.multiple_modulo_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.multiple_modulo_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.multiple_modulo_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.multiple_modulo_lemma>


; <Start encoding val FStar.Math.Lemmas.division_addition_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_addition_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_addition_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_addition_lemma>


; <Start encoding val FStar.Math.Lemmas.modulo_distributivity>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_distributivity (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_distributivity@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_distributivity>


; <Start encoding val FStar.Math.Lemmas.lemma_div_le>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_le (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_div_le@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_div_le>


; <Start encoding val FStar.Math.Lemmas.division_sub_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_sub_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_sub_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_sub_lemma>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_plus_mul_distr>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_mul_distr (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_mul_distr@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_plus_mul_distr>


; <Start encoding val FStar.Math.Lemmas.modulo_addition_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_addition_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_addition_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_addition_lemma>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_sub>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_sub@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_sub>


; <Start encoding val FStar.Math.Lemmas.mod_mult_exact>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mod_mult_exact (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mod_mult_exact@tok () Term)

; </end encoding val FStar.Math.Lemmas.mod_mult_exact>


; <Start encoding val FStar.Math.Lemmas.mod_mul_div_exact>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mod_mul_div_exact (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mod_mul_div_exact@tok () Term)

; </end encoding val FStar.Math.Lemmas.mod_mul_div_exact>


; <Start encoding val FStar.Math.Lemmas.mod_pow2_div2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mod_pow2_div2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mod_pow2_div2@tok () Term)

; </end encoding val FStar.Math.Lemmas.mod_pow2_div2>


; <Start encoding val FStar.Math.Lemmas.division_multiplication_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.division_multiplication_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.division_multiplication_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.division_multiplication_lemma>


; <Start encoding val FStar.Math.Lemmas.modulo_scale_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_scale_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_scale_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_scale_lemma>


; <Start encoding val FStar.Math.Lemmas.lemma_mul_pos_pos_is_pos>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_pos_pos_is_pos (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_pos_pos_is_pos@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mul_pos_pos_is_pos>


; <Start encoding val FStar.Math.Lemmas.lemma_mul_nat_pos_is_nat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_nat_pos_is_nat (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mul_nat_pos_is_nat@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mul_nat_pos_is_nat>


; <Start encoding val FStar.Math.Lemmas.modulo_division_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_division_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_division_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_division_lemma>


; <Start encoding val FStar.Math.Lemmas.modulo_modulo_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_modulo_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_modulo_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_modulo_lemma>


; <Start encoding val FStar.Math.Lemmas.pow2_multiplication_division_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_division_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_division_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_multiplication_division_lemma_1>


; <Start encoding val FStar.Math.Lemmas.pow2_multiplication_division_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_division_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_division_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_multiplication_division_lemma_2>


; <Start encoding val FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_1>


; <Start encoding val FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_multiplication_modulo_lemma_2>


; <Start encoding val FStar.Math.Lemmas.pow2_modulo_division_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_division_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_division_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_modulo_division_lemma_1>


; <Start encoding val FStar.Math.Lemmas.pow2_modulo_division_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_division_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_division_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_modulo_division_lemma_2>


; <Start encoding val FStar.Math.Lemmas.pow2_modulo_modulo_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_modulo_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_modulo_lemma_1@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_modulo_modulo_lemma_1>


; <Start encoding val FStar.Math.Lemmas.pow2_modulo_modulo_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_modulo_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.pow2_modulo_modulo_lemma_2@tok () Term)

; </end encoding val FStar.Math.Lemmas.pow2_modulo_modulo_lemma_2>


; <Start encoding val FStar.Math.Lemmas.modulo_add>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_add (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_add@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_add>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_twice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_twice (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_twice@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_twice>


; <Start encoding val FStar.Math.Lemmas.modulo_sub>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_sub (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_sub@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_sub>


; <Start encoding val FStar.Math.Lemmas.mod_add_both>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.mod_add_both (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.mod_add_both@tok () Term)

; </end encoding val FStar.Math.Lemmas.mod_add_both>


; <Start encoding val FStar.Math.Lemmas.lemma_mod_plus_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_injective (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.lemma_mod_plus_injective@tok () Term)

; </end encoding val FStar.Math.Lemmas.lemma_mod_plus_injective>


; <Start encoding val FStar.Math.Lemmas.modulo_sub_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Math.Lemmas.modulo_sub_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Math.Lemmas.modulo_sub_lemma@tok () Term)

; </end encoding val FStar.Math.Lemmas.modulo_sub_lemma>


; End Externals for interface FStar.Math.Lemmas


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


; Externals for interface Lib.LoopCombinators


; <Start encoding val Lib.LoopCombinators.repeat_left>

(declare-fun Tm_refine_571d9f74016be5357787170b42ecf913 (Term) Term)
(declare-fun Tm_refine_edccc421660c61e3591d98071500d795 (Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{lo <= i /\ i <= hi} -> Type
(declare-fun Tm_arrow_2bf7345966baadb5d8656724dcf7cee8 (Term Term) Term)
(declare-fun Tm_refine_c7f248c50d182c40aac9022fc9a66edc (Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{lo <= i /\ i < hi} -> _: a i -> a (i + 1)
(declare-fun Tm_arrow_36dd113ffd3258af3d2f33c53ef8eea6 (Term Term Term) Term)
(declare-fun Lib.LoopCombinators.repeat_left (Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;lo: Prims.nat ->     hi: Prims.nat{lo <= hi} ->     a: (i: Prims.nat{lo <= i /\ i <= hi} -> Type) ->     f: (i: Prims.nat{lo <= i /\ i < hi} -> _: a i -> a (i + 1)) ->     acc: a lo   -> Prims.Tot (a hi)
(declare-fun Tm_arrow_46600c075c7756ef46e298cc3cffdb88 () Term)
(declare-fun Lib.LoopCombinators.repeat_left@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_left>


; <Start encoding val Lib.LoopCombinators.repeat_left_all_ml>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_left_all_ml (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_left_all_ml@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_left_all_ml>


; <Start encoding val Lib.LoopCombinators.repeat_right>






(declare-fun Lib.LoopCombinators.repeat_right (Term Term Term Term Term) Term)






(declare-fun Lib.LoopCombinators.repeat_right@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_right>


; <Start encoding val Lib.LoopCombinators.repeat_right_all_ml>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_right_all_ml (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_right_all_ml@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_right_all_ml>


; <Start encoding val Lib.LoopCombinators.repeat_right_plus>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_right_plus (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_right_plus@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_right_plus>


; <Start encoding val Lib.LoopCombinators.unfold_repeat_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat_right (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat_right@tok () Term)

; </end encoding val Lib.LoopCombinators.unfold_repeat_right>


; <Start encoding val Lib.LoopCombinators.eq_repeat_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.eq_repeat_right (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.eq_repeat_right@tok () Term)

; </end encoding val Lib.LoopCombinators.eq_repeat_right>


; <Start encoding val Lib.LoopCombinators.repeat_left_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_left_right (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_left_right@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_left_right>


; <Start encoding val Lib.LoopCombinators.repeat_gen>

(declare-fun Tm_refine_7e0b9b2dbca36eab00de093c1b701c6d (Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i <= n} -> Type
(declare-fun Tm_arrow_d14b5cd1226e414731f21670beedcc84 (Term) Term)
(declare-fun Tm_refine_c1424615841f28cac7fc34e92b7ff33c (Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i < n} -> _: a i -> a (i + 1)
(declare-fun Tm_arrow_f77e174321f3ceca78193a141927037b (Term Term) Term)
(declare-fun Lib.LoopCombinators.repeat_gen (Term Term Term Term) Term)




;;;;;;;;;;;;;;;;n: Prims.nat ->     a: (i: Prims.nat{i <= n} -> Type) ->     f: (i: Prims.nat{i < n} -> _: a i -> a (i + 1)) ->     acc0: a 0   -> a n
(declare-fun Tm_arrow_51738c68336479a55de660b175203348 () Term)
(declare-fun Lib.LoopCombinators.repeat_gen@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_gen>


; <Start encoding val Lib.LoopCombinators.repeat_gen_all_ml>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_gen_all_ml (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_gen_all_ml@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_gen_all_ml>


; <Start encoding val Lib.LoopCombinators.unfold_repeat_gen>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat_gen (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat_gen@tok () Term)

; </end encoding val Lib.LoopCombinators.unfold_repeat_gen>


; <Start encoding val Lib.LoopCombinators.eq_repeat_gen0>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.eq_repeat_gen0 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.eq_repeat_gen0@tok () Term)

; </end encoding val Lib.LoopCombinators.eq_repeat_gen0>


; <Start encoding val Lib.LoopCombinators.repeat_gen_def>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_gen_def (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_gen_def@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_gen_def>


; <Start encoding let fixed_a>

(declare-fun Lib.LoopCombinators.fixed_a (Term Term) Term)
;;;;;;;;;;;;;;;;a: Type -> i: Prims.nat -> Type
(declare-fun Tm_arrow_67c7b2626869cb316f118144000415b9 () Term)
(declare-fun Lib.LoopCombinators.fixed_a@tok () Term)

; </end encoding let fixed_a>


; <Start encoding let fixed_i>

(declare-fun Lib.LoopCombinators.fixed_i (Term Term Term) Term)
;;;;;;;;;;;;;;;;f: _ -> i: Prims.nat -> _
(declare-fun Tm_arrow_bfe22415bc48790397b6e21fcc88873f () Term)
(declare-fun Lib.LoopCombinators.fixed_i@tok () Term)

; </end encoding let fixed_i>


; <Start encoding val Lib.LoopCombinators.repeati>


;;;;;;;;;;;;;;;;i: Prims.nat{i < n} -> _: a -> a
(declare-fun Tm_arrow_c3cac0eaa5a8b41e6eb23c42c4532cc2 (Term Term) Term)
(declare-fun Lib.LoopCombinators.repeati (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;n: Prims.nat -> f: (i: Prims.nat{i < n} -> _: a -> a) -> acc0: a -> a
(declare-fun Tm_arrow_d409e73dba1a74e4dca99156beb9dd92 () Term)
(declare-fun Lib.LoopCombinators.repeati@tok () Term)

; </end encoding val Lib.LoopCombinators.repeati>


; <Start encoding val Lib.LoopCombinators.repeati_all_ml>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeati_all_ml (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeati_all_ml@tok () Term)

; </end encoding val Lib.LoopCombinators.repeati_all_ml>


; <Start encoding val Lib.LoopCombinators.eq_repeati0>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.eq_repeati0 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.eq_repeati0@tok () Term)

; </end encoding val Lib.LoopCombinators.eq_repeati0>


; <Start encoding val Lib.LoopCombinators.unfold_repeati>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.unfold_repeati (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.unfold_repeati@tok () Term)

; </end encoding val Lib.LoopCombinators.unfold_repeati>


; <Start encoding val Lib.LoopCombinators.repeati_def>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeati_def (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeati_def@tok () Term)

; </end encoding val Lib.LoopCombinators.repeati_def>


; <Start encoding val Lib.LoopCombinators.repeat>

;;;;;;;;;;;;;;;;_: a -> a
(declare-fun Tm_arrow_fcd589b21e6efcf1e5d17b07c282a015 (Term) Term)
(declare-fun Lib.LoopCombinators.repeat (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;n: Prims.nat -> f: (_: a -> a) -> acc0: a -> a
(declare-fun Tm_arrow_8fe83fb81f6408d7e73fe9c763519702 () Term)
(declare-fun Lib.LoopCombinators.repeat@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat>


; <Start encoding val Lib.LoopCombinators.eq_repeat0>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.eq_repeat0 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.eq_repeat0@tok () Term)

; </end encoding val Lib.LoopCombinators.eq_repeat0>


; <Start encoding val Lib.LoopCombinators.unfold_repeat>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.unfold_repeat@tok () Term)

; </end encoding val Lib.LoopCombinators.unfold_repeat>


; <Start encoding val Lib.LoopCombinators.repeat_range>


(declare-fun Tm_refine_f166ffa285da58385ce2ad2356e56767 (Term Term) Term)
;;;;;;;;;;;;;;;;s: Prims.nat{s >= min /\ s < max} -> _: a -> a
(declare-fun Tm_arrow_e5abef4822a58dace44b39ec2a27f2ba (Term Term Term) Term)
(declare-fun Lib.LoopCombinators.repeat_range (Term Term Term Term Term) Term)



;;;;;;;;;;;;;;;;min: Prims.nat ->     max: Prims.nat{min <= max} ->     _: (s: Prims.nat{s >= min /\ s < max} -> _: a -> a) ->     _: a   -> Prims.Tot a
(declare-fun Tm_arrow_4a3aedb16b3382d0b36cbcaef62fb259 () Term)
(declare-fun Lib.LoopCombinators.repeat_range@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_range>


; <Start encoding val Lib.LoopCombinators.repeat_range_all_ml>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeat_range_all_ml (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeat_range_all_ml@tok () Term)

; </end encoding val Lib.LoopCombinators.repeat_range_all_ml>


; <Start encoding let repeatable>


;;;;;;;;;;;;;;;;i: Prims.nat{i <= n} -> _: a -> Type
(declare-fun Tm_arrow_6e7ade9db1f37c96b082a4321d307f26 (Term Term) Term)
(declare-fun Lib.LoopCombinators.repeatable (Term Term Term) Term)


;;;;;;;;;;;;;;;;pred: (i: Prims.nat{i <= n} -> _: a -> Type) -> Type
(declare-fun Tm_arrow_bc6d9eb6be0681916b49370d6db69bff () Term)
(declare-fun Lib.LoopCombinators.repeatable@tok () Term)



(declare-fun Tm_refine_08698b4b6e166624b5bf789ac071b4cf (Term Term Term) Term)
(declare-fun Tm_refine_909c0555fed853bc5dc1098d3dd63f21 (Term Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i < n} -> x: a{pred i x} -> y: a{pred (i + 1) y}
(declare-fun Tm_arrow_9228bb88100b5a0762d39b5c83174ad9 (Term Term Term) Term)

; </end encoding let repeatable>


; <Start encoding val Lib.LoopCombinators.repeat_range_inductive>









(declare-fun Lib.LoopCombinators.repeat_range_inductive (Term Term Term Term Term Term) Term)









;;;;;;;;;;;;;;;;min: Prims.nat ->     max: Prims.nat{min <= max} ->     pred: (i: Prims.nat{i <= max} -> _: a -> Type) ->     f: (i: Prims.nat{i < max} -> x: a{pred i x} -> y: a{pred (i + 1) y}) ->     x0: a{pred min x0}   -> Prims.Tot (res: a{pred max res})
(declare-fun Tm_arrow_ed1347d0f4874f16dda7766b44b7d2ae () Term)
(declare-fun Lib.LoopCombinators.repeat_range_inductive@tok () Term)


; </end encoding val Lib.LoopCombinators.repeat_range_inductive>


; <Start encoding val Lib.LoopCombinators.repeati_inductive>







(declare-fun Tm_refine_574e14f4b9c774d5e61146c6d94cf593 (Term Term) Term)
(declare-fun Lib.LoopCombinators.repeati_inductive (Term Term Term Term Term) Term)








;;;;;;;;;;;;;;;;n: Prims.nat ->     pred: (i: Prims.nat{i <= n} -> _: a -> Type) ->     f: (i: Prims.nat{i < n} -> x: a{pred i x} -> y: a{pred (i + 1) y}) ->     x0: a{pred 0 x0}   -> res: a{pred n res}
(declare-fun Tm_arrow_75b8bed7acabf7c9de11259fce0189f4 () Term)
(declare-fun Lib.LoopCombinators.repeati_inductive@tok () Term)


; </end encoding val Lib.LoopCombinators.repeati_inductive>


; <Start encoding val Lib.LoopCombinators.repeati_inductive_repeat_gen>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.LoopCombinators.repeati_inductive_repeat_gen (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.LoopCombinators.repeati_inductive_repeat_gen@tok () Term)

; </end encoding val Lib.LoopCombinators.repeati_inductive_repeat_gen>


; <Start encoding let preserves_predicate>






;;;;;;;;;;;;;;;;i: Prims.nat{i <= n} -> _: a i -> Type
(declare-fun Tm_arrow_e014b42c2cd3786c96d1d8eb3fa6faa7 (Term Term) Term)
(declare-fun Lib.LoopCombinators.preserves_predicate (Term Term Term Term) Term)






;;;;;;;;;;;;;;;;n: Prims.nat ->     a: (i: Prims.nat{i <= n} -> Type) ->     f: (i: Prims.nat{i < n} -> _: a i -> a (i + 1)) ->     pred: (i: Prims.nat{i <= n} -> _: a i -> Type)   -> Prims.logical
(declare-fun Tm_arrow_cb66ba14023e6b46dd4ef40a0bb0de6c () Term)
(declare-fun Lib.LoopCombinators.preserves_predicate@tok () Term)








; </end encoding let preserves_predicate>


; <Start encoding val Lib.LoopCombinators.repeat_gen_inductive>







(declare-fun Lib.LoopCombinators.repeat_gen_inductive (Term Term Term Term Term) Term)






(declare-fun Tm_refine_695fc9bad57438f078f1918065bbd3eb (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;n: Prims.nat ->     a: (i: Prims.nat{i <= n} -> Type) ->     pred: (i: Prims.nat{i <= n} -> _: a i -> Type) ->     f: (i: Prims.nat{i < n} -> _: a i -> a (i + 1)) ->     x0: a 0   -> Prims.Pure (a n)
(declare-fun Tm_arrow_451352101a6ae6be1958184b2850a04c () Term)
(declare-fun Lib.LoopCombinators.repeat_gen_inductive@tok () Term)


; </end encoding val Lib.LoopCombinators.repeat_gen_inductive>


; <Start encoding let preserves>





(declare-fun Lib.LoopCombinators.preserves (Term Term Term Term) Term)




;;;;;;;;;;;;;;;;f: (i: Prims.nat{i < n} -> _: a -> a) -> pred: (i: Prims.nat{i <= n} -> _: a -> Type)   -> Prims.logical
(declare-fun Tm_arrow_39a46b40a5c7d6ba7fd150d40a2c280e () Term)
(declare-fun Lib.LoopCombinators.preserves@tok () Term)






; </end encoding let preserves>


; <Start encoding val Lib.LoopCombinators.repeati_inductive'>





(declare-fun Lib.LoopCombinators.repeati_inductive_ (Term Term Term Term Term) Term)




(declare-fun Tm_refine_41aef3833b617e5c5b9322c9c48c2c29 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;n: Prims.nat ->     pred: (i: Prims.nat{i <= n} -> _: a -> Type) ->     f: (i: Prims.nat{i < n} -> _: a -> a) ->     x0: a   -> Prims.Pure a
(declare-fun Tm_arrow_b7173847d9d608c582ac589e3c3d02c5 () Term)
(declare-fun Lib.LoopCombinators.repeati_inductive_@tok () Term)


; </end encoding val Lib.LoopCombinators.repeati_inductive'>


; End Externals for interface Lib.LoopCombinators


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


; Externals for interface FStar.Seq.Base


; <Start encoding val FStar.Seq.Base.seq>

(declare-fun FStar.Seq.Base.seq (Term) Term)

(declare-fun FStar.Seq.Base.seq@tok () Term)

; </end encoding val FStar.Seq.Base.seq>


; <Start encoding val FStar.Seq.Base.length>

(declare-fun FStar.Seq.Base.length (Term Term) Term)
(declare-fun Tm_arrow_d2c01593e1ccf972aadc4bced72f8166 () Term)
(declare-fun FStar.Seq.Base.length@tok () Term)

; </end encoding val FStar.Seq.Base.length>


; <Start encoding val FStar.Seq.Base.seq_to_list>

(declare-fun FStar.Seq.Base.seq_to_list (Term Term) Term)
(declare-fun Tm_refine_c4e3a92f9bd1d01a07e4fb66c5de2e7e (Term Term) Term)
(declare-fun Tm_arrow_7d1aeb9cf9244f8c50e0ad901486a03b () Term)
(declare-fun FStar.Seq.Base.seq_to_list@tok () Term)


; </end encoding val FStar.Seq.Base.seq_to_list>


; <Start encoding val FStar.Seq.Base.seq_of_list>

(declare-fun FStar.Seq.Base.seq_of_list (Term Term) Term)
(declare-fun Tm_refine_d2d1ea66f2b3a92c2deb42edcbb784ce (Term Term) Term)
(declare-fun Tm_arrow_4966fa2986a35d9c0803c863a2768cbd () Term)
(declare-fun FStar.Seq.Base.seq_of_list@tok () Term)


; </end encoding val FStar.Seq.Base.seq_of_list>


; <Start encoding val FStar.Seq.Base.index>

(declare-fun Tm_refine_d83f8da8ef6c1cb9f71d1465c1bb1c55 (Term Term) Term)
(declare-fun FStar.Seq.Base.index (Term Term Term) Term)

(declare-fun Tm_arrow_1910ef5262f2ee8e712b6609a232b1ea () Term)
(declare-fun FStar.Seq.Base.index@tok () Term)

; </end encoding val FStar.Seq.Base.index>


; <Start encoding val FStar.Seq.Base.create>

(declare-fun FStar.Seq.Base.create (Term Term Term) Term)
(declare-fun Tm_arrow_b5b3d4fcc48eb666a8878550e50df9fb () Term)
(declare-fun FStar.Seq.Base.create@tok () Term)

; </end encoding val FStar.Seq.Base.create>


; <Start encoding val FStar.Seq.Base.init_aux>



(declare-fun Tm_arrow_44bb45ed5c2534b346e0f58ea5033251 (Term Term) Term)
(declare-fun FStar.Seq.Base.init_aux (Term Term Term Term) Term)



(declare-fun Tm_arrow_da6bbab10714c064205223f9990745bd () Term)
(declare-fun FStar.Seq.Base.init_aux@tok () Term)

; </end encoding val FStar.Seq.Base.init_aux>


; <Start encoding val FStar.Seq.Base.init>



(declare-fun FStar.Seq.Base.init (Term Term Term) Term)


(declare-fun Tm_arrow_d638d84259a58eff38c91944355ac313 () Term)
(declare-fun FStar.Seq.Base.init@tok () Term)

; </end encoding val FStar.Seq.Base.init>


; <Start encoding val FStar.Seq.Base.init_aux_ghost>



(declare-fun Tm_ghost_arrow_b7c239afcc620812134a759b53cafcc7 (Term Term) Term)
(declare-fun FStar.Seq.Base.init_aux_ghost (Term Term Term Term) Term)



(declare-fun Tm_ghost_arrow_90c084cce85ad5fa9b6789a83ba7b9d5 () Term)
(declare-fun FStar.Seq.Base.init_aux_ghost@tok () Term)

; </end encoding val FStar.Seq.Base.init_aux_ghost>


; <Start encoding val FStar.Seq.Base.init_ghost>



(declare-fun FStar.Seq.Base.init_ghost (Term Term Term) Term)


(declare-fun Tm_ghost_arrow_dc3e2497ae3914facc1bb3cecddbafe4 () Term)
(declare-fun FStar.Seq.Base.init_ghost@tok () Term)

; </end encoding val FStar.Seq.Base.init_ghost>


; <Start encoding val FStar.Seq.Base.empty>

(declare-fun FStar.Seq.Base.empty (Term) Term)
(declare-fun Tm_refine_b913a3f691ca99086652e0a655e72f17 (Term) Term)
(declare-fun Tm_arrow_c39fb4e3e203a822394c714f70ec2d2c () Term)
(declare-fun FStar.Seq.Base.empty@tok () Term)


; </end encoding val FStar.Seq.Base.empty>


; <Start encoding let createEmpty>

(declare-fun FStar.Seq.Base.createEmpty (Term) Term)


(declare-fun FStar.Seq.Base.createEmpty@tok () Term)


; </end encoding let createEmpty>


; <Start encoding val FStar.Seq.Base.lemma_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_empty (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_empty@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_empty>


; <Start encoding val FStar.Seq.Base.upd>


(declare-fun FStar.Seq.Base.upd (Term Term Term Term) Term)

(declare-fun Tm_arrow_12766e98f50c8b91e296bbc369061265 () Term)
(declare-fun FStar.Seq.Base.upd@tok () Term)

; </end encoding val FStar.Seq.Base.upd>


; <Start encoding val FStar.Seq.Base.append>

(declare-fun FStar.Seq.Base.append (Term Term Term) Term)
(declare-fun Tm_arrow_22c1b165cc91e8aafbceb8b36244be8e () Term)
(declare-fun FStar.Seq.Base.append@tok () Term)

; </end encoding val FStar.Seq.Base.append>


; <Start encoding let cons>

(declare-fun FStar.Seq.Base.cons (Term Term Term) Term)
(declare-fun Tm_arrow_62ad6018b578ef7ed3c0e74bdebff729 () Term)
(declare-fun FStar.Seq.Base.cons@tok () Term)

; </end encoding let cons>


; <Start encoding let op_At_Bar>

(declare-fun FStar.Seq.Base.op_At_Bar (Term Term Term) Term)

(declare-fun FStar.Seq.Base.op_At_Bar@tok () Term)

; </end encoding let op_At_Bar>


; <Start encoding val FStar.Seq.Base.slice>

(declare-fun Tm_refine_81407705a0828c2c1b1976675443f647 (Term Term Term) Term)
(declare-fun FStar.Seq.Base.slice (Term Term Term Term) Term)

(declare-fun Tm_arrow_f59809c98fadf275c00ce819f5868628 () Term)
(declare-fun FStar.Seq.Base.slice@tok () Term)

; </end encoding val FStar.Seq.Base.slice>


; <Start encoding val FStar.Seq.Base.lemma_seq_of_seq_to_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_seq_to_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_seq_to_list@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_of_seq_to_list>


; <Start encoding val FStar.Seq.Base.lemma_seq_to_seq_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_seq_of_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_seq_of_list@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_to_seq_of_list>


; <Start encoding val FStar.Seq.Base.lemma_seq_of_list_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_list_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_of_list_cons@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_of_list_cons>


; <Start encoding val FStar.Seq.Base.lemma_seq_to_list_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_list_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_seq_to_list_cons@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_seq_to_list_cons>


; <Start encoding val FStar.Seq.Base.lemma_create_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_create_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_create_len@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_create_len>


; <Start encoding val FStar.Seq.Base.lemma_init_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_len@tok () Term)



; </end encoding val FStar.Seq.Base.lemma_init_len>


; <Start encoding val FStar.Seq.Base.lemma_init_aux_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_aux_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_aux_len@tok () Term)




; </end encoding val FStar.Seq.Base.lemma_init_aux_len>


; <Start encoding val FStar.Seq.Base.lemma_init_ghost_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_len@tok () Term)



; </end encoding val FStar.Seq.Base.lemma_init_ghost_len>


; <Start encoding val FStar.Seq.Base.lemma_init_ghost_aux_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_aux_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_init_ghost_aux_len@tok () Term)




; </end encoding val FStar.Seq.Base.lemma_init_ghost_aux_len>


; <Start encoding val FStar.Seq.Base.lemma_len_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_upd (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_upd@tok () Term)
(declare-fun Tm_refine_2ca062977a42c36634b89c1c4f193f79 (Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_len_upd>


; <Start encoding val FStar.Seq.Base.lemma_len_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_append@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_len_append>


; <Start encoding val FStar.Seq.Base.lemma_len_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_len_slice (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_len_slice@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_len_slice>


; <Start encoding val FStar.Seq.Base.lemma_index_create>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_create (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_create@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_create>


; <Start encoding val FStar.Seq.Base.lemma_index_upd1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd1@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_upd1>


; <Start encoding val FStar.Seq.Base.lemma_index_upd2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd2 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_upd2@tok () Term)

(declare-fun Tm_refine_df81b3f17797c6f405c1dbb191651292 (Term Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_upd2>


; <Start encoding val FStar.Seq.Base.lemma_index_app1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_app1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_app1@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_index_app1>


; <Start encoding val FStar.Seq.Base.lemma_index_app2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_app2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_app2@tok () Term)
(declare-fun Tm_refine_ac201cf927190d39c033967b63cb957b (Term Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_app2>


; <Start encoding val FStar.Seq.Base.lemma_index_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_index_slice (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_index_slice@tok () Term)
(declare-fun Tm_refine_d3d07693cd71377864ef84dc97d10ec1 (Term Term Term) Term)
(declare-fun Tm_refine_35a0739c434508f48d0bb1d5cd5df9e8 (Term Term) Term)

; </end encoding val FStar.Seq.Base.lemma_index_slice>


; <Start encoding val FStar.Seq.Base.hasEq_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.hasEq_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.hasEq_lemma@tok () Term)

; </end encoding val FStar.Seq.Base.hasEq_lemma>


; <Start encoding val FStar.Seq.Base.equal>

(declare-fun FStar.Seq.Base.equal (Term Term Term) Term)
(declare-fun Tm_arrow_c2c0a5f39eee7a5a92db8bac6fe4fb3b () Term)
(declare-fun FStar.Seq.Base.equal@tok () Term)

; </end encoding val FStar.Seq.Base.equal>


; <Start encoding val FStar.Seq.Base.eq_i>

(declare-fun Tm_refine_4639d389381bee5cf8cf77b7a6585074 (Term Term) Term)
(declare-fun Tm_refine_b361ba8089a6e963921008d537e799a1 (Term Term) Term)
(declare-fun FStar.Seq.Base.eq_i (Term Term Term Term) Term)


(declare-fun Tm_refine_331c14d442c5ee89a4fce6ea305c920f (Term Term Term) Term)
(declare-fun Tm_refine_51f956555266662f5f0ed4aac81d10bc (Term Term Term Term) Term)
(declare-fun Tm_arrow_e5286e13b5c071949ebc5146fbef7d7f () Term)
(declare-fun FStar.Seq.Base.eq_i@tok () Term)



; </end encoding val FStar.Seq.Base.eq_i>


; <Start encoding val FStar.Seq.Base.eq>

(declare-fun FStar.Seq.Base.eq (Term Term Term) Term)
(declare-fun Tm_refine_1c0effbdef48f9b00a1efb7b571fbb69 (Term Term Term) Term)
(declare-fun Tm_arrow_70ef1e4b9388d8aa6e0d17c5aeed02a7 () Term)
(declare-fun FStar.Seq.Base.eq@tok () Term)


; </end encoding val FStar.Seq.Base.eq>


; <Start encoding val FStar.Seq.Base.lemma_eq_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_intro (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_intro@tok () Term)


; </end encoding val FStar.Seq.Base.lemma_eq_intro>


; <Start encoding val FStar.Seq.Base.lemma_eq_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_refl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_refl@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_eq_refl>


; <Start encoding val FStar.Seq.Base.lemma_eq_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_eq_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_eq_elim@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_eq_elim>


; <Start encoding val FStar.Seq.Base.append_assoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_assoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_assoc@tok () Term)

; </end encoding val FStar.Seq.Base.append_assoc>


; <Start encoding val FStar.Seq.Base.append_empty_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_empty_l (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_empty_l@tok () Term)

; </end encoding val FStar.Seq.Base.append_empty_l>


; <Start encoding val FStar.Seq.Base.append_empty_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.append_empty_r (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.append_empty_r@tok () Term)

; </end encoding val FStar.Seq.Base.append_empty_r>


; <Start encoding val FStar.Seq.Base.init_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_index@tok () Term)

; </end encoding val FStar.Seq.Base.init_index>


; <Start encoding val FStar.Seq.Base.init_index_>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_index_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_index_@tok () Term)



; </end encoding val FStar.Seq.Base.init_index_>


; <Start encoding val FStar.Seq.Base.init_ghost_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_ghost_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_ghost_index@tok () Term)

; </end encoding val FStar.Seq.Base.init_ghost_index>


; <Start encoding val FStar.Seq.Base.init_ghost_index_>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.init_ghost_index_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.init_ghost_index_@tok () Term)



; </end encoding val FStar.Seq.Base.init_ghost_index_>


; <Start encoding val FStar.Seq.Base.lemma_equal_instances_implies_equal_types>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Base.lemma_equal_instances_implies_equal_types (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Base.lemma_equal_instances_implies_equal_types@tok () Term)

; </end encoding val FStar.Seq.Base.lemma_equal_instances_implies_equal_types>


; End Externals for interface FStar.Seq.Base


; Externals for interface FStar.Seq.Properties


; <Start encoding let lseq>

(declare-fun FStar.Seq.Properties.lseq (Term Term) Term)

(declare-fun FStar.Seq.Properties.lseq@tok () Term)
(declare-fun Tm_refine_a0cd7d06c5da6444b6b51b319febde8e (Term Term) Term)

; </end encoding let lseq>


; <Start encoding let indexable>

(declare-fun FStar.Seq.Properties.indexable (Term Term Term) Term)
(declare-fun Tm_arrow_2c0367dd991d12c77178c7fe63f076c5 () Term)
(declare-fun FStar.Seq.Properties.indexable@tok () Term)

; </end encoding let indexable>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_l (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_l@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj_l>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_r (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj_r@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj_r>


; <Start encoding val FStar.Seq.Properties.lemma_append_len_disj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_len_disj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_len_disj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_len_disj>


; <Start encoding val FStar.Seq.Properties.lemma_append_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_inj>


; <Start encoding let head>

(declare-fun Tm_refine_167ef714932ec832fb671890fc3eee6c (Term) Term)
(declare-fun FStar.Seq.Properties.head (Term Term) Term)

(declare-fun Tm_arrow_fde6b9111cb8aaf87a1b6689af62ed69 () Term)
(declare-fun FStar.Seq.Properties.head@tok () Term)


; </end encoding let head>


; <Start encoding let tail>


(declare-fun FStar.Seq.Properties.tail (Term Term) Term)

(declare-fun Tm_arrow_3db93b3d63ab329f9ab58ee76fda4c87 () Term)
(declare-fun FStar.Seq.Properties.tail@tok () Term)


; </end encoding let tail>


; <Start encoding val FStar.Seq.Properties.lemma_head_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_head_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_head_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_head_append>


; <Start encoding val FStar.Seq.Properties.lemma_tail_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_append>


; <Start encoding let last>


(declare-fun FStar.Seq.Properties.last (Term Term) Term)


(declare-fun FStar.Seq.Properties.last@tok () Term)


; </end encoding let last>


; <Start encoding val FStar.Seq.Properties.lemma_cons_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_cons_inj>


; <Start encoding let split>

(declare-fun Tm_refine_17631fa6304dcc08d028bd475a6dd078 (Term Term) Term)
(declare-fun FStar.Seq.Properties.split (Term Term Term) Term)

(declare-fun Tm_arrow_e8094a245058e1a3364fcb54e52c4b61 () Term)
(declare-fun FStar.Seq.Properties.split@tok () Term)


; </end encoding let split>


; <Start encoding val FStar.Seq.Properties.lemma_split>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_split (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_split@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_split>


; <Start encoding let split_eq>


(declare-fun FStar.Seq.Properties.split_eq (Term Term Term) Term)

(declare-fun Tm_refine_78d42c5dbba01ee594272daa6bb0579c (Term Term) Term)
(declare-fun Tm_arrow_b88932abf1506cfe956c7a113bc65f4b () Term)
(declare-fun FStar.Seq.Properties.split_eq@tok () Term)



; </end encoding let split_eq>


; <Start encoding let rec count>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.count.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.count.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.count (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.count@tok () Term)
(declare-fun Tm_arrow_b68daf91c98458f9ea85290d85674a2e () Term)

; </end encoding let rec count>


; <Start encoding let mem>

(declare-fun FStar.Seq.Properties.mem (Term Term Term) Term)
(declare-fun Tm_arrow_8b9021eb78c56c0f1820182c3a3e44b5 () Term)
(declare-fun FStar.Seq.Properties.mem@tok () Term)

; </end encoding let mem>


; <Start encoding val FStar.Seq.Properties.mem_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_index@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_index>


; <Start encoding let rec index_mem>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.index_mem.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.index_mem.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.index_mem (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.index_mem@tok () Term)
(declare-fun Tm_refine_7c92df3cf71635bc41483532e738d828 (Term Term Term) Term)

(declare-fun Tm_arrow_12def5646e9a05cc547dd67c2eeaec45 () Term)


; </end encoding let rec index_mem>


; <Start encoding let swap>



(declare-fun FStar.Seq.Properties.swap (Term Term Term Term) Term)


(declare-fun Tm_arrow_ed5530d89236443143d2d084ddc97069 () Term)
(declare-fun FStar.Seq.Properties.swap@tok () Term)



; </end encoding let swap>


; <Start encoding val FStar.Seq.Properties.lemma_slice_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_append>


; <Start encoding val FStar.Seq.Properties.lemma_slice_first_in_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_first_in_append (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_first_in_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_first_in_append>


; <Start encoding val FStar.Seq.Properties.slice_upd>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_upd (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_upd@tok () Term)



; </end encoding val FStar.Seq.Properties.slice_upd>


; <Start encoding val FStar.Seq.Properties.upd_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.upd_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.upd_slice@tok () Term)



; </end encoding val FStar.Seq.Properties.upd_slice>


; <Start encoding val FStar.Seq.Properties.lemma_append_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_cons>


; <Start encoding val FStar.Seq.Properties.lemma_tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tl (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tl@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tl>


; <Start encoding let rec sorted>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.sorted.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.sorted.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.sorted (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.sorted@tok () Term)



(declare-fun Tm_arrow_28685b742721099a6ab3847e4434a96d () Term)

; </end encoding let rec sorted>


; <Start encoding val FStar.Seq.Properties.sorted_feq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.sorted_feq (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.sorted_feq@tok () Term)

; </end encoding val FStar.Seq.Properties.sorted_feq>


; <Start encoding val FStar.Seq.Properties.lemma_append_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_count>


; <Start encoding val FStar.Seq.Properties.lemma_append_count_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count_aux (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_append_count_aux@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_append_count_aux>


; <Start encoding val FStar.Seq.Properties.lemma_mem_inversion>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_inversion (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_inversion@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_inversion>


; <Start encoding val FStar.Seq.Properties.lemma_mem_count>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_count (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_count@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_count>


; <Start encoding val FStar.Seq.Properties.lemma_count_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_count_slice (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_count_slice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_count_slice>


; <Start encoding let total_order>


(declare-fun FStar.Seq.Properties.total_order (Term Term) Term)

(declare-fun Tm_arrow_1118b25cace7451b1e5dfdfe482dbb64 () Term)
(declare-fun FStar.Seq.Properties.total_order@tok () Term)


; </end encoding let total_order>


; <Start encoding let tot_ord>

(declare-fun FStar.Seq.Properties.tot_ord (Term) Term)

(declare-fun FStar.Seq.Properties.tot_ord@tok () Term)

(declare-fun Tm_refine_a01e88865b4bbd2f0a4bcb261b6760a8 (Term) Term)

; </end encoding let tot_ord>


; <Start encoding val FStar.Seq.Properties.sorted_concat_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.sorted_concat_lemma (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.sorted_concat_lemma@tok () Term)

; </end encoding val FStar.Seq.Properties.sorted_concat_lemma>


; <Start encoding val FStar.Seq.Properties.split_5>

(declare-fun Tm_refine_55108d29d63192475ca95f591039cc18 (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.split_5 (Term Term Term Term) Term)

(declare-fun Tm_refine_03fdfb031367b218884098aa9d386676 (Term Term Term Term) Term)
(declare-fun Tm_arrow_1ab34f107de5525c681399e3c671c330 () Term)
(declare-fun FStar.Seq.Properties.split_5@tok () Term)


; </end encoding val FStar.Seq.Properties.split_5>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_aux_frag_eq>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_aux@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_aux>


; <Start encoding let permutation>

(declare-fun FStar.Seq.Properties.permutation (Term Term Term) Term)
(declare-fun Tm_arrow_05517904f5779069bb79d90a352f1386 () Term)
(declare-fun FStar.Seq.Properties.permutation@tok () Term)

; </end encoding let permutation>


; <Start encoding val FStar.Seq.Properties.append_permutations>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_permutations (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_permutations@tok () Term)

; </end encoding val FStar.Seq.Properties.append_permutations>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes>


; <Start encoding val FStar.Seq.Properties.perm_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.perm_len (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.perm_len@tok () Term)

; </end encoding val FStar.Seq.Properties.perm_len>


; <Start encoding val FStar.Seq.Properties.cons_perm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_perm (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_perm@tok () Term)

; </end encoding val FStar.Seq.Properties.cons_perm>


; <Start encoding val FStar.Seq.Properties.lemma_mem_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_append (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_append@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_append>


; <Start encoding val FStar.Seq.Properties.lemma_slice_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_cons>


; <Start encoding val FStar.Seq.Properties.lemma_slice_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_slice_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_slice_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_ordering_lo_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_lo_snoc (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_lo_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_ordering_lo_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_ordering_hi_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_hi_cons (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_ordering_hi_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_ordering_hi_cons>


; <Start encoding val FStar.Seq.Properties.swap_frame_lo>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_lo>


; <Start encoding val FStar.Seq.Properties.swap_frame_lo'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo_ (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_lo_@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_lo'>


; <Start encoding val FStar.Seq.Properties.swap_frame_hi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.swap_frame_hi (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.swap_frame_hi@tok () Term)

; </end encoding val FStar.Seq.Properties.swap_frame_hi>


; <Start encoding val FStar.Seq.Properties.lemma_swap_slice_commute>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_slice_commute (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_slice_commute@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_slice_commute>


; <Start encoding val FStar.Seq.Properties.lemma_swap_permutes_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_permutes_slice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_permutes_slice>


; <Start encoding let splice>



(declare-fun FStar.Seq.Properties.splice (Term Term Term Term Term) Term)


(declare-fun Tm_arrow_c43a25ef505b9db21532cdb95f3c9f68 () Term)
(declare-fun FStar.Seq.Properties.splice@tok () Term)



; </end encoding let splice>


; <Start encoding let replace_subseq>


(declare-fun Tm_refine_5542011d20872a6178aad9a072f1b686 (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.replace_subseq (Term Term Term Term Term) Term)


(declare-fun Tm_arrow_9fa775abc8f8f9c4e6df626212cddc6a () Term)
(declare-fun FStar.Seq.Properties.replace_subseq@tok () Term)



; </end encoding let replace_subseq>


; <Start encoding val FStar.Seq.Properties.splice_refl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.splice_refl (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.splice_refl@tok () Term)

; </end encoding val FStar.Seq.Properties.splice_refl>


; <Start encoding val FStar.Seq.Properties.lemma_swap_splice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_splice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_swap_splice@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_swap_splice>


; <Start encoding val FStar.Seq.Properties.lemma_seq_frame_hi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_hi (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_hi@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_frame_hi>


; <Start encoding val FStar.Seq.Properties.lemma_seq_frame_lo>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_lo (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_frame_lo@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_frame_lo>


; <Start encoding val FStar.Seq.Properties.lemma_tail_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_slice (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_slice@tok () Term)
(declare-fun Tm_refine_b138bd5848d4184f7632587e6e4bcf9f (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_slice>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_frame_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_right (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_right@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_frame_right>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_frame_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_left (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_frame_left@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_frame_left>


; <Start encoding val FStar.Seq.Properties.lemma_trans_frame>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_frame (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_frame@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_trans_frame>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_perm_left>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_left (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_left@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_perm_left>


; <Start encoding val FStar.Seq.Properties.lemma_weaken_perm_right>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_right (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_weaken_perm_right@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_weaken_perm_right>


; <Start encoding val FStar.Seq.Properties.lemma_trans_perm>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_perm (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_trans_perm@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_trans_perm>


; <Start encoding let snoc>

(declare-fun FStar.Seq.Properties.snoc (Term Term Term) Term)
(declare-fun Tm_arrow_f9b27de7c4505538c6110afe14403cc8 () Term)
(declare-fun FStar.Seq.Properties.snoc@tok () Term)

; </end encoding let snoc>


; <Start encoding val FStar.Seq.Properties.lemma_cons_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_cons_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_cons_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_tail_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_tail_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_tail_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_snoc_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_snoc_inj (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_snoc_inj@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_snoc_inj>


; <Start encoding val FStar.Seq.Properties.lemma_mem_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_mem_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_mem_snoc>


; <Start encoding let rec find_l>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.find_l.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.find_l.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.find_l (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.find_l@tok () Term)

(declare-fun Tm_refine_aba7638072c8f1ba6a01b95ec6f9a485 (Term Term) Term)



(declare-fun Tm_arrow_fd183dc9552028fd54abfbe4a84f515a () Term)


; </end encoding let rec find_l>


; <Start encoding let rec ghost_find_l>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.ghost_find_l.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.ghost_find_l.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.ghost_find_l (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.ghost_find_l@tok () Term)
(declare-fun Tm_ghost_arrow_9a34a9deaac3ca72ad48c3ec79b6656c (Term) Term)




(declare-fun Tm_ghost_arrow_3f8a537d0d54200d690f80a370cf9031 () Term)


; </end encoding let rec ghost_find_l>


; <Start encoding val FStar.Seq.Properties.find_append_some>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_some (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_some@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_some>


; <Start encoding val FStar.Seq.Properties.find_append_none>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_none (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_none@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_none>


; <Start encoding val FStar.Seq.Properties.find_append_none_s2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_append_none_s2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_append_none_s2@tok () Term)

; </end encoding val FStar.Seq.Properties.find_append_none_s2>


; <Start encoding val FStar.Seq.Properties.find_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.find_snoc>


; <Start encoding let un_snoc>

(declare-fun Tm_refine_5739deb21d8cba89243fec27b35b7ef0 (Term) Term)
(declare-fun FStar.Seq.Properties.un_snoc (Term Term) Term)

(declare-fun Tm_refine_16326afaeb5f4d93ab294cc4a965de3e (Term Term) Term)
(declare-fun Tm_arrow_30c2910b2510bbce2598a79ba00a0209 () Term)
(declare-fun FStar.Seq.Properties.un_snoc@tok () Term)



; </end encoding let un_snoc>


; <Start encoding val FStar.Seq.Properties.un_snoc_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.un_snoc_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.un_snoc_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.un_snoc_snoc>


; <Start encoding let rec find_r>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.find_r.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.find_r.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.find_r (Term Term Term) Term)
(declare-fun FStar.Seq.Properties.find_r@tok () Term)








; </end encoding let rec find_r>


; <Start encoding let found>

(declare-fun FStar.Seq.Properties.found (Term) Term)
(declare-fun Tm_arrow_591bcdc53dc583ecc77b1bc5436f9a59 () Term)
(declare-fun FStar.Seq.Properties.found@tok () Term)

; </end encoding let found>


; <Start encoding let rec seq_find_aux>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.seq_find_aux.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.seq_find_aux.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.seq_find_aux (Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.seq_find_aux@tok () Term)


(declare-fun Tm_refine_564e05c43cb7c1f4e1de1a4fb2fd28c8 (Term Term Term) Term)


(declare-fun Tm_refine_5e8ab89510578a938a38bd5dfb813b93 (Term Term Term) Term)









(declare-fun Tm_arrow_c2dc7826f3281f473541797eb2d714b7 () Term)




; </end encoding let rec seq_find_aux>


; <Start encoding let seq_find>


(declare-fun FStar.Seq.Properties.seq_find (Term Term Term) Term)




(declare-fun Tm_arrow_fa1508f34cdf614c6772d290f5ddf827 () Term)
(declare-fun FStar.Seq.Properties.seq_find@tok () Term)





; </end encoding let seq_find>


; <Start encoding val FStar.Seq.Properties.find_mem>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_mem (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_mem@tok () Term)

; </end encoding val FStar.Seq.Properties.find_mem>


; <Start encoding let for_all>


(declare-fun FStar.Seq.Properties.for_all (Term Term Term) Term)


(declare-fun Tm_refine_307fd373d8b3749096cf164b41cf1984 (Term Term Term) Term)
(declare-fun Tm_arrow_098d0ddce18f722cb743337c9d7dd0b9 () Term)
(declare-fun FStar.Seq.Properties.for_all@tok () Term)




(declare-fun Tm_abs_e818836335067047224d0c19c4cabb2d (Term Term) Term)

; </end encoding let for_all>


; <Start encoding val FStar.Seq.Properties.seq_mem_k>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.seq_mem_k (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.seq_mem_k@tok () Term)


; </end encoding val FStar.Seq.Properties.seq_mem_k>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_induction>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_induction (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_induction@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_induction>


; <Start encoding val FStar.Seq.Properties.lemma_seq_list_bij>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_list_bij (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_list_bij@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_list_bij>


; <Start encoding val FStar.Seq.Properties.lemma_list_seq_bij>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_list_seq_bij (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_list_seq_bij@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_list_seq_bij>


; <Start encoding let createL_post>

(declare-fun FStar.Seq.Properties.createL_post (Term Term Term) Term)
(declare-fun Tm_arrow_befeea9093c61a572da65bfe7ce35cff () Term)
(declare-fun FStar.Seq.Properties.createL_post@tok () Term)
(declare-fun Tm_refine_1780a0fddfda88c43d203b562c6d3f5b () Term)

; </end encoding let createL_post>


; <Start encoding let createL>

(declare-fun FStar.Seq.Properties.createL (Term Term) Term)

(declare-fun Tm_refine_21ffdca6c0b13e0caadadae84ae105ad (Term Term) Term)
(declare-fun Tm_arrow_fe4a88707901fac19b8a27ed4097cad8 () Term)
(declare-fun FStar.Seq.Properties.createL@tok () Term)



; </end encoding let createL>


; <Start encoding val FStar.Seq.Properties.lemma_index_is_nth>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_index_is_nth (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_index_is_nth@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_index_is_nth>


; <Start encoding val FStar.Seq.Properties.contains>

(declare-fun FStar.Seq.Properties.contains (Term Term Term) Term)
(declare-fun Tm_arrow_65d0102b1211a5d233193433129106a1 () Term)
(declare-fun FStar.Seq.Properties.contains@tok () Term)

; </end encoding val FStar.Seq.Properties.contains>


; <Start encoding val FStar.Seq.Properties.contains_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_intro (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_intro@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_intro>


; <Start encoding val FStar.Seq.Properties.contains_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_elim (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_elim@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_elim>


; <Start encoding val FStar.Seq.Properties.lemma_contains_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_empty (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_empty@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_contains_empty>


; <Start encoding val FStar.Seq.Properties.lemma_contains_singleton>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_singleton (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_contains_singleton@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_contains_singleton>


; <Start encoding val FStar.Seq.Properties.append_contains_equiv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_contains_equiv (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_contains_equiv@tok () Term)

; </end encoding val FStar.Seq.Properties.append_contains_equiv>


; <Start encoding val FStar.Seq.Properties.contains_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_snoc (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_snoc>


; <Start encoding val FStar.Seq.Properties.lemma_find_l_contains>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_find_l_contains (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_find_l_contains@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_find_l_contains>


; <Start encoding val FStar.Seq.Properties.contains_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.contains_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.contains_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.contains_cons>


; <Start encoding val FStar.Seq.Properties.append_cons_snoc>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_cons_snoc (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_cons_snoc@tok () Term)

; </end encoding val FStar.Seq.Properties.append_cons_snoc>


; <Start encoding val FStar.Seq.Properties.append_slices>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_slices (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_slices@tok () Term)

; </end encoding val FStar.Seq.Properties.append_slices>


; <Start encoding val FStar.Seq.Properties.find_l_none_no_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.find_l_none_no_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.find_l_none_no_index@tok () Term)

; </end encoding val FStar.Seq.Properties.find_l_none_no_index>


; <Start encoding let suffix_of>

(declare-fun FStar.Seq.Properties.suffix_of (Term Term Term) Term)
(declare-fun Tm_arrow_2ed6082b86d605508c94c4b8a46966f5 () Term)
(declare-fun FStar.Seq.Properties.suffix_of@tok () Term)

; </end encoding let suffix_of>


; <Start encoding val FStar.Seq.Properties.cons_head_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_head_tail (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_head_tail@tok () Term)


; </end encoding val FStar.Seq.Properties.cons_head_tail>


; <Start encoding val FStar.Seq.Properties.head_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.head_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.head_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.head_cons>


; <Start encoding val FStar.Seq.Properties.suffix_of_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.suffix_of_tail (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.suffix_of_tail@tok () Term)


; </end encoding val FStar.Seq.Properties.suffix_of_tail>


; <Start encoding val FStar.Seq.Properties.index_cons_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_cons_l (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_cons_l@tok () Term)

; </end encoding val FStar.Seq.Properties.index_cons_l>


; <Start encoding val FStar.Seq.Properties.index_cons_r>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_cons_r (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_cons_r@tok () Term)

; </end encoding val FStar.Seq.Properties.index_cons_r>


; <Start encoding val FStar.Seq.Properties.append_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.append_cons (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.append_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.append_cons>


; <Start encoding val FStar.Seq.Properties.index_tail>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.index_tail (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.index_tail@tok () Term)

; </end encoding val FStar.Seq.Properties.index_tail>


; <Start encoding val FStar.Seq.Properties.mem_cons>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_cons (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_cons@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_cons>


; <Start encoding val FStar.Seq.Properties.snoc_slice_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.snoc_slice_index (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.snoc_slice_index@tok () Term)
(declare-fun Tm_refine_095c5722edf0f79bcd7dce7bd084c7b5 (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.snoc_slice_index>


; <Start encoding val FStar.Seq.Properties.cons_index_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.cons_index_slice (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.cons_index_slice@tok () Term)
(declare-fun Tm_refine_09d2e9ab3b9c121b24316d151747e281 (Term Term Term) Term)
(declare-fun Tm_refine_ddd44b85040d1947cca83550b7e21966 (Term) Term)

; </end encoding val FStar.Seq.Properties.cons_index_slice>


; <Start encoding val FStar.Seq.Properties.slice_is_empty>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_is_empty (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_is_empty@tok () Term)


; </end encoding val FStar.Seq.Properties.slice_is_empty>


; <Start encoding val FStar.Seq.Properties.slice_length>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_length (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_length@tok () Term)

; </end encoding val FStar.Seq.Properties.slice_length>


; <Start encoding val FStar.Seq.Properties.slice_slice>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.slice_slice (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.slice_slice@tok () Term)

(declare-fun Tm_refine_1ba8fd8bb363097813064c67740b2de5 (Term Term Term) Term)

; </end encoding val FStar.Seq.Properties.slice_slice>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_index@tok () Term)


; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_index>


; <Start encoding let of_list>

(declare-fun FStar.Seq.Properties.of_list (Term Term) Term)
(declare-fun Tm_arrow_474463878fff5c7c9c02e4f0b8b84aa8 () Term)
(declare-fun FStar.Seq.Properties.of_list@tok () Term)

; </end encoding let of_list>


; <Start encoding val FStar.Seq.Properties.seq_of_list_tl>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.seq_of_list_tl (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.seq_of_list_tl@tok () Term)

; </end encoding val FStar.Seq.Properties.seq_of_list_tl>


; <Start encoding val FStar.Seq.Properties.mem_seq_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.mem_seq_of_list (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.mem_seq_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.mem_seq_of_list>


; <Start encoding let rec explode_and>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.explode_and.fuel_instrumented (Fuel Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.explode_and.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.explode_and (Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.explode_and@tok () Term)
(declare-fun Tm_refine_5885c715bf599d471c43c6b7dcb2413b (Term Term) Term)
(declare-fun Tm_refine_c731267dd71b747abfd9fc75f6f2da81 (Term Term Term) Term)




(declare-fun Tm_arrow_62bce6f622c5bc90fd46048dee6dae55 () Term)

; </end encoding let rec explode_and>


; <Start encoding let pointwise_and>

(declare-fun Tm_refine_9f068c7f6ce275579028a195ac18485b (Term) Term)
(declare-fun Tm_refine_1ad818e6438a897337e89a3053cb2002 (Term Term) Term)
(declare-fun FStar.Seq.Properties.pointwise_and (Term Term Term) Term)


(declare-fun Tm_arrow_1d69c34f503e87805d9fa1b40bc9b696 () Term)
(declare-fun FStar.Seq.Properties.pointwise_and@tok () Term)



; </end encoding let pointwise_and>


; <Start encoding val FStar.Seq.Properties.intro_of_list'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.intro_of_list_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.intro_of_list_@tok () Term)

; </end encoding val FStar.Seq.Properties.intro_of_list'>


; <Start encoding val FStar.Seq.Properties.intro_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.intro_of_list (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.intro_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.intro_of_list>


; <Start encoding val FStar.Seq.Properties.elim_of_list'>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.elim_of_list_ (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.elim_of_list_@tok () Term)

; </end encoding val FStar.Seq.Properties.elim_of_list'>


; <Start encoding val FStar.Seq.Properties.elim_of_list>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.elim_of_list (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.elim_of_list@tok () Term)

; </end encoding val FStar.Seq.Properties.elim_of_list>


; <Start encoding let sortWith>


(declare-fun FStar.Seq.Properties.sortWith (Term Term Term) Term)

(declare-fun Tm_arrow_783d577ed6adadfd234f2ce68178463f () Term)
(declare-fun FStar.Seq.Properties.sortWith@tok () Term)


; </end encoding let sortWith>


; <Start encoding val FStar.Seq.Properties.lemma_seq_to_list_permutation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_to_list_permutation (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_to_list_permutation@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_to_list_permutation>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_permutation>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_permutation (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_permutation@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_permutation>


; <Start encoding val FStar.Seq.Properties.lemma_seq_of_list_sorted>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_sorted (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_of_list_sorted@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_of_list_sorted>


; <Start encoding val FStar.Seq.Properties.lemma_seq_sortwith_correctness>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_sortwith_correctness (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.lemma_seq_sortwith_correctness@tok () Term)

; </end encoding val FStar.Seq.Properties.lemma_seq_sortwith_correctness>


; <Start encoding let sort_lseq>

(declare-fun FStar.Seq.Properties.sort_lseq (Term Term Term Term) Term)
(declare-fun Tm_refine_896d0573468d5c87de125067e75d7d47 (Term Term Term Term) Term)
(declare-fun Tm_arrow_3fb7de3746e0ee65d4a1a51ab385c639 () Term)
(declare-fun FStar.Seq.Properties.sort_lseq@tok () Term)


; </end encoding let sort_lseq>


; <Start encoding let rec foldr>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.foldr.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.foldr.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.foldr (Term Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.foldr@tok () Term)



(declare-fun Tm_arrow_d44e7807ff692a4b5f624a4c31f6a34b () Term)

; </end encoding let rec foldr>


; <Start encoding let rec foldr_snoc>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.Seq.Properties.foldr_snoc.fuel_instrumented (Fuel Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.Seq.Properties.foldr_snoc.fuel_instrumented_token () Term)
(declare-fun FStar.Seq.Properties.foldr_snoc (Term Term Term Term Term) Term)
(declare-fun FStar.Seq.Properties.foldr_snoc@tok () Term)





; </end encoding let rec foldr_snoc>


; <Start encoding val FStar.Seq.Properties.map_seq>


(declare-fun FStar.Seq.Properties.map_seq (Term Term Term Term) Term)

(declare-fun Tm_arrow_5f9288474a8f301ac883b79bab9ed39c () Term)
(declare-fun FStar.Seq.Properties.map_seq@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq>


; <Start encoding val FStar.Seq.Properties.map_seq_len>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_len (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_len@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_len>


; <Start encoding val FStar.Seq.Properties.map_seq_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_index (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_index@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_index>


; <Start encoding val FStar.Seq.Properties.map_seq_append>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Seq.Properties.map_seq_append (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Seq.Properties.map_seq_append@tok () Term)

; </end encoding val FStar.Seq.Properties.map_seq_append>


; End Externals for interface FStar.Seq.Properties


; Externals for module FStar.Seq


; End Externals for module FStar.Seq


; Externals for interface FStar.BitVector


; <Start encoding let bv_t>

(declare-fun FStar.BitVector.bv_t (Term) Term)
(declare-fun Tm_arrow_9974df5c311cfcfa7100bc7bef095e1e () Term)
(declare-fun FStar.BitVector.bv_t@tok () Term)
(declare-fun Tm_refine_e2d5d62a90ceed8a6faf9d20615f4e1e (Term) Term)

; </end encoding let bv_t>


; <Start encoding let zero_vec>

(declare-fun FStar.BitVector.zero_vec (Term) Term)
(declare-fun Tm_arrow_b6d52a9c4babaef5c45b062eb8723782 () Term)
(declare-fun FStar.BitVector.zero_vec@tok () Term)

; </end encoding let zero_vec>


; <Start encoding let elem_vec>


(declare-fun FStar.BitVector.elem_vec (Term Term) Term)

(declare-fun Tm_arrow_6880b3a4da9e8c38f1dbaa400eb50d7d () Term)
(declare-fun FStar.BitVector.elem_vec@tok () Term)


; </end encoding let elem_vec>


; <Start encoding let ones_vec>

(declare-fun FStar.BitVector.ones_vec (Term) Term)

(declare-fun FStar.BitVector.ones_vec@tok () Term)

; </end encoding let ones_vec>


; <Start encoding let rec logand_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.BitVector.logand_vec.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.BitVector.logand_vec.fuel_instrumented_token () Term)
(declare-fun FStar.BitVector.logand_vec (Term Term Term) Term)
(declare-fun FStar.BitVector.logand_vec@tok () Term)
(declare-fun Tm_arrow_d5001f682a0789c7aa8e67d06058b034 () Term)

; </end encoding let rec logand_vec>


; <Start encoding val FStar.BitVector.logand_vec_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.logand_vec_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.logand_vec_definition@tok () Term)


; </end encoding val FStar.BitVector.logand_vec_definition>


; <Start encoding let rec logxor_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.BitVector.logxor_vec.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.BitVector.logxor_vec.fuel_instrumented_token () Term)
(declare-fun FStar.BitVector.logxor_vec (Term Term Term) Term)
(declare-fun FStar.BitVector.logxor_vec@tok () Term)


; </end encoding let rec logxor_vec>


; <Start encoding val FStar.BitVector.logxor_vec_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.logxor_vec_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.logxor_vec_definition@tok () Term)


; </end encoding val FStar.BitVector.logxor_vec_definition>


; <Start encoding let rec logor_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.BitVector.logor_vec.fuel_instrumented (Fuel Term Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.BitVector.logor_vec.fuel_instrumented_token () Term)
(declare-fun FStar.BitVector.logor_vec (Term Term Term) Term)
(declare-fun FStar.BitVector.logor_vec@tok () Term)


; </end encoding let rec logor_vec>


; <Start encoding val FStar.BitVector.logor_vec_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.logor_vec_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.logor_vec_definition@tok () Term)


; </end encoding val FStar.BitVector.logor_vec_definition>


; <Start encoding let rec lognot_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.BitVector.lognot_vec.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.BitVector.lognot_vec.fuel_instrumented_token () Term)
(declare-fun FStar.BitVector.lognot_vec (Term Term) Term)
(declare-fun FStar.BitVector.lognot_vec@tok () Term)
(declare-fun Tm_arrow_190e27813ba14c0d36577dc3d47778da () Term)

; </end encoding let rec lognot_vec>


; <Start encoding val FStar.BitVector.lognot_vec_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.lognot_vec_definition (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.lognot_vec_definition@tok () Term)


; </end encoding val FStar.BitVector.lognot_vec_definition>


; <Start encoding val FStar.BitVector.lemma_xor_bounded>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.lemma_xor_bounded (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.lemma_xor_bounded@tok () Term)

; </end encoding val FStar.BitVector.lemma_xor_bounded>


; <Start encoding let is_subset_vec>

(declare-fun FStar.BitVector.is_subset_vec (Term Term Term) Term)
(declare-fun Tm_arrow_b51a0c80adeae3f31b1215853bb34fe1 () Term)
(declare-fun FStar.BitVector.is_subset_vec@tok () Term)

; </end encoding let is_subset_vec>


; <Start encoding let is_superset_vec>

(declare-fun FStar.BitVector.is_superset_vec (Term Term Term) Term)

(declare-fun FStar.BitVector.is_superset_vec@tok () Term)

; </end encoding let is_superset_vec>


; <Start encoding val FStar.BitVector.lemma_slice_subset_vec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.lemma_slice_subset_vec (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.lemma_slice_subset_vec@tok () Term)

; </end encoding val FStar.BitVector.lemma_slice_subset_vec>


; <Start encoding val FStar.BitVector.lemma_slice_superset_vec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.lemma_slice_superset_vec (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.lemma_slice_superset_vec@tok () Term)

; </end encoding val FStar.BitVector.lemma_slice_superset_vec>


; <Start encoding let shift_left_vec>

(declare-fun FStar.BitVector.shift_left_vec (Term Term Term) Term)
(declare-fun Tm_arrow_ccbebd343bd3a7caba5f263c2ba5f3be () Term)
(declare-fun FStar.BitVector.shift_left_vec@tok () Term)

; </end encoding let shift_left_vec>


; <Start encoding val FStar.BitVector.shift_left_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_left_vec_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_left_vec_lemma_1@tok () Term)
(declare-fun Tm_refine_6ccf0869e6825997ab860bb25791c11f (Term Term) Term)

; </end encoding val FStar.BitVector.shift_left_vec_lemma_1>


; <Start encoding val FStar.BitVector.shift_left_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_left_vec_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_left_vec_lemma_2@tok () Term)
(declare-fun Tm_refine_e8e1ad4b2203cd724d5b8b2dba0a5826 (Term Term) Term)

; </end encoding val FStar.BitVector.shift_left_vec_lemma_2>


; <Start encoding let shift_right_vec>

(declare-fun FStar.BitVector.shift_right_vec (Term Term Term) Term)

(declare-fun FStar.BitVector.shift_right_vec@tok () Term)

; </end encoding let shift_right_vec>


; <Start encoding val FStar.BitVector.shift_right_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_right_vec_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_right_vec_lemma_1@tok () Term)
(declare-fun Tm_refine_34425c23b534b8a294f8f063dd9faa4b (Term Term) Term)

; </end encoding val FStar.BitVector.shift_right_vec_lemma_1>


; <Start encoding val FStar.BitVector.shift_right_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_right_vec_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_right_vec_lemma_2@tok () Term)
(declare-fun Tm_refine_c0ec47abc53a2509e744dad22ccf8191 (Term Term) Term)

; </end encoding val FStar.BitVector.shift_right_vec_lemma_2>


; <Start encoding let shift_arithmetic_right_vec>

(declare-fun FStar.BitVector.shift_arithmetic_right_vec (Term Term Term) Term)

(declare-fun FStar.BitVector.shift_arithmetic_right_vec@tok () Term)

; </end encoding let shift_arithmetic_right_vec>


; <Start encoding val FStar.BitVector.shift_arithmetic_right_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_arithmetic_right_vec_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_arithmetic_right_vec_lemma_1@tok () Term)


; </end encoding val FStar.BitVector.shift_arithmetic_right_vec_lemma_1>


; <Start encoding val FStar.BitVector.shift_arithmetic_right_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.BitVector.shift_arithmetic_right_vec_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.BitVector.shift_arithmetic_right_vec_lemma_2@tok () Term)


; </end encoding val FStar.BitVector.shift_arithmetic_right_vec_lemma_2>


; End Externals for interface FStar.BitVector


; Externals for interface FStar.UInt


; <Start encoding val FStar.UInt.pow2_values>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.pow2_values (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.pow2_values@tok () Term)

; </end encoding val FStar.UInt.pow2_values>


; <Start encoding let max_int>

(declare-fun FStar.UInt.max_int (Term) Term)
(declare-fun Tm_arrow_fc34ca66de2f262c06145b17fb7ed6cb () Term)
(declare-fun FStar.UInt.max_int@tok () Term)

; </end encoding let max_int>


; <Start encoding let min_int>

(declare-fun FStar.UInt.min_int (Term) Term)

(declare-fun FStar.UInt.min_int@tok () Term)

; </end encoding let min_int>


; <Start encoding let fits>

(declare-fun FStar.UInt.fits (Term Term) Term)
(declare-fun Tm_arrow_dea48782e508c14fa98dcf9716548804 () Term)
(declare-fun FStar.UInt.fits@tok () Term)

; </end encoding let fits>


; <Start encoding let size>

(declare-fun FStar.UInt.size (Term Term) Term)
(declare-fun Tm_arrow_f4ec8f8bfe492e31741a15356024bbaa () Term)
(declare-fun FStar.UInt.size@tok () Term)

; </end encoding let size>


; <Start encoding let uint_t>

(declare-fun FStar.UInt.uint_t (Term) Term)

(declare-fun FStar.UInt.uint_t@tok () Term)
(declare-fun Tm_refine_f13070840248fced9d9d60d77bdae3ec (Term) Term)

; </end encoding let uint_t>


; <Start encoding let zero>

(declare-fun FStar.UInt.zero (Term) Term)
(declare-fun Tm_arrow_f1dd811328ea3b27fc410fa0f52880f7 () Term)
(declare-fun FStar.UInt.zero@tok () Term)

; </end encoding let zero>


; <Start encoding let pow2_n>


(declare-fun FStar.UInt.pow2_n (Term Term) Term)

(declare-fun Tm_arrow_8d41edd1e7b665db26512e6c6d9ece64 () Term)
(declare-fun FStar.UInt.pow2_n@tok () Term)


; </end encoding let pow2_n>


; <Start encoding let one>

(declare-fun FStar.UInt.one (Term) Term)
(declare-fun Tm_arrow_89d370fa478cfd1f85a8759662ce0390 () Term)
(declare-fun FStar.UInt.one@tok () Term)

; </end encoding let one>


; <Start encoding let ones>

(declare-fun FStar.UInt.ones (Term) Term)

(declare-fun FStar.UInt.ones@tok () Term)

; </end encoding let ones>


; <Start encoding let incr>

(declare-fun FStar.UInt.incr (Term Term) Term)
(declare-fun Tm_refine_22e8629663f0cb1c9de86e57e73778e3 (Term) Term)
(declare-fun Tm_arrow_e8e04e4a1022a7343e76760b76915c9e () Term)
(declare-fun FStar.UInt.incr@tok () Term)


; </end encoding let incr>


; <Start encoding let decr>

(declare-fun FStar.UInt.decr (Term Term) Term)

(declare-fun Tm_arrow_2a167fb2d2f3f00bff7b73f048db0e83 () Term)
(declare-fun FStar.UInt.decr@tok () Term)


; </end encoding let decr>


; <Start encoding val FStar.UInt.incr_underspec>

(declare-fun FStar.UInt.incr_underspec (Term Term) Term)
(declare-fun Tm_refine_6a367e92d5b1ca10009a43bd430dd796 (Term Term) Term)
(declare-fun Tm_arrow_fb114bd2e9239af1296268eb30490ff7 () Term)
(declare-fun FStar.UInt.incr_underspec@tok () Term)


; </end encoding val FStar.UInt.incr_underspec>


; <Start encoding val FStar.UInt.decr_underspec>

(declare-fun FStar.UInt.decr_underspec (Term Term) Term)
(declare-fun Tm_refine_fa3c796c533e86dc9f3e3ffc647718f6 (Term Term) Term)
(declare-fun Tm_arrow_f1853f30408c6d0beb7795897a3ab5bc () Term)
(declare-fun FStar.UInt.decr_underspec@tok () Term)


; </end encoding val FStar.UInt.decr_underspec>


; <Start encoding let incr_mod>

(declare-fun FStar.UInt.incr_mod (Term Term) Term)
(declare-fun Tm_arrow_a565732dbe0b43ae2274b1f24341f11b () Term)
(declare-fun FStar.UInt.incr_mod@tok () Term)

; </end encoding let incr_mod>


; <Start encoding let decr_mod>

(declare-fun FStar.UInt.decr_mod (Term Term) Term)

(declare-fun FStar.UInt.decr_mod@tok () Term)

; </end encoding let decr_mod>


; <Start encoding let add>

(declare-fun FStar.UInt.add (Term Term Term) Term)

(declare-fun Tm_arrow_ea9f73d61c207ec4508af75e87c5ca13 () Term)
(declare-fun FStar.UInt.add@tok () Term)


; </end encoding let add>


; <Start encoding val FStar.UInt.add_underspec>

(declare-fun FStar.UInt.add_underspec (Term Term Term) Term)
(declare-fun Tm_refine_c7a9b50c1b5983f8171c03368a208e31 (Term Term Term) Term)
(declare-fun Tm_arrow_880847ba34dd402fb6567384684864a6 () Term)
(declare-fun FStar.UInt.add_underspec@tok () Term)


; </end encoding val FStar.UInt.add_underspec>


; <Start encoding let add_mod>

(declare-fun FStar.UInt.add_mod (Term Term Term) Term)
(declare-fun Tm_arrow_2f3c6a962eb1cbbfd959311c0f20b277 () Term)
(declare-fun FStar.UInt.add_mod@tok () Term)

; </end encoding let add_mod>


; <Start encoding let sub>

(declare-fun FStar.UInt.sub (Term Term Term) Term)

(declare-fun Tm_arrow_974b47e4388c1a4055fe210bb6a11687 () Term)
(declare-fun FStar.UInt.sub@tok () Term)


; </end encoding let sub>


; <Start encoding val FStar.UInt.sub_underspec>

(declare-fun FStar.UInt.sub_underspec (Term Term Term) Term)
(declare-fun Tm_refine_109ae46bb20ad559af297346ec64ae4e (Term Term Term) Term)
(declare-fun Tm_arrow_1479a03f646b965be1bfedb2ee360f95 () Term)
(declare-fun FStar.UInt.sub_underspec@tok () Term)


; </end encoding val FStar.UInt.sub_underspec>


; <Start encoding let sub_mod>

(declare-fun FStar.UInt.sub_mod (Term Term Term) Term)

(declare-fun FStar.UInt.sub_mod@tok () Term)

; </end encoding let sub_mod>


; <Start encoding let mul>

(declare-fun FStar.UInt.mul (Term Term Term) Term)

(declare-fun Tm_arrow_45e02637bbbba15e6760300e4a62b58d () Term)
(declare-fun FStar.UInt.mul@tok () Term)


; </end encoding let mul>


; <Start encoding val FStar.UInt.mul_underspec>

(declare-fun FStar.UInt.mul_underspec (Term Term Term) Term)
(declare-fun Tm_refine_ea207e5cce50229e615af011837e59a5 (Term Term Term) Term)
(declare-fun Tm_arrow_1f5fca1fff06689d84a49261819dc580 () Term)
(declare-fun FStar.UInt.mul_underspec@tok () Term)


; </end encoding val FStar.UInt.mul_underspec>


; <Start encoding let mul_mod>

(declare-fun FStar.UInt.mul_mod (Term Term Term) Term)

(declare-fun FStar.UInt.mul_mod@tok () Term)

; </end encoding let mul_mod>


; <Start encoding val FStar.UInt.lt_square_div_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lt_square_div_lt (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lt_square_div_lt@tok () Term)

; </end encoding val FStar.UInt.lt_square_div_lt>


; <Skipped #push-options "--fuel 0 --ifuel 0"/>


; <Start encoding let mul_div>

(declare-fun FStar.UInt.mul_div (Term Term Term) Term)

(declare-fun FStar.UInt.mul_div@tok () Term)

; </end encoding let mul_div>


; <Skipped #pop-options/>


; <Start encoding let div>

(declare-fun Tm_refine_0722e9115d2a1be8d90527397d01011c (Term) Term)
(declare-fun FStar.UInt.div (Term Term Term) Term)

(declare-fun Tm_refine_e49d79feeb1e96b29b0f01b06f8dac23 (Term Term Term) Term)
(declare-fun Tm_arrow_6ebc7a9e6ff34015952a4168421980bf () Term)
(declare-fun FStar.UInt.div@tok () Term)



; </end encoding let div>


; <Start encoding val FStar.UInt.div_underspec>


(declare-fun FStar.UInt.div_underspec (Term Term Term) Term)

(declare-fun Tm_refine_fafbb762e9b0100ba27aa174122ddaa3 (Term Term Term) Term)
(declare-fun Tm_arrow_ed1485a952a27dc4770fb0182ab26e79 () Term)
(declare-fun FStar.UInt.div_underspec@tok () Term)


; </end encoding val FStar.UInt.div_underspec>


; <Start encoding val FStar.UInt.div_size>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.div_size (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.div_size@tok () Term)

; </end encoding val FStar.UInt.div_size>


; <Start encoding let udiv>


(declare-fun FStar.UInt.udiv (Term Term Term) Term)


(declare-fun Tm_arrow_2b6a409bd2eeb88753b2b6fe89b0d0a9 () Term)
(declare-fun FStar.UInt.udiv@tok () Term)



; </end encoding let udiv>


; <Start encoding let mod>


(declare-fun FStar.UInt.mod (Term Term Term) Term)

(declare-fun Tm_arrow_6ae50616ce0b08fd950ce0be5e711193 () Term)
(declare-fun FStar.UInt.mod@tok () Term)


; </end encoding let mod>


; <Start encoding let eq>

(declare-fun FStar.UInt.eq (Term Term Term) Term)
(declare-fun Tm_arrow_ed25d9271888f66e143c5c59e11fb3a9 () Term)
(declare-fun FStar.UInt.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.UInt.gt (Term Term Term) Term)

(declare-fun FStar.UInt.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.UInt.gte (Term Term Term) Term)

(declare-fun FStar.UInt.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.UInt.lt (Term Term Term) Term)

(declare-fun FStar.UInt.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.UInt.lte (Term Term Term) Term)

(declare-fun FStar.UInt.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let to_uint_t>

(declare-fun FStar.UInt.to_uint_t (Term Term) Term)
(declare-fun Tm_arrow_d5257ef463a03617bca88873b50f4e96 () Term)
(declare-fun FStar.UInt.to_uint_t@tok () Term)

; </end encoding let to_uint_t>


; <Start encoding let rec to_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.UInt.to_vec.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.UInt.to_vec.fuel_instrumented_token () Term)
(declare-fun FStar.UInt.to_vec (Term Term) Term)
(declare-fun FStar.UInt.to_vec@tok () Term)
(declare-fun Tm_arrow_50c9ac04c4da2f9a3a1512bf3cfd180e () Term)

; </end encoding let rec to_vec>


; <Start encoding let rec from_vec>

;;;;;;;;;;;;;;;;Fuel-instrumented function name
(declare-fun FStar.UInt.from_vec.fuel_instrumented (Fuel Term Term) Term)
;;;;;;;;;;;;;;;;Token for fuel-instrumented partial applications
(declare-fun FStar.UInt.from_vec.fuel_instrumented_token () Term)
(declare-fun FStar.UInt.from_vec (Term Term) Term)
(declare-fun FStar.UInt.from_vec@tok () Term)
(declare-fun Tm_arrow_3a21f80bb386ebae30b30ec5363d47ef () Term)

; </end encoding let rec from_vec>


; <Start encoding val FStar.UInt.to_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.to_vec_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.to_vec_lemma_1@tok () Term)

; </end encoding val FStar.UInt.to_vec_lemma_1>


; <Start encoding val FStar.UInt.to_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.to_vec_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.to_vec_lemma_2@tok () Term)

; </end encoding val FStar.UInt.to_vec_lemma_2>


; <Start encoding val FStar.UInt.inverse_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.inverse_aux (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.inverse_aux@tok () Term)


; </end encoding val FStar.UInt.inverse_aux>


; <Start encoding val FStar.UInt.inverse_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.inverse_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.inverse_vec_lemma@tok () Term)

; </end encoding val FStar.UInt.inverse_vec_lemma>


; <Start encoding val FStar.UInt.inverse_num_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.inverse_num_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.inverse_num_lemma@tok () Term)

; </end encoding val FStar.UInt.inverse_num_lemma>


; <Start encoding val FStar.UInt.from_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.from_vec_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.from_vec_lemma_1@tok () Term)

; </end encoding val FStar.UInt.from_vec_lemma_1>


; <Start encoding val FStar.UInt.from_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.from_vec_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.from_vec_lemma_2@tok () Term)

; </end encoding val FStar.UInt.from_vec_lemma_2>


; <Start encoding val FStar.UInt.from_vec_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.from_vec_aux (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.from_vec_aux@tok () Term)

; </end encoding val FStar.UInt.from_vec_aux>


; <Start encoding val FStar.UInt.seq_slice_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.seq_slice_lemma (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.seq_slice_lemma@tok () Term)

; </end encoding val FStar.UInt.seq_slice_lemma>


; <Start encoding val FStar.UInt.from_vec_propriety>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.from_vec_propriety (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.from_vec_propriety@tok () Term)

; </end encoding val FStar.UInt.from_vec_propriety>


; <Start encoding val FStar.UInt.append_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.append_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.append_lemma@tok () Term)

; </end encoding val FStar.UInt.append_lemma>


; <Start encoding val FStar.UInt.slice_left_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.slice_left_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.slice_left_lemma@tok () Term)

; </end encoding val FStar.UInt.slice_left_lemma>


; <Start encoding val FStar.UInt.slice_right_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.slice_right_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.slice_right_lemma@tok () Term)

; </end encoding val FStar.UInt.slice_right_lemma>


; <Start encoding val FStar.UInt.zero_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.zero_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.zero_to_vec_lemma@tok () Term)


; </end encoding val FStar.UInt.zero_to_vec_lemma>


; <Start encoding val FStar.UInt.zero_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.zero_from_vec_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.zero_from_vec_lemma@tok () Term)

; </end encoding val FStar.UInt.zero_from_vec_lemma>


; <Start encoding val FStar.UInt.one_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.one_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.one_to_vec_lemma@tok () Term)


; </end encoding val FStar.UInt.one_to_vec_lemma>


; <Start encoding val FStar.UInt.pow2_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.pow2_to_vec_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.pow2_to_vec_lemma@tok () Term)



; </end encoding val FStar.UInt.pow2_to_vec_lemma>


; <Start encoding val FStar.UInt.pow2_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.pow2_from_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.pow2_from_vec_lemma@tok () Term)


; </end encoding val FStar.UInt.pow2_from_vec_lemma>


; <Start encoding val FStar.UInt.ones_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.ones_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.ones_to_vec_lemma@tok () Term)


; </end encoding val FStar.UInt.ones_to_vec_lemma>


; <Start encoding val FStar.UInt.ones_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.ones_from_vec_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.ones_from_vec_lemma@tok () Term)

; </end encoding val FStar.UInt.ones_from_vec_lemma>


; <Start encoding let nth>


(declare-fun FStar.UInt.nth (Term Term Term) Term)

(declare-fun Tm_arrow_3fc70c4ae2acbd923fa94b8473fca72c () Term)
(declare-fun FStar.UInt.nth@tok () Term)


; </end encoding let nth>


; <Start encoding val FStar.UInt.nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.nth_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.nth_lemma@tok () Term)

; </end encoding val FStar.UInt.nth_lemma>


; <Start encoding val FStar.UInt.zero_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.zero_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.zero_nth_lemma@tok () Term)


; </end encoding val FStar.UInt.zero_nth_lemma>


; <Start encoding val FStar.UInt.pow2_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.pow2_nth_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.pow2_nth_lemma@tok () Term)



; </end encoding val FStar.UInt.pow2_nth_lemma>


; <Start encoding val FStar.UInt.one_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.one_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.one_nth_lemma@tok () Term)


; </end encoding val FStar.UInt.one_nth_lemma>


; <Start encoding val FStar.UInt.ones_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.ones_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.ones_nth_lemma@tok () Term)


; </end encoding val FStar.UInt.ones_nth_lemma>


; <Start encoding let logand>

(declare-fun FStar.UInt.logand (Term Term Term) Term)
(declare-fun Tm_arrow_f4d897275479f32ec94ab14cea117895 () Term)
(declare-fun FStar.UInt.logand@tok () Term)

; </end encoding let logand>


; <Start encoding let logxor>

(declare-fun FStar.UInt.logxor (Term Term Term) Term)

(declare-fun FStar.UInt.logxor@tok () Term)

; </end encoding let logxor>


; <Start encoding let logor>

(declare-fun FStar.UInt.logor (Term Term Term) Term)

(declare-fun FStar.UInt.logor@tok () Term)

; </end encoding let logor>


; <Start encoding let lognot>

(declare-fun FStar.UInt.lognot (Term Term) Term)
(declare-fun Tm_arrow_7e93208f7d6c7796851172614443345f () Term)
(declare-fun FStar.UInt.lognot@tok () Term)

; </end encoding let lognot>


; <Start encoding val FStar.UInt.logand_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_definition@tok () Term)


; </end encoding val FStar.UInt.logand_definition>


; <Start encoding val FStar.UInt.logxor_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_definition@tok () Term)


; </end encoding val FStar.UInt.logxor_definition>


; <Start encoding val FStar.UInt.logor_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_definition@tok () Term)


; </end encoding val FStar.UInt.logor_definition>


; <Start encoding val FStar.UInt.lognot_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lognot_definition (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lognot_definition@tok () Term)


; </end encoding val FStar.UInt.lognot_definition>


; <Start encoding let minus>

(declare-fun FStar.UInt.minus (Term Term) Term)

(declare-fun FStar.UInt.minus@tok () Term)

; </end encoding let minus>


; <Start encoding val FStar.UInt.logand_commutative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_commutative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_commutative@tok () Term)

; </end encoding val FStar.UInt.logand_commutative>


; <Start encoding val FStar.UInt.logand_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_associative (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_associative@tok () Term)

; </end encoding val FStar.UInt.logand_associative>


; <Start encoding val FStar.UInt.logand_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_self@tok () Term)

; </end encoding val FStar.UInt.logand_self>


; <Start encoding val FStar.UInt.logand_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_lemma_1@tok () Term)

; </end encoding val FStar.UInt.logand_lemma_1>


; <Start encoding val FStar.UInt.logand_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_lemma_2@tok () Term)

; </end encoding val FStar.UInt.logand_lemma_2>


; <Start encoding val FStar.UInt.subset_vec_le_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.subset_vec_le_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.subset_vec_le_lemma@tok () Term)

; </end encoding val FStar.UInt.subset_vec_le_lemma>


; <Start encoding val FStar.UInt.logand_le>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_le (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_le@tok () Term)

; </end encoding val FStar.UInt.logand_le>


; <Start encoding val FStar.UInt.logxor_commutative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_commutative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_commutative@tok () Term)

; </end encoding val FStar.UInt.logxor_commutative>


; <Start encoding val FStar.UInt.logxor_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_associative (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_associative@tok () Term)

; </end encoding val FStar.UInt.logxor_associative>


; <Start encoding val FStar.UInt.logxor_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_self@tok () Term)

; </end encoding val FStar.UInt.logxor_self>


; <Start encoding val FStar.UInt.logxor_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_lemma_1@tok () Term)

; </end encoding val FStar.UInt.logxor_lemma_1>


; <Start encoding val FStar.UInt.logxor_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_lemma_2@tok () Term)

; </end encoding val FStar.UInt.logxor_lemma_2>


; <Start encoding let xor>

(declare-fun FStar.UInt.xor (Term Term) Term)
(declare-fun Tm_arrow_a41b9b98d4288401e09e5c3b51ccc4f5 () Term)
(declare-fun FStar.UInt.xor@tok () Term)

; </end encoding let xor>


; <Start encoding val FStar.UInt.xor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.xor_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.xor_lemma@tok () Term)

; </end encoding val FStar.UInt.xor_lemma>


; <Start encoding val FStar.UInt.logxor_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_inv (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_inv@tok () Term)

; </end encoding val FStar.UInt.logxor_inv>


; <Start encoding val FStar.UInt.logxor_neq_nonzero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logxor_neq_nonzero (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logxor_neq_nonzero@tok () Term)

; </end encoding val FStar.UInt.logxor_neq_nonzero>


; <Start encoding val FStar.UInt.logor_commutative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_commutative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_commutative@tok () Term)

; </end encoding val FStar.UInt.logor_commutative>


; <Start encoding val FStar.UInt.logor_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_associative (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_associative@tok () Term)

; </end encoding val FStar.UInt.logor_associative>


; <Start encoding val FStar.UInt.logor_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_self@tok () Term)

; </end encoding val FStar.UInt.logor_self>


; <Start encoding val FStar.UInt.logor_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_lemma_1@tok () Term)

; </end encoding val FStar.UInt.logor_lemma_1>


; <Start encoding val FStar.UInt.logor_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_lemma_2@tok () Term)

; </end encoding val FStar.UInt.logor_lemma_2>


; <Start encoding val FStar.UInt.superset_vec_ge_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.superset_vec_ge_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.superset_vec_ge_lemma@tok () Term)

; </end encoding val FStar.UInt.superset_vec_ge_lemma>


; <Start encoding val FStar.UInt.logor_ge>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_ge (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_ge@tok () Term)

; </end encoding val FStar.UInt.logor_ge>


; <Start encoding val FStar.UInt.lognot_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lognot_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lognot_self@tok () Term)

; </end encoding val FStar.UInt.lognot_self>


; <Start encoding val FStar.UInt.lognot_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lognot_lemma_1 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lognot_lemma_1@tok () Term)

; </end encoding val FStar.UInt.lognot_lemma_1>


; <Start encoding val FStar.UInt.index_to_vec_ones>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.index_to_vec_ones (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.index_to_vec_ones@tok () Term)



; </end encoding val FStar.UInt.index_to_vec_ones>


; <Start encoding val FStar.UInt.logor_disjoint>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logor_disjoint (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logor_disjoint@tok () Term)

; </end encoding val FStar.UInt.logor_disjoint>


; <Start encoding val FStar.UInt.logand_mask>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.logand_mask (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.logand_mask@tok () Term)

; </end encoding val FStar.UInt.logand_mask>


; <Start encoding let shift_left>

(declare-fun FStar.UInt.shift_left (Term Term Term) Term)
(declare-fun Tm_arrow_88bed77db23726a0c4c74cf2019c096b () Term)
(declare-fun FStar.UInt.shift_left@tok () Term)

; </end encoding let shift_left>


; <Start encoding let shift_right>

(declare-fun FStar.UInt.shift_right (Term Term Term) Term)

(declare-fun FStar.UInt.shift_right@tok () Term)

; </end encoding let shift_right>


; <Start encoding val FStar.UInt.shift_left_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_lemma_1@tok () Term)


; </end encoding val FStar.UInt.shift_left_lemma_1>


; <Start encoding val FStar.UInt.shift_left_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_lemma_2@tok () Term)


; </end encoding val FStar.UInt.shift_left_lemma_2>


; <Start encoding val FStar.UInt.shift_right_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_lemma_1@tok () Term)


; </end encoding val FStar.UInt.shift_right_lemma_1>


; <Start encoding val FStar.UInt.shift_right_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_lemma_2@tok () Term)


; </end encoding val FStar.UInt.shift_right_lemma_2>


; <Start encoding val FStar.UInt.shift_left_logand_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_logand_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_logand_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_left_logand_lemma>


; <Start encoding val FStar.UInt.shift_right_logand_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_logand_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_logand_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_right_logand_lemma>


; <Start encoding val FStar.UInt.shift_left_logxor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_logxor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_logxor_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_left_logxor_lemma>


; <Start encoding val FStar.UInt.shift_right_logxor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_logxor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_logxor_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_right_logxor_lemma>


; <Start encoding val FStar.UInt.shift_left_logor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_logor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_logor_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_left_logor_lemma>


; <Start encoding val FStar.UInt.shift_right_logor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_logor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_logor_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_right_logor_lemma>


; <Start encoding val FStar.UInt.shift_left_value_aux_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_value_aux_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_value_aux_1@tok () Term)

; </end encoding val FStar.UInt.shift_left_value_aux_1>


; <Start encoding val FStar.UInt.shift_left_value_aux_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_value_aux_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_value_aux_2@tok () Term)

; </end encoding val FStar.UInt.shift_left_value_aux_2>


; <Start encoding val FStar.UInt.shift_left_value_aux_3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_value_aux_3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_value_aux_3@tok () Term)

; </end encoding val FStar.UInt.shift_left_value_aux_3>


; <Start encoding val FStar.UInt.shift_left_value_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_left_value_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_left_value_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_left_value_lemma>


; <Start encoding val FStar.UInt.shift_right_value_aux_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_value_aux_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_value_aux_1@tok () Term)

; </end encoding val FStar.UInt.shift_right_value_aux_1>


; <Start encoding val FStar.UInt.shift_right_value_aux_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_value_aux_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_value_aux_2@tok () Term)

; </end encoding val FStar.UInt.shift_right_value_aux_2>


; <Start encoding val FStar.UInt.shift_right_value_aux_3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_value_aux_3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_value_aux_3@tok () Term)

; </end encoding val FStar.UInt.shift_right_value_aux_3>


; <Start encoding val FStar.UInt.shift_right_value_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.shift_right_value_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.shift_right_value_lemma@tok () Term)

; </end encoding val FStar.UInt.shift_right_value_lemma>


; <Start encoding let msb>

(declare-fun FStar.UInt.msb (Term Term) Term)
(declare-fun Tm_arrow_d4ac65fa6e48f26152e66f6f5f032db4 () Term)
(declare-fun FStar.UInt.msb@tok () Term)

; </end encoding let msb>


; <Start encoding val FStar.UInt.lemma_msb_pow2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_msb_pow2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_msb_pow2@tok () Term)

; </end encoding val FStar.UInt.lemma_msb_pow2>


; <Start encoding val FStar.UInt.lemma_minus_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_minus_zero (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_minus_zero@tok () Term)

; </end encoding val FStar.UInt.lemma_minus_zero>


; <Start encoding val FStar.UInt.lemma_msb_gte>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_msb_gte (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_msb_gte@tok () Term)

; </end encoding val FStar.UInt.lemma_msb_gte>


; <Start encoding val FStar.UInt.lemma_uint_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_uint_mod (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_uint_mod@tok () Term)

; </end encoding val FStar.UInt.lemma_uint_mod>


; <Start encoding val FStar.UInt.lemma_add_sub_cancel>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_add_sub_cancel (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_add_sub_cancel@tok () Term)

; </end encoding val FStar.UInt.lemma_add_sub_cancel>


; <Start encoding val FStar.UInt.lemma_mod_sub_distr_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_mod_sub_distr_l (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_mod_sub_distr_l@tok () Term)

; </end encoding val FStar.UInt.lemma_mod_sub_distr_l>


; <Start encoding val FStar.UInt.lemma_sub_add_cancel>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_sub_add_cancel (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_sub_add_cancel@tok () Term)

; </end encoding val FStar.UInt.lemma_sub_add_cancel>


; <Start encoding let zero_extend_vec>

(declare-fun FStar.UInt.zero_extend_vec (Term Term) Term)
(declare-fun Tm_arrow_dcb1e97275faab10b7eb1bdfcfbde371 () Term)
(declare-fun FStar.UInt.zero_extend_vec@tok () Term)

; </end encoding let zero_extend_vec>


; <Start encoding let one_extend_vec>

(declare-fun FStar.UInt.one_extend_vec (Term Term) Term)

(declare-fun FStar.UInt.one_extend_vec@tok () Term)

; </end encoding let one_extend_vec>


; <Start encoding let zero_extend>

(declare-fun FStar.UInt.zero_extend (Term Term) Term)
(declare-fun Tm_arrow_8a55f1e2e0fc60c6f44b88ae88621b5f () Term)
(declare-fun FStar.UInt.zero_extend@tok () Term)

; </end encoding let zero_extend>


; <Start encoding let one_extend>

(declare-fun FStar.UInt.one_extend (Term Term) Term)

(declare-fun FStar.UInt.one_extend@tok () Term)

; </end encoding let one_extend>


; <Start encoding val FStar.UInt.lemma_zero_extend>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_zero_extend (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_zero_extend@tok () Term)
(declare-fun Tm_refine_a2362280d81dbd526f1fa3f771e8faad (Term) Term)

; </end encoding val FStar.UInt.lemma_zero_extend>


; <Start encoding val FStar.UInt.lemma_one_extend>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_one_extend (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_one_extend@tok () Term)

; </end encoding val FStar.UInt.lemma_one_extend>


; <Start encoding val FStar.UInt.lemma_lognot_zero_ext>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_zero_ext (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_zero_ext@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_zero_ext>


; <Start encoding val FStar.UInt.lemma_lognot_one_ext>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_one_ext (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_one_ext@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_one_ext>


; <Start encoding val FStar.UInt.lemma_lognot_value_mod>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_value_mod (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_value_mod@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_value_mod>


; <Start encoding val FStar.UInt.lemma_lognot_value_zero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_value_zero (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_value_zero@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_value_zero>


; <Start encoding val FStar.UInt.lemma_one_mod_pow2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_one_mod_pow2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_one_mod_pow2@tok () Term)

; </end encoding val FStar.UInt.lemma_one_mod_pow2>


; <Start encoding val FStar.UInt.lemma_lognot_value_nonzero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_value_nonzero (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_value_nonzero@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_value_nonzero>


; <Start encoding val FStar.UInt.lemma_lognot_value>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_lognot_value (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_lognot_value@tok () Term)

; </end encoding val FStar.UInt.lemma_lognot_value>


; <Start encoding val FStar.UInt.lemma_minus_eq_zero_sub>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt.lemma_minus_eq_zero_sub (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt.lemma_minus_eq_zero_sub@tok () Term)

; </end encoding val FStar.UInt.lemma_minus_eq_zero_sub>


; End Externals for interface FStar.UInt


; Externals for interface FStar.Int


; <Start encoding val FStar.Int.pow2_values>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.pow2_values (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.pow2_values@tok () Term)

; </end encoding val FStar.Int.pow2_values>


; <Start encoding let max_int>

(declare-fun FStar.Int.max_int (Term) Term)
(declare-fun Tm_arrow_08643d78e274903c12e67630bc27e2ff () Term)
(declare-fun FStar.Int.max_int@tok () Term)

; </end encoding let max_int>


; <Start encoding let min_int>

(declare-fun FStar.Int.min_int (Term) Term)

(declare-fun FStar.Int.min_int@tok () Term)

; </end encoding let min_int>


; <Start encoding let fits>

(declare-fun FStar.Int.fits (Term Term) Term)
(declare-fun Tm_arrow_0cc3774076f9b140636f49c6b11206ea () Term)
(declare-fun FStar.Int.fits@tok () Term)

; </end encoding let fits>


; <Start encoding let size>

(declare-fun FStar.Int.size (Term Term) Term)
(declare-fun Tm_arrow_7146999d8e685cab1fa5e885783d4ad4 () Term)
(declare-fun FStar.Int.size@tok () Term)

; </end encoding let size>


; <Start encoding let int_t>

(declare-fun FStar.Int.int_t (Term) Term)
(declare-fun Tm_arrow_e214da407f361f6aa0144228799685d1 () Term)
(declare-fun FStar.Int.int_t@tok () Term)
(declare-fun Tm_refine_c156ecc6eab05d1687a383ef171435eb (Term) Term)

; </end encoding let int_t>


; <Start encoding let op_Slash>


(declare-fun FStar.Int.op_Slash (Term Term) Term)

(declare-fun Tm_arrow_2c2bb042329e2e757b97305bbc29732f () Term)
(declare-fun FStar.Int.op_Slash@tok () Term)


; </end encoding let op_Slash>


; <Start encoding let op_At_Percent>

(declare-fun Tm_refine_6f861454c283cab7fef581bd2f2d57c5 () Term)
(declare-fun FStar.Int.op_At_Percent (Term Term) Term)

(declare-fun Tm_arrow_3896a5194433b12d044f39d7e0b679dc () Term)
(declare-fun FStar.Int.op_At_Percent@tok () Term)


; </end encoding let op_At_Percent>


; <Start encoding let zero>

(declare-fun FStar.Int.zero (Term) Term)
(declare-fun Tm_arrow_cb14a53d8f51c2a1b5f2e44ec1c55960 () Term)
(declare-fun FStar.Int.zero@tok () Term)

; </end encoding let zero>


; <Skipped #push-options "--initial_fuel 1 --max_fuel 1"/>


; <Start encoding let pow2_n>

(declare-fun Tm_refine_cf74cf5c1e7834b84db9cc7ebce886a3 (Term) Term)
(declare-fun FStar.Int.pow2_n (Term Term) Term)

(declare-fun Tm_arrow_42409e57c55f2a2d0836412885dba252 () Term)
(declare-fun FStar.Int.pow2_n@tok () Term)


; </end encoding let pow2_n>


; <Start encoding let pow2_minus_one>

(declare-fun Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb () Term)

(declare-fun FStar.Int.pow2_minus_one (Term Term) Term)


(declare-fun Tm_arrow_81be2ee4e7a1e46c9526aae5e34753cd () Term)
(declare-fun FStar.Int.pow2_minus_one@tok () Term)



; </end encoding let pow2_minus_one>


; <Start encoding let one>


(declare-fun FStar.Int.one (Term) Term)

(declare-fun Tm_arrow_e2450f3af7bd5b3af47241cdfb1c2db6 () Term)
(declare-fun FStar.Int.one@tok () Term)


; </end encoding let one>


; <Skipped #pop-options/>


; <Start encoding let ones>

(declare-fun FStar.Int.ones (Term) Term)

(declare-fun FStar.Int.ones@tok () Term)

; </end encoding let ones>


; <Start encoding let incr>

(declare-fun FStar.Int.incr (Term Term) Term)
(declare-fun Tm_refine_dcbbaccec0a9dbd3681a14f97d5258f4 (Term) Term)
(declare-fun Tm_arrow_6a595e67db857b4e04ea431fd250db84 () Term)
(declare-fun FStar.Int.incr@tok () Term)


; </end encoding let incr>


; <Start encoding let decr>

(declare-fun FStar.Int.decr (Term Term) Term)

(declare-fun Tm_arrow_9932ad821a47221f73f30476224722b3 () Term)
(declare-fun FStar.Int.decr@tok () Term)


; </end encoding let decr>


; <Start encoding val FStar.Int.incr_underspec>

(declare-fun FStar.Int.incr_underspec (Term Term) Term)
(declare-fun Tm_refine_d4a5cafc6f5a0f55c9100191cf1c919d (Term Term) Term)
(declare-fun Tm_arrow_7da78e36e44c2863a3eea73f058069f8 () Term)
(declare-fun FStar.Int.incr_underspec@tok () Term)


; </end encoding val FStar.Int.incr_underspec>


; <Start encoding val FStar.Int.decr_underspec>

(declare-fun FStar.Int.decr_underspec (Term Term) Term)
(declare-fun Tm_refine_fe0f51cc65c8d431b43406ae8d7f7c7c (Term Term) Term)
(declare-fun Tm_arrow_f8ffe0a78d6e5b3dac71656ff7d0fc5a () Term)
(declare-fun FStar.Int.decr_underspec@tok () Term)


; </end encoding val FStar.Int.decr_underspec>


; <Start encoding let incr_mod>

(declare-fun FStar.Int.incr_mod (Term Term) Term)
(declare-fun Tm_arrow_d4f13608b577247ae2db20b2380b2245 () Term)
(declare-fun FStar.Int.incr_mod@tok () Term)

; </end encoding let incr_mod>


; <Start encoding let decr_mod>

(declare-fun FStar.Int.decr_mod (Term Term) Term)

(declare-fun FStar.Int.decr_mod@tok () Term)

; </end encoding let decr_mod>


; <Start encoding let add>

(declare-fun FStar.Int.add (Term Term Term) Term)

(declare-fun Tm_arrow_cbeba074d8c79f94519373cfde34463f () Term)
(declare-fun FStar.Int.add@tok () Term)


; </end encoding let add>


; <Start encoding val FStar.Int.add_underspec>

(declare-fun FStar.Int.add_underspec (Term Term Term) Term)
(declare-fun Tm_refine_7bd0fa444597c4ebd4664ae6a997600a (Term Term Term) Term)
(declare-fun Tm_arrow_5c387c335d6e6391b1c81e806fbecc03 () Term)
(declare-fun FStar.Int.add_underspec@tok () Term)


; </end encoding val FStar.Int.add_underspec>


; <Skipped #push-options "--initial_fuel 1 --max_fuel 1"/>


; <Start encoding let add_mod>

(declare-fun FStar.Int.add_mod (Term Term Term) Term)
(declare-fun Tm_arrow_18a34a79f38620fd3e207686d0d0d13e () Term)
(declare-fun FStar.Int.add_mod@tok () Term)

; </end encoding let add_mod>


; <Start encoding let sub>

(declare-fun FStar.Int.sub (Term Term Term) Term)

(declare-fun Tm_arrow_d5e0171e91c640344190e488b3c3a2c8 () Term)
(declare-fun FStar.Int.sub@tok () Term)


; </end encoding let sub>


; <Start encoding val FStar.Int.sub_underspec>

(declare-fun FStar.Int.sub_underspec (Term Term Term) Term)
(declare-fun Tm_refine_b4c298e8d79868eb1409c37bf0adba2a (Term Term Term) Term)
(declare-fun Tm_arrow_f42d521160539850f1993d34e8fc87c9 () Term)
(declare-fun FStar.Int.sub_underspec@tok () Term)


; </end encoding val FStar.Int.sub_underspec>


; <Start encoding let sub_mod>

(declare-fun FStar.Int.sub_mod (Term Term Term) Term)

(declare-fun FStar.Int.sub_mod@tok () Term)

; </end encoding let sub_mod>


; <Start encoding let mul>

(declare-fun FStar.Int.mul (Term Term Term) Term)

(declare-fun Tm_arrow_59f7075a28af88a37cc8d77ed622794d () Term)
(declare-fun FStar.Int.mul@tok () Term)


; </end encoding let mul>


; <Start encoding val FStar.Int.mul_underspec>

(declare-fun FStar.Int.mul_underspec (Term Term Term) Term)
(declare-fun Tm_refine_e0808d72dd3bcd98cbd025f677f0b52b (Term Term Term) Term)
(declare-fun Tm_arrow_c3825549d78bf3b47b1fc19cca6efb0a () Term)
(declare-fun FStar.Int.mul_underspec@tok () Term)


; </end encoding val FStar.Int.mul_underspec>


; <Start encoding let mul_mod>

(declare-fun FStar.Int.mul_mod (Term Term Term) Term)

(declare-fun FStar.Int.mul_mod@tok () Term)

; </end encoding let mul_mod>


; <Skipped #pop-options/>


; <Start encoding let div>

(declare-fun Tm_refine_83ac8ca0eae25a164d9f9c0d728fbff9 (Term) Term)
(declare-fun FStar.Int.div (Term Term Term) Term)

(declare-fun Tm_refine_70714641831ff35b8943074d85fc7551 (Term Term Term) Term)
(declare-fun Tm_arrow_59a1c11be2fac6a30b2acdbfbf1eda90 () Term)
(declare-fun FStar.Int.div@tok () Term)



; </end encoding let div>


; <Start encoding val FStar.Int.div_underspec>


(declare-fun FStar.Int.div_underspec (Term Term Term) Term)

(declare-fun Tm_refine_af4cbfe65dbbaeb55593b4625c2c5048 (Term Term Term) Term)
(declare-fun Tm_arrow_0f80d94a97a6b0663b1915a2060513cc () Term)
(declare-fun FStar.Int.div_underspec@tok () Term)


; </end encoding val FStar.Int.div_underspec>


; <Start encoding val FStar.Int.div_size>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.div_size (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.div_size@tok () Term)

; </end encoding val FStar.Int.div_size>


; <Start encoding let udiv>

(declare-fun Tm_refine_8506aeb4dd19f2072121aa1df21f1bb2 (Term) Term)

(declare-fun FStar.Int.udiv (Term Term Term) Term)



(declare-fun Tm_arrow_82b3f90612854f7c40f1bdc10bed000c () Term)
(declare-fun FStar.Int.udiv@tok () Term)




; </end encoding let udiv>


; <Start encoding let mod>


(declare-fun FStar.Int.mod (Term Term Term) Term)

(declare-fun Tm_arrow_d683be1bb1ee9de66cbbf189f68ec0e5 () Term)
(declare-fun FStar.Int.mod@tok () Term)


; </end encoding let mod>


; <Start encoding let eq>

(declare-fun FStar.Int.eq (Term Term Term) Term)
(declare-fun Tm_arrow_8a34ac1c572f737da4642094a6f8e213 () Term)
(declare-fun FStar.Int.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int.gt (Term Term Term) Term)

(declare-fun FStar.Int.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int.gte (Term Term Term) Term)

(declare-fun FStar.Int.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int.lt (Term Term Term) Term)

(declare-fun FStar.Int.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int.lte (Term Term Term) Term)

(declare-fun FStar.Int.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let to_uint>

(declare-fun FStar.Int.to_uint (Term Term) Term)
(declare-fun Tm_arrow_3e678eb9a841c4f9b41c85aeb802f0f1 () Term)
(declare-fun FStar.Int.to_uint@tok () Term)

; </end encoding let to_uint>


; <Start encoding let from_uint>

(declare-fun FStar.Int.from_uint (Term Term) Term)
(declare-fun Tm_arrow_c31ea52198bde53869920a7d3bc4602c () Term)
(declare-fun FStar.Int.from_uint@tok () Term)

; </end encoding let from_uint>


; <Start encoding val FStar.Int.to_uint_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.to_uint_injective (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.to_uint_injective@tok () Term)

; </end encoding val FStar.Int.to_uint_injective>


; <Start encoding let to_int_t>

(declare-fun FStar.Int.to_int_t (Term Term) Term)
(declare-fun Tm_arrow_4814b4e3e94f328f65fd76f9d65943d4 () Term)
(declare-fun FStar.Int.to_int_t@tok () Term)

; </end encoding let to_int_t>


; <Start encoding let to_vec>

(declare-fun FStar.Int.to_vec (Term Term) Term)
(declare-fun Tm_arrow_45e09970c9488f8db22355eb21b4b697 () Term)
(declare-fun FStar.Int.to_vec@tok () Term)

; </end encoding let to_vec>


; <Start encoding let from_vec>

(declare-fun FStar.Int.from_vec (Term Term) Term)
(declare-fun Tm_arrow_82852c1e83761b67bc6fcca3c7b80d79 () Term)
(declare-fun FStar.Int.from_vec@tok () Term)

; </end encoding let from_vec>


; <Start encoding val FStar.Int.to_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.to_vec_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.to_vec_lemma_1@tok () Term)

; </end encoding val FStar.Int.to_vec_lemma_1>


; <Start encoding val FStar.Int.to_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.to_vec_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.to_vec_lemma_2@tok () Term)

; </end encoding val FStar.Int.to_vec_lemma_2>


; <Start encoding val FStar.Int.inverse_aux>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.inverse_aux (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.inverse_aux@tok () Term)


; </end encoding val FStar.Int.inverse_aux>


; <Start encoding val FStar.Int.inverse_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.inverse_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.inverse_vec_lemma@tok () Term)

; </end encoding val FStar.Int.inverse_vec_lemma>


; <Start encoding val FStar.Int.inverse_num_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.inverse_num_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.inverse_num_lemma@tok () Term)

; </end encoding val FStar.Int.inverse_num_lemma>


; <Start encoding val FStar.Int.from_vec_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.from_vec_lemma_1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.from_vec_lemma_1@tok () Term)

; </end encoding val FStar.Int.from_vec_lemma_1>


; <Start encoding val FStar.Int.from_vec_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.from_vec_lemma_2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.from_vec_lemma_2@tok () Term)

; </end encoding val FStar.Int.from_vec_lemma_2>


; <Start encoding val FStar.Int.zero_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.zero_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.zero_to_vec_lemma@tok () Term)


; </end encoding val FStar.Int.zero_to_vec_lemma>


; <Start encoding val FStar.Int.zero_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.zero_from_vec_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.zero_from_vec_lemma@tok () Term)

; </end encoding val FStar.Int.zero_from_vec_lemma>


; <Start encoding val FStar.Int.one_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.one_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.one_to_vec_lemma@tok () Term)



; </end encoding val FStar.Int.one_to_vec_lemma>


; <Start encoding val FStar.Int.pow2_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.pow2_to_vec_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.pow2_to_vec_lemma@tok () Term)



; </end encoding val FStar.Int.pow2_to_vec_lemma>


; <Start encoding val FStar.Int.pow2_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.pow2_from_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.pow2_from_vec_lemma@tok () Term)
(declare-fun Tm_refine_b555e04c50662c1d4e406318a3bd8d8d (Term) Term)

; </end encoding val FStar.Int.pow2_from_vec_lemma>


; <Start encoding val FStar.Int.ones_to_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.ones_to_vec_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.ones_to_vec_lemma@tok () Term)


; </end encoding val FStar.Int.ones_to_vec_lemma>


; <Start encoding val FStar.Int.ones_from_vec_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.ones_from_vec_lemma (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.ones_from_vec_lemma@tok () Term)

; </end encoding val FStar.Int.ones_from_vec_lemma>


; <Start encoding let nth>


(declare-fun FStar.Int.nth (Term Term Term) Term)

(declare-fun Tm_arrow_4019956ce842311d665dc67ac9fd8b34 () Term)
(declare-fun FStar.Int.nth@tok () Term)


; </end encoding let nth>


; <Start encoding val FStar.Int.nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.nth_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.nth_lemma@tok () Term)

; </end encoding val FStar.Int.nth_lemma>


; <Start encoding val FStar.Int.zero_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.zero_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.zero_nth_lemma@tok () Term)


; </end encoding val FStar.Int.zero_nth_lemma>


; <Start encoding val FStar.Int.one_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.one_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.one_nth_lemma@tok () Term)



; </end encoding val FStar.Int.one_nth_lemma>


; <Start encoding val FStar.Int.ones_nth_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.ones_nth_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.ones_nth_lemma@tok () Term)


; </end encoding val FStar.Int.ones_nth_lemma>


; <Start encoding let logand>

(declare-fun FStar.Int.logand (Term Term Term) Term)

(declare-fun FStar.Int.logand@tok () Term)

; </end encoding let logand>


; <Start encoding let logxor>

(declare-fun FStar.Int.logxor (Term Term Term) Term)

(declare-fun FStar.Int.logxor@tok () Term)

; </end encoding let logxor>


; <Start encoding let logor>

(declare-fun FStar.Int.logor (Term Term Term) Term)

(declare-fun FStar.Int.logor@tok () Term)

; </end encoding let logor>


; <Start encoding let lognot>

(declare-fun FStar.Int.lognot (Term Term) Term)

(declare-fun FStar.Int.lognot@tok () Term)

; </end encoding let lognot>


; <Start encoding val FStar.Int.logand_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_definition@tok () Term)


; </end encoding val FStar.Int.logand_definition>


; <Start encoding val FStar.Int.logxor_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_definition@tok () Term)


; </end encoding val FStar.Int.logxor_definition>


; <Start encoding val FStar.Int.logor_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logor_definition (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logor_definition@tok () Term)


; </end encoding val FStar.Int.logor_definition>


; <Start encoding val FStar.Int.lognot_definition>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.lognot_definition (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.lognot_definition@tok () Term)


; </end encoding val FStar.Int.lognot_definition>


; <Start encoding let minus>


(declare-fun FStar.Int.minus (Term Term) Term)

(declare-fun Tm_arrow_04cc0f7bdc56c0cf812e46ad027a361f () Term)
(declare-fun FStar.Int.minus@tok () Term)


; </end encoding let minus>


; <Start encoding val FStar.Int.logand_commutative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_commutative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_commutative@tok () Term)

; </end encoding val FStar.Int.logand_commutative>


; <Start encoding val FStar.Int.logand_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_associative (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_associative@tok () Term)

; </end encoding val FStar.Int.logand_associative>


; <Start encoding val FStar.Int.logand_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_self@tok () Term)

; </end encoding val FStar.Int.logand_self>


; <Start encoding val FStar.Int.logand_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_lemma_1@tok () Term)

; </end encoding val FStar.Int.logand_lemma_1>


; <Start encoding val FStar.Int.logand_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_lemma_2@tok () Term)

; </end encoding val FStar.Int.logand_lemma_2>


; <Start encoding val FStar.Int.sign_bit_negative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.sign_bit_negative (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.sign_bit_negative@tok () Term)

; </end encoding val FStar.Int.sign_bit_negative>


; <Start encoding val FStar.Int.sign_bit_positive>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.sign_bit_positive (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.sign_bit_positive@tok () Term)

; </end encoding val FStar.Int.sign_bit_positive>


; <Start encoding val FStar.Int.logand_pos_le>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_pos_le (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_pos_le@tok () Term)

; </end encoding val FStar.Int.logand_pos_le>


; <Start encoding val FStar.Int.logand_pow2_minus_one>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_pow2_minus_one (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_pow2_minus_one@tok () Term)

; </end encoding val FStar.Int.logand_pow2_minus_one>


; <Start encoding val FStar.Int.logand_max>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logand_max (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logand_max@tok () Term)

; </end encoding val FStar.Int.logand_max>


; <Start encoding val FStar.Int.logxor_commutative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_commutative (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_commutative@tok () Term)

; </end encoding val FStar.Int.logxor_commutative>


; <Start encoding val FStar.Int.logxor_associative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_associative (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_associative@tok () Term)

; </end encoding val FStar.Int.logxor_associative>


; <Start encoding val FStar.Int.logxor_self>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_self (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_self@tok () Term)

; </end encoding val FStar.Int.logxor_self>


; <Start encoding val FStar.Int.logxor_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_lemma_1 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_lemma_1@tok () Term)

; </end encoding val FStar.Int.logxor_lemma_1>


; <Start encoding val FStar.Int.logxor_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_lemma_2 (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_lemma_2@tok () Term)

; </end encoding val FStar.Int.logxor_lemma_2>


; <Start encoding val FStar.Int.logxor_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_inv (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_inv@tok () Term)

; </end encoding val FStar.Int.logxor_inv>


; <Start encoding val FStar.Int.logxor_neq_nonzero>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.logxor_neq_nonzero (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.logxor_neq_nonzero@tok () Term)

; </end encoding val FStar.Int.logxor_neq_nonzero>


; <Start encoding val FStar.Int.lognot_negative>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.lognot_negative (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.lognot_negative@tok () Term)

; </end encoding val FStar.Int.lognot_negative>


; <Start encoding let shift_left>

(declare-fun Tm_refine_f9945c9851ba67924155357268d171eb (Term) Term)
(declare-fun FStar.Int.shift_left (Term Term Term) Term)

(declare-fun Tm_arrow_855fa52a66bb6d9af33de248be8e1a9a () Term)
(declare-fun FStar.Int.shift_left@tok () Term)


; </end encoding let shift_left>


; <Start encoding let shift_right>


(declare-fun FStar.Int.shift_right (Term Term Term) Term)


(declare-fun FStar.Int.shift_right@tok () Term)


; </end encoding let shift_right>


; <Start encoding let shift_arithmetic_right>

(declare-fun FStar.Int.shift_arithmetic_right (Term Term Term) Term)
(declare-fun Tm_arrow_f565aa7121c91c2f8ce9f41727c7b7ca () Term)
(declare-fun FStar.Int.shift_arithmetic_right@tok () Term)

; </end encoding let shift_arithmetic_right>


; <Start encoding val FStar.Int.shift_left_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_left_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_left_lemma_1@tok () Term)



; </end encoding val FStar.Int.shift_left_lemma_1>


; <Start encoding val FStar.Int.shift_left_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_left_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_left_lemma_2@tok () Term)



; </end encoding val FStar.Int.shift_left_lemma_2>


; <Start encoding val FStar.Int.shift_left_value_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_left_value_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_left_value_lemma@tok () Term)


; </end encoding val FStar.Int.shift_left_value_lemma>


; <Start encoding val FStar.Int.shift_right_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_right_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_right_lemma_1@tok () Term)



; </end encoding val FStar.Int.shift_right_lemma_1>


; <Start encoding val FStar.Int.shift_right_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_right_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_right_lemma_2@tok () Term)



; </end encoding val FStar.Int.shift_right_lemma_2>


; <Start encoding val FStar.Int.shift_arithmetic_right_lemma_1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_arithmetic_right_lemma_1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_arithmetic_right_lemma_1@tok () Term)


; </end encoding val FStar.Int.shift_arithmetic_right_lemma_1>


; <Start encoding val FStar.Int.shift_arithmetic_right_lemma_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int.shift_arithmetic_right_lemma_2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int.shift_arithmetic_right_lemma_2@tok () Term)


; </end encoding val FStar.Int.shift_arithmetic_right_lemma_2>


; End Externals for interface FStar.Int


; Externals for interface FStar.UInt32


; <Start encoding let n>

(declare-fun FStar.UInt32.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.UInt32.t>

(declare-fun FStar.UInt32.t (Dummy_sort) Term)

; </end encoding val FStar.UInt32.t>


; <Start encoding val FStar.UInt32.v>

(declare-fun FStar.UInt32.v (Term) Term)
(declare-fun Tm_arrow_33a06d9a3ec1c77524ab958d37ae1453 () Term)
(declare-fun FStar.UInt32.v@tok () Term)

; </end encoding val FStar.UInt32.v>


; <Start encoding val FStar.UInt32.uint_to_t>

(declare-fun FStar.UInt32.uint_to_t (Term) Term)
(declare-fun Tm_refine_0ea1fba779ad5718e28476faeef94d56 (Term) Term)
(declare-fun Tm_arrow_3d414099f2a2b7ef3e11b1fc75a28674 () Term)
(declare-fun FStar.UInt32.uint_to_t@tok () Term)


; </end encoding val FStar.UInt32.uint_to_t>


; <Start encoding val FStar.UInt32.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt32.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt32.uv_inv@tok () Term)

; </end encoding val FStar.UInt32.uv_inv>


; <Start encoding val FStar.UInt32.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt32.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt32.vu_inv@tok () Term)

; </end encoding val FStar.UInt32.vu_inv>


; <Start encoding val FStar.UInt32.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt32.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt32.v_inj@tok () Term)

; </end encoding val FStar.UInt32.v_inj>


; <Start encoding val FStar.UInt32.zero>

(declare-fun FStar.UInt32.zero (Dummy_sort) Term)
(declare-fun Tm_refine_7cfa0141116db910fdee890408ebbaf1 () Term)


; </end encoding val FStar.UInt32.zero>


; <Start encoding val FStar.UInt32.one>

(declare-fun FStar.UInt32.one (Dummy_sort) Term)
(declare-fun Tm_refine_d94e5152d1c8429ac781cc5558c9a3e2 () Term)


; </end encoding val FStar.UInt32.one>


; <Start encoding val FStar.UInt32.add>

(declare-fun FStar.UInt32.add (Term Term) Term)
(declare-fun Tm_refine_709aff84c75b0fff77dcbf3b529649dd (Term Term) Term)
(declare-fun Tm_arrow_5558b72197031b1efc1a0f8298859a47 () Term)
(declare-fun FStar.UInt32.add@tok () Term)


; </end encoding val FStar.UInt32.add>


; <Start encoding val FStar.UInt32.add_underspec>

(declare-fun FStar.UInt32.add_underspec (Term Term) Term)
(declare-fun Tm_refine_57eacb083aaa8f3c6200eef2872d40a9 (Term Term) Term)
(declare-fun Tm_arrow_2aa4a786718187783c350fff98c0276d () Term)
(declare-fun FStar.UInt32.add_underspec@tok () Term)


; </end encoding val FStar.UInt32.add_underspec>


; <Start encoding val FStar.UInt32.add_mod>

(declare-fun FStar.UInt32.add_mod (Term Term) Term)
(declare-fun Tm_refine_edc8fb7e909853d860d4ab445ef31337 (Term Term) Term)
(declare-fun Tm_arrow_edbd649f4b12a343efa6ef46e7961890 () Term)
(declare-fun FStar.UInt32.add_mod@tok () Term)


; </end encoding val FStar.UInt32.add_mod>


; <Start encoding val FStar.UInt32.sub>

(declare-fun FStar.UInt32.sub (Term Term) Term)
(declare-fun Tm_refine_aa4b3d268075d84252df525db1f85524 (Term Term) Term)
(declare-fun Tm_arrow_ac932fe6124478fcfd5be99d334122e8 () Term)
(declare-fun FStar.UInt32.sub@tok () Term)


; </end encoding val FStar.UInt32.sub>


; <Start encoding val FStar.UInt32.sub_underspec>

(declare-fun FStar.UInt32.sub_underspec (Term Term) Term)
(declare-fun Tm_refine_01926286fa04b785df0ea0da544f2001 (Term Term) Term)
(declare-fun Tm_arrow_a0c271942b2fe7be43f6ae297698cd0b () Term)
(declare-fun FStar.UInt32.sub_underspec@tok () Term)


; </end encoding val FStar.UInt32.sub_underspec>


; <Start encoding val FStar.UInt32.sub_mod>

(declare-fun FStar.UInt32.sub_mod (Term Term) Term)
(declare-fun Tm_refine_ace23c600fbe87b65e5fc333816f74de (Term Term) Term)
(declare-fun Tm_arrow_4a8c4b67b5977a746f1eeda7c310346f () Term)
(declare-fun FStar.UInt32.sub_mod@tok () Term)


; </end encoding val FStar.UInt32.sub_mod>


; <Start encoding val FStar.UInt32.mul>

(declare-fun FStar.UInt32.mul (Term Term) Term)
(declare-fun Tm_refine_1ccfb21903aa30ace8832f7a4d067d9b (Term Term) Term)
(declare-fun Tm_arrow_f261941925861d12451675f7409141e5 () Term)
(declare-fun FStar.UInt32.mul@tok () Term)


; </end encoding val FStar.UInt32.mul>


; <Start encoding val FStar.UInt32.mul_underspec>

(declare-fun FStar.UInt32.mul_underspec (Term Term) Term)
(declare-fun Tm_refine_cb4ffd3222952e9ac95fc72e8f9913c6 (Term Term) Term)
(declare-fun Tm_arrow_54623a1c9ed03c94751f7d25d259da67 () Term)
(declare-fun FStar.UInt32.mul_underspec@tok () Term)


; </end encoding val FStar.UInt32.mul_underspec>


; <Start encoding val FStar.UInt32.mul_mod>

(declare-fun FStar.UInt32.mul_mod (Term Term) Term)
(declare-fun Tm_refine_8618df86656cf4c2bc98614452120307 (Term Term) Term)
(declare-fun Tm_arrow_b9ba4f3f3f0a1ea3202a99cc97238a0d () Term)
(declare-fun FStar.UInt32.mul_mod@tok () Term)


; </end encoding val FStar.UInt32.mul_mod>


; <Start encoding val FStar.UInt32.div>

(declare-fun Tm_refine_0941c9ff95557f2d53bc8f8179ab793e () Term)
(declare-fun FStar.UInt32.div (Term Term) Term)

(declare-fun Tm_refine_74d1ae07763cf2ce5f26906c9df0d2cc (Term Term) Term)
(declare-fun Tm_arrow_61dc5944349c0fd1e6ccd916a51fdfe8 () Term)
(declare-fun FStar.UInt32.div@tok () Term)


; </end encoding val FStar.UInt32.div>


; <Start encoding val FStar.UInt32.rem>


(declare-fun FStar.UInt32.rem (Term Term) Term)

(declare-fun Tm_refine_19ac6a052799e5086e9c3eb3a21d54a5 (Term Term) Term)
(declare-fun Tm_arrow_a00bbce6d7d4a1d495177d4f11116643 () Term)
(declare-fun FStar.UInt32.rem@tok () Term)


; </end encoding val FStar.UInt32.rem>


; <Start encoding val FStar.UInt32.logand>

(declare-fun FStar.UInt32.logand (Term Term) Term)
(declare-fun Tm_refine_7afd5b0ca8e77c7f6870883658e19d63 (Term Term) Term)
(declare-fun Tm_arrow_eff0426e7af51f8d330de4f569da9534 () Term)
(declare-fun FStar.UInt32.logand@tok () Term)


; </end encoding val FStar.UInt32.logand>


; <Start encoding val FStar.UInt32.logxor>

(declare-fun FStar.UInt32.logxor (Term Term) Term)
(declare-fun Tm_refine_2b25e5c3b25bc06167200cbfa5d36b3e (Term Term) Term)
(declare-fun Tm_arrow_07d2eb0ad8dc47fa48b862c24603f207 () Term)
(declare-fun FStar.UInt32.logxor@tok () Term)


; </end encoding val FStar.UInt32.logxor>


; <Start encoding val FStar.UInt32.logor>

(declare-fun FStar.UInt32.logor (Term Term) Term)
(declare-fun Tm_refine_39cb18a1d289e559096741772432b24f (Term Term) Term)
(declare-fun Tm_arrow_f4c0c09b0ba22212b54bc6a7fb947fac () Term)
(declare-fun FStar.UInt32.logor@tok () Term)


; </end encoding val FStar.UInt32.logor>


; <Start encoding val FStar.UInt32.lognot>

(declare-fun FStar.UInt32.lognot (Term) Term)
(declare-fun Tm_refine_d5743ca0a8d5f3ceec748bdcb132b14f (Term) Term)
(declare-fun Tm_arrow_b6548dae703a0f26a4185c51dee5464b () Term)
(declare-fun FStar.UInt32.lognot@tok () Term)


; </end encoding val FStar.UInt32.lognot>


; <Start encoding val FStar.UInt32.shift_right>

(declare-fun FStar.UInt32.shift_right (Term Term) Term)
(declare-fun Tm_refine_59202c8b625f4b04caf2081d6778d9e7 (Term Term) Term)
(declare-fun Tm_arrow_13c7acc70a3dd34a798f691f2cee4104 () Term)
(declare-fun FStar.UInt32.shift_right@tok () Term)


; </end encoding val FStar.UInt32.shift_right>


; <Start encoding val FStar.UInt32.shift_left>

(declare-fun FStar.UInt32.shift_left (Term Term) Term)
(declare-fun Tm_refine_c642c4de19ebed0b1a9b5f85d40989c0 (Term Term) Term)
(declare-fun Tm_arrow_0709d575329517627fac117b134f4462 () Term)
(declare-fun FStar.UInt32.shift_left@tok () Term)


; </end encoding val FStar.UInt32.shift_left>


; <Start encoding let eq>

(declare-fun FStar.UInt32.eq (Term Term) Term)
(declare-fun Tm_arrow_6de09abf9de7977da03ee416904d3039 () Term)
(declare-fun FStar.UInt32.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.UInt32.gt (Term Term) Term)

(declare-fun FStar.UInt32.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.UInt32.gte (Term Term) Term)

(declare-fun FStar.UInt32.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.UInt32.lt (Term Term) Term)

(declare-fun FStar.UInt32.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.UInt32.lte (Term Term) Term)

(declare-fun FStar.UInt32.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let minus>

(declare-fun FStar.UInt32.minus (Term) Term)
(declare-fun Tm_arrow_c4b70260248a2080020c883b42aa875d () Term)
(declare-fun FStar.UInt32.minus@tok () Term)

; </end encoding let minus>


; <Start encoding let n_minus_one>

(declare-fun FStar.UInt32.n_minus_one (Dummy_sort) Term)

; </end encoding let n_minus_one>


; <Skipped #set-options "--z3rlimit 80 --initial_fuel 1 --max_fuel 1"/>


; <Start encoding let eq_mask>

(declare-fun FStar.UInt32.eq_mask (Term Term) Term)
(declare-fun Tm_refine_09d9a189c8c7a3bf3fc28db14e6689cd (Term Term) Term)
(declare-fun Tm_arrow_472ed8b8700983a2f5b417531368b430 () Term)
(declare-fun FStar.UInt32.eq_mask@tok () Term)


; </end encoding let eq_mask>


; <Start encoding val FStar.UInt32.lemma_sub_msbs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt32.lemma_sub_msbs (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt32.lemma_sub_msbs@tok () Term)

; </end encoding val FStar.UInt32.lemma_sub_msbs>


; <Start encoding let gte_mask>

(declare-fun FStar.UInt32.gte_mask (Term Term) Term)
(declare-fun Tm_refine_83df857506788e94d25c8be97271668a (Term Term) Term)
(declare-fun Tm_arrow_a9de8133430dc71a337d9373e485c8b4 () Term)
(declare-fun FStar.UInt32.gte_mask@tok () Term)


; </end encoding let gte_mask>


; <Skipped #reset-options/>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.UInt32.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Plus_Question_Hat>

(declare-fun FStar.UInt32.op_Plus_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Plus_Question_Hat@tok () Term)


; </end encoding let op_Plus_Question_Hat>


; <Start encoding let op_Plus_Percent_Hat>

(declare-fun FStar.UInt32.op_Plus_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Plus_Percent_Hat@tok () Term)


; </end encoding let op_Plus_Percent_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.UInt32.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Subtraction_Question_Hat>

(declare-fun FStar.UInt32.op_Subtraction_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Subtraction_Question_Hat@tok () Term)


; </end encoding let op_Subtraction_Question_Hat>


; <Start encoding let op_Subtraction_Percent_Hat>

(declare-fun FStar.UInt32.op_Subtraction_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Subtraction_Percent_Hat@tok () Term)


; </end encoding let op_Subtraction_Percent_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.UInt32.op_Star_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Star_Question_Hat>

(declare-fun FStar.UInt32.op_Star_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Star_Question_Hat@tok () Term)


; </end encoding let op_Star_Question_Hat>


; <Start encoding let op_Star_Percent_Hat>

(declare-fun FStar.UInt32.op_Star_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Star_Percent_Hat@tok () Term)


; </end encoding let op_Star_Percent_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.UInt32.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.UInt32.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.UInt32.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.UInt32.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.UInt32.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.UInt32.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.UInt32.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.UInt32.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.UInt32.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt32.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.UInt32.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt32.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.UInt32.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.UInt32.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.UInt32.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt32.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.UInt32.op_Less_Hat (Term Term) Term)

(declare-fun FStar.UInt32.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.UInt32.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt32.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding val FStar.UInt32.to_string>

(declare-fun FStar.UInt32.to_string (Term) Term)
(declare-fun Tm_arrow_bde0326394a5877aafa8a9dfb4adb318 () Term)
(declare-fun FStar.UInt32.to_string@tok () Term)

; </end encoding val FStar.UInt32.to_string>


; <Start encoding val FStar.UInt32.to_string_hex>

(declare-fun FStar.UInt32.to_string_hex (Term) Term)

(declare-fun FStar.UInt32.to_string_hex@tok () Term)

; </end encoding val FStar.UInt32.to_string_hex>


; <Start encoding val FStar.UInt32.to_string_hex_pad>

(declare-fun FStar.UInt32.to_string_hex_pad (Term) Term)

(declare-fun FStar.UInt32.to_string_hex_pad@tok () Term)

; </end encoding val FStar.UInt32.to_string_hex_pad>


; <Start encoding val FStar.UInt32.of_string>

(declare-fun FStar.UInt32.of_string (Term) Term)
(declare-fun Tm_arrow_564534749090ea8f842e229c3182e762 () Term)
(declare-fun FStar.UInt32.of_string@tok () Term)

; </end encoding val FStar.UInt32.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __uint_to_t>

(declare-fun FStar.UInt32.__uint_to_t (Term) Term)
(declare-fun Tm_arrow_67ad727682511dd92ce30d8d55620a8e () Term)
(declare-fun FStar.UInt32.__uint_to_t@tok () Term)

; </end encoding let __uint_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.UInt32


; Externals for interface FStar.Int64


; <Start encoding let n>

(declare-fun FStar.Int64.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Int64.t>

(declare-fun FStar.Int64.t (Dummy_sort) Term)

; </end encoding val FStar.Int64.t>


; <Start encoding val FStar.Int64.v>

(declare-fun FStar.Int64.v (Term) Term)
(declare-fun Tm_arrow_50f88cfd3e9adc79ecaea80d24eaf881 () Term)
(declare-fun FStar.Int64.v@tok () Term)

; </end encoding val FStar.Int64.v>


; <Start encoding val FStar.Int64.int_to_t>

(declare-fun FStar.Int64.int_to_t (Term) Term)
(declare-fun Tm_refine_20b9727bfb368ca1ad6e64242df43812 (Term) Term)
(declare-fun Tm_arrow_9aacd4c51d388dea7f57e52893b15954 () Term)
(declare-fun FStar.Int64.int_to_t@tok () Term)


; </end encoding val FStar.Int64.int_to_t>


; <Start encoding val FStar.Int64.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int64.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int64.uv_inv@tok () Term)

; </end encoding val FStar.Int64.uv_inv>


; <Start encoding val FStar.Int64.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int64.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int64.vu_inv@tok () Term)

; </end encoding val FStar.Int64.vu_inv>


; <Start encoding val FStar.Int64.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int64.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int64.v_inj@tok () Term)

; </end encoding val FStar.Int64.v_inj>


; <Start encoding val FStar.Int64.zero>

(declare-fun FStar.Int64.zero (Dummy_sort) Term)
(declare-fun Tm_refine_f34cee8327c62fd7612c44061ac10fdb () Term)


; </end encoding val FStar.Int64.zero>


; <Start encoding val FStar.Int64.one>

(declare-fun FStar.Int64.one (Dummy_sort) Term)
(declare-fun Tm_refine_203e9273a4f8fdae13114373d4d62bbf () Term)


; </end encoding val FStar.Int64.one>


; <Start encoding val FStar.Int64.add>

(declare-fun FStar.Int64.add (Term Term) Term)
(declare-fun Tm_refine_cff33b8d55d1ab8b8408d67ea53401d3 (Term Term) Term)
(declare-fun Tm_arrow_ed83283a33f866113fbd25895b9b8d2d () Term)
(declare-fun FStar.Int64.add@tok () Term)


; </end encoding val FStar.Int64.add>


; <Start encoding val FStar.Int64.sub>

(declare-fun FStar.Int64.sub (Term Term) Term)
(declare-fun Tm_refine_1fc9ac3a217b8d21cc2c0d75816a6c74 (Term Term) Term)
(declare-fun Tm_arrow_4542deddf7766ec0693cc853fcf4efcd () Term)
(declare-fun FStar.Int64.sub@tok () Term)


; </end encoding val FStar.Int64.sub>


; <Start encoding val FStar.Int64.mul>

(declare-fun FStar.Int64.mul (Term Term) Term)
(declare-fun Tm_refine_37c0725a54ced297933377446e859b55 (Term Term) Term)
(declare-fun Tm_arrow_42cc16185f0281f66fd3c38cb2ce966d () Term)
(declare-fun FStar.Int64.mul@tok () Term)


; </end encoding val FStar.Int64.mul>


; <Start encoding val FStar.Int64.div>

(declare-fun Tm_refine_628f456abb4ff7ec3d24a18ea94ac133 () Term)
(declare-fun FStar.Int64.div (Term Term) Term)

(declare-fun Tm_refine_a5642a7a89d263d94fde9c889b795c19 (Term Term) Term)
(declare-fun Tm_arrow_c45424883a6239e4d5ed622479d0e2c2 () Term)
(declare-fun FStar.Int64.div@tok () Term)


; </end encoding val FStar.Int64.div>


; <Start encoding val FStar.Int64.rem>


(declare-fun FStar.Int64.rem (Term Term) Term)

(declare-fun Tm_refine_1d7b4ef1b74a345016b65edcb3a0b11c (Term Term) Term)
(declare-fun Tm_arrow_b094b2204766bbf210faf3515dac5edb () Term)
(declare-fun FStar.Int64.rem@tok () Term)


; </end encoding val FStar.Int64.rem>


; <Start encoding val FStar.Int64.logand>

(declare-fun FStar.Int64.logand (Term Term) Term)
(declare-fun Tm_refine_0fe072140b6cab185956764b6b2b5100 (Term Term) Term)
(declare-fun Tm_arrow_0f24127e58cdc78e646ac8e9ce1e220b () Term)
(declare-fun FStar.Int64.logand@tok () Term)


; </end encoding val FStar.Int64.logand>


; <Start encoding val FStar.Int64.logxor>

(declare-fun FStar.Int64.logxor (Term Term) Term)
(declare-fun Tm_refine_e2357e15859202c1b74739b99f268c77 (Term Term) Term)
(declare-fun Tm_arrow_2b608ce5a03451a1a703bfa96c9de841 () Term)
(declare-fun FStar.Int64.logxor@tok () Term)


; </end encoding val FStar.Int64.logxor>


; <Start encoding val FStar.Int64.logor>

(declare-fun FStar.Int64.logor (Term Term) Term)
(declare-fun Tm_refine_0d502fb451739d594ffb2dde19acb8c7 (Term Term) Term)
(declare-fun Tm_arrow_f2d6223e577fd2c0dc4882b4e94da2d1 () Term)
(declare-fun FStar.Int64.logor@tok () Term)


; </end encoding val FStar.Int64.logor>


; <Start encoding val FStar.Int64.lognot>

(declare-fun FStar.Int64.lognot (Term) Term)
(declare-fun Tm_refine_09cdf91263ea29addfb21cf90d99d38a (Term) Term)
(declare-fun Tm_arrow_d446e9a4954555b21a6b121387f388f7 () Term)
(declare-fun FStar.Int64.lognot@tok () Term)


; </end encoding val FStar.Int64.lognot>


; <Start encoding val FStar.Int64.shift_right>

(declare-fun FStar.Int64.shift_right (Term Term) Term)
(declare-fun Tm_refine_8a1048adcc7173ce6ba343120c56fc30 (Term Term) Term)
(declare-fun Tm_arrow_460456e909b6fc3f1db6426fd53c8cb8 () Term)
(declare-fun FStar.Int64.shift_right@tok () Term)


; </end encoding val FStar.Int64.shift_right>


; <Start encoding val FStar.Int64.shift_left>

(declare-fun FStar.Int64.shift_left (Term Term) Term)
(declare-fun Tm_refine_36ce14007f3fdeef8a04301aa925b2cd (Term Term) Term)
(declare-fun Tm_arrow_af31e9f4e4b00e004d480198352f97f7 () Term)
(declare-fun FStar.Int64.shift_left@tok () Term)


; </end encoding val FStar.Int64.shift_left>


; <Start encoding val FStar.Int64.shift_arithmetic_right>

(declare-fun FStar.Int64.shift_arithmetic_right (Term Term) Term)
(declare-fun Tm_refine_0edc24855031dc65d4a9dbb9e8e84d13 (Term Term) Term)
(declare-fun Tm_arrow_b8898305f4bc94ede71031fc934596bd () Term)
(declare-fun FStar.Int64.shift_arithmetic_right@tok () Term)


; </end encoding val FStar.Int64.shift_arithmetic_right>


; <Start encoding let eq>

(declare-fun FStar.Int64.eq (Term Term) Term)
(declare-fun Tm_arrow_da34eb90e0110da92e0998be30c252a6 () Term)
(declare-fun FStar.Int64.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int64.gt (Term Term) Term)

(declare-fun FStar.Int64.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int64.gte (Term Term) Term)

(declare-fun FStar.Int64.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int64.lt (Term Term) Term)

(declare-fun FStar.Int64.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int64.lte (Term Term) Term)

(declare-fun FStar.Int64.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.Int64.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.Int64.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.Int64.op_Star_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.Int64.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.Int64.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.Int64.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.Int64.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.Int64.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.Int64.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.Int64.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.Int64.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.Int64.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Greater_Greater_Greater_Hat>

(declare-fun FStar.Int64.op_Greater_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int64.op_Greater_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.Int64.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int64.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.Int64.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.Int64.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.Int64.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int64.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.Int64.op_Less_Hat (Term Term) Term)

(declare-fun FStar.Int64.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.Int64.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int64.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding let ct_abs>

(declare-fun Tm_refine_09e0d51b082ead211eb10bd8852b815a () Term)
(declare-fun FStar.Int64.ct_abs (Term) Term)

(declare-fun Tm_refine_7fa122cebddb86b486e24aaafbe2ddf4 (Term) Term)
(declare-fun Tm_arrow_160d8d6d739ab631daa29edaa7550b74 () Term)
(declare-fun FStar.Int64.ct_abs@tok () Term)



; </end encoding let ct_abs>


; <Start encoding val FStar.Int64.to_string>

(declare-fun FStar.Int64.to_string (Term) Term)
(declare-fun Tm_arrow_30afe33eb03c92a72e5102bbb0499845 () Term)
(declare-fun FStar.Int64.to_string@tok () Term)

; </end encoding val FStar.Int64.to_string>


; <Start encoding val FStar.Int64.of_string>

(declare-fun FStar.Int64.of_string (Term) Term)
(declare-fun Tm_arrow_03a93f86f13501f75297c43a6aba4fd8 () Term)
(declare-fun FStar.Int64.of_string@tok () Term)

; </end encoding val FStar.Int64.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __int_to_t>

(declare-fun FStar.Int64.__int_to_t (Term) Term)
(declare-fun Tm_arrow_737f306dc84ebb26e78501a84ed111e0 () Term)
(declare-fun FStar.Int64.__int_to_t@tok () Term)

; </end encoding let __int_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.Int64


; Externals for interface FStar.Int128


; <Start encoding let n>

(declare-fun FStar.Int128.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Int128.t>

(declare-fun FStar.Int128.t (Dummy_sort) Term)

; </end encoding val FStar.Int128.t>


; <Start encoding val FStar.Int128.v>

(declare-fun FStar.Int128.v (Term) Term)
(declare-fun Tm_arrow_0068985e54236f7c209a6eb477f82dcc () Term)
(declare-fun FStar.Int128.v@tok () Term)

; </end encoding val FStar.Int128.v>


; <Start encoding val FStar.Int128.int_to_t>

(declare-fun FStar.Int128.int_to_t (Term) Term)
(declare-fun Tm_refine_1c542551ece6a20679e1a0f39d22881b (Term) Term)
(declare-fun Tm_arrow_8586f87240e50effd3d156fdb9a2f114 () Term)
(declare-fun FStar.Int128.int_to_t@tok () Term)


; </end encoding val FStar.Int128.int_to_t>


; <Start encoding val FStar.Int128.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int128.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int128.uv_inv@tok () Term)

; </end encoding val FStar.Int128.uv_inv>


; <Start encoding val FStar.Int128.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int128.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int128.vu_inv@tok () Term)

; </end encoding val FStar.Int128.vu_inv>


; <Start encoding val FStar.Int128.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int128.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int128.v_inj@tok () Term)

; </end encoding val FStar.Int128.v_inj>


; <Start encoding val FStar.Int128.zero>

(declare-fun FStar.Int128.zero (Dummy_sort) Term)
(declare-fun Tm_refine_1a085fc7ed7db3953c420b1c66916632 () Term)


; </end encoding val FStar.Int128.zero>


; <Start encoding val FStar.Int128.one>

(declare-fun FStar.Int128.one (Dummy_sort) Term)
(declare-fun Tm_refine_22c859bae64fbc02c46921b549583bea () Term)


; </end encoding val FStar.Int128.one>


; <Start encoding val FStar.Int128.add>

(declare-fun FStar.Int128.add (Term Term) Term)
(declare-fun Tm_refine_757070323c322caa5a4ae9914b0e605d (Term Term) Term)
(declare-fun Tm_arrow_8a87a9557b4dbd766ef464138f24da5d () Term)
(declare-fun FStar.Int128.add@tok () Term)


; </end encoding val FStar.Int128.add>


; <Start encoding val FStar.Int128.sub>

(declare-fun FStar.Int128.sub (Term Term) Term)
(declare-fun Tm_refine_e92fcfd1d8c8709ef07a23097013a32f (Term Term) Term)
(declare-fun Tm_arrow_b27c53c305762305e832d200d4582a88 () Term)
(declare-fun FStar.Int128.sub@tok () Term)


; </end encoding val FStar.Int128.sub>


; <Start encoding val FStar.Int128.mul>

(declare-fun FStar.Int128.mul (Term Term) Term)
(declare-fun Tm_refine_e042c9774e1d38f9fd7f7659e14de112 (Term Term) Term)
(declare-fun Tm_arrow_b0f499eac5e055dcc50a31ad355dea1f () Term)
(declare-fun FStar.Int128.mul@tok () Term)


; </end encoding val FStar.Int128.mul>


; <Start encoding val FStar.Int128.div>

(declare-fun Tm_refine_b93a39aae2535f27f07d72319d235488 () Term)
(declare-fun FStar.Int128.div (Term Term) Term)

(declare-fun Tm_refine_7635a052745f4210defbb72f6436f235 (Term Term) Term)
(declare-fun Tm_arrow_26aff2ae3440cfffd8934e6aa2828d00 () Term)
(declare-fun FStar.Int128.div@tok () Term)


; </end encoding val FStar.Int128.div>


; <Start encoding val FStar.Int128.rem>


(declare-fun FStar.Int128.rem (Term Term) Term)

(declare-fun Tm_refine_b91621ed76df3a073da9197af91ed78a (Term Term) Term)
(declare-fun Tm_arrow_6305cfebd1772f5410e055d739a3f5b1 () Term)
(declare-fun FStar.Int128.rem@tok () Term)


; </end encoding val FStar.Int128.rem>


; <Start encoding val FStar.Int128.logand>

(declare-fun FStar.Int128.logand (Term Term) Term)
(declare-fun Tm_refine_65a36c90b7ac07f8b38113e560cdb103 (Term Term) Term)
(declare-fun Tm_arrow_fd2dee2d0035534036fb4311f3068751 () Term)
(declare-fun FStar.Int128.logand@tok () Term)


; </end encoding val FStar.Int128.logand>


; <Start encoding val FStar.Int128.logxor>

(declare-fun FStar.Int128.logxor (Term Term) Term)
(declare-fun Tm_refine_a91d918c96e32c234a4d649ce499b265 (Term Term) Term)
(declare-fun Tm_arrow_066d7881e89d44110fe953db2f64f83b () Term)
(declare-fun FStar.Int128.logxor@tok () Term)


; </end encoding val FStar.Int128.logxor>


; <Start encoding val FStar.Int128.logor>

(declare-fun FStar.Int128.logor (Term Term) Term)
(declare-fun Tm_refine_17a3178a696311bbfb0d9ae464eeab0a (Term Term) Term)
(declare-fun Tm_arrow_dc7137af28d7d6cb131ce90523b5eb52 () Term)
(declare-fun FStar.Int128.logor@tok () Term)


; </end encoding val FStar.Int128.logor>


; <Start encoding val FStar.Int128.lognot>

(declare-fun FStar.Int128.lognot (Term) Term)
(declare-fun Tm_refine_bcb38bf4e43f392e5272a0c2f04452a3 (Term) Term)
(declare-fun Tm_arrow_2127d5bd9442d043a3aa28227315f778 () Term)
(declare-fun FStar.Int128.lognot@tok () Term)


; </end encoding val FStar.Int128.lognot>


; <Start encoding val FStar.Int128.shift_right>

(declare-fun FStar.Int128.shift_right (Term Term) Term)
(declare-fun Tm_refine_d957218608b23d3b3e5cf30850e996ef (Term Term) Term)
(declare-fun Tm_arrow_4dbc009a31cc20d23ad54610fc5d1735 () Term)
(declare-fun FStar.Int128.shift_right@tok () Term)


; </end encoding val FStar.Int128.shift_right>


; <Start encoding val FStar.Int128.shift_left>

(declare-fun FStar.Int128.shift_left (Term Term) Term)
(declare-fun Tm_refine_99281c91b156a5430d1a54c8effcfa5d (Term Term) Term)
(declare-fun Tm_arrow_3415c1275b8932022a2363a55c08c44b () Term)
(declare-fun FStar.Int128.shift_left@tok () Term)


; </end encoding val FStar.Int128.shift_left>


; <Start encoding val FStar.Int128.shift_arithmetic_right>

(declare-fun FStar.Int128.shift_arithmetic_right (Term Term) Term)
(declare-fun Tm_refine_036014f8868bf47b8f6f1df7f2aab29a (Term Term) Term)
(declare-fun Tm_arrow_202ea30b4b666c06a1f8918b4cce55fb () Term)
(declare-fun FStar.Int128.shift_arithmetic_right@tok () Term)


; </end encoding val FStar.Int128.shift_arithmetic_right>


; <Start encoding let eq>

(declare-fun FStar.Int128.eq (Term Term) Term)
(declare-fun Tm_arrow_16f61ed5da9f2abc3ef77773db9d5df9 () Term)
(declare-fun FStar.Int128.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int128.gt (Term Term) Term)

(declare-fun FStar.Int128.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int128.gte (Term Term) Term)

(declare-fun FStar.Int128.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int128.lt (Term Term) Term)

(declare-fun FStar.Int128.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int128.lte (Term Term) Term)

(declare-fun FStar.Int128.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.Int128.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.Int128.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.Int128.op_Star_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.Int128.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.Int128.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.Int128.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.Int128.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.Int128.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.Int128.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.Int128.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.Int128.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.Int128.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Greater_Greater_Greater_Hat>

(declare-fun FStar.Int128.op_Greater_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int128.op_Greater_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.Int128.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int128.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.Int128.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.Int128.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.Int128.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int128.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.Int128.op_Less_Hat (Term Term) Term)

(declare-fun FStar.Int128.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.Int128.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int128.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding let ct_abs>

(declare-fun Tm_refine_c2959f0f1156c9f91599993a329d25a1 () Term)
(declare-fun FStar.Int128.ct_abs (Term) Term)

(declare-fun Tm_refine_e410f394756a5f2cf89d3603dac847bd (Term) Term)
(declare-fun Tm_arrow_d5bc7243ae9f82a237ff3fa10ddde4dc () Term)
(declare-fun FStar.Int128.ct_abs@tok () Term)



; </end encoding let ct_abs>


; <Start encoding val FStar.Int128.to_string>

(declare-fun FStar.Int128.to_string (Term) Term)
(declare-fun Tm_arrow_8f83c47355a3411dd4547aa8b16901cb () Term)
(declare-fun FStar.Int128.to_string@tok () Term)

; </end encoding val FStar.Int128.to_string>


; <Start encoding val FStar.Int128.of_string>

(declare-fun FStar.Int128.of_string (Term) Term)
(declare-fun Tm_arrow_90fb4539936b32678c76a51ed1bd4445 () Term)
(declare-fun FStar.Int128.of_string@tok () Term)

; </end encoding val FStar.Int128.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __int_to_t>

(declare-fun FStar.Int128.__int_to_t (Term) Term)
(declare-fun Tm_arrow_42b2db552ea6e2c7b4c7d1ad506f1059 () Term)
(declare-fun FStar.Int128.__int_to_t@tok () Term)

; </end encoding let __int_to_t>


; <Skipped #reset-options/>


; <Start encoding val FStar.Int128.mul_wide>

(declare-fun FStar.Int128.mul_wide (Term Term) Term)
(declare-fun Tm_refine_c841faec9bd771e5416483a7543f359b (Term Term) Term)
(declare-fun Tm_arrow_661f678e5a912ccbf1fb3772902bf8aa () Term)
(declare-fun FStar.Int128.mul_wide@tok () Term)


; </end encoding val FStar.Int128.mul_wide>


; End Externals for interface FStar.Int128


; Externals for interface FStar.Int32


; <Start encoding let n>

(declare-fun FStar.Int32.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Int32.t>

(declare-fun FStar.Int32.t (Dummy_sort) Term)

; </end encoding val FStar.Int32.t>


; <Start encoding val FStar.Int32.v>

(declare-fun FStar.Int32.v (Term) Term)
(declare-fun Tm_arrow_f4bf94df4bd6f39905f23de9668012e4 () Term)
(declare-fun FStar.Int32.v@tok () Term)

; </end encoding val FStar.Int32.v>


; <Start encoding val FStar.Int32.int_to_t>

(declare-fun FStar.Int32.int_to_t (Term) Term)
(declare-fun Tm_refine_627e9f1cc724efa294bbc10092665eb4 (Term) Term)
(declare-fun Tm_arrow_fe360e36795474927c4df051072b7c84 () Term)
(declare-fun FStar.Int32.int_to_t@tok () Term)


; </end encoding val FStar.Int32.int_to_t>


; <Start encoding val FStar.Int32.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int32.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int32.uv_inv@tok () Term)

; </end encoding val FStar.Int32.uv_inv>


; <Start encoding val FStar.Int32.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int32.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int32.vu_inv@tok () Term)

; </end encoding val FStar.Int32.vu_inv>


; <Start encoding val FStar.Int32.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int32.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int32.v_inj@tok () Term)

; </end encoding val FStar.Int32.v_inj>


; <Start encoding val FStar.Int32.zero>

(declare-fun FStar.Int32.zero (Dummy_sort) Term)
(declare-fun Tm_refine_4b27ad679322c7269e5669f5b7ea65d7 () Term)


; </end encoding val FStar.Int32.zero>


; <Start encoding val FStar.Int32.one>

(declare-fun FStar.Int32.one (Dummy_sort) Term)
(declare-fun Tm_refine_16861580effb696f35863717c1a89e86 () Term)


; </end encoding val FStar.Int32.one>


; <Start encoding val FStar.Int32.add>

(declare-fun FStar.Int32.add (Term Term) Term)
(declare-fun Tm_refine_5aa5ab11c31de0febf935305a5c980c9 (Term Term) Term)
(declare-fun Tm_arrow_1ae2a1cb7e3b9275ba73e0391a268c58 () Term)
(declare-fun FStar.Int32.add@tok () Term)


; </end encoding val FStar.Int32.add>


; <Start encoding val FStar.Int32.sub>

(declare-fun FStar.Int32.sub (Term Term) Term)
(declare-fun Tm_refine_2370a76276b3eaf034dd2a6c193ec479 (Term Term) Term)
(declare-fun Tm_arrow_3f0cd0a55749dce187a8b0625a84b969 () Term)
(declare-fun FStar.Int32.sub@tok () Term)


; </end encoding val FStar.Int32.sub>


; <Start encoding val FStar.Int32.mul>

(declare-fun FStar.Int32.mul (Term Term) Term)
(declare-fun Tm_refine_b2da501eb6d7b3b17717277c72cd3d33 (Term Term) Term)
(declare-fun Tm_arrow_a8520b13e74a8db37464ccab702fc4d8 () Term)
(declare-fun FStar.Int32.mul@tok () Term)


; </end encoding val FStar.Int32.mul>


; <Start encoding val FStar.Int32.div>

(declare-fun Tm_refine_9961d54ea871d3cceb9a869af9f4caf7 () Term)
(declare-fun FStar.Int32.div (Term Term) Term)

(declare-fun Tm_refine_10c5468be26c345f983216e2f4a2830e (Term Term) Term)
(declare-fun Tm_arrow_e4982050523b30538ddc26f6d929adaa () Term)
(declare-fun FStar.Int32.div@tok () Term)


; </end encoding val FStar.Int32.div>


; <Start encoding val FStar.Int32.rem>


(declare-fun FStar.Int32.rem (Term Term) Term)

(declare-fun Tm_refine_923e81a1f108f9949dc0543f2627072f (Term Term) Term)
(declare-fun Tm_arrow_b3f1d49408f6546fc11f91d422dabe23 () Term)
(declare-fun FStar.Int32.rem@tok () Term)


; </end encoding val FStar.Int32.rem>


; <Start encoding val FStar.Int32.logand>

(declare-fun FStar.Int32.logand (Term Term) Term)
(declare-fun Tm_refine_6866b028a4b89e77530792ce38231111 (Term Term) Term)
(declare-fun Tm_arrow_a653d9f76ea6ba694062a5cbf0e017cf () Term)
(declare-fun FStar.Int32.logand@tok () Term)


; </end encoding val FStar.Int32.logand>


; <Start encoding val FStar.Int32.logxor>

(declare-fun FStar.Int32.logxor (Term Term) Term)
(declare-fun Tm_refine_becfe5da95f1aa4ee2ce8bcb219c8d8b (Term Term) Term)
(declare-fun Tm_arrow_4e701446c0289f2c818a71c60cde3590 () Term)
(declare-fun FStar.Int32.logxor@tok () Term)


; </end encoding val FStar.Int32.logxor>


; <Start encoding val FStar.Int32.logor>

(declare-fun FStar.Int32.logor (Term Term) Term)
(declare-fun Tm_refine_0353e025954e9364168f29e3769e4cb4 (Term Term) Term)
(declare-fun Tm_arrow_01dedda34d05d39141cd218b604eb3c0 () Term)
(declare-fun FStar.Int32.logor@tok () Term)


; </end encoding val FStar.Int32.logor>


; <Start encoding val FStar.Int32.lognot>

(declare-fun FStar.Int32.lognot (Term) Term)
(declare-fun Tm_refine_353248002d2ca4cf50785f111f47157a (Term) Term)
(declare-fun Tm_arrow_f1b1fe05c7d8b62f9fe5e829c0ada0fd () Term)
(declare-fun FStar.Int32.lognot@tok () Term)


; </end encoding val FStar.Int32.lognot>


; <Start encoding val FStar.Int32.shift_right>

(declare-fun FStar.Int32.shift_right (Term Term) Term)
(declare-fun Tm_refine_a5bfe2c071f769c34fb186b3c6f025bc (Term Term) Term)
(declare-fun Tm_arrow_b3ba4dcd7dc367eb89868fa161b4e04d () Term)
(declare-fun FStar.Int32.shift_right@tok () Term)


; </end encoding val FStar.Int32.shift_right>


; <Start encoding val FStar.Int32.shift_left>

(declare-fun FStar.Int32.shift_left (Term Term) Term)
(declare-fun Tm_refine_f042c9816d442898756db486f43c46c5 (Term Term) Term)
(declare-fun Tm_arrow_ac724b30d6ffb2633cc66987d5660504 () Term)
(declare-fun FStar.Int32.shift_left@tok () Term)


; </end encoding val FStar.Int32.shift_left>


; <Start encoding val FStar.Int32.shift_arithmetic_right>

(declare-fun FStar.Int32.shift_arithmetic_right (Term Term) Term)
(declare-fun Tm_refine_3465cdfd5e573e06047a897b8d2ec713 (Term Term) Term)
(declare-fun Tm_arrow_56e16e1b27df5db49461580069a4b2e8 () Term)
(declare-fun FStar.Int32.shift_arithmetic_right@tok () Term)


; </end encoding val FStar.Int32.shift_arithmetic_right>


; <Start encoding let eq>

(declare-fun FStar.Int32.eq (Term Term) Term)
(declare-fun Tm_arrow_4229113e57d40c359ccaebc3146f28d8 () Term)
(declare-fun FStar.Int32.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int32.gt (Term Term) Term)

(declare-fun FStar.Int32.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int32.gte (Term Term) Term)

(declare-fun FStar.Int32.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int32.lt (Term Term) Term)

(declare-fun FStar.Int32.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int32.lte (Term Term) Term)

(declare-fun FStar.Int32.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.Int32.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.Int32.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.Int32.op_Star_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.Int32.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.Int32.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.Int32.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.Int32.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.Int32.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.Int32.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.Int32.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.Int32.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.Int32.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Greater_Greater_Greater_Hat>

(declare-fun FStar.Int32.op_Greater_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int32.op_Greater_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.Int32.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int32.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.Int32.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.Int32.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.Int32.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int32.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.Int32.op_Less_Hat (Term Term) Term)

(declare-fun FStar.Int32.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.Int32.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int32.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding let ct_abs>

(declare-fun Tm_refine_853c92b1b57deba9861afab3b88011fd () Term)
(declare-fun FStar.Int32.ct_abs (Term) Term)

(declare-fun Tm_refine_4832a4dd6f6c8b4bcd43cf5fa229de92 (Term) Term)
(declare-fun Tm_arrow_da79825446e7a53ed4e2199d118751df () Term)
(declare-fun FStar.Int32.ct_abs@tok () Term)



; </end encoding let ct_abs>


; <Start encoding val FStar.Int32.to_string>

(declare-fun FStar.Int32.to_string (Term) Term)
(declare-fun Tm_arrow_29acd599eab236ba0b201e41bc06d1d3 () Term)
(declare-fun FStar.Int32.to_string@tok () Term)

; </end encoding val FStar.Int32.to_string>


; <Start encoding val FStar.Int32.of_string>

(declare-fun FStar.Int32.of_string (Term) Term)
(declare-fun Tm_arrow_faca34681b3b6bb74518267d4cc90946 () Term)
(declare-fun FStar.Int32.of_string@tok () Term)

; </end encoding val FStar.Int32.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __int_to_t>

(declare-fun FStar.Int32.__int_to_t (Term) Term)
(declare-fun Tm_arrow_3b2fe9363a51dee88398c671861cfa75 () Term)
(declare-fun FStar.Int32.__int_to_t@tok () Term)

; </end encoding let __int_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.Int32


; Externals for interface FStar.Int16


; <Start encoding let n>

(declare-fun FStar.Int16.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Int16.t>

(declare-fun FStar.Int16.t (Dummy_sort) Term)

; </end encoding val FStar.Int16.t>


; <Start encoding val FStar.Int16.v>

(declare-fun FStar.Int16.v (Term) Term)
(declare-fun Tm_arrow_c11f275a21790bc90c0c80fe543f51f5 () Term)
(declare-fun FStar.Int16.v@tok () Term)

; </end encoding val FStar.Int16.v>


; <Start encoding val FStar.Int16.int_to_t>

(declare-fun FStar.Int16.int_to_t (Term) Term)
(declare-fun Tm_refine_3d5525dd50da96925771e0566aa2cb99 (Term) Term)
(declare-fun Tm_arrow_e7cfb34c4da3848085c133e643ce26ee () Term)
(declare-fun FStar.Int16.int_to_t@tok () Term)


; </end encoding val FStar.Int16.int_to_t>


; <Start encoding val FStar.Int16.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int16.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int16.uv_inv@tok () Term)

; </end encoding val FStar.Int16.uv_inv>


; <Start encoding val FStar.Int16.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int16.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int16.vu_inv@tok () Term)

; </end encoding val FStar.Int16.vu_inv>


; <Start encoding val FStar.Int16.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int16.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int16.v_inj@tok () Term)

; </end encoding val FStar.Int16.v_inj>


; <Start encoding val FStar.Int16.zero>

(declare-fun FStar.Int16.zero (Dummy_sort) Term)
(declare-fun Tm_refine_68725ebeac1c9fba142682d5289ce1f5 () Term)


; </end encoding val FStar.Int16.zero>


; <Start encoding val FStar.Int16.one>

(declare-fun FStar.Int16.one (Dummy_sort) Term)
(declare-fun Tm_refine_4e12eab648b1a756fd9089734630525b () Term)


; </end encoding val FStar.Int16.one>


; <Start encoding val FStar.Int16.add>

(declare-fun FStar.Int16.add (Term Term) Term)
(declare-fun Tm_refine_a28a6b882d97a365aa7f25893bfb4f13 (Term Term) Term)
(declare-fun Tm_arrow_617f701e90143802bc629772224fa59c () Term)
(declare-fun FStar.Int16.add@tok () Term)


; </end encoding val FStar.Int16.add>


; <Start encoding val FStar.Int16.sub>

(declare-fun FStar.Int16.sub (Term Term) Term)
(declare-fun Tm_refine_0ca1c0e820d26ec0eb6b4b532958a40e (Term Term) Term)
(declare-fun Tm_arrow_dc7a1b3aed7a4af5df308b5809dd21ab () Term)
(declare-fun FStar.Int16.sub@tok () Term)


; </end encoding val FStar.Int16.sub>


; <Start encoding val FStar.Int16.mul>

(declare-fun FStar.Int16.mul (Term Term) Term)
(declare-fun Tm_refine_da821069bb94a6e40bac6de95fba260c (Term Term) Term)
(declare-fun Tm_arrow_cde342f114b4028f0c8154d50b71f9db () Term)
(declare-fun FStar.Int16.mul@tok () Term)


; </end encoding val FStar.Int16.mul>


; <Start encoding val FStar.Int16.div>

(declare-fun Tm_refine_887fd71edd23a071fb178a8dad28f43b () Term)
(declare-fun FStar.Int16.div (Term Term) Term)

(declare-fun Tm_refine_8b2f6ae4d061c21b9e81df7d528abfa6 (Term Term) Term)
(declare-fun Tm_arrow_c2e599efefc289f480d8872a2bf2a093 () Term)
(declare-fun FStar.Int16.div@tok () Term)


; </end encoding val FStar.Int16.div>


; <Start encoding val FStar.Int16.rem>


(declare-fun FStar.Int16.rem (Term Term) Term)

(declare-fun Tm_refine_1123c989dcd1a37aebe940c5097d8257 (Term Term) Term)
(declare-fun Tm_arrow_4283ce0b2c89cca7bf2313cc51baf51f () Term)
(declare-fun FStar.Int16.rem@tok () Term)


; </end encoding val FStar.Int16.rem>


; <Start encoding val FStar.Int16.logand>

(declare-fun FStar.Int16.logand (Term Term) Term)
(declare-fun Tm_refine_154c9dbe9b07c1a6797cc48b0acc7b8a (Term Term) Term)
(declare-fun Tm_arrow_fa4fd7e045b6f05bb194e120433f4ded () Term)
(declare-fun FStar.Int16.logand@tok () Term)


; </end encoding val FStar.Int16.logand>


; <Start encoding val FStar.Int16.logxor>

(declare-fun FStar.Int16.logxor (Term Term) Term)
(declare-fun Tm_refine_2dce52c5ba067470a613d0bb4c355670 (Term Term) Term)
(declare-fun Tm_arrow_87ea2fac1a3f566f97668cd6cf0ac586 () Term)
(declare-fun FStar.Int16.logxor@tok () Term)


; </end encoding val FStar.Int16.logxor>


; <Start encoding val FStar.Int16.logor>

(declare-fun FStar.Int16.logor (Term Term) Term)
(declare-fun Tm_refine_58c5e00b8ff380c721d5c7a2f467aaab (Term Term) Term)
(declare-fun Tm_arrow_4be57f04067d389af61590436dcf2138 () Term)
(declare-fun FStar.Int16.logor@tok () Term)


; </end encoding val FStar.Int16.logor>


; <Start encoding val FStar.Int16.lognot>

(declare-fun FStar.Int16.lognot (Term) Term)
(declare-fun Tm_refine_819846e9a5b5d83efd11d9ce0a6f92be (Term) Term)
(declare-fun Tm_arrow_40c1e288f41a711afe2479696def09cf () Term)
(declare-fun FStar.Int16.lognot@tok () Term)


; </end encoding val FStar.Int16.lognot>


; <Start encoding val FStar.Int16.shift_right>

(declare-fun FStar.Int16.shift_right (Term Term) Term)
(declare-fun Tm_refine_3255609608361bdf7f6bae26334f531c (Term Term) Term)
(declare-fun Tm_arrow_114385a9b92284041feb5bcdfe56beb4 () Term)
(declare-fun FStar.Int16.shift_right@tok () Term)


; </end encoding val FStar.Int16.shift_right>


; <Start encoding val FStar.Int16.shift_left>

(declare-fun FStar.Int16.shift_left (Term Term) Term)
(declare-fun Tm_refine_c23a7f0c470fb6f47f9fee0e209af523 (Term Term) Term)
(declare-fun Tm_arrow_9ff317553631dfe954c44fa30cb7dcdd () Term)
(declare-fun FStar.Int16.shift_left@tok () Term)


; </end encoding val FStar.Int16.shift_left>


; <Start encoding val FStar.Int16.shift_arithmetic_right>

(declare-fun FStar.Int16.shift_arithmetic_right (Term Term) Term)
(declare-fun Tm_refine_472f35e4060ffd705fbcca55e6d74d51 (Term Term) Term)
(declare-fun Tm_arrow_c0817355be754abe4dde689277ddba42 () Term)
(declare-fun FStar.Int16.shift_arithmetic_right@tok () Term)


; </end encoding val FStar.Int16.shift_arithmetic_right>


; <Start encoding let eq>

(declare-fun FStar.Int16.eq (Term Term) Term)
(declare-fun Tm_arrow_9d624118066eaec6c9711c4caceb3489 () Term)
(declare-fun FStar.Int16.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int16.gt (Term Term) Term)

(declare-fun FStar.Int16.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int16.gte (Term Term) Term)

(declare-fun FStar.Int16.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int16.lt (Term Term) Term)

(declare-fun FStar.Int16.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int16.lte (Term Term) Term)

(declare-fun FStar.Int16.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.Int16.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.Int16.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.Int16.op_Star_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.Int16.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.Int16.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.Int16.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.Int16.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.Int16.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.Int16.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.Int16.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.Int16.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.Int16.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Greater_Greater_Greater_Hat>

(declare-fun FStar.Int16.op_Greater_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int16.op_Greater_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.Int16.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int16.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.Int16.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.Int16.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.Int16.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int16.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.Int16.op_Less_Hat (Term Term) Term)

(declare-fun FStar.Int16.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.Int16.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int16.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding let ct_abs>

(declare-fun Tm_refine_905eb75d304d39a1c292f6e9a7923059 () Term)
(declare-fun FStar.Int16.ct_abs (Term) Term)

(declare-fun Tm_refine_ec190995fc7a4dee283b722741e05c17 (Term) Term)
(declare-fun Tm_arrow_ad4d51909612685b37c10d434009e218 () Term)
(declare-fun FStar.Int16.ct_abs@tok () Term)



; </end encoding let ct_abs>


; <Start encoding val FStar.Int16.to_string>

(declare-fun FStar.Int16.to_string (Term) Term)
(declare-fun Tm_arrow_6dd91255da0d0c601bee14042bacaa10 () Term)
(declare-fun FStar.Int16.to_string@tok () Term)

; </end encoding val FStar.Int16.to_string>


; <Start encoding val FStar.Int16.of_string>

(declare-fun FStar.Int16.of_string (Term) Term)
(declare-fun Tm_arrow_a2f8b8320fd3a7b21bf5a0abc0489d33 () Term)
(declare-fun FStar.Int16.of_string@tok () Term)

; </end encoding val FStar.Int16.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __int_to_t>

(declare-fun FStar.Int16.__int_to_t (Term) Term)
(declare-fun Tm_arrow_8ca2ae7f208808624432206fa1fd42e7 () Term)
(declare-fun FStar.Int16.__int_to_t@tok () Term)

; </end encoding let __int_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.Int16


; Externals for interface FStar.Int8


; <Start encoding let n>

(declare-fun FStar.Int8.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.Int8.t>

(declare-fun FStar.Int8.t (Dummy_sort) Term)

; </end encoding val FStar.Int8.t>


; <Start encoding val FStar.Int8.v>

(declare-fun FStar.Int8.v (Term) Term)
(declare-fun Tm_arrow_3ed82c48966c43aae55215d1735fa2bd () Term)
(declare-fun FStar.Int8.v@tok () Term)

; </end encoding val FStar.Int8.v>


; <Start encoding val FStar.Int8.int_to_t>

(declare-fun FStar.Int8.int_to_t (Term) Term)
(declare-fun Tm_refine_627483b23b11d5a071fe1ff3a43454b1 (Term) Term)
(declare-fun Tm_arrow_9d833fce331eb42c35cff5f448fe6f61 () Term)
(declare-fun FStar.Int8.int_to_t@tok () Term)


; </end encoding val FStar.Int8.int_to_t>


; <Start encoding val FStar.Int8.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int8.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int8.uv_inv@tok () Term)

; </end encoding val FStar.Int8.uv_inv>


; <Start encoding val FStar.Int8.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int8.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int8.vu_inv@tok () Term)

; </end encoding val FStar.Int8.vu_inv>


; <Start encoding val FStar.Int8.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Int8.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Int8.v_inj@tok () Term)

; </end encoding val FStar.Int8.v_inj>


; <Start encoding val FStar.Int8.zero>

(declare-fun FStar.Int8.zero (Dummy_sort) Term)
(declare-fun Tm_refine_f53cd8ad3c1e3115abeb0027455dc224 () Term)


; </end encoding val FStar.Int8.zero>


; <Start encoding val FStar.Int8.one>

(declare-fun FStar.Int8.one (Dummy_sort) Term)
(declare-fun Tm_refine_dbb1396644bacb35a126b1403611f82d () Term)


; </end encoding val FStar.Int8.one>


; <Start encoding val FStar.Int8.add>

(declare-fun FStar.Int8.add (Term Term) Term)
(declare-fun Tm_refine_03c914b28d964e6bced1ef7a9aa09acc (Term Term) Term)
(declare-fun Tm_arrow_fa2e2b38cdb0ba0ad61f9cbd9272d2c0 () Term)
(declare-fun FStar.Int8.add@tok () Term)


; </end encoding val FStar.Int8.add>


; <Start encoding val FStar.Int8.sub>

(declare-fun FStar.Int8.sub (Term Term) Term)
(declare-fun Tm_refine_9dbaf07bcfba2d4a4aa7ed5bbcb9e54f (Term Term) Term)
(declare-fun Tm_arrow_e4d8293c31163f9e8cddf99a6e7bb734 () Term)
(declare-fun FStar.Int8.sub@tok () Term)


; </end encoding val FStar.Int8.sub>


; <Start encoding val FStar.Int8.mul>

(declare-fun FStar.Int8.mul (Term Term) Term)
(declare-fun Tm_refine_7eff5dc2928cafba516308733e6d93bb (Term Term) Term)
(declare-fun Tm_arrow_6a8a4d136c14c183c4875972e027401b () Term)
(declare-fun FStar.Int8.mul@tok () Term)


; </end encoding val FStar.Int8.mul>


; <Start encoding val FStar.Int8.div>

(declare-fun Tm_refine_1bed937cce8cdf75e4ca2026e8263a1e () Term)
(declare-fun FStar.Int8.div (Term Term) Term)

(declare-fun Tm_refine_4b9e14abe7b7eb92c750515973de23f8 (Term Term) Term)
(declare-fun Tm_arrow_64a697cb19e2e787c537831ae65b4de7 () Term)
(declare-fun FStar.Int8.div@tok () Term)


; </end encoding val FStar.Int8.div>


; <Start encoding val FStar.Int8.rem>


(declare-fun FStar.Int8.rem (Term Term) Term)

(declare-fun Tm_refine_d63e04a4667963c91b06d847b1f2c63c (Term Term) Term)
(declare-fun Tm_arrow_aad3c358498ee023378414314b54643f () Term)
(declare-fun FStar.Int8.rem@tok () Term)


; </end encoding val FStar.Int8.rem>


; <Start encoding val FStar.Int8.logand>

(declare-fun FStar.Int8.logand (Term Term) Term)
(declare-fun Tm_refine_f43344a0fe1d05ddf2dbabae51fd4e35 (Term Term) Term)
(declare-fun Tm_arrow_bfd6aed26870cf6fae28146354bf94df () Term)
(declare-fun FStar.Int8.logand@tok () Term)


; </end encoding val FStar.Int8.logand>


; <Start encoding val FStar.Int8.logxor>

(declare-fun FStar.Int8.logxor (Term Term) Term)
(declare-fun Tm_refine_b280b4d6e3fecdef10318a432bfa2a4d (Term Term) Term)
(declare-fun Tm_arrow_2611949a3399b5125e2f6da01a4ed021 () Term)
(declare-fun FStar.Int8.logxor@tok () Term)


; </end encoding val FStar.Int8.logxor>


; <Start encoding val FStar.Int8.logor>

(declare-fun FStar.Int8.logor (Term Term) Term)
(declare-fun Tm_refine_595251d4c835fba77afbd2cef647300a (Term Term) Term)
(declare-fun Tm_arrow_f3a6ebeacd4f2b5123ac737df0c0ace0 () Term)
(declare-fun FStar.Int8.logor@tok () Term)


; </end encoding val FStar.Int8.logor>


; <Start encoding val FStar.Int8.lognot>

(declare-fun FStar.Int8.lognot (Term) Term)
(declare-fun Tm_refine_2bd33a5e181ec8236ba7097dc5719ec4 (Term) Term)
(declare-fun Tm_arrow_08ddfb7af34f815aa77a94d02491a0ed () Term)
(declare-fun FStar.Int8.lognot@tok () Term)


; </end encoding val FStar.Int8.lognot>


; <Start encoding val FStar.Int8.shift_right>

(declare-fun FStar.Int8.shift_right (Term Term) Term)
(declare-fun Tm_refine_9f3d5280a6f37e4281bd94831a9f162c (Term Term) Term)
(declare-fun Tm_arrow_34f5ccffce2f6510814b98c0716933dd () Term)
(declare-fun FStar.Int8.shift_right@tok () Term)


; </end encoding val FStar.Int8.shift_right>


; <Start encoding val FStar.Int8.shift_left>

(declare-fun FStar.Int8.shift_left (Term Term) Term)
(declare-fun Tm_refine_df06688bcdee8215e3a3c64bc81f68e1 (Term Term) Term)
(declare-fun Tm_arrow_80cd4951455b79877e1ff451adb1a016 () Term)
(declare-fun FStar.Int8.shift_left@tok () Term)


; </end encoding val FStar.Int8.shift_left>


; <Start encoding val FStar.Int8.shift_arithmetic_right>

(declare-fun FStar.Int8.shift_arithmetic_right (Term Term) Term)
(declare-fun Tm_refine_dc4579ed284bfac9f5f8e3ad9e366470 (Term Term) Term)
(declare-fun Tm_arrow_2b36269433ce79bddfaec91105165c82 () Term)
(declare-fun FStar.Int8.shift_arithmetic_right@tok () Term)


; </end encoding val FStar.Int8.shift_arithmetic_right>


; <Start encoding let eq>

(declare-fun FStar.Int8.eq (Term Term) Term)
(declare-fun Tm_arrow_d4e8934c44aa0cbf0c20e016141bb2ce () Term)
(declare-fun FStar.Int8.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.Int8.gt (Term Term) Term)

(declare-fun FStar.Int8.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.Int8.gte (Term Term) Term)

(declare-fun FStar.Int8.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.Int8.lt (Term Term) Term)

(declare-fun FStar.Int8.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.Int8.lte (Term Term) Term)

(declare-fun FStar.Int8.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.Int8.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.Int8.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.Int8.op_Star_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.Int8.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.Int8.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.Int8.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.Int8.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.Int8.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.Int8.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.Int8.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.Int8.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.Int8.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Greater_Greater_Greater_Hat>

(declare-fun FStar.Int8.op_Greater_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.Int8.op_Greater_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.Int8.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int8.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.Int8.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.Int8.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.Int8.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int8.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.Int8.op_Less_Hat (Term Term) Term)

(declare-fun FStar.Int8.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.Int8.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.Int8.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding let ct_abs>

(declare-fun Tm_refine_edde6135cd8c48071c1d975316b81b83 () Term)
(declare-fun FStar.Int8.ct_abs (Term) Term)

(declare-fun Tm_refine_2733cf7f3e8b5a35bb8ad950fb38f85f (Term) Term)
(declare-fun Tm_arrow_4cabbb86c1d7e25395530e2b0ae71e53 () Term)
(declare-fun FStar.Int8.ct_abs@tok () Term)



; </end encoding let ct_abs>


; <Start encoding val FStar.Int8.to_string>

(declare-fun FStar.Int8.to_string (Term) Term)
(declare-fun Tm_arrow_ed16a302d40f77572b6ea634826e997e () Term)
(declare-fun FStar.Int8.to_string@tok () Term)

; </end encoding val FStar.Int8.to_string>


; <Start encoding val FStar.Int8.of_string>

(declare-fun FStar.Int8.of_string (Term) Term)
(declare-fun Tm_arrow_6c64329622905793cf9762c06e1b912d () Term)
(declare-fun FStar.Int8.of_string@tok () Term)

; </end encoding val FStar.Int8.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __int_to_t>

(declare-fun FStar.Int8.__int_to_t (Term) Term)
(declare-fun Tm_arrow_3d31dd23e32abdda6c1f97b10136598a () Term)
(declare-fun FStar.Int8.__int_to_t@tok () Term)

; </end encoding let __int_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.Int8


; Externals for interface FStar.UInt64


; <Start encoding let n>

(declare-fun FStar.UInt64.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.UInt64.t>

(declare-fun FStar.UInt64.t (Dummy_sort) Term)

; </end encoding val FStar.UInt64.t>


; <Start encoding val FStar.UInt64.v>

(declare-fun FStar.UInt64.v (Term) Term)
(declare-fun Tm_arrow_b1dc77edd47f50a79ef19c45877be87f () Term)
(declare-fun FStar.UInt64.v@tok () Term)

; </end encoding val FStar.UInt64.v>


; <Start encoding val FStar.UInt64.uint_to_t>

(declare-fun FStar.UInt64.uint_to_t (Term) Term)
(declare-fun Tm_refine_48c1b5b4c02ad49f0760911a9d4b1fb4 (Term) Term)
(declare-fun Tm_arrow_0a7b550d26d1f7783c7c5e1990842388 () Term)
(declare-fun FStar.UInt64.uint_to_t@tok () Term)


; </end encoding val FStar.UInt64.uint_to_t>


; <Start encoding val FStar.UInt64.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt64.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt64.uv_inv@tok () Term)

; </end encoding val FStar.UInt64.uv_inv>


; <Start encoding val FStar.UInt64.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt64.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt64.vu_inv@tok () Term)

; </end encoding val FStar.UInt64.vu_inv>


; <Start encoding val FStar.UInt64.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt64.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt64.v_inj@tok () Term)

; </end encoding val FStar.UInt64.v_inj>


; <Start encoding val FStar.UInt64.zero>

(declare-fun FStar.UInt64.zero (Dummy_sort) Term)
(declare-fun Tm_refine_89584a9c9cf094f470969adafcc43f12 () Term)


; </end encoding val FStar.UInt64.zero>


; <Start encoding val FStar.UInt64.one>

(declare-fun FStar.UInt64.one (Dummy_sort) Term)
(declare-fun Tm_refine_248426d47c73436882d5ff4a2d4f3cf0 () Term)


; </end encoding val FStar.UInt64.one>


; <Start encoding val FStar.UInt64.add>

(declare-fun FStar.UInt64.add (Term Term) Term)
(declare-fun Tm_refine_bc552b2c624e2add758b3ac761c0c563 (Term Term) Term)
(declare-fun Tm_arrow_be2b56e86970b1435b564896876df5af () Term)
(declare-fun FStar.UInt64.add@tok () Term)


; </end encoding val FStar.UInt64.add>


; <Start encoding val FStar.UInt64.add_underspec>

(declare-fun FStar.UInt64.add_underspec (Term Term) Term)
(declare-fun Tm_refine_453fa410c3a31a8a972a89b516aee90f (Term Term) Term)
(declare-fun Tm_arrow_7f1e1876505bc4561e28a0354c79be94 () Term)
(declare-fun FStar.UInt64.add_underspec@tok () Term)


; </end encoding val FStar.UInt64.add_underspec>


; <Start encoding val FStar.UInt64.add_mod>

(declare-fun FStar.UInt64.add_mod (Term Term) Term)
(declare-fun Tm_refine_2d98f2f5de361516da3dbd9f556509e2 (Term Term) Term)
(declare-fun Tm_arrow_05395bb977e74723e0c89b35f3db81b1 () Term)
(declare-fun FStar.UInt64.add_mod@tok () Term)


; </end encoding val FStar.UInt64.add_mod>


; <Start encoding val FStar.UInt64.sub>

(declare-fun FStar.UInt64.sub (Term Term) Term)
(declare-fun Tm_refine_4db8ba22c4504a66577a2159dcc603cd (Term Term) Term)
(declare-fun Tm_arrow_a3c2957810330952c9cd0dc2ef7e5dc1 () Term)
(declare-fun FStar.UInt64.sub@tok () Term)


; </end encoding val FStar.UInt64.sub>


; <Start encoding val FStar.UInt64.sub_underspec>

(declare-fun FStar.UInt64.sub_underspec (Term Term) Term)
(declare-fun Tm_refine_dd3e2dd01aa446ac6616a71fc757406a (Term Term) Term)
(declare-fun Tm_arrow_87b0e65776a09c1fe9734c4195b4bf84 () Term)
(declare-fun FStar.UInt64.sub_underspec@tok () Term)


; </end encoding val FStar.UInt64.sub_underspec>


; <Start encoding val FStar.UInt64.sub_mod>

(declare-fun FStar.UInt64.sub_mod (Term Term) Term)
(declare-fun Tm_refine_cb95789552ffa46c14f21af13ceaad6b (Term Term) Term)
(declare-fun Tm_arrow_7f617113bda01094490f58e39564f398 () Term)
(declare-fun FStar.UInt64.sub_mod@tok () Term)


; </end encoding val FStar.UInt64.sub_mod>


; <Start encoding val FStar.UInt64.mul>

(declare-fun FStar.UInt64.mul (Term Term) Term)
(declare-fun Tm_refine_2ac8bed7a6398f84bccb91bd4fed7136 (Term Term) Term)
(declare-fun Tm_arrow_ea17845c6f4791bda61fffc74c40da51 () Term)
(declare-fun FStar.UInt64.mul@tok () Term)


; </end encoding val FStar.UInt64.mul>


; <Start encoding val FStar.UInt64.mul_underspec>

(declare-fun FStar.UInt64.mul_underspec (Term Term) Term)
(declare-fun Tm_refine_b936d941ba7bf51db4d781f9af09acd3 (Term Term) Term)
(declare-fun Tm_arrow_596709ad66a9eee3dc6ef040a813e08e () Term)
(declare-fun FStar.UInt64.mul_underspec@tok () Term)


; </end encoding val FStar.UInt64.mul_underspec>


; <Start encoding val FStar.UInt64.mul_mod>

(declare-fun FStar.UInt64.mul_mod (Term Term) Term)
(declare-fun Tm_refine_fce3a2e2e29645212301d89fcebc4e29 (Term Term) Term)
(declare-fun Tm_arrow_a58b92e22a54f064a91938f5890f3d26 () Term)
(declare-fun FStar.UInt64.mul_mod@tok () Term)


; </end encoding val FStar.UInt64.mul_mod>


; <Start encoding val FStar.UInt64.div>

(declare-fun Tm_refine_94d25b6e0041d543efd58300424ecc37 () Term)
(declare-fun FStar.UInt64.div (Term Term) Term)

(declare-fun Tm_refine_2905e4cd1a81244ae97dc5c62563e060 (Term Term) Term)
(declare-fun Tm_arrow_362fd430a2a36692a10db610ce347491 () Term)
(declare-fun FStar.UInt64.div@tok () Term)


; </end encoding val FStar.UInt64.div>


; <Start encoding val FStar.UInt64.rem>


(declare-fun FStar.UInt64.rem (Term Term) Term)

(declare-fun Tm_refine_06f2bf4950bb76094f7b7f43daea2409 (Term Term) Term)
(declare-fun Tm_arrow_53bf9c10f719f234f584267623ec2e33 () Term)
(declare-fun FStar.UInt64.rem@tok () Term)


; </end encoding val FStar.UInt64.rem>


; <Start encoding val FStar.UInt64.logand>

(declare-fun FStar.UInt64.logand (Term Term) Term)
(declare-fun Tm_refine_4a73301fbc41c8e432f23b6aef69a5eb (Term Term) Term)
(declare-fun Tm_arrow_cbca1d1a87f201e6ff2f61643983b2f3 () Term)
(declare-fun FStar.UInt64.logand@tok () Term)


; </end encoding val FStar.UInt64.logand>


; <Start encoding val FStar.UInt64.logxor>

(declare-fun FStar.UInt64.logxor (Term Term) Term)
(declare-fun Tm_refine_b87f471e80e3c2bc077d38b7026cfcf6 (Term Term) Term)
(declare-fun Tm_arrow_7a0892a26110d0c3bb8d5540c3f9134f () Term)
(declare-fun FStar.UInt64.logxor@tok () Term)


; </end encoding val FStar.UInt64.logxor>


; <Start encoding val FStar.UInt64.logor>

(declare-fun FStar.UInt64.logor (Term Term) Term)
(declare-fun Tm_refine_6913af387cf2f30da0961ac60666f00f (Term Term) Term)
(declare-fun Tm_arrow_88959be20cb195d8ed8c043810621aa5 () Term)
(declare-fun FStar.UInt64.logor@tok () Term)


; </end encoding val FStar.UInt64.logor>


; <Start encoding val FStar.UInt64.lognot>

(declare-fun FStar.UInt64.lognot (Term) Term)
(declare-fun Tm_refine_d294ad5c8783c9adf54e87f8b3d910d1 (Term) Term)
(declare-fun Tm_arrow_5830582bc087a4c4cac6e2d02503540d () Term)
(declare-fun FStar.UInt64.lognot@tok () Term)


; </end encoding val FStar.UInt64.lognot>


; <Start encoding val FStar.UInt64.shift_right>

(declare-fun FStar.UInt64.shift_right (Term Term) Term)
(declare-fun Tm_refine_0556f625b89f1ac99fd21e82e26fe9e0 (Term Term) Term)
(declare-fun Tm_arrow_54172cd4c03b90333401dcf08f131f18 () Term)
(declare-fun FStar.UInt64.shift_right@tok () Term)


; </end encoding val FStar.UInt64.shift_right>


; <Start encoding val FStar.UInt64.shift_left>

(declare-fun FStar.UInt64.shift_left (Term Term) Term)
(declare-fun Tm_refine_ebf0af240d826e12ec6c1570ad81631c (Term Term) Term)
(declare-fun Tm_arrow_f0e726dc2efef2bba1cad7b7437673ab () Term)
(declare-fun FStar.UInt64.shift_left@tok () Term)


; </end encoding val FStar.UInt64.shift_left>


; <Start encoding let eq>

(declare-fun FStar.UInt64.eq (Term Term) Term)
(declare-fun Tm_arrow_598288f3403164a95ff09472c7ec0bb4 () Term)
(declare-fun FStar.UInt64.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.UInt64.gt (Term Term) Term)

(declare-fun FStar.UInt64.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.UInt64.gte (Term Term) Term)

(declare-fun FStar.UInt64.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.UInt64.lt (Term Term) Term)

(declare-fun FStar.UInt64.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.UInt64.lte (Term Term) Term)

(declare-fun FStar.UInt64.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let minus>

(declare-fun FStar.UInt64.minus (Term) Term)
(declare-fun Tm_arrow_1b7783661e16e9c2a9894c974bc97032 () Term)
(declare-fun FStar.UInt64.minus@tok () Term)

; </end encoding let minus>


; <Start encoding let n_minus_one>

(declare-fun FStar.UInt64.n_minus_one (Dummy_sort) Term)

; </end encoding let n_minus_one>


; <Skipped #set-options "--z3rlimit 80 --initial_fuel 1 --max_fuel 1"/>


; <Start encoding let eq_mask>

(declare-fun FStar.UInt64.eq_mask (Term Term) Term)
(declare-fun Tm_refine_30c561286d2c8600e271922aaab003cf (Term Term) Term)
(declare-fun Tm_arrow_dc89781bb433a3a499ce3ed25df276ee () Term)
(declare-fun FStar.UInt64.eq_mask@tok () Term)


; </end encoding let eq_mask>


; <Start encoding val FStar.UInt64.lemma_sub_msbs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt64.lemma_sub_msbs (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt64.lemma_sub_msbs@tok () Term)

; </end encoding val FStar.UInt64.lemma_sub_msbs>


; <Start encoding let gte_mask>

(declare-fun FStar.UInt64.gte_mask (Term Term) Term)
(declare-fun Tm_refine_1b1f0e3b5d9ef76ddc765c8d9e623234 (Term Term) Term)
(declare-fun Tm_arrow_7b13171caed18c0d7cf0b1d9315655c1 () Term)
(declare-fun FStar.UInt64.gte_mask@tok () Term)


; </end encoding let gte_mask>


; <Skipped #reset-options/>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.UInt64.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Plus_Question_Hat>

(declare-fun FStar.UInt64.op_Plus_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Plus_Question_Hat@tok () Term)


; </end encoding let op_Plus_Question_Hat>


; <Start encoding let op_Plus_Percent_Hat>

(declare-fun FStar.UInt64.op_Plus_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Plus_Percent_Hat@tok () Term)


; </end encoding let op_Plus_Percent_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.UInt64.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Subtraction_Question_Hat>

(declare-fun FStar.UInt64.op_Subtraction_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Subtraction_Question_Hat@tok () Term)


; </end encoding let op_Subtraction_Question_Hat>


; <Start encoding let op_Subtraction_Percent_Hat>

(declare-fun FStar.UInt64.op_Subtraction_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Subtraction_Percent_Hat@tok () Term)


; </end encoding let op_Subtraction_Percent_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.UInt64.op_Star_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Star_Question_Hat>

(declare-fun FStar.UInt64.op_Star_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Star_Question_Hat@tok () Term)


; </end encoding let op_Star_Question_Hat>


; <Start encoding let op_Star_Percent_Hat>

(declare-fun FStar.UInt64.op_Star_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Star_Percent_Hat@tok () Term)


; </end encoding let op_Star_Percent_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.UInt64.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.UInt64.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.UInt64.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.UInt64.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.UInt64.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.UInt64.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.UInt64.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.UInt64.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.UInt64.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt64.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.UInt64.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt64.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.UInt64.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.UInt64.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.UInt64.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt64.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.UInt64.op_Less_Hat (Term Term) Term)

(declare-fun FStar.UInt64.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.UInt64.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt64.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding val FStar.UInt64.to_string>

(declare-fun FStar.UInt64.to_string (Term) Term)
(declare-fun Tm_arrow_9181e066d5f5e8abb661df26378ed002 () Term)
(declare-fun FStar.UInt64.to_string@tok () Term)

; </end encoding val FStar.UInt64.to_string>


; <Start encoding val FStar.UInt64.to_string_hex>

(declare-fun FStar.UInt64.to_string_hex (Term) Term)

(declare-fun FStar.UInt64.to_string_hex@tok () Term)

; </end encoding val FStar.UInt64.to_string_hex>


; <Start encoding val FStar.UInt64.to_string_hex_pad>

(declare-fun FStar.UInt64.to_string_hex_pad (Term) Term)

(declare-fun FStar.UInt64.to_string_hex_pad@tok () Term)

; </end encoding val FStar.UInt64.to_string_hex_pad>


; <Start encoding val FStar.UInt64.of_string>

(declare-fun FStar.UInt64.of_string (Term) Term)
(declare-fun Tm_arrow_d8ed8461d1bddbfa79f5d5b77e608759 () Term)
(declare-fun FStar.UInt64.of_string@tok () Term)

; </end encoding val FStar.UInt64.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __uint_to_t>

(declare-fun FStar.UInt64.__uint_to_t (Term) Term)
(declare-fun Tm_arrow_583103ad9bf405c63f576183363ae2d9 () Term)
(declare-fun FStar.UInt64.__uint_to_t@tok () Term)

; </end encoding let __uint_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.UInt64


; Externals for interface FStar.UInt128


; <Start encoding let n>

(declare-fun FStar.UInt128.n (Dummy_sort) Term)

; </end encoding let n>


; <Start encoding val FStar.UInt128.t>

(declare-fun FStar.UInt128.t (Dummy_sort) Term)



; </end encoding val FStar.UInt128.t>


; <Start encoding val FStar.UInt128.v>

(declare-fun FStar.UInt128.v (Term) Term)
(declare-fun Tm_arrow_1e0f5f336a391e0e3f222969a4e20082 () Term)
(declare-fun FStar.UInt128.v@tok () Term)

; </end encoding val FStar.UInt128.v>


; <Start encoding val FStar.UInt128.uint_to_t>

(declare-fun FStar.UInt128.uint_to_t (Term) Term)
(declare-fun Tm_refine_5e8afe5488805949b2c6333b5c9e0e16 (Term) Term)
(declare-fun Tm_arrow_6add220f3aefee51a2a01f25e88b3a4d () Term)
(declare-fun FStar.UInt128.uint_to_t@tok () Term)


; </end encoding val FStar.UInt128.uint_to_t>


; <Start encoding val FStar.UInt128.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt128.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt128.v_inj@tok () Term)

; </end encoding val FStar.UInt128.v_inj>


; <Start encoding val FStar.UInt128.add>

(declare-fun FStar.UInt128.add (Term Term) Term)
(declare-fun Tm_refine_200045f8615f23a9b7995d72ac63d949 (Term Term) Term)
(declare-fun Tm_arrow_fb9425641edccbf43d8d0ff9038e9a40 () Term)
(declare-fun FStar.UInt128.add@tok () Term)


; </end encoding val FStar.UInt128.add>


; <Start encoding val FStar.UInt128.add_underspec>

(declare-fun FStar.UInt128.add_underspec (Term Term) Term)
(declare-fun Tm_refine_f0a188da54db4dcbcbfe1dd04a17a348 (Term Term) Term)
(declare-fun Tm_arrow_a6d7d16b168014a515741d53de84e0e9 () Term)
(declare-fun FStar.UInt128.add_underspec@tok () Term)


; </end encoding val FStar.UInt128.add_underspec>


; <Start encoding val FStar.UInt128.add_mod>

(declare-fun FStar.UInt128.add_mod (Term Term) Term)
(declare-fun Tm_refine_0b9eeff4a539d64421bc9cdf6ccef56c (Term Term) Term)
(declare-fun Tm_arrow_7a8c80680009cc49cfc9cd9ec75a4263 () Term)
(declare-fun FStar.UInt128.add_mod@tok () Term)


; </end encoding val FStar.UInt128.add_mod>


; <Start encoding val FStar.UInt128.sub>

(declare-fun FStar.UInt128.sub (Term Term) Term)
(declare-fun Tm_refine_f570d27ada9e8b417d745c2ba97c9454 (Term Term) Term)
(declare-fun Tm_arrow_66edeed80e2b43fa22b95ab3137c9c4c () Term)
(declare-fun FStar.UInt128.sub@tok () Term)


; </end encoding val FStar.UInt128.sub>


; <Start encoding val FStar.UInt128.sub_underspec>

(declare-fun FStar.UInt128.sub_underspec (Term Term) Term)
(declare-fun Tm_refine_783bc70be359dac929d8f93ad2fd48cf (Term Term) Term)
(declare-fun Tm_arrow_1649416594e0f923a0b8de592081403d () Term)
(declare-fun FStar.UInt128.sub_underspec@tok () Term)


; </end encoding val FStar.UInt128.sub_underspec>


; <Start encoding val FStar.UInt128.sub_mod>

(declare-fun FStar.UInt128.sub_mod (Term Term) Term)
(declare-fun Tm_refine_95b2f31bb163e95302627d5143c54d2a (Term Term) Term)
(declare-fun Tm_arrow_5f5301d7f0dab1d6008a26736df4cf49 () Term)
(declare-fun FStar.UInt128.sub_mod@tok () Term)


; </end encoding val FStar.UInt128.sub_mod>


; <Start encoding val FStar.UInt128.logand>

(declare-fun FStar.UInt128.logand (Term Term) Term)
(declare-fun Tm_refine_6377d26335dc60c35078980c34caecb6 (Term Term) Term)
(declare-fun Tm_arrow_77ff2c671bb0c2c1fcc14fbf10eeb65b () Term)
(declare-fun FStar.UInt128.logand@tok () Term)


; </end encoding val FStar.UInt128.logand>


; <Start encoding val FStar.UInt128.logxor>

(declare-fun FStar.UInt128.logxor (Term Term) Term)
(declare-fun Tm_refine_1e2a54f659380dff04459b91e600441e (Term Term) Term)
(declare-fun Tm_arrow_7f84de3be03d468fa2ad17457d9f4a18 () Term)
(declare-fun FStar.UInt128.logxor@tok () Term)


; </end encoding val FStar.UInt128.logxor>


; <Start encoding val FStar.UInt128.logor>

(declare-fun FStar.UInt128.logor (Term Term) Term)
(declare-fun Tm_refine_be6bb0b9b6f3f07f3a5bb3ae3b56ec6a (Term Term) Term)
(declare-fun Tm_arrow_98d3158ebc9bf0ad30b0a1e6ea069757 () Term)
(declare-fun FStar.UInt128.logor@tok () Term)


; </end encoding val FStar.UInt128.logor>


; <Start encoding val FStar.UInt128.lognot>

(declare-fun FStar.UInt128.lognot (Term) Term)
(declare-fun Tm_refine_1512b534c5a3f7ce35a7cbe610648d54 (Term) Term)
(declare-fun Tm_arrow_a392c4cff94318eebb1d118180d500d5 () Term)
(declare-fun FStar.UInt128.lognot@tok () Term)


; </end encoding val FStar.UInt128.lognot>


; <Start encoding let __uint_to_t>

(declare-fun FStar.UInt128.__uint_to_t (Term) Term)
(declare-fun Tm_arrow_631f4d97ec7ab749f44ac6b2cdfdd773 () Term)
(declare-fun FStar.UInt128.__uint_to_t@tok () Term)

; </end encoding let __uint_to_t>


; <Start encoding val FStar.UInt128.shift_left>

(declare-fun FStar.UInt128.shift_left (Term Term) Term)
(declare-fun Tm_refine_a1ecca9ac49058a08f58aac038646add (Term Term) Term)
(declare-fun Tm_arrow_3222a887e37243a547266892f65df571 () Term)
(declare-fun FStar.UInt128.shift_left@tok () Term)


; </end encoding val FStar.UInt128.shift_left>


; <Start encoding val FStar.UInt128.shift_right>

(declare-fun FStar.UInt128.shift_right (Term Term) Term)
(declare-fun Tm_refine_ae880c61bd89ebe8bd4cc06ccf657330 (Term Term) Term)
(declare-fun Tm_arrow_1d8436c2f45603ee4de2e80933dc075e () Term)
(declare-fun FStar.UInt128.shift_right@tok () Term)


; </end encoding val FStar.UInt128.shift_right>


; <Start encoding val FStar.UInt128.eq>

(declare-fun FStar.UInt128.eq (Term Term) Term)
(declare-fun Tm_refine_17bdce673f0f99167643711ae2c8398d (Term Term) Term)
(declare-fun Tm_arrow_6a8308c5b55a94e42f409204b68a39fe () Term)
(declare-fun FStar.UInt128.eq@tok () Term)


; </end encoding val FStar.UInt128.eq>


; <Start encoding val FStar.UInt128.gt>

(declare-fun FStar.UInt128.gt (Term Term) Term)
(declare-fun Tm_refine_ad71613c7c18e4200ebe056ffd50c6bd (Term Term) Term)
(declare-fun Tm_arrow_879ba229f4716600b8dd7fd9a02a56b0 () Term)
(declare-fun FStar.UInt128.gt@tok () Term)


; </end encoding val FStar.UInt128.gt>


; <Start encoding val FStar.UInt128.lt>

(declare-fun FStar.UInt128.lt (Term Term) Term)
(declare-fun Tm_refine_d92cd57a31527a4277019659be7180b3 (Term Term) Term)
(declare-fun Tm_arrow_342ba56e15643014ec03fa8309d60fd3 () Term)
(declare-fun FStar.UInt128.lt@tok () Term)


; </end encoding val FStar.UInt128.lt>


; <Start encoding val FStar.UInt128.gte>

(declare-fun FStar.UInt128.gte (Term Term) Term)
(declare-fun Tm_refine_af3877cdc4e82890dc596c9b9a18e702 (Term Term) Term)
(declare-fun Tm_arrow_7722b191f0154868206c9aed80fbb3bc () Term)
(declare-fun FStar.UInt128.gte@tok () Term)


; </end encoding val FStar.UInt128.gte>


; <Start encoding val FStar.UInt128.lte>

(declare-fun FStar.UInt128.lte (Term Term) Term)
(declare-fun Tm_refine_054034522c859ee7a09294edf08a7add (Term Term) Term)
(declare-fun Tm_arrow_cfe624425159e4a3707dc9302bca8b3d () Term)
(declare-fun FStar.UInt128.lte@tok () Term)


; </end encoding val FStar.UInt128.lte>


; <Start encoding val FStar.UInt128.eq_mask>

(declare-fun FStar.UInt128.eq_mask (Term Term) Term)
(declare-fun Tm_refine_68ab6aeda386ed241196c1cf02a3355f (Term Term) Term)
(declare-fun Tm_arrow_8744aced183e131fdcd8a3d0b5b481db () Term)
(declare-fun FStar.UInt128.eq_mask@tok () Term)


; </end encoding val FStar.UInt128.eq_mask>


; <Start encoding val FStar.UInt128.gte_mask>

(declare-fun FStar.UInt128.gte_mask (Term Term) Term)
(declare-fun Tm_refine_c14dd0a1e5e977af38870e46b185d9f2 (Term Term) Term)
(declare-fun Tm_arrow_e86638e904e458749403b2b51347361f () Term)
(declare-fun FStar.UInt128.gte_mask@tok () Term)


; </end encoding val FStar.UInt128.gte_mask>


; <Start encoding val FStar.UInt128.uint64_to_uint128>

(declare-fun FStar.UInt128.uint64_to_uint128 (Term) Term)
(declare-fun Tm_refine_89263c8dd7df5c497acdada0682b1aab (Term) Term)
(declare-fun Tm_arrow_210b5c612468a114c443675f11f947ae () Term)
(declare-fun FStar.UInt128.uint64_to_uint128@tok () Term)


; </end encoding val FStar.UInt128.uint64_to_uint128>


; <Start encoding val FStar.UInt128.uint128_to_uint64>

(declare-fun FStar.UInt128.uint128_to_uint64 (Term) Term)
(declare-fun Tm_refine_720e19ea5d148e5c481de5679bfae876 (Term) Term)
(declare-fun Tm_arrow_254354cfa7eec0be5a706bf04320cef4 () Term)
(declare-fun FStar.UInt128.uint128_to_uint64@tok () Term)


; </end encoding val FStar.UInt128.uint128_to_uint64>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.UInt128.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Plus_Question_Hat>

(declare-fun FStar.UInt128.op_Plus_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Plus_Question_Hat@tok () Term)


; </end encoding let op_Plus_Question_Hat>


; <Start encoding let op_Plus_Percent_Hat>

(declare-fun FStar.UInt128.op_Plus_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Plus_Percent_Hat@tok () Term)


; </end encoding let op_Plus_Percent_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.UInt128.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Subtraction_Question_Hat>

(declare-fun FStar.UInt128.op_Subtraction_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Subtraction_Question_Hat@tok () Term)


; </end encoding let op_Subtraction_Question_Hat>


; <Start encoding let op_Subtraction_Percent_Hat>

(declare-fun FStar.UInt128.op_Subtraction_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Subtraction_Percent_Hat@tok () Term)


; </end encoding let op_Subtraction_Percent_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.UInt128.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.UInt128.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.UInt128.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.UInt128.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.UInt128.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.UInt128.op_Equals_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Equals_Hat@tok () Term)


; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.UInt128.op_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.UInt128.op_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Less_Hat@tok () Term)


; </end encoding let op_Less_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.UInt128.op_Greater_Equals_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Greater_Equals_Hat@tok () Term)


; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.UInt128.op_Less_Equals_Hat (Term Term) Term)


(declare-fun FStar.UInt128.op_Less_Equals_Hat@tok () Term)


; </end encoding let op_Less_Equals_Hat>


; <Start encoding val FStar.UInt128.mul32>

(declare-fun FStar.UInt128.mul32 (Term Term) Term)
(declare-fun Tm_refine_6cd4abb57f0a59d82dc8ad7d5d61011b (Term Term) Term)
(declare-fun Tm_arrow_2add77eb371e453a7880a380e529e57c () Term)
(declare-fun FStar.UInt128.mul32@tok () Term)


; </end encoding val FStar.UInt128.mul32>


; <Start encoding val FStar.UInt128.mul_wide>

(declare-fun FStar.UInt128.mul_wide (Term Term) Term)
(declare-fun Tm_refine_3f8bbe5c36b8972a6ce0499e59ec5fe3 (Term Term) Term)
(declare-fun Tm_arrow_924c6b4396ceee875570773c2310f504 () Term)
(declare-fun FStar.UInt128.mul_wide@tok () Term)


; </end encoding val FStar.UInt128.mul_wide>


; End Externals for interface FStar.UInt128


; Externals for interface FStar.UInt16


; <Start encoding let n>

(declare-fun FStar.UInt16.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.UInt16.t>

(declare-fun FStar.UInt16.t (Dummy_sort) Term)

; </end encoding val FStar.UInt16.t>


; <Start encoding val FStar.UInt16.v>

(declare-fun FStar.UInt16.v (Term) Term)
(declare-fun Tm_arrow_831b8138993a407ded8960bcff127b07 () Term)
(declare-fun FStar.UInt16.v@tok () Term)

; </end encoding val FStar.UInt16.v>


; <Start encoding val FStar.UInt16.uint_to_t>

(declare-fun FStar.UInt16.uint_to_t (Term) Term)
(declare-fun Tm_refine_f2a41cd0b7a1b87e64e4bdabfc823091 (Term) Term)
(declare-fun Tm_arrow_f4c24117357cf86f1b23d9cc39310530 () Term)
(declare-fun FStar.UInt16.uint_to_t@tok () Term)


; </end encoding val FStar.UInt16.uint_to_t>


; <Start encoding val FStar.UInt16.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt16.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt16.uv_inv@tok () Term)

; </end encoding val FStar.UInt16.uv_inv>


; <Start encoding val FStar.UInt16.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt16.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt16.vu_inv@tok () Term)

; </end encoding val FStar.UInt16.vu_inv>


; <Start encoding val FStar.UInt16.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt16.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt16.v_inj@tok () Term)

; </end encoding val FStar.UInt16.v_inj>


; <Start encoding val FStar.UInt16.zero>

(declare-fun FStar.UInt16.zero (Dummy_sort) Term)
(declare-fun Tm_refine_954f2f8414e85457d28fe853c92eda2f () Term)


; </end encoding val FStar.UInt16.zero>


; <Start encoding val FStar.UInt16.one>

(declare-fun FStar.UInt16.one (Dummy_sort) Term)
(declare-fun Tm_refine_2808678106914fa614675fc00e2d12d2 () Term)


; </end encoding val FStar.UInt16.one>


; <Start encoding val FStar.UInt16.add>

(declare-fun FStar.UInt16.add (Term Term) Term)
(declare-fun Tm_refine_6fc1cfeb1ee6b248d1fef572cc963c99 (Term Term) Term)
(declare-fun Tm_arrow_f5504d213bba7b5885cb0987c01f2153 () Term)
(declare-fun FStar.UInt16.add@tok () Term)


; </end encoding val FStar.UInt16.add>


; <Start encoding val FStar.UInt16.add_underspec>

(declare-fun FStar.UInt16.add_underspec (Term Term) Term)
(declare-fun Tm_refine_34c091163f56732e02aa4746939ed3b3 (Term Term) Term)
(declare-fun Tm_arrow_fca12874fe31591238919898de90521f () Term)
(declare-fun FStar.UInt16.add_underspec@tok () Term)


; </end encoding val FStar.UInt16.add_underspec>


; <Start encoding val FStar.UInt16.add_mod>

(declare-fun FStar.UInt16.add_mod (Term Term) Term)
(declare-fun Tm_refine_a528e7088dc7771b5f67a6b9c65b45af (Term Term) Term)
(declare-fun Tm_arrow_e98be28bf728160b6eb326bbf51fc61a () Term)
(declare-fun FStar.UInt16.add_mod@tok () Term)


; </end encoding val FStar.UInt16.add_mod>


; <Start encoding val FStar.UInt16.sub>

(declare-fun FStar.UInt16.sub (Term Term) Term)
(declare-fun Tm_refine_b859c3bfdcf246597841540fb1ed998d (Term Term) Term)
(declare-fun Tm_arrow_413f6d7ea0554099e9c499578964c6cd () Term)
(declare-fun FStar.UInt16.sub@tok () Term)


; </end encoding val FStar.UInt16.sub>


; <Start encoding val FStar.UInt16.sub_underspec>

(declare-fun FStar.UInt16.sub_underspec (Term Term) Term)
(declare-fun Tm_refine_8fdd03b83187f4fea291f025e835855f (Term Term) Term)
(declare-fun Tm_arrow_d2d64a11e05eca67e5ebd6fbca18667e () Term)
(declare-fun FStar.UInt16.sub_underspec@tok () Term)


; </end encoding val FStar.UInt16.sub_underspec>


; <Start encoding val FStar.UInt16.sub_mod>

(declare-fun FStar.UInt16.sub_mod (Term Term) Term)
(declare-fun Tm_refine_129b0169b4e8bab9a8dfb4cbd0d62214 (Term Term) Term)
(declare-fun Tm_arrow_0cfa58c6ce7e51c3d1880814626c261d () Term)
(declare-fun FStar.UInt16.sub_mod@tok () Term)


; </end encoding val FStar.UInt16.sub_mod>


; <Start encoding val FStar.UInt16.mul>

(declare-fun FStar.UInt16.mul (Term Term) Term)
(declare-fun Tm_refine_0c3c281ec070e108a64d9e6643fa12b8 (Term Term) Term)
(declare-fun Tm_arrow_818a65cd860d9d90b9ff51d2de174014 () Term)
(declare-fun FStar.UInt16.mul@tok () Term)


; </end encoding val FStar.UInt16.mul>


; <Start encoding val FStar.UInt16.mul_underspec>

(declare-fun FStar.UInt16.mul_underspec (Term Term) Term)
(declare-fun Tm_refine_cb1b76b3df6f40838b504137c35a6e17 (Term Term) Term)
(declare-fun Tm_arrow_dfe74ad18d22be11665be6a37fdb27f6 () Term)
(declare-fun FStar.UInt16.mul_underspec@tok () Term)


; </end encoding val FStar.UInt16.mul_underspec>


; <Start encoding val FStar.UInt16.mul_mod>

(declare-fun FStar.UInt16.mul_mod (Term Term) Term)
(declare-fun Tm_refine_e24ce146e70bc5c453cecdd42c419aa1 (Term Term) Term)
(declare-fun Tm_arrow_fa5800654240cb69e060f3600acc0ab9 () Term)
(declare-fun FStar.UInt16.mul_mod@tok () Term)


; </end encoding val FStar.UInt16.mul_mod>


; <Start encoding val FStar.UInt16.div>

(declare-fun Tm_refine_3e34e2c4f5ba554ca9d5a94a7452f876 () Term)
(declare-fun FStar.UInt16.div (Term Term) Term)

(declare-fun Tm_refine_a2680f37a85ca38ef32ad76329ca6655 (Term Term) Term)
(declare-fun Tm_arrow_1d3ed7d1a36eb1c15be9167cdd26d975 () Term)
(declare-fun FStar.UInt16.div@tok () Term)


; </end encoding val FStar.UInt16.div>


; <Start encoding val FStar.UInt16.rem>


(declare-fun FStar.UInt16.rem (Term Term) Term)

(declare-fun Tm_refine_8d1743b5c6d2f2c9050076549cfeb5f4 (Term Term) Term)
(declare-fun Tm_arrow_a9b2f8e628351ca8191e5a2d74e12318 () Term)
(declare-fun FStar.UInt16.rem@tok () Term)


; </end encoding val FStar.UInt16.rem>


; <Start encoding val FStar.UInt16.logand>

(declare-fun FStar.UInt16.logand (Term Term) Term)
(declare-fun Tm_refine_7cf5fd844874f3049d3067fe68a85256 (Term Term) Term)
(declare-fun Tm_arrow_7aa270d906bd8fb45c247b75568c48db () Term)
(declare-fun FStar.UInt16.logand@tok () Term)


; </end encoding val FStar.UInt16.logand>


; <Start encoding val FStar.UInt16.logxor>

(declare-fun FStar.UInt16.logxor (Term Term) Term)
(declare-fun Tm_refine_e55be37d77d9b240b683ff3354ca439c (Term Term) Term)
(declare-fun Tm_arrow_22be9a4de1ee3eadb350cd60783b66ae () Term)
(declare-fun FStar.UInt16.logxor@tok () Term)


; </end encoding val FStar.UInt16.logxor>


; <Start encoding val FStar.UInt16.logor>

(declare-fun FStar.UInt16.logor (Term Term) Term)
(declare-fun Tm_refine_3881ab512ff2d0d86d43bf57b0c61e75 (Term Term) Term)
(declare-fun Tm_arrow_fa4847a4c38079a6033cc53f6f8391a5 () Term)
(declare-fun FStar.UInt16.logor@tok () Term)


; </end encoding val FStar.UInt16.logor>


; <Start encoding val FStar.UInt16.lognot>

(declare-fun FStar.UInt16.lognot (Term) Term)
(declare-fun Tm_refine_dfa8480cc0780e895037e28b8472b8df (Term) Term)
(declare-fun Tm_arrow_893e33c74d084e533ade4a873a1f755c () Term)
(declare-fun FStar.UInt16.lognot@tok () Term)


; </end encoding val FStar.UInt16.lognot>


; <Start encoding val FStar.UInt16.shift_right>

(declare-fun FStar.UInt16.shift_right (Term Term) Term)
(declare-fun Tm_refine_4ef8dd68ca64f7c4c1a8bac302cb51a6 (Term Term) Term)
(declare-fun Tm_arrow_a7706d3849bacf3a6eca4b133d095a70 () Term)
(declare-fun FStar.UInt16.shift_right@tok () Term)


; </end encoding val FStar.UInt16.shift_right>


; <Start encoding val FStar.UInt16.shift_left>

(declare-fun FStar.UInt16.shift_left (Term Term) Term)
(declare-fun Tm_refine_bb6b262bbc4fcaf78b2af3148bb763c6 (Term Term) Term)
(declare-fun Tm_arrow_5b62fe9416ecdac1c662be0b77ffd710 () Term)
(declare-fun FStar.UInt16.shift_left@tok () Term)


; </end encoding val FStar.UInt16.shift_left>


; <Start encoding let eq>

(declare-fun FStar.UInt16.eq (Term Term) Term)
(declare-fun Tm_arrow_ec095ea6bafa5e9866a85b27cff308e0 () Term)
(declare-fun FStar.UInt16.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.UInt16.gt (Term Term) Term)

(declare-fun FStar.UInt16.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.UInt16.gte (Term Term) Term)

(declare-fun FStar.UInt16.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.UInt16.lt (Term Term) Term)

(declare-fun FStar.UInt16.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.UInt16.lte (Term Term) Term)

(declare-fun FStar.UInt16.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let minus>

(declare-fun FStar.UInt16.minus (Term) Term)
(declare-fun Tm_arrow_3f395de82a49d1518ea23b50c5f2f44e () Term)
(declare-fun FStar.UInt16.minus@tok () Term)

; </end encoding let minus>


; <Start encoding let n_minus_one>

(declare-fun FStar.UInt16.n_minus_one (Dummy_sort) Term)

; </end encoding let n_minus_one>


; <Skipped #set-options "--z3rlimit 80 --initial_fuel 1 --max_fuel 1"/>


; <Start encoding let eq_mask>

(declare-fun FStar.UInt16.eq_mask (Term Term) Term)
(declare-fun Tm_refine_4337d527bd8e18a624079c37cd404c59 (Term Term) Term)
(declare-fun Tm_arrow_3b501882da55605a5a3d3f43f32c45b9 () Term)
(declare-fun FStar.UInt16.eq_mask@tok () Term)


; </end encoding let eq_mask>


; <Start encoding val FStar.UInt16.lemma_sub_msbs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt16.lemma_sub_msbs (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt16.lemma_sub_msbs@tok () Term)

; </end encoding val FStar.UInt16.lemma_sub_msbs>


; <Start encoding let gte_mask>

(declare-fun FStar.UInt16.gte_mask (Term Term) Term)
(declare-fun Tm_refine_d8e117de3278723cbc3559698b2db64e (Term Term) Term)
(declare-fun Tm_arrow_01b6b3276c1f9c1f15edd31113793e3b () Term)
(declare-fun FStar.UInt16.gte_mask@tok () Term)


; </end encoding let gte_mask>


; <Skipped #reset-options/>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.UInt16.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Plus_Question_Hat>

(declare-fun FStar.UInt16.op_Plus_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Plus_Question_Hat@tok () Term)


; </end encoding let op_Plus_Question_Hat>


; <Start encoding let op_Plus_Percent_Hat>

(declare-fun FStar.UInt16.op_Plus_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Plus_Percent_Hat@tok () Term)


; </end encoding let op_Plus_Percent_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.UInt16.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Subtraction_Question_Hat>

(declare-fun FStar.UInt16.op_Subtraction_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Subtraction_Question_Hat@tok () Term)


; </end encoding let op_Subtraction_Question_Hat>


; <Start encoding let op_Subtraction_Percent_Hat>

(declare-fun FStar.UInt16.op_Subtraction_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Subtraction_Percent_Hat@tok () Term)


; </end encoding let op_Subtraction_Percent_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.UInt16.op_Star_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Star_Question_Hat>

(declare-fun FStar.UInt16.op_Star_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Star_Question_Hat@tok () Term)


; </end encoding let op_Star_Question_Hat>


; <Start encoding let op_Star_Percent_Hat>

(declare-fun FStar.UInt16.op_Star_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Star_Percent_Hat@tok () Term)


; </end encoding let op_Star_Percent_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.UInt16.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.UInt16.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.UInt16.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.UInt16.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.UInt16.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.UInt16.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.UInt16.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.UInt16.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.UInt16.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt16.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.UInt16.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt16.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.UInt16.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.UInt16.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.UInt16.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt16.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.UInt16.op_Less_Hat (Term Term) Term)

(declare-fun FStar.UInt16.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.UInt16.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt16.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding val FStar.UInt16.to_string>

(declare-fun FStar.UInt16.to_string (Term) Term)
(declare-fun Tm_arrow_1567a0c3fa9c6a7b76db1de05c62a83e () Term)
(declare-fun FStar.UInt16.to_string@tok () Term)

; </end encoding val FStar.UInt16.to_string>


; <Start encoding val FStar.UInt16.to_string_hex>

(declare-fun FStar.UInt16.to_string_hex (Term) Term)

(declare-fun FStar.UInt16.to_string_hex@tok () Term)

; </end encoding val FStar.UInt16.to_string_hex>


; <Start encoding val FStar.UInt16.to_string_hex_pad>

(declare-fun FStar.UInt16.to_string_hex_pad (Term) Term)

(declare-fun FStar.UInt16.to_string_hex_pad@tok () Term)

; </end encoding val FStar.UInt16.to_string_hex_pad>


; <Start encoding val FStar.UInt16.of_string>

(declare-fun FStar.UInt16.of_string (Term) Term)
(declare-fun Tm_arrow_68a59188b2c9544b263522e5c6da7655 () Term)
(declare-fun FStar.UInt16.of_string@tok () Term)

; </end encoding val FStar.UInt16.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __uint_to_t>

(declare-fun FStar.UInt16.__uint_to_t (Term) Term)
(declare-fun Tm_arrow_08c7c5e1e582fde525f5d9f6401fce2b () Term)
(declare-fun FStar.UInt16.__uint_to_t@tok () Term)

; </end encoding let __uint_to_t>


; <Skipped #reset-options/>


; End Externals for interface FStar.UInt16


; Externals for interface FStar.UInt8


; <Start encoding let n>

(declare-fun FStar.UInt8.n (Dummy_sort) Term)

; </end encoding let n>


; <Skipped #set-options "--max_fuel 0 --max_ifuel 0"/>


; <Start encoding val FStar.UInt8.t>

(declare-fun FStar.UInt8.t (Dummy_sort) Term)

; </end encoding val FStar.UInt8.t>


; <Start encoding val FStar.UInt8.v>

(declare-fun FStar.UInt8.v (Term) Term)
(declare-fun Tm_arrow_3777b5a630a36e62279f05e8abae7a72 () Term)
(declare-fun FStar.UInt8.v@tok () Term)

; </end encoding val FStar.UInt8.v>


; <Start encoding val FStar.UInt8.uint_to_t>

(declare-fun FStar.UInt8.uint_to_t (Term) Term)
(declare-fun Tm_refine_25c72d704900d626b30894312c325451 (Term) Term)
(declare-fun Tm_arrow_99681d89836a4c650badaf3b898e0fd2 () Term)
(declare-fun FStar.UInt8.uint_to_t@tok () Term)


; </end encoding val FStar.UInt8.uint_to_t>


; <Start encoding val FStar.UInt8.uv_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt8.uv_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt8.uv_inv@tok () Term)

; </end encoding val FStar.UInt8.uv_inv>


; <Start encoding val FStar.UInt8.vu_inv>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt8.vu_inv (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt8.vu_inv@tok () Term)

; </end encoding val FStar.UInt8.vu_inv>


; <Start encoding val FStar.UInt8.v_inj>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt8.v_inj (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt8.v_inj@tok () Term)

; </end encoding val FStar.UInt8.v_inj>


; <Start encoding val FStar.UInt8.zero>

(declare-fun FStar.UInt8.zero (Dummy_sort) Term)
(declare-fun Tm_refine_70356e30ad97b892992d5e77127e234b () Term)


; </end encoding val FStar.UInt8.zero>


; <Start encoding val FStar.UInt8.one>

(declare-fun FStar.UInt8.one (Dummy_sort) Term)
(declare-fun Tm_refine_9a778967dadeb1d9cdc158a156c04472 () Term)


; </end encoding val FStar.UInt8.one>


; <Start encoding val FStar.UInt8.add>

(declare-fun FStar.UInt8.add (Term Term) Term)
(declare-fun Tm_refine_e7a8c22ddf5fa06051ce01d4308e93c9 (Term Term) Term)
(declare-fun Tm_arrow_93f019685d372e95eac5ee2026269943 () Term)
(declare-fun FStar.UInt8.add@tok () Term)


; </end encoding val FStar.UInt8.add>


; <Start encoding val FStar.UInt8.add_underspec>

(declare-fun FStar.UInt8.add_underspec (Term Term) Term)
(declare-fun Tm_refine_e2fc73b749d5084f2161a1b2256e684a (Term Term) Term)
(declare-fun Tm_arrow_c4436082bc35b52549c292a4092c74f2 () Term)
(declare-fun FStar.UInt8.add_underspec@tok () Term)


; </end encoding val FStar.UInt8.add_underspec>


; <Start encoding val FStar.UInt8.add_mod>

(declare-fun FStar.UInt8.add_mod (Term Term) Term)
(declare-fun Tm_refine_c5c06f774ce917320ace84c78a678f3a (Term Term) Term)
(declare-fun Tm_arrow_52ecb5e08ede937a376b797f76452f11 () Term)
(declare-fun FStar.UInt8.add_mod@tok () Term)


; </end encoding val FStar.UInt8.add_mod>


; <Start encoding val FStar.UInt8.sub>

(declare-fun FStar.UInt8.sub (Term Term) Term)
(declare-fun Tm_refine_b9fa04b492b01fd435452ff429d13919 (Term Term) Term)
(declare-fun Tm_arrow_ec1e3750fe88626fd39551f91ea86fc8 () Term)
(declare-fun FStar.UInt8.sub@tok () Term)


; </end encoding val FStar.UInt8.sub>


; <Start encoding val FStar.UInt8.sub_underspec>

(declare-fun FStar.UInt8.sub_underspec (Term Term) Term)
(declare-fun Tm_refine_2f0c7364767f32abaf6bd4293573996b (Term Term) Term)
(declare-fun Tm_arrow_9b74ded99c9ac1ce430c56353e375533 () Term)
(declare-fun FStar.UInt8.sub_underspec@tok () Term)


; </end encoding val FStar.UInt8.sub_underspec>


; <Start encoding val FStar.UInt8.sub_mod>

(declare-fun FStar.UInt8.sub_mod (Term Term) Term)
(declare-fun Tm_refine_31110a8e88288515f5ff8c631a6fc5fd (Term Term) Term)
(declare-fun Tm_arrow_f944420b8232be8a08ac1eac1a8cfc60 () Term)
(declare-fun FStar.UInt8.sub_mod@tok () Term)


; </end encoding val FStar.UInt8.sub_mod>


; <Start encoding val FStar.UInt8.mul>

(declare-fun FStar.UInt8.mul (Term Term) Term)
(declare-fun Tm_refine_d72a979d91a11894cbd64b344a4b0237 (Term Term) Term)
(declare-fun Tm_arrow_f916cf085880111e18cd4d6a364c6342 () Term)
(declare-fun FStar.UInt8.mul@tok () Term)


; </end encoding val FStar.UInt8.mul>


; <Start encoding val FStar.UInt8.mul_underspec>

(declare-fun FStar.UInt8.mul_underspec (Term Term) Term)
(declare-fun Tm_refine_12692332647397b458ce816ee08aa096 (Term Term) Term)
(declare-fun Tm_arrow_44a424ccb654a64902b3f4c4584dfee1 () Term)
(declare-fun FStar.UInt8.mul_underspec@tok () Term)


; </end encoding val FStar.UInt8.mul_underspec>


; <Start encoding val FStar.UInt8.mul_mod>

(declare-fun FStar.UInt8.mul_mod (Term Term) Term)
(declare-fun Tm_refine_4ce5cfa0cf1c69159e9310e6885c3e22 (Term Term) Term)
(declare-fun Tm_arrow_082e5a7318c49f7336161f30b53f326f () Term)
(declare-fun FStar.UInt8.mul_mod@tok () Term)


; </end encoding val FStar.UInt8.mul_mod>


; <Start encoding val FStar.UInt8.div>

(declare-fun Tm_refine_a8cb57fcf32c2764d2e39fc97ecb3aa0 () Term)
(declare-fun FStar.UInt8.div (Term Term) Term)

(declare-fun Tm_refine_488bac52b9d15f98f9de642f30db345a (Term Term) Term)
(declare-fun Tm_arrow_032d4f95524b20f7a0ffe6be0a29e0dd () Term)
(declare-fun FStar.UInt8.div@tok () Term)


; </end encoding val FStar.UInt8.div>


; <Start encoding val FStar.UInt8.rem>


(declare-fun FStar.UInt8.rem (Term Term) Term)

(declare-fun Tm_refine_41d38db91700fb5bf8d345e71a7ea813 (Term Term) Term)
(declare-fun Tm_arrow_cce9ccb13b0c72c92896f9584ae44f9a () Term)
(declare-fun FStar.UInt8.rem@tok () Term)


; </end encoding val FStar.UInt8.rem>


; <Start encoding val FStar.UInt8.logand>

(declare-fun FStar.UInt8.logand (Term Term) Term)
(declare-fun Tm_refine_71d1a346f76194fb038bba96302ce90d (Term Term) Term)
(declare-fun Tm_arrow_606a7fadbc7c16f0b0151a905dbf43f5 () Term)
(declare-fun FStar.UInt8.logand@tok () Term)


; </end encoding val FStar.UInt8.logand>


; <Start encoding val FStar.UInt8.logxor>

(declare-fun FStar.UInt8.logxor (Term Term) Term)
(declare-fun Tm_refine_97e4a63388ae45ee4261a689ecdcc635 (Term Term) Term)
(declare-fun Tm_arrow_64e5ecb00734a6581a045079ffb5fe59 () Term)
(declare-fun FStar.UInt8.logxor@tok () Term)


; </end encoding val FStar.UInt8.logxor>


; <Start encoding val FStar.UInt8.logor>

(declare-fun FStar.UInt8.logor (Term Term) Term)
(declare-fun Tm_refine_a7fcc8489f92354d1f8a101b7f900b3b (Term Term) Term)
(declare-fun Tm_arrow_32400c8ec986ceb55a1554f2089e0efa () Term)
(declare-fun FStar.UInt8.logor@tok () Term)


; </end encoding val FStar.UInt8.logor>


; <Start encoding val FStar.UInt8.lognot>

(declare-fun FStar.UInt8.lognot (Term) Term)
(declare-fun Tm_refine_455031e9fe191e56270c683d0e98b61b (Term) Term)
(declare-fun Tm_arrow_1a84223456a82ceb3bff40c0b2935125 () Term)
(declare-fun FStar.UInt8.lognot@tok () Term)


; </end encoding val FStar.UInt8.lognot>


; <Start encoding val FStar.UInt8.shift_right>

(declare-fun FStar.UInt8.shift_right (Term Term) Term)
(declare-fun Tm_refine_098e5306776c74ab1df7fd9dd6d3b590 (Term Term) Term)
(declare-fun Tm_arrow_b066c40415d68ecc38942bb71d3e3f6f () Term)
(declare-fun FStar.UInt8.shift_right@tok () Term)


; </end encoding val FStar.UInt8.shift_right>


; <Start encoding val FStar.UInt8.shift_left>

(declare-fun FStar.UInt8.shift_left (Term Term) Term)
(declare-fun Tm_refine_a97317ecf8cf07e3c11fb9b0d3ed777c (Term Term) Term)
(declare-fun Tm_arrow_07d4bb9ab4248e20b62c52c13b75d97e () Term)
(declare-fun FStar.UInt8.shift_left@tok () Term)


; </end encoding val FStar.UInt8.shift_left>


; <Start encoding let eq>

(declare-fun FStar.UInt8.eq (Term Term) Term)
(declare-fun Tm_arrow_044ce6ce0f384eef0fc1f6f3f8f2f074 () Term)
(declare-fun FStar.UInt8.eq@tok () Term)

; </end encoding let eq>


; <Start encoding let gt>

(declare-fun FStar.UInt8.gt (Term Term) Term)

(declare-fun FStar.UInt8.gt@tok () Term)

; </end encoding let gt>


; <Start encoding let gte>

(declare-fun FStar.UInt8.gte (Term Term) Term)

(declare-fun FStar.UInt8.gte@tok () Term)

; </end encoding let gte>


; <Start encoding let lt>

(declare-fun FStar.UInt8.lt (Term Term) Term)

(declare-fun FStar.UInt8.lt@tok () Term)

; </end encoding let lt>


; <Start encoding let lte>

(declare-fun FStar.UInt8.lte (Term Term) Term)

(declare-fun FStar.UInt8.lte@tok () Term)

; </end encoding let lte>


; <Start encoding let minus>

(declare-fun FStar.UInt8.minus (Term) Term)
(declare-fun Tm_arrow_53a47de46a631aa3eac76ad156b433ff () Term)
(declare-fun FStar.UInt8.minus@tok () Term)

; </end encoding let minus>


; <Start encoding let n_minus_one>

(declare-fun FStar.UInt8.n_minus_one (Dummy_sort) Term)

; </end encoding let n_minus_one>


; <Skipped #set-options "--z3rlimit 80 --initial_fuel 1 --max_fuel 1"/>


; <Start encoding let eq_mask>

(declare-fun FStar.UInt8.eq_mask (Term Term) Term)
(declare-fun Tm_refine_4b365856d6f9222ae4baaff2421b1f3d (Term Term) Term)
(declare-fun Tm_arrow_a445c7cdf140b45a21388352df89d169 () Term)
(declare-fun FStar.UInt8.eq_mask@tok () Term)


; </end encoding let eq_mask>


; <Start encoding val FStar.UInt8.lemma_sub_msbs>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.UInt8.lemma_sub_msbs (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.UInt8.lemma_sub_msbs@tok () Term)

; </end encoding val FStar.UInt8.lemma_sub_msbs>


; <Start encoding let gte_mask>

(declare-fun FStar.UInt8.gte_mask (Term Term) Term)
(declare-fun Tm_refine_d0b1e2944ee74da332d1b0864caf4a29 (Term Term) Term)
(declare-fun Tm_arrow_fdec4315b860ac38893cb3277ba98c8c () Term)
(declare-fun FStar.UInt8.gte_mask@tok () Term)


; </end encoding let gte_mask>


; <Skipped #reset-options/>


; <Start encoding let op_Plus_Hat>

(declare-fun FStar.UInt8.op_Plus_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Plus_Hat@tok () Term)


; </end encoding let op_Plus_Hat>


; <Start encoding let op_Plus_Question_Hat>

(declare-fun FStar.UInt8.op_Plus_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Plus_Question_Hat@tok () Term)


; </end encoding let op_Plus_Question_Hat>


; <Start encoding let op_Plus_Percent_Hat>

(declare-fun FStar.UInt8.op_Plus_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Plus_Percent_Hat@tok () Term)


; </end encoding let op_Plus_Percent_Hat>


; <Start encoding let op_Subtraction_Hat>

(declare-fun FStar.UInt8.op_Subtraction_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Subtraction_Hat@tok () Term)


; </end encoding let op_Subtraction_Hat>


; <Start encoding let op_Subtraction_Question_Hat>

(declare-fun FStar.UInt8.op_Subtraction_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Subtraction_Question_Hat@tok () Term)


; </end encoding let op_Subtraction_Question_Hat>


; <Start encoding let op_Subtraction_Percent_Hat>

(declare-fun FStar.UInt8.op_Subtraction_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Subtraction_Percent_Hat@tok () Term)


; </end encoding let op_Subtraction_Percent_Hat>


; <Start encoding let op_Star_Hat>

(declare-fun FStar.UInt8.op_Star_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Star_Hat@tok () Term)


; </end encoding let op_Star_Hat>


; <Start encoding let op_Star_Question_Hat>

(declare-fun FStar.UInt8.op_Star_Question_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Star_Question_Hat@tok () Term)


; </end encoding let op_Star_Question_Hat>


; <Start encoding let op_Star_Percent_Hat>

(declare-fun FStar.UInt8.op_Star_Percent_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Star_Percent_Hat@tok () Term)


; </end encoding let op_Star_Percent_Hat>


; <Start encoding let op_Slash_Hat>


(declare-fun FStar.UInt8.op_Slash_Hat (Term Term) Term)



(declare-fun FStar.UInt8.op_Slash_Hat@tok () Term)



; </end encoding let op_Slash_Hat>


; <Start encoding let op_Percent_Hat>


(declare-fun FStar.UInt8.op_Percent_Hat (Term Term) Term)



(declare-fun FStar.UInt8.op_Percent_Hat@tok () Term)



; </end encoding let op_Percent_Hat>


; <Start encoding let op_Hat_Hat>

(declare-fun FStar.UInt8.op_Hat_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Hat_Hat@tok () Term)


; </end encoding let op_Hat_Hat>


; <Start encoding let op_Amp_Hat>

(declare-fun FStar.UInt8.op_Amp_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Amp_Hat@tok () Term)


; </end encoding let op_Amp_Hat>


; <Start encoding let op_Bar_Hat>

(declare-fun FStar.UInt8.op_Bar_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Bar_Hat@tok () Term)


; </end encoding let op_Bar_Hat>


; <Start encoding let op_Less_Less_Hat>

(declare-fun FStar.UInt8.op_Less_Less_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Less_Less_Hat@tok () Term)


; </end encoding let op_Less_Less_Hat>


; <Start encoding let op_Greater_Greater_Hat>

(declare-fun FStar.UInt8.op_Greater_Greater_Hat (Term Term) Term)


(declare-fun FStar.UInt8.op_Greater_Greater_Hat@tok () Term)


; </end encoding let op_Greater_Greater_Hat>


; <Start encoding let op_Equals_Hat>

(declare-fun FStar.UInt8.op_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt8.op_Equals_Hat@tok () Term)

; </end encoding let op_Equals_Hat>


; <Start encoding let op_Greater_Hat>

(declare-fun FStar.UInt8.op_Greater_Hat (Term Term) Term)

(declare-fun FStar.UInt8.op_Greater_Hat@tok () Term)

; </end encoding let op_Greater_Hat>


; <Start encoding let op_Greater_Equals_Hat>

(declare-fun FStar.UInt8.op_Greater_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt8.op_Greater_Equals_Hat@tok () Term)

; </end encoding let op_Greater_Equals_Hat>


; <Start encoding let op_Less_Hat>

(declare-fun FStar.UInt8.op_Less_Hat (Term Term) Term)

(declare-fun FStar.UInt8.op_Less_Hat@tok () Term)

; </end encoding let op_Less_Hat>


; <Start encoding let op_Less_Equals_Hat>

(declare-fun FStar.UInt8.op_Less_Equals_Hat (Term Term) Term)

(declare-fun FStar.UInt8.op_Less_Equals_Hat@tok () Term)

; </end encoding let op_Less_Equals_Hat>


; <Start encoding val FStar.UInt8.to_string>

(declare-fun FStar.UInt8.to_string (Term) Term)
(declare-fun Tm_arrow_630ce6920914ed05e3724fa72d06132c () Term)
(declare-fun FStar.UInt8.to_string@tok () Term)

; </end encoding val FStar.UInt8.to_string>


; <Start encoding val FStar.UInt8.to_string_hex>

(declare-fun FStar.UInt8.to_string_hex (Term) Term)

(declare-fun FStar.UInt8.to_string_hex@tok () Term)

; </end encoding val FStar.UInt8.to_string_hex>


; <Start encoding val FStar.UInt8.to_string_hex_pad>

(declare-fun FStar.UInt8.to_string_hex_pad (Term) Term)

(declare-fun FStar.UInt8.to_string_hex_pad@tok () Term)

; </end encoding val FStar.UInt8.to_string_hex_pad>


; <Start encoding val FStar.UInt8.of_string>

(declare-fun FStar.UInt8.of_string (Term) Term)
(declare-fun Tm_arrow_2b6f4c2bff8eb5d0563e8b6985a71043 () Term)
(declare-fun FStar.UInt8.of_string@tok () Term)

; </end encoding val FStar.UInt8.of_string>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __uint_to_t>

(declare-fun FStar.UInt8.__uint_to_t (Term) Term)
(declare-fun Tm_arrow_52383a4d974551ee41b2c1746d04b8c5 () Term)
(declare-fun FStar.UInt8.__uint_to_t@tok () Term)

; </end encoding let __uint_to_t>


; <Skipped #reset-options/>


; <Start encoding let byte>

(declare-fun FStar.UInt8.byte (Dummy_sort) Term)

; </end encoding let byte>


; End Externals for interface FStar.UInt8


; Externals for interface Lib.IntTypes


; <Skipped #set-options "--max_fuel 0 --max_ifuel 1 --z3rlimit 20"/>


; <Start encoding val Lib.IntTypes.pow2_2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.pow2_2 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.pow2_2@tok () Term)

; </end encoding val Lib.IntTypes.pow2_2>


; <Start encoding val Lib.IntTypes.pow2_3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.pow2_3 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.pow2_3@tok () Term)

; </end encoding val Lib.IntTypes.pow2_3>


; <Start encoding val Lib.IntTypes.pow2_4>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.pow2_4 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.pow2_4@tok () Term)

; </end encoding val Lib.IntTypes.pow2_4>


; <Start encoding val Lib.IntTypes.pow2_127>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.pow2_127 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.pow2_127@tok () Term)

; </end encoding val Lib.IntTypes.pow2_127>


; <Start encoding type Lib.IntTypes.inttype>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.inttype () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U1 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U1
(declare-fun Lib.IntTypes.U1@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U8 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U8
(declare-fun Lib.IntTypes.U8@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U16 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U16
(declare-fun Lib.IntTypes.U16@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U32 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U32
(declare-fun Lib.IntTypes.U32@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U64 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U64
(declare-fun Lib.IntTypes.U64@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.U128 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.U128
(declare-fun Lib.IntTypes.U128@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.S8 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.S8
(declare-fun Lib.IntTypes.S8@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.S16 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.S16
(declare-fun Lib.IntTypes.S16@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.S32 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.S32
(declare-fun Lib.IntTypes.S32@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.S64 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.S64
(declare-fun Lib.IntTypes.S64@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.S128 () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.S128
(declare-fun Lib.IntTypes.S128@tok () Term)

; <start constructor Lib.IntTypes.inttype>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.inttype ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
101)
(= __@x0
Lib.IntTypes.inttype)))

; </end constructor Lib.IntTypes.inttype>


; <start constructor Lib.IntTypes.U1>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U1 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
107)
(= __@x0
Lib.IntTypes.U1)))

; </end constructor Lib.IntTypes.U1>


; <start constructor Lib.IntTypes.U8>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U8 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
109)
(= __@x0
Lib.IntTypes.U8)))

; </end constructor Lib.IntTypes.U8>


; <start constructor Lib.IntTypes.U16>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U16 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
111)
(= __@x0
Lib.IntTypes.U16)))

; </end constructor Lib.IntTypes.U16>


; <start constructor Lib.IntTypes.U32>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U32 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
113)
(= __@x0
Lib.IntTypes.U32)))

; </end constructor Lib.IntTypes.U32>


; <start constructor Lib.IntTypes.U64>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U64 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
115)
(= __@x0
Lib.IntTypes.U64)))

; </end constructor Lib.IntTypes.U64>


; <start constructor Lib.IntTypes.U128>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.U128 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
117)
(= __@x0
Lib.IntTypes.U128)))

; </end constructor Lib.IntTypes.U128>


; <start constructor Lib.IntTypes.S8>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.S8 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
119)
(= __@x0
Lib.IntTypes.S8)))

; </end constructor Lib.IntTypes.S8>


; <start constructor Lib.IntTypes.S16>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.S16 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
121)
(= __@x0
Lib.IntTypes.S16)))

; </end constructor Lib.IntTypes.S16>


; <start constructor Lib.IntTypes.S32>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.S32 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
123)
(= __@x0
Lib.IntTypes.S32)))

; </end constructor Lib.IntTypes.S32>


; <start constructor Lib.IntTypes.S64>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.S64 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
125)
(= __@x0
Lib.IntTypes.S64)))

; </end constructor Lib.IntTypes.S64>


; <start constructor Lib.IntTypes.S128>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.S128 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
127)
(= __@x0
Lib.IntTypes.S128)))

; </end constructor Lib.IntTypes.S128>


; </end encoding type Lib.IntTypes.inttype>


; <Start encoding assume Lib.IntTypes.inttype__uu___haseq>


; </end encoding assume Lib.IntTypes.inttype__uu___haseq>


; <Start encoding val Lib.IntTypes.uu___is_U1>

(declare-fun Lib.IntTypes.uu___is_U1 (Term) Term)
;;;;;;;;;;;;;;;;projectee: inttype -> Prims.bool
(declare-fun Tm_arrow_7a5cad3cdb73aef16572f096971b1835 () Term)
(declare-fun Lib.IntTypes.uu___is_U1@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U1>


; <Skipped let uu___is_U1/>


; <Start encoding val Lib.IntTypes.uu___is_U8>

(declare-fun Lib.IntTypes.uu___is_U8 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_U8@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U8>


; <Skipped let uu___is_U8/>


; <Start encoding val Lib.IntTypes.uu___is_U16>

(declare-fun Lib.IntTypes.uu___is_U16 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_U16@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U16>


; <Skipped let uu___is_U16/>


; <Start encoding val Lib.IntTypes.uu___is_U32>

(declare-fun Lib.IntTypes.uu___is_U32 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_U32@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U32>


; <Skipped let uu___is_U32/>


; <Start encoding val Lib.IntTypes.uu___is_U64>

(declare-fun Lib.IntTypes.uu___is_U64 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_U64@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U64>


; <Skipped let uu___is_U64/>


; <Start encoding val Lib.IntTypes.uu___is_U128>

(declare-fun Lib.IntTypes.uu___is_U128 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_U128@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_U128>


; <Skipped let uu___is_U128/>


; <Start encoding val Lib.IntTypes.uu___is_S8>

(declare-fun Lib.IntTypes.uu___is_S8 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_S8@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_S8>


; <Skipped let uu___is_S8/>


; <Start encoding val Lib.IntTypes.uu___is_S16>

(declare-fun Lib.IntTypes.uu___is_S16 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_S16@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_S16>


; <Skipped let uu___is_S16/>


; <Start encoding val Lib.IntTypes.uu___is_S32>

(declare-fun Lib.IntTypes.uu___is_S32 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_S32@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_S32>


; <Skipped let uu___is_S32/>


; <Start encoding val Lib.IntTypes.uu___is_S64>

(declare-fun Lib.IntTypes.uu___is_S64 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_S64@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_S64>


; <Skipped let uu___is_S64/>


; <Start encoding val Lib.IntTypes.uu___is_S128>

(declare-fun Lib.IntTypes.uu___is_S128 (Term) Term)

(declare-fun Lib.IntTypes.uu___is_S128@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_S128>


; <Skipped let uu___is_S128/>


; <Start encoding let unsigned>

(declare-fun Lib.IntTypes.unsigned (Term) Term)

(declare-fun Lib.IntTypes.unsigned@tok () Term)

; </end encoding let unsigned>


; <Start encoding let signed>

(declare-fun Lib.IntTypes.signed (Term) Term)

(declare-fun Lib.IntTypes.signed@tok () Term)

; </end encoding let signed>


; <Start encoding let numbytes>

(declare-fun Lib.IntTypes.numbytes (Term) Term)
;;;;;;;;;;;;;;;;_: inttype -> Prims.int
(declare-fun Tm_arrow_23b5b42911a552aed95d29aa9a521ba0 () Term)
(declare-fun Lib.IntTypes.numbytes@tok () Term)

; </end encoding let numbytes>


; <Start encoding let bits>

(declare-fun Lib.IntTypes.bits (Term) Term)

(declare-fun Lib.IntTypes.bits@tok () Term)

; </end encoding let bits>


; <Start encoding val Lib.IntTypes.bits_numbytes>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.bits_numbytes (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.bits_numbytes@tok () Term)

; </end encoding val Lib.IntTypes.bits_numbytes>


; <Start encoding let modulus>

(declare-fun Lib.IntTypes.modulus (Term) Term)
;;;;;;;;;;;;;;;;t: inttype -> Prims.pos
(declare-fun Tm_arrow_c7315dd5e048ac109580a6bcdeadb822 () Term)
(declare-fun Lib.IntTypes.modulus@tok () Term)

; </end encoding let modulus>


; <Start encoding let maxint>

(declare-fun Lib.IntTypes.maxint (Term) Term)

(declare-fun Lib.IntTypes.maxint@tok () Term)

; </end encoding let maxint>


; <Start encoding let minint>

(declare-fun Lib.IntTypes.minint (Term) Term)

(declare-fun Lib.IntTypes.minint@tok () Term)

; </end encoding let minint>


; <Start encoding let range>

(declare-fun Lib.IntTypes.range (Term Term) Term)
;;;;;;;;;;;;;;;;n: Prims.int -> t: inttype -> Type
(declare-fun Tm_arrow_67e78a4d5f570fde2d51248a9fb88dde () Term)
(declare-fun Lib.IntTypes.range@tok () Term)

; </end encoding let range>


; <Start encoding let range_t>

(declare-fun Lib.IntTypes.range_t (Term) Term)
;;;;;;;;;;;;;;;;t: inttype -> Type
(declare-fun Tm_arrow_4df4f60888efe6330802a6511a1b88e7 () Term)
(declare-fun Lib.IntTypes.range_t@tok () Term)
(declare-fun Tm_refine_83845a86f2550cdf941eeb1d9b59602b (Term) Term)

; </end encoding let range_t>


; <Start encoding let pub_int_t>

(declare-fun Lib.IntTypes.pub_int_t (Term) Term)

(declare-fun Lib.IntTypes.pub_int_t@tok () Term)
(declare-fun Tm_refine_e0b16d74ee3644bd585df5e7938934c6 () Term)

; </end encoding let pub_int_t>


; <Start encoding let pub_int_v>

(declare-fun Lib.IntTypes.pub_int_v (Term Term) Term)

;;;;;;;;;;;;;;;;x: pub_int_t t -> x: Prims.int{range x t}
(declare-fun Tm_arrow_46133954d0d05b7bfa7b8471d863ce2c () Term)
(declare-fun Lib.IntTypes.pub_int_v@tok () Term)


; </end encoding let pub_int_v>


; <Start encoding type Lib.IntTypes.secrecy_level>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.secrecy_level () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.SEC () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.SEC
(declare-fun Lib.IntTypes.SEC@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Lib.IntTypes.PUB () Term)
;;;;;;;;;;;;;;;;data constructor proxy: Lib.IntTypes.PUB
(declare-fun Lib.IntTypes.PUB@tok () Term)

; <start constructor Lib.IntTypes.secrecy_level>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.secrecy_level ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
176)
(= __@x0
Lib.IntTypes.secrecy_level)))

; </end constructor Lib.IntTypes.secrecy_level>


; <start constructor Lib.IntTypes.SEC>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.SEC ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
182)
(= __@x0
Lib.IntTypes.SEC)))

; </end constructor Lib.IntTypes.SEC>


; <start constructor Lib.IntTypes.PUB>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Lib.IntTypes.PUB ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
184)
(= __@x0
Lib.IntTypes.PUB)))

; </end constructor Lib.IntTypes.PUB>


; </end encoding type Lib.IntTypes.secrecy_level>


; <Start encoding assume Lib.IntTypes.secrecy_level__uu___haseq>


; </end encoding assume Lib.IntTypes.secrecy_level__uu___haseq>


; <Start encoding val Lib.IntTypes.uu___is_SEC>

(declare-fun Lib.IntTypes.uu___is_SEC (Term) Term)
;;;;;;;;;;;;;;;;projectee: secrecy_level -> Prims.bool
(declare-fun Tm_arrow_9e2c93fb3bb6bcb9b4d5840395c6fda4 () Term)
(declare-fun Lib.IntTypes.uu___is_SEC@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_SEC>


; <Skipped let uu___is_SEC/>


; <Start encoding val Lib.IntTypes.uu___is_PUB>

(declare-fun Lib.IntTypes.uu___is_PUB (Term) Term)

(declare-fun Lib.IntTypes.uu___is_PUB@tok () Term)

; </end encoding val Lib.IntTypes.uu___is_PUB>


; <Skipped let uu___is_PUB/>


; <Start encoding val Lib.IntTypes.sec_int_t>

(declare-fun Lib.IntTypes.sec_int_t (Term) Term)

(declare-fun Lib.IntTypes.sec_int_t@tok () Term)

; </end encoding val Lib.IntTypes.sec_int_t>


; <Start encoding val Lib.IntTypes.sec_int_v>

(declare-fun Lib.IntTypes.sec_int_v (Term Term) Term)

;;;;;;;;;;;;;;;;_: sec_int_t t -> x: Prims.int{range x t}
(declare-fun Tm_arrow_deb09b76ab55f7f0334d3df98d506b02 () Term)
(declare-fun Lib.IntTypes.sec_int_v@tok () Term)


; </end encoding val Lib.IntTypes.sec_int_v>


; <Start encoding let int_t>

(declare-fun Lib.IntTypes.int_t (Term Term) Term)
;;;;;;;;;;;;;;;;t: inttype -> l: secrecy_level -> Type
(declare-fun Tm_arrow_e7d94b39f18cb7383e1e954e1935767d () Term)
(declare-fun Lib.IntTypes.int_t@tok () Term)

; </end encoding let int_t>


; <Start encoding let v>

(declare-fun Lib.IntTypes.v (Term Term Term) Term)

;;;;;;;;;;;;;;;;u374: int_t t l -> x: Prims.int{range x t}
(declare-fun Tm_arrow_40440245ccf70a9a985209c507b76328 () Term)
(declare-fun Lib.IntTypes.v@tok () Term)


; </end encoding let v>


; <Start encoding let uint_t>

(declare-fun Tm_refine_387e6d282145573240ab7b8a4b94cce5 () Term)
(declare-fun Lib.IntTypes.uint_t (Term Term) Term)

;;;;;;;;;;;;;;;;t: inttype{unsigned t} -> l: secrecy_level -> Type
(declare-fun Tm_arrow_165597a1da7fd7253bb782734839f857 () Term)
(declare-fun Lib.IntTypes.uint_t@tok () Term)


; </end encoding let uint_t>


; <Start encoding let sint_t>

(declare-fun Tm_refine_499d370c56448bf714eb7f1fd73227a1 () Term)
(declare-fun Lib.IntTypes.sint_t (Term Term) Term)

;;;;;;;;;;;;;;;;t: inttype{signed t} -> l: secrecy_level -> Type
(declare-fun Tm_arrow_70ff23e061ea5135fc6de56c1cadb46a () Term)
(declare-fun Lib.IntTypes.sint_t@tok () Term)


; </end encoding let sint_t>


; <Start encoding let uint_v>


(declare-fun Lib.IntTypes.uint_v (Term Term Term) Term)


;;;;;;;;;;;;;;;;u488: int_t t l -> x: Prims.int{range x t}
(declare-fun Tm_arrow_243b70db1ef7bc61b19dc128f2f31704 () Term)
(declare-fun Lib.IntTypes.uint_v@tok () Term)



; </end encoding let uint_v>


; <Start encoding let sint_v>


(declare-fun Lib.IntTypes.sint_v (Term Term Term) Term)


;;;;;;;;;;;;;;;;u541: int_t t l -> x: Prims.int{range x t}
(declare-fun Tm_arrow_e8f9a89fba56b944fd558cf4607d24af () Term)
(declare-fun Lib.IntTypes.sint_v@tok () Term)



; </end encoding let sint_v>


; <Start encoding let uint1>

(declare-fun Lib.IntTypes.uint1 () Term)

; </end encoding let uint1>


; <Start encoding let uint8>

(declare-fun Lib.IntTypes.uint8 () Term)

; </end encoding let uint8>


; <Start encoding let int8>

(declare-fun Lib.IntTypes.int8 () Term)

; </end encoding let int8>


; <Start encoding let uint16>

(declare-fun Lib.IntTypes.uint16 () Term)

; </end encoding let uint16>


; <Start encoding let int16>

(declare-fun Lib.IntTypes.int16 () Term)

; </end encoding let int16>


; <Start encoding let uint32>

(declare-fun Lib.IntTypes.uint32 () Term)

; </end encoding let uint32>


; <Start encoding let int32>

(declare-fun Lib.IntTypes.int32 () Term)

; </end encoding let int32>


; <Start encoding let uint64>

(declare-fun Lib.IntTypes.uint64 () Term)

; </end encoding let uint64>


; <Start encoding let int64>

(declare-fun Lib.IntTypes.int64 () Term)

; </end encoding let int64>


; <Start encoding let uint128>

(declare-fun Lib.IntTypes.uint128 () Term)

; </end encoding let uint128>


; <Start encoding let int128>

(declare-fun Lib.IntTypes.int128 () Term)

; </end encoding let int128>


; <Start encoding let bit_t>

(declare-fun Lib.IntTypes.bit_t () Term)

; </end encoding let bit_t>


; <Start encoding let byte_t>

(declare-fun Lib.IntTypes.byte_t () Term)

; </end encoding let byte_t>


; <Start encoding let size_t>

(declare-fun Lib.IntTypes.size_t () Term)

; </end encoding let size_t>


; <Start encoding let size128_t>

(declare-fun Lib.IntTypes.size128_t () Term)

; </end encoding let size128_t>


; <Start encoding let pub_uint8>

(declare-fun Lib.IntTypes.pub_uint8 () Term)

; </end encoding let pub_uint8>


; <Start encoding let pub_int8>

(declare-fun Lib.IntTypes.pub_int8 () Term)

; </end encoding let pub_int8>


; <Start encoding let pub_uint16>

(declare-fun Lib.IntTypes.pub_uint16 () Term)

; </end encoding let pub_uint16>


; <Start encoding let pub_int16>

(declare-fun Lib.IntTypes.pub_int16 () Term)

; </end encoding let pub_int16>


; <Start encoding let pub_uint32>

(declare-fun Lib.IntTypes.pub_uint32 () Term)

; </end encoding let pub_uint32>


; <Start encoding let pub_int32>

(declare-fun Lib.IntTypes.pub_int32 () Term)

; </end encoding let pub_int32>


; <Start encoding let pub_uint64>

(declare-fun Lib.IntTypes.pub_uint64 () Term)

; </end encoding let pub_uint64>


; <Start encoding let pub_int64>

(declare-fun Lib.IntTypes.pub_int64 () Term)

; </end encoding let pub_int64>


; <Start encoding let pub_uint128>

(declare-fun Lib.IntTypes.pub_uint128 () Term)

; </end encoding let pub_uint128>


; <Start encoding let pub_int128>

(declare-fun Lib.IntTypes.pub_int128 () Term)

; </end encoding let pub_int128>


; <Start encoding val Lib.IntTypes.secret>

(declare-fun Lib.IntTypes.secret (Term Term) Term)
(declare-fun Tm_refine_576183a4f8267f6296f94f4827351efd (Term Term) Term)
;;;;;;;;;;;;;;;;x: int_t t PUB -> y: int_t t SEC {v x == v y}
(declare-fun Tm_arrow_feb4494e55abb95bc979559ccab03ad0 () Term)
(declare-fun Lib.IntTypes.secret@tok () Term)


; </end encoding val Lib.IntTypes.secret>


; <Start encoding val Lib.IntTypes.mk_int>


(declare-fun Lib.IntTypes.mk_int (Term Term Term) Term)

(declare-fun Tm_refine_9d3fd79fd314167f1a9c213a188da3ec (Term Term Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x t} -> u667: int_t t l {v u667 == n}
(declare-fun Tm_arrow_2b601ac3b6dd5023f5acf9aca946a2fa () Term)
(declare-fun Lib.IntTypes.mk_int@tok () Term)


; </end encoding val Lib.IntTypes.mk_int>


; <Start encoding let uint>



(declare-fun Lib.IntTypes.uint (Term Term Term) Term)



;;;;;;;;;;;;;;;;n: x: Prims.int{range x t} -> u721: int_t t l {v u721 == n}
(declare-fun Tm_arrow_be50b03d4c9e27836938014e403fde09 () Term)
(declare-fun Lib.IntTypes.uint@tok () Term)




; </end encoding let uint>


; <Start encoding let sint>



(declare-fun Lib.IntTypes.sint (Term Term Term) Term)



;;;;;;;;;;;;;;;;n: x: Prims.int{range x t} -> u791: int_t t l {v u791 == n}
(declare-fun Tm_arrow_6c0c51aee864a5060b051166d85dd8d1 () Term)
(declare-fun Lib.IntTypes.sint@tok () Term)




; </end encoding let sint>


; <Start encoding val Lib.IntTypes.v_injective>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.v_injective (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.v_injective@tok () Term)

; </end encoding val Lib.IntTypes.v_injective>


; <Start encoding val Lib.IntTypes.v_mk_int>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.v_mk_int (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.v_mk_int@tok () Term)


; </end encoding val Lib.IntTypes.v_mk_int>


; <Start encoding let u1>

(declare-fun Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc () Term)
(declare-fun Lib.IntTypes.u1 (Term) Term)

(declare-fun Tm_refine_c178be26ecd23c8e6026ec38d882bc65 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U1} -> u890: int_t U1 SEC {v u890 == n}
(declare-fun Tm_arrow_2245d3e5d01af4b1f3534b29a7a77d5a () Term)
(declare-fun Lib.IntTypes.u1@tok () Term)



; </end encoding let u1>


; <Start encoding let u8>

(declare-fun Tm_refine_ac361b132c26d906d5997e1372d2a888 () Term)
(declare-fun Lib.IntTypes.u8 (Term) Term)

(declare-fun Tm_refine_d32749f2772b0847957005b759926d60 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U8} -> u933: int_t U8 SEC {v u933 == n}
(declare-fun Tm_arrow_141242f5cf351ff84207bb5a809ef1dc () Term)
(declare-fun Lib.IntTypes.u8@tok () Term)



; </end encoding let u8>


; <Start encoding let i8>

(declare-fun Tm_refine_117824c94bb8fa4b5424e2a89ad3129a () Term)
(declare-fun Lib.IntTypes.i8 (Term) Term)

(declare-fun Tm_refine_8af992e69a3ca1855e7c9e939877ac20 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x S8} -> u976: int_t S8 SEC {v u976 == n}
(declare-fun Tm_arrow_d8465485add1d5ee7930872f346323ef () Term)
(declare-fun Lib.IntTypes.i8@tok () Term)



; </end encoding let i8>


; <Start encoding let u16>

(declare-fun Tm_refine_a636b6491af501737c1eb06142217342 () Term)
(declare-fun Lib.IntTypes.u16 (Term) Term)

(declare-fun Tm_refine_cfdb4594af8e17b0b5af724541abf53f (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U16} -> u1019: int_t U16 SEC {v u1019 == n}
(declare-fun Tm_arrow_8e474a9207d1b09769a3f2f09a90520a () Term)
(declare-fun Lib.IntTypes.u16@tok () Term)



; </end encoding let u16>


; <Start encoding let i16>

(declare-fun Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c () Term)
(declare-fun Lib.IntTypes.i16 (Term) Term)

(declare-fun Tm_refine_c3b8ee23953c5e0e5fe9a52bd7b8ce36 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x S16} -> u1062: int_t S16 SEC {v u1062 == n}
(declare-fun Tm_arrow_26c52b915008c7c4e6d3470bfeee33e6 () Term)
(declare-fun Lib.IntTypes.i16@tok () Term)



; </end encoding let i16>


; <Start encoding let u32>

(declare-fun Tm_refine_68ee6d2c8678eb431259a3d4f412550b () Term)
(declare-fun Lib.IntTypes.u32 (Term) Term)

(declare-fun Tm_refine_27680283e93f30a8d9ac7d3b22ec31bf (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U32} -> u1105: int_t U32 SEC {v u1105 == n}
(declare-fun Tm_arrow_f897e4c26470162336b1533e0ee2bef6 () Term)
(declare-fun Lib.IntTypes.u32@tok () Term)



; </end encoding let u32>


; <Start encoding let i32>

(declare-fun Tm_refine_ee21347fbca1d214410772ef0425736c () Term)
(declare-fun Lib.IntTypes.i32 (Term) Term)

(declare-fun Tm_refine_ca0cbdcca473f23237c4cff4fd7db154 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x S32} -> u1148: int_t S32 SEC {v u1148 == n}
(declare-fun Tm_arrow_f356d18ee1ebd06426f315f7f02deeda () Term)
(declare-fun Lib.IntTypes.i32@tok () Term)



; </end encoding let i32>


; <Start encoding let u64>

(declare-fun Tm_refine_4ae12848fac0601da6605bac9d6872f1 () Term)
(declare-fun Lib.IntTypes.u64 (Term) Term)

(declare-fun Tm_refine_59c6c389f7d2ec9ac28044f709e4c7d6 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U64} -> u1191: int_t U64 SEC {v u1191 == n}
(declare-fun Tm_arrow_cd9c4321e04ad58d1f8f5a6d59ebef77 () Term)
(declare-fun Lib.IntTypes.u64@tok () Term)



; </end encoding let u64>


; <Start encoding let i64>

(declare-fun Tm_refine_360500544b85bc92abd73f53c89e0565 () Term)
(declare-fun Lib.IntTypes.i64 (Term) Term)

(declare-fun Tm_refine_643f451a283be66fd11c916f069b072a (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x S64} -> u1234: int_t S64 SEC {v u1234 == n}
(declare-fun Tm_arrow_007ea375a93301309e598769cd3bf8d2 () Term)
(declare-fun Lib.IntTypes.i64@tok () Term)



; </end encoding let i64>


; <Start encoding val Lib.IntTypes.u128>


(declare-fun Lib.IntTypes.u128 (Term) Term)

(declare-fun Tm_refine_17b5c82e827d21e595c1a46cf8137822 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x U64} -> u1269: int_t U128 SEC {v u1269 == n}
(declare-fun Tm_arrow_6e1982efde74d230328c94c7157048b3 () Term)
(declare-fun Lib.IntTypes.u128@tok () Term)


; </end encoding val Lib.IntTypes.u128>


; <Start encoding val Lib.IntTypes.i128>


(declare-fun Lib.IntTypes.i128 (Term) Term)

(declare-fun Tm_refine_7cece939a5cd7fe40399019c25128476 (Term) Term)
;;;;;;;;;;;;;;;;n: x: Prims.int{range x S64} -> u1295: int_t S128 SEC {v u1295 == n}
(declare-fun Tm_arrow_40c949d66098a87c48a9513e2c177e03 () Term)
(declare-fun Lib.IntTypes.i128@tok () Term)


; </end encoding val Lib.IntTypes.i128>


; <Start encoding let max_size_t>

(declare-fun Lib.IntTypes.max_size_t (Dummy_sort) Term)

; </end encoding let max_size_t>


; <Start encoding let size_nat>

(declare-fun Lib.IntTypes.size_nat () Term)
(declare-fun Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4 () Term)

; </end encoding let size_nat>


; <Start encoding let size_pos>

(declare-fun Lib.IntTypes.size_pos () Term)
(declare-fun Tm_refine_609674d96c81c962549b0076055bf213 () Term)

; </end encoding let size_pos>


; <Start encoding let size>


(declare-fun Lib.IntTypes.size (Term) Term)

;;;;;;;;;;;;;;;;n: Prims.nat{n <= Prims.pow2 32 - 1} -> int_t U32 PUB
(declare-fun Tm_arrow_8e972d27af3c33943bf8b156f24968f6 () Term)
(declare-fun Lib.IntTypes.size@tok () Term)


; </end encoding let size>


; <Start encoding let size_v>

(declare-fun Lib.IntTypes.size_v (Term) Term)

;;;;;;;;;;;;;;;;s: int_t U32 PUB -> x: Prims.int{range x U32}
(declare-fun Tm_arrow_9e32e400e693a15c6164cbca39a40ed3 () Term)
(declare-fun Lib.IntTypes.size_v@tok () Term)


; </end encoding let size_v>


; <Start encoding let byte>

(declare-fun Tm_refine_31c7d3d85d92cb942c95a78642e657c7 () Term)
(declare-fun Lib.IntTypes.byte (Term) Term)

(declare-fun Tm_refine_feb7ca629b12462e536ece5390fccfcd (Term) Term)
;;;;;;;;;;;;;;;;n: Prims.nat{n < 256} -> b: int_t U8 PUB {v b == n}
(declare-fun Tm_arrow_2b5535fcbbddba9a91583448a0f7cd5a () Term)
(declare-fun Lib.IntTypes.byte@tok () Term)



; </end encoding let byte>


; <Start encoding let byte_v>

(declare-fun Lib.IntTypes.byte_v (Term) Term)
(declare-fun Tm_refine_b4c91c893c20a4c31092a1de6dc4beca (Term) Term)
;;;;;;;;;;;;;;;;s: int_t U8 PUB -> n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){v s == n}
(declare-fun Tm_arrow_ef64245cfb08d117625908d1a02a56c1 () Term)
(declare-fun Lib.IntTypes.byte_v@tok () Term)


; </end encoding let byte_v>


; <Start encoding val Lib.IntTypes.size_to_uint32>

(declare-fun Lib.IntTypes.size_to_uint32 (Term) Term)
(declare-fun Tm_refine_0c6907d271a3f37ff8fbfce1f7abda4e (Term) Term)
;;;;;;;;;;;;;;;;s: int_t U32 PUB -> u1475: int_t U32 SEC {u1475 == mk_int (v s)}
(declare-fun Tm_arrow_bae393d09677ef1a6c05971ad302a4a6 () Term)
(declare-fun Lib.IntTypes.size_to_uint32@tok () Term)


; </end encoding val Lib.IntTypes.size_to_uint32>


; <Start encoding val Lib.IntTypes.size_to_uint64>

(declare-fun Lib.IntTypes.size_to_uint64 (Term) Term)
(declare-fun Tm_refine_24a7b28458ba679bb56000984769c285 (Term) Term)
;;;;;;;;;;;;;;;;s: int_t U32 PUB -> u1501: int_t U64 SEC {u1501 == mk_int (v s)}
(declare-fun Tm_arrow_a2876930604c8d174ab88ad31b80c10f () Term)
(declare-fun Lib.IntTypes.size_to_uint64@tok () Term)


; </end encoding val Lib.IntTypes.size_to_uint64>


; <Start encoding val Lib.IntTypes.byte_to_uint8>

(declare-fun Lib.IntTypes.byte_to_uint8 (Term) Term)
(declare-fun Tm_refine_85c9fcd4432001be726c03d4644abe93 (Term) Term)
;;;;;;;;;;;;;;;;s: int_t U8 PUB -> u1527: int_t U8 SEC {u1527 == mk_int (v s)}
(declare-fun Tm_arrow_ec0c223d77b92c103755cfb1804969d7 () Term)
(declare-fun Lib.IntTypes.byte_to_uint8@tok () Term)


; </end encoding val Lib.IntTypes.byte_to_uint8>


; <Start encoding let op_At_Percent_Dot>

(declare-fun Lib.IntTypes.op_At_Percent_Dot (Term Term) Term)
;;;;;;;;;;;;;;;;x: Prims.int -> t: inttype -> Prims.int
(declare-fun Tm_arrow_2f76166844837503dc378578a4b4f747 () Term)
(declare-fun Lib.IntTypes.op_At_Percent_Dot@tok () Term)

; </end encoding let op_At_Percent_Dot>


; <Start encoding val Lib.IntTypes.cast>

(declare-fun Tm_refine_4c82af8a46684f75d7fe12f75a0fb1a7 (Term) Term)
(declare-fun Tm_refine_55ad6dde98f777fb8caf2adfada0d12e (Term Term Term) Term)
(declare-fun Lib.IntTypes.cast (Term Term Term Term Term) Term)


(declare-fun Tm_refine_4f1cffa40412af126565457cc49b8cca (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;t': inttype ->     l': secrecy_level{PUB? l \/ SEC? l'} ->     u1: int_t t l {unsigned t' \/ range (v u1) t'}   -> u2: int_t t' l' {v u2 == v u1 @%. t'}
(declare-fun Tm_arrow_34fd433514ffefe549e10fa9df8d2ada () Term)
(declare-fun Lib.IntTypes.cast@tok () Term)


; </end encoding val Lib.IntTypes.cast>


; <Start encoding let to_u1>

(declare-fun Lib.IntTypes.to_u1 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u1659: int_t t l -> int_t U1 SEC
(declare-fun Tm_arrow_cd2fd11737784f27e048caaad7619f3b () Term)
(declare-fun Lib.IntTypes.to_u1@tok () Term)

; </end encoding let to_u1>


; <Start encoding let to_u8>

(declare-fun Lib.IntTypes.to_u8 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u1697: int_t t l -> int_t U8 SEC
(declare-fun Tm_arrow_8dfe5b407defadaf2f59a45a44a0d0cf () Term)
(declare-fun Lib.IntTypes.to_u8@tok () Term)

; </end encoding let to_u8>


; <Start encoding let to_i8>

(declare-fun Tm_refine_c80325d6e3c3908ce96e62c3a247dad8 (Term Term) Term)
(declare-fun Lib.IntTypes.to_i8 (Term Term Term) Term)

;;;;;;;;;;;;;;;;u1751: u1: int_t t l {Prims.auto_squash (range (v u1) S8)} -> int_t S8 SEC
(declare-fun Tm_arrow_ac84c562dcdecd4274b756493843b619 () Term)
(declare-fun Lib.IntTypes.to_i8@tok () Term)


; </end encoding let to_i8>


; <Start encoding let to_u16>

(declare-fun Lib.IntTypes.to_u16 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u1795: int_t t l -> int_t U16 SEC
(declare-fun Tm_arrow_d3d17f1d3fa9425128b3efd88af02648 () Term)
(declare-fun Lib.IntTypes.to_u16@tok () Term)

; </end encoding let to_u16>


; <Start encoding let to_i16>

(declare-fun Tm_refine_b94c90c04a6b6066396a6edd826f3e49 (Term Term) Term)
(declare-fun Lib.IntTypes.to_i16 (Term Term Term) Term)

;;;;;;;;;;;;;;;;u1849: u1: int_t t l {Prims.auto_squash (range (v u1) S16)} -> int_t S16 SEC
(declare-fun Tm_arrow_7aa1d5bac2f4773e8772ec3980713979 () Term)
(declare-fun Lib.IntTypes.to_i16@tok () Term)


; </end encoding let to_i16>


; <Start encoding let to_u32>

(declare-fun Lib.IntTypes.to_u32 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u1893: int_t t l -> int_t U32 SEC
(declare-fun Tm_arrow_af643fb96f155054932b157e526c365d () Term)
(declare-fun Lib.IntTypes.to_u32@tok () Term)

; </end encoding let to_u32>


; <Start encoding let to_i32>

(declare-fun Tm_refine_b0b8a62fe14d020756ac5723ea92a689 (Term Term) Term)
(declare-fun Lib.IntTypes.to_i32 (Term Term Term) Term)

;;;;;;;;;;;;;;;;u1947: u1: int_t t l {Prims.auto_squash (range (v u1) S32)} -> int_t S32 SEC
(declare-fun Tm_arrow_8fe2a4b538a815533611f38449bb7457 () Term)
(declare-fun Lib.IntTypes.to_i32@tok () Term)


; </end encoding let to_i32>


; <Start encoding let to_u64>

(declare-fun Lib.IntTypes.to_u64 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u1991: int_t t l -> int_t U64 SEC
(declare-fun Tm_arrow_174cba25e2ec5719830edab2ecf08e26 () Term)
(declare-fun Lib.IntTypes.to_u64@tok () Term)

; </end encoding let to_u64>


; <Start encoding let to_i64>

(declare-fun Tm_refine_5bd59bcfc4e349b97a13649b97673373 (Term Term) Term)
(declare-fun Lib.IntTypes.to_i64 (Term Term Term) Term)

;;;;;;;;;;;;;;;;u2045: u1: int_t t l {Prims.auto_squash (range (v u1) S64)} -> int_t S64 SEC
(declare-fun Tm_arrow_d5ad1c2a72f25c4ce0eafa67b2d2f5e6 () Term)
(declare-fun Lib.IntTypes.to_i64@tok () Term)


; </end encoding let to_i64>


; <Start encoding let to_u128>

(declare-fun Lib.IntTypes.to_u128 (Term Term Term) Term)
;;;;;;;;;;;;;;;;u2089: int_t t l -> int_t U128 SEC
(declare-fun Tm_arrow_d60e4ece57dbabe193832a74449a1477 () Term)
(declare-fun Lib.IntTypes.to_u128@tok () Term)

; </end encoding let to_u128>


; <Start encoding let to_i128>

(declare-fun Tm_refine_269b0fa79369870b529fa8325df86eca (Term Term) Term)
(declare-fun Lib.IntTypes.to_i128 (Term Term Term) Term)

;;;;;;;;;;;;;;;;u2143: u1: int_t t l {Prims.auto_squash (range (v u1) S128)} -> int_t S128 SEC
(declare-fun Tm_arrow_98ec45ffe22e0e40fa16268850e12fbd () Term)
(declare-fun Lib.IntTypes.to_i128@tok () Term)


; </end encoding let to_i128>


; <Start encoding let ones_v>

(declare-fun Lib.IntTypes.ones_v (Term) Term)

(declare-fun Lib.IntTypes.ones_v@tok () Term)

; </end encoding let ones_v>


; <Start encoding val Lib.IntTypes.ones>

(declare-fun Lib.IntTypes.ones (Term Term) Term)
(declare-fun Tm_refine_032bf6a48f5060ca879f2d84d403b4fa (Term Term) Term)
;;;;;;;;;;;;;;;;t: inttype -> l: secrecy_level -> n: int_t t l {v n = ones_v t}
(declare-fun Tm_arrow_daf1518c6b573ba48bac31e30eb83569 () Term)
(declare-fun Lib.IntTypes.ones@tok () Term)


; </end encoding val Lib.IntTypes.ones>


; <Start encoding val Lib.IntTypes.zeros>

(declare-fun Lib.IntTypes.zeros (Term Term) Term)
(declare-fun Tm_refine_1f338ca89b14fdf09b67051d08dca8db (Term Term) Term)
;;;;;;;;;;;;;;;;t: inttype -> l: secrecy_level -> n: int_t t l {v n = 0}
(declare-fun Tm_arrow_182f005a7ab482dd6af56c8ecb6b3d61 () Term)
(declare-fun Lib.IntTypes.zeros@tok () Term)


; </end encoding val Lib.IntTypes.zeros>


; <Start encoding val Lib.IntTypes.add_mod>


(declare-fun Lib.IntTypes.add_mod (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_b6c7b131dcab59a8eb8f50c70226d5b9 () Term)
(declare-fun Lib.IntTypes.add_mod@tok () Term)

; </end encoding val Lib.IntTypes.add_mod>


; <Start encoding val Lib.IntTypes.add_mod_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.add_mod_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.add_mod_lemma@tok () Term)


; </end encoding val Lib.IntTypes.add_mod_lemma>


; <Start encoding val Lib.IntTypes.add>

(declare-fun Tm_refine_feb9bb9f35b4e580b5c2b388310d192a (Term Term Term) Term)
(declare-fun Lib.IntTypes.add (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a + v b) t} -> int_t t l
(declare-fun Tm_arrow_6103473ce2c53f304835922d5ba5654d () Term)
(declare-fun Lib.IntTypes.add@tok () Term)

; </end encoding val Lib.IntTypes.add>


; <Start encoding val Lib.IntTypes.add_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.add_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.add_lemma@tok () Term)


; </end encoding val Lib.IntTypes.add_lemma>


; <Start encoding val Lib.IntTypes.incr>

(declare-fun Tm_refine_b9d5a27eed373ad34901c8571082e536 (Term Term) Term)
(declare-fun Lib.IntTypes.incr (Term Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l {v a < maxint t} -> int_t t l
(declare-fun Tm_arrow_b32d06ac17eb7b11a663cf7b42ec6876 () Term)
(declare-fun Lib.IntTypes.incr@tok () Term)

; </end encoding val Lib.IntTypes.incr>


; <Start encoding val Lib.IntTypes.incr_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.incr_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.incr_lemma@tok () Term)

; </end encoding val Lib.IntTypes.incr_lemma>


; <Start encoding val Lib.IntTypes.mul_mod>

(declare-fun Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242 () Term)
(declare-fun Lib.IntTypes.mul_mod (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_cd6e2af2c720a97ef71723e3dc123b88 () Term)
(declare-fun Lib.IntTypes.mul_mod@tok () Term)

; </end encoding val Lib.IntTypes.mul_mod>


; <Start encoding val Lib.IntTypes.mul_mod_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mul_mod_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mul_mod_lemma@tok () Term)


; </end encoding val Lib.IntTypes.mul_mod_lemma>


; <Start encoding val Lib.IntTypes.mul>

(declare-fun Tm_refine_b550ca9347e0645a53715102a08d8fa1 () Term)
(declare-fun Tm_refine_9ff150f589411d5a40376aa0c5e1ca86 (Term Term Term) Term)
(declare-fun Lib.IntTypes.mul (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a * v b) t} -> int_t t l
(declare-fun Tm_arrow_68edef36a5de76ca466d8fdf5f31efa2 () Term)
(declare-fun Lib.IntTypes.mul@tok () Term)

; </end encoding val Lib.IntTypes.mul>


; <Start encoding val Lib.IntTypes.mul_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mul_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mul_lemma@tok () Term)



; </end encoding val Lib.IntTypes.mul_lemma>


; <Start encoding val Lib.IntTypes.mul64_wide>

(declare-fun Lib.IntTypes.mul64_wide (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t U64 SEC -> _: int_t U64 SEC -> int_t U128 SEC
(declare-fun Tm_arrow_5f6ec659f8f6409b2aa64286bd56fc42 () Term)
(declare-fun Lib.IntTypes.mul64_wide@tok () Term)

; </end encoding val Lib.IntTypes.mul64_wide>


; <Start encoding val Lib.IntTypes.mul64_wide_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mul64_wide_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mul64_wide_lemma@tok () Term)

; </end encoding val Lib.IntTypes.mul64_wide_lemma>


; <Start encoding val Lib.IntTypes.mul_s64_wide>

(declare-fun Lib.IntTypes.mul_s64_wide (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t S64 SEC -> _: int_t S64 SEC -> int_t S128 SEC
(declare-fun Tm_arrow_8c0921275def679dc45195a422550c71 () Term)
(declare-fun Lib.IntTypes.mul_s64_wide@tok () Term)

; </end encoding val Lib.IntTypes.mul_s64_wide>


; <Start encoding val Lib.IntTypes.mul_s64_wide_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mul_s64_wide_lemma (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mul_s64_wide_lemma@tok () Term)

; </end encoding val Lib.IntTypes.mul_s64_wide_lemma>


; <Start encoding val Lib.IntTypes.sub_mod>


(declare-fun Lib.IntTypes.sub_mod (Term Term Term Term) Term)


(declare-fun Lib.IntTypes.sub_mod@tok () Term)

; </end encoding val Lib.IntTypes.sub_mod>


; <Start encoding val Lib.IntTypes.sub_mod_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.sub_mod_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.sub_mod_lemma@tok () Term)


; </end encoding val Lib.IntTypes.sub_mod_lemma>


; <Start encoding val Lib.IntTypes.sub>

(declare-fun Tm_refine_1cc58e901e83e96dff5b4d1682343605 (Term Term Term) Term)
(declare-fun Lib.IntTypes.sub (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a - v b) t} -> int_t t l
(declare-fun Tm_arrow_a202f55208631a180575cba61fdf76c0 () Term)
(declare-fun Lib.IntTypes.sub@tok () Term)

; </end encoding val Lib.IntTypes.sub>


; <Start encoding val Lib.IntTypes.sub_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.sub_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.sub_lemma@tok () Term)


; </end encoding val Lib.IntTypes.sub_lemma>


; <Start encoding val Lib.IntTypes.decr>

(declare-fun Tm_refine_0c90ca21a655c034cb41d89af86c2712 (Term Term) Term)
(declare-fun Lib.IntTypes.decr (Term Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l {minint t < v a} -> int_t t l
(declare-fun Tm_arrow_da6fe8060a83f471dc10e43c5c73738d () Term)
(declare-fun Lib.IntTypes.decr@tok () Term)

; </end encoding val Lib.IntTypes.decr>


; <Start encoding val Lib.IntTypes.decr_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.decr_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.decr_lemma@tok () Term)

; </end encoding val Lib.IntTypes.decr_lemma>


; <Start encoding val Lib.IntTypes.logxor>

(declare-fun Lib.IntTypes.logxor (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_f4a9562bad893d799188b75efefcbe4b () Term)
(declare-fun Lib.IntTypes.logxor@tok () Term)

; </end encoding val Lib.IntTypes.logxor>


; <Start encoding val Lib.IntTypes.logxor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logxor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logxor_lemma@tok () Term)

; </end encoding val Lib.IntTypes.logxor_lemma>


; <Start encoding val Lib.IntTypes.logxor_lemma1>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logxor_lemma1 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logxor_lemma1@tok () Term)

; </end encoding val Lib.IntTypes.logxor_lemma1>


; <Start encoding let logxor_v>



(declare-fun Lib.IntTypes.logxor_v (Term Term Term) Term)



;;;;;;;;;;;;;;;;a: x: Prims.int{range x t} -> b: x: Prims.int{range x t} -> x: Prims.int{range x t}
(declare-fun Tm_arrow_a57bfdacab615fe929798b9c423e828b () Term)
(declare-fun Lib.IntTypes.logxor_v@tok () Term)




; </end encoding let logxor_v>


; <Start encoding val Lib.IntTypes.logxor_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logxor_spec (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logxor_spec@tok () Term)

; </end encoding val Lib.IntTypes.logxor_spec>


; <Start encoding val Lib.IntTypes.logand>

(declare-fun Lib.IntTypes.logand (Term Term Term Term) Term)

(declare-fun Lib.IntTypes.logand@tok () Term)

; </end encoding val Lib.IntTypes.logand>


; <Start encoding val Lib.IntTypes.logand_zeros>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_zeros (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_zeros@tok () Term)

; </end encoding val Lib.IntTypes.logand_zeros>


; <Start encoding val Lib.IntTypes.logand_ones>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_ones (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_ones@tok () Term)

; </end encoding val Lib.IntTypes.logand_ones>


; <Start encoding val Lib.IntTypes.logand_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_lemma@tok () Term)

; </end encoding val Lib.IntTypes.logand_lemma>


; <Start encoding let logand_v>



(declare-fun Lib.IntTypes.logand_v (Term Term Term) Term)




(declare-fun Lib.IntTypes.logand_v@tok () Term)




; </end encoding let logand_v>


; <Start encoding val Lib.IntTypes.logand_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_spec (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_spec@tok () Term)

; </end encoding val Lib.IntTypes.logand_spec>


; <Start encoding val Lib.IntTypes.logand_le>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_le (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_le@tok () Term)

; </end encoding val Lib.IntTypes.logand_le>


; <Start encoding val Lib.IntTypes.logand_mask>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logand_mask (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logand_mask@tok () Term)

; </end encoding val Lib.IntTypes.logand_mask>


; <Start encoding val Lib.IntTypes.logor>

(declare-fun Lib.IntTypes.logor (Term Term Term Term) Term)

(declare-fun Lib.IntTypes.logor@tok () Term)

; </end encoding val Lib.IntTypes.logor>


; <Start encoding val Lib.IntTypes.logor_disjoint>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logor_disjoint (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logor_disjoint@tok () Term)

; </end encoding val Lib.IntTypes.logor_disjoint>


; <Start encoding val Lib.IntTypes.logor_zeros>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logor_zeros (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logor_zeros@tok () Term)

; </end encoding val Lib.IntTypes.logor_zeros>


; <Start encoding val Lib.IntTypes.logor_ones>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logor_ones (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logor_ones@tok () Term)

; </end encoding val Lib.IntTypes.logor_ones>


; <Start encoding val Lib.IntTypes.logor_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logor_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logor_lemma@tok () Term)

; </end encoding val Lib.IntTypes.logor_lemma>


; <Start encoding let logor_v>



(declare-fun Lib.IntTypes.logor_v (Term Term Term) Term)




(declare-fun Lib.IntTypes.logor_v@tok () Term)




; </end encoding let logor_v>


; <Start encoding val Lib.IntTypes.logor_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.logor_spec (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.logor_spec@tok () Term)

; </end encoding val Lib.IntTypes.logor_spec>


; <Start encoding val Lib.IntTypes.lognot>

(declare-fun Lib.IntTypes.lognot (Term Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> int_t t l
(declare-fun Tm_arrow_1908442cbcab18a03680e5d4e4bd7d5c () Term)
(declare-fun Lib.IntTypes.lognot@tok () Term)

; </end encoding val Lib.IntTypes.lognot>


; <Start encoding val Lib.IntTypes.lognot_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lognot_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lognot_lemma@tok () Term)

; </end encoding val Lib.IntTypes.lognot_lemma>


; <Start encoding let lognot_v>


(declare-fun Lib.IntTypes.lognot_v (Term Term) Term)


;;;;;;;;;;;;;;;;a: x: Prims.int{range x t} -> x: Prims.int{range x t}
(declare-fun Tm_arrow_c47f57e8e59f6d08ceb3401c5d63b437 () Term)
(declare-fun Lib.IntTypes.lognot_v@tok () Term)



; </end encoding let lognot_v>


; <Start encoding val Lib.IntTypes.lognot_spec>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lognot_spec (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lognot_spec@tok () Term)

; </end encoding val Lib.IntTypes.lognot_spec>


; <Start encoding let shiftval>

(declare-fun Lib.IntTypes.shiftval (Term) Term)

(declare-fun Lib.IntTypes.shiftval@tok () Term)
(declare-fun Tm_refine_e40dba697735a60216c598c2a27841b5 (Term) Term)

; </end encoding let shiftval>


; <Start encoding let rotval>

(declare-fun Lib.IntTypes.rotval (Term) Term)

(declare-fun Lib.IntTypes.rotval@tok () Term)
(declare-fun Tm_refine_0da46ef8643a6f8ea97a3358bc923338 (Term) Term)

; </end encoding let rotval>


; <Start encoding val Lib.IntTypes.shift_right>

(declare-fun Lib.IntTypes.shift_right (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> _: shiftval t -> int_t t l
(declare-fun Tm_arrow_cb85578b810e2f37b16ac494a6aa674f () Term)
(declare-fun Lib.IntTypes.shift_right@tok () Term)

; </end encoding val Lib.IntTypes.shift_right>


; <Start encoding val Lib.IntTypes.shift_right_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.shift_right_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.shift_right_lemma@tok () Term)

; </end encoding val Lib.IntTypes.shift_right_lemma>


; <Start encoding val Lib.IntTypes.shift_left>

(declare-fun Lib.IntTypes.shift_left (Term Term Term Term) Term)
(declare-fun Tm_refine_d96d126280e4d44b4c6d27838df6e25f (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l -> s: shiftval t -> Prims.Pure (int_t t l)
(declare-fun Tm_arrow_6c799ad9cc5918ac137f3743a8b5e99d () Term)
(declare-fun Lib.IntTypes.shift_left@tok () Term)


; </end encoding val Lib.IntTypes.shift_left>


; <Start encoding val Lib.IntTypes.shift_left_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.shift_left_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.shift_left_lemma@tok () Term)
(declare-fun Tm_refine_fffc918f3ac13711d39fee794fcdce53 (Term Term) Term)
(declare-fun Tm_refine_3667fd6eabf06c7cb385f1857e7237ec (Term Term Term) Term)

; </end encoding val Lib.IntTypes.shift_left_lemma>


; <Start encoding val Lib.IntTypes.rotate_right>

(declare-fun Tm_refine_c9d824e9d15067e06b6c696358984852 (Term Term) Term)
(declare-fun Lib.IntTypes.rotate_right (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l {unsigned t} -> _: rotval t -> int_t t l
(declare-fun Tm_arrow_100a21dd06cd29d3ad5badaf63b649a0 () Term)
(declare-fun Lib.IntTypes.rotate_right@tok () Term)

; </end encoding val Lib.IntTypes.rotate_right>


; <Start encoding val Lib.IntTypes.rotate_left>


(declare-fun Lib.IntTypes.rotate_left (Term Term Term Term) Term)


(declare-fun Lib.IntTypes.rotate_left@tok () Term)

; </end encoding val Lib.IntTypes.rotate_left>


; <Start encoding let shift_right_i>

(declare-fun Tm_refine_33026181614126bf2f989b87912ad69b (Term) Term)
(declare-fun Lib.IntTypes.shift_right_i (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;s: shiftval t {unsigned t} -> u3808: int_t t l -> int_t t l
(declare-fun Tm_arrow_80450669f43858ae3009d97d5eb015a7 () Term)
(declare-fun Lib.IntTypes.shift_right_i@tok () Term)


; </end encoding let shift_right_i>


; <Start encoding let shift_left_i>


(declare-fun Lib.IntTypes.shift_left_i (Term Term Term Term) Term)


(declare-fun Lib.IntTypes.shift_left_i@tok () Term)


; </end encoding let shift_left_i>


; <Start encoding let rotate_right_i>

(declare-fun Tm_refine_fe1f2b0fb92318a15c076125042e53a3 (Term) Term)
(declare-fun Lib.IntTypes.rotate_right_i (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;s: rotval t {unsigned t} -> u3928: int_t t l -> int_t t l
(declare-fun Tm_arrow_8d531434920b1f664c07622b1f3aa2cb () Term)
(declare-fun Lib.IntTypes.rotate_right_i@tok () Term)


; </end encoding let rotate_right_i>


; <Start encoding let rotate_left_i>


(declare-fun Lib.IntTypes.rotate_left_i (Term Term Term Term) Term)


(declare-fun Lib.IntTypes.rotate_left_i@tok () Term)


; </end encoding let rotate_left_i>


; <Start encoding val Lib.IntTypes.ct_abs>

(declare-fun Tm_refine_de547f196c5d80d3c8c7650b475a5db4 () Term)

(declare-fun Lib.IntTypes.ct_abs (Term Term Term) Term)


(declare-fun Tm_refine_ab4042114500dff1eaea14b4488f3107 (Term Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l {minint t < v a} -> b: int_t t l {v b == Prims.abs (v a)}
(declare-fun Tm_arrow_bb0be73d9832fb61b570d9ca71cafff7 () Term)
(declare-fun Lib.IntTypes.ct_abs@tok () Term)


; </end encoding val Lib.IntTypes.ct_abs>


; <Start encoding val Lib.IntTypes.eq_mask>

(declare-fun Tm_refine_d13c5132af51f62dfb7018a438f66ab7 () Term)
(declare-fun Lib.IntTypes.eq_mask (Term Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t SEC -> _: int_t t SEC -> int_t t SEC
(declare-fun Tm_arrow_ddf90b607a103b2a2807495669efe916 () Term)
(declare-fun Lib.IntTypes.eq_mask@tok () Term)

; </end encoding val Lib.IntTypes.eq_mask>


; <Start encoding val Lib.IntTypes.eq_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.eq_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.eq_mask_lemma@tok () Term)



; </end encoding val Lib.IntTypes.eq_mask_lemma>


; <Start encoding val Lib.IntTypes.eq_mask_logand_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.eq_mask_logand_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.eq_mask_logand_lemma@tok () Term)



; </end encoding val Lib.IntTypes.eq_mask_logand_lemma>


; <Start encoding val Lib.IntTypes.neq_mask>


(declare-fun Lib.IntTypes.neq_mask (Term Term Term) Term)


(declare-fun Lib.IntTypes.neq_mask@tok () Term)

; </end encoding val Lib.IntTypes.neq_mask>


; <Start encoding val Lib.IntTypes.neq_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.neq_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.neq_mask_lemma@tok () Term)



; </end encoding val Lib.IntTypes.neq_mask_lemma>


; <Start encoding val Lib.IntTypes.gte_mask>


(declare-fun Lib.IntTypes.gte_mask (Term Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t SEC -> b: int_t t SEC -> int_t t SEC
(declare-fun Tm_arrow_f4afff6b394bf99658a087b1e50597af () Term)
(declare-fun Lib.IntTypes.gte_mask@tok () Term)

; </end encoding val Lib.IntTypes.gte_mask>


; <Start encoding val Lib.IntTypes.gte_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.gte_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.gte_mask_lemma@tok () Term)


; </end encoding val Lib.IntTypes.gte_mask_lemma>


; <Start encoding val Lib.IntTypes.gte_mask_logand_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.gte_mask_logand_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.gte_mask_logand_lemma@tok () Term)


; </end encoding val Lib.IntTypes.gte_mask_logand_lemma>


; <Start encoding val Lib.IntTypes.lt_mask>


(declare-fun Lib.IntTypes.lt_mask (Term Term Term) Term)


(declare-fun Lib.IntTypes.lt_mask@tok () Term)

; </end encoding val Lib.IntTypes.lt_mask>


; <Start encoding val Lib.IntTypes.lt_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lt_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lt_mask_lemma@tok () Term)


; </end encoding val Lib.IntTypes.lt_mask_lemma>


; <Start encoding val Lib.IntTypes.gt_mask>


(declare-fun Lib.IntTypes.gt_mask (Term Term Term) Term)


(declare-fun Lib.IntTypes.gt_mask@tok () Term)

; </end encoding val Lib.IntTypes.gt_mask>


; <Start encoding val Lib.IntTypes.gt_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.gt_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.gt_mask_lemma@tok () Term)


; </end encoding val Lib.IntTypes.gt_mask_lemma>


; <Start encoding val Lib.IntTypes.lte_mask>


(declare-fun Lib.IntTypes.lte_mask (Term Term Term) Term)


(declare-fun Lib.IntTypes.lte_mask@tok () Term)

; </end encoding val Lib.IntTypes.lte_mask>


; <Start encoding val Lib.IntTypes.lte_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lte_mask_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lte_mask_lemma@tok () Term)


; </end encoding val Lib.IntTypes.lte_mask_lemma>


; <Skipped #push-options "--max_fuel 1"/>


; <Start encoding let mod_mask>

(declare-fun Tm_refine_ac5393c1a5eb4d36f425e5e42929859b (Term) Term)
(declare-fun Lib.IntTypes.mod_mask (Term Term Term) Term)

;;;;;;;;;;;;;;;;m: shiftval t {Prims.pow2 (v m) <= maxint t} -> int_t t l
(declare-fun Tm_arrow_c9aff873c0bf731dfea3380f29483048 () Term)
(declare-fun Lib.IntTypes.mod_mask@tok () Term)


; </end encoding let mod_mask>


; <Skipped #pop-options/>


; <Start encoding val Lib.IntTypes.mod_mask_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mod_mask_lemma (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mod_mask_lemma@tok () Term)
(declare-fun Tm_refine_36a04e927def1e73ac998ceb9d1e059e (Term) Term)

; </end encoding val Lib.IntTypes.mod_mask_lemma>


; <Start encoding val Lib.IntTypes.cast_mod>




(declare-fun Lib.IntTypes.cast_mod (Term Term Term Term Term) Term)




;;;;;;;;;;;;;;;;t': inttype{signed t'} -> l': secrecy_level{PUB? l \/ SEC? l'} -> a: int_t t l   -> b: int_t t' l' {v b == v a @%. t'}
(declare-fun Tm_arrow_4a81128d567f82aeedd03414f169c371 () Term)
(declare-fun Lib.IntTypes.cast_mod@tok () Term)


; </end encoding val Lib.IntTypes.cast_mod>


; <Start encoding let op_Plus_Bang>

(declare-fun Lib.IntTypes.op_Plus_Bang (Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a + v b) t} -> int_t t l
(declare-fun Tm_arrow_4748061ecbd4912a48b6da82af3774a4 (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a + v b) t} -> int_t t l
(declare-fun Tm_arrow_27f910cf3d6a7631b9ff421de5d4d192 () Term)
(declare-fun Lib.IntTypes.op_Plus_Bang@tok () Term)



; </end encoding let op_Plus_Bang>


; <Start encoding let op_Plus_Dot>


(declare-fun Lib.IntTypes.op_Plus_Dot (Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_26e1564cd439c7a51d9fb0abd624cd07 (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_c0fea3f793b80ab8f3a9d6f15a203cfc () Term)
(declare-fun Lib.IntTypes.op_Plus_Dot@tok () Term)



; </end encoding let op_Plus_Dot>


; <Start encoding let op_Star_Bang>


(declare-fun Lib.IntTypes.op_Star_Bang (Term Term) Term)


;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a * v b) t} -> int_t t l
(declare-fun Tm_arrow_8d9b837067a652cd46cbe330b5a57ae8 (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a * v b) t} -> int_t t l
(declare-fun Tm_arrow_b123053daf9a361af825b854f405b211 () Term)
(declare-fun Lib.IntTypes.op_Star_Bang@tok () Term)




; </end encoding let op_Star_Bang>


; <Start encoding let op_Star_Dot>


(declare-fun Lib.IntTypes.op_Star_Dot (Term Term) Term)


;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_82d7b669c6fcb8647d58e1305f409fdd () Term)
(declare-fun Lib.IntTypes.op_Star_Dot@tok () Term)



; </end encoding let op_Star_Dot>


; <Start encoding let op_Subtraction_Bang>

(declare-fun Lib.IntTypes.op_Subtraction_Bang (Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a - v b) t} -> int_t t l
(declare-fun Tm_arrow_cf0576d9b83132b1c4b2d704c1820e74 (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l -> b: int_t t l {range (v a - v b) t} -> int_t t l
(declare-fun Tm_arrow_3abf4cc2b13e332a0d31f351bff3a903 () Term)
(declare-fun Lib.IntTypes.op_Subtraction_Bang@tok () Term)



; </end encoding let op_Subtraction_Bang>


; <Start encoding let op_Subtraction_Dot>


(declare-fun Lib.IntTypes.op_Subtraction_Dot (Term Term) Term)



(declare-fun Lib.IntTypes.op_Subtraction_Dot@tok () Term)



; </end encoding let op_Subtraction_Dot>


; <Start encoding let op_Greater_Greater_Dot>

(declare-fun Lib.IntTypes.op_Greater_Greater_Dot (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> _: shiftval t -> int_t t l
(declare-fun Tm_arrow_69077372bac495d5eb2b3177362e29d2 (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> _: shiftval t -> int_t t l
(declare-fun Tm_arrow_dbca19db741b233e4ae08e8783dc8fb4 () Term)
(declare-fun Lib.IntTypes.op_Greater_Greater_Dot@tok () Term)


; </end encoding let op_Greater_Greater_Dot>


; <Start encoding let op_Less_Less_Dot>

(declare-fun Lib.IntTypes.op_Less_Less_Dot (Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l -> s: shiftval t -> Prims.Pure (int_t t l)
(declare-fun Tm_arrow_62470b697250b31d36f03c19740fcfcf (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l -> s: shiftval t -> Prims.Pure (int_t t l)
(declare-fun Tm_arrow_d2afc86153ec435e72e617f8e9cdc18a () Term)
(declare-fun Lib.IntTypes.op_Less_Less_Dot@tok () Term)



; </end encoding let op_Less_Less_Dot>


; <Start encoding let op_Greater_Greater_Greater_Dot>

(declare-fun Lib.IntTypes.op_Greater_Greater_Greater_Dot (Term Term) Term)

;;;;;;;;;;;;;;;;a: int_t t l {unsigned t} -> _: rotval t -> int_t t l
(declare-fun Tm_arrow_4efe32f35067e386b3faf62cd231f052 (Term Term) Term)
;;;;;;;;;;;;;;;;a: int_t t l {unsigned t} -> _: rotval t -> int_t t l
(declare-fun Tm_arrow_191f26ffff2f2d59959721d8a44fed1e () Term)
(declare-fun Lib.IntTypes.op_Greater_Greater_Greater_Dot@tok () Term)



; </end encoding let op_Greater_Greater_Greater_Dot>


; <Start encoding let op_Less_Less_Less_Dot>

(declare-fun Lib.IntTypes.op_Less_Less_Less_Dot (Term Term) Term)



(declare-fun Lib.IntTypes.op_Less_Less_Less_Dot@tok () Term)



; </end encoding let op_Less_Less_Less_Dot>


; <Start encoding let op_Hat_Dot>

(declare-fun Lib.IntTypes.op_Hat_Dot (Term Term) Term)

;;;;;;;;;;;;;;;;_: int_t t l -> _: int_t t l -> int_t t l
(declare-fun Tm_arrow_d29fc23e6a30c0c4a0a1275a88868b8e () Term)
(declare-fun Lib.IntTypes.op_Hat_Dot@tok () Term)


; </end encoding let op_Hat_Dot>


; <Start encoding let op_Bar_Dot>

(declare-fun Lib.IntTypes.op_Bar_Dot (Term Term) Term)


(declare-fun Lib.IntTypes.op_Bar_Dot@tok () Term)


; </end encoding let op_Bar_Dot>


; <Start encoding let op_Amp_Dot>

(declare-fun Lib.IntTypes.op_Amp_Dot (Term Term) Term)


(declare-fun Lib.IntTypes.op_Amp_Dot@tok () Term)


; </end encoding let op_Amp_Dot>


; <Start encoding let op_Tilde_Dot>

(declare-fun Lib.IntTypes.op_Tilde_Dot (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> int_t t l
(declare-fun Tm_arrow_049b1b0f12668169ec345ed911fc709a (Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t l -> int_t t l
(declare-fun Tm_arrow_0f6885253189468e65338d1c5252543b () Term)
(declare-fun Lib.IntTypes.op_Tilde_Dot@tok () Term)


; </end encoding let op_Tilde_Dot>


; <Start encoding val Lib.IntTypes.div>


(declare-fun Tm_refine_e450d0eda8ec6ce5c9eff42d01f0e81a (Term Term) Term)
(declare-fun Lib.IntTypes.div (Term Term Term) Term)


;;;;;;;;;;;;;;;;a: int_t t PUB -> b: int_t t PUB {v b <> 0 /\ (unsigned t \/ range (v a / v b) t)} -> int_t t PUB
(declare-fun Tm_arrow_75c9d8cffd77af696d9868df0ceb9cf9 () Term)
(declare-fun Lib.IntTypes.div@tok () Term)

; </end encoding val Lib.IntTypes.div>


; <Start encoding val Lib.IntTypes.div_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.div_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.div_lemma@tok () Term)



; </end encoding val Lib.IntTypes.div_lemma>


; <Start encoding val Lib.IntTypes.mod>



(declare-fun Lib.IntTypes.mod (Term Term Term) Term)



(declare-fun Lib.IntTypes.mod@tok () Term)

; </end encoding val Lib.IntTypes.mod>


; <Start encoding val Lib.IntTypes.mod_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.mod_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.mod_lemma@tok () Term)



; </end encoding val Lib.IntTypes.mod_lemma>


; <Start encoding val Lib.IntTypes.eq>

(declare-fun Lib.IntTypes.eq (Term Term Term) Term)
;;;;;;;;;;;;;;;;_: int_t t PUB -> _: int_t t PUB -> Prims.bool
(declare-fun Tm_arrow_0659d9623134a9bcc70d6289b6fd28bf () Term)
(declare-fun Lib.IntTypes.eq@tok () Term)

; </end encoding val Lib.IntTypes.eq>


; <Start encoding val Lib.IntTypes.eq_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.eq_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.eq_lemma@tok () Term)


; </end encoding val Lib.IntTypes.eq_lemma>


; <Start encoding val Lib.IntTypes.ne>

(declare-fun Lib.IntTypes.ne (Term Term Term) Term)

(declare-fun Lib.IntTypes.ne@tok () Term)

; </end encoding val Lib.IntTypes.ne>


; <Start encoding val Lib.IntTypes.ne_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.ne_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.ne_lemma@tok () Term)


; </end encoding val Lib.IntTypes.ne_lemma>


; <Start encoding val Lib.IntTypes.lt>

(declare-fun Lib.IntTypes.lt (Term Term Term) Term)

(declare-fun Lib.IntTypes.lt@tok () Term)

; </end encoding val Lib.IntTypes.lt>


; <Start encoding val Lib.IntTypes.lt_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lt_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lt_lemma@tok () Term)

; </end encoding val Lib.IntTypes.lt_lemma>


; <Start encoding val Lib.IntTypes.lte>

(declare-fun Lib.IntTypes.lte (Term Term Term) Term)

(declare-fun Lib.IntTypes.lte@tok () Term)

; </end encoding val Lib.IntTypes.lte>


; <Start encoding val Lib.IntTypes.lte_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.lte_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.lte_lemma@tok () Term)

; </end encoding val Lib.IntTypes.lte_lemma>


; <Start encoding val Lib.IntTypes.gt>

(declare-fun Lib.IntTypes.gt (Term Term Term) Term)

(declare-fun Lib.IntTypes.gt@tok () Term)

; </end encoding val Lib.IntTypes.gt>


; <Start encoding val Lib.IntTypes.gt_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.gt_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.gt_lemma@tok () Term)

; </end encoding val Lib.IntTypes.gt_lemma>


; <Start encoding val Lib.IntTypes.gte>

(declare-fun Lib.IntTypes.gte (Term Term Term) Term)

(declare-fun Lib.IntTypes.gte@tok () Term)

; </end encoding val Lib.IntTypes.gte>


; <Start encoding val Lib.IntTypes.gte_lemma>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.IntTypes.gte_lemma (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.IntTypes.gte_lemma@tok () Term)

; </end encoding val Lib.IntTypes.gte_lemma>


; <Start encoding let op_Slash_Dot>


(declare-fun Lib.IntTypes.op_Slash_Dot (Term) Term)


;;;;;;;;;;;;;;;;a: int_t t PUB -> b: int_t t PUB {v b <> 0 /\ (unsigned t \/ range (v a / v b) t)} -> int_t t PUB
(declare-fun Tm_arrow_6a3e920b5265e08755ab0451be7385d0 (Term) Term)
;;;;;;;;;;;;;;;;a: int_t t PUB -> b: int_t t PUB {v b <> 0 /\ (unsigned t \/ range (v a / v b) t)} -> int_t t PUB
(declare-fun Tm_arrow_ac512cb9ff42efd177fb9527bdceefaa () Term)
(declare-fun Lib.IntTypes.op_Slash_Dot@tok () Term)




; </end encoding let op_Slash_Dot>


; <Start encoding let op_Percent_Dot>


(declare-fun Lib.IntTypes.op_Percent_Dot (Term) Term)




(declare-fun Lib.IntTypes.op_Percent_Dot@tok () Term)




; </end encoding let op_Percent_Dot>


; <Start encoding let op_Equals_Dot>

(declare-fun Lib.IntTypes.op_Equals_Dot (Term) Term)
;;;;;;;;;;;;;;;;_: int_t t PUB -> _: int_t t PUB -> Prims.bool
(declare-fun Tm_arrow_cc646d4915292a473ee835f7737d9776 (Term) Term)
;;;;;;;;;;;;;;;;_: int_t t PUB -> _: int_t t PUB -> Prims.bool
(declare-fun Tm_arrow_a9fadd2033f434155d72b2bcc7d0f9a6 () Term)
(declare-fun Lib.IntTypes.op_Equals_Dot@tok () Term)


; </end encoding let op_Equals_Dot>


; <Start encoding let op_Less_Greater_Dot>

(declare-fun Lib.IntTypes.op_Less_Greater_Dot (Term) Term)


(declare-fun Lib.IntTypes.op_Less_Greater_Dot@tok () Term)


; </end encoding let op_Less_Greater_Dot>


; <Start encoding let op_Less_Dot>

(declare-fun Lib.IntTypes.op_Less_Dot (Term) Term)


(declare-fun Lib.IntTypes.op_Less_Dot@tok () Term)


; </end encoding let op_Less_Dot>


; <Start encoding let op_Less_Equals_Dot>

(declare-fun Lib.IntTypes.op_Less_Equals_Dot (Term) Term)


(declare-fun Lib.IntTypes.op_Less_Equals_Dot@tok () Term)


; </end encoding let op_Less_Equals_Dot>


; <Start encoding let op_Greater_Dot>

(declare-fun Lib.IntTypes.op_Greater_Dot (Term) Term)


(declare-fun Lib.IntTypes.op_Greater_Dot@tok () Term)


; </end encoding let op_Greater_Dot>


; <Start encoding let op_Greater_Equals_Dot>

(declare-fun Lib.IntTypes.op_Greater_Equals_Dot (Term) Term)


(declare-fun Lib.IntTypes.op_Greater_Equals_Dot@tok () Term)


; </end encoding let op_Greater_Equals_Dot>


; End Externals for interface Lib.IntTypes

(push) ;; push{1

; Internals for Lib.Sequence


; encoding sigelt #set-options "--z3rlimit 30 --max_fuel 0 --max_ifuel 0 --using_facts_from '-* +Prims +FStar.Math.Lemmas +FStar.Seq +Lib.IntTypes +Lib.Sequence'"


; <Skipped #set-options "--z3rlimit 30 --max_fuel 0 --max_ifuel 0 --using_facts_from '-* +Prims +FStar.Math.Lemmas +FStar.Seq +Lib.IntTypes +Lib.Sequence'"/>


; encoding sigelt #set-options "--z3refresh"


; <Skipped #set-options "--z3refresh"/>


; encoding sigelt let seq


; <Start encoding let seq>

(declare-fun Lib.Sequence.seq (Term) Term)

(declare-fun Lib.Sequence.seq@tok () Term)

; </end encoding let seq>


; encoding sigelt let length


; <Start encoding let length>

(declare-fun Lib.Sequence.length (Term Term) Term)
;;;;;;;;;;;;;;;;s: seq a -> Prims.nat
(declare-fun Tm_arrow_c955c1672a99513c453baacf3dad6c43 () Term)
(declare-fun Lib.Sequence.length@tok () Term)

; </end encoding let length>


; encoding sigelt let lseq


; <Start encoding let lseq>


(declare-fun Lib.Sequence.lseq (Term Term) Term)

;;;;;;;;;;;;;;;;a: Type -> len: n: Prims.nat{n <= Prims.pow2 32 - 1} -> Type
(declare-fun Tm_arrow_402479550b7e4f0994d21ca08d1a2b3b () Term)
(declare-fun Lib.Sequence.lseq@tok () Term)

(declare-fun Tm_refine_d8d83307254a8900dd20598654272e42 (Term Term) Term)

; </end encoding let lseq>


; encoding sigelt let to_seq


; <Start encoding let to_seq>


(declare-fun Lib.Sequence.to_seq (Term Term Term) Term)

;;;;;;;;;;;;;;;;l: lseq a len -> seq a
(declare-fun Tm_arrow_09d72b37aa0bcb65dce68f539ac835db () Term)
(declare-fun Lib.Sequence.to_seq@tok () Term)


; </end encoding let to_seq>


; encoding sigelt let to_lseq


; <Start encoding let to_lseq>

(declare-fun Tm_refine_d6b65d48a86d318eee5320e9fc07ce57 (Term) Term)
(declare-fun Lib.Sequence.to_lseq (Term Term) Term)

(declare-fun Tm_refine_c114bed39664ffa4684b1d2aae6a8138 (Term Term) Term)
;;;;;;;;;;;;;;;;s: seq a {length s <= Prims.pow2 32 - 1} -> l: lseq a (length s) {l == s}
(declare-fun Tm_arrow_90795f179bab07ee4e24873ef98824f3 () Term)
(declare-fun Lib.Sequence.to_lseq@tok () Term)



; </end encoding let to_lseq>


; encoding sigelt val Lib.Sequence.index


; <Start encoding val Lib.Sequence.index>


(declare-fun Tm_refine_dee0f34b44c44e6d512c6db0858b92ef (Term) Term)
(declare-fun Lib.Sequence.index (Term Term Term Term) Term)


(declare-fun Tm_refine_5d7fc65a01f63f2bc577298c179f855a (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s: lseq a len -> i: (n: Prims.nat{n <= Prims.pow2 32 - 1}){i < len}   -> r: a{r == FStar.Seq.Base.index (to_seq s) i}
(declare-fun Tm_arrow_906acd1ee5b18b038d050e33b988f798 () Term)
(declare-fun Lib.Sequence.index@tok () Term)


; </end encoding val Lib.Sequence.index>


; encoding sigelt val Lib.Sequence.create


; <Start encoding val Lib.Sequence.create>


(declare-fun Lib.Sequence.create (Term Term Term) Term)

(declare-fun Tm_refine_fc1f69e4229a94f85b0de30f1747a8d3 (Term Term Term) Term)
;;;;;;;;;;;;;;;;len: n: Prims.nat{n <= Prims.pow2 32 - 1} -> init: a   -> s:     lseq a len       { to_seq s == FStar.Seq.Base.create len init /\         (forall (i: Prims.nat). {:pattern index s i} i < len ==> index s i == init) }
(declare-fun Tm_arrow_78aa0872ec2b385d7ba04dd3e74c1fda () Term)
(declare-fun Lib.Sequence.create@tok () Term)


; </end encoding val Lib.Sequence.create>


; encoding sigelt val Lib.Sequence.concat


; <Start encoding val Lib.Sequence.concat>


(declare-fun Tm_refine_485bc5b41c309040098b0ab067e4ac2c (Term) Term)
(declare-fun Lib.Sequence.concat (Term Term Term Term Term) Term)


(declare-fun Tm_refine_fb77d4109290540100357b20e0a78486 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s0: lseq a len0 -> s1: lseq a len1   -> s2: lseq a (len0 + len1) {to_seq s2 == FStar.Seq.Base.append (to_seq s0) (to_seq s1)}
(declare-fun Tm_arrow_35828e9cbe1c7adb939a46cef43326b5 () Term)
(declare-fun Lib.Sequence.concat@tok () Term)


; </end encoding val Lib.Sequence.concat>


; encoding sigelt let op_At_Bar


; <Start encoding let op_At_Bar>



(declare-fun Lib.Sequence.op_At_Bar (Term Term Term Term Term) Term)




(declare-fun Lib.Sequence.op_At_Bar@tok () Term)




; </end encoding let op_At_Bar>


; encoding sigelt val Lib.Sequence.to_list


; <Start encoding val Lib.Sequence.to_list>

(declare-fun Lib.Sequence.to_list (Term Term) Term)
(declare-fun Tm_refine_0be8b2db70abaa1813cc11a1702ca81c (Term Term) Term)
;;;;;;;;;;;;;;;;s: seq a   -> l: Prims.list a {FStar.List.Tot.Base.length l = length s /\ l == FStar.Seq.Base.seq_to_list s}
(declare-fun Tm_arrow_15b8cd9dba5214455a8d904e976e88a1 () Term)
(declare-fun Lib.Sequence.to_list@tok () Term)


; </end encoding val Lib.Sequence.to_list>


; encoding sigelt val Lib.Sequence.of_list


; <Start encoding val Lib.Sequence.of_list>

(declare-fun Tm_refine_56609cb097df748006aafa90a98ed73d (Term) Term)
(declare-fun Lib.Sequence.of_list (Term Term) Term)

(declare-fun Tm_refine_9648b69b31e1b213c774bbe4021cb7ba (Term Term) Term)
;;;;;;;;;;;;;;;;l: Prims.list a {FStar.List.Tot.Base.length l <= Prims.pow2 32 - 1}   -> s: lseq a (FStar.List.Tot.Base.length l) {to_seq s == FStar.Seq.Base.seq_of_list l}
(declare-fun Tm_arrow_cef04cd62e131041afb5a6daf8cf9d40 () Term)
(declare-fun Lib.Sequence.of_list@tok () Term)


; </end encoding val Lib.Sequence.of_list>


; encoding sigelt val Lib.Sequence.of_list_index


; <Start encoding val Lib.Sequence.of_list_index>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.of_list_index (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.of_list_index@tok () Term)
(declare-fun Tm_refine_47ae7ca369ae1f7b27b6bcbb429a1323 (Term) Term)


; </end encoding val Lib.Sequence.of_list_index>


; encoding sigelt val Lib.Sequence.equal


; <Start encoding val Lib.Sequence.equal>


(declare-fun Lib.Sequence.equal (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;s1: lseq a len -> s2: lseq a len -> Type
(declare-fun Tm_arrow_c1b3d1c3344c74cd37aa9b07fa1e53cd () Term)
(declare-fun Lib.Sequence.equal@tok () Term)

; </end encoding val Lib.Sequence.equal>


; encoding sigelt val Lib.Sequence.eq_intro


; <Start encoding val Lib.Sequence.eq_intro>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.eq_intro (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.eq_intro@tok () Term)
(declare-fun Tm_refine_f329878e92bb1efc120000057d7014bb () Term)
(declare-fun Tm_refine_168ba734386141cfed2015802f4c2d27 (Term) Term)

; </end encoding val Lib.Sequence.eq_intro>


; encoding sigelt val Lib.Sequence.eq_elim


; <Start encoding val Lib.Sequence.eq_elim>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.eq_elim (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.eq_elim@tok () Term)


; </end encoding val Lib.Sequence.eq_elim>


; encoding sigelt let createL


; <Start encoding let createL>


(declare-fun Lib.Sequence.createL (Term Term) Term)



(declare-fun Lib.Sequence.createL@tok () Term)



; </end encoding let createL>


; encoding sigelt val Lib.Sequence.upd


; <Start encoding val Lib.Sequence.upd>



(declare-fun Lib.Sequence.upd (Term Term Term Term Term) Term)




(declare-fun Tm_refine_6e296b6b449dd8fe1af30e0e60e4afd6 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s: lseq a len -> n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){n < len} -> x: a   -> o:     lseq a len       { to_seq o == FStar.Seq.Base.upd (to_seq s) n x /\ index o n == x /\         (forall (i: n: Prims.nat{n <= Prims.pow2 32 - 1}). {:pattern index s i}             i < len /\ i <> n ==> index o i == index s i) }
(declare-fun Tm_arrow_c130bae04a7de0513cf0fb2848ae8b7a () Term)
(declare-fun Lib.Sequence.upd@tok () Term)




; </end encoding val Lib.Sequence.upd>


; encoding sigelt val Lib.Sequence.member


; <Start encoding val Lib.Sequence.member>


(declare-fun Lib.Sequence.member (Term Term Term Term) Term)

;;;;;;;;;;;;;;;;_: a -> _: lseq a len -> Prims.bool
(declare-fun Tm_arrow_11ec309bbed030d41397aa4132789b13 () Term)
(declare-fun Lib.Sequence.member@tok () Term)

; </end encoding val Lib.Sequence.member>


; encoding sigelt let op_String_Access


; <Start encoding let op_String_Access>


(declare-fun Lib.Sequence.op_String_Access (Term Term) Term)



;;;;;;;;;;;;;;;;s: lseq a len -> i: (n: Prims.nat{n <= Prims.pow2 32 - 1}){i < len}   -> r: a{r == FStar.Seq.Base.index (to_seq s) i}
(declare-fun Tm_arrow_427ce8cad65a6f080f5b16fb63639edf (Term Term) Term)
;;;;;;;;;;;;;;;;s: lseq a len -> i: (n: Prims.nat{n <= Prims.pow2 32 - 1}){i < len}   -> r: a{r == FStar.Seq.Base.index (to_seq s) i}
(declare-fun Tm_arrow_edf9ace2f612a1fac014e00457eca684 () Term)
(declare-fun Lib.Sequence.op_String_Access@tok () Term)





; </end encoding let op_String_Access>


; encoding sigelt let op_String_Assignment


; <Start encoding let op_String_Assignment>


(declare-fun Lib.Sequence.op_String_Assignment (Term Term) Term)





;;;;;;;;;;;;;;;;s: lseq a len -> n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){n < len} -> x: a   -> o:     lseq a len       { to_seq o == FStar.Seq.Base.upd (to_seq s) n x /\ index o n == x /\         (forall (i: n: Prims.nat{n <= Prims.pow2 32 - 1}). {:pattern index s i}             i < len /\ i <> n ==> index o i == index s i) }
(declare-fun Tm_arrow_7001448f8ee16add16f5656ba0013e2a (Term Term) Term)
;;;;;;;;;;;;;;;;s: lseq a len -> n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){n < len} -> x: a   -> o:     lseq a len       { to_seq o == FStar.Seq.Base.upd (to_seq s) n x /\ index o n == x /\         (forall (i: n: Prims.nat{n <= Prims.pow2 32 - 1}). {:pattern index s i}             i < len /\ i <> n ==> index o i == index s i) }
(declare-fun Tm_arrow_e9afba6bb43007e9ce7e2008f1648aa9 () Term)
(declare-fun Lib.Sequence.op_String_Assignment@tok () Term)







; </end encoding let op_String_Assignment>


; encoding sigelt val Lib.Sequence.sub


; <Start encoding val Lib.Sequence.sub>



(declare-fun Tm_refine_b9bf9d0f857340a8d758087374a41c06 (Term Term) Term)
(declare-fun Lib.Sequence.sub (Term Term Term Term Term) Term)




(declare-fun Tm_refine_11888fecf812f197898447624c24e106 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s1: lseq a len ->     start: n: Prims.nat{n <= Prims.pow2 32 - 1} ->     n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){start + n <= len}   -> s2:     lseq a n       { to_seq s2 == FStar.Seq.Base.slice (to_seq s1) start (start + n) /\         (forall (k: Prims.nat{k < n}). {:pattern index s2 k} index s2 k == index s1 (start + k)) }
(declare-fun Tm_arrow_b64ce8911e15fcad95a7c5deeb8d0443 () Term)
(declare-fun Lib.Sequence.sub@tok () Term)



; </end encoding val Lib.Sequence.sub>


; encoding sigelt let slice


; <Start encoding let slice>



(declare-fun Tm_refine_e5df7b46d8b4d6787f7fc44dbc0015e5 (Term Term) Term)
(declare-fun Lib.Sequence.slice (Term Term Term Term Term) Term)




(declare-fun Tm_refine_72530680bea79807d75cb9d6e7632258 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;s1: lseq a len ->     start: n: Prims.nat{n <= Prims.pow2 32 - 1} ->     fin: (n: Prims.nat{n <= Prims.pow2 32 - 1}){start <= fin /\ fin <= len}   -> s2:     lseq a (fin - start)       { to_seq s2 == FStar.Seq.Base.slice (to_seq s1) start (start + (fin - start)) /\         (forall (k: Prims.nat{k < fin - start}). {:pattern index s2 k}             index s2 k == index s1 (start + k)) }
(declare-fun Tm_arrow_333bf215d02b8123c9d7a4df437231ca () Term)
(declare-fun Lib.Sequence.slice@tok () Term)






; </end encoding let slice>


; encoding sigelt val Lib.Sequence.update_sub


; <Start encoding val Lib.Sequence.update_sub>




(declare-fun Lib.Sequence.update_sub (Term Term Term Term Term Term) Term)



(declare-fun Tm_refine_0b72b617030921a422a8020811c2f320 (Term Term Term) Term)
(declare-fun Tm_refine_ccbef96ee6e044a9cf0b4353c2d1f06e (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;i: lseq a len ->     start: n: Prims.nat{n <= Prims.pow2 32 - 1} ->     n: (n: Prims.nat{n <= Prims.pow2 32 - 1}){start + n <= len} ->     x: lseq a n   -> o:     lseq a len       { sub o start n == x /\         (forall (k: Prims.nat{0 <= k /\ k < start \/ start + n <= k /\ k < len}).             {:pattern index o k}             index o k == index i k) }
(declare-fun Tm_arrow_f7a4d97f1cabc9f31007f8cb7728030a () Term)
(declare-fun Lib.Sequence.update_sub@tok () Term)



; </end encoding val Lib.Sequence.update_sub>


; encoding sigelt val Lib.Sequence.lemma_update_sub


; <Start encoding val Lib.Sequence.lemma_update_sub>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_update_sub (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_update_sub@tok () Term)

; </end encoding val Lib.Sequence.lemma_update_sub>


; encoding sigelt val Lib.Sequence.lemma_concat2


; <Start encoding val Lib.Sequence.lemma_concat2>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_concat2 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_concat2@tok () Term)

; </end encoding val Lib.Sequence.lemma_concat2>


; encoding sigelt val Lib.Sequence.lemma_concat3


; <Start encoding val Lib.Sequence.lemma_concat3>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_concat3 (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_concat3@tok () Term)

; </end encoding val Lib.Sequence.lemma_concat3>


; encoding sigelt let update_slice


; <Start encoding let update_slice>




(declare-fun Lib.Sequence.update_slice (Term Term Term Term Term Term) Term)



(declare-fun Tm_refine_3052ec3720e1ed13755a7fc6dc0b9028 (Term Term Term) Term)
(declare-fun Tm_refine_592c3e4b9f80b431b7d6e158f237b4e5 (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;i: lseq a len ->     start: n: Prims.nat{n <= Prims.pow2 32 - 1} ->     fin: (n: Prims.nat{n <= Prims.pow2 32 - 1}){start <= fin /\ fin <= len} ->     upd: lseq a (fin - start)   -> o:     lseq a len       { sub o start (fin - start) == upd /\         (forall (k: Prims.nat{0 <= k /\ k < start \/ start + (fin - start) <= k /\ k < len}).             {:pattern index o k}             index o k == index i k) }
(declare-fun Tm_arrow_3921a322303e79b7a7dcc2eb194c8b3e () Term)
(declare-fun Lib.Sequence.update_slice@tok () Term)






; </end encoding let update_slice>


; encoding sigelt val Lib.Sequence.createi


; <Start encoding val Lib.Sequence.createi>




(declare-fun Lib.Sequence.createi (Term Term Term) Term)



(declare-fun Tm_refine_abbfe228c7a3d1ae1f16ed243e0e6a67 (Term Term Term) Term)
;;;;;;;;;;;;;;;;len: n: Prims.nat{n <= Prims.pow2 32 - 1} -> init: (i: Prims.nat{i < len} -> a)   -> s: lseq a len {forall (i: Prims.nat). {:pattern index s i} i < len ==> index s i == init i}
(declare-fun Tm_arrow_30c0212cf2b2743da1221d35c70bee68 () Term)
(declare-fun Lib.Sequence.createi@tok () Term)


; </end encoding val Lib.Sequence.createi>


; encoding sigelt val Lib.Sequence.mapi


; <Start encoding val Lib.Sequence.mapi>



;;;;;;;;;;;;;;;;i: Prims.nat{i < len} -> _: a -> b
(declare-fun Tm_arrow_b57b4ee3d9891bb96d82ae5fb8c7337d (Term Term Term) Term)
(declare-fun Lib.Sequence.mapi (Term Term Term Term Term) Term)



(declare-fun Tm_refine_08e86b094c0977c1a8d0b3ef5d3ac5fc (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: (i: Prims.nat{i < len} -> _: a -> b) -> s1: lseq a len   -> s2:     lseq b len       {forall (i: Prims.nat). {:pattern index s2 i} i < len ==> index s2 i == f i (index s1 i)}
(declare-fun Tm_arrow_4a02745d2900f213eb456b218e2b8f5a () Term)
(declare-fun Lib.Sequence.mapi@tok () Term)


; </end encoding val Lib.Sequence.mapi>


; encoding sigelt val Lib.Sequence.map


; <Start encoding val Lib.Sequence.map>



(declare-fun Lib.Sequence.map (Term Term Term Term Term) Term)


(declare-fun Tm_refine_40d37ebab7c1b683bff04f4efbb0b134 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: (_: a -> b) -> s1: lseq a len   -> s2:     lseq b len       {forall (i: Prims.nat). {:pattern index s2 i} i < len ==> index s2 i == f (index s1 i)}
(declare-fun Tm_arrow_83912437746238d6e7f0c1635a6a867e () Term)
(declare-fun Lib.Sequence.map@tok () Term)


; </end encoding val Lib.Sequence.map>


; encoding sigelt val Lib.Sequence.map2i


; <Start encoding val Lib.Sequence.map2i>



;;;;;;;;;;;;;;;;i: Prims.nat{i < len} -> _: a -> _: b -> c
(declare-fun Tm_arrow_0527e852c1e27810fd7c6e30e6ff41d1 (Term Term Term Term) Term)
(declare-fun Lib.Sequence.map2i (Term Term Term Term Term Term Term) Term)



(declare-fun Tm_refine_99eeed5fd3286eeb9a4a08d485d2eb8d (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: (i: Prims.nat{i < len} -> _: a -> _: b -> c) -> s1: lseq a len -> s2: lseq b len   -> s3:     lseq c len       { forall (i: Prims.nat). {:pattern index s3 i}           i < len ==> index s3 i == f i (index s1 i) (index s2 i) }
(declare-fun Tm_arrow_0114f30140d725d4f2de5f8af1eee06d () Term)
(declare-fun Lib.Sequence.map2i@tok () Term)


; </end encoding val Lib.Sequence.map2i>


; encoding sigelt val Lib.Sequence.map2


; <Start encoding val Lib.Sequence.map2>


;;;;;;;;;;;;;;;;_: a -> _: b -> c
(declare-fun Tm_arrow_31983ce7bb3fa3288ec94b088df0f02a (Term Term Term) Term)
(declare-fun Lib.Sequence.map2 (Term Term Term Term Term Term Term) Term)


(declare-fun Tm_refine_9341db820105e61c7250a290c9437d90 (Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;f: (_: a -> _: b -> c) -> s1: lseq a len -> s2: lseq b len   -> s3:     lseq c len       { forall (i: Prims.nat). {:pattern index s3 i}           i < len ==> index s3 i == f (index s1 i) (index s2 i) }
(declare-fun Tm_arrow_0f4bad0d18803a08fa4c68b51db1a37e () Term)
(declare-fun Lib.Sequence.map2@tok () Term)


; </end encoding val Lib.Sequence.map2>


; encoding sigelt val Lib.Sequence.for_all


; <Start encoding val Lib.Sequence.for_all>



(declare-fun Lib.Sequence.for_all (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;_: (_: a -> Prims.bool) -> _: lseq a len -> Prims.bool
(declare-fun Tm_arrow_fc239e6ab98f839c5aad770ef3ee5196 () Term)
(declare-fun Lib.Sequence.for_all@tok () Term)

; </end encoding val Lib.Sequence.for_all>


; encoding sigelt val Lib.Sequence.for_all2


; <Start encoding val Lib.Sequence.for_all2>


;;;;;;;;;;;;;;;;_: a -> _: b -> Prims.bool
(declare-fun Tm_arrow_cb3cb3470a61f80078291e3d75169976 (Term Term) Term)
(declare-fun Lib.Sequence.for_all2 (Term Term Term Term Term Term) Term)


;;;;;;;;;;;;;;;;_: (_: a -> _: b -> Prims.bool) -> s1: lseq a len -> s2: lseq b len -> Prims.bool
(declare-fun Tm_arrow_a864cb27fd16b8b92991094f3bf1d077 () Term)
(declare-fun Lib.Sequence.for_all2@tok () Term)

; </end encoding val Lib.Sequence.for_all2>


; encoding sigelt val Lib.Sequence.repeati_blocks


; <Start encoding val Lib.Sequence.repeati_blocks>


(declare-fun Tm_refine_7af7abfd9fa791df66706ab563886df2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i < length inp / blocksize} -> _: lseq a blocksize -> _: b -> b
(declare-fun Tm_arrow_c23d18c724c9dc3d8cafa5367905403d (Term Term Term Term) Term)
(declare-fun Tm_refine_1f6c16a51cd4ba3256b95ca590c832c5 (Term Term Term) Term)
(declare-fun Tm_refine_061591ee203e50615d430738132b177a (Term Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i == length inp / blocksize} ->     len: (n: Prims.nat{n <= Prims.pow2 32 - 1}){len == length inp % blocksize} ->     s: lseq a len ->     _: b   -> b
(declare-fun Tm_arrow_52b8848eba1273ddf6a12a0011c9eef2 (Term Term Term Term) Term)
(declare-fun Lib.Sequence.repeati_blocks (Term Term Term Term Term Term Term) Term)






;;;;;;;;;;;;;;;;blocksize: n: Prims.pos{n <= Prims.pow2 32 - 1} ->     inp: seq a ->     f: (i: Prims.nat{i < length inp / blocksize} -> _: lseq a blocksize -> _: b -> b) ->     l:       (             i: Prims.nat{i == length inp / blocksize} ->             len: (n: Prims.nat{n <= Prims.pow2 32 - 1}){len == length inp % blocksize} ->             s: lseq a len ->             _: b           -> b) ->     init: b   -> b
(declare-fun Tm_arrow_26fd776c74fb560bf0928fb39a3356c8 () Term)
(declare-fun Lib.Sequence.repeati_blocks@tok () Term)

; </end encoding val Lib.Sequence.repeati_blocks>


; encoding sigelt let repeat_blocks_f


; <Start encoding let repeat_blocks_f>

(declare-fun Tm_refine_aee8f5bc805e40f3cc22e281aedfc983 () Term)
;;;;;;;;;;;;;;;;_: lseq a bs -> _: b -> b
(declare-fun Tm_arrow_a54de807e3fa0868e8631185e60ddec2 (Term Term Term) Term)


(declare-fun Lib.Sequence.repeat_blocks_f (Term Term Term Term Term Term Term Term) Term)




;;;;;;;;;;;;;;;;bs: (n: Prims.nat{n <= Prims.pow2 32 - 1}){bs > 0} ->     inp: seq a ->     f: (_: lseq a bs -> _: b -> b) ->     nb: Prims.nat{nb == length inp / bs} ->     i: Prims.nat{i < nb} ->     acc: b   -> b
(declare-fun Tm_arrow_aa4f9c8d02824b700a52e9be91309c6e () Term)
(declare-fun Lib.Sequence.repeat_blocks_f@tok () Term)





; </end encoding let repeat_blocks_f>


; encoding sigelt val Lib.Sequence.repeat_blocks


; <Start encoding val Lib.Sequence.repeat_blocks>




;;;;;;;;;;;;;;;;len: Prims.nat{len < blocksize} -> s: lseq a len -> _: b -> c
(declare-fun Tm_arrow_1c57e7214c255ac6a081dd77ae67af5e (Term Term Term Term) Term)
(declare-fun Lib.Sequence.repeat_blocks (Term Term Term Term Term Term Term Term) Term)




;;;;;;;;;;;;;;;;blocksize: n: Prims.pos{n <= Prims.pow2 32 - 1} ->     inp: seq a ->     f: (_: lseq a blocksize -> _: b -> b) ->     l: (len: Prims.nat{len < blocksize} -> s: lseq a len -> _: b -> c) ->     init: b   -> c
(declare-fun Tm_arrow_f4fe0d3bcab4ece2728fc784a06fb816 () Term)
(declare-fun Lib.Sequence.repeat_blocks@tok () Term)

; </end encoding val Lib.Sequence.repeat_blocks>


; encoding sigelt val Lib.Sequence.lemma_repeat_blocks


; <Start encoding val Lib.Sequence.lemma_repeat_blocks>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_repeat_blocks (Term Term Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_repeat_blocks@tok () Term)

; </end encoding val Lib.Sequence.lemma_repeat_blocks>


; encoding sigelt val Lib.Sequence.repeat_blocks_multi


; <Start encoding val Lib.Sequence.repeat_blocks_multi>


(declare-fun Tm_refine_b14928a18ba707004108386997fed9d6 (Term Term) Term)

(declare-fun Lib.Sequence.repeat_blocks_multi (Term Term Term Term Term Term) Term)



;;;;;;;;;;;;;;;;blocksize: n: Prims.pos{n <= Prims.pow2 32 - 1} ->     inp: seq a {length inp % blocksize = 0} ->     f: (_: lseq a blocksize -> _: b -> b) ->     init: b   -> b
(declare-fun Tm_arrow_9f6589824b7109ffc30db6c5ed9e0ddf () Term)
(declare-fun Lib.Sequence.repeat_blocks_multi@tok () Term)

; </end encoding val Lib.Sequence.repeat_blocks_multi>


; encoding sigelt val Lib.Sequence.lemma_repeat_blocks_multi


; <Start encoding val Lib.Sequence.lemma_repeat_blocks_multi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_repeat_blocks_multi (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_repeat_blocks_multi@tok () Term)

; </end encoding val Lib.Sequence.lemma_repeat_blocks_multi>


; encoding sigelt val Lib.Sequence.generate_blocks


; <Start encoding val Lib.Sequence.generate_blocks>






(declare-fun Tm_refine_3833667c59aecdf581ef615fb6194b08 (Term Term) Term)
;;;;;;;;;;;;;;;;i: Prims.nat{i < max} -> _: a i -> a (i + 1) & s: seq t {length s == len}
(declare-fun Tm_arrow_f74708e5a1524743336769c16153e901 (Term Term Term Term) Term)
(declare-fun Lib.Sequence.generate_blocks (Term Term Term Term Term Term Term) Term)







(declare-fun Tm_refine_f4f040c0afc8e02646bd007fb369c803 (Term Term Term) Term)
;;;;;;;;;;;;;;;;len: n: Prims.nat{n <= Prims.pow2 32 - 1} ->     max: Prims.nat ->     n: Prims.nat{n <= max} ->     a: (i: Prims.nat{i <= max} -> Type) ->     f: (i: Prims.nat{i < max} -> _: a i -> a (i + 1) & s: seq t {length s == len}) ->     init: a 0   -> a n & s: seq t {length s == n * len}
(declare-fun Tm_arrow_05116e05bd7aaa1c20687063e2405a78 () Term)
(declare-fun Lib.Sequence.generate_blocks@tok () Term)


; </end encoding val Lib.Sequence.generate_blocks>


; encoding sigelt val Lib.Sequence.generate_blocks_simple


; <Start encoding val Lib.Sequence.generate_blocks_simple>




;;;;;;;;;;;;;;;;i: Prims.nat{i < max} -> lseq a blocksize
(declare-fun Tm_arrow_96270844133956b4bde1af17a7a2693a (Term Term Term) Term)
(declare-fun Lib.Sequence.generate_blocks_simple (Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;blocksize: n: Prims.pos{n <= Prims.pow2 32 - 1} ->     max: Prims.nat ->     n: Prims.nat{n <= max} ->     f: (i: Prims.nat{i < max} -> lseq a blocksize)   -> s: seq a {length s == n * blocksize}
(declare-fun Tm_arrow_ac018ebd899ad152f8c101f7c2375936 () Term)
(declare-fun Lib.Sequence.generate_blocks_simple@tok () Term)


; </end encoding val Lib.Sequence.generate_blocks_simple>


; encoding sigelt val Lib.Sequence.div_interval


; <Start encoding val Lib.Sequence.div_interval>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.div_interval (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.div_interval@tok () Term)

; </end encoding val Lib.Sequence.div_interval>


; encoding sigelt val Lib.Sequence.mod_interval_lt


; <Start encoding val Lib.Sequence.mod_interval_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.mod_interval_lt (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.mod_interval_lt@tok () Term)

; </end encoding val Lib.Sequence.mod_interval_lt>


; encoding sigelt val Lib.Sequence.div_mul_lt


; <Start encoding val Lib.Sequence.div_mul_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.div_mul_lt (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.div_mul_lt@tok () Term)

; </end encoding val Lib.Sequence.div_mul_lt>


; encoding sigelt val Lib.Sequence.mod_div_lt


; <Start encoding val Lib.Sequence.mod_div_lt>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.mod_div_lt (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.mod_div_lt@tok () Term)

; </end encoding val Lib.Sequence.mod_div_lt>


; encoding sigelt val Lib.Sequence.div_mul_l


; <Start encoding val Lib.Sequence.div_mul_l>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.div_mul_l (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.div_mul_l@tok () Term)

; </end encoding val Lib.Sequence.div_mul_l>


; encoding sigelt let map_blocks_a


; <Start encoding let map_blocks_a>



(declare-fun Lib.Sequence.map_blocks_a (Term Term Term Term) Term)


;;;;;;;;;;;;;;;;a: Type -> bs: n: Prims.nat{n <= Prims.pow2 32 - 1} -> max: Prims.nat -> i: Prims.nat{i <= max}   -> Type
(declare-fun Tm_arrow_1197f9e1e382c8da76b7fab929cab890 () Term)
(declare-fun Lib.Sequence.map_blocks_a@tok () Term)




; </end encoding let map_blocks_a>


; encoding sigelt let map_blocks_f


; <Start encoding let map_blocks_f>




;;;;;;;;;;;;;;;;i: Prims.nat{i < max} -> _: lseq a bs -> lseq a bs
(declare-fun Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da (Term Term Term) Term)

(declare-fun Lib.Sequence.map_blocks_f (Term Term Term Term Term Term Term) Term)





;;;;;;;;;;;;;;;;bs: (n: Prims.nat{n <= Prims.pow2 32 - 1}){bs > 0} ->     max: Prims.nat ->     inp: seq a {length inp == max * bs} ->     f: (i: Prims.nat{i < max} -> _: lseq a bs -> lseq a bs) ->     i: Prims.nat{i < max} ->     acc: map_blocks_a a bs max i   -> map_blocks_a a bs max (i + 1)
(declare-fun Tm_arrow_0197c50e07571f1253d3740002091ecd () Term)
(declare-fun Lib.Sequence.map_blocks_f@tok () Term)






; </end encoding let map_blocks_f>


; encoding sigelt val Lib.Sequence.map_blocks_multi


; <Start encoding val Lib.Sequence.map_blocks_multi>






(declare-fun Lib.Sequence.map_blocks_multi (Term Term Term Term Term Term) Term)






;;;;;;;;;;;;;;;;blocksize: n: Prims.pos{n <= Prims.pow2 32 - 1} ->     max: Prims.nat ->     n: Prims.nat{n <= max} ->     inp: seq a {length inp == max * blocksize} ->     f: (i: Prims.nat{i < max} -> _: lseq a blocksize -> lseq a blocksize)   -> out: seq a {length out == n * blocksize}
(declare-fun Tm_arrow_0f54722fbfaa379edc1eb64e481ae019 () Term)
(declare-fun Lib.Sequence.map_blocks_multi@tok () Term)


; </end encoding val Lib.Sequence.map_blocks_multi>


; encoding sigelt val Lib.Sequence.lemma_map_blocks_multi


; <Start encoding val Lib.Sequence.lemma_map_blocks_multi>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun Lib.Sequence.lemma_map_blocks_multi (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun Lib.Sequence.lemma_map_blocks_multi@tok () Term)

; </end encoding val Lib.Sequence.lemma_map_blocks_multi>


; encoding sigelt #restart-solver


; <Skipped #restart-solver/>

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
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U8@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U8@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U64@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U64@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U32@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U32@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U1@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U1@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U16@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U16@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.U128@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.U128@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.S8@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.S8@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.S64@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.S64@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.S32@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.S32@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.S16@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.S16@tok))
;;;;;;;;;;;;;;;;typing for data constructor proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.S128@tok
Lib.IntTypes.inttype)
:named typing_tok_Lib.IntTypes.S128@tok))
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
;;; Fact-ids: Name Prims.pow2; Namespace Prims
(assert (! 
;; def=Prims.fst(708,8-708,12); use=Prims.fst(708,8-708,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)
(HasType (Prims.pow2 @x0)
Prims.pos))
 

:pattern ((Prims.pow2 @x0))
:qid typing_Prims.pow2))

:named typing_Prims.pow2))
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
;;; Fact-ids: Name Lib.Sequence.seq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(15,4-15,7); use=Lib.Sequence.fsti(15,4-15,7)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Lib.Sequence.seq @x0)
Tm_type))
 

:pattern ((Lib.Sequence.seq @x0))
:qid typing_Lib.Sequence.seq))

:named typing_Lib.Sequence.seq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.Sequence.lseq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(27,4-27,8); use=Lib.Sequence.fsti(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
(HasType (Lib.Sequence.lseq @x0
@x1)
Tm_type))
 

:pattern ((Lib.Sequence.lseq @x0
@x1))
:qid typing_Lib.Sequence.lseq))

:named typing_Lib.Sequence.lseq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.Sequence.length; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(18,4-18,10); use=Lib.Sequence.fsti(18,4-18,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Lib.Sequence.seq @x0)))
(HasType (Lib.Sequence.length @x0
@x1)
Prims.nat))
 

:pattern ((Lib.Sequence.length @x0
@x1))
:qid typing_Lib.Sequence.length))

:named typing_Lib.Sequence.length))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.uu___is_U128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,32-19,36); use=Lib.IntTypes.fsti(19,32-19,36)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.uu___is_U128 @x0)
Prims.bool))
 

:pattern ((Lib.IntTypes.uu___is_U128 @x0))
:qid typing_Lib.IntTypes.uu___is_U128))

:named typing_Lib.IntTypes.uu___is_U128))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.uu___is_S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,62-19,66); use=Lib.IntTypes.fsti(19,62-19,66)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.uu___is_S128 @x0)
Prims.bool))
 

:pattern ((Lib.IntTypes.uu___is_S128 @x0))
:qid typing_Lib.IntTypes.uu___is_S128))

:named typing_Lib.IntTypes.uu___is_S128))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.unsigned; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(24,4-24,12); use=Lib.IntTypes.fsti(24,4-24,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.unsigned @x0)
Prims.bool))
 

:pattern ((Lib.IntTypes.unsigned @x0))
:qid typing_Lib.IntTypes.unsigned))

:named typing_Lib.IntTypes.unsigned))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.signed; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(31,4-31,10); use=Lib.IntTypes.fsti(31,4-31,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.signed @x0)
Prims.bool))
 

:pattern ((Lib.IntTypes.signed @x0))
:qid typing_Lib.IntTypes.signed))

:named typing_Lib.IntTypes.signed))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.range; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(87,4-87,9); use=Lib.IntTypes.fsti(87,4-87,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
Lib.IntTypes.inttype))
(HasType (Lib.IntTypes.range @x0
@x1)
Tm_type))
 

:pattern ((Lib.IntTypes.range @x0
@x1))
:qid typing_Lib.IntTypes.range))

:named typing_Lib.IntTypes.range))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.minint; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(84,4-84,10); use=Lib.IntTypes.fsti(84,4-84,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.minint @x0)
Prims.int))
 

:pattern ((Lib.IntTypes.minint @x0))
:qid typing_Lib.IntTypes.minint))

:named typing_Lib.IntTypes.minint))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.maxint; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(79,4-79,10); use=Lib.IntTypes.fsti(79,4-79,10)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.maxint @x0)
Prims.int))
 

:pattern ((Lib.IntTypes.maxint @x0))
:qid typing_Lib.IntTypes.maxint))

:named typing_Lib.IntTypes.maxint))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Lib.IntTypes.bits; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(58,4-58,8); use=Lib.IntTypes.fsti(58,4-58,8)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Lib.IntTypes.inttype)
(HasType (Lib.IntTypes.bits @x0)
Prims.int))
 

:pattern ((Lib.IntTypes.bits @x0))
:qid typing_Lib.IntTypes.bits))

:named typing_Lib.IntTypes.bits))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,4-64,9); use=FStar.Seq.Base.fsti(64,4-64,9)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x0
@x1)))
(HasType (FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
(FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
:qid typing_FStar.Seq.Base.slice))

:named typing_FStar.Seq.Base.slice))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Seq.Base.seq @x0)
Tm_type))
 

:pattern ((FStar.Seq.Base.seq @x0))
:qid typing_FStar.Seq.Base.seq))

:named typing_FStar.Seq.Base.seq))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.length; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(26,4-26,10); use=FStar.Seq.Base.fsti(26,4-26,10)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0)))
(HasType (FStar.Seq.Base.length @x0
@x1)
Prims.nat))
 

:pattern ((FStar.Seq.Base.length @x0
@x1))
:qid typing_FStar.Seq.Base.length))

:named typing_FStar.Seq.Base.length))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,4-46,9); use=FStar.Seq.Base.fsti(46,4-46,9)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (FStar.Seq.Base.empty @x0)
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)))
 

:pattern ((FStar.Seq.Base.empty @x0))
:qid typing_FStar.Seq.Base.empty))

:named typing_FStar.Seq.Base.empty))
;;;;;;;;;;;;;;;;Typing correspondence of token to term
;;; Fact-ids: Name Prims.pow2; Namespace Prims
(assert (! 
;; def=Prims.fst(708,8-708,12); use=Prims.fst(708,8-708,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
Prims.nat)
(HasType (Prims.pow2.fuel_instrumented @u0
@x1)
Prims.pos))
 

:pattern ((Prims.pow2.fuel_instrumented @u0
@x1))
:qid token_correspondence_Prims.pow2.fuel_instrumented))

:named token_correspondence_Prims.pow2.fuel_instrumented))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.Sequence.eq_intro; Namespace Lib.Sequence
(assert (! (HasType Tm_refine_f329878e92bb1efc120000057d7014bb
Tm_type)
:named refinement_kinding_Tm_refine_f329878e92bb1efc120000057d7014bb))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.i32; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_ee21347fbca1d214410772ef0425736c
Tm_type)
:named refinement_kinding_Tm_refine_ee21347fbca1d214410772ef0425736c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_e1adf49e5e772ddffa19181e1a812a81
Tm_type)
:named refinement_kinding_Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.ct_abs; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_de547f196c5d80d3c8c7650b475a5db4
Tm_type)
:named refinement_kinding_Tm_refine_de547f196c5d80d3c8c7650b475a5db4))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_refine_da3062322c9bea8d5b2058386775b91a
Tm_type)
:named refinement_kinding_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.Sequence.lseq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(27,36-27,64); use=Lib.Sequence.fsti(27,36-27,64)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_d8d83307254a8900dd20598654272e42 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_d8d83307254a8900dd20598654272e42 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_d8d83307254a8900dd20598654272e42))

:named refinement_kinding_Tm_refine_d8d83307254a8900dd20598654272e42))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named refinement_kinding_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.eq_mask; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_d13c5132af51f62dfb7018a438f66ab7
Tm_type)
:named refinement_kinding_Tm_refine_d13c5132af51f62dfb7018a438f66ab7))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.size_nat; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4
Tm_type)
:named refinement_kinding_Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
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
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_b913a3f691ca99086652e0a655e72f17))

:named refinement_kinding_Tm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.mul; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_b550ca9347e0645a53715102a08d8fa1
Tm_type)
:named refinement_kinding_Tm_refine_b550ca9347e0645a53715102a08d8fa1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.u1; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc
Tm_type)
:named refinement_kinding_Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_b361ba8089a6e963921008d537e799a1))

:named refinement_kinding_Tm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.i16; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c
Tm_type)
:named refinement_kinding_Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (HasType Tm_refine_afd51579b90d50ea23e03b743a1fa001
Tm_type)
:named refinement_kinding_Tm_refine_afd51579b90d50ea23e03b743a1fa001))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.Sequence.repeat_blocks_f; Namespace Lib.Sequence
(assert (! (HasType Tm_refine_aee8f5bc805e40f3cc22e281aedfc983
Tm_type)
:named refinement_kinding_Tm_refine_aee8f5bc805e40f3cc22e281aedfc983))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.u8; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_ac361b132c26d906d5997e1372d2a888
Tm_type)
:named refinement_kinding_Tm_refine_ac361b132c26d906d5997e1372d2a888))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.u16; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_a636b6491af501737c1eb06142217342
Tm_type)
:named refinement_kinding_Tm_refine_a636b6491af501737c1eb06142217342))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_81407705a0828c2c1b1976675443f647))

:named refinement_kinding_Tm_refine_81407705a0828c2c1b1976675443f647))
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
;;; Fact-ids: Name FStar.Int.op_At_Percent; Namespace FStar.Int
(assert (! (HasType Tm_refine_6f861454c283cab7fef581bd2f2d57c5
Tm_type)
:named refinement_kinding_Tm_refine_6f861454c283cab7fef581bd2f2d57c5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.u32; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_68ee6d2c8678eb431259a3d4f412550b
Tm_type)
:named refinement_kinding_Tm_refine_68ee6d2c8678eb431259a3d4f412550b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (HasType Tm_refine_542f9d4f129664613f2483a6c88bc7c2
Tm_type)
:named refinement_kinding_Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Int.pow2_minus_one; Namespace FStar.Int
(assert (! (HasType Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb
Tm_type)
:named refinement_kinding_Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.mul_mod; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242
Tm_type)
:named refinement_kinding_Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.u64; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_4ae12848fac0601da6605bac9d6872f1
Tm_type)
:named refinement_kinding_Tm_refine_4ae12848fac0601da6605bac9d6872f1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.sint_t; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_499d370c56448bf714eb7f1fd73227a1
Tm_type)
:named refinement_kinding_Tm_refine_499d370c56448bf714eb7f1fd73227a1))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (HasType Tm_refine_414d0a9f578ab0048252f8c8f552b99f
Tm_type)
:named refinement_kinding_Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.uint_t; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_387e6d282145573240ab7b8a4b94cce5
Tm_type)
:named refinement_kinding_Tm_refine_387e6d282145573240ab7b8a4b94cce5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.i64; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_360500544b85bc92abd73f53c89e0565
Tm_type)
:named refinement_kinding_Tm_refine_360500544b85bc92abd73f53c89e0565))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.byte; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_31c7d3d85d92cb942c95a78642e657c7
Tm_type)
:named refinement_kinding_Tm_refine_31c7d3d85d92cb942c95a78642e657c7))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_1ba8fd8bb363097813064c67740b2de5))

:named refinement_kinding_Tm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! (HasType Tm_refine_1780a0fddfda88c43d203b562c6d3f5b
Tm_type)
:named refinement_kinding_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.i8; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_117824c94bb8fa4b5424e2a89ad3129a
Tm_type)
:named refinement_kinding_Tm_refine_117824c94bb8fa4b5424e2a89ad3129a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Prims.nonzero; Namespace Prims
(assert (! (HasType Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f
Tm_type)
:named refinement_kinding_Tm_refine_0766302b68bb44ab7aff8c4d8be0b46f))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.Sequence.eq_intro; Namespace Lib.Sequence
(assert (! 
;; def=Lib.IntTypes.fsti(308,16-308,38); use=Lib.Sequence.fsti(85,30-85,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_f329878e92bb1efc120000057d7014bb)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.IntTypes.fsti(308,22-308,37); use=Lib.Sequence.fsti(85,30-85,38)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction (Prims.pow2.fuel_instrumented ZFuel
(BoxInt 32))
(BoxInt 1))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_f329878e92bb1efc120000057d7014bb))
:qid refinement_interpretation_Tm_refine_f329878e92bb1efc120000057d7014bb))

:named refinement_interpretation_Tm_refine_f329878e92bb1efc120000057d7014bb))
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
;;; Fact-ids: Name Lib.IntTypes.i32; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(289,11-289,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_ee21347fbca1d214410772ef0425736c)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(289,11-289,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(289,11-289,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.S32@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_ee21347fbca1d214410772ef0425736c))
:qid refinement_interpretation_Tm_refine_ee21347fbca1d214410772ef0425736c))

:named refinement_interpretation_Tm_refine_ee21347fbca1d214410772ef0425736c))
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
;;; Fact-ids: Name Lib.IntTypes.ct_abs; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(722,12-722,46); use=Lib.IntTypes.fsti(722,12-722,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_de547f196c5d80d3c8c7650b475a5db4)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(722,23-722,31); use=Lib.IntTypes.fsti(722,23-722,31)
(BoxBool_proj_0 (Lib.IntTypes.signed @x1))


;; def=Lib.IntTypes.fsti(722,35-722,45); use=Lib.IntTypes.fsti(722,35-722,45)
(not 
;; def=Lib.IntTypes.fsti(722,36-722,45); use=Lib.IntTypes.fsti(722,36-722,45)
(BoxBool_proj_0 (Lib.IntTypes.uu___is_S128 @x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_de547f196c5d80d3c8c7650b475a5db4))
:qid refinement_interpretation_Tm_refine_de547f196c5d80d3c8c7650b475a5db4))

:named refinement_interpretation_Tm_refine_de547f196c5d80d3c8c7650b475a5db4))
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
;;; Fact-ids: Name Lib.Sequence.lseq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(27,36-27,64); use=Lib.Sequence.fsti(27,36-27,64)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d8d83307254a8900dd20598654272e42 @x2
@x3))
(and (HasTypeFuel @u0
@x1
(Lib.Sequence.seq @x2))

;; def=Lib.Sequence.fsti(27,44-27,63); use=Lib.Sequence.fsti(27,44-27,63)
(= (FStar.Seq.Base.length @x2
@x1)
@x3)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d8d83307254a8900dd20598654272e42 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_d8d83307254a8900dd20598654272e42))

:named refinement_interpretation_Tm_refine_d8d83307254a8900dd20598654272e42))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(158,60-158,66); use=FStar.Seq.Base.fsti(158,60-158,66)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Base.fsti(158,70-158,83); use=FStar.Seq.Base.fsti(158,70-158,83)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named refinement_interpretation_Tm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.eq_mask; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(732,13-732,35); use=Lib.IntTypes.fsti(732,13-732,35)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_d13c5132af51f62dfb7018a438f66ab7)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(732,24-732,34); use=Lib.IntTypes.fsti(732,24-732,34)
(not 
;; def=Lib.IntTypes.fsti(732,25-732,34); use=Lib.IntTypes.fsti(732,25-732,34)
(BoxBool_proj_0 (Lib.IntTypes.uu___is_S128 @x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_d13c5132af51f62dfb7018a438f66ab7))
:qid refinement_interpretation_Tm_refine_d13c5132af51f62dfb7018a438f66ab7))

:named refinement_interpretation_Tm_refine_d13c5132af51f62dfb7018a438f66ab7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.size_nat; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(308,16-308,38); use=Lib.IntTypes.fsti(308,16-308,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.IntTypes.fsti(308,22-308,37); use=Lib.IntTypes.fsti(308,22-308,37)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction (Prims.pow2 (BoxInt 32))
(BoxInt 1))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
:qid refinement_interpretation_Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))

:named refinement_interpretation_Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
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
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x2))
(and (HasTypeFuel @u0
@x1
(FStar.Seq.Base.seq @x2))

;; def=FStar.Seq.Base.fsti(46,37-46,47); use=FStar.Seq.Base.fsti(46,37-46,47)
(= (FStar.Seq.Base.length @x2
@x1)
(BoxInt 0))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b913a3f691ca99086652e0a655e72f17 @x2)))
:qid refinement_interpretation_Tm_refine_b913a3f691ca99086652e0a655e72f17))

:named refinement_interpretation_Tm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.mul; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(467,9-467,45); use=Lib.IntTypes.fsti(467,9-467,45)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b550ca9347e0645a53715102a08d8fa1)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(467,20-467,30); use=Lib.IntTypes.fsti(467,20-467,30)
(not 
;; def=Lib.IntTypes.fsti(467,21-467,30); use=Lib.IntTypes.fsti(467,21-467,30)
(BoxBool_proj_0 (Lib.IntTypes.uu___is_U128 @x1))
)


;; def=Lib.IntTypes.fsti(467,34-467,44); use=Lib.IntTypes.fsti(467,34-467,44)
(not 
;; def=Lib.IntTypes.fsti(467,35-467,44); use=Lib.IntTypes.fsti(467,35-467,44)
(BoxBool_proj_0 (Lib.IntTypes.uu___is_S128 @x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b550ca9347e0645a53715102a08d8fa1))
:qid refinement_interpretation_Tm_refine_b550ca9347e0645a53715102a08d8fa1))

:named refinement_interpretation_Tm_refine_b550ca9347e0645a53715102a08d8fa1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.u1; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(271,10-271,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(271,10-271,17)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(271,10-271,17)
(Lib.IntTypes.range @x1
Lib.IntTypes.U1@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))
:qid refinement_interpretation_Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))

:named refinement_interpretation_Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Base.fsti(171,11-171,25); use=FStar.Seq.Base.fsti(171,11-171,25)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (FStar.Seq.Base.length @x2
@x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_b361ba8089a6e963921008d537e799a1))

:named refinement_interpretation_Tm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.i16; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(283,11-283,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(283,11-283,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(283,11-283,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.S16@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c))
:qid refinement_interpretation_Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c))

:named refinement_interpretation_Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c))
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
;;; Fact-ids: Name Lib.Sequence.repeat_blocks_f; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(271,2-271,23); use=Lib.Sequence.fsti(271,2-271,23)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_aee8f5bc805e40f3cc22e281aedfc983)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.IntTypes.fsti(308,22-308,37); use=Lib.Sequence.fsti(271,6-271,14)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction (Prims.pow2 (BoxInt 32))
(BoxInt 1))))


;; def=Lib.Sequence.fsti(271,15-271,21); use=Lib.Sequence.fsti(271,15-271,21)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_aee8f5bc805e40f3cc22e281aedfc983))
:qid refinement_interpretation_Tm_refine_aee8f5bc805e40f3cc22e281aedfc983))

:named refinement_interpretation_Tm_refine_aee8f5bc805e40f3cc22e281aedfc983))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.u8; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(274,10-274,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_ac361b132c26d906d5997e1372d2a888)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(274,10-274,17)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(274,10-274,17)
(Lib.IntTypes.range @x1
Lib.IntTypes.U8@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_ac361b132c26d906d5997e1372d2a888))
:qid refinement_interpretation_Tm_refine_ac361b132c26d906d5997e1372d2a888))

:named refinement_interpretation_Tm_refine_ac361b132c26d906d5997e1372d2a888))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.u16; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(280,11-280,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_a636b6491af501737c1eb06142217342)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(280,11-280,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(280,11-280,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.U16@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_a636b6491af501737c1eb06142217342))
:qid refinement_interpretation_Tm_refine_a636b6491af501737c1eb06142217342))

:named refinement_interpretation_Tm_refine_a636b6491af501737c1eb06142217342))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x2
@x1))
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x1
(FStar.Seq.Base.length @x3
@x4)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647))

:named refinement_interpretation_Tm_refine_81407705a0828c2c1b1976675443f647))
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
;;; Fact-ids: Name FStar.Int.op_At_Percent; Namespace FStar.Int
(assert (! 
;; def=FStar.Int.fsti(58,26-58,46); use=FStar.Int.fsti(58,26-58,46)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_6f861454c283cab7fef581bd2f2d57c5)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=FStar.Int.fsti(58,33-58,36); use=FStar.Int.fsti(58,33-58,36)
(> (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 0)))


;; def=FStar.Int.fsti(58,39-58,44); use=FStar.Int.fsti(58,39-58,44)
(= (Prims.op_Modulus @x1
(BoxInt 2))
(BoxInt 0))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_6f861454c283cab7fef581bd2f2d57c5))
:qid refinement_interpretation_Tm_refine_6f861454c283cab7fef581bd2f2d57c5))

:named refinement_interpretation_Tm_refine_6f861454c283cab7fef581bd2f2d57c5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.u32; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(286,11-286,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_68ee6d2c8678eb431259a3d4f412550b)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(286,11-286,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(286,11-286,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.U32@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_68ee6d2c8678eb431259a3d4f412550b))
:qid refinement_interpretation_Tm_refine_68ee6d2c8678eb431259a3d4f412550b))

:named refinement_interpretation_Tm_refine_68ee6d2c8678eb431259a3d4f412550b))
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
;;; Fact-ids: Name FStar.Int.pow2_minus_one; Namespace FStar.Int
(assert (! 
;; def=FStar.Int.fsti(70,19-70,34); use=FStar.Int.fsti(70,19-70,34)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb)
(and (HasTypeFuel @u0
@x1
Prims.pos)

;; def=FStar.Int.fsti(70,27-70,32); use=FStar.Int.fsti(70,27-70,32)
(< (BoxInt_proj_0 (BoxInt 1))
(BoxInt_proj_0 @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb))
:qid refinement_interpretation_Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb))

:named refinement_interpretation_Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.mul_mod; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(454,13-454,49); use=Lib.IntTypes.fsti(454,13-454,49)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(454,24-454,34); use=Lib.IntTypes.fsti(454,24-454,34)
(BoxBool_proj_0 (Lib.IntTypes.unsigned @x1))


;; def=Lib.IntTypes.fsti(454,38-454,48); use=Lib.IntTypes.fsti(454,38-454,48)
(not 
;; def=Lib.IntTypes.fsti(454,39-454,48); use=Lib.IntTypes.fsti(454,39-454,48)
(BoxBool_proj_0 (Lib.IntTypes.uu___is_U128 @x1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242))
:qid refinement_interpretation_Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242))

:named refinement_interpretation_Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.u64; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(292,11-292,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_4ae12848fac0601da6605bac9d6872f1)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(292,11-292,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(292,11-292,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.U64@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_4ae12848fac0601da6605bac9d6872f1))
:qid refinement_interpretation_Tm_refine_4ae12848fac0601da6605bac9d6872f1))

:named refinement_interpretation_Tm_refine_4ae12848fac0601da6605bac9d6872f1))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.sint_t; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(161,11-161,32); use=Lib.IntTypes.fsti(161,11-161,32)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_499d370c56448bf714eb7f1fd73227a1)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(161,22-161,30); use=Lib.IntTypes.fsti(161,22-161,30)
(BoxBool_proj_0 (Lib.IntTypes.signed @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_499d370c56448bf714eb7f1fd73227a1))
:qid refinement_interpretation_Tm_refine_499d370c56448bf714eb7f1fd73227a1))

:named refinement_interpretation_Tm_refine_499d370c56448bf714eb7f1fd73227a1))
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
;;; Fact-ids: Name Lib.IntTypes.uint_t; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(158,11-158,34); use=Lib.IntTypes.fsti(158,11-158,34)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_387e6d282145573240ab7b8a4b94cce5)
(and (HasTypeFuel @u0
@x1
Lib.IntTypes.inttype)

;; def=Lib.IntTypes.fsti(158,22-158,32); use=Lib.IntTypes.fsti(158,22-158,32)
(BoxBool_proj_0 (Lib.IntTypes.unsigned @x1))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_387e6d282145573240ab7b8a4b94cce5))
:qid refinement_interpretation_Tm_refine_387e6d282145573240ab7b8a4b94cce5))

:named refinement_interpretation_Tm_refine_387e6d282145573240ab7b8a4b94cce5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.i64; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(295,11-295,18)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_360500544b85bc92abd73f53c89e0565)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(295,11-295,18)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(295,11-295,18)
(Lib.IntTypes.range @x1
Lib.IntTypes.S64@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_360500544b85bc92abd73f53c89e0565))
:qid refinement_interpretation_Tm_refine_360500544b85bc92abd73f53c89e0565))

:named refinement_interpretation_Tm_refine_360500544b85bc92abd73f53c89e0565))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.byte; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(320,9-320,25); use=Lib.IntTypes.fsti(320,9-320,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_31c7d3d85d92cb942c95a78642e657c7)
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.IntTypes.fsti(320,16-320,23); use=Lib.IntTypes.fsti(320,16-320,23)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (BoxInt 256)))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_31c7d3d85d92cb942c95a78642e657c7))
:qid refinement_interpretation_Tm_refine_31c7d3d85d92cb942c95a78642e657c7))

:named refinement_interpretation_Tm_refine_31c7d3d85d92cb942c95a78642e657c7))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=FStar.Seq.Properties.fsti(625,12-625,20); use=FStar.Seq.Properties.fsti(625,12-625,20)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x1))


;; def=FStar.Seq.Properties.fsti(625,24-625,37); use=FStar.Seq.Properties.fsti(625,24-625,37)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction @x3
@x4)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_1ba8fd8bb363097813064c67740b2de5))

:named refinement_interpretation_Tm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! 
;; def=Prims.fst(680,11-680,25); use=Prims.fst(680,11-680,25)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_1780a0fddfda88c43d203b562c6d3f5b)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Prims.fst(180,31-180,42); use=Prims.fst(180,31-180,42)
(= (Prims.op_GreaterThanOrEqual @x1
(BoxInt 0))
(BoxBool true))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
:qid refinement_interpretation_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))

:named refinement_interpretation_Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.i8; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(91,27-91,43); use=Lib.IntTypes.fsti(277,10-277,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_117824c94bb8fa4b5424e2a89ad3129a)
(and (HasTypeFuel @u0
@x1
Prims.int)

;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(277,10-277,17)
(Valid 
;; def=Lib.IntTypes.fsti(91,33-91,42); use=Lib.IntTypes.fsti(277,10-277,17)
(Lib.IntTypes.range @x1
Lib.IntTypes.S8@tok)
)
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_117824c94bb8fa4b5424e2a89ad3129a))
:qid refinement_interpretation_Tm_refine_117824c94bb8fa4b5424e2a89ad3129a))

:named refinement_interpretation_Tm_refine_117824c94bb8fa4b5424e2a89ad3129a))
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
;;; Fact-ids: Name Prims.op_Minus; Namespace Prims
(assert (! 
;; def=Prims.fst(558,4-558,12); use=Prims.fst(558,4-558,12)
(forall ((@x0 Term))
 (! (= (Prims.op_Minus @x0)
(BoxInt (- (BoxInt_proj_0 @x0))))
 

:pattern ((Prims.op_Minus @x0))
:qid primitive_Prims.op_Minus))

:named primitive_Prims.op_Minus))
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
;;; Fact-ids: Name Prims.op_GreaterThanOrEqual; Namespace Prims
(assert (! 
;; def=Prims.fst(576,4-576,25); use=Prims.fst(576,4-576,25)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Prims.op_GreaterThanOrEqual @x0
@x1)
(BoxBool (>= (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1))))
 

:pattern ((Prims.op_GreaterThanOrEqual @x0
@x1))
:qid primitive_Prims.op_GreaterThanOrEqual))

:named primitive_Prims.op_GreaterThanOrEqual))
;;; Fact-ids: Name Prims.op_Division; Namespace Prims
(assert (! 
;; def=Prims.fst(703,4-703,15); use=Prims.fst(703,4-703,15)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (not (= (BoxInt_proj_0 @x1)
0))
(= (Prims.op_Division @x0
@x1)
(BoxInt (div (BoxInt_proj_0 @x0)
(BoxInt_proj_0 @x1)))))
 

:pattern ((Prims.op_Division @x0
@x1))
:qid primitive_Prims.op_Division))

:named primitive_Prims.op_Division))
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
;;;;;;;;;;;;;;;;Lemma: Lib.IntTypes.pow2_4
;;; Fact-ids: Name Lib.IntTypes.pow2_4; Namespace Lib.IntTypes
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)

;; def=Lib.IntTypes.fsti(11,27-11,40); use=Lib.IntTypes.fsti(11,27-11,40)
(= (Prims.pow2.fuel_instrumented ZFuel
(BoxInt 4))
(BoxInt 16))
)
 

:pattern ((Prims.pow2.fuel_instrumented ZFuel
@x0))
:qid lemma_Lib.IntTypes.pow2_4))
:named lemma_Lib.IntTypes.pow2_4))
;;;;;;;;;;;;;;;;Lemma: Lib.IntTypes.pow2_3
;;; Fact-ids: Name Lib.IntTypes.pow2_3; Namespace Lib.IntTypes
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)

;; def=Lib.IntTypes.fsti(10,27-10,39); use=Lib.IntTypes.fsti(10,27-10,39)
(= (Prims.pow2.fuel_instrumented ZFuel
(BoxInt 3))
(BoxInt 8))
)
 

:pattern ((Prims.pow2.fuel_instrumented ZFuel
@x0))
:qid lemma_Lib.IntTypes.pow2_3))
:named lemma_Lib.IntTypes.pow2_3))
;;;;;;;;;;;;;;;;Lemma: Lib.IntTypes.pow2_2
;;; Fact-ids: Name Lib.IntTypes.pow2_2; Namespace Lib.IntTypes
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)

;; def=Lib.IntTypes.fsti(9,27-9,39); use=Lib.IntTypes.fsti(9,27-9,39)
(= (Prims.pow2.fuel_instrumented ZFuel
(BoxInt 2))
(BoxInt 4))
)
 

:pattern ((Prims.pow2.fuel_instrumented ZFuel
@x0))
:qid lemma_Lib.IntTypes.pow2_2))
:named lemma_Lib.IntTypes.pow2_2))
;;;;;;;;;;;;;;;;Lemma: Lib.IntTypes.pow2_127
;;; Fact-ids: Name Lib.IntTypes.pow2_127; Namespace Lib.IntTypes
(assert (! (forall ((@x0 Term))
 (! (implies (HasType @x0
Prims.nat)

;; def=Lib.IntTypes.fsti(12,29-12,76); use=Lib.IntTypes.fsti(12,29-12,76)
(= (Prims.pow2.fuel_instrumented ZFuel
(BoxInt 127))
(BoxInt 170141183460469231731687303715884105728))
)
 

:pattern ((Prims.pow2.fuel_instrumented ZFuel
@x0))
:qid lemma_Lib.IntTypes.pow2_127))
:named lemma_Lib.IntTypes.pow2_127))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_slice
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x2
@x0
@x1))
(HasType @x4
Prims.nat)
(HasType @x5
(Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x4
@x3
@x2)))

;; def=FStar.Seq.Properties.fsti(628,11-628,71); use=FStar.Seq.Properties.fsti(628,11-628,71)
(= (FStar.Seq.Base.slice @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5)
(FStar.Seq.Base.slice @x0
@x1
(Prims.op_Addition @x2
@x4)
(Prims.op_Addition @x2
@x5)))
)
 

:pattern ((FStar.Seq.Base.slice @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)
@x4
@x5))
:qid lemma_FStar.Seq.Properties.slice_slice))
:named lemma_FStar.Seq.Properties.slice_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_length
;;; Fact-ids: Name FStar.Seq.Properties.slice_length; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0)))

;; def=FStar.Seq.Properties.fsti(616,11-616,38); use=FStar.Seq.Properties.fsti(616,11-616,38)
(= (FStar.Seq.Base.slice @x0
@x1
(BoxInt 0)
(FStar.Seq.Base.length @x0
@x1))
@x1)
)
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
(BoxInt 0)
(FStar.Seq.Base.length @x0
@x1)))
:qid lemma_FStar.Seq.Properties.slice_length))
:named lemma_FStar.Seq.Properties.slice_length))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Properties.slice_is_empty
;;; Fact-ids: Name FStar.Seq.Properties.slice_is_empty; Namespace FStar.Seq.Properties
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
(Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)))

;; def=FStar.Seq.Properties.fsti(608,11-608,37); use=FStar.Seq.Properties.fsti(608,11-608,37)
(= (FStar.Seq.Base.slice @x0
@x1
@x2
@x2)
(FStar.Seq.Base.empty @x0))
)
 

:pattern ((FStar.Seq.Base.slice @x0
@x1
@x2
@x2))
:qid lemma_FStar.Seq.Properties.slice_is_empty))
:named lemma_FStar.Seq.Properties.slice_is_empty))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.lemma_len_slice
;;; Fact-ids: Name FStar.Seq.Base.lemma_len_slice; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(FStar.Seq.Base.seq @x0))
(HasType @x2
Prims.nat)
(HasType @x3
(Tm_refine_81407705a0828c2c1b1976675443f647 @x2
@x0
@x1)))

;; def=FStar.Seq.Base.fsti(129,11-129,41); use=FStar.Seq.Base.fsti(129,11-129,41)
(= (FStar.Seq.Base.length @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3))
(Prims.op_Subtraction @x3
@x2))
)
 

:pattern ((FStar.Seq.Base.length @x0
(FStar.Seq.Base.slice @x0
@x1
@x2
@x3)))
:qid lemma_FStar.Seq.Base.lemma_len_slice))
:named lemma_FStar.Seq.Base.lemma_len_slice))
;;;;;;;;;;;;;;;;Lemma: FStar.Seq.Base.hasEq_lemma
;;; Fact-ids: Name FStar.Seq.Base.hasEq_lemma; Namespace FStar.Seq.Base
(assert (! (forall ((@x0 Term))
 (! (implies (and (HasType @x0
Tm_type)

;; def=FStar.Seq.Base.fsti(163,43-163,52); use=FStar.Seq.Base.fsti(163,43-163,52)
(Valid 
;; def=FStar.Seq.Base.fsti(163,43-163,52); use=FStar.Seq.Base.fsti(163,43-163,52)
(Prims.hasEq @x0)
)
)

;; def=FStar.Seq.Base.fsti(163,63-163,78); use=FStar.Seq.Base.fsti(163,63-163,78)
(Valid 
;; def=FStar.Seq.Base.fsti(163,63-163,78); use=FStar.Seq.Base.fsti(163,63-163,78)
(Prims.hasEq (FStar.Seq.Base.seq @x0))
)
)
 

:pattern ((Prims.hasEq (FStar.Seq.Base.seq @x0)))
:qid lemma_FStar.Seq.Base.hasEq_lemma))
:named lemma_FStar.Seq.Base.hasEq_lemma))
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
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (HasType Lib.IntTypes.inttype
Tm_type)
:named kinding_Lib.IntTypes.inttype@tok))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_f329878e92bb1efc120000057d7014bb
;;; Fact-ids: Name Lib.Sequence.eq_intro; Namespace Lib.Sequence
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f329878e92bb1efc120000057d7014bb))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_f329878e92bb1efc120000057d7014bb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ee21347fbca1d214410772ef0425736c
;;; Fact-ids: Name Lib.IntTypes.i32; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_ee21347fbca1d214410772ef0425736c))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_ee21347fbca1d214410772ef0425736c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e1adf49e5e772ddffa19181e1a812a81
;;; Fact-ids: Name FStar.Monotonic.Heap.lemma_mref_injectivity; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_e1adf49e5e772ddffa19181e1a812a81))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_e1adf49e5e772ddffa19181e1a812a81))
;;;;;;;;;;;;;;;;haseq for Tm_refine_de547f196c5d80d3c8c7650b475a5db4
;;; Fact-ids: Name Lib.IntTypes.ct_abs; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_de547f196c5d80d3c8c7650b475a5db4))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_de547f196c5d80d3c8c7650b475a5db4))
;;;;;;;;;;;;;;;;haseq for Tm_refine_da3062322c9bea8d5b2058386775b91a
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (iff (Valid (Prims.hasEq Tm_refine_da3062322c9bea8d5b2058386775b91a))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d8d83307254a8900dd20598654272e42
;;; Fact-ids: Name Lib.Sequence.lseq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(27,36-27,64); use=Lib.Sequence.fsti(27,36-27,64)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d8d83307254a8900dd20598654272e42 @x0
@x1)))
(Valid (Prims.hasEq (Lib.Sequence.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d8d83307254a8900dd20598654272e42 @x0
@x1))))
:qid haseqTm_refine_d8d83307254a8900dd20598654272e42))

:named haseqTm_refine_d8d83307254a8900dd20598654272e42))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d3d07693cd71377864ef84dc97d10ec1
;;; Fact-ids: Name FStar.Seq.Base.lemma_index_slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(158,54-158,84); use=FStar.Seq.Base.fsti(158,54-158,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_d3d07693cd71377864ef84dc97d10ec1 @x0
@x1
@x2))))
:qid haseqTm_refine_d3d07693cd71377864ef84dc97d10ec1))

:named haseqTm_refine_d3d07693cd71377864ef84dc97d10ec1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_d13c5132af51f62dfb7018a438f66ab7
;;; Fact-ids: Name Lib.IntTypes.eq_mask; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_d13c5132af51f62dfb7018a438f66ab7))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_d13c5132af51f62dfb7018a438f66ab7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4
;;; Fact-ids: Name Lib.IntTypes.size_nat; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_c8dd98bb91cb1ba6963e5299b3babaa4))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_b913a3f691ca99086652e0a655e72f17
;;; Fact-ids: Name FStar.Seq.Base.empty; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(46,26-46,49); use=FStar.Seq.Base.fsti(46,26-46,49)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0)))
(Valid (Prims.hasEq (FStar.Seq.Base.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b913a3f691ca99086652e0a655e72f17 @x0))))
:qid haseqTm_refine_b913a3f691ca99086652e0a655e72f17))

:named haseqTm_refine_b913a3f691ca99086652e0a655e72f17))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b550ca9347e0645a53715102a08d8fa1
;;; Fact-ids: Name Lib.IntTypes.mul; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b550ca9347e0645a53715102a08d8fa1))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_b550ca9347e0645a53715102a08d8fa1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc
;;; Fact-ids: Name Lib.IntTypes.u1; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b4b08e995afca2a1ea2a545fa1dd44cc))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b361ba8089a6e963921008d537e799a1
;;; Fact-ids: Name FStar.Seq.Base.eq_i; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(171,5-171,26); use=FStar.Seq.Base.fsti(171,5-171,26)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b361ba8089a6e963921008d537e799a1 @x0
@x1))))
:qid haseqTm_refine_b361ba8089a6e963921008d537e799a1))

:named haseqTm_refine_b361ba8089a6e963921008d537e799a1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c
;;; Fact-ids: Name Lib.IntTypes.i16; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_b2401a8cabe2f9a01538f32548fa9f6c))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_b2401a8cabe2f9a01538f32548fa9f6c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_afd51579b90d50ea23e03b743a1fa001
;;; Fact-ids: Name FStar.Monotonic.Heap.addr_of_aref; Namespace FStar.Monotonic.Heap
(assert (! (iff (Valid (Prims.hasEq Tm_refine_afd51579b90d50ea23e03b743a1fa001))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_afd51579b90d50ea23e03b743a1fa001))
;;;;;;;;;;;;;;;;haseq for Tm_refine_aee8f5bc805e40f3cc22e281aedfc983
;;; Fact-ids: Name Lib.Sequence.repeat_blocks_f; Namespace Lib.Sequence
(assert (! (iff (Valid (Prims.hasEq Tm_refine_aee8f5bc805e40f3cc22e281aedfc983))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_aee8f5bc805e40f3cc22e281aedfc983))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ac361b132c26d906d5997e1372d2a888
;;; Fact-ids: Name Lib.IntTypes.u8; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_ac361b132c26d906d5997e1372d2a888))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_ac361b132c26d906d5997e1372d2a888))
;;;;;;;;;;;;;;;;haseq for Tm_refine_a636b6491af501737c1eb06142217342
;;; Fact-ids: Name Lib.IntTypes.u16; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_a636b6491af501737c1eb06142217342))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_a636b6491af501737c1eb06142217342))
;;;;;;;;;;;;;;;;haseq for Tm_refine_81407705a0828c2c1b1976675443f647
;;; Fact-ids: Name FStar.Seq.Base.slice; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=FStar.Seq.Base.fsti(64,43-64,73)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_81407705a0828c2c1b1976675443f647 @x0
@x1
@x2))))
:qid haseqTm_refine_81407705a0828c2c1b1976675443f647))

:named haseqTm_refine_81407705a0828c2c1b1976675443f647))
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
;;;;;;;;;;;;;;;;haseq for Tm_refine_6f861454c283cab7fef581bd2f2d57c5
;;; Fact-ids: Name FStar.Int.op_At_Percent; Namespace FStar.Int
(assert (! (iff (Valid (Prims.hasEq Tm_refine_6f861454c283cab7fef581bd2f2d57c5))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_6f861454c283cab7fef581bd2f2d57c5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_68ee6d2c8678eb431259a3d4f412550b
;;; Fact-ids: Name Lib.IntTypes.u32; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_68ee6d2c8678eb431259a3d4f412550b))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_68ee6d2c8678eb431259a3d4f412550b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_542f9d4f129664613f2483a6c88bc7c2
;;; Fact-ids: Name Prims.nat; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_542f9d4f129664613f2483a6c88bc7c2))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_542f9d4f129664613f2483a6c88bc7c2))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb
;;; Fact-ids: Name FStar.Int.pow2_minus_one; Namespace FStar.Int
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4fe9a5df27ca5859eef8add9fc6819fb))
(Valid (Prims.hasEq Prims.pos)))
:named haseqTm_refine_4fe9a5df27ca5859eef8add9fc6819fb))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242
;;; Fact-ids: Name Lib.IntTypes.mul_mod; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4e3bbd8eec0c3ef82902d2336c68c242))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_4e3bbd8eec0c3ef82902d2336c68c242))
;;;;;;;;;;;;;;;;haseq for Tm_refine_4ae12848fac0601da6605bac9d6872f1
;;; Fact-ids: Name Lib.IntTypes.u64; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_4ae12848fac0601da6605bac9d6872f1))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_4ae12848fac0601da6605bac9d6872f1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_499d370c56448bf714eb7f1fd73227a1
;;; Fact-ids: Name Lib.IntTypes.sint_t; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_499d370c56448bf714eb7f1fd73227a1))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_499d370c56448bf714eb7f1fd73227a1))
;;;;;;;;;;;;;;;;haseq for Tm_refine_414d0a9f578ab0048252f8c8f552b99f
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (iff (Valid (Prims.hasEq Tm_refine_414d0a9f578ab0048252f8c8f552b99f))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_414d0a9f578ab0048252f8c8f552b99f))
;;;;;;;;;;;;;;;;haseq for Tm_refine_387e6d282145573240ab7b8a4b94cce5
;;; Fact-ids: Name Lib.IntTypes.uint_t; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_387e6d282145573240ab7b8a4b94cce5))
(Valid (Prims.hasEq Lib.IntTypes.inttype)))
:named haseqTm_refine_387e6d282145573240ab7b8a4b94cce5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_360500544b85bc92abd73f53c89e0565
;;; Fact-ids: Name Lib.IntTypes.i64; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_360500544b85bc92abd73f53c89e0565))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_360500544b85bc92abd73f53c89e0565))
;;;;;;;;;;;;;;;;haseq for Tm_refine_31c7d3d85d92cb942c95a78642e657c7
;;; Fact-ids: Name Lib.IntTypes.byte; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_31c7d3d85d92cb942c95a78642e657c7))
(Valid (Prims.hasEq Prims.nat)))
:named haseqTm_refine_31c7d3d85d92cb942c95a78642e657c7))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1ba8fd8bb363097813064c67740b2de5
;;; Fact-ids: Name FStar.Seq.Properties.slice_slice; Namespace FStar.Seq.Properties
(assert (! 
;; def=FStar.Seq.Properties.fsti(625,2-625,40); use=FStar.Seq.Properties.fsti(625,2-625,40)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_1ba8fd8bb363097813064c67740b2de5 @x0
@x1
@x2))))
:qid haseqTm_refine_1ba8fd8bb363097813064c67740b2de5))

:named haseqTm_refine_1ba8fd8bb363097813064c67740b2de5))
;;;;;;;;;;;;;;;;haseq for Tm_refine_1780a0fddfda88c43d203b562c6d3f5b
;;; Fact-ids: Name FStar.Seq.Properties.createL_post; Namespace FStar.Seq.Properties
(assert (! (iff (Valid (Prims.hasEq Tm_refine_1780a0fddfda88c43d203b562c6d3f5b))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_1780a0fddfda88c43d203b562c6d3f5b))
;;;;;;;;;;;;;;;;haseq for Tm_refine_117824c94bb8fa4b5424e2a89ad3129a
;;; Fact-ids: Name Lib.IntTypes.i8; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_117824c94bb8fa4b5424e2a89ad3129a))
(Valid (Prims.hasEq Prims.int)))
:named haseqTm_refine_117824c94bb8fa4b5424e2a89ad3129a))
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
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(18,5-18,12); use=Lib.IntTypes.fsti(18,5-18,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
@x1
Lib.IntTypes.inttype)
(or (is-Lib.IntTypes.U1 @x1)
(is-Lib.IntTypes.U8 @x1)
(is-Lib.IntTypes.U16 @x1)
(is-Lib.IntTypes.U32 @x1)
(is-Lib.IntTypes.U64 @x1)
(is-Lib.IntTypes.U128 @x1)
(is-Lib.IntTypes.S8 @x1)
(is-Lib.IntTypes.S16 @x1)
(is-Lib.IntTypes.S32 @x1)
(is-Lib.IntTypes.S64 @x1)
(is-Lib.IntTypes.S128 @x1)))
 

:pattern ((HasTypeFuel (SFuel @u0)
@x1
Lib.IntTypes.inttype))
:qid fuel_guarded_inversion_Lib.IntTypes.inttype))

:named fuel_guarded_inversion_Lib.IntTypes.inttype))
;;;;;;;;;;;;;;;;Equation for fuel-instrumented recursive function: Prims.pow2
;;; Fact-ids: Name Prims.pow2; Namespace Prims
(assert (! 
;; def=Prims.fst(708,8-708,12); use=Prims.fst(708,8-708,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasType @x1
Prims.nat)
(= (Prims.pow2.fuel_instrumented (SFuel @u0)
@x1)
(let ((@lb2 @x1))
(ite (= @lb2
(BoxInt 0))
(BoxInt 1)
(Prims.op_Multiply (BoxInt 2)
(Prims.pow2.fuel_instrumented @u0
(Prims.op_Subtraction @x1
(BoxInt 1))))))))
 :weight 0


:pattern ((Prims.pow2.fuel_instrumented (SFuel @u0)
@x1))
:qid equation_with_fuel_Prims.pow2.fuel_instrumented))

:named equation_with_fuel_Prims.pow2.fuel_instrumented))
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
;;;;;;;;;;;;;;;;Equation for Prims.eqtype
;;; Fact-ids: Name Prims.eqtype; Namespace Prims
(assert (! (= Prims.eqtype
Tm_refine_414d0a9f578ab0048252f8c8f552b99f)
:named equation_Prims.eqtype))
;;;;;;;;;;;;;;;;Equation for Lib.Sequence.seq
;;; Fact-ids: Name Lib.Sequence.seq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(15,4-15,7); use=Lib.Sequence.fsti(15,4-15,7)
(forall ((@x0 Term))
 (! (= (Lib.Sequence.seq @x0)
(FStar.Seq.Base.seq @x0))
 

:pattern ((Lib.Sequence.seq @x0))
:qid equation_Lib.Sequence.seq))

:named equation_Lib.Sequence.seq))
;;;;;;;;;;;;;;;;Equation for Lib.Sequence.lseq
;;; Fact-ids: Name Lib.Sequence.lseq; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(27,4-27,8); use=Lib.Sequence.fsti(27,4-27,8)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Lib.Sequence.lseq @x0
@x1)
(Tm_refine_d8d83307254a8900dd20598654272e42 @x0
@x1))
 

:pattern ((Lib.Sequence.lseq @x0
@x1))
:qid equation_Lib.Sequence.lseq))

:named equation_Lib.Sequence.lseq))
;;;;;;;;;;;;;;;;Equation for Lib.Sequence.length
;;; Fact-ids: Name Lib.Sequence.length; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(18,4-18,10); use=Lib.Sequence.fsti(18,4-18,10)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Lib.Sequence.length @x0
@x1)
(FStar.Seq.Base.length @x0
@x1))
 

:pattern ((Lib.Sequence.length @x0
@x1))
:qid equation_Lib.Sequence.length))

:named equation_Lib.Sequence.length))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.unsigned
;;; Fact-ids: Name Lib.IntTypes.unsigned; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(24,4-24,12); use=Lib.IntTypes.fsti(24,4-24,12)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.unsigned @x0)
(let ((@lb1 @x0))
(ite (is-Lib.IntTypes.U1 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.U8 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.U16 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.U32 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.U64 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.U128 @lb1)
(BoxBool true)
(BoxBool false)))))))))
 

:pattern ((Lib.IntTypes.unsigned @x0))
:qid equation_Lib.IntTypes.unsigned))

:named equation_Lib.IntTypes.unsigned))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.signed
;;; Fact-ids: Name Lib.IntTypes.signed; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(31,4-31,10); use=Lib.IntTypes.fsti(31,4-31,10)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.signed @x0)
(let ((@lb1 @x0))
(ite (is-Lib.IntTypes.S8 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.S16 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.S32 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.S64 @lb1)
(BoxBool true)
(ite (is-Lib.IntTypes.S128 @lb1)
(BoxBool true)
(BoxBool false))))))))
 

:pattern ((Lib.IntTypes.signed @x0))
:qid equation_Lib.IntTypes.signed))

:named equation_Lib.IntTypes.signed))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.range
;;; Fact-ids: Name Lib.IntTypes.range; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(87,4-87,9); use=Lib.IntTypes.fsti(87,4-87,9)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Valid (Lib.IntTypes.range @x0
@x1))

;; def=Lib.IntTypes.fsti(88,2-88,32); use=Lib.IntTypes.fsti(88,2-88,32)
(and 
;; def=Lib.IntTypes.fsti(88,2-88,15); use=Lib.IntTypes.fsti(88,2-88,15)
(<= (BoxInt_proj_0 (Lib.IntTypes.minint @x1))
(BoxInt_proj_0 @x0))


;; def=Lib.IntTypes.fsti(88,19-88,32); use=Lib.IntTypes.fsti(88,19-88,32)
(<= (BoxInt_proj_0 @x0)
(BoxInt_proj_0 (Lib.IntTypes.maxint @x1)))
)
)
 

:pattern ((Lib.IntTypes.range @x0
@x1))
:qid equation_Lib.IntTypes.range))

:named equation_Lib.IntTypes.range))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.minint
;;; Fact-ids: Name Lib.IntTypes.minint; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(84,4-84,10); use=Lib.IntTypes.fsti(84,4-84,10)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.minint @x0)
(let ((@lb1 (Lib.IntTypes.unsigned @x0)))
(ite (= @lb1
(BoxBool true))
(BoxInt 0)
(Prims.op_Minus (Prims.pow2 (Prims.op_Subtraction (Lib.IntTypes.bits @x0)
(BoxInt 1)))))))
 

:pattern ((Lib.IntTypes.minint @x0))
:qid equation_Lib.IntTypes.minint))

:named equation_Lib.IntTypes.minint))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.maxint
;;; Fact-ids: Name Lib.IntTypes.maxint; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(79,4-79,10); use=Lib.IntTypes.fsti(79,4-79,10)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.maxint @x0)
(let ((@lb1 (Lib.IntTypes.unsigned @x0)))
(ite (= @lb1
(BoxBool true))
(Prims.op_Subtraction (Prims.pow2 (Lib.IntTypes.bits @x0))
(BoxInt 1))
(Prims.op_Subtraction (Prims.pow2 (Prims.op_Subtraction (Lib.IntTypes.bits @x0)
(BoxInt 1)))
(BoxInt 1)))))
 

:pattern ((Lib.IntTypes.maxint @x0))
:qid equation_Lib.IntTypes.maxint))

:named equation_Lib.IntTypes.maxint))
;;;;;;;;;;;;;;;;Equation for Lib.IntTypes.bits
;;; Fact-ids: Name Lib.IntTypes.bits; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(58,4-58,8); use=Lib.IntTypes.fsti(58,4-58,8)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.bits @x0)
(let ((@lb1 @x0))
(ite (is-Lib.IntTypes.U1 @lb1)
(BoxInt 1)
(ite (is-Lib.IntTypes.U8 @lb1)
(BoxInt 8)
(ite (is-Lib.IntTypes.S8 @lb1)
(BoxInt 8)
(ite (is-Lib.IntTypes.U16 @lb1)
(BoxInt 16)
(ite (is-Lib.IntTypes.S16 @lb1)
(BoxInt 16)
(ite (is-Lib.IntTypes.U32 @lb1)
(BoxInt 32)
(ite (is-Lib.IntTypes.S32 @lb1)
(BoxInt 32)
(ite (is-Lib.IntTypes.U64 @lb1)
(BoxInt 64)
(ite (is-Lib.IntTypes.S64 @lb1)
(BoxInt 64)
(ite (is-Lib.IntTypes.U128 @lb1)
(BoxInt 128)
(ite (is-Lib.IntTypes.S128 @lb1)
(BoxInt 128)
Tm_unit)))))))))))))
 

:pattern ((Lib.IntTypes.bits @x0))
:qid equation_Lib.IntTypes.bits))

:named equation_Lib.IntTypes.bits))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U8@tok
Lib.IntTypes.U8)
:named equality_tok_Lib.IntTypes.U8@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U64@tok
Lib.IntTypes.U64)
:named equality_tok_Lib.IntTypes.U64@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U32@tok
Lib.IntTypes.U32)
:named equality_tok_Lib.IntTypes.U32@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U1@tok
Lib.IntTypes.U1)
:named equality_tok_Lib.IntTypes.U1@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U16@tok
Lib.IntTypes.U16)
:named equality_tok_Lib.IntTypes.U16@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.U128@tok
Lib.IntTypes.U128)
:named equality_tok_Lib.IntTypes.U128@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.S8@tok
Lib.IntTypes.S8)
:named equality_tok_Lib.IntTypes.S8@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.S64@tok
Lib.IntTypes.S64)
:named equality_tok_Lib.IntTypes.S64@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.S32@tok
Lib.IntTypes.S32)
:named equality_tok_Lib.IntTypes.S32@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.S16@tok
Lib.IntTypes.S16)
:named equality_tok_Lib.IntTypes.S16@tok))
;;;;;;;;;;;;;;;;equality for proxy
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= Lib.IntTypes.S128@tok
Lib.IntTypes.S128)
:named equality_tok_Lib.IntTypes.S128@tok))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Lib.IntTypes.uu___is_U128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,32-19,36); use=Lib.IntTypes.fsti(19,32-19,36)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.uu___is_U128 @x0)
(BoxBool (is-Lib.IntTypes.U128 @x0)))
 

:pattern ((Lib.IntTypes.uu___is_U128 @x0))
:qid disc_equation_Lib.IntTypes.U128))

:named disc_equation_Lib.IntTypes.U128))
;;;;;;;;;;;;;;;;Discriminator equation
;;; Fact-ids: Name Lib.IntTypes.uu___is_S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,62-19,66); use=Lib.IntTypes.fsti(19,62-19,66)
(forall ((@x0 Term))
 (! (= (Lib.IntTypes.uu___is_S128 @x0)
(BoxBool (is-Lib.IntTypes.S128 @x0)))
 

:pattern ((Lib.IntTypes.uu___is_S128 @x0))
:qid disc_equation_Lib.IntTypes.S128))

:named disc_equation_Lib.IntTypes.S128))
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
;;;;;;;;;;;;;;;;Prop-typing for Lib.IntTypes.range
;;; Fact-ids: Name Lib.IntTypes.range; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(87,4-87,9); use=Lib.IntTypes.fsti(87,4-87,9)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Prims.int)
(HasType @x1
Lib.IntTypes.inttype))
(Valid (Prims.subtype_of (Lib.IntTypes.range @x0
@x1)
Prims.unit)))
 

:pattern ((Prims.subtype_of (Lib.IntTypes.range @x0
@x1)
Prims.unit))
:qid defn_equation_Lib.IntTypes.range))

:named defn_equation_Lib.IntTypes.range))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,9-19,11); use=Lib.IntTypes.fsti(19,9-19,11)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U8
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U8
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U8@tok))

:named data_typing_intro_Lib.IntTypes.U8@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,26-19,29); use=Lib.IntTypes.fsti(19,26-19,29)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U64
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U64
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U64@tok))

:named data_typing_intro_Lib.IntTypes.U64@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,20-19,23); use=Lib.IntTypes.fsti(19,20-19,23)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U32
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U32
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U32@tok))

:named data_typing_intro_Lib.IntTypes.U32@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,4-19,6); use=Lib.IntTypes.fsti(19,4-19,6)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U1
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U1
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U1@tok))

:named data_typing_intro_Lib.IntTypes.U1@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,14-19,17); use=Lib.IntTypes.fsti(19,14-19,17)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U16
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U16
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U16@tok))

:named data_typing_intro_Lib.IntTypes.U16@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,32-19,36); use=Lib.IntTypes.fsti(19,32-19,36)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.U128
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.U128
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.U128@tok))

:named data_typing_intro_Lib.IntTypes.U128@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,39-19,41); use=Lib.IntTypes.fsti(19,39-19,41)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.S8
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.S8
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.S8@tok))

:named data_typing_intro_Lib.IntTypes.S8@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,56-19,59); use=Lib.IntTypes.fsti(19,56-19,59)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.S64
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.S64
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.S64@tok))

:named data_typing_intro_Lib.IntTypes.S64@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,50-19,53); use=Lib.IntTypes.fsti(19,50-19,53)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.S32
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.S32
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.S32@tok))

:named data_typing_intro_Lib.IntTypes.S32@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,44-19,47); use=Lib.IntTypes.fsti(19,44-19,47)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.S16
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.S16
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.S16@tok))

:named data_typing_intro_Lib.IntTypes.S16@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(19,62-19,66); use=Lib.IntTypes.fsti(19,62-19,66)
(forall ((@u0 Fuel))
 (! (HasTypeFuel @u0
Lib.IntTypes.S128
Lib.IntTypes.inttype)
 

:pattern ((HasTypeFuel @u0
Lib.IntTypes.S128
Lib.IntTypes.inttype))
:qid data_typing_intro_Lib.IntTypes.S128@tok))

:named data_typing_intro_Lib.IntTypes.S128@tok))
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
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 101
(Term_constr_id Lib.IntTypes.inttype))
:named constructor_distinct_Lib.IntTypes.inttype))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 109
(Term_constr_id Lib.IntTypes.U8))
:named constructor_distinct_Lib.IntTypes.U8))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 115
(Term_constr_id Lib.IntTypes.U64))
:named constructor_distinct_Lib.IntTypes.U64))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 113
(Term_constr_id Lib.IntTypes.U32))
:named constructor_distinct_Lib.IntTypes.U32))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 111
(Term_constr_id Lib.IntTypes.U16))
:named constructor_distinct_Lib.IntTypes.U16))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 117
(Term_constr_id Lib.IntTypes.U128))
:named constructor_distinct_Lib.IntTypes.U128))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 107
(Term_constr_id Lib.IntTypes.U1))
:named constructor_distinct_Lib.IntTypes.U1))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 119
(Term_constr_id Lib.IntTypes.S8))
:named constructor_distinct_Lib.IntTypes.S8))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 125
(Term_constr_id Lib.IntTypes.S64))
:named constructor_distinct_Lib.IntTypes.S64))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 123
(Term_constr_id Lib.IntTypes.S32))
:named constructor_distinct_Lib.IntTypes.S32))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 121
(Term_constr_id Lib.IntTypes.S16))
:named constructor_distinct_Lib.IntTypes.S16))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! (= 127
(Term_constr_id Lib.IntTypes.S128))
:named constructor_distinct_Lib.IntTypes.S128))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term))
 (! (= 103
(Term_constr_id (FStar.Seq.Base.seq @x0)))
 

:pattern ((FStar.Seq.Base.seq @x0))
:qid constructor_distinct_FStar.Seq.Base.seq))

:named constructor_distinct_FStar.Seq.Base.seq))
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
;;;;;;;;;;;;;;;;Assumption: Lib.IntTypes.inttype__uu___haseq
;;; Fact-ids: Name Lib.IntTypes.inttype__uu___haseq; Namespace Lib.IntTypes
(assert (! (Valid (Prims.hasEq Lib.IntTypes.inttype))
:named assumption_Lib.IntTypes.inttype__uu___haseq))
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
;;; Fact-ids: Name Lib.IntTypes.inttype; Namespace Lib.IntTypes; Name Lib.IntTypes.U1; Namespace Lib.IntTypes; Name Lib.IntTypes.U8; Namespace Lib.IntTypes; Name Lib.IntTypes.U16; Namespace Lib.IntTypes; Name Lib.IntTypes.U32; Namespace Lib.IntTypes; Name Lib.IntTypes.U64; Namespace Lib.IntTypes; Name Lib.IntTypes.U128; Namespace Lib.IntTypes; Name Lib.IntTypes.S8; Namespace Lib.IntTypes; Name Lib.IntTypes.S16; Namespace Lib.IntTypes; Name Lib.IntTypes.S32; Namespace Lib.IntTypes; Name Lib.IntTypes.S64; Namespace Lib.IntTypes; Name Lib.IntTypes.S128; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(18,5-18,12); use=Lib.IntTypes.fsti(18,5-18,12)
(forall ((@x0 Term) (@u1 Fuel))
 (! (implies (HasTypeFuel @u1
@x0
Lib.IntTypes.inttype)
(= Lib.IntTypes.inttype
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
Lib.IntTypes.inttype))
:qid Lib.IntTypes_pretyping_d450aafb6f125538d0e96425faddef55))

:named Lib.IntTypes_pretyping_d450aafb6f125538d0e96425faddef55))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name FStar.Seq.Base.seq; Namespace FStar.Seq.Base
(assert (! 
;; def=FStar.Seq.Base.fsti(23,8-23,11); use=FStar.Seq.Base.fsti(23,8-23,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(FStar.Seq.Base.seq @x2))
(= (FStar.Seq.Base.seq @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(FStar.Seq.Base.seq @x2)))
:qid FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4))

:named FStar.Seq.Base_pretyping_7efa52b424e80c83ad68a652aa3561e4))
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
;;;;;;;;;;;;;;;;Fuel irrelevance
;;; Fact-ids: Name Prims.pow2; Namespace Prims
(assert (! 
;; def=Prims.fst(708,8-708,12); use=Prims.fst(708,8-708,12)
(forall ((@u0 Fuel) (@x1 Term))
 (! (= (Prims.pow2.fuel_instrumented (SFuel @u0)
@x1)
(Prims.pow2.fuel_instrumented ZFuel
@x1))
 

:pattern ((Prims.pow2.fuel_instrumented (SFuel @u0)
@x1))
:qid @fuel_irrelevance_Prims.pow2.fuel_instrumented))

:named @fuel_irrelevance_Prims.pow2.fuel_instrumented))
;;;;;;;;;;;;;;;;Correspondence of recursive function to instrumented version
;;; Fact-ids: Name Prims.pow2; Namespace Prims
(assert (! 
;; def=Prims.fst(708,8-708,12); use=Prims.fst(708,8-708,12)
(forall ((@x0 Term))
 (! (= (Prims.pow2 @x0)
(Prims.pow2.fuel_instrumented MaxFuel
@x0))
 

:pattern ((Prims.pow2 @x0))
:qid @fuel_correspondence_Prims.pow2.fuel_instrumented))

:named @fuel_correspondence_Prims.pow2.fuel_instrumented))
(push) ;; push{2

; Starting query at Lib.Sequence.fsti(417,0-429,84)

(declare-fun label_1 () Bool)
;;;;;;;;;;;;;;;;haseq for Tm_refine_609674d96c81c962549b0076055bf213
;;; Fact-ids: Name Lib.IntTypes.size_pos; Namespace Lib.IntTypes
(assert (! (iff (Valid (Prims.hasEq Tm_refine_609674d96c81c962549b0076055bf213))
(Valid (Prims.hasEq Prims.pos)))
:named haseqTm_refine_609674d96c81c962549b0076055bf213))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.IntTypes.size_pos; Namespace Lib.IntTypes
(assert (! 
;; def=Lib.IntTypes.fsti(311,16-311,38); use=Lib.IntTypes.fsti(311,16-311,38)
(forall ((@u0 Fuel) (@x1 Term))
 (! (iff (HasTypeFuel @u0
@x1
Tm_refine_609674d96c81c962549b0076055bf213)
(and (HasTypeFuel @u0
@x1
Prims.pos)

;; def=Lib.IntTypes.fsti(311,22-311,37); use=Lib.IntTypes.fsti(311,22-311,37)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Subtraction (Prims.pow2 (BoxInt 32))
(BoxInt 1))))
))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_refine_609674d96c81c962549b0076055bf213))
:qid refinement_interpretation_Tm_refine_609674d96c81c962549b0076055bf213))

:named refinement_interpretation_Tm_refine_609674d96c81c962549b0076055bf213))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.IntTypes.size_pos; Namespace Lib.IntTypes
(assert (! (HasType Tm_refine_609674d96c81c962549b0076055bf213
Tm_type)
:named refinement_kinding_Tm_refine_609674d96c81c962549b0076055bf213))
(declare-fun Tm_refine_07295705544891065e7a01d318c0ba51 (Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,5-421,20); use=Lib.Sequence.fsti(421,5-421,20)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_07295705544891065e7a01d318c0ba51 @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_07295705544891065e7a01d318c0ba51 @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_07295705544891065e7a01d318c0ba51))

:named refinement_kinding_Tm_refine_07295705544891065e7a01d318c0ba51))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,5-421,20); use=Lib.Sequence.fsti(421,5-421,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_07295705544891065e7a01d318c0ba51 @x2))
(and (HasTypeFuel @u0
@x1
Prims.pos)

;; def=Lib.Sequence.fsti(421,11-421,19); use=Lib.Sequence.fsti(421,11-421,19)
(<= (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x2))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_07295705544891065e7a01d318c0ba51 @x2)))
:qid refinement_interpretation_Tm_refine_07295705544891065e7a01d318c0ba51))

:named refinement_interpretation_Tm_refine_07295705544891065e7a01d318c0ba51))
;;;;;;;;;;;;;;;;haseq for Tm_refine_07295705544891065e7a01d318c0ba51
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,5-421,20); use=Lib.Sequence.fsti(421,5-421,20)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_07295705544891065e7a01d318c0ba51 @x0)))
(Valid (Prims.hasEq Prims.pos)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_07295705544891065e7a01d318c0ba51 @x0))))
:qid haseqTm_refine_07295705544891065e7a01d318c0ba51))

:named haseqTm_refine_07295705544891065e7a01d318c0ba51))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f4f040c0afc8e02646bd007fb369c803
;;; Fact-ids: Name Lib.Sequence.generate_blocks; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(342,13-342,41); use=Lib.Sequence.fsti(342,13-342,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x0
@x1
@x2)))
(Valid (Prims.hasEq (Lib.Sequence.seq @x0))))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x0
@x1
@x2))))
:qid haseqTm_refine_f4f040c0afc8e02646bd007fb369c803))

:named haseqTm_refine_f4f040c0afc8e02646bd007fb369c803))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.Sequence.generate_blocks; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(342,13-342,41); use=Lib.Sequence.fsti(342,13-342,41)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
(Lib.Sequence.seq @x2))

;; def=Lib.Sequence.fsti(342,21-342,40); use=Lib.Sequence.fsti(342,21-342,40)
(= (Lib.Sequence.length @x2
@x1)
(Prims.op_Multiply @x3
@x4))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_f4f040c0afc8e02646bd007fb369c803))

:named refinement_interpretation_Tm_refine_f4f040c0afc8e02646bd007fb369c803))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.Sequence.generate_blocks; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(342,13-342,41); use=Lib.Sequence.fsti(342,13-342,41)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_f4f040c0afc8e02646bd007fb369c803))

:named refinement_kinding_Tm_refine_f4f040c0afc8e02646bd007fb369c803))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c1424615841f28cac7fc34e92b7ff33c
;;; Fact-ids: Name Lib.LoopCombinators.repeat_gen; Namespace Lib.LoopCombinators
(assert (! 
;; def=Lib.LoopCombinators.fsti(115,8-115,20); use=Lib.LoopCombinators.fsti(115,8-115,20)
(forall ((@x0 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0))))
:qid haseqTm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named haseqTm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: Name Lib.LoopCombinators.repeat_gen; Namespace Lib.LoopCombinators
(assert (! 
;; def=Lib.LoopCombinators.fsti(115,8-115,20); use=Lib.LoopCombinators.fsti(115,8-115,20)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x2))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.LoopCombinators.fsti(115,14-115,19); use=Lib.LoopCombinators.fsti(115,14-115,19)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 @x2))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x2)))
:qid refinement_interpretation_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named refinement_interpretation_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Lib.LoopCombinators.repeat_gen; Namespace Lib.LoopCombinators
(assert (! 
;; def=Lib.LoopCombinators.fsti(115,8-115,20); use=Lib.LoopCombinators.fsti(115,8-115,20)
(forall ((@x0 Term))
 (! (HasType (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)
Tm_type)
 

:pattern ((HasType (Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x0)
Tm_type))
:qid refinement_kinding_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))

:named refinement_kinding_Tm_refine_c1424615841f28cac7fc34e92b7ff33c))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da
;;; Fact-ids: Name Lib.Sequence.map_blocks_f; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(385,6-385,46); use=Lib.Sequence.fsti(385,6-385,46)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x1
@x2
@x3))
(and 
;; def=Lib.Sequence.fsti(385,6-385,46); use=Lib.Sequence.fsti(385,6-385,46)
(forall ((@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x4
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x3))
(HasType @x5
(Lib.Sequence.lseq @x2
@x1)))
(HasType (ApplyTT (ApplyTT @x0
@x4)
@x5)
(Lib.Sequence.lseq @x2
@x1)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x4)
@x5))
:qid Lib.Sequence_interpretation_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da.1))

(IsTotFun @x0)

;; def=Lib.Sequence.fsti(385,6-385,46); use=Lib.Sequence.fsti(385,6-385,46)
(forall ((@x4 Term))
 (! (implies (HasType @x4
(Tm_refine_c1424615841f28cac7fc34e92b7ff33c @x3))
(IsTotFun (ApplyTT @x0
@x4)))
 

:pattern ((ApplyTT @x0
@x4))
:qid Lib.Sequence_interpretation_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da.2))
))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x1
@x2
@x3)))
:qid Lib.Sequence_interpretation_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))

:named Lib.Sequence_interpretation_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Lib.Sequence.map_blocks_f; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(385,6-385,46); use=Lib.Sequence.fsti(385,6-385,46)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x2
@x3
@x4))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x2
@x3
@x4)))
:qid Lib.Sequence_pre_typing_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))

:named Lib.Sequence_pre_typing_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da
;;; Fact-ids: Name Lib.Sequence.map_blocks_f; Namespace Lib.Sequence
(assert (! 
;; def=Lib.Sequence.fsti(385,6-385,46); use=Lib.Sequence.fsti(385,6-385,46)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x0
@x1
@x2)
Tm_type))
:qid kinding_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))

:named kinding_Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da))
(declare-fun Tm_refine_e37a8a81b6e72b6dae52414929365d29 (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(424,5-424,22); use=Lib.Sequence.fsti(424,5-424,22)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_e37a8a81b6e72b6dae52414929365d29))

:named refinement_kinding_Tm_refine_e37a8a81b6e72b6dae52414929365d29))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(424,5-424,22); use=Lib.Sequence.fsti(424,5-424,22)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.nat)

;; def=Lib.Sequence.fsti(424,11-424,21); use=Lib.Sequence.fsti(424,11-424,21)
(< (BoxInt_proj_0 @x1)
(BoxInt_proj_0 (Prims.op_Multiply @x2
@x3)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x2
@x3)))
:qid refinement_interpretation_Tm_refine_e37a8a81b6e72b6dae52414929365d29))

:named refinement_interpretation_Tm_refine_e37a8a81b6e72b6dae52414929365d29))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e37a8a81b6e72b6dae52414929365d29
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(424,5-424,22); use=Lib.Sequence.fsti(424,5-424,22)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x0
@x1)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x0
@x1))))
:qid haseqTm_refine_e37a8a81b6e72b6dae52414929365d29))

:named haseqTm_refine_e37a8a81b6e72b6dae52414929365d29))
(declare-fun Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9 () Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! (HasType Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9
Tm_type)
:named refinement_kinding_Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(425,5-429,84); use=Lib.Sequence.fsti(425,5-425,10)
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
(declare-fun Tm_refine_6fdcf7302a39aeac615b0eb19b068938 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(427,8-427,18); use=Lib.Sequence.fsti(427,8-427,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_6fdcf7302a39aeac615b0eb19b068938))

:named refinement_kinding_Tm_refine_6fdcf7302a39aeac615b0eb19b068938))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(427,8-427,18); use=Lib.Sequence.fsti(427,8-427,18)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Lib.Sequence.fsti(427,8-427,18); use=Lib.Sequence.fsti(427,8-427,18)
(= (Prims.op_Division @x2
@x3)
@x4)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_6fdcf7302a39aeac615b0eb19b068938))

:named refinement_interpretation_Tm_refine_6fdcf7302a39aeac615b0eb19b068938))
;;;;;;;;;;;;;;;;haseq for Tm_refine_6fdcf7302a39aeac615b0eb19b068938
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(427,8-427,18); use=Lib.Sequence.fsti(427,8-427,18)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x0
@x1
@x2))))
:qid haseqTm_refine_6fdcf7302a39aeac615b0eb19b068938))

:named haseqTm_refine_6fdcf7302a39aeac615b0eb19b068938))
(declare-fun Tm_refine_288bbb48da5bad009ab47741bed35bc6 (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_288bbb48da5bad009ab47741bed35bc6))

:named refinement_kinding_Tm_refine_288bbb48da5bad009ab47741bed35bc6))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(= @x2
(Prims.op_Multiply (Prims.op_Division @x3
@x4)
@x4))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_288bbb48da5bad009ab47741bed35bc6))

:named refinement_interpretation_Tm_refine_288bbb48da5bad009ab47741bed35bc6))
;;;;;;;;;;;;;;;;haseq for Tm_refine_288bbb48da5bad009ab47741bed35bc6
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x0
@x1
@x2))))
:qid haseqTm_refine_288bbb48da5bad009ab47741bed35bc6))

:named haseqTm_refine_288bbb48da5bad009ab47741bed35bc6))
(declare-fun Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=Lib.Sequence.fsti(428,31-428,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (HasType (Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x0
@x1
@x2
@x3)
Tm_type)
 

:pattern ((HasType (Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x0
@x1
@x2
@x3)
Tm_type))
:qid refinement_kinding_Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))

:named refinement_kinding_Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=Lib.Sequence.fsti(428,31-428,36)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x2
@x3
@x4
@x5))
(and (HasTypeFuel @u0
@x1
Prims.nat)
(BoxBool_proj_0 (Prims.op_LessThanOrEqual (Prims.op_Multiply (Prims.op_Division @x2
@x3)
@x3)
@x1))
(BoxBool_proj_0 (Prims.op_LessThanOrEqual @x1
(FStar.Seq.Base.length @x4
@x5)))))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x2
@x3
@x4
@x5)))
:qid refinement_interpretation_Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))

:named refinement_interpretation_Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))
;;;;;;;;;;;;;;;;haseq for Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0
;;; Fact-ids: 
(assert (! 
;; def=FStar.Seq.Base.fsti(64,43-64,73); use=Lib.Sequence.fsti(428,31-428,36)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x0
@x1
@x2
@x3)))
(Valid (Prims.hasEq Prims.nat)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x0
@x1
@x2
@x3))))
:qid haseqTm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))

:named haseqTm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0))
(declare-fun Tm_refine_b906d8d091d487602d9c5d07247552ec (Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_b906d8d091d487602d9c5d07247552ec @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_b906d8d091d487602d9c5d07247552ec @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_b906d8d091d487602d9c5d07247552ec))

:named refinement_kinding_Tm_refine_b906d8d091d487602d9c5d07247552ec))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_b906d8d091d487602d9c5d07247552ec @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(= @x2
(Prims.op_Multiply (Prims.op_Addition (Prims.op_Division @x3
@x4)
(BoxInt 1))
@x4))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_b906d8d091d487602d9c5d07247552ec @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_b906d8d091d487602d9c5d07247552ec))

:named refinement_interpretation_Tm_refine_b906d8d091d487602d9c5d07247552ec))
;;;;;;;;;;;;;;;;haseq for Tm_refine_b906d8d091d487602d9c5d07247552ec
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_b906d8d091d487602d9c5d07247552ec @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_b906d8d091d487602d9c5d07247552ec @x0
@x1
@x2))))
:qid haseqTm_refine_b906d8d091d487602d9c5d07247552ec))

:named haseqTm_refine_b906d8d091d487602d9c5d07247552ec))
(declare-fun Tm_refine_eee2464660c4d7ffe1ede856164657f9 (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(428,15-428,64); use=Lib.Sequence.fsti(428,15-428,64)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_eee2464660c4d7ffe1ede856164657f9))

:named refinement_kinding_Tm_refine_eee2464660c4d7ffe1ede856164657f9))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(428,15-428,64); use=Lib.Sequence.fsti(428,15-428,64)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Lib.Sequence.fsti(428,15-428,64); use=Lib.Sequence.fsti(428,15-428,64)
(= (FStar.Seq.Base.slice @x2
@x3
(Prims.op_Multiply (Prims.op_Division @x4
@x5)
@x5)
(Prims.op_Multiply (Prims.op_Addition (Prims.op_Division @x4
@x5)
(BoxInt 1))
@x5))
@x6)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_eee2464660c4d7ffe1ede856164657f9))

:named refinement_interpretation_Tm_refine_eee2464660c4d7ffe1ede856164657f9))
;;;;;;;;;;;;;;;;haseq for Tm_refine_eee2464660c4d7ffe1ede856164657f9
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(428,15-428,64); use=Lib.Sequence.fsti(428,15-428,64)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_eee2464660c4d7ffe1ede856164657f9))

:named haseqTm_refine_eee2464660c4d7ffe1ede856164657f9))
(declare-fun Tm_refine_e339f3123dd2db11f24014542889f88c (Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (HasType (Tm_refine_e339f3123dd2db11f24014542889f88c @x0
@x1
@x2
@x3
@x4)
Tm_type)
 

:pattern ((HasType (Tm_refine_e339f3123dd2db11f24014542889f88c @x0
@x1
@x2
@x3
@x4)
Tm_type))
:qid refinement_kinding_Tm_refine_e339f3123dd2db11f24014542889f88c))

:named refinement_kinding_Tm_refine_e339f3123dd2db11f24014542889f88c))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_e339f3123dd2db11f24014542889f88c @x2
@x3
@x4
@x5
@x6))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(= @x2
(FStar.Seq.Base.slice @x3
@x4
(Prims.op_Multiply (Prims.op_Division @x5
@x6)
@x6)
(Prims.op_Multiply (Prims.op_Addition (Prims.op_Division @x5
@x6)
(BoxInt 1))
@x6)))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_e339f3123dd2db11f24014542889f88c @x2
@x3
@x4
@x5
@x6)))
:qid refinement_interpretation_Tm_refine_e339f3123dd2db11f24014542889f88c))

:named refinement_interpretation_Tm_refine_e339f3123dd2db11f24014542889f88c))
;;;;;;;;;;;;;;;;haseq for Tm_refine_e339f3123dd2db11f24014542889f88c
;;; Fact-ids: 
(assert (! 
;; def=Prims.fst(356,26-356,41); use=Lib.Sequence.fsti(425,11-429,84)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_e339f3123dd2db11f24014542889f88c @x0
@x1
@x2
@x3
@x4)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_e339f3123dd2db11f24014542889f88c @x0
@x1
@x2
@x3
@x4))))
:qid haseqTm_refine_e339f3123dd2db11f24014542889f88c))

:named haseqTm_refine_e339f3123dd2db11f24014542889f88c))
(declare-fun Tm_refine_244b39341e4c95ffd1ac74df3040523e (Term Term) Term)
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,11-421,19); use=Lib.Sequence.fsti(429,39-429,40)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_refine_244b39341e4c95ffd1ac74df3040523e @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_refine_244b39341e4c95ffd1ac74df3040523e @x0
@x1)
Tm_type))
:qid refinement_kinding_Tm_refine_244b39341e4c95ffd1ac74df3040523e))

:named refinement_kinding_Tm_refine_244b39341e4c95ffd1ac74df3040523e))
;;;;;;;;;;;;;;;;refinement_interpretation
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,11-421,19); use=Lib.Sequence.fsti(429,39-429,40)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_244b39341e4c95ffd1ac74df3040523e @x2
@x3))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(683,18-683,23); use=Lib.Sequence.fsti(429,39-429,40)
(> (BoxInt_proj_0 @x2)
(BoxInt_proj_0 (BoxInt 0)))


;; def=Lib.Sequence.fsti(421,11-421,19); use=Lib.Sequence.fsti(429,39-429,40)
(<= (BoxInt_proj_0 @x2)
(BoxInt_proj_0 @x3))
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_244b39341e4c95ffd1ac74df3040523e @x2
@x3)))
:qid refinement_interpretation_Tm_refine_244b39341e4c95ffd1ac74df3040523e))

:named refinement_interpretation_Tm_refine_244b39341e4c95ffd1ac74df3040523e))
;;;;;;;;;;;;;;;;haseq for Tm_refine_244b39341e4c95ffd1ac74df3040523e
;;; Fact-ids: 
(assert (! 
;; def=Lib.Sequence.fsti(421,11-421,19); use=Lib.Sequence.fsti(429,39-429,40)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_244b39341e4c95ffd1ac74df3040523e @x0
@x1)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_244b39341e4c95ffd1ac74df3040523e @x0
@x1))))
:qid haseqTm_refine_244b39341e4c95ffd1ac74df3040523e))

:named haseqTm_refine_244b39341e4c95ffd1ac74df3040523e))

; Encoding query formula : forall (a: Type) (bs: n: Prims.pos{n <= Prims.pow2 32 - 1}) (max: Prims.pos)
;   (n: Prims.pos{n <= max}) (inp: Lib.Sequence.seq a {Lib.Sequence.length inp == max * bs})
;   (f: (i: Prims.nat{i < max} -> _: Lib.Sequence.lseq a bs -> Lib.Sequence.lseq a bs))
;   (i: Prims.nat{i < n * bs}) (_: Prims.squash Prims.l_True) (pure_result: Prims.unit)
;   (_: i / bs < n) (any_result: n: Prims.pos{n <= Prims.pow2 32 - 1})
;   (_: _: Prims.unit{bs == any_result}) (any_result: Prims.int)
;   (_: _: Prims.unit{i / bs == any_result}) (return_val: Prims.nat)
;   (_: _: Prims.unit{return_val == i / bs * bs})
;   (return_val: j: Prims.nat{i / bs * bs <= j && j <= FStar.Seq.Base.length inp})
;   (_: _: Prims.unit{return_val == (i / bs + 1) * bs}) (any_result: FStar.Seq.Base.seq a)
;   (_: _: Prims.unit{FStar.Seq.Base.slice inp (i / bs * bs) ((i / bs + 1) * bs) == any_result})
;   (return_val: Lib.Sequence.lseq a bs)
;   (_: _: Prims.unit{return_val == FStar.Seq.Base.slice inp (i / bs * bs) ((i / bs + 1) * bs)})
;   (_: _: Prims.unit{FStar.Seq.Base.slice inp (i / bs * bs) ((i / bs + 1) * bs) == return_val})
;   (any_result: Prims.pos) (_: _: Prims.unit{max == any_result})
;   (_: _: Prims.unit{n > 0 /\ n <= max}).
;   (*  - Subtyping check failed
;   - Expected type n: Prims.nat{n <= max} got type n: Prims.pos{n <= max}
; *)
;   n >= 0


; Context: While encoding a query
; While typechecking the top-level declaration `val Lib.Sequence.index_map_blocks_multi`

(push) ;; push{0

; <fuel='0' ifuel='0'>

;;; Fact-ids: 
(assert (! (= MaxFuel
ZFuel)
:named @MaxFuel_assumption))
;;; Fact-ids: 
(assert (! (= MaxIFuel
ZFuel)
:named @MaxIFuel_assumption))
;;;;;;;;;;;;;;;;query
;;; Fact-ids: 
(assert (! (not (forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term) (@x8 Term) (@x9 Term) (@x10 Term) (@x11 Term) (@x12 Term) (@x13 Term) (@x14 Term) (@x15 Term) (@x16 Term) (@x17 Term) (@x18 Term) (@x19 Term) (@x20 Term) (@x21 Term) (@x22 Term) (@x23 Term) (@x24 Term) (@x25 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
Tm_refine_609674d96c81c962549b0076055bf213)
(HasType @x2
Prims.pos)
(HasType @x3
(Tm_refine_07295705544891065e7a01d318c0ba51 @x2))
(HasType @x4
(Tm_refine_f4f040c0afc8e02646bd007fb369c803 @x0
@x2
@x1))
(HasType @x5
(Tm_arrow_d3b9c37343cabe37d3e11c0a1cafa7da @x1
@x0
@x2))
(HasType @x6
(Tm_refine_e37a8a81b6e72b6dae52414929365d29 @x3
@x1))
(HasType @x7
Tm_refine_4fe5a88d1a1dcab567f82d246dbcb5b9)
(HasType @x8
Prims.unit)
(HasType @x9
(Prims.b2t (Prims.op_LessThan (Prims.op_Division @x6
@x1)
@x3)))
(HasType @x10
Tm_refine_609674d96c81c962549b0076055bf213)
(HasType @x11
(Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x1
@x10))
(HasType @x12
Prims.int)
(HasType @x13
(Tm_refine_6fdcf7302a39aeac615b0eb19b068938 @x6
@x1
@x12))
(HasType @x14
Prims.nat)
(HasType @x15
(Tm_refine_288bbb48da5bad009ab47741bed35bc6 @x14
@x6
@x1))
(HasType @x16
(Tm_refine_ade7773d9cd7cd1a2abc2fe3f191b9e0 @x6
@x1
@x0
@x4))
(HasType @x17
(Tm_refine_b906d8d091d487602d9c5d07247552ec @x16
@x6
@x1))
(HasType @x18
(FStar.Seq.Base.seq @x0))
(HasType @x19
(Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x4
@x6
@x1
@x18))
(HasType @x20
(Lib.Sequence.lseq @x0
@x1))
(HasType @x21
(Tm_refine_e339f3123dd2db11f24014542889f88c @x20
@x0
@x4
@x6
@x1))
(HasType @x22
(Tm_refine_eee2464660c4d7ffe1ede856164657f9 @x0
@x4
@x6
@x1
@x20))
(HasType @x23
Prims.pos)
(HasType @x24
(Tm_refine_0dee8cb03258a67c2f7ec66427696212 @x2
@x23))
(HasType @x25
(Tm_refine_244b39341e4c95ffd1ac74df3040523e @x3
@x2)))

;; def=Prims.fst(680,18-680,24); use=Lib.Sequence.fsti(429,39-429,40)
(or label_1

;; def=Prims.fst(680,18-680,24); use=Lib.Sequence.fsti(429,39-429,40)
(>= (BoxInt_proj_0 @x3)
(BoxInt_proj_0 (BoxInt 0)))
)
)
 
;;no pats
:qid @query)))
:named @query))
(set-option :rlimit 32679360)
(echo "<result>")
(check-sat)
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
; QUERY ID: (Lib.Sequence.index_map_blocks_multi, 16)
; STATUS: unsat
; UNSAT CORE GENERATED: @MaxIFuel_assumption, @query, refinement_interpretation_Tm_refine_244b39341e4c95ffd1ac74df3040523e
