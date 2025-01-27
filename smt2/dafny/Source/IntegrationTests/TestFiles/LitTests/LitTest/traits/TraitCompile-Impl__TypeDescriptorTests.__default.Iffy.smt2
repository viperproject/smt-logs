(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun TBool () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TypeDescriptorTests.UberTrait () T@U)
(declare-fun Tagclass.TypeDescriptorTests.UberTrait? () T@U)
(declare-fun tytagFamily$UberTrait () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait (T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait_2 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait? (T@U T@U T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait?_0 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait?_1 (T@U) T@U)
(declare-fun Tclass.TypeDescriptorTests.UberTrait?_2 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TypeDescriptorTests.UberTrait.Id (T@U T@U T@U T@U T@U) T@U)
(declare-fun |TypeDescriptorTests.UberTrait.Id#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun implements$TypeDescriptorTests.UberTrait (T@U T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct TBool TReal TagBool TagReal alloc Tagclass.TypeDescriptorTests.UberTrait Tagclass.TypeDescriptorTests.UberTrait? tytagFamily$UberTrait)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TReal) TagReal))
(assert (forall ((TypeDescriptorTests.UberTrait$X T@U) (TypeDescriptorTests.UberTrait$Y T@U) (TypeDescriptorTests.UberTrait$Z T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait_0 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X TypeDescriptorTests.UberTrait$Y TypeDescriptorTests.UberTrait$Z)) TypeDescriptorTests.UberTrait$X)
 :qid |unknown.0:0|
 :skolemid |3824|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X TypeDescriptorTests.UberTrait$Y TypeDescriptorTests.UberTrait$Z))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@0 T@U) (TypeDescriptorTests.UberTrait$Y@@0 T@U) (TypeDescriptorTests.UberTrait$Z@@0 T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait_1 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@0 TypeDescriptorTests.UberTrait$Y@@0 TypeDescriptorTests.UberTrait$Z@@0)) TypeDescriptorTests.UberTrait$Y@@0)
 :qid |unknown.0:0|
 :skolemid |3825|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@0 TypeDescriptorTests.UberTrait$Y@@0 TypeDescriptorTests.UberTrait$Z@@0))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@1 T@U) (TypeDescriptorTests.UberTrait$Y@@1 T@U) (TypeDescriptorTests.UberTrait$Z@@1 T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait_2 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@1 TypeDescriptorTests.UberTrait$Y@@1 TypeDescriptorTests.UberTrait$Z@@1)) TypeDescriptorTests.UberTrait$Z@@1)
 :qid |unknown.0:0|
 :skolemid |3826|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@1 TypeDescriptorTests.UberTrait$Y@@1 TypeDescriptorTests.UberTrait$Z@@1))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@2 T@U) (TypeDescriptorTests.UberTrait$Y@@2 T@U) (TypeDescriptorTests.UberTrait$Z@@2 T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait?_0 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@2 TypeDescriptorTests.UberTrait$Y@@2 TypeDescriptorTests.UberTrait$Z@@2)) TypeDescriptorTests.UberTrait$X@@2)
 :qid |unknown.0:0|
 :skolemid |3832|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@2 TypeDescriptorTests.UberTrait$Y@@2 TypeDescriptorTests.UberTrait$Z@@2))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@3 T@U) (TypeDescriptorTests.UberTrait$Y@@3 T@U) (TypeDescriptorTests.UberTrait$Z@@3 T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait?_1 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@3 TypeDescriptorTests.UberTrait$Y@@3 TypeDescriptorTests.UberTrait$Z@@3)) TypeDescriptorTests.UberTrait$Y@@3)
 :qid |unknown.0:0|
 :skolemid |3833|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@3 TypeDescriptorTests.UberTrait$Y@@3 TypeDescriptorTests.UberTrait$Z@@3))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@4 T@U) (TypeDescriptorTests.UberTrait$Y@@4 T@U) (TypeDescriptorTests.UberTrait$Z@@4 T@U) ) (! (= (Tclass.TypeDescriptorTests.UberTrait?_2 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@4 TypeDescriptorTests.UberTrait$Y@@4 TypeDescriptorTests.UberTrait$Z@@4)) TypeDescriptorTests.UberTrait$Z@@4)
 :qid |unknown.0:0|
 :skolemid |3834|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@4 TypeDescriptorTests.UberTrait$Y@@4 TypeDescriptorTests.UberTrait$Z@@4))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@5 T@U) (TypeDescriptorTests.UberTrait$Y@@5 T@U) (TypeDescriptorTests.UberTrait$Z@@5 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@5 TypeDescriptorTests.UberTrait$Y@@5 TypeDescriptorTests.UberTrait$Z@@5)) Tagclass.TypeDescriptorTests.UberTrait) (= (TagFamily (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@5 TypeDescriptorTests.UberTrait$Y@@5 TypeDescriptorTests.UberTrait$Z@@5)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |3823|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@5 TypeDescriptorTests.UberTrait$Y@@5 TypeDescriptorTests.UberTrait$Z@@5))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@6 T@U) (TypeDescriptorTests.UberTrait$Y@@6 T@U) (TypeDescriptorTests.UberTrait$Z@@6 T@U) ) (!  (and (= (Tag (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@6 TypeDescriptorTests.UberTrait$Y@@6 TypeDescriptorTests.UberTrait$Z@@6)) Tagclass.TypeDescriptorTests.UberTrait?) (= (TagFamily (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@6 TypeDescriptorTests.UberTrait$Y@@6 TypeDescriptorTests.UberTrait$Z@@6)) tytagFamily$UberTrait))
 :qid |unknown.0:0|
 :skolemid |3831|
 :pattern ( (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@6 TypeDescriptorTests.UberTrait$Y@@6 TypeDescriptorTests.UberTrait$Z@@6))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@7 T@U) (TypeDescriptorTests.UberTrait$Y@@7 T@U) (TypeDescriptorTests.UberTrait$Z@@7 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@7 TypeDescriptorTests.UberTrait$Y@@7 TypeDescriptorTests.UberTrait$Z@@7)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@7 TypeDescriptorTests.UberTrait$Y@@7 TypeDescriptorTests.UberTrait$Z@@7))))
 :qid |unknown.0:0|
 :skolemid |3827|
 :pattern ( ($IsBox bx (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@7 TypeDescriptorTests.UberTrait$Y@@7 TypeDescriptorTests.UberTrait$Z@@7)))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@8 T@U) (TypeDescriptorTests.UberTrait$Y@@8 T@U) (TypeDescriptorTests.UberTrait$Z@@8 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@8 TypeDescriptorTests.UberTrait$Y@@8 TypeDescriptorTests.UberTrait$Z@@8)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@8 TypeDescriptorTests.UberTrait$Y@@8 TypeDescriptorTests.UberTrait$Z@@8))))
 :qid |unknown.0:0|
 :skolemid |3835|
 :pattern ( ($IsBox bx@@0 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@8 TypeDescriptorTests.UberTrait$Y@@8 TypeDescriptorTests.UberTrait$Z@@8)))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@9 T@U) (TypeDescriptorTests.UberTrait$Y@@9 T@U) (TypeDescriptorTests.UberTrait$Z@@9 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@9 TypeDescriptorTests.UberTrait$Y@@9 TypeDescriptorTests.UberTrait$Z@@9))  (and ($Is refType |c#0| (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@9 TypeDescriptorTests.UberTrait$Y@@9 TypeDescriptorTests.UberTrait$Z@@9)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3872|
 :pattern ( ($Is refType |c#0| (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@9 TypeDescriptorTests.UberTrait$Y@@9 TypeDescriptorTests.UberTrait$Z@@9)))
 :pattern ( ($Is refType |c#0| (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@9 TypeDescriptorTests.UberTrait$Y@@9 TypeDescriptorTests.UberTrait$Z@@9)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3292|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3290|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeDescriptorTests.UberTrait$X@@10 T@U) (TypeDescriptorTests.UberTrait$Y@@10 T@U) (TypeDescriptorTests.UberTrait$Z@@10 T@U) (this T@U) (|x#0| T@U) ) (!  (=> (or (|TypeDescriptorTests.UberTrait.Id#canCall| TypeDescriptorTests.UberTrait$X@@10 TypeDescriptorTests.UberTrait$Y@@10 TypeDescriptorTests.UberTrait$Z@@10 this |x#0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@10 TypeDescriptorTests.UberTrait$Y@@10 TypeDescriptorTests.UberTrait$Z@@10))) ($IsBox |x#0| TypeDescriptorTests.UberTrait$X@@10)))) ($IsBox (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@10 TypeDescriptorTests.UberTrait$Y@@10 TypeDescriptorTests.UberTrait$Z@@10 this |x#0|) TypeDescriptorTests.UberTrait$X@@10))
 :qid |unknown.0:0|
 :skolemid |3867|
 :pattern ( (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@10 TypeDescriptorTests.UberTrait$Y@@10 TypeDescriptorTests.UberTrait$Z@@10 this |x#0|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3301|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (TypeDescriptorTests.UberTrait$X@@11 T@U) (TypeDescriptorTests.UberTrait$Y@@11 T@U) (TypeDescriptorTests.UberTrait$Z@@11 T@U) (this@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (and (or (|TypeDescriptorTests.UberTrait.Id#canCall| TypeDescriptorTests.UberTrait$X@@11 TypeDescriptorTests.UberTrait$Y@@11 TypeDescriptorTests.UberTrait$Z@@11 this@@0 |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($IsAlloc refType this@@0 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@11 TypeDescriptorTests.UberTrait$Y@@11 TypeDescriptorTests.UberTrait$Z@@11) $Heap)) (and ($IsBox |x#0@@0| TypeDescriptorTests.UberTrait$X@@11) ($IsAllocBox |x#0@@0| TypeDescriptorTests.UberTrait$X@@11 $Heap))))) ($IsGoodHeap $Heap)) ($IsAllocBox (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@11 TypeDescriptorTests.UberTrait$Y@@11 TypeDescriptorTests.UberTrait$Z@@11 this@@0 |x#0@@0|) TypeDescriptorTests.UberTrait$X@@11 $Heap))
 :qid |TraitCompiledfy.499:14|
 :skolemid |3868|
 :pattern ( ($IsAllocBox (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@11 TypeDescriptorTests.UberTrait$Y@@11 TypeDescriptorTests.UberTrait$Z@@11 this@@0 |x#0@@0|) TypeDescriptorTests.UberTrait$X@@11 $Heap))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3314|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@12 T@U) (TypeDescriptorTests.UberTrait$Y@@12 T@U) (TypeDescriptorTests.UberTrait$Z@@12 T@U) ($o T@U) ($h T@U) ) (! (= ($IsAlloc refType $o (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@12 TypeDescriptorTests.UberTrait$Y@@12 TypeDescriptorTests.UberTrait$Z@@12) $h)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3863|
 :pattern ( ($IsAlloc refType $o (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@12 TypeDescriptorTests.UberTrait$Y@@12 TypeDescriptorTests.UberTrait$Z@@12) $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeDescriptorTests.UberTrait$X@@13 T@U) (TypeDescriptorTests.UberTrait$Y@@13 T@U) (TypeDescriptorTests.UberTrait$Z@@13 T@U) (this@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|TypeDescriptorTests.UberTrait.Id#canCall| TypeDescriptorTests.UberTrait$X@@13 TypeDescriptorTests.UberTrait$Y@@13 TypeDescriptorTests.UberTrait$Z@@13 (Lit refType this@@1) (Lit BoxType |x#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@13 TypeDescriptorTests.UberTrait$Y@@13 TypeDescriptorTests.UberTrait$Z@@13))) ($IsBox |x#0@@1| TypeDescriptorTests.UberTrait$X@@13)))) (= (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@13 TypeDescriptorTests.UberTrait$Y@@13 TypeDescriptorTests.UberTrait$Z@@13 (Lit refType this@@1) (Lit BoxType |x#0@@1|)) (Lit BoxType |x#0@@1|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3871|
 :pattern ( (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@13 TypeDescriptorTests.UberTrait$Y@@13 TypeDescriptorTests.UberTrait$Z@@13 (Lit refType this@@1) (Lit BoxType |x#0@@1|)))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TReal) (and (= ($Box realType ($Unbox realType bx@@1)) bx@@1) ($Is realType ($Unbox realType bx@@1) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |3303|
 :pattern ( ($IsBox bx@@1 TReal))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |3304|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3313|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3300|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8401|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@14 T@U) (TypeDescriptorTests.UberTrait$Y@@14 T@U) (TypeDescriptorTests.UberTrait$Z@@14 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@14 TypeDescriptorTests.UberTrait$Y@@14 TypeDescriptorTests.UberTrait$Z@@14) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@14 TypeDescriptorTests.UberTrait$Y@@14 TypeDescriptorTests.UberTrait$Z@@14) $h@@0))
 :qid |unknown.0:0|
 :skolemid |3873|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@14 TypeDescriptorTests.UberTrait$Y@@14 TypeDescriptorTests.UberTrait$Z@@14) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@14 TypeDescriptorTests.UberTrait$Y@@14 TypeDescriptorTests.UberTrait$Z@@14) $h@@0))
)))
(assert (forall ((TypeDescriptorTests.UberTrait$X@@15 T@U) (TypeDescriptorTests.UberTrait$Y@@15 T@U) (TypeDescriptorTests.UberTrait$Z@@15 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@15 TypeDescriptorTests.UberTrait$Y@@15 TypeDescriptorTests.UberTrait$Z@@15))  (or (= $o@@1 null) (implements$TypeDescriptorTests.UberTrait (dtype $o@@1) TypeDescriptorTests.UberTrait$X@@15 TypeDescriptorTests.UberTrait$Y@@15 TypeDescriptorTests.UberTrait$Z@@15)))
 :qid |unknown.0:0|
 :skolemid |3862|
 :pattern ( ($Is refType $o@@1 (Tclass.TypeDescriptorTests.UberTrait? TypeDescriptorTests.UberTrait$X@@15 TypeDescriptorTests.UberTrait$Y@@15 TypeDescriptorTests.UberTrait$Z@@15)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeDescriptorTests.UberTrait$X@@16 T@U) (TypeDescriptorTests.UberTrait$Y@@16 T@U) (TypeDescriptorTests.UberTrait$Z@@16 T@U) (this@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|TypeDescriptorTests.UberTrait.Id#canCall| TypeDescriptorTests.UberTrait$X@@16 TypeDescriptorTests.UberTrait$Y@@16 TypeDescriptorTests.UberTrait$Z@@16 this@@2 |x#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass.TypeDescriptorTests.UberTrait TypeDescriptorTests.UberTrait$X@@16 TypeDescriptorTests.UberTrait$Y@@16 TypeDescriptorTests.UberTrait$Z@@16))) ($IsBox |x#0@@2| TypeDescriptorTests.UberTrait$X@@16)))) (= (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@16 TypeDescriptorTests.UberTrait$Y@@16 TypeDescriptorTests.UberTrait$Z@@16 this@@2 |x#0@@2|) |x#0@@2|))
 :qid |unknown.0:0|
 :skolemid |3870|
 :pattern ( (TypeDescriptorTests.UberTrait.Id TypeDescriptorTests.UberTrait$X@@16 TypeDescriptorTests.UberTrait$Y@@16 TypeDescriptorTests.UberTrait$Z@@16 this@@2 |x#0@@2|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3293|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3291|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc realType v@@1 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |3337|
 :pattern ( ($IsAlloc realType v@@1 TReal h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3338|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is realType v@@3 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |3316|
 :pattern ( ($Is realType v@@3 TReal))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |3317|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |##x#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$TypeDescriptorTests.__default.Iffy)
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |t#0|) (Tclass.TypeDescriptorTests.UberTrait? TBool TReal TReal) $Heap@@0) (=> (and (and (= |##x#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) ($IsAlloc boolType (bool_2_U |##x#0@0|) TBool $Heap@@0)) (and (|TypeDescriptorTests.UberTrait.Id#canCall| TBool TReal TReal |t#0| ($Box boolType (Lit boolType (bool_2_U true)))) (|TypeDescriptorTests.UberTrait.Id#canCall| TBool TReal TReal |t#0| ($Box boolType (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 3) 1) anon3_Then_correct) (=> (= (ControlFlow 0 3) 2) anon3_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is refType |t#0| (Tclass.TypeDescriptorTests.UberTrait TBool TReal TReal)) ($IsAlloc refType |t#0| (Tclass.TypeDescriptorTests.UberTrait TBool TReal TReal) $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 3))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
