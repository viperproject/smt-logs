
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


; Externals for interface FStar.Stubs.Reflection.Types


; <Start encoding val FStar.Stubs.Reflection.Types.namedv>

(declare-fun FStar.Stubs.Reflection.Types.namedv () Term)

; </end encoding val FStar.Stubs.Reflection.Types.namedv>


; <Start encoding val FStar.Stubs.Reflection.Types.bv>

(declare-fun FStar.Stubs.Reflection.Types.bv () Term)

; </end encoding val FStar.Stubs.Reflection.Types.bv>


; <Start encoding val FStar.Stubs.Reflection.Types.binder>

(declare-fun FStar.Stubs.Reflection.Types.binder () Term)

; </end encoding val FStar.Stubs.Reflection.Types.binder>


; <Start encoding val FStar.Stubs.Reflection.Types.term>

(declare-fun FStar.Stubs.Reflection.Types.term () Term)

; </end encoding val FStar.Stubs.Reflection.Types.term>


; <Start encoding val FStar.Stubs.Reflection.Types.env>

(declare-fun FStar.Stubs.Reflection.Types.env () Term)

; </end encoding val FStar.Stubs.Reflection.Types.env>


; <Start encoding val FStar.Stubs.Reflection.Types.fv>

(declare-fun FStar.Stubs.Reflection.Types.fv () Term)

; </end encoding val FStar.Stubs.Reflection.Types.fv>


; <Start encoding val FStar.Stubs.Reflection.Types.comp>

(declare-fun FStar.Stubs.Reflection.Types.comp () Term)

; </end encoding val FStar.Stubs.Reflection.Types.comp>


; <Start encoding val FStar.Stubs.Reflection.Types.sigelt>

(declare-fun FStar.Stubs.Reflection.Types.sigelt () Term)

; </end encoding val FStar.Stubs.Reflection.Types.sigelt>


; <Start encoding val FStar.Stubs.Reflection.Types.ctx_uvar_and_subst>

(declare-fun FStar.Stubs.Reflection.Types.ctx_uvar_and_subst () Term)

; </end encoding val FStar.Stubs.Reflection.Types.ctx_uvar_and_subst>


; <Start encoding val FStar.Stubs.Reflection.Types.letbinding>

(declare-fun FStar.Stubs.Reflection.Types.letbinding () Term)

; </end encoding val FStar.Stubs.Reflection.Types.letbinding>


; <Start encoding val FStar.Stubs.Reflection.Types.ident>

(declare-fun FStar.Stubs.Reflection.Types.ident () Term)

; </end encoding val FStar.Stubs.Reflection.Types.ident>


; <Start encoding val FStar.Stubs.Reflection.Types.universe_uvar>

(declare-fun FStar.Stubs.Reflection.Types.universe_uvar () Term)

; </end encoding val FStar.Stubs.Reflection.Types.universe_uvar>


; <Start encoding val FStar.Stubs.Reflection.Types.universe>

(declare-fun FStar.Stubs.Reflection.Types.universe () Term)

; </end encoding val FStar.Stubs.Reflection.Types.universe>


; <Start encoding let name>

(declare-fun FStar.Stubs.Reflection.Types.name (Dummy_sort) Term)

; </end encoding let name>


; <Start encoding let univ_name>

(declare-fun FStar.Stubs.Reflection.Types.univ_name () Term)

; </end encoding let univ_name>


; <Start encoding let typ>

(declare-fun FStar.Stubs.Reflection.Types.typ () Term)

; </end encoding let typ>


; <Start encoding let binders>

(declare-fun FStar.Stubs.Reflection.Types.binders () Term)

; </end encoding let binders>


; <Start encoding let decls>

(declare-fun FStar.Stubs.Reflection.Types.decls () Term)

; </end encoding let decls>


; End Externals for interface FStar.Stubs.Reflection.Types


; Externals for interface FStar.Float


; <Start encoding val FStar.Float.float>

(declare-fun FStar.Float.float () Term)

; </end encoding val FStar.Float.float>


; <Start encoding let double>

(declare-fun FStar.Float.double () Term)

; </end encoding let double>


; End Externals for interface FStar.Float


; Externals for module FStar.Mul


; <Start encoding let op_Star>

(declare-fun FStar.Mul.op_Star (Term Term) Term)

(declare-fun FStar.Mul.op_Star@tok () Term)

; </end encoding let op_Star>


; End Externals for module FStar.Mul


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

(declare-fun Tm_refine_c1424615841f28cac7fc34e92b7ff33c (Term) Term)

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
(declare-fun Tm_refine_7e0b9b2dbca36eab00de093c1b701c6d (Term) Term)


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


; Externals for interface FStar.Char


; <Start encoding val FStar.Char.char>

(declare-fun FStar.Char.char (Dummy_sort) Term)

; </end encoding val FStar.Char.char>


; <Start encoding let char_code>

(declare-fun FStar.Char.char_code () Term)
(declare-fun Tm_refine_96af4a84eae6a9bae92bc908a1c3c24c () Term)

; </end encoding let char_code>


; <Start encoding val FStar.Char.u32_of_char>

(declare-fun FStar.Char.u32_of_char (Term) Term)
(declare-fun Tm_arrow_09ae08f23212b3776b47464ac075ff69 () Term)
(declare-fun FStar.Char.u32_of_char@tok () Term)

; </end encoding val FStar.Char.u32_of_char>


; <Start encoding val FStar.Char.char_of_u32>

(declare-fun FStar.Char.char_of_u32 (Term) Term)
(declare-fun Tm_arrow_6b2de8c9d183197e10fa8623c8ed0069 () Term)
(declare-fun FStar.Char.char_of_u32@tok () Term)

; </end encoding val FStar.Char.char_of_u32>


; <Start encoding val FStar.Char.char_of_u32_of_char>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Char.char_of_u32_of_char (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Char.char_of_u32_of_char@tok () Term)

; </end encoding val FStar.Char.char_of_u32_of_char>


; <Start encoding val FStar.Char.u32_of_char_of_u32>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Char.u32_of_char_of_u32 (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Char.u32_of_char_of_u32@tok () Term)

; </end encoding val FStar.Char.u32_of_char_of_u32>


; <Start encoding let int_of_char>

(declare-fun FStar.Char.int_of_char (Term) Term)
(declare-fun Tm_arrow_edb4339633bae2b96af63b0dbac8e538 () Term)
(declare-fun FStar.Char.int_of_char@tok () Term)

; </end encoding let int_of_char>


; <Start encoding let char_of_int>

(declare-fun Tm_refine_41bb1fe33d2856748d537571528d32a1 () Term)
(declare-fun FStar.Char.char_of_int (Term) Term)

(declare-fun Tm_arrow_efb6c29a20da126570b0d74fa1074537 () Term)
(declare-fun FStar.Char.char_of_int@tok () Term)


; </end encoding let char_of_int>


; <Start encoding val FStar.Char.lowercase>

(declare-fun FStar.Char.lowercase (Term) Term)
(declare-fun Tm_arrow_410c308158a4312d1307cd758f94e691 () Term)
(declare-fun FStar.Char.lowercase@tok () Term)

; </end encoding val FStar.Char.lowercase>


; <Start encoding val FStar.Char.uppercase>

(declare-fun FStar.Char.uppercase (Term) Term)

(declare-fun FStar.Char.uppercase@tok () Term)

; </end encoding val FStar.Char.uppercase>


; <Skipped #set-options "--admit_smt_queries true"/>


; <Start encoding let __char_of_int>

(declare-fun FStar.Char.__char_of_int (Term) Term)
(declare-fun Tm_arrow_269aaec28d3e769b82922feb9fbb0224 () Term)
(declare-fun FStar.Char.__char_of_int@tok () Term)

; </end encoding let __char_of_int>


; <Skipped #reset-options/>


; End Externals for interface FStar.Char


; Externals for interface FStar.Pprint


; <Start encoding val FStar.Pprint.document>

(declare-fun FStar.Pprint.document () Term)

; </end encoding val FStar.Pprint.document>


; <Start encoding val FStar.Pprint.empty>

(declare-fun FStar.Pprint.empty (Dummy_sort) Term)

; </end encoding val FStar.Pprint.empty>


; <Start encoding val FStar.Pprint.doc_of_char>

(declare-fun FStar.Pprint.doc_of_char (Term) Term)
(declare-fun Tm_arrow_a4acb59fbf005290ad49955f91c28b03 () Term)
(declare-fun FStar.Pprint.doc_of_char@tok () Term)

; </end encoding val FStar.Pprint.doc_of_char>


; <Start encoding val FStar.Pprint.doc_of_string>

(declare-fun FStar.Pprint.doc_of_string (Term) Term)
(declare-fun Tm_arrow_997c5f5d4977b2f7fdf48b0cb622aac1 () Term)
(declare-fun FStar.Pprint.doc_of_string@tok () Term)

; </end encoding val FStar.Pprint.doc_of_string>


; <Start encoding val FStar.Pprint.doc_of_bool>

(declare-fun FStar.Pprint.doc_of_bool (Term) Term)
(declare-fun Tm_arrow_c297ae71bcb61f857565593f192b0ba9 () Term)
(declare-fun FStar.Pprint.doc_of_bool@tok () Term)

; </end encoding val FStar.Pprint.doc_of_bool>


; <Start encoding val FStar.Pprint.substring>

(declare-fun FStar.Pprint.substring (Term Term Term) Term)
(declare-fun Tm_arrow_57d4df6e3bb2ca47134bbb9d1fc71584 () Term)
(declare-fun FStar.Pprint.substring@tok () Term)

; </end encoding val FStar.Pprint.substring>


; <Start encoding val FStar.Pprint.fancystring>

(declare-fun FStar.Pprint.fancystring (Term Term) Term)
(declare-fun Tm_arrow_32174abe6c67513e28543abb3662b06a () Term)
(declare-fun FStar.Pprint.fancystring@tok () Term)

; </end encoding val FStar.Pprint.fancystring>


; <Start encoding val FStar.Pprint.fancysubstring>

(declare-fun FStar.Pprint.fancysubstring (Term Term Term Term) Term)
(declare-fun Tm_arrow_095d1e6b4118e7c85dbeb61c88636be5 () Term)
(declare-fun FStar.Pprint.fancysubstring@tok () Term)

; </end encoding val FStar.Pprint.fancysubstring>


; <Start encoding val FStar.Pprint.utf8string>

(declare-fun FStar.Pprint.utf8string (Term) Term)

(declare-fun FStar.Pprint.utf8string@tok () Term)

; </end encoding val FStar.Pprint.utf8string>


; <Start encoding val FStar.Pprint.hardline>

(declare-fun FStar.Pprint.hardline (Dummy_sort) Term)

; </end encoding val FStar.Pprint.hardline>


; <Start encoding val FStar.Pprint.blank>

(declare-fun FStar.Pprint.blank (Term) Term)
(declare-fun Tm_arrow_75ab32078fe02c79ad1d360245f44dfb () Term)
(declare-fun FStar.Pprint.blank@tok () Term)

; </end encoding val FStar.Pprint.blank>


; <Start encoding val FStar.Pprint.break_>

(declare-fun FStar.Pprint.break_ (Term) Term)

(declare-fun FStar.Pprint.break_@tok () Term)

; </end encoding val FStar.Pprint.break_>


; <Start encoding val FStar.Pprint.op_Hat_Hat>

(declare-fun FStar.Pprint.op_Hat_Hat (Term Term) Term)
(declare-fun Tm_arrow_19abf1e35346678de614defb45741110 () Term)
(declare-fun FStar.Pprint.op_Hat_Hat@tok () Term)

; </end encoding val FStar.Pprint.op_Hat_Hat>


; <Start encoding val FStar.Pprint.op_Hat_Slash_Hat>

(declare-fun FStar.Pprint.op_Hat_Slash_Hat (Term Term) Term)

(declare-fun FStar.Pprint.op_Hat_Slash_Hat@tok () Term)

; </end encoding val FStar.Pprint.op_Hat_Slash_Hat>


; <Start encoding val FStar.Pprint.nest>

(declare-fun FStar.Pprint.nest (Term Term) Term)
(declare-fun Tm_arrow_a087a683fcb5153393871c9b94d28ffc () Term)
(declare-fun FStar.Pprint.nest@tok () Term)

; </end encoding val FStar.Pprint.nest>


; <Start encoding val FStar.Pprint.group>

(declare-fun FStar.Pprint.group (Term) Term)
(declare-fun Tm_arrow_bbc0c5be3085d9d37fef1938353ffda9 () Term)
(declare-fun FStar.Pprint.group@tok () Term)

; </end encoding val FStar.Pprint.group>


; <Start encoding val FStar.Pprint.ifflat>

(declare-fun FStar.Pprint.ifflat (Term Term) Term)

(declare-fun FStar.Pprint.ifflat@tok () Term)

; </end encoding val FStar.Pprint.ifflat>


; <Start encoding val FStar.Pprint.lparen>

(declare-fun FStar.Pprint.lparen (Dummy_sort) Term)

; </end encoding val FStar.Pprint.lparen>


; <Start encoding val FStar.Pprint.rparen>

(declare-fun FStar.Pprint.rparen (Dummy_sort) Term)

; </end encoding val FStar.Pprint.rparen>


; <Start encoding val FStar.Pprint.langle>

(declare-fun FStar.Pprint.langle (Dummy_sort) Term)

; </end encoding val FStar.Pprint.langle>


; <Start encoding val FStar.Pprint.rangle>

(declare-fun FStar.Pprint.rangle (Dummy_sort) Term)

; </end encoding val FStar.Pprint.rangle>


; <Start encoding val FStar.Pprint.lbrace>

(declare-fun FStar.Pprint.lbrace (Dummy_sort) Term)

; </end encoding val FStar.Pprint.lbrace>


; <Start encoding val FStar.Pprint.rbrace>

(declare-fun FStar.Pprint.rbrace (Dummy_sort) Term)

; </end encoding val FStar.Pprint.rbrace>


; <Start encoding val FStar.Pprint.lbracket>

(declare-fun FStar.Pprint.lbracket (Dummy_sort) Term)

; </end encoding val FStar.Pprint.lbracket>


; <Start encoding val FStar.Pprint.rbracket>

(declare-fun FStar.Pprint.rbracket (Dummy_sort) Term)

; </end encoding val FStar.Pprint.rbracket>


; <Start encoding val FStar.Pprint.squote>

(declare-fun FStar.Pprint.squote (Dummy_sort) Term)

; </end encoding val FStar.Pprint.squote>


; <Start encoding val FStar.Pprint.dquote>

(declare-fun FStar.Pprint.dquote (Dummy_sort) Term)

; </end encoding val FStar.Pprint.dquote>


; <Start encoding val FStar.Pprint.bquote>

(declare-fun FStar.Pprint.bquote (Dummy_sort) Term)

; </end encoding val FStar.Pprint.bquote>


; <Start encoding val FStar.Pprint.semi>

(declare-fun FStar.Pprint.semi (Dummy_sort) Term)

; </end encoding val FStar.Pprint.semi>


; <Start encoding val FStar.Pprint.colon>

(declare-fun FStar.Pprint.colon (Dummy_sort) Term)

; </end encoding val FStar.Pprint.colon>


; <Start encoding val FStar.Pprint.comma>

(declare-fun FStar.Pprint.comma (Dummy_sort) Term)

; </end encoding val FStar.Pprint.comma>


; <Start encoding val FStar.Pprint.space>

(declare-fun FStar.Pprint.space (Dummy_sort) Term)

; </end encoding val FStar.Pprint.space>


; <Start encoding val FStar.Pprint.dot>

(declare-fun FStar.Pprint.dot (Dummy_sort) Term)

; </end encoding val FStar.Pprint.dot>


; <Start encoding val FStar.Pprint.sharp>

(declare-fun FStar.Pprint.sharp (Dummy_sort) Term)

; </end encoding val FStar.Pprint.sharp>


; <Start encoding val FStar.Pprint.slash>

(declare-fun FStar.Pprint.slash (Dummy_sort) Term)

; </end encoding val FStar.Pprint.slash>


; <Start encoding val FStar.Pprint.backslash>

(declare-fun FStar.Pprint.backslash (Dummy_sort) Term)

; </end encoding val FStar.Pprint.backslash>


; <Start encoding val FStar.Pprint.equals>

(declare-fun FStar.Pprint.equals (Dummy_sort) Term)

; </end encoding val FStar.Pprint.equals>


; <Start encoding val FStar.Pprint.qmark>

(declare-fun FStar.Pprint.qmark (Dummy_sort) Term)

; </end encoding val FStar.Pprint.qmark>


; <Start encoding val FStar.Pprint.tilde>

(declare-fun FStar.Pprint.tilde (Dummy_sort) Term)

; </end encoding val FStar.Pprint.tilde>


; <Start encoding val FStar.Pprint.at>

(declare-fun FStar.Pprint.at (Dummy_sort) Term)

; </end encoding val FStar.Pprint.at>


; <Start encoding val FStar.Pprint.percent>

(declare-fun FStar.Pprint.percent (Dummy_sort) Term)

; </end encoding val FStar.Pprint.percent>


; <Start encoding val FStar.Pprint.dollar>

(declare-fun FStar.Pprint.dollar (Dummy_sort) Term)

; </end encoding val FStar.Pprint.dollar>


; <Start encoding val FStar.Pprint.caret>

(declare-fun FStar.Pprint.caret (Dummy_sort) Term)

; </end encoding val FStar.Pprint.caret>


; <Start encoding val FStar.Pprint.ampersand>

(declare-fun FStar.Pprint.ampersand (Dummy_sort) Term)

; </end encoding val FStar.Pprint.ampersand>


; <Start encoding val FStar.Pprint.star>

(declare-fun FStar.Pprint.star (Dummy_sort) Term)

; </end encoding val FStar.Pprint.star>


; <Start encoding val FStar.Pprint.plus>

(declare-fun FStar.Pprint.plus (Dummy_sort) Term)

; </end encoding val FStar.Pprint.plus>


; <Start encoding val FStar.Pprint.minus>

(declare-fun FStar.Pprint.minus (Dummy_sort) Term)

; </end encoding val FStar.Pprint.minus>


; <Start encoding val FStar.Pprint.underscore>

(declare-fun FStar.Pprint.underscore (Dummy_sort) Term)

; </end encoding val FStar.Pprint.underscore>


; <Start encoding val FStar.Pprint.bang>

(declare-fun FStar.Pprint.bang (Dummy_sort) Term)

; </end encoding val FStar.Pprint.bang>


; <Start encoding val FStar.Pprint.bar>

(declare-fun FStar.Pprint.bar (Dummy_sort) Term)

; </end encoding val FStar.Pprint.bar>


; <Start encoding val FStar.Pprint.rarrow>

(declare-fun FStar.Pprint.rarrow (Dummy_sort) Term)

; </end encoding val FStar.Pprint.rarrow>


; <Start encoding val FStar.Pprint.long_left_arrow>

(declare-fun FStar.Pprint.long_left_arrow (Dummy_sort) Term)

; </end encoding val FStar.Pprint.long_left_arrow>


; <Start encoding val FStar.Pprint.larrow>

(declare-fun FStar.Pprint.larrow (Dummy_sort) Term)

; </end encoding val FStar.Pprint.larrow>


; <Start encoding val FStar.Pprint.precede>

(declare-fun FStar.Pprint.precede (Term Term) Term)

(declare-fun FStar.Pprint.precede@tok () Term)

; </end encoding val FStar.Pprint.precede>


; <Start encoding val FStar.Pprint.terminate>

(declare-fun FStar.Pprint.terminate (Term Term) Term)

(declare-fun FStar.Pprint.terminate@tok () Term)

; </end encoding val FStar.Pprint.terminate>


; <Start encoding val FStar.Pprint.enclose>

(declare-fun FStar.Pprint.enclose (Term Term Term) Term)
(declare-fun Tm_arrow_f04dd2286d7e3e9f9bc2795066272a5d () Term)
(declare-fun FStar.Pprint.enclose@tok () Term)

; </end encoding val FStar.Pprint.enclose>


; <Start encoding val FStar.Pprint.squotes>

(declare-fun FStar.Pprint.squotes (Term) Term)

(declare-fun FStar.Pprint.squotes@tok () Term)

; </end encoding val FStar.Pprint.squotes>


; <Start encoding val FStar.Pprint.dquotes>

(declare-fun FStar.Pprint.dquotes (Term) Term)

(declare-fun FStar.Pprint.dquotes@tok () Term)

; </end encoding val FStar.Pprint.dquotes>


; <Start encoding val FStar.Pprint.bquotes>

(declare-fun FStar.Pprint.bquotes (Term) Term)

(declare-fun FStar.Pprint.bquotes@tok () Term)

; </end encoding val FStar.Pprint.bquotes>


; <Start encoding val FStar.Pprint.braces>

(declare-fun FStar.Pprint.braces (Term) Term)

(declare-fun FStar.Pprint.braces@tok () Term)

; </end encoding val FStar.Pprint.braces>


; <Start encoding val FStar.Pprint.parens>

(declare-fun FStar.Pprint.parens (Term) Term)

(declare-fun FStar.Pprint.parens@tok () Term)

; </end encoding val FStar.Pprint.parens>


; <Start encoding val FStar.Pprint.angles>

(declare-fun FStar.Pprint.angles (Term) Term)

(declare-fun FStar.Pprint.angles@tok () Term)

; </end encoding val FStar.Pprint.angles>


; <Start encoding val FStar.Pprint.brackets>

(declare-fun FStar.Pprint.brackets (Term) Term)

(declare-fun FStar.Pprint.brackets@tok () Term)

; </end encoding val FStar.Pprint.brackets>


; <Start encoding val FStar.Pprint.twice>

(declare-fun FStar.Pprint.twice (Term) Term)

(declare-fun FStar.Pprint.twice@tok () Term)

; </end encoding val FStar.Pprint.twice>


; <Start encoding val FStar.Pprint.repeat>

(declare-fun FStar.Pprint.repeat (Term Term) Term)

(declare-fun FStar.Pprint.repeat@tok () Term)

; </end encoding val FStar.Pprint.repeat>


; <Start encoding val FStar.Pprint.concat>

(declare-fun FStar.Pprint.concat (Term) Term)
(declare-fun Tm_arrow_0cbe92f45919c1d7e0f9e026093c317f () Term)
(declare-fun FStar.Pprint.concat@tok () Term)

; </end encoding val FStar.Pprint.concat>


; <Start encoding val FStar.Pprint.separate>

(declare-fun FStar.Pprint.separate (Term Term) Term)
(declare-fun Tm_arrow_eb90f8920e90546abfd27f57e97c7422 () Term)
(declare-fun FStar.Pprint.separate@tok () Term)

; </end encoding val FStar.Pprint.separate>


; <Start encoding val FStar.Pprint.concat_map>

(declare-fun Tm_arrow_ba485b08fe7f6ea3427f366967eb61bb (Term) Term)
(declare-fun FStar.Pprint.concat_map (Term Term Term) Term)

(declare-fun Tm_arrow_9027965ae68389afcb8ffd313ed8431e () Term)
(declare-fun FStar.Pprint.concat_map@tok () Term)

; </end encoding val FStar.Pprint.concat_map>


; <Start encoding val FStar.Pprint.separate_map>


(declare-fun FStar.Pprint.separate_map (Term Term Term Term) Term)

(declare-fun Tm_arrow_afa71873ada30b88e86746ba0816c698 () Term)
(declare-fun FStar.Pprint.separate_map@tok () Term)

; </end encoding val FStar.Pprint.separate_map>


; <Start encoding val FStar.Pprint.separate2>

(declare-fun FStar.Pprint.separate2 (Term Term Term) Term)
(declare-fun Tm_arrow_8d6af16eebdcd806abb4f18d1fad7f62 () Term)
(declare-fun FStar.Pprint.separate2@tok () Term)

; </end encoding val FStar.Pprint.separate2>


; <Start encoding val FStar.Pprint.optional>


(declare-fun FStar.Pprint.optional (Term Term Term) Term)

(declare-fun Tm_arrow_f99776764fec33728f01eff9910545c0 () Term)
(declare-fun FStar.Pprint.optional@tok () Term)

; </end encoding val FStar.Pprint.optional>


; <Start encoding val FStar.Pprint.lines>

(declare-fun FStar.Pprint.lines (Term) Term)
(declare-fun Tm_arrow_800f7873155a13cf11bfde311d66b27a () Term)
(declare-fun FStar.Pprint.lines@tok () Term)

; </end encoding val FStar.Pprint.lines>


; <Start encoding val FStar.Pprint.arbitrary_string>

(declare-fun FStar.Pprint.arbitrary_string (Term) Term)

(declare-fun FStar.Pprint.arbitrary_string@tok () Term)

; </end encoding val FStar.Pprint.arbitrary_string>


; <Start encoding val FStar.Pprint.words>

(declare-fun FStar.Pprint.words (Term) Term)

(declare-fun FStar.Pprint.words@tok () Term)

; </end encoding val FStar.Pprint.words>


; <Start encoding val FStar.Pprint.split>

(declare-fun Tm_arrow_fc1554671c39653ed371206100dcafd3 () Term)
(declare-fun FStar.Pprint.split (Term Term) Term)

(declare-fun Tm_arrow_89c390c93eb8654101fd8617085f3c1d () Term)
(declare-fun FStar.Pprint.split@tok () Term)

; </end encoding val FStar.Pprint.split>


; <Start encoding val FStar.Pprint.flow>

(declare-fun FStar.Pprint.flow (Term Term) Term)

(declare-fun FStar.Pprint.flow@tok () Term)

; </end encoding val FStar.Pprint.flow>


; <Start encoding val FStar.Pprint.flow_map>


(declare-fun FStar.Pprint.flow_map (Term Term Term Term) Term)


(declare-fun FStar.Pprint.flow_map@tok () Term)

; </end encoding val FStar.Pprint.flow_map>


; <Start encoding val FStar.Pprint.url>

(declare-fun FStar.Pprint.url (Term) Term)

(declare-fun FStar.Pprint.url@tok () Term)

; </end encoding val FStar.Pprint.url>


; <Start encoding val FStar.Pprint.align>

(declare-fun FStar.Pprint.align (Term) Term)

(declare-fun FStar.Pprint.align@tok () Term)

; </end encoding val FStar.Pprint.align>


; <Start encoding val FStar.Pprint.hang>

(declare-fun FStar.Pprint.hang (Term Term) Term)

(declare-fun FStar.Pprint.hang@tok () Term)

; </end encoding val FStar.Pprint.hang>


; <Start encoding val FStar.Pprint.prefix>

(declare-fun FStar.Pprint.prefix (Term Term Term Term) Term)
(declare-fun Tm_arrow_8515fd4d138effa981387c8407102abb () Term)
(declare-fun FStar.Pprint.prefix@tok () Term)

; </end encoding val FStar.Pprint.prefix>


; <Start encoding val FStar.Pprint.jump>

(declare-fun FStar.Pprint.jump (Term Term Term) Term)
(declare-fun Tm_arrow_e0d9f0929460140427c016e9e80b19b9 () Term)
(declare-fun FStar.Pprint.jump@tok () Term)

; </end encoding val FStar.Pprint.jump>


; <Start encoding val FStar.Pprint.infix>

(declare-fun FStar.Pprint.infix (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_b075afedf9e7cab5a543fb6eb3bed20f () Term)
(declare-fun FStar.Pprint.infix@tok () Term)

; </end encoding val FStar.Pprint.infix>


; <Start encoding val FStar.Pprint.surround>

(declare-fun FStar.Pprint.surround (Term Term Term Term Term) Term)

(declare-fun FStar.Pprint.surround@tok () Term)

; </end encoding val FStar.Pprint.surround>


; <Start encoding val FStar.Pprint.soft_surround>

(declare-fun FStar.Pprint.soft_surround (Term Term Term Term Term) Term)

(declare-fun FStar.Pprint.soft_surround@tok () Term)

; </end encoding val FStar.Pprint.soft_surround>


; <Start encoding val FStar.Pprint.surround_separate>

(declare-fun FStar.Pprint.surround_separate (Term Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_5438415d36bec335d2df2e0f427a0374 () Term)
(declare-fun FStar.Pprint.surround_separate@tok () Term)

; </end encoding val FStar.Pprint.surround_separate>


; <Start encoding val FStar.Pprint.surround_separate_map>


(declare-fun FStar.Pprint.surround_separate_map (Term Term Term Term Term Term Term Term Term) Term)

(declare-fun Tm_arrow_424c593564ee6d82472d4c43a6d0feee () Term)
(declare-fun FStar.Pprint.surround_separate_map@tok () Term)

; </end encoding val FStar.Pprint.surround_separate_map>


; <Start encoding val FStar.Pprint.pretty_string>

(declare-fun FStar.Pprint.pretty_string (Term Term Term) Term)
(declare-fun Tm_arrow_eaf070b7b90e17b9d3a7caa0761705b8 () Term)
(declare-fun FStar.Pprint.pretty_string@tok () Term)

; </end encoding val FStar.Pprint.pretty_string>


; <Start encoding val FStar.Pprint.render>

(declare-fun FStar.Pprint.render (Term) Term)
(declare-fun Tm_arrow_672e94f64f75b66d98089d9b8a8bdd46 () Term)
(declare-fun FStar.Pprint.render@tok () Term)

; </end encoding val FStar.Pprint.render>


; End Externals for interface FStar.Pprint


; Externals for interface FStar.Issue


; <Start encoding val FStar.Issue.issue>

(declare-fun FStar.Issue.issue () Term)

; </end encoding val FStar.Issue.issue>


; <Start encoding let issue_level_string>

(declare-fun FStar.Issue.issue_level_string () Term)
(declare-fun Tm_refine_aa8eedc0ecb86da30f7a24511f57030f () Term)

; </end encoding let issue_level_string>


; <Start encoding val FStar.Issue.message_of_issue>

(declare-fun FStar.Issue.message_of_issue (Term) Term)
(declare-fun Tm_arrow_93ee704a450339197db22b6850c14119 () Term)
(declare-fun FStar.Issue.message_of_issue@tok () Term)

; </end encoding val FStar.Issue.message_of_issue>


; <Start encoding val FStar.Issue.level_of_issue>

(declare-fun FStar.Issue.level_of_issue (Term) Term)
(declare-fun Tm_arrow_baa5bfeaffb7436a922fcee810b3f6e5 () Term)
(declare-fun FStar.Issue.level_of_issue@tok () Term)

; </end encoding val FStar.Issue.level_of_issue>


; <Start encoding val FStar.Issue.number_of_issue>

(declare-fun FStar.Issue.number_of_issue (Term) Term)
(declare-fun Tm_arrow_78394d1c43ffc2ecdd350b139696c115 () Term)
(declare-fun FStar.Issue.number_of_issue@tok () Term)

; </end encoding val FStar.Issue.number_of_issue>


; <Start encoding val FStar.Issue.range_of_issue>

(declare-fun FStar.Issue.range_of_issue (Term) Term)
(declare-fun Tm_arrow_72e8882c08b4ea92dd32d41519ff957b () Term)
(declare-fun FStar.Issue.range_of_issue@tok () Term)

; </end encoding val FStar.Issue.range_of_issue>


; <Start encoding val FStar.Issue.context_of_issue>

(declare-fun FStar.Issue.context_of_issue (Term) Term)
(declare-fun Tm_arrow_546b620b9af82be043f5b40b81574a85 () Term)
(declare-fun FStar.Issue.context_of_issue@tok () Term)

; </end encoding val FStar.Issue.context_of_issue>


; <Start encoding val FStar.Issue.render_issue>

(declare-fun FStar.Issue.render_issue (Term) Term)
(declare-fun Tm_arrow_ac5151aeda0379e1d6b8d444cd3f0526 () Term)
(declare-fun FStar.Issue.render_issue@tok () Term)

; </end encoding val FStar.Issue.render_issue>


; <Start encoding val FStar.Issue.mk_issue_doc>

(declare-fun FStar.Issue.mk_issue_doc (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_4a4df377687a551395a6d537c2452cc1 () Term)
(declare-fun FStar.Issue.mk_issue_doc@tok () Term)

; </end encoding val FStar.Issue.mk_issue_doc>


; <Start encoding let mk_issue>

(declare-fun FStar.Issue.mk_issue (Term Term Term Term Term) Term)
(declare-fun Tm_arrow_a1628df8c9319e78aab0e01f400423ed () Term)
(declare-fun FStar.Issue.mk_issue@tok () Term)

; </end encoding let mk_issue>


; End Externals for interface FStar.Issue


; Externals for interface FStar.Stubs.TypeChecker.Core


; <Start encoding type FStar.Stubs.TypeChecker.Core.tot_or_ghost>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.tot_or_ghost () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.E_Total () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.E_Total
(declare-fun FStar.Stubs.TypeChecker.Core.E_Total@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.E_Ghost () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.E_Ghost
(declare-fun FStar.Stubs.TypeChecker.Core.E_Ghost@tok () Term)

; <start constructor FStar.Stubs.TypeChecker.Core.tot_or_ghost>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.tot_or_ghost ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
101)
(= __@x0
FStar.Stubs.TypeChecker.Core.tot_or_ghost)))

; </end constructor FStar.Stubs.TypeChecker.Core.tot_or_ghost>


; <start constructor FStar.Stubs.TypeChecker.Core.E_Total>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.E_Total ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
107)
(= __@x0
FStar.Stubs.TypeChecker.Core.E_Total)))

; </end constructor FStar.Stubs.TypeChecker.Core.E_Total>


; <start constructor FStar.Stubs.TypeChecker.Core.E_Ghost>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.E_Ghost ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
109)
(= __@x0
FStar.Stubs.TypeChecker.Core.E_Ghost)))

; </end constructor FStar.Stubs.TypeChecker.Core.E_Ghost>


; </end encoding type FStar.Stubs.TypeChecker.Core.tot_or_ghost>


; <Start encoding assume FStar.Stubs.TypeChecker.Core.tot_or_ghost__uu___haseq>


; </end encoding assume FStar.Stubs.TypeChecker.Core.tot_or_ghost__uu___haseq>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_E_Total>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_E_Total (Term) Term)
(declare-fun Tm_arrow_28feb685f85e27d6180cee53571913aa () Term)
(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_E_Total@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_E_Total>


; <Skipped let uu___is_E_Total/>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_E_Ghost>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_E_Ghost (Term) Term)

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_E_Ghost@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_E_Ghost>


; <Skipped let uu___is_E_Ghost/>


; <Start encoding type FStar.Stubs.TypeChecker.Core.unfold_side>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.unfold_side () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.Left () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.Left
(declare-fun FStar.Stubs.TypeChecker.Core.Left@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.Right () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.Right
(declare-fun FStar.Stubs.TypeChecker.Core.Right@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.Both () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.Both
(declare-fun FStar.Stubs.TypeChecker.Core.Both@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.TypeChecker.Core.Neither () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.TypeChecker.Core.Neither
(declare-fun FStar.Stubs.TypeChecker.Core.Neither@tok () Term)

; <start constructor FStar.Stubs.TypeChecker.Core.unfold_side>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.unfold_side ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
114)
(= __@x0
FStar.Stubs.TypeChecker.Core.unfold_side)))

; </end constructor FStar.Stubs.TypeChecker.Core.unfold_side>


; <start constructor FStar.Stubs.TypeChecker.Core.Left>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.Left ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
120)
(= __@x0
FStar.Stubs.TypeChecker.Core.Left)))

; </end constructor FStar.Stubs.TypeChecker.Core.Left>


; <start constructor FStar.Stubs.TypeChecker.Core.Right>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.Right ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
122)
(= __@x0
FStar.Stubs.TypeChecker.Core.Right)))

; </end constructor FStar.Stubs.TypeChecker.Core.Right>


; <start constructor FStar.Stubs.TypeChecker.Core.Both>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.Both ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
124)
(= __@x0
FStar.Stubs.TypeChecker.Core.Both)))

; </end constructor FStar.Stubs.TypeChecker.Core.Both>


; <start constructor FStar.Stubs.TypeChecker.Core.Neither>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.TypeChecker.Core.Neither ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
126)
(= __@x0
FStar.Stubs.TypeChecker.Core.Neither)))

; </end constructor FStar.Stubs.TypeChecker.Core.Neither>


; </end encoding type FStar.Stubs.TypeChecker.Core.unfold_side>


; <Start encoding assume FStar.Stubs.TypeChecker.Core.unfold_side__uu___haseq>


; </end encoding assume FStar.Stubs.TypeChecker.Core.unfold_side__uu___haseq>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_Left>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Left (Term) Term)
(declare-fun Tm_arrow_8ad3479bac3300a48f898c294856a452 () Term)
(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Left@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_Left>


; <Skipped let uu___is_Left/>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_Right>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Right (Term) Term)

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Right@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_Right>


; <Skipped let uu___is_Right/>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_Both>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Both (Term) Term)

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Both@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_Both>


; <Skipped let uu___is_Both/>


; <Start encoding val FStar.Stubs.TypeChecker.Core.uu___is_Neither>

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Neither (Term) Term)

(declare-fun FStar.Stubs.TypeChecker.Core.uu___is_Neither@tok () Term)

; </end encoding val FStar.Stubs.TypeChecker.Core.uu___is_Neither>


; <Skipped let uu___is_Neither/>


; End Externals for interface FStar.Stubs.TypeChecker.Core


; Externals for interface FStar.Stubs.Errors.Msg


; <Start encoding let error_message>

(declare-fun FStar.Stubs.Errors.Msg.error_message () Term)

; </end encoding let error_message>


; <Start encoding val FStar.Stubs.Errors.Msg.text>

(declare-fun FStar.Stubs.Errors.Msg.text (Term) Term)

(declare-fun FStar.Stubs.Errors.Msg.text@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.text>


; <Start encoding val FStar.Stubs.Errors.Msg.sublist>

(declare-fun FStar.Stubs.Errors.Msg.sublist (Term Term) Term)

(declare-fun FStar.Stubs.Errors.Msg.sublist@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.sublist>


; <Start encoding val FStar.Stubs.Errors.Msg.bulleted>

(declare-fun FStar.Stubs.Errors.Msg.bulleted (Term) Term)

(declare-fun FStar.Stubs.Errors.Msg.bulleted@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.bulleted>


; <Start encoding val FStar.Stubs.Errors.Msg.mkmsg>

(declare-fun FStar.Stubs.Errors.Msg.mkmsg (Term) Term)
(declare-fun Tm_arrow_742ceb0b6d43128379fa1800142a023c () Term)
(declare-fun FStar.Stubs.Errors.Msg.mkmsg@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.mkmsg>


; <Start encoding val FStar.Stubs.Errors.Msg.subdoc>

(declare-fun FStar.Stubs.Errors.Msg.subdoc (Term) Term)

(declare-fun FStar.Stubs.Errors.Msg.subdoc@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.subdoc>


; <Start encoding val FStar.Stubs.Errors.Msg.renderdoc>

(declare-fun FStar.Stubs.Errors.Msg.renderdoc (Term) Term)

(declare-fun FStar.Stubs.Errors.Msg.renderdoc@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.renderdoc>


; <Start encoding val FStar.Stubs.Errors.Msg.backtrace_doc>

(declare-fun FStar.Stubs.Errors.Msg.backtrace_doc (Term) Term)
(declare-fun Tm_arrow_4b1e31e13fd2dbfa31c2cce1a0d2083d () Term)
(declare-fun FStar.Stubs.Errors.Msg.backtrace_doc@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.backtrace_doc>


; <Start encoding val FStar.Stubs.Errors.Msg.rendermsg>

(declare-fun FStar.Stubs.Errors.Msg.rendermsg (Term) Term)
(declare-fun Tm_arrow_0f8aa7390110b002d33168ab1d29eb5e () Term)
(declare-fun FStar.Stubs.Errors.Msg.rendermsg@tok () Term)

; </end encoding val FStar.Stubs.Errors.Msg.rendermsg>


; End Externals for interface FStar.Stubs.Errors.Msg


; Externals for interface FStar.Stubs.Tactics.Common


; <Start encoding datacon FStar.Stubs.Tactics.Common.NotAListLiteral for type Prims.exn>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Common.NotAListLiteral () Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun FStar.Stubs.Tactics.Common.NotAListLiteral@base () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Common.NotAListLiteral
(declare-fun FStar.Stubs.Tactics.Common.NotAListLiteral@tok () Term)

; <start constructor FStar.Stubs.Tactics.Common.NotAListLiteral>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Common.NotAListLiteral ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
102)
(= __@x0
FStar.Stubs.Tactics.Common.NotAListLiteral)))

; </end constructor FStar.Stubs.Tactics.Common.NotAListLiteral>


; </end encoding datacon FStar.Stubs.Tactics.Common.NotAListLiteral for type Prims.exn>


; <Start encoding val FStar.Stubs.Tactics.Common.uu___is_NotAListLiteral>

(declare-fun FStar.Stubs.Tactics.Common.uu___is_NotAListLiteral (Term) Term)
(declare-fun Tm_arrow_81ab3356926b82578fcb92e97b412345 () Term)
(declare-fun FStar.Stubs.Tactics.Common.uu___is_NotAListLiteral@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Common.uu___is_NotAListLiteral>


; <Skipped let uu___is_NotAListLiteral/>


; <Start encoding datacon FStar.Stubs.Tactics.Common.TacticFailure for type Prims.exn>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Common.TacticFailure (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Common.TacticFailure_uu___ (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun FStar.Stubs.Tactics.Common.TacticFailure@base (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Common.TacticFailure
(declare-fun FStar.Stubs.Tactics.Common.TacticFailure@tok () Term)
(declare-fun Tm_arrow_10aa3b654b3fa877084793298bd2c1fc () Term)

; <start constructor FStar.Stubs.Tactics.Common.TacticFailure>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Common.TacticFailure ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
106)
(= __@x0
(FStar.Stubs.Tactics.Common.TacticFailure (FStar.Stubs.Tactics.Common.TacticFailure_uu___ __@x0)))))

; </end constructor FStar.Stubs.Tactics.Common.TacticFailure>


; </end encoding datacon FStar.Stubs.Tactics.Common.TacticFailure for type Prims.exn>


; <Start encoding val FStar.Stubs.Tactics.Common.uu___is_TacticFailure>

(declare-fun FStar.Stubs.Tactics.Common.uu___is_TacticFailure (Term) Term)

(declare-fun FStar.Stubs.Tactics.Common.uu___is_TacticFailure@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Common.uu___is_TacticFailure>


; <Skipped let uu___is_TacticFailure/>


; <Start encoding val FStar.Stubs.Tactics.Common.__proj__TacticFailure__item__uu___>

(declare-fun Tm_refine_30f8904aa237d24acf9aace65cbaa40d () Term)
(declare-fun FStar.Stubs.Tactics.Common.__proj__TacticFailure__item__uu___ (Term) Term)

(declare-fun Tm_arrow_7eb6bd8f5fc49d52c2c9c8f2dd3c567a () Term)
(declare-fun FStar.Stubs.Tactics.Common.__proj__TacticFailure__item__uu___@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Common.__proj__TacticFailure__item__uu___>


; <Skipped let __proj__TacticFailure__item__uu___/>


; <Start encoding datacon FStar.Stubs.Tactics.Common.SKIP for type Prims.exn>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Common.SKIP () Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun FStar.Stubs.Tactics.Common.SKIP@base () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Common.SKIP
(declare-fun FStar.Stubs.Tactics.Common.SKIP@tok () Term)

; <start constructor FStar.Stubs.Tactics.Common.SKIP>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Common.SKIP ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
117)
(= __@x0
FStar.Stubs.Tactics.Common.SKIP)))

; </end constructor FStar.Stubs.Tactics.Common.SKIP>


; </end encoding datacon FStar.Stubs.Tactics.Common.SKIP for type Prims.exn>


; <Start encoding val FStar.Stubs.Tactics.Common.uu___is_SKIP>

(declare-fun FStar.Stubs.Tactics.Common.uu___is_SKIP (Term) Term)

(declare-fun FStar.Stubs.Tactics.Common.uu___is_SKIP@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Common.uu___is_SKIP>


; <Skipped let uu___is_SKIP/>


; End Externals for interface FStar.Stubs.Tactics.Common


; Externals for interface FStar.Stubs.Tactics.Types


; <Start encoding val FStar.Stubs.Tactics.Types.goal>

(declare-fun FStar.Stubs.Tactics.Types.goal () Term)

; </end encoding val FStar.Stubs.Tactics.Types.goal>


; <Start encoding val FStar.Stubs.Tactics.Types.proofstate>

(declare-fun FStar.Stubs.Tactics.Types.proofstate () Term)

; </end encoding val FStar.Stubs.Tactics.Types.proofstate>


; <Start encoding val FStar.Stubs.Tactics.Types.goals_of>

(declare-fun FStar.Stubs.Tactics.Types.goals_of (Term) Term)
(declare-fun Tm_arrow_fdfe159a02c2f6afefc6bf5885e11604 () Term)
(declare-fun FStar.Stubs.Tactics.Types.goals_of@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.goals_of>


; <Start encoding val FStar.Stubs.Tactics.Types.smt_goals_of>

(declare-fun FStar.Stubs.Tactics.Types.smt_goals_of (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.smt_goals_of@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.smt_goals_of>


; <Start encoding val FStar.Stubs.Tactics.Types.goal_env>

(declare-fun FStar.Stubs.Tactics.Types.goal_env (Term) Term)
(declare-fun Tm_arrow_31141c9dd83193809f05a8c783c41d68 () Term)
(declare-fun FStar.Stubs.Tactics.Types.goal_env@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.goal_env>


; <Start encoding val FStar.Stubs.Tactics.Types.goal_type>

(declare-fun FStar.Stubs.Tactics.Types.goal_type (Term) Term)
(declare-fun Tm_arrow_09c0f5bd92f653a857ae8e8f78bcd3dc () Term)
(declare-fun FStar.Stubs.Tactics.Types.goal_type@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.goal_type>


; <Start encoding val FStar.Stubs.Tactics.Types.goal_witness>

(declare-fun FStar.Stubs.Tactics.Types.goal_witness (Term) Term)
(declare-fun Tm_arrow_6cd27210e27c05ff825968bc6bf2188a () Term)
(declare-fun FStar.Stubs.Tactics.Types.goal_witness@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.goal_witness>


; <Start encoding val FStar.Stubs.Tactics.Types.is_guard>

(declare-fun FStar.Stubs.Tactics.Types.is_guard (Term) Term)
(declare-fun Tm_arrow_b9f4ed4f47608d8a57b28b62e7620cd6 () Term)
(declare-fun FStar.Stubs.Tactics.Types.is_guard@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.is_guard>


; <Start encoding val FStar.Stubs.Tactics.Types.get_label>

(declare-fun FStar.Stubs.Tactics.Types.get_label (Term) Term)
(declare-fun Tm_arrow_6f90bcff42642c2f6126e1856dbbb24e () Term)
(declare-fun FStar.Stubs.Tactics.Types.get_label@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.get_label>


; <Start encoding val FStar.Stubs.Tactics.Types.set_label>

(declare-fun FStar.Stubs.Tactics.Types.set_label (Term Term) Term)
(declare-fun Tm_arrow_8bcd15f0cfa61565564f083268fce719 () Term)
(declare-fun FStar.Stubs.Tactics.Types.set_label@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.set_label>


; <Start encoding val FStar.Stubs.Tactics.Types.incr_depth>

(declare-fun FStar.Stubs.Tactics.Types.incr_depth (Term) Term)
(declare-fun Tm_arrow_4baa9e22a8426ddb7c829d77e2a29c7f () Term)
(declare-fun FStar.Stubs.Tactics.Types.incr_depth@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.incr_depth>


; <Start encoding val FStar.Stubs.Tactics.Types.decr_depth>

(declare-fun FStar.Stubs.Tactics.Types.decr_depth (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.decr_depth@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.decr_depth>


; <Start encoding val FStar.Stubs.Tactics.Types.tracepoint>

(declare-fun FStar.Stubs.Tactics.Types.tracepoint (Term) Term)
(declare-fun Tm_refine_b8e45d9d9da45ba5c9bad7262617aa9f () Term)
(declare-fun Tm_arrow_c0fb9ba582b3414d839b2e294db9292c () Term)
(declare-fun FStar.Stubs.Tactics.Types.tracepoint@tok () Term)


; </end encoding val FStar.Stubs.Tactics.Types.tracepoint>


; <Start encoding val FStar.Stubs.Tactics.Types.set_proofstate_range>

(declare-fun FStar.Stubs.Tactics.Types.set_proofstate_range (Term Term) Term)
(declare-fun Tm_arrow_37afb34f073ac2915b6c2d174d9265a7 () Term)
(declare-fun FStar.Stubs.Tactics.Types.set_proofstate_range@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.set_proofstate_range>


; <Start encoding type FStar.Stubs.Tactics.Types.direction>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.direction () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.TopDown () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.TopDown
(declare-fun FStar.Stubs.Tactics.Types.TopDown@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.BottomUp () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.BottomUp
(declare-fun FStar.Stubs.Tactics.Types.BottomUp@tok () Term)

; <start constructor FStar.Stubs.Tactics.Types.direction>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.direction ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
133)
(= __@x0
FStar.Stubs.Tactics.Types.direction)))

; </end constructor FStar.Stubs.Tactics.Types.direction>


; <start constructor FStar.Stubs.Tactics.Types.TopDown>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.TopDown ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
139)
(= __@x0
FStar.Stubs.Tactics.Types.TopDown)))

; </end constructor FStar.Stubs.Tactics.Types.TopDown>


; <start constructor FStar.Stubs.Tactics.Types.BottomUp>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.BottomUp ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
141)
(= __@x0
FStar.Stubs.Tactics.Types.BottomUp)))

; </end constructor FStar.Stubs.Tactics.Types.BottomUp>


; </end encoding type FStar.Stubs.Tactics.Types.direction>


; <Start encoding assume FStar.Stubs.Tactics.Types.direction__uu___haseq>


; </end encoding assume FStar.Stubs.Tactics.Types.direction__uu___haseq>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_TopDown>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_TopDown (Term) Term)
(declare-fun Tm_arrow_9035aafb0268cd6540e6eeb00e64f81e () Term)
(declare-fun FStar.Stubs.Tactics.Types.uu___is_TopDown@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_TopDown>


; <Skipped let uu___is_TopDown/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_BottomUp>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_BottomUp (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_BottomUp@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_BottomUp>


; <Skipped let uu___is_BottomUp/>


; <Start encoding type FStar.Stubs.Tactics.Types.ctrl_flag>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.ctrl_flag () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Continue () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Continue
(declare-fun FStar.Stubs.Tactics.Types.Continue@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Skip () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Skip
(declare-fun FStar.Stubs.Tactics.Types.Skip@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Abort () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Abort
(declare-fun FStar.Stubs.Tactics.Types.Abort@tok () Term)

; <start constructor FStar.Stubs.Tactics.Types.ctrl_flag>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.ctrl_flag ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
146)
(= __@x0
FStar.Stubs.Tactics.Types.ctrl_flag)))

; </end constructor FStar.Stubs.Tactics.Types.ctrl_flag>


; <start constructor FStar.Stubs.Tactics.Types.Continue>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Continue ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
152)
(= __@x0
FStar.Stubs.Tactics.Types.Continue)))

; </end constructor FStar.Stubs.Tactics.Types.Continue>


; <start constructor FStar.Stubs.Tactics.Types.Skip>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Skip ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
154)
(= __@x0
FStar.Stubs.Tactics.Types.Skip)))

; </end constructor FStar.Stubs.Tactics.Types.Skip>


; <start constructor FStar.Stubs.Tactics.Types.Abort>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Abort ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
156)
(= __@x0
FStar.Stubs.Tactics.Types.Abort)))

; </end constructor FStar.Stubs.Tactics.Types.Abort>


; </end encoding type FStar.Stubs.Tactics.Types.ctrl_flag>


; <Start encoding assume FStar.Stubs.Tactics.Types.ctrl_flag__uu___haseq>


; </end encoding assume FStar.Stubs.Tactics.Types.ctrl_flag__uu___haseq>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Continue>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Continue (Term) Term)
(declare-fun Tm_arrow_e3dfe006e0bb26f56aa3f73f9ed8eb62 () Term)
(declare-fun FStar.Stubs.Tactics.Types.uu___is_Continue@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Continue>


; <Skipped let uu___is_Continue/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Skip>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Skip (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Skip@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Skip>


; <Skipped let uu___is_Skip/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Abort>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Abort (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Abort@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Abort>


; <Skipped let uu___is_Abort/>


; <Start encoding type FStar.Stubs.Tactics.Types.guard_policy>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.guard_policy () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Goal () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Goal
(declare-fun FStar.Stubs.Tactics.Types.Goal@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.SMT () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.SMT
(declare-fun FStar.Stubs.Tactics.Types.SMT@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.SMTSync () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.SMTSync
(declare-fun FStar.Stubs.Tactics.Types.SMTSync@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Force () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Force
(declare-fun FStar.Stubs.Tactics.Types.Force@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.ForceSMT () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.ForceSMT
(declare-fun FStar.Stubs.Tactics.Types.ForceSMT@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Types.Drop () Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Types.Drop
(declare-fun FStar.Stubs.Tactics.Types.Drop@tok () Term)

; <start constructor FStar.Stubs.Tactics.Types.guard_policy>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.guard_policy ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
163)
(= __@x0
FStar.Stubs.Tactics.Types.guard_policy)))

; </end constructor FStar.Stubs.Tactics.Types.guard_policy>


; <start constructor FStar.Stubs.Tactics.Types.Goal>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Goal ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
169)
(= __@x0
FStar.Stubs.Tactics.Types.Goal)))

; </end constructor FStar.Stubs.Tactics.Types.Goal>


; <start constructor FStar.Stubs.Tactics.Types.SMT>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.SMT ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
171)
(= __@x0
FStar.Stubs.Tactics.Types.SMT)))

; </end constructor FStar.Stubs.Tactics.Types.SMT>


; <start constructor FStar.Stubs.Tactics.Types.SMTSync>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.SMTSync ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
173)
(= __@x0
FStar.Stubs.Tactics.Types.SMTSync)))

; </end constructor FStar.Stubs.Tactics.Types.SMTSync>


; <start constructor FStar.Stubs.Tactics.Types.Force>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Force ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
175)
(= __@x0
FStar.Stubs.Tactics.Types.Force)))

; </end constructor FStar.Stubs.Tactics.Types.Force>


; <start constructor FStar.Stubs.Tactics.Types.ForceSMT>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.ForceSMT ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
177)
(= __@x0
FStar.Stubs.Tactics.Types.ForceSMT)))

; </end constructor FStar.Stubs.Tactics.Types.ForceSMT>


; <start constructor FStar.Stubs.Tactics.Types.Drop>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Types.Drop ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
179)
(= __@x0
FStar.Stubs.Tactics.Types.Drop)))

; </end constructor FStar.Stubs.Tactics.Types.Drop>


; </end encoding type FStar.Stubs.Tactics.Types.guard_policy>


; <Start encoding assume FStar.Stubs.Tactics.Types.guard_policy__uu___haseq>


; </end encoding assume FStar.Stubs.Tactics.Types.guard_policy__uu___haseq>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Goal>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Goal (Term) Term)
(declare-fun Tm_arrow_6ed889b98ff192e7f7ad79278b84f018 () Term)
(declare-fun FStar.Stubs.Tactics.Types.uu___is_Goal@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Goal>


; <Skipped let uu___is_Goal/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_SMT>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_SMT (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_SMT@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_SMT>


; <Skipped let uu___is_SMT/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_SMTSync>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_SMTSync (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_SMTSync@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_SMTSync>


; <Skipped let uu___is_SMTSync/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Force>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Force (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Force@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Force>


; <Skipped let uu___is_Force/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_ForceSMT>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_ForceSMT (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_ForceSMT@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_ForceSMT>


; <Skipped let uu___is_ForceSMT/>


; <Start encoding val FStar.Stubs.Tactics.Types.uu___is_Drop>

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Drop (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.uu___is_Drop@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.uu___is_Drop>


; <Skipped let uu___is_Drop/>


; <Start encoding val FStar.Stubs.Tactics.Types.non_informative_token>

(declare-fun FStar.Stubs.Tactics.Types.non_informative_token (Term Term) Term)
(declare-fun Tm_arrow_db2142966eaa849f2844e5e64560e291 () Term)
(declare-fun FStar.Stubs.Tactics.Types.non_informative_token@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.non_informative_token>


; <Start encoding val FStar.Stubs.Tactics.Types.subtyping_token>

(declare-fun FStar.Stubs.Tactics.Types.subtyping_token (Term Term Term) Term)
(declare-fun Tm_arrow_39f91d5aec75d4006e489b79c2d6c16c () Term)
(declare-fun FStar.Stubs.Tactics.Types.subtyping_token@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.subtyping_token>


; <Start encoding val FStar.Stubs.Tactics.Types.equiv_token>

(declare-fun FStar.Stubs.Tactics.Types.equiv_token (Term Term Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.equiv_token@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.equiv_token>


; <Start encoding val FStar.Stubs.Tactics.Types.typing_token>

(declare-fun FStar.Stubs.Tactics.Types.typing_token (Term Term Term) Term)
(declare-fun Tm_arrow_b82abfd864fd916809031a4e19332165 () Term)
(declare-fun FStar.Stubs.Tactics.Types.typing_token@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.typing_token>


; <Start encoding let issues>

(declare-fun FStar.Stubs.Tactics.Types.issues () Term)

; </end encoding let issues>


; <Start encoding val FStar.Stubs.Tactics.Types.tref>

(declare-fun FStar.Stubs.Tactics.Types.tref (Term) Term)

(declare-fun FStar.Stubs.Tactics.Types.tref@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Types.tref>


; End Externals for interface FStar.Stubs.Tactics.Types


; Externals for interface FStar.Stubs.Tactics.Result


; <Start encoding type FStar.Stubs.Tactics.Result.__result>

;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Result.__result (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun FStar.Stubs.Tactics.Result.__result@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Result.Success (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Success_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Success_v (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Success_ps (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Result.Success
(declare-fun FStar.Stubs.Tactics.Result.Success@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun FStar.Stubs.Tactics.Result.Failed (Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Failed_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Failed_exn (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun FStar.Stubs.Tactics.Result.Failed_ps (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: FStar.Stubs.Tactics.Result.Failed
(declare-fun FStar.Stubs.Tactics.Result.Failed@tok () Term)
(declare-fun Tm_arrow_b4f72aad67a83b7651f6cbeabda293bd () Term)
(declare-fun Tm_arrow_ed23e62103a6322a76c850acc838838e () Term)

; <start constructor FStar.Stubs.Tactics.Result.__result>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Result.__result ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
101)
(exists ((@x0 Term))
 (! (= __@x0
(FStar.Stubs.Tactics.Result.__result @x0))
 
;;no pats
:qid is-FStar.Stubs.Tactics.Result.__result))))

; </end constructor FStar.Stubs.Tactics.Result.__result>


; <start constructor FStar.Stubs.Tactics.Result.Success>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Result.Success ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
108)
(= __@x0
(FStar.Stubs.Tactics.Result.Success (FStar.Stubs.Tactics.Result.Success_a __@x0)
(FStar.Stubs.Tactics.Result.Success_v __@x0)
(FStar.Stubs.Tactics.Result.Success_ps __@x0)))))

; </end constructor FStar.Stubs.Tactics.Result.Success>


; <start constructor FStar.Stubs.Tactics.Result.Failed>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-FStar.Stubs.Tactics.Result.Failed ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
113)
(= __@x0
(FStar.Stubs.Tactics.Result.Failed (FStar.Stubs.Tactics.Result.Failed_a __@x0)
(FStar.Stubs.Tactics.Result.Failed_exn __@x0)
(FStar.Stubs.Tactics.Result.Failed_ps __@x0)))))

; </end constructor FStar.Stubs.Tactics.Result.Failed>


; </end encoding type FStar.Stubs.Tactics.Result.__result>


; <Start encoding val FStar.Stubs.Tactics.Result.uu___is_Success>

(declare-fun FStar.Stubs.Tactics.Result.uu___is_Success (Term Term) Term)
(declare-fun Tm_arrow_6645d4122074ac8044bb1b5f135eaee8 () Term)
(declare-fun FStar.Stubs.Tactics.Result.uu___is_Success@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.uu___is_Success>


; <Skipped let uu___is_Success/>


; <Start encoding val FStar.Stubs.Tactics.Result.__proj__Success__item__v>

(declare-fun Tm_refine_b4c1e6949a3a57698645ab5be039dc6f (Term) Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Success__item__v (Term Term) Term)

(declare-fun Tm_arrow_a778adeae3b2f20803ce4aae6d3d3c6d () Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Success__item__v@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.__proj__Success__item__v>


; <Skipped let __proj__Success__item__v/>


; <Start encoding val FStar.Stubs.Tactics.Result.__proj__Success__item__ps>


(declare-fun FStar.Stubs.Tactics.Result.__proj__Success__item__ps (Term Term) Term)

(declare-fun Tm_arrow_a7938cd808916b4560d42e6706c15631 () Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Success__item__ps@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.__proj__Success__item__ps>


; <Skipped let __proj__Success__item__ps/>


; <Start encoding val FStar.Stubs.Tactics.Result.uu___is_Failed>

(declare-fun FStar.Stubs.Tactics.Result.uu___is_Failed (Term Term) Term)

(declare-fun FStar.Stubs.Tactics.Result.uu___is_Failed@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.uu___is_Failed>


; <Skipped let uu___is_Failed/>


; <Start encoding val FStar.Stubs.Tactics.Result.__proj__Failed__item__exn>

(declare-fun Tm_refine_3e8cae0c9d54f7b2657be55ddd0643d7 (Term) Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Failed__item__exn (Term Term) Term)

(declare-fun Tm_arrow_343463ac2c43a023370797ff20c81cf5 () Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Failed__item__exn@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.__proj__Failed__item__exn>


; <Skipped let __proj__Failed__item__exn/>


; <Start encoding val FStar.Stubs.Tactics.Result.__proj__Failed__item__ps>


(declare-fun FStar.Stubs.Tactics.Result.__proj__Failed__item__ps (Term Term) Term)

(declare-fun Tm_arrow_2747a76e1f36cdc1944263efc5937cdb () Term)
(declare-fun FStar.Stubs.Tactics.Result.__proj__Failed__item__ps@tok () Term)

; </end encoding val FStar.Stubs.Tactics.Result.__proj__Failed__item__ps>


; <Skipped let __proj__Failed__item__ps/>


; End Externals for interface FStar.Stubs.Tactics.Result


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



(declare-fun Tm_arrow_61bb9550f39772f18eaab129c43c3788 (Term) Term)
(declare-fun Tm_abs_6ffc06f5d789cf42c73d4f163a977cc0 (Term Term) Term)
(declare-fun Tm_refine_9d7e1da4c8ccc98f1562bffecfa030b6 (Term Term) Term)



(declare-fun Tm_abs_735bfa0400a12573ed48312f042e45e7 (Term) Term)
(declare-fun Tm_arrow_c4804ca26ade2f3859400eebcb37ddbd (Term Term) Term)
(declare-fun FStar.Monotonic.Pure.elim_pure (Term Term Term Term) Term)











(declare-fun Tm_arrow_08f6df717f4cfecbf9659e86cd16d49b () Term)
(declare-fun FStar.Monotonic.Pure.elim_pure@tok () Term)












; </end encoding let elim_pure>


; End Externals for module FStar.Monotonic.Pure


; Externals for interface FStar.Tactics.Effect


; <Start encoding let tac_wp_t0>

(declare-fun FStar.Tactics.Effect.tac_wp_t0 (Term) Term)

(declare-fun FStar.Tactics.Effect.tac_wp_t0@tok () Term)
(declare-fun Tm_arrow_79c32bf125dc2af78993da96357547a4 (Term) Term)
(declare-fun Tm_arrow_6b294f3db0bcad9bb190c1392ab01385 (Term) Term)

; </end encoding let tac_wp_t0>


; <Start encoding let tac_wp_monotonic>

(declare-fun FStar.Tactics.Effect.tac_wp_monotonic (Term Term) Term)
(declare-fun Tm_arrow_586e511512340cebc0763f51dd24e52e () Term)
(declare-fun FStar.Tactics.Effect.tac_wp_monotonic@tok () Term)



; </end encoding let tac_wp_monotonic>


; <Start encoding let tac_wp_t>

(declare-fun FStar.Tactics.Effect.tac_wp_t (Term) Term)

(declare-fun FStar.Tactics.Effect.tac_wp_t@tok () Term)


(declare-fun Tm_refine_afae78805025dbab8b8be62e7a11c687 (Term) Term)

; </end encoding let tac_wp_t>


; <Start encoding let tac_repr>

(declare-fun FStar.Tactics.Effect.tac_repr (Term Term) Term)
(declare-fun Tm_arrow_3f33249eca490ba8c990fff289934593 () Term)
(declare-fun FStar.Tactics.Effect.tac_repr@tok () Term)
(declare-fun Non_total_Tm_arrow_ef31cf121fb3836b1822f35578f3a2c7 (Term Term) Term)

; </end encoding let tac_repr>


; <Start encoding let tac_return_wp>

(declare-fun FStar.Tactics.Effect.tac_return_wp (Term Term) Term)
(declare-fun Tm_arrow_d45e4c1a61d444b0cb436be42fdd8fff () Term)
(declare-fun FStar.Tactics.Effect.tac_return_wp@tok () Term)



(declare-fun Tm_abs_62c5eb272101ce5d3f5f190695a8c978 (Term Term) Term)

; </end encoding let tac_return_wp>


; <Start encoding let tac_return>

(declare-fun FStar.Tactics.Effect.tac_return (Term Term) Term)




(declare-fun Tm_arrow_57311ad25591b2a0d4e7a881591571c4 () Term)
(declare-fun FStar.Tactics.Effect.tac_return@tok () Term)




;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_FStar.Tactics.Effect_144 (Term Term) Term)

; </end encoding let tac_return>


; <Start encoding let tac_bind_wp>

(declare-fun Tm_arrow_615c284bf702a1fbef85424e39380642 (Term Term) Term)
(declare-fun FStar.Tactics.Effect.tac_bind_wp (Term Term Term Term) Term)

(declare-fun Tm_arrow_8fd6de47bf2be2d2417a26df2df3e1fa () Term)
(declare-fun FStar.Tactics.Effect.tac_bind_wp@tok () Term)



(declare-fun Tm_abs_79f810e0804f4454fdd99bc6bd3319e9 (Term Term Term Term) Term)


(declare-fun Tm_abs_18350866457823edafacef426e439b94 (Term Term Term Term) Term)

; </end encoding let tac_bind_wp>


; <Start encoding let tac_wp_compact>

(declare-fun FStar.Tactics.Effect.tac_wp_compact (Term Term) Term)
(declare-fun Tm_arrow_d630ba03ac64e20998a0b33887db7f1d () Term)
(declare-fun FStar.Tactics.Effect.tac_wp_compact@tok () Term)
(declare-fun Tm_arrow_1a36c778c34fcf235893cf9fa8e22d86 (Term) Term)



(declare-fun Tm_abs_0ba06e1220483cb697e09fd9eb53fda1 (Term Term Term) Term)

(declare-fun Tm_arrow_03e2759b21e31a5318d40a743e5bbb54 (Term) Term)
(declare-fun Tm_abs_817a13da54c634f81e0b2bf0c6db2fd9 (Term Term Term Term) Term)


(declare-fun Tm_arrow_c4594856dbe7e5b386d54cadda720877 (Term) Term)
(declare-fun Tm_abs_bee6b44d62d7b15a7c1a999c08dbdaa1 (Term Term) Term)

; </end encoding let tac_wp_compact>


; <Start encoding val FStar.Tactics.Effect.tac_bind_interleave_begin>

(declare-fun FStar.Tactics.Effect.tac_bind_interleave_begin (Dummy_sort) Term)

; </end encoding val FStar.Tactics.Effect.tac_bind_interleave_begin>


; <Skipped #push-options "--admit_smt_queries true"/>


; <Start encoding let tac_bind>


(declare-fun Tm_arrow_73ffef9431728db285f9b23266829750 (Term Term Term) Term)
(declare-fun FStar.Tactics.Effect.tac_bind (Term Term Term Term Term Term Term Term) Term)












(declare-fun Tm_abs_38525ace133de22e8b3b3636397a13cd (Term Term Term Term Term Term) Term)





(declare-fun Tm_abs_afd910fd71261e3939048d0e1004fda1 (Term Term Term Term) Term)
(declare-fun Tm_arrow_cbc1739ca78054f7e441cea306012951 () Term)
(declare-fun FStar.Tactics.Effect.tac_bind@tok () Term)




















;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_FStar.Tactics.Effect_239 (Term Term Term Term Term Term) Term)

; </end encoding let tac_bind>


; <Skipped #pop-options/>


; <Start encoding val FStar.Tactics.Effect.tac_bind_interleave_end>

(declare-fun FStar.Tactics.Effect.tac_bind_interleave_end (Dummy_sort) Term)

; </end encoding val FStar.Tactics.Effect.tac_bind_interleave_end>


; <Start encoding let tac_if_then_else_wp>

(declare-fun FStar.Tactics.Effect.tac_if_then_else_wp (Term Term Term Term) Term)
(declare-fun Tm_arrow_0d888f0d0310e06a23a044b7487ca9a3 () Term)
(declare-fun FStar.Tactics.Effect.tac_if_then_else_wp@tok () Term)


(declare-fun Tm_arrow_2bfa429e0c444d45072542e413efc1c1 (Term) Term)
(declare-fun Tm_abs_86d5c2428199615bc3f8f5172ed82af4 (Term Term Term Term) Term)

; </end encoding let tac_if_then_else_wp>


; <Start encoding let tac_if_then_else>

(declare-fun FStar.Tactics.Effect.tac_if_then_else (Term Term Term Term Term Term) Term)
(declare-fun Tm_arrow_36fb4b5a399369ef643849e96611ebec () Term)
(declare-fun FStar.Tactics.Effect.tac_if_then_else@tok () Term)








(declare-fun Tm_abs_2fda180fbbce3bc00549b67fc601e0be (Term Term Term Term Term Term) Term)



(declare-fun Tm_abs_6ed68232224ac13a4995196b297d1f2b (Term Term Term Term) Term)

; </end encoding let tac_if_then_else>


; <Start encoding let tac_subcomp>


(declare-fun FStar.Tactics.Effect.tac_subcomp (Term Term Term Term) Term)
(declare-fun Tm_refine_9688035851d5c5523a806a1df19cb706 (Term Term) Term)

(declare-fun Tm_arrow_dc8ee65b5b33b14f497b382af4ab7512 () Term)
(declare-fun FStar.Tactics.Effect.tac_subcomp@tok () Term)


; </end encoding let tac_subcomp>


; <Start encoding let tac_close>



(declare-fun FStar.Tactics.Effect.tac_close (Term Term Term Term) Term)


(declare-fun Tm_arrow_ddae682ca2e9bd4cfa6e582c3cbda6bf () Term)
(declare-fun FStar.Tactics.Effect.tac_close@tok () Term)




(declare-fun Tm_abs_bd152fc5c12cc6aa125ccf543aa53813 (Term Term Term Term) Term)


(declare-fun Tm_abs_4a490b6642ec805995acda79bfbd79eb (Term Term Term) Term)

; </end encoding let tac_close>


; <Skipped layered_effect { TAC ... }/>


; <Skipped effect TacH a pre post = FStar.Tactics.Effect.TAC a/>


; <Skipped effect Tac a = FStar.Tactics.Effect.TacH a/>


; <Skipped effect TacS a = FStar.Tactics.Effect.TacH a/>


; <Skipped effect TacF a = FStar.Tactics.Effect.TacH a/>


; <Start encoding let lift_div_tac_wp>

(declare-fun FStar.Tactics.Effect.lift_div_tac_wp (Term Term) Term)
(declare-fun Tm_arrow_756b2c443a872ea2d839224a3f915862 () Term)
(declare-fun FStar.Tactics.Effect.lift_div_tac_wp@tok () Term)


(declare-fun Tm_abs_d19ed2c1cbcc251803f55dea9449b934 (Term Term Term) Term)

(declare-fun Tm_arrow_298f7ec24f68dbe551035ce3db5b5bdd (Term) Term)
(declare-fun Tm_abs_9c642aa783aefa5494cf2caad21c4825 (Term Term) Term)

; </end encoding let lift_div_tac_wp>


; <Start encoding let lift_div_tac>

(declare-fun Non_total_Tm_arrow_da9712c41bd4800828fa87c1bc605521 (Term Term) Term)
(declare-fun FStar.Tactics.Effect.lift_div_tac (Term Term Term) Term)







(declare-fun Tm_arrow_69a366f788903d83a59a723310249405 () Term)
(declare-fun FStar.Tactics.Effect.lift_div_tac@tok () Term)







;;;;;;;;;;;;;;;;Imprecise function encoding
(declare-fun Tm_abs_FStar.Tactics.Effect_326 (Term Term) Term)

; </end encoding let lift_div_tac>


; <Skipped sub_effect DIV ~> TAC/>


; <Start encoding let get>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.get (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.get@tok () Term)

; </end encoding let get>


; <Start encoding let raise>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.raise (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.raise@tok () Term)

; </end encoding let raise>


; <Start encoding val FStar.Tactics.Effect.with_tactic>

(declare-fun Non_total_Tm_arrow_0df358455d9ffa69782d20c171a72c48 () Term)
(declare-fun FStar.Tactics.Effect.with_tactic (Term Term) Term)

(declare-fun Tm_arrow_0f1a7b132563c41331d8b63d877642f4 () Term)
(declare-fun FStar.Tactics.Effect.with_tactic@tok () Term)

; </end encoding val FStar.Tactics.Effect.with_tactic>


; <Start encoding val FStar.Tactics.Effect.rewrite_with_tactic>


(declare-fun FStar.Tactics.Effect.rewrite_with_tactic (Term Term Term) Term)

(declare-fun Tm_arrow_f63ee5eb2c336987d9ae8086208589c0 () Term)
(declare-fun FStar.Tactics.Effect.rewrite_with_tactic@tok () Term)

; </end encoding val FStar.Tactics.Effect.rewrite_with_tactic>


; <Start encoding val FStar.Tactics.Effect.synth_by_tactic>


(declare-fun FStar.Tactics.Effect.synth_by_tactic (Term Term) Term)

(declare-fun Tm_arrow_8f10558f8b36216eec81f2c618b5024b () Term)
(declare-fun FStar.Tactics.Effect.synth_by_tactic@tok () Term)

; </end encoding val FStar.Tactics.Effect.synth_by_tactic>


; <Start encoding val FStar.Tactics.Effect.assert_by_tactic>


(declare-fun FStar.Tactics.Effect.assert_by_tactic (Term Term) Term)


(declare-fun Tm_arrow_62294304586082aabc8d32a2cb34b258 () Term)
(declare-fun FStar.Tactics.Effect.assert_by_tactic@tok () Term)


; </end encoding val FStar.Tactics.Effect.assert_by_tactic>


; <Start encoding val FStar.Tactics.Effect.by_tactic_seman>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.by_tactic_seman (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.by_tactic_seman@tok () Term)

; </end encoding val FStar.Tactics.Effect.by_tactic_seman>


; <Start encoding let assume_safe>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.assume_safe (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.assume_safe@tok () Term)

; </end encoding let assume_safe>


; <Start encoding let tac>

(declare-fun FStar.Tactics.Effect.tac (Term Term) Term)

(declare-fun FStar.Tactics.Effect.tac@tok () Term)
(declare-fun Non_total_Tm_arrow_d7d295746bb03506a91beb076c0c54c2 (Term Term) Term)

; </end encoding let tac>


; <Start encoding let tactic>

(declare-fun FStar.Tactics.Effect.tactic (Term) Term)

(declare-fun FStar.Tactics.Effect.tactic@tok () Term)

; </end encoding let tactic>


; <Start encoding val FStar.Tactics.Effect.preprocess_with>

(declare-fun Non_total_Tm_arrow_489c5cd52ce0bd6c500497b6a9d25763 () Term)
(declare-fun FStar.Tactics.Effect.preprocess_with (Term) Term)

(declare-fun Tm_arrow_11f5dabe45aec598b26a74d4ae177cec () Term)
(declare-fun FStar.Tactics.Effect.preprocess_with@tok () Term)

; </end encoding val FStar.Tactics.Effect.preprocess_with>


; <Start encoding val FStar.Tactics.Effect.postprocess_with>


(declare-fun FStar.Tactics.Effect.postprocess_with (Term) Term)

(declare-fun Tm_arrow_71902d217cf156a1346c71f86a0ea184 () Term)
(declare-fun FStar.Tactics.Effect.postprocess_with@tok () Term)

; </end encoding val FStar.Tactics.Effect.postprocess_with>


; <Start encoding val FStar.Tactics.Effect.postprocess_for_extraction_with>


(declare-fun FStar.Tactics.Effect.postprocess_for_extraction_with (Term) Term)


(declare-fun FStar.Tactics.Effect.postprocess_for_extraction_with@tok () Term)

; </end encoding val FStar.Tactics.Effect.postprocess_for_extraction_with>


; <Skipped #set-options "--no_tactics"/>


; <Start encoding val FStar.Tactics.Effect.unfold_with_tactic>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.unfold_with_tactic (Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.unfold_with_tactic@tok () Term)

; </end encoding val FStar.Tactics.Effect.unfold_with_tactic>


; <Start encoding val FStar.Tactics.Effect.unfold_rewrite_with_tactic>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Effect.unfold_rewrite_with_tactic (Term Term Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Effect.unfold_rewrite_with_tactic@tok () Term)

; </end encoding val FStar.Tactics.Effect.unfold_rewrite_with_tactic>


; End Externals for interface FStar.Tactics.Effect


; Externals for interface FStar.Tactics.Typeclasses


; <Start encoding val FStar.Tactics.Typeclasses.tcclass>

(declare-fun FStar.Tactics.Typeclasses.tcclass (Dummy_sort) Term)

; </end encoding val FStar.Tactics.Typeclasses.tcclass>


; <Start encoding val FStar.Tactics.Typeclasses.tcinstance>

(declare-fun FStar.Tactics.Typeclasses.tcinstance (Dummy_sort) Term)

; </end encoding val FStar.Tactics.Typeclasses.tcinstance>


; <Start encoding val FStar.Tactics.Typeclasses.fundeps>

(declare-fun FStar.Tactics.Typeclasses.fundeps (Term) Term)

(declare-fun FStar.Tactics.Typeclasses.fundeps@tok () Term)

; </end encoding val FStar.Tactics.Typeclasses.fundeps>


; <Start encoding val FStar.Tactics.Typeclasses.no_method>

(declare-fun FStar.Tactics.Typeclasses.no_method (Dummy_sort) Term)

; </end encoding val FStar.Tactics.Typeclasses.no_method>


; <Start encoding val FStar.Tactics.Typeclasses.tcresolve>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Typeclasses.tcresolve (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Typeclasses.tcresolve@tok () Term)

; </end encoding val FStar.Tactics.Typeclasses.tcresolve>


; <Start encoding val FStar.Tactics.Typeclasses.mk_class>

;;;;;;;;;;;;;;;;Uninterpreted function symbol for impure function
(declare-fun FStar.Tactics.Typeclasses.mk_class (Term) Term)
;;;;;;;;;;;;;;;;Uninterpreted name for impure function
(declare-fun FStar.Tactics.Typeclasses.mk_class@tok () Term)

; </end encoding val FStar.Tactics.Typeclasses.mk_class>


; <Start encoding let solve>

(declare-fun FStar.Tactics.Typeclasses.solve (Term Term) Term)

(declare-fun FStar.Tactics.Typeclasses.solve@tok () Term)

; </end encoding let solve>


; End Externals for interface FStar.Tactics.Typeclasses

(push) ;; push{1

; Internals for Bug3130c


; encoding sigelt type Bug3130c.typeclass1


; <Start encoding type Bug3130c.typeclass1>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.typeclass1 (Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Bug3130c.typeclass1@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.Mktypeclass1 (Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mktypeclass1_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mktypeclass1_x (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Bug3130c.Mktypeclass1
(declare-fun Bug3130c.Mktypeclass1@tok () Term)
;;;;;;;;;;;;;;;;x: Prims.unit -> typeclass1 a
(declare-fun Tm_arrow_fe3fe46cd35ae0681ae7b9cf76a2294b () Term)

; <start constructor Bug3130c.typeclass1>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.typeclass1 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
104)
(exists ((@x0 Term))
 (! (= __@x0
(Bug3130c.typeclass1 @x0))
 
;;no pats
:qid is-Bug3130c.typeclass1))))

; </end constructor Bug3130c.typeclass1>


; <start constructor Bug3130c.Mktypeclass1>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.Mktypeclass1 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
111)
(= __@x0
(Bug3130c.Mktypeclass1 (Bug3130c.Mktypeclass1_a __@x0)
(Bug3130c.Mktypeclass1_x __@x0)))))

; </end constructor Bug3130c.Mktypeclass1>


; </end encoding type Bug3130c.typeclass1>


; encoding sigelt val Bug3130c.__proj__Mktypeclass1__item__x


; <Start encoding val Bug3130c.__proj__Mktypeclass1__item__x>

(declare-fun Bug3130c.__proj__Mktypeclass1__item__x (Term Term) Term)
;;;;;;;;;;;;;;;;projectee: typeclass1 a -> Prims.unit
(declare-fun Tm_arrow_dde1ddabfd7d10713f286db3ff140382 () Term)
(declare-fun Bug3130c.__proj__Mktypeclass1__item__x@tok () Term)

; </end encoding val Bug3130c.__proj__Mktypeclass1__item__x>


; encoding sigelt let __proj__Mktypeclass1__item__x


; <Skipped let __proj__Mktypeclass1__item__x/>


; encoding sigelt let x


; <Start encoding let x>

(declare-fun Bug3130c.x (Term) Term)
;;;;;;;;;;;;;;;;{| projectee: typeclass1 a |} -> Prims.unit
(declare-fun Tm_arrow_49fb974dff0da87be4200b95c3b5c891 (Term) Term)
;;;;;;;;;;;;;;;;{| projectee: typeclass1 a |} -> Prims.unit
(declare-fun Tm_arrow_0ea35df767c48cf6d1c025a04c2c605f () Term)
(declare-fun Bug3130c.x@tok () Term)


(declare-fun Tm_abs_742f8ca496ec9083b40446ec5f622ac0 (Term) Term)

; </end encoding let x>


; encoding sigelt type Bug3130c.typeclass2


; <Start encoding type Bug3130c.typeclass2>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.typeclass2 (Term Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Bug3130c.typeclass2@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.Mktypeclass2 (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mktypeclass2_y (Term) Term)
;;;;;;;;;;;;;;;;Constructor base
(declare-fun Bug3130c.Mktypeclass2@base (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Bug3130c.Mktypeclass2
(declare-fun Bug3130c.Mktypeclass2@tok () Term)
;;;;;;;;;;;;;;;;y: Prims.unit -> typeclass2 bytes a
(declare-fun Tm_arrow_2d67b0f2ca64cc5ec88d8e7a14ebfecd () Term)

; <start constructor Bug3130c.typeclass2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.typeclass2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
125)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(Bug3130c.typeclass2 @x0
@x1
@x2))
 
;;no pats
:qid is-Bug3130c.typeclass2))))

; </end constructor Bug3130c.typeclass2>


; <start constructor Bug3130c.Mktypeclass2>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.Mktypeclass2 ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
132)
(exists ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= __@x0
(Bug3130c.Mktypeclass2 @x0
@x1
@x2
(Bug3130c.Mktypeclass2_y __@x0)))
 
;;no pats
:qid is-Bug3130c.Mktypeclass2))))

; </end constructor Bug3130c.Mktypeclass2>


; </end encoding type Bug3130c.typeclass2>


; encoding sigelt val Bug3130c.__proj__Mktypeclass2__item__y


; <Start encoding val Bug3130c.__proj__Mktypeclass2__item__y>

(declare-fun Bug3130c.__proj__Mktypeclass2__item__y (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;{| _: typeclass1 bytes |} -> projectee: typeclass2 bytes a -> Prims.unit
(declare-fun Tm_arrow_67e515f34bbbee063ee3bc6c11534f12 () Term)
(declare-fun Bug3130c.__proj__Mktypeclass2__item__y@tok () Term)

; </end encoding val Bug3130c.__proj__Mktypeclass2__item__y>


; encoding sigelt let __proj__Mktypeclass2__item__y


; <Skipped let __proj__Mktypeclass2__item__y/>


; encoding sigelt let y


; <Start encoding let y>

(declare-fun Bug3130c.y (Term) Term)
;;;;;;;;;;;;;;;;{| projectee: typeclass2 bytes a |} -> Prims.unit
(declare-fun Tm_arrow_eee4fe9467960b09191880667eaaad3f (Term Term Term) Term)
;;;;;;;;;;;;;;;;{| projectee: typeclass2 bytes a |} -> Prims.unit
(declare-fun Tm_arrow_812d7f5e01715e480799affbd4937555 (Term Term) Term)
;;;;;;;;;;;;;;;;{| _: typeclass1 bytes |} -> {| projectee: typeclass2 bytes a |} -> Prims.unit
(declare-fun Tm_arrow_4862e501fd341b270480daa4fd3e1661 (Term) Term)
;;;;;;;;;;;;;;;;{| _: typeclass1 bytes |} -> {| projectee: typeclass2 bytes a |} -> Prims.unit
(declare-fun Tm_arrow_8d76ca7c303c87ccbef68134d61f8391 () Term)
(declare-fun Bug3130c.y@tok () Term)



;;;;;;;;;;;;;;;;{| _: typeclass1 bytes |} -> {| projectee: typeclass2 bytes a |} -> Prims.unit
(declare-fun Tm_arrow_cdaeeae2f6749b929c26c6eb30e6bcf5 (Term) Term)
(declare-fun Tm_abs_1710d43f970c2329024f9617026a61bd (Term) Term)

; </end encoding let y>


; encoding sigelt val Bug3130c.bytes


; <Start encoding val Bug3130c.bytes>

(declare-fun Bug3130c.bytes () Term)

; </end encoding val Bug3130c.bytes>


; encoding sigelt val Bug3130c.bytes_typeclass1


; <Start encoding val Bug3130c.bytes_typeclass1>

(declare-fun Bug3130c.bytes_typeclass1 (Dummy_sort) Term)

; </end encoding val Bug3130c.bytes_typeclass1>


; encoding sigelt let bytes_typeclass1_


; <Start encoding let bytes_typeclass1_>

(declare-fun Bug3130c.bytes_typeclass1_ (Dummy_sort) Term)

; </end encoding let bytes_typeclass1_>


; encoding sigelt val Bug3130c.t


; <Start encoding val Bug3130c.t>

(declare-fun Bug3130c.t (Term) Term)

(declare-fun Bug3130c.t@tok () Term)

; </end encoding val Bug3130c.t>


; encoding sigelt val Bug3130c.t_inst


; <Start encoding val Bug3130c.t_inst>

(declare-fun Bug3130c.t_inst (Dummy_sort) Term)

; </end encoding val Bug3130c.t_inst>


; encoding sigelt val Bug3130c.truc


; <Start encoding val Bug3130c.truc>

(declare-fun Bug3130c.truc (Term Term Term Term Term Term) Term)
;;;;;;;;;;;;;;;;{| _: typeclass1 bytes |} -> {| _: typeclass2 bytes a |} -> _: t bytes -> _: a -> Type
(declare-fun Tm_arrow_08cf8476136ba061f16fa66cc93b4ec7 () Term)
(declare-fun Bug3130c.truc@tok () Term)

; </end encoding val Bug3130c.truc>


; encoding sigelt type Bug3130c.machin


; <Start encoding type Bug3130c.machin>

;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.machin (Term Term) Term)
;;;;;;;;;;;;;;;;token
(declare-fun Bug3130c.machin@tok () Term)
;;;;;;;;;;;;;;;;Constructor
(declare-fun Bug3130c.Mkmachin (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mkmachin_a (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mkmachin_uu___1 (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mkmachin_pred (Term) Term)
;;;;;;;;;;;;;;;;Projector
(declare-fun Bug3130c.Mkmachin_lemma (Term) Term)
;;;;;;;;;;;;;;;;data constructor proxy: Bug3130c.Mkmachin
(declare-fun Bug3130c.Mkmachin@tok () Term)

(declare-fun Tm_refine_c103c48e5ca198380a8345e2420f9f72 (Term Term Term) Term)
;;;;;;;;;;;;;;;;content: a -> FStar.Pervasives.Lemma (ensures truc t_inst content)
(declare-fun Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 (Term Term) Term)



;;;;;;;;;;;;;;;;pred: (_: a -> Prims.prop) ->     lemma: (content: a -> FStar.Pervasives.Lemma (ensures truc t_inst content))   -> machin a
(declare-fun Tm_arrow_6497bcee3645cfdb3ac92e648558446d () Term)

; <start constructor Bug3130c.machin>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.machin ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
158)
(exists ((@x0 Term) (@x1 Term))
 (! (= __@x0
(Bug3130c.machin @x0
@x1))
 
;;no pats
:qid is-Bug3130c.machin))))

; </end constructor Bug3130c.machin>


; <start constructor Bug3130c.Mkmachin>

;;;;;;;;;;;;;;;;Discriminator definition
(define-fun is-Bug3130c.Mkmachin ((__@x0 Term)) Bool
 (and (= (Term_constr_id __@x0)
170)
(= __@x0
(Bug3130c.Mkmachin (Bug3130c.Mkmachin_a __@x0)
(Bug3130c.Mkmachin_uu___1 __@x0)
(Bug3130c.Mkmachin_pred __@x0)
(Bug3130c.Mkmachin_lemma __@x0)))))

; </end constructor Bug3130c.Mkmachin>


; </end encoding type Bug3130c.machin>


; encoding sigelt val Bug3130c.__proj__Mkmachin__item__pred


; <Start encoding val Bug3130c.__proj__Mkmachin__item__pred>

(declare-fun Bug3130c.__proj__Mkmachin__item__pred (Term Term Term) Term)

;;;;;;;;;;;;;;;;{| _: typeclass2 bytes a |} -> projectee: machin a -> _: a -> Prims.prop
(declare-fun Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab () Term)
(declare-fun Bug3130c.__proj__Mkmachin__item__pred@tok () Term)


; </end encoding val Bug3130c.__proj__Mkmachin__item__pred>


; encoding sigelt let __proj__Mkmachin__item__pred


; <Skipped let __proj__Mkmachin__item__pred/>


; encoding sigelt val Bug3130c.__proj__Mkmachin__item__lemma


; <Start encoding val Bug3130c.__proj__Mkmachin__item__lemma>

(declare-fun Bug3130c.__proj__Mkmachin__item__lemma (Term Term Term) Term)


;;;;;;;;;;;;;;;;{| _: typeclass2 bytes a |} -> projectee: machin a -> content: a   -> FStar.Pervasives.Lemma (ensures truc t_inst content)
(declare-fun Tm_arrow_a4f8c953f6690a57d1f060e159f54c7a () Term)
(declare-fun Bug3130c.__proj__Mkmachin__item__lemma@tok () Term)



; </end encoding val Bug3130c.__proj__Mkmachin__item__lemma>


; encoding sigelt let __proj__Mkmachin__item__lemma


; <Skipped let __proj__Mkmachin__item__lemma/>


; encoding sigelt let pre


; <Start encoding let pre>

(declare-fun Bug3130c.pre (Term Term Term Term) Term)
;;;;;;;;;;;;;;;;{| d: typeclass2 bytes a |} -> m: machin a -> x: a -> Prims.prop
(declare-fun Tm_arrow_004e357087656ac03bd640480f944ff5 () Term)
(declare-fun Bug3130c.pre@tok () Term)

; </end encoding let pre>


; encoding sigelt val Bug3130c.bidule


; <Skipped val Bug3130c.bidule/>

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
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name FStar.Stubs.Tactics.Common.NotAListLiteral; Namespace FStar.Stubs.Tactics.Common
(assert (! (implies (is-FStar.Stubs.Tactics.Common.NotAListLiteral FStar.Stubs.Tactics.Common.NotAListLiteral)
(= FStar.Stubs.Tactics.Common.NotAListLiteral
FStar.Stubs.Tactics.Common.NotAListLiteral@base))
:named constructor_base_FStar.Stubs.Tactics.Common.NotAListLiteral))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name FStar.Stubs.Tactics.Common.SKIP; Namespace FStar.Stubs.Tactics.Common
(assert (! (implies (is-FStar.Stubs.Tactics.Common.SKIP FStar.Stubs.Tactics.Common.SKIP)
(= FStar.Stubs.Tactics.Common.SKIP
FStar.Stubs.Tactics.Common.SKIP@base))
:named constructor_base_FStar.Stubs.Tactics.Common.SKIP))
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
;;; Fact-ids: Name Bug3130c.truc; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(19,11-19,15); use=Bug3130c.fst(19,11-19,15)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Bug3130c.typeclass1 @x0))
(HasType @x2
Tm_type)
(HasType @x3
(Bug3130c.typeclass2 @x0
@x1
@x2))
(HasType @x4
(Bug3130c.t @x0))
(HasType @x5
@x2))
(HasType (Bug3130c.truc @x0
@x1
@x2
@x3
@x4
@x5)
Tm_type))
 

:pattern ((Bug3130c.truc @x0
@x1
@x2
@x3
@x4
@x5))
:qid typing_Bug3130c.truc))

:named typing_Bug3130c.truc))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.t_inst; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(17,11-17,17); use=Bug3130c.fst(17,11-17,17)
(forall ((@u0 Dummy_sort))
 (! (HasType (Bug3130c.t_inst @u0)
(Bug3130c.t Bug3130c.bytes))
 

:pattern ((Bug3130c.t_inst @u0))
:qid typing_Bug3130c.t_inst))

:named typing_Bug3130c.t_inst))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.t; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(16,11-16,12); use=Bug3130c.fst(16,11-16,12)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Bug3130c.t @x0)
Tm_type))
 

:pattern ((Bug3130c.t @x0))
:qid typing_Bug3130c.t))

:named typing_Bug3130c.t))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.bytes_typeclass1_; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(15,9-15,26); use=Bug3130c.fst(15,9-15,26)
(forall ((@u0 Dummy_sort))
 (! (HasType (Bug3130c.bytes_typeclass1_ @u0)
(Bug3130c.typeclass1 Bug3130c.bytes))
 

:pattern ((Bug3130c.bytes_typeclass1_ @u0))
:qid typing_Bug3130c.bytes_typeclass1_))

:named typing_Bug3130c.bytes_typeclass1_))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.bytes_typeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(14,11-14,27); use=Bug3130c.fst(14,11-14,27)
(forall ((@u0 Dummy_sort))
 (! (HasType (Bug3130c.bytes_typeclass1 @u0)
(Bug3130c.typeclass1 Bug3130c.bytes))
 

:pattern ((Bug3130c.bytes_typeclass1 @u0))
:qid typing_Bug3130c.bytes_typeclass1))

:named typing_Bug3130c.bytes_typeclass1))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.bytes; Namespace Bug3130c
(assert (! (HasType Bug3130c.bytes
Tm_type)
:named typing_Bug3130c.bytes))
;;;;;;;;;;;;;;;;free var typing
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(27,2-27,6); use=Bug3130c.fst(27,2-27,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x0))
(HasType @x2
(Bug3130c.machin @x0
@x1)))
(HasType (Bug3130c.__proj__Mkmachin__item__pred @x0
@x1
@x2)
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x0)))
 

:pattern ((Bug3130c.__proj__Mkmachin__item__pred @x0
@x1
@x2))
:qid typing_Bug3130c.__proj__Mkmachin__item__pred))

:named typing_Bug3130c.__proj__Mkmachin__item__pred))
;;;;;;;;;;;;;;;;True interpretation
;;; Fact-ids: Name Prims.l_True; Namespace Prims
(assert (! (Valid Prims.l_True)
:named true_interp))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Bug3130c.typeclass2@tok
@x0)
@x1)
@x2)
(Bug3130c.typeclass2 @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Bug3130c.typeclass2@tok
@x0)
@x1)
@x2))

:pattern ((Bug3130c.typeclass2 @x0
@x1
@x2))
:qid token_correspondence_Bug3130c.typeclass2@tok))

:named token_correspondence_Bug3130c.typeclass2@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term))
 (! (= (ApplyTT Bug3130c.typeclass1@tok
@x0)
(Bug3130c.typeclass1 @x0))
 

:pattern ((ApplyTT Bug3130c.typeclass1@tok
@x0))

:pattern ((Bug3130c.typeclass1 @x0))
:qid token_correspondence_Bug3130c.typeclass1@tok))

:named token_correspondence_Bug3130c.typeclass1@tok))
;;;;;;;;;;;;;;;;name-token correspondence
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= (ApplyTT (ApplyTT Bug3130c.machin@tok
@x0)
@x1)
(Bug3130c.machin @x0
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug3130c.machin@tok
@x0)
@x1))

:pattern ((Bug3130c.machin @x0
@x1))
:qid token_correspondence_Bug3130c.machin@tok))

:named token_correspondence_Bug3130c.machin@tok))
;;;;;;;;;;;;;;;;Name-token correspondence
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(27,2-27,6); use=Bug3130c.fst(27,2-27,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Bug3130c.__proj__Mkmachin__item__pred@tok
@x0)
@x1)
@x2)
(Bug3130c.__proj__Mkmachin__item__pred @x0
@x1
@x2))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT Bug3130c.__proj__Mkmachin__item__pred@tok
@x0)
@x1)
@x2))
:qid token_correspondence_Bug3130c.__proj__Mkmachin__item__pred))

:named token_correspondence_Bug3130c.__proj__Mkmachin__item__pred))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x5
@x6
@x7))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x5
@x6
@x7)))
:qid subterm_ordering_Bug3130c.Mktypeclass2))

:named subterm_ordering_Bug3130c.Mktypeclass2))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x3))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x2
(Bug3130c.Mktypeclass1 @x1
@x2))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x3)))
:qid subterm_ordering_Bug3130c.Mktypeclass1))

:named subterm_ordering_Bug3130c.Mktypeclass1))
;;;;;;;;;;;;;;;;subterm ordering
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x5
@x6))
(and (Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x3
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)))
(Valid (Prims.precedes Prims.lex_t
Prims.lex_t
@x4
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x5
@x6)))
:qid subterm_ordering_Bug3130c.Mkmachin))

:named subterm_ordering_Bug3130c.Mkmachin))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (HasType Tm_refine_f1ecc6ab6882a651504f328937700647
Tm_type)
:named refinement_kinding_Tm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (HasType Tm_refine_da3062322c9bea8d5b2058386775b91a
Tm_type)
:named refinement_kinding_Tm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;refinement kinding
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(30,4-31,33); use=Bug3130c.fst(30,4-31,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (HasType (Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x0
@x1
@x2)
Tm_type)
 

:pattern ((HasType (Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x0
@x1
@x2)
Tm_type))
:qid refinement_kinding_Tm_refine_c103c48e5ca198380a8345e2420f9f72))

:named refinement_kinding_Tm_refine_c103c48e5ca198380a8345e2420f9f72))
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
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(30,4-31,33); use=Bug3130c.fst(30,4-31,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (iff (HasTypeFuel @u0
@x1
(Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x2
@x3
@x4))
(and (HasTypeFuel @u0
@x1
Prims.unit)

;; def=Prims.fst(635,71-635,97); use=Bug3130c.fst(30,4-31,33)
(not 
;; def=Prims.fst(441,29-441,97); use=Bug3130c.fst(30,4-30,9)
(forall ((@x5 Term))
 (! (implies (and (HasType @x5
Prims.unit)

;; def=Bug3130c.fst(31,13-31,32); use=Bug3130c.fst(30,4-30,9)
(Valid 
;; def=Bug3130c.fst(31,13-31,32); use=Bug3130c.fst(30,4-30,9)
(Bug3130c.truc Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x2
@x3
(Bug3130c.t_inst Dummy_value)
@x4)
)
)

;; def=Prims.fst(635,86-635,95); use=Bug3130c.fst(30,4-31,33)
(not 
;; def=Prims.fst(635,86-635,95); use=Bug3130c.fst(30,4-31,33)
(= @x5
@x1)
)
)
 
;;no pats
:qid refinement_interpretation_Tm_refine_c103c48e5ca198380a8345e2420f9f72.1))
)
))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x2
@x3
@x4)))
:qid refinement_interpretation_Tm_refine_c103c48e5ca198380a8345e2420f9f72))

:named refinement_interpretation_Tm_refine_c103c48e5ca198380a8345e2420f9f72))
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
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Bug3130c.Mktypeclass2_y (Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3))
:qid projection_inverse_Bug3130c.Mktypeclass2_y))

:named projection_inverse_Bug3130c.Mktypeclass2_y))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Bug3130c.Mktypeclass1_x (Bug3130c.Mktypeclass1 @x0
@x1))
@x1)
 

:pattern ((Bug3130c.Mktypeclass1 @x0
@x1))
:qid projection_inverse_Bug3130c.Mktypeclass1_x))

:named projection_inverse_Bug3130c.Mktypeclass1_x))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= (Bug3130c.Mktypeclass1_a (Bug3130c.Mktypeclass1 @x0
@x1))
@x0)
 

:pattern ((Bug3130c.Mktypeclass1 @x0
@x1))
:qid projection_inverse_Bug3130c.Mktypeclass1_a))

:named projection_inverse_Bug3130c.Mktypeclass1_a))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Bug3130c.Mkmachin_uu___1 (Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
@x1)
 

:pattern ((Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
:qid projection_inverse_Bug3130c.Mkmachin_uu___1))

:named projection_inverse_Bug3130c.Mkmachin_uu___1))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Bug3130c.Mkmachin_pred (Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
@x2)
 

:pattern ((Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
:qid projection_inverse_Bug3130c.Mkmachin_pred))

:named projection_inverse_Bug3130c.Mkmachin_pred))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Bug3130c.Mkmachin_lemma (Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
@x3)
 

:pattern ((Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
:qid projection_inverse_Bug3130c.Mkmachin_lemma))

:named projection_inverse_Bug3130c.Mkmachin_lemma))
;;;;;;;;;;;;;;;;Projection inverse
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (Bug3130c.Mkmachin_a (Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
@x0)
 

:pattern ((Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
:qid projection_inverse_Bug3130c.Mkmachin_a))

:named projection_inverse_Bug3130c.Mkmachin_a))
;;;;;;;;;;;;;;;;Projector equation
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(27,2-27,6); use=Bug3130c.fst(27,2-27,6)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= (Bug3130c.__proj__Mkmachin__item__pred @x0
@x1
@x2)
(Bug3130c.Mkmachin_pred @x2))
 

:pattern ((Bug3130c.__proj__Mkmachin__item__pred @x0
@x1
@x2))
:qid proj_equation_Bug3130c.Mkmachin_pred))

:named proj_equation_Bug3130c.Mkmachin_pred))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! (is-Tm_arrow (PreType Bug3130c.typeclass2@tok))
:named pre_kinding_Bug3130c.typeclass2@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! (is-Tm_arrow (PreType Bug3130c.typeclass1@tok))
:named pre_kinding_Bug3130c.typeclass1@tok))
;;;;;;;;;;;;;;;;kinding
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! (is-Tm_arrow (PreType Bug3130c.machin@tok))
:named pre_kinding_Bug3130c.machin@tok))
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
;;;;;;;;;;;;;;;;kinding_Tm_arrow_81e65de2755319ee661cc1adc7d951e3
;;; Fact-ids: Name FStar.IndefiniteDescription.indefinite_description_ghost; Namespace FStar.IndefiniteDescription
(assert (! 
;; def=FStar.IndefiniteDescription.fsti(34,34-34,57); use=FStar.IndefiniteDescription.fsti(34,48-34,57)
(forall ((@x0 Term))
 (! (HasType (Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x0)
Tm_type)
 

:pattern ((HasType (Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x0)
Tm_type))
:qid kinding_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))

:named kinding_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,13-31,33); use=Bug3130c.fst(29,12-31,33)
(forall ((@x0 Term) (@x1 Term))
 (! (HasType (Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x0
@x1)
Tm_type)
 

:pattern ((HasType (Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x0
@x1)
Tm_type))
:qid kinding_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))

:named kinding_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))
;;;;;;;;;;;;;;;;kinding_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! (HasType Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab
Tm_type)
:named kinding_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (HasType Prims.trivial
Tm_type)
:named kinding_Prims.trivial@tok))
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! (and (IsTotFun Bug3130c.typeclass2@tok)

;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Bug3130c.typeclass2@tok
@x0))
 

:pattern ((ApplyTT Bug3130c.typeclass2@tok
@x0))
:qid kinding_Bug3130c.typeclass2@tok))


;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term))
 (! (IsTotFun (ApplyTT (ApplyTT Bug3130c.typeclass2@tok
@x0)
@x1))
 

:pattern ((ApplyTT (ApplyTT Bug3130c.typeclass2@tok
@x0)
@x1))
:qid kinding_Bug3130c.typeclass2@tok.1))


;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Bug3130c.typeclass1 @x0))
(HasType @x2
Tm_type))
(HasType (Bug3130c.typeclass2 @x0
@x1
@x2)
Tm_type))
 

:pattern ((Bug3130c.typeclass2 @x0
@x1
@x2))
:qid kinding_Bug3130c.typeclass2@tok.2))
)
:named kinding_Bug3130c.typeclass2@tok))
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! (and (IsTotFun Bug3130c.typeclass1@tok)

;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term))
 (! (implies (HasType @x0
Tm_type)
(HasType (Bug3130c.typeclass1 @x0)
Tm_type))
 

:pattern ((Bug3130c.typeclass1 @x0))
:qid kinding_Bug3130c.typeclass1@tok))
)
:named kinding_Bug3130c.typeclass1@tok))
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! (and (IsTotFun Bug3130c.machin@tok)

;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term))
 (! (IsTotFun (ApplyTT Bug3130c.machin@tok
@x0))
 

:pattern ((ApplyTT Bug3130c.machin@tok
@x0))
:qid kinding_Bug3130c.machin@tok))


;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term))
 (! (implies (and (HasType @x0
Tm_type)
(HasType @x1
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x0)))
(HasType (Bug3130c.machin @x0
@x1)
Tm_type))
 

:pattern ((Bug3130c.machin @x0
@x1))
:qid kinding_Bug3130c.machin@tok.1))
)
:named kinding_Bug3130c.machin@tok))
;;;;;;;;;;;;;;;;haseq for Tm_refine_f1ecc6ab6882a651504f328937700647
;;; Fact-ids: Name FStar.Pervasives.false_elim; Namespace FStar.Pervasives
(assert (! (iff (Valid (Prims.hasEq Tm_refine_f1ecc6ab6882a651504f328937700647))
(Valid (Prims.hasEq Prims.unit)))
:named haseqTm_refine_f1ecc6ab6882a651504f328937700647))
;;;;;;;;;;;;;;;;haseq for Tm_refine_da3062322c9bea8d5b2058386775b91a
;;; Fact-ids: Name FStar.List.Tot.Base.strict_suffix_of; Namespace FStar.List.Tot.Base
(assert (! (iff (Valid (Prims.hasEq Tm_refine_da3062322c9bea8d5b2058386775b91a))
(Valid (Prims.hasEq Tm_type)))
:named haseqTm_refine_da3062322c9bea8d5b2058386775b91a))
;;;;;;;;;;;;;;;;haseq for Tm_refine_c103c48e5ca198380a8345e2420f9f72
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(30,4-31,33); use=Bug3130c.fst(30,4-31,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (Valid (Prims.hasEq (Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x0
@x1
@x2)))
(Valid (Prims.hasEq Prims.unit)))
 

:pattern ((Valid (Prims.hasEq (Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x0
@x1
@x2))))
:qid haseqTm_refine_c103c48e5ca198380a8345e2420f9f72))

:named haseqTm_refine_c103c48e5ca198380a8345e2420f9f72))
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
;;; Fact-ids: Name Bug3130c.bytes; Namespace Bug3130c
(assert (! (HasType Bug3130c.bytes
Tm_type)
:named function_token_typing_Bug3130c.bytes))
;;;;;;;;;;;;;;;;function token typing
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(27,2-27,6); use=Bug3130c.fst(27,2-27,6)
(forall ((@x0 Term))
 (! (and (NoHoist @x0
(HasType Bug3130c.__proj__Mkmachin__item__pred@tok
Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))

;; def=Bug3130c.fst(27,2-27,6); use=Bug3130c.fst(27,2-27,6)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (= (ApplyTT (ApplyTT (ApplyTT Bug3130c.__proj__Mkmachin__item__pred@tok
@x1)
@x2)
@x3)
(Bug3130c.__proj__Mkmachin__item__pred @x1
@x2
@x3))
 

:pattern ((Bug3130c.__proj__Mkmachin__item__pred @x1
@x2
@x3))
:qid function_token_typing_Bug3130c.__proj__Mkmachin__item__pred.1))
)
 

:pattern ((ApplyTT @x0
Bug3130c.__proj__Mkmachin__item__pred@tok))
:qid function_token_typing_Bug3130c.__proj__Mkmachin__item__pred))

:named function_token_typing_Bug3130c.__proj__Mkmachin__item__pred))
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
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Bug3130c.typeclass2 @x2
@x3
@x4))
(is-Bug3130c.Mktypeclass2 @x1))
 

:pattern ((HasTypeFuel @u0
@x1
(Bug3130c.typeclass2 @x2
@x3
@x4)))
:qid fuel_guarded_inversion_Bug3130c.typeclass2))

:named fuel_guarded_inversion_Bug3130c.typeclass2))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Bug3130c.typeclass1 @x2))
(and (is-Bug3130c.Mktypeclass1 @x1)
(= @x2
(Bug3130c.Mktypeclass1_a @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(Bug3130c.typeclass1 @x2)))
:qid fuel_guarded_inversion_Bug3130c.typeclass1))

:named fuel_guarded_inversion_Bug3130c.typeclass1))
;;;;;;;;;;;;;;;;inversion axiom
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Bug3130c.machin @x2
@x3))
(and (is-Bug3130c.Mkmachin @x1)
(= @x2
(Bug3130c.Mkmachin_a @x1))
(= @x3
(Bug3130c.Mkmachin_uu___1 @x1))))
 

:pattern ((HasTypeFuel @u0
@x1
(Bug3130c.machin @x2
@x3)))
:qid fuel_guarded_inversion_Bug3130c.machin))

:named fuel_guarded_inversion_Bug3130c.machin))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! (= 126
(Term_constr_id Bug3130c.typeclass2@tok))
:named fresh_token_Bug3130c.typeclass2@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! (= 105
(Term_constr_id Bug3130c.typeclass1@tok))
:named fresh_token_Bug3130c.typeclass1@tok))
;;;;;;;;;;;;;;;;fresh token
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! (= 159
(Term_constr_id Bug3130c.machin@tok))
:named fresh_token_Bug3130c.machin@tok))
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
;;;;;;;;;;;;;;;;Equation for Bug3130c.bytes_typeclass1_
;;; Fact-ids: Name Bug3130c.bytes_typeclass1_; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(15,9-15,26); use=Bug3130c.fst(15,9-15,26)
(forall ((@u0 Dummy_sort))
 (! (= 
;; def=Bug3130c.fst(15,9-15,26); use=Bug3130c.fst(15,9-15,26)
(Bug3130c.bytes_typeclass1_ @u0)

(Bug3130c.bytes_typeclass1 Dummy_value))
 

:pattern (
;; def=Bug3130c.fst(15,9-15,26); use=Bug3130c.fst(15,9-15,26)
(Bug3130c.bytes_typeclass1_ @u0)
)
:qid equation_Bug3130c.bytes_typeclass1_))

:named equation_Bug3130c.bytes_typeclass1_))
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
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(Bug3130c.typeclass1 @x1))
(HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x4
Prims.unit))
(HasTypeFuel @u0
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x1
@x2
@x3)))
 

:pattern ((HasTypeFuel @u0
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x1
@x2
@x3)))
:qid data_typing_intro_Bug3130c.Mktypeclass2@tok))

:named data_typing_intro_Bug3130c.Mktypeclass2@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
Prims.unit))
(HasTypeFuel @u0
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x1)))
 

:pattern ((HasTypeFuel @u0
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x1)))
:qid data_typing_intro_Bug3130c.Mktypeclass1@tok))

:named data_typing_intro_Bug3130c.Mktypeclass1@tok))
;;;;;;;;;;;;;;;;data constructor typing intro
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (and (HasTypeFuel @u0
@x1
Tm_type)
(HasTypeFuel @u0
@x2
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x1))
(HasTypeFuel @u0
@x3
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x1))
(HasTypeFuel @u0
@x4
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x2
@x1)))
(HasTypeFuel @u0
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x1
@x2)))
 

:pattern ((HasTypeFuel @u0
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x1
@x2)))
:qid data_typing_intro_Bug3130c.Mkmachin@tok))

:named data_typing_intro_Bug3130c.Mkmachin@tok))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term) (@x7 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x5
@x6
@x7))
(and (HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(Bug3130c.typeclass1 @x5))
(HasTypeFuel @u0
@x7
Tm_type)
(HasTypeFuel @u0
@x4
Prims.unit)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass2 @x1
@x2
@x3
@x4)
(Bug3130c.typeclass2 @x5
@x6
@x7)))
:qid data_elim_Bug3130c.Mktypeclass2))

:named data_elim_Bug3130c.Mktypeclass2))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x3))
(and (HasTypeFuel @u0
@x3
Tm_type)
(HasTypeFuel @u0
@x2
Prims.unit)))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mktypeclass1 @x1
@x2)
(Bug3130c.typeclass1 @x3)))
:qid data_elim_Bug3130c.Mktypeclass1))

:named data_elim_Bug3130c.Mktypeclass1))
;;;;;;;;;;;;;;;;data constructor typing elim
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term) (@x4 Term) (@x5 Term) (@x6 Term))
 (! (implies (HasTypeFuel (SFuel @u0)
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x5
@x6))
(and (HasTypeFuel @u0
@x5
Tm_type)
(HasTypeFuel @u0
@x6
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x5))
(HasTypeFuel @u0
@x3
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x5))
(HasTypeFuel @u0
@x4
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x6
@x5))))
 

:pattern ((HasTypeFuel (SFuel @u0)
(Bug3130c.Mkmachin @x1
@x2
@x3
@x4)
(Bug3130c.machin @x5
@x6)))
:qid data_elim_Bug3130c.Mkmachin))

:named data_elim_Bug3130c.Mkmachin))
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
;;; Fact-ids: Name Prims.trivial; Namespace Prims; Name Prims.T; Namespace Prims
(assert (! (= 122
(Term_constr_id Prims.T))
:named constructor_distinct_Prims.T))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (= 125
(Term_constr_id (Bug3130c.typeclass2 @x0
@x1
@x2)))
 

:pattern ((Bug3130c.typeclass2 @x0
@x1
@x2))
:qid constructor_distinct_Bug3130c.typeclass2))

:named constructor_distinct_Bug3130c.typeclass2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term))
 (! (= 104
(Term_constr_id (Bug3130c.typeclass1 @x0)))
 

:pattern ((Bug3130c.typeclass1 @x0))
:qid constructor_distinct_Bug3130c.typeclass1))

:named constructor_distinct_Bug3130c.typeclass1))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term))
 (! (= 158
(Term_constr_id (Bug3130c.machin @x0
@x1)))
 

:pattern ((Bug3130c.machin @x0
@x1))
:qid constructor_distinct_Bug3130c.machin))

:named constructor_distinct_Bug3130c.machin))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 132
(Term_constr_id (Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3)))
 

:pattern ((Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3))
:qid constructor_distinct_Bug3130c.Mktypeclass2))

:named constructor_distinct_Bug3130c.Mktypeclass2))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term) (@x1 Term))
 (! (= 111
(Term_constr_id (Bug3130c.Mktypeclass1 @x0
@x1)))
 

:pattern ((Bug3130c.Mktypeclass1 @x0
@x1))
:qid constructor_distinct_Bug3130c.Mktypeclass1))

:named constructor_distinct_Bug3130c.Mktypeclass1))
;;;;;;;;;;;;;;;;Constructor distinct
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (= 170
(Term_constr_id (Bug3130c.Mkmachin @x0
@x1
@x2
@x3)))
 

:pattern ((Bug3130c.Mkmachin @x0
@x1
@x2
@x3))
:qid constructor_distinct_Bug3130c.Mkmachin))

:named constructor_distinct_Bug3130c.Mkmachin))
;;;;;;;;;;;;;;;;Constructor base
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (is-Bug3130c.Mktypeclass2 (Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3))
(= (Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3)
(Bug3130c.Mktypeclass2@base @x3)))
 

:pattern ((Bug3130c.Mktypeclass2 @x0
@x1
@x2
@x3))
:qid constructor_base_Bug3130c.Mktypeclass2))

:named constructor_base_Bug3130c.Mktypeclass2))
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
;;; Fact-ids: Name FStar.IndefiniteDescription.indefinite_description_ghost; Namespace FStar.IndefiniteDescription
(assert (! 
;; def=FStar.IndefiniteDescription.fsti(34,34-34,57); use=FStar.IndefiniteDescription.fsti(34,48-34,57)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x2))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x2)))
:qid FStar.IndefiniteDescription_pre_typing_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))

:named FStar.IndefiniteDescription_pre_typing_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_81e65de2755319ee661cc1adc7d951e3
;;; Fact-ids: Name FStar.IndefiniteDescription.indefinite_description_ghost; Namespace FStar.IndefiniteDescription
(assert (! 
;; def=FStar.IndefiniteDescription.fsti(34,34-34,57); use=FStar.IndefiniteDescription.fsti(34,48-34,57)
(forall ((@x0 Term) (@x1 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x1))
(and 
;; def=FStar.IndefiniteDescription.fsti(34,34-34,57); use=FStar.IndefiniteDescription.fsti(34,48-34,57)
(forall ((@x2 Term))
 (! (implies (HasType @x2
@x1)
(HasType (ApplyTT @x0
@x2)
Prims.prop))
 

:pattern ((ApplyTT @x0
@x2))
:qid FStar.IndefiniteDescription_interpretation_Tm_arrow_81e65de2755319ee661cc1adc7d951e3.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x1)))
:qid FStar.IndefiniteDescription_interpretation_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))

:named FStar.IndefiniteDescription_interpretation_Tm_arrow_81e65de2755319ee661cc1adc7d951e3))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Bug3130c.typeclass1; Namespace Bug3130c; Name Bug3130c.Mktypeclass1; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(5,6-5,16); use=Bug3130c.fst(5,6-5,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Bug3130c.typeclass1 @x2))
(= (Bug3130c.typeclass1 @x2)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Bug3130c.typeclass1 @x2)))
:qid Bug3130c_pretyping_f18d1a997f72879c7acbb0485b34b725))

:named Bug3130c_pretyping_f18d1a997f72879c7acbb0485b34b725))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Bug3130c.typeclass2; Namespace Bug3130c; Name Bug3130c.Mktypeclass2; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(9,6-9,16); use=Bug3130c.fst(9,6-9,16)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term) (@x4 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Bug3130c.typeclass2 @x2
@x3
@x4))
(= (Term_constr_id (Bug3130c.typeclass2 @x2
@x3
@x4))
(Term_constr_id (PreType @x0))))
 

:pattern ((HasTypeFuel @u1
@x0
(Bug3130c.typeclass2 @x2
@x3
@x4)))
:qid Bug3130c_pretyping_a42ff30a23f3fe87ac6a876536560227))

:named Bug3130c_pretyping_a42ff30a23f3fe87ac6a876536560227))
;;;;;;;;;;;;;;;;pretyping
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-26,11); use=Bug3130c.fst(26,5-26,11)
(forall ((@x0 Term) (@u1 Fuel) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u1
@x0
(Bug3130c.machin @x2
@x3))
(= (Bug3130c.machin @x2
@x3)
(PreType @x0)))
 

:pattern ((HasTypeFuel @u1
@x0
(Bug3130c.machin @x2
@x3)))
:qid Bug3130c_pretyping_a2c85b819498ce2664f4d35c2ddb8b2d))

:named Bug3130c_pretyping_a2c85b819498ce2664f4d35c2ddb8b2d))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,13-31,33); use=Bug3130c.fst(29,12-31,33)
(forall ((@u0 Fuel) (@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (HasTypeFuel @u0
@x1
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x2
@x3))
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x2
@x3)))
:qid Bug3130c_pre_typing_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))

:named Bug3130c_pre_typing_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))
;;;;;;;;;;;;;;;;pre-typing for functions
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-27,17); use=Bug3130c.fst(26,5-27,17)
(forall ((@u0 Fuel) (@x1 Term))
 (! (implies (HasTypeFuel @u0
@x1
Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab)
(is-Tm_arrow (PreType @x1)))
 

:pattern ((HasTypeFuel @u0
@x1
Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))
:qid Bug3130c_pre_typing_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))

:named Bug3130c_pre_typing_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99
;;; Fact-ids: Name Bug3130c.machin; Namespace Bug3130c; Name Bug3130c.Mkmachin; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,13-31,33); use=Bug3130c.fst(29,12-31,33)
(forall ((@x0 Term) (@x1 Term) (@x2 Term))
 (! (iff (HasTypeZ @x0
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x1
@x2))
(and 
;; def=Bug3130c.fst(26,13-31,33); use=Bug3130c.fst(29,12-31,33)
(forall ((@x3 Term))
 (! (implies (HasType @x3
@x2)
(HasType (ApplyTT @x0
@x3)
(Tm_refine_c103c48e5ca198380a8345e2420f9f72 @x2
@x1
@x3)))
 

:pattern ((ApplyTT @x0
@x3))
:qid Bug3130c_interpretation_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99.1))

(IsTotFun @x0)))
 

:pattern ((HasTypeZ @x0
(Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99 @x1
@x2)))
:qid Bug3130c_interpretation_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))

:named Bug3130c_interpretation_Tm_arrow_685e3eb48ef7b9cae9084090eaec3c99))
;;;;;;;;;;;;;;;;interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab
;;; Fact-ids: Name Bug3130c.__proj__Mkmachin__item__pred; Namespace Bug3130c
(assert (! 
;; def=Bug3130c.fst(26,5-27,17); use=Bug3130c.fst(26,5-27,17)
(forall ((@x0 Term))
 (! (iff (HasTypeZ @x0
Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab)
(and 
;; def=Bug3130c.fst(26,5-27,17); use=Bug3130c.fst(26,5-27,17)
(forall ((@x1 Term) (@x2 Term) (@x3 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x1))
(HasType @x3
(Bug3130c.machin @x1
@x2)))
(HasType (ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3)
(Tm_arrow_81e65de2755319ee661cc1adc7d951e3 @x1)))
 

:pattern ((ApplyTT (ApplyTT (ApplyTT @x0
@x1)
@x2)
@x3))
:qid Bug3130c_interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab.1))

(IsTotFun @x0)

;; def=Bug3130c.fst(26,5-27,17); use=Bug3130c.fst(26,5-27,17)
(forall ((@x1 Term))
 (! (implies (HasType @x1
Tm_type)
(IsTotFun (ApplyTT @x0
@x1)))
 

:pattern ((ApplyTT @x0
@x1))
:qid Bug3130c_interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab.2))


;; def=Bug3130c.fst(26,5-27,17); use=Bug3130c.fst(26,5-27,17)
(forall ((@x1 Term) (@x2 Term))
 (! (implies (and (HasType @x1
Tm_type)
(HasType @x2
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x1)))
(IsTotFun (ApplyTT (ApplyTT @x0
@x1)
@x2)))
 

:pattern ((ApplyTT (ApplyTT @x0
@x1)
@x2))
:qid Bug3130c_interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab.3))
))
 

:pattern ((HasTypeZ @x0
Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))
:qid Bug3130c_interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))

:named Bug3130c_interpretation_Tm_arrow_295ca3de4410aa2ceec70b4c33cae9ab))
;;;;;;;;;;;;;;;;kick_partial_app
;;; Fact-ids: Name Bug3130c.pre; Namespace Bug3130c
(assert (! (Valid (ApplyTT __uu__PartialApp
Bug3130c.__proj__Mkmachin__item__pred@tok))
:named @kick_partial_app_fa819983072f1c46cd6bb371306b5b05))
(push) ;; push{2

; Starting query at Bug3130c.fst(45,25-45,27)

(declare-fun label_1 () Bool)


; Encoding query formula : forall (a: Type) (tc2: Bug3130c.typeclass2 Bug3130c.bytes a) (m: Bug3130c.machin a) (x: a).
;   (*  - Could not prove post-condition
; *)
;   forall (p: Prims.pure_post Prims.unit).
;     m.pred x /\ (forall (pure_result: Prims.unit). Prims.auto_squash (p pure_result)) ==>
;     (forall (any_result: Prims.unit). p any_result)


; Context: While encoding a query
; While typechecking the top-level declaration `let bidule`

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
(Bug3130c.typeclass2 Bug3130c.bytes
(Bug3130c.bytes_typeclass1_ Dummy_value)
@x0))
(HasType @x2
(Bug3130c.machin @x0
@x1))
(HasType @x3
@x0))

;; def=Prims.fst(406,51-406,91); use=Prims.fst(430,19-430,32)
(forall ((@x4 Term))
 (! (implies (and (HasType @x4
(Prims.pure_post Prims.unit))

;; def=Bug3130c.fst(43,12-43,20); use=Bug3130c.fst(45,25-45,27)
(Valid 
;; def=Bug3130c.fst(43,12-43,20); use=Bug3130c.fst(45,25-45,27)
(ApplyTT (ApplyTT (ApplyTT (ApplyTT Bug3130c.__proj__Mkmachin__item__pred@tok
@x0)
@x1)
@x2)
@x3)
)


;; def=Prims.fst(441,36-441,97); use=Bug3130c.fst(45,25-45,27)
(forall ((@x5 Term))
 (! (implies (or label_1
(HasType @x5
Prims.unit))

;; def=Prims.fst(441,83-441,96); use=Bug3130c.fst(45,25-45,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug3130c.fst(45,25-45,27)
(ApplyTT @x4
@x5)
)
)
 

:pattern (
;; def=Prims.fst(441,83-441,96); use=Bug3130c.fst(45,25-45,27)
(Valid 
;; def=Prims.fst(441,83-441,96); use=Bug3130c.fst(45,25-45,27)
(ApplyTT @x4
@x5)
)
)
:qid @query.2))
)

;; def=Prims.fst(451,66-451,102); use=Prims.fst(454,31-454,44)
(forall ((@x5 Term))
 (! (implies (HasType @x5
Prims.unit)

;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
(Valid 
;; def=Prims.fst(451,90-451,102); use=Prims.fst(454,31-454,44)
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
(echo "label_1")
(eval label_1)
(echo "</labels>")
(echo "Done!")
(pop) ;; 0}pop
; QUERY ID: (Bug3130c.bidule, 1)
; STATUS: unsat
; UNSAT CORE GENERATED: @query