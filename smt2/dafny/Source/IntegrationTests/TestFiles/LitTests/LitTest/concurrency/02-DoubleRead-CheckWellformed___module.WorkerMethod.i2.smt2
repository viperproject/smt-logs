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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize () T@U)
(declare-fun class._module.WorkerMethod? () T@U)
(declare-fun Tagclass._module.WorkerMethod? () T@U)
(declare-fun Tagclass._module.WorkerMethod () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ArcAtomicIsize () T@U)
(declare-fun tytagFamily$WorkerMethod () T@U)
(declare-fun field$data () T@U)
(declare-fun field$next_stmt () T@U)
(declare-fun field$counter () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tclass._module.WorkerMethod? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.WorkerMethod.i2 (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.WorkerMethod.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Tclass._module.WorkerMethod () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.WorkerMethod.counter () T@U)
(declare-fun |_module.ArcAtomicIsize.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.ArcAtomicIsize.i2 (T@U T@U T@U) Bool)
(declare-fun _module.WorkerMethod.next__stmt () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun Tclass._module.ArcAtomicIsize () T@U)
(declare-fun _module.ArcAtomicIsize.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName Tagclass._module.Object Tagclass._module.Object? class._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize class._module.WorkerMethod? Tagclass._module.WorkerMethod? Tagclass._module.WorkerMethod tytagFamily$Object tytagFamily$ArcAtomicIsize tytagFamily$WorkerMethod field$data field$next_stmt field$counter)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (implements$_module.Object Tclass._module.ArcAtomicIsize?))
(assert (implements$_module.Object Tclass._module.WorkerMethod?))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ArcAtomicIsize?)  (or (= $o null) (= (dtype $o) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($Is refType $o Tclass._module.ArcAtomicIsize?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.WorkerMethod?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.WorkerMethod?)))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($Is refType $o@@0 Tclass._module.WorkerMethod?))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.WorkerMethod.i2#canCall| $prevHeap $Heap this) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.WorkerMethod) ($IsAlloc refType this Tclass._module.WorkerMethod $prevHeap)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.WorkerMethod.counter))) (|_module.ArcAtomicIsize.i2#canCall| $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WorkerMethod.counter)))) (= (_module.WorkerMethod.i2 $prevHeap $Heap this)  (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.WorkerMethod.counter))) (_module.ArcAtomicIsize.i2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WorkerMethod.counter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.WorkerMethod.next__stmt))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WorkerMethod.next__stmt))))))))
 :qid |_02DoubleReaddfy.154:22|
 :skolemid |843|
 :pattern ( (_module.WorkerMethod.i2 $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1089|
 :pattern ( ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.WorkerMethod? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.WorkerMethod? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.ArcAtomicIsize $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.ArcAtomicIsize? $h@@2))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ArcAtomicIsize $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ArcAtomicIsize? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.WorkerMethod $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.WorkerMethod? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1087|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.WorkerMethod $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.WorkerMethod? $h@@3))
)))
(assert (= (FDim _module.ArcAtomicIsize.data) 0))
(assert (= (FieldOfDecl class._module.ArcAtomicIsize? field$data) _module.ArcAtomicIsize.data))
(assert  (not ($IsGhostField _module.ArcAtomicIsize.data)))
(assert (= (FDim _module.WorkerMethod.next__stmt) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$next_stmt) _module.WorkerMethod.next__stmt))
(assert  (not ($IsGhostField _module.WorkerMethod.next__stmt)))
(assert (= (FDim _module.WorkerMethod.counter) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$counter) _module.WorkerMethod.counter))
(assert  (not ($IsGhostField _module.WorkerMethod.counter)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@0 Tclass._module.ArcAtomicIsize $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |712|
)) (= (_module.ArcAtomicIsize.i2 $prevHeap@@0 $h0 this@@0) (_module.ArcAtomicIsize.i2 $prevHeap@@0 $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |713|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ArcAtomicIsize.i2 $prevHeap@@0 $h1 this@@0))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.WorkerMethod) ($IsAlloc refType this@@1 Tclass._module.WorkerMethod $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |839|
)) (= (_module.WorkerMethod.i2 $prevHeap@@1 $h0@@0 this@@1) (_module.WorkerMethod.i2 $prevHeap@@1 $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |840|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.WorkerMethod.i2 $prevHeap@@1 $h1@@0 this@@1))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.ArcAtomicIsize? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.ArcAtomicIsize? $h@@5))
)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.WorkerMethod? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.WorkerMethod? $h@@6))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@6 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f@@1))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@6) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1097|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@6 $f@@1))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.ArcAtomicIsize?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.ArcAtomicIsize.data)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.ArcAtomicIsize.data)))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.WorkerMethod.next__stmt)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.WorkerMethod.next__stmt)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@2 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i2#canCall| $prevHeap@@2 $Heap@@0 this@@2) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@2) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@2 $Heap@@0)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@2 Tclass._module.ArcAtomicIsize $prevHeap@@2)))))) (= (_module.ArcAtomicIsize.i2 $prevHeap@@2 $Heap@@0 this@@2)  (and true (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 this@@2) _module.ArcAtomicIsize.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.ArcAtomicIsize.data)))))))
 :qid |_02DoubleReaddfy.109:22|
 :skolemid |716|
 :pattern ( (_module.ArcAtomicIsize.i2 $prevHeap@@2 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.WorkerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.WorkerMethod.counter)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Object)  (and ($Is refType |c#0@@2| Tclass._module.Object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.ArcAtomicIsize)  (and ($Is refType |c#0@@3| Tclass._module.ArcAtomicIsize?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.ArcAtomicIsize))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.WorkerMethod)  (and ($Is refType |c#0@@4| Tclass._module.WorkerMethod?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.WorkerMethod))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.WorkerMethod?))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |824|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.WorkerMethod.counter)))
)))
(assert (forall (($o@@11 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@11 Tclass._module.ArcAtomicIsize? $heap) ($IsAlloc refType $o@@11 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.ArcAtomicIsize? $heap))
)))
(assert (forall (($o@@12 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.WorkerMethod? $heap@@0) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.WorkerMethod? $heap@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.ArcAtomicIsize?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.ArcAtomicIsize.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |701|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.ArcAtomicIsize.data)))
)))
(assert (forall (($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.WorkerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.WorkerMethod.next__stmt)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |821|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.WorkerMethod.next__stmt)))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> ($Is refType $o@@15 Tclass._module.ArcAtomicIsize?) ($Is refType $o@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( ($Is refType $o@@15 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> ($Is refType $o@@16 Tclass._module.WorkerMethod?) ($Is refType $o@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($Is refType $o@@16 Tclass._module.WorkerMethod?))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.ArcAtomicIsize?) Tagclass._module.ArcAtomicIsize?))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize?) tytagFamily$ArcAtomicIsize))
(assert (= (Tag Tclass._module.ArcAtomicIsize) Tagclass._module.ArcAtomicIsize))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize) tytagFamily$ArcAtomicIsize))
(assert (= (Tag Tclass._module.WorkerMethod?) Tagclass._module.WorkerMethod?))
(assert (= (TagFamily Tclass._module.WorkerMethod?) tytagFamily$WorkerMethod))
(assert (= (Tag Tclass._module.WorkerMethod) Tagclass._module.WorkerMethod))
(assert (= (TagFamily Tclass._module.WorkerMethod) tytagFamily$WorkerMethod))
(assert (forall (($o@@17 T@U) ) (! (= ($Is refType $o@@17 Tclass._module.Object?)  (or (= $o@@17 null) (implements$_module.Object (dtype $o@@17))))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($Is refType $o@@17 Tclass._module.Object?))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@3 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.WorkerMethod.i2)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon7_correct  (=> (= (_module.WorkerMethod.i2 $Heap@@1 current$Heap this@@3)  (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter))) (_module.ArcAtomicIsize.i2 $Heap@@1 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.next__stmt))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.next__stmt)))))) (=> (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter))) (|_module.ArcAtomicIsize.i2#canCall| $Heap@@1 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)))) ($Is boolType (bool_2_U (_module.WorkerMethod.i2 $Heap@@1 current$Heap this@@3)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#3@1|)))))))))))
(let ((anon11_Else_correct  (=> (not (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter))) (_module.ArcAtomicIsize.i2 $Heap@@1 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter))))) (=> (and (= |b$reqreads#3@1| true) (= (ControlFlow 0 9) 3)) anon7_correct))))
(let ((anon11_Then_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter))) (_module.ArcAtomicIsize.i2 $Heap@@1 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($IsAlloc refType this@@3 Tclass._module.WorkerMethod $Heap@@1)) (=> ($IsAlloc refType this@@3 Tclass._module.WorkerMethod $Heap@@1) (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 _module.WorkerMethod.next__stmt))) (=> (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= (ControlFlow 0 7) 3)) anon7_correct)))))))
(let ((anon10_Else_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter)))) (not true)) (=> (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 13) 7) anon11_Then_correct) (=> (= (ControlFlow 0 13) 9) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.WorkerMethod.counter))) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 _module.WorkerMethod.counter)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter) Tclass._module.ArcAtomicIsize? current$Heap) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize $Heap@@1)) (=> ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize $Heap@@1) (=> (and (and (= |b$reqreads#2@0| (forall (($o@@18 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@18 $f@@2)))
 :qid |_02DoubleReaddfy.156:16|
 :skolemid |845|
))) (|_module.ArcAtomicIsize.i2#canCall| $Heap@@1 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@3) _module.WorkerMethod.counter)))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|))) (and (=> (= (ControlFlow 0 10) 7) anon11_Then_correct) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))))))))
(let ((anon9_Else_correct  (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@3 _module.WorkerMethod.counter))) (and (=> (= (ControlFlow 0 14) (- 0 15)) ($IsAlloc refType this@@3 Tclass._module.WorkerMethod $Heap@@1)) (=> ($IsAlloc refType this@@3 Tclass._module.WorkerMethod $Heap@@1) (and (=> (= (ControlFlow 0 14) 10) anon10_Then_correct) (=> (= (ControlFlow 0 14) 13) anon10_Else_correct)))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.WorkerMethod) ($IsAlloc refType this@@3 Tclass._module.WorkerMethod previous$Heap))) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@1) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 17) 16))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
