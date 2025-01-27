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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.Y.B () T@U)
(declare-fun Tagclass.X.A () T@U)
(declare-fun Tagclass.Y.B? () T@U)
(declare-fun Tagclass.X.K? () T@U)
(declare-fun Tagclass.X.K () T@U)
(declare-fun Tagclass.X.A? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$K () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Y.B () T@U)
(declare-fun Tclass.Y.B? () T@U)
(declare-fun Tclass.X.K () T@U)
(declare-fun Tclass.X.K? () T@U)
(declare-fun Tclass.X.A () T@U)
(declare-fun Tclass.X.A? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$Y.B (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$X.K (T@U) Bool)
(declare-fun implements$X.A (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.object? Tagclass._System.object Tagclass.Y.B Tagclass.X.A Tagclass.Y.B? Tagclass.X.K? Tagclass.X.K Tagclass.X.A? tytagFamily$object tytagFamily$B tytagFamily$A tytagFamily$K)
)
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |850|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Y.B $h@@0) ($IsAlloc refType |c#0@@0| Tclass.Y.B? $h@@0))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Y.B $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Y.B? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.X.K $h@@1) ($IsAlloc refType |c#0@@1| Tclass.X.K? $h@@1))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.X.K $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.X.K? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.X.A $h@@2) ($IsAlloc refType |c#0@@2| Tclass.X.A? $h@@2))
 :qid |unknown.0:0|
 :skolemid |998|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.X.A $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.X.A? $h@@2))
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
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |847|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.Y.B? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.Y.B? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.X.K? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.X.K? $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.X.A? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.X.A? $h@@6))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |525|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |849|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.Y.B)  (and ($Is refType |c#0@@4| Tclass.Y.B?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($Is refType |c#0@@4| Tclass.Y.B))
 :pattern ( ($Is refType |c#0@@4| Tclass.Y.B?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.X.K)  (and ($Is refType |c#0@@5| Tclass.X.K?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType |c#0@@5| Tclass.X.K))
 :pattern ( ($Is refType |c#0@@5| Tclass.X.K?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.X.A)  (and ($Is refType |c#0@@6| Tclass.X.A?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($Is refType |c#0@@6| Tclass.X.A))
 :pattern ( ($Is refType |c#0@@6| Tclass.X.A?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.X.A? $heap) ($IsAlloc refType $o@@3 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.X.A? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass.X.A? $heap@@0) ($IsAlloc refType $o@@4 Tclass.X.K? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.X.A? $heap@@0))
)))
(assert (forall (($o@@5 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.Y.B? $heap@@1) ($IsAlloc refType $o@@5 Tclass.X.A? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.Y.B? $heap@@1))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Unbox T@@0 ($Box T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |524|
 :pattern ( ($Box T@@0 x@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1011|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass.X.A?) ($Is refType $o@@8 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( ($Is refType $o@@8 Tclass.X.A?))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass.X.A?) ($Is refType $o@@9 Tclass.X.K?))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( ($Is refType $o@@9 Tclass.X.A?))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass.Y.B?) ($Is refType $o@@10 Tclass.X.A?))
 :qid |unknown.0:0|
 :skolemid |1009|
 :pattern ( ($Is refType $o@@10 Tclass.Y.B?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Y.B) Tagclass.Y.B))
(assert (= (TagFamily Tclass.Y.B) tytagFamily$B))
(assert (= (Tag Tclass.X.A) Tagclass.X.A))
(assert (= (TagFamily Tclass.X.A) tytagFamily$A))
(assert (= (Tag Tclass.Y.B?) Tagclass.Y.B?))
(assert (= (TagFamily Tclass.Y.B?) tytagFamily$B))
(assert (= (Tag Tclass.X.K?) Tagclass.X.K?))
(assert (= (TagFamily Tclass.X.K?) tytagFamily$K))
(assert (= (Tag Tclass.X.K) Tagclass.X.K))
(assert (= (TagFamily Tclass.X.K) tytagFamily$K))
(assert (= (Tag Tclass.X.A?) Tagclass.X.A?))
(assert (= (TagFamily Tclass.X.A?) tytagFamily$A))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass.Y.B?)  (or (= $o@@11 null) (implements$Y.B (dtype $o@@11))))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( ($Is refType $o@@11 Tclass.Y.B?))
)))
(assert (forall (($o@@12 T@U) ) (! (= ($Is refType $o@@12 Tclass.X.K?)  (or (= $o@@12 null) (implements$X.K (dtype $o@@12))))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($Is refType $o@@12 Tclass.X.K?))
)))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass.X.A?)  (or (= $o@@13 null) (implements$X.A (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($Is refType $o@@13 Tclass.X.A?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |b#0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Y.__default.Test)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) true)))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is refType |b#0| Tclass.Y.B) ($IsAlloc refType |b#0| Tclass.Y.B $Heap)) (=> |defass#a#0| (and ($Is refType |a#0| Tclass.X.A) ($IsAlloc refType |a#0| Tclass.X.A $Heap)))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
