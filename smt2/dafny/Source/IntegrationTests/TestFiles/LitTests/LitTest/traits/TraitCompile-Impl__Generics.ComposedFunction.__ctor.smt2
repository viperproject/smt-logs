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
(declare-fun alloc () T@U)
(declare-fun Tagclass.Generics.Function? () T@U)
(declare-fun Tagclass.Generics.Function () T@U)
(declare-fun Tagclass.Generics.ComposedFunction? () T@U)
(declare-fun Tagclass.Generics.ComposedFunction () T@U)
(declare-fun tytagFamily$Function () T@U)
(declare-fun tytagFamily$ComposedFunction () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Generics.ComposedFunction.first (T@U T@U T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction? (T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.Generics.Function (T@U T@U) T@U)
(declare-fun Generics.ComposedFunction.second (T@U T@U T@U T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction?_0 (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction?_1 (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction?_2 (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction (T@U T@U T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction_0 (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction_1 (T@U) T@U)
(declare-fun Tclass.Generics.ComposedFunction_2 (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun implements$Generics.Function (T@U T@U T@U) Bool)
(declare-fun Tclass.Generics.Function? (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Generics.Function?_0 (T@U) T@U)
(declare-fun Tclass.Generics.Function?_1 (T@U) T@U)
(declare-fun Tclass.Generics.Function_0 (T@U) T@U)
(declare-fun Tclass.Generics.Function_1 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct alloc Tagclass.Generics.Function? Tagclass.Generics.Function Tagclass.Generics.ComposedFunction? Tagclass.Generics.ComposedFunction tytagFamily$Function tytagFamily$ComposedFunction)
)
(assert (= (Ctor refType) 3))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Generics.ComposedFunction$S T@U) (Generics.ComposedFunction$T T@U) (Generics.ComposedFunction$RR T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S Generics.ComposedFunction$T Generics.ComposedFunction$RR))) ($Is refType (Generics.ComposedFunction.first Generics.ComposedFunction$S Generics.ComposedFunction$T Generics.ComposedFunction$RR $o) (Tclass.Generics.Function Generics.ComposedFunction$S Generics.ComposedFunction$T)))
 :qid |unknown.0:0|
 :skolemid |2508|
 :pattern ( (Generics.ComposedFunction.first Generics.ComposedFunction$S Generics.ComposedFunction$T Generics.ComposedFunction$RR $o))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Generics.ComposedFunction$S@@0 T@U) (Generics.ComposedFunction$T@@0 T@U) (Generics.ComposedFunction$RR@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@0 Generics.ComposedFunction$T@@0 Generics.ComposedFunction$RR@@0))) ($Is refType (Generics.ComposedFunction.second Generics.ComposedFunction$S@@0 Generics.ComposedFunction$T@@0 Generics.ComposedFunction$RR@@0 $o@@0) (Tclass.Generics.Function Generics.ComposedFunction$T@@0 Generics.ComposedFunction$RR@@0)))
 :qid |unknown.0:0|
 :skolemid |2510|
 :pattern ( (Generics.ComposedFunction.second Generics.ComposedFunction$S@@0 Generics.ComposedFunction$T@@0 Generics.ComposedFunction$RR@@0 $o@@0))
))))
(assert (forall ((Generics.ComposedFunction$S@@1 T@U) (Generics.ComposedFunction$T@@1 T@U) (Generics.ComposedFunction$RR@@1 T@U) ) (! (= (Tclass.Generics.ComposedFunction?_0 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@1 Generics.ComposedFunction$T@@1 Generics.ComposedFunction$RR@@1)) Generics.ComposedFunction$S@@1)
 :qid |unknown.0:0|
 :skolemid |2501|
 :pattern ( (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@1 Generics.ComposedFunction$T@@1 Generics.ComposedFunction$RR@@1))
)))
(assert (forall ((Generics.ComposedFunction$S@@2 T@U) (Generics.ComposedFunction$T@@2 T@U) (Generics.ComposedFunction$RR@@2 T@U) ) (! (= (Tclass.Generics.ComposedFunction?_1 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@2 Generics.ComposedFunction$T@@2 Generics.ComposedFunction$RR@@2)) Generics.ComposedFunction$T@@2)
 :qid |unknown.0:0|
 :skolemid |2502|
 :pattern ( (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@2 Generics.ComposedFunction$T@@2 Generics.ComposedFunction$RR@@2))
)))
(assert (forall ((Generics.ComposedFunction$S@@3 T@U) (Generics.ComposedFunction$T@@3 T@U) (Generics.ComposedFunction$RR@@3 T@U) ) (! (= (Tclass.Generics.ComposedFunction?_2 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@3 Generics.ComposedFunction$T@@3 Generics.ComposedFunction$RR@@3)) Generics.ComposedFunction$RR@@3)
 :qid |unknown.0:0|
 :skolemid |2503|
 :pattern ( (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@3 Generics.ComposedFunction$T@@3 Generics.ComposedFunction$RR@@3))
)))
(assert (forall ((Generics.ComposedFunction$S@@4 T@U) (Generics.ComposedFunction$T@@4 T@U) (Generics.ComposedFunction$RR@@4 T@U) ) (! (= (Tclass.Generics.ComposedFunction_0 (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@4 Generics.ComposedFunction$T@@4 Generics.ComposedFunction$RR@@4)) Generics.ComposedFunction$S@@4)
 :qid |unknown.0:0|
 :skolemid |2514|
 :pattern ( (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@4 Generics.ComposedFunction$T@@4 Generics.ComposedFunction$RR@@4))
)))
(assert (forall ((Generics.ComposedFunction$S@@5 T@U) (Generics.ComposedFunction$T@@5 T@U) (Generics.ComposedFunction$RR@@5 T@U) ) (! (= (Tclass.Generics.ComposedFunction_1 (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@5 Generics.ComposedFunction$T@@5 Generics.ComposedFunction$RR@@5)) Generics.ComposedFunction$T@@5)
 :qid |unknown.0:0|
 :skolemid |2515|
 :pattern ( (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@5 Generics.ComposedFunction$T@@5 Generics.ComposedFunction$RR@@5))
)))
(assert (forall ((Generics.ComposedFunction$S@@6 T@U) (Generics.ComposedFunction$T@@6 T@U) (Generics.ComposedFunction$RR@@6 T@U) ) (! (= (Tclass.Generics.ComposedFunction_2 (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@6 Generics.ComposedFunction$T@@6 Generics.ComposedFunction$RR@@6)) Generics.ComposedFunction$RR@@6)
 :qid |unknown.0:0|
 :skolemid |2516|
 :pattern ( (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@6 Generics.ComposedFunction$T@@6 Generics.ComposedFunction$RR@@6))
)))
(assert (forall ((Generics.ComposedFunction$S@@7 T@U) (Generics.ComposedFunction$T@@7 T@U) (Generics.ComposedFunction$RR@@7 T@U) ) (!  (and (= (Tag (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@7 Generics.ComposedFunction$T@@7 Generics.ComposedFunction$RR@@7)) Tagclass.Generics.ComposedFunction?) (= (TagFamily (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@7 Generics.ComposedFunction$T@@7 Generics.ComposedFunction$RR@@7)) tytagFamily$ComposedFunction))
 :qid |unknown.0:0|
 :skolemid |2500|
 :pattern ( (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@7 Generics.ComposedFunction$T@@7 Generics.ComposedFunction$RR@@7))
)))
(assert (forall ((Generics.ComposedFunction$S@@8 T@U) (Generics.ComposedFunction$T@@8 T@U) (Generics.ComposedFunction$RR@@8 T@U) ) (!  (and (= (Tag (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@8 Generics.ComposedFunction$T@@8 Generics.ComposedFunction$RR@@8)) Tagclass.Generics.ComposedFunction) (= (TagFamily (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@8 Generics.ComposedFunction$T@@8 Generics.ComposedFunction$RR@@8)) tytagFamily$ComposedFunction))
 :qid |unknown.0:0|
 :skolemid |2513|
 :pattern ( (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@8 Generics.ComposedFunction$T@@8 Generics.ComposedFunction$RR@@8))
)))
(assert (forall ((Generics.ComposedFunction$S@@9 T@U) (Generics.ComposedFunction$T@@9 T@U) (Generics.ComposedFunction$RR@@9 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@9 Generics.ComposedFunction$T@@9 Generics.ComposedFunction$RR@@9))  (and ($Is refType |c#0| (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@9 Generics.ComposedFunction$T@@9 Generics.ComposedFunction$RR@@9)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2528|
 :pattern ( ($Is refType |c#0| (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@9 Generics.ComposedFunction$T@@9 Generics.ComposedFunction$RR@@9)))
 :pattern ( ($Is refType |c#0| (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@9 Generics.ComposedFunction$T@@9 Generics.ComposedFunction$RR@@9)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2030|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2031|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1938|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((Generics.ComposedFunction$S@@10 T@U) (Generics.ComposedFunction$T@@10 T@U) (Generics.ComposedFunction$RR@@10 T@U) ) (! (implements$Generics.Function (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@10 Generics.ComposedFunction$T@@10 Generics.ComposedFunction$RR@@10) Generics.ComposedFunction$S@@10 Generics.ComposedFunction$RR@@10)
 :qid |unknown.0:0|
 :skolemid |2507|
)))
(assert (forall ((Generics.Function$T T@U) (Generics.Function$R T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.Generics.Function Generics.Function$T Generics.Function$R))  (and ($Is refType |c#0@@0| (Tclass.Generics.Function? Generics.Function$T Generics.Function$R)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2498|
 :pattern ( ($Is refType |c#0@@0| (Tclass.Generics.Function Generics.Function$T Generics.Function$R)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.Generics.Function? Generics.Function$T Generics.Function$R)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2022|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((Generics.Function$T@@0 T@U) (Generics.Function$R@@0 T@U) (|c#0@@1| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass.Generics.Function Generics.Function$T@@0 Generics.Function$R@@0) $h) ($IsAlloc refType |c#0@@1| (Tclass.Generics.Function? Generics.Function$T@@0 Generics.Function$R@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2499|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Generics.Function Generics.Function$T@@0 Generics.Function$R@@0) $h))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass.Generics.Function? Generics.Function$T@@0 Generics.Function$R@@0) $h))
)))
(assert (forall ((Generics.ComposedFunction$S@@11 T@U) (Generics.ComposedFunction$T@@11 T@U) (Generics.ComposedFunction$RR@@11 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@11 Generics.ComposedFunction$T@@11 Generics.ComposedFunction$RR@@11) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2506|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@11 Generics.ComposedFunction$T@@11 Generics.ComposedFunction$RR@@11) $h@@0))
)))
(assert (forall ((Generics.ComposedFunction$S@@12 T@U) (Generics.ComposedFunction$T@@12 T@U) (Generics.ComposedFunction$RR@@12 T@U) ($o@@2 T@U) ) (!  (=> ($Is refType $o@@2 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@12 Generics.ComposedFunction$T@@12 Generics.ComposedFunction$RR@@12)) ($Is refType $o@@2 (Tclass.Generics.Function? Generics.ComposedFunction$S@@12 Generics.ComposedFunction$RR@@12)))
 :qid |unknown.0:0|
 :skolemid |2550|
 :pattern ( ($Is refType $o@@2 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@12 Generics.ComposedFunction$T@@12 Generics.ComposedFunction$RR@@12)))
)))
(assert (forall ((Generics.Function$T@@1 T@U) (Generics.Function$R@@1 T@U) ($o@@3 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass.Generics.Function? Generics.Function$T@@1 Generics.Function$R@@1) $h@@1)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2487|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass.Generics.Function? Generics.Function$T@@1 Generics.Function$R@@1) $h@@1))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2029|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((Generics.Function$T@@2 T@U) (Generics.Function$R@@2 T@U) ) (! (= (Tclass.Generics.Function?_0 (Tclass.Generics.Function? Generics.Function$T@@2 Generics.Function$R@@2)) Generics.Function$T@@2)
 :qid |unknown.0:0|
 :skolemid |2483|
 :pattern ( (Tclass.Generics.Function? Generics.Function$T@@2 Generics.Function$R@@2))
)))
(assert (forall ((Generics.Function$T@@3 T@U) (Generics.Function$R@@3 T@U) ) (! (= (Tclass.Generics.Function?_1 (Tclass.Generics.Function? Generics.Function$T@@3 Generics.Function$R@@3)) Generics.Function$R@@3)
 :qid |unknown.0:0|
 :skolemid |2484|
 :pattern ( (Tclass.Generics.Function? Generics.Function$T@@3 Generics.Function$R@@3))
)))
(assert (forall ((Generics.Function$T@@4 T@U) (Generics.Function$R@@4 T@U) ) (! (= (Tclass.Generics.Function_0 (Tclass.Generics.Function Generics.Function$T@@4 Generics.Function$R@@4)) Generics.Function$T@@4)
 :qid |unknown.0:0|
 :skolemid |2489|
 :pattern ( (Tclass.Generics.Function Generics.Function$T@@4 Generics.Function$R@@4))
)))
(assert (forall ((Generics.Function$T@@5 T@U) (Generics.Function$R@@5 T@U) ) (! (= (Tclass.Generics.Function_1 (Tclass.Generics.Function Generics.Function$T@@5 Generics.Function$R@@5)) Generics.Function$R@@5)
 :qid |unknown.0:0|
 :skolemid |2490|
 :pattern ( (Tclass.Generics.Function Generics.Function$T@@5 Generics.Function$R@@5))
)))
(assert (forall ((Generics.Function$T@@6 T@U) (Generics.Function$R@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.Generics.Function? Generics.Function$T@@6 Generics.Function$R@@6))  (or (= $o@@4 null) (implements$Generics.Function (dtype $o@@4) Generics.Function$T@@6 Generics.Function$R@@6)))
 :qid |unknown.0:0|
 :skolemid |2486|
 :pattern ( ($Is refType $o@@4 (Tclass.Generics.Function? Generics.Function$T@@6 Generics.Function$R@@6)))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1937|
 :pattern ( ($Box T@@1 x@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8392|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((Generics.ComposedFunction$S@@13 T@U) (Generics.ComposedFunction$T@@13 T@U) (Generics.ComposedFunction$RR@@13 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@13 Generics.ComposedFunction$T@@13 Generics.ComposedFunction$RR@@13))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@13 Generics.ComposedFunction$T@@13 Generics.ComposedFunction$RR@@13))))
 :qid |unknown.0:0|
 :skolemid |2505|
 :pattern ( ($Is refType $o@@6 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@13 Generics.ComposedFunction$T@@13 Generics.ComposedFunction$RR@@13)))
)))
(assert (forall ((Generics.ComposedFunction$S@@14 T@U) (Generics.ComposedFunction$T@@14 T@U) (Generics.ComposedFunction$RR@@14 T@U) (|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@14 Generics.ComposedFunction$T@@14 Generics.ComposedFunction$RR@@14) $h@@2) ($IsAlloc refType |c#0@@2| (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@14 Generics.ComposedFunction$T@@14 Generics.ComposedFunction$RR@@14) $h@@2))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Generics.ComposedFunction Generics.ComposedFunction$S@@14 Generics.ComposedFunction$T@@14 Generics.ComposedFunction$RR@@14) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@14 Generics.ComposedFunction$T@@14 Generics.ComposedFunction$RR@@14) $h@@2))
)))
(assert (forall ((Generics.Function$T@@7 T@U) (Generics.Function$R@@7 T@U) ) (!  (and (= (Tag (Tclass.Generics.Function? Generics.Function$T@@7 Generics.Function$R@@7)) Tagclass.Generics.Function?) (= (TagFamily (Tclass.Generics.Function? Generics.Function$T@@7 Generics.Function$R@@7)) tytagFamily$Function))
 :qid |unknown.0:0|
 :skolemid |2482|
 :pattern ( (Tclass.Generics.Function? Generics.Function$T@@7 Generics.Function$R@@7))
)))
(assert (forall ((Generics.Function$T@@8 T@U) (Generics.Function$R@@8 T@U) ) (!  (and (= (Tag (Tclass.Generics.Function Generics.Function$T@@8 Generics.Function$R@@8)) Tagclass.Generics.Function) (= (TagFamily (Tclass.Generics.Function Generics.Function$T@@8 Generics.Function$R@@8)) tytagFamily$Function))
 :qid |unknown.0:0|
 :skolemid |2488|
 :pattern ( (Tclass.Generics.Function Generics.Function$T@@8 Generics.Function$R@@8))
)))
(assert (forall ((Generics.ComposedFunction$S@@15 T@U) (Generics.ComposedFunction$T@@15 T@U) (Generics.ComposedFunction$RR@@15 T@U) ($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@15 Generics.ComposedFunction$T@@15 Generics.ComposedFunction$RR@@15) $heap) ($IsAlloc refType $o@@7 (Tclass.Generics.Function? Generics.ComposedFunction$S@@15 Generics.ComposedFunction$RR@@15) $heap))
 :qid |unknown.0:0|
 :skolemid |2551|
 :pattern ( ($IsAlloc refType $o@@7 (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@15 Generics.ComposedFunction$T@@15 Generics.ComposedFunction$RR@@15) $heap))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2028|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@4)))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Generics.ComposedFunction$S@@16 T@U) (Generics.ComposedFunction$T@@16 T@U) (Generics.ComposedFunction$RR@@16 T@U) ($h@@3 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@16 Generics.ComposedFunction$T@@16 Generics.ComposedFunction$RR@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@8) alloc)))) ($IsAlloc refType (Generics.ComposedFunction.first Generics.ComposedFunction$S@@16 Generics.ComposedFunction$T@@16 Generics.ComposedFunction$RR@@16 $o@@8) (Tclass.Generics.Function Generics.ComposedFunction$S@@16 Generics.ComposedFunction$T@@16) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2509|
 :pattern ( (Generics.ComposedFunction.first Generics.ComposedFunction$S@@16 Generics.ComposedFunction$T@@16 Generics.ComposedFunction$RR@@16 $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@8) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((Generics.ComposedFunction$S@@17 T@U) (Generics.ComposedFunction$T@@17 T@U) (Generics.ComposedFunction$RR@@17 T@U) ($h@@4 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.Generics.ComposedFunction? Generics.ComposedFunction$S@@17 Generics.ComposedFunction$T@@17 Generics.ComposedFunction$RR@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@9) alloc)))) ($IsAlloc refType (Generics.ComposedFunction.second Generics.ComposedFunction$S@@17 Generics.ComposedFunction$T@@17 Generics.ComposedFunction$RR@@17 $o@@9) (Tclass.Generics.Function Generics.ComposedFunction$T@@17 Generics.ComposedFunction$RR@@17) $h@@4))
 :qid |unknown.0:0|
 :skolemid |2511|
 :pattern ( (Generics.ComposedFunction.second Generics.ComposedFunction$S@@17 Generics.ComposedFunction$T@@17 Generics.ComposedFunction$RR@@17 $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@9) alloc)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |first#0| () T@U)
(declare-fun Generics.ComposedFunction$S@@18 () T@U)
(declare-fun Generics.ComposedFunction$T@@18 () T@U)
(declare-fun |second#0| () T@U)
(declare-fun Generics.ComposedFunction$RR@@18 () T@U)
(set-info :boogie-vc-id Impl$$Generics.ComposedFunction.__ctor)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |first#0| (Tclass.Generics.Function Generics.ComposedFunction$S@@18 Generics.ComposedFunction$T@@18)) ($IsAlloc refType |first#0| (Tclass.Generics.Function Generics.ComposedFunction$S@@18 Generics.ComposedFunction$T@@18) $Heap))) (and (and ($Is refType |second#0| (Tclass.Generics.Function Generics.ComposedFunction$T@@18 Generics.ComposedFunction$RR@@18)) ($IsAlloc refType |second#0| (Tclass.Generics.Function Generics.ComposedFunction$T@@18 Generics.ComposedFunction$RR@@18) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
