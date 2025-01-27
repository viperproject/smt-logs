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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
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
(assert (distinct alloc Tagclass._module.OwnedObject Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter)
)
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.AtomicCounter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1260|
)) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap $h0 this) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1262|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap $h1 this))
)))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.AtomicCounter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( ($Is refType $o@@0 Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h) ($IsAlloc refType |c#0| Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1448|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AtomicCounter? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.OwnedObject? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.OwnedObject? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.AtomicCounter? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.AtomicCounter? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Object)  (and ($Is refType |c#0@@2| Tclass._module.Object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@3| Tclass._module.OwnedObject?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@4| Tclass._module.AtomicCounter?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@4 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@5 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@0 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.AtomicCounter) ($IsAlloc refType this@@0 Tclass._module.AtomicCounter $prevHeap@@0)))))) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_08CounterNoTerminationdfy.290:22|
 :skolemid |1265|
 :pattern ( (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.OwnedObject?) ($Is refType $o@@6 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( ($Is refType $o@@6 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.AtomicCounter?) ($Is refType $o@@7 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@7 Tclass._module.AtomicCounter?))
)))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.AtomicCounter?) Tagclass._module.AtomicCounter?))
(assert (= (TagFamily Tclass._module.AtomicCounter?) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.AtomicCounter) Tagclass._module.AtomicCounter))
(assert (= (TagFamily Tclass._module.AtomicCounter) tytagFamily$AtomicCounter))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Object?)  (or (= $o@@8 null) (implements$_module.Object (dtype $o@@8))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@8 Tclass._module.Object?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.OwnedObject?)  (or (= $o@@9 null) (implements$_module.OwnedObject (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType $o@@9 Tclass._module.OwnedObject?))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id OverrideCheck$$_module.AtomicCounter.proveUnchangedNonvolatileUserFields)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@10 null)) (not true)) (=> (= $o@@10 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@10) $f@@0))))
 :qid |_08CounterNoTerminationdfy.219:65|
 :skolemid |1269|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) $f@@0))
)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (= $o@@11 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11) $f@@1))))
 :qid |_08CounterNoTerminationdfy.293:65|
 :skolemid |1270|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@1))
))) (=> (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (= $o@@12 this@@1) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@12) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@12) $f@@2))))
 :qid |_08CounterNoTerminationdfy.293:65|
 :skolemid |1270|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@12) $f@@2))
)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@13 T@U) ($f@@3 T@U) ) (! true
 :qid |_08CounterNoTerminationdfy.293:18|
 :skolemid |1271|
))) (=> (forall (($o@@14 T@U) ($f@@4 T@U) ) (! true
 :qid |_08CounterNoTerminationdfy.293:18|
 :skolemid |1271|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@15 T@U) ($f@@5 T@U) ) (! true
 :qid |_08CounterNoTerminationdfy.293:18|
 :skolemid |1272|
))) (=> (forall (($o@@16 T@U) ($f@@6 T@U) ) (! true
 :qid |_08CounterNoTerminationdfy.293:18|
 :skolemid |1272|
)) (=> (and (and (_module.AtomicCounter.unchangedNonvolatileUserFields $Heap@@0 current$Heap this@@1) (= (ControlFlow 0 2) (- 0 1))) (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $Heap@@0 current$Heap this@@1)) (or (_module.AtomicCounter.unchangedNonvolatileUserFields $Heap@@0 current$Heap this@@1) (U_2_bool (Lit boolType (bool_2_U true)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.AtomicCounter) ($IsAlloc refType this@@1 Tclass._module.AtomicCounter previous$Heap))) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 7) 2))) anon0_correct))))
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
