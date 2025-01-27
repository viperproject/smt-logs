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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize () T@U)
(declare-fun class._module.WorkerMethod? () T@U)
(declare-fun Tagclass._module.WorkerMethod? () T@U)
(declare-fun Tagclass._module.WorkerMethod () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ArcAtomicIsize () T@U)
(declare-fun tytagFamily$WorkerMethod () T@U)
(declare-fun field$content () T@U)
(declare-fun field$data () T@U)
(declare-fun field$next_stmt () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.i0 (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.i0#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.upCast (T@U) T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.__default.upCast#canCall| (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tclass._module.WorkerMethod? () T@U)
(declare-fun _module.Universe.i (T@U T@U) Bool)
(declare-fun |_module.Universe.i#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.i (T@U T@U) Bool)
(declare-fun |_module.Object.i#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.ArcAtomicIsize () T@U)
(declare-fun Tclass._module.WorkerMethod () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ArcAtomicIsize.i (T@U T@U) Bool)
(declare-fun |_module.ArcAtomicIsize.i#canCall| (T@U T@U) Bool)
(declare-fun _module.WorkerMethod.i (T@U T@U) Bool)
(declare-fun |_module.WorkerMethod.i#canCall| (T@U T@U) Bool)
(declare-fun _module.ArcAtomicIsize.data () T@U)
(declare-fun _module.WorkerMethod.next__stmt () T@U)
(declare-fun _module.WorkerMethod.counter () T@U)
(declare-fun _module.WorkerMethod.initial__value () T@U)
(declare-fun _module.WorkerMethod.final__value () T@U)
(declare-fun |_module.Object.i0#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.i0 (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? class._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize class._module.WorkerMethod? Tagclass._module.WorkerMethod? Tagclass._module.WorkerMethod tytagFamily$object tytagFamily$Universe tytagFamily$Object tytagFamily$ArcAtomicIsize tytagFamily$WorkerMethod field$content field$data field$next_stmt field$counter field$initial_value field$final_value)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.i0#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (|_module.__default.upCast#canCall| |o#0|))))
 :qid |_02DoubleReaddfy.28:12|
 :skolemid |496|
 :pattern ( (_module.__default.upCast |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
)) (= (_module.Universe.i0 $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= (_module.__default.upCast |o#0@@0|) this)) (not true))))
 :qid |_02DoubleReaddfy.28:12|
 :skolemid |495|
 :pattern ( (_module.__default.upCast |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))))
 :qid |_02DoubleReaddfy.27:19|
 :skolemid |497|
 :pattern ( (_module.Universe.i0 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.Object Tclass._module.ArcAtomicIsize?))
(assert (implements$_module.Object Tclass._module.WorkerMethod?))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.i#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.i0#canCall| $Heap@@0 this@@0) (=> (_module.Universe.i0 $Heap@@0 this@@0) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)) (|_module.Object.i#canCall| $Heap@@0 |o#0@@1|)))
 :qid |_02DoubleReaddfy.33:20|
 :skolemid |507|
 :pattern ( (_module.Object.i $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)))
)))) (= (_module.Universe.i $Heap@@0 this@@0)  (and (_module.Universe.i0 $Heap@@0 this@@0) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@2|))) (_module.Object.i $Heap@@0 |o#0@@2|))
 :qid |_02DoubleReaddfy.33:20|
 :skolemid |506|
 :pattern ( (_module.Object.i $Heap@@0 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))))
 :qid |_02DoubleReaddfy.32:19|
 :skolemid |508|
 :pattern ( (_module.Universe.i $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
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
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@4))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.WorkerMethod $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.WorkerMethod? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1087|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.WorkerMethod $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.WorkerMethod? $h@@5))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.ArcAtomicIsize)))) (= (_module.Object.i $Heap@@1 this@@1) (_module.ArcAtomicIsize.i $Heap@@1 this@@1)))
 :qid |_02DoubleReaddfy.95:19|
 :skolemid |709|
 :pattern ( (_module.Object.i $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.ArcAtomicIsize) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.i $Heap@@1 this@@1) (_module.ArcAtomicIsize.i $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.WorkerMethod.i#canCall| $Heap@@2 this@@2) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.WorkerMethod)))) (= (_module.Object.i $Heap@@2 this@@2) (_module.WorkerMethod.i $Heap@@2 this@@2)))
 :qid |_02DoubleReaddfy.95:19|
 :skolemid |835|
 :pattern ( (_module.Object.i $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.WorkerMethod) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.i $Heap@@2 this@@2) (_module.WorkerMethod.i $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (= (FDim _module.ArcAtomicIsize.data) 0))
(assert (= (FieldOfDecl class._module.ArcAtomicIsize? field$data) _module.ArcAtomicIsize.data))
(assert  (not ($IsGhostField _module.ArcAtomicIsize.data)))
(assert (= (FDim _module.WorkerMethod.next__stmt) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$next_stmt) _module.WorkerMethod.next__stmt))
(assert  (not ($IsGhostField _module.WorkerMethod.next__stmt)))
(assert (= (FDim _module.WorkerMethod.counter) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$counter) _module.WorkerMethod.counter))
(assert  (not ($IsGhostField _module.WorkerMethod.counter)))
(assert (= (FDim _module.WorkerMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$initial_value) _module.WorkerMethod.initial__value))
(assert  (not ($IsGhostField _module.WorkerMethod.initial__value)))
(assert (= (FDim _module.WorkerMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.WorkerMethod? field$final_value) _module.WorkerMethod.final__value))
(assert  (not ($IsGhostField _module.WorkerMethod.final__value)))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@4 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.ArcAtomicIsize? $h@@9)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.ArcAtomicIsize? $h@@9))
)))
(assert (forall (($o@@5 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.WorkerMethod? $h@@10)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.WorkerMethod? $h@@10))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.WorkerMethod.i#canCall| $Heap@@3 this@@3) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.WorkerMethod) ($IsAlloc refType this@@3 Tclass._module.WorkerMethod $Heap@@3)))))) (and (and (|_module.Object.i0#canCall| $Heap@@3 this@@3) (=> (_module.Object.i0 $Heap@@3 this@@3) (=> (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt)))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt))) (LitInt 4)) (=> (= (_module.Object.universe this@@3) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter)))) (|_module.ArcAtomicIsize.i#canCall| $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter)))))))) (= (_module.WorkerMethod.i $Heap@@3 this@@3)  (and (and (and (and (and (_module.Object.i0 $Heap@@3 this@@3) (and (<= (LitInt 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt))) (LitInt 4)))) (= (_module.Object.universe this@@3) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter))))) (_module.ArcAtomicIsize.i $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter)))) (=> (> (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt))) 1) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter))) _module.ArcAtomicIsize.data)))))) (=> (> (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.next__stmt))) 2) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.WorkerMethod.counter))) _module.ArcAtomicIsize.data))))))))))
 :qid |_02DoubleReaddfy.146:19|
 :skolemid |834|
 :pattern ( (_module.WorkerMethod.i $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@11 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ArcAtomicIsize?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) _module.ArcAtomicIsize.data)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) _module.ArcAtomicIsize.data)))
)))
(assert (forall (($h@@12 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) _module.WorkerMethod.next__stmt)) TInt $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) _module.WorkerMethod.next__stmt)))
)))
(assert (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.WorkerMethod.initial__value)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |826|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.WorkerMethod.initial__value)))
)))
(assert (forall (($h@@14 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.WorkerMethod.final__value)) TInt $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |828|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.WorkerMethod.final__value)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@10) Tclass._module.Universe $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |618|
 :pattern ( (_module.Object.universe $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@11) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (_module.Object.universe $o@@11))
))))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (= $o@@12 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1099|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))
)))
(assert (forall (($h@@16 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.WorkerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@13) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@13) _module.WorkerMethod.counter)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.ArcAtomicIsize?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsBox bx@@9 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.ArcAtomicIsize) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.ArcAtomicIsize)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsBox bx@@10 Tclass._module.ArcAtomicIsize))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.WorkerMethod?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.WorkerMethod?)))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsBox bx@@11 Tclass._module.WorkerMethod?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.WorkerMethod) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.WorkerMethod)))
 :qid |unknown.0:0|
 :skolemid |830|
 :pattern ( ($IsBox bx@@12 Tclass._module.WorkerMethod))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.ArcAtomicIsize)  (and ($Is refType |c#0@@7| Tclass._module.ArcAtomicIsize?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.ArcAtomicIsize))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.WorkerMethod)  (and ($Is refType |c#0@@8| Tclass._module.WorkerMethod?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.WorkerMethod))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.WorkerMethod?))
)))
(assert (forall (($h@@17 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.WorkerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) _module.WorkerMethod.counter)) Tclass._module.ArcAtomicIsize $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |824|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@14) _module.WorkerMethod.counter)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@3| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@3|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@3| Tclass._System.object))) (= (_module.__default.upCast |o#0@@3|) |o#0@@3|))
 :qid |_02DoubleReaddfy.16:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@3|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Object.i0#canCall| $Heap@@4 this@@4) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $Heap@@4)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@4)) _module.Universe.content)) ($Box refType this@@4)) (|_module.Universe.i0#canCall| $Heap@@4 (_module.Object.universe this@@4))) (= (_module.Object.i0 $Heap@@4 this@@4)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@4)) _module.Universe.content)) ($Box refType this@@4)) (_module.Universe.i0 $Heap@@4 (_module.Object.universe this@@4))))))
 :qid |_02DoubleReaddfy.73:19|
 :skolemid |623|
 :pattern ( (_module.Object.i0 $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($o@@15 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.ArcAtomicIsize? $heap) ($IsAlloc refType $o@@15 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.ArcAtomicIsize? $heap))
)))
(assert (forall (($o@@16 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass._module.WorkerMethod? $heap@@0) ($IsAlloc refType $o@@16 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.WorkerMethod? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@4| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@4|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@4| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@4|) Tclass._System.object))
 :qid |_02DoubleReaddfy.16:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@4|))
))))
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
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@13 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@14) ($IsAllocBox bx@@14 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|o#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@5|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@5| Tclass._System.object) ($IsAlloc refType |o#0@@5| Tclass._System.object $Heap@@5)))) ($IsGoodHeap $Heap@@5)) ($IsAlloc refType (_module.__default.upCast |o#0@@5|) Tclass._System.object $Heap@@5))
 :qid |_02DoubleReaddfy.16:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@5|) Tclass._System.object $Heap@@5))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@6| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| (Lit refType |o#0@@6|)) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@6| Tclass._System.object))) (= (_module.__default.upCast (Lit refType |o#0@@6|)) (Lit refType |o#0@@6|)))
 :qid |_02DoubleReaddfy.16:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@6|)))
))))
(assert (forall (($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.ArcAtomicIsize?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.ArcAtomicIsize.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |701|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.ArcAtomicIsize.data)))
)))
(assert (forall (($h@@19 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.WorkerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.WorkerMethod.next__stmt)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |821|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.WorkerMethod.next__stmt)))
)))
(assert (forall (($h@@20 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.WorkerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.WorkerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |825|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.WorkerMethod.initial__value)))
)))
(assert (forall (($h@@21 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.WorkerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) _module.WorkerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |827|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) _module.WorkerMethod.final__value)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Universe))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@22 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (or (= $o@@22 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@5) _module.Universe.content)) ($Box refType $o@@22)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@22) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@22) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.Universe.i0 $h0 this@@5) (_module.Universe.i0 $h1 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.i0 $h1 this@@5))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@23 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@23) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@23) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.i $h0@@0 this@@6) (_module.Universe.i $h1@@0 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.i $h1@@0 this@@6))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Object) ($IsAlloc refType this@@7 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@24 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@24) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@24) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |619|
)) (= (_module.Object.i0 $h0@@1 this@@7) (_module.Object.i0 $h1@@1 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |620|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.i0 $h1@@1 this@@7))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@25 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@25) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@25) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |664|
)) (= (_module.Object.i $h0@@2 this@@8) (_module.Object.i $h1@@2 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |665|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.i $h1@@2 this@@8))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@9 Tclass._module.ArcAtomicIsize $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@26 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@26) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@26) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |703|
)) (= (_module.ArcAtomicIsize.i $h0@@3 this@@9) (_module.ArcAtomicIsize.i $h1@@3 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |705|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.ArcAtomicIsize.i $h1@@3 this@@9))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.WorkerMethod) ($IsAlloc refType this@@10 Tclass._module.WorkerMethod $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@27 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@27) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@27) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |829|
)) (= (_module.WorkerMethod.i $h0@@4 this@@10) (_module.WorkerMethod.i $h1@@4 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |831|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.WorkerMethod.i $h1@@4 this@@10))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> ($Is refType $o@@28 Tclass._module.ArcAtomicIsize?) ($Is refType $o@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( ($Is refType $o@@28 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.ArcAtomicIsize?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1088|
 :pattern ( ($IsBox bx@@16 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall (($o@@29 T@U) ) (!  (=> ($Is refType $o@@29 Tclass._module.WorkerMethod?) ($Is refType $o@@29 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( ($Is refType $o@@29 Tclass._module.WorkerMethod?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.WorkerMethod?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( ($IsBox bx@@17 Tclass._module.WorkerMethod?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
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
(assert (forall (($o@@30 T@U) ) (! (= ($Is refType $o@@30 Tclass._module.Universe?)  (or (= $o@@30 null) (implements$_module.Universe (dtype $o@@30))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@30 Tclass._module.Universe?))
)))
(assert (forall (($o@@31 T@U) ) (! (= ($Is refType $o@@31 Tclass._module.Object?)  (or (= $o@@31 null) (implements$_module.Object (dtype $o@@31))))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($Is refType $o@@31 Tclass._module.Object?))
)))
(assert (forall (($h@@22 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@32 null)) (not true)) ($Is refType $o@@32 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) _module.Universe.content)) (TSet Tclass._module.Object) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) _module.Universe.content)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i#canCall| $Heap@@6 this@@11) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@11 Tclass._module.ArcAtomicIsize $Heap@@6)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.i0#canCall| $Heap@@6 this@@11)) (= (_module.ArcAtomicIsize.i $Heap@@6 this@@11)  (and true (_module.Object.i0 $Heap@@6 this@@11)))))
 :qid |_02DoubleReaddfy.105:19|
 :skolemid |708|
 :pattern ( (_module.ArcAtomicIsize.i $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert (forall (($h@@23 T@U) ($o@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@33 null)) (not true)) ($Is refType $o@@33 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@33) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@33) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@7 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |counter#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.WorkerMethod.__ctor)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null $Heap@@7 alloc |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@7) (=> (and (|_module.Universe.i#canCall| $Heap@@7 |universe#0|) (_module.Universe.i $Heap@@7 |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |counter#0| null)) (not true))) (=> (or (not (= |counter#0| null)) (not true)) (=> (= |universe#0| (_module.Object.universe |counter#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |counter#0| null)) (not true))) (=> (or (not (= |counter#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |counter#0|) Tclass._module.ArcAtomicIsize? $Heap@@7) (=> (and (and (|_module.ArcAtomicIsize.i#canCall| $Heap@@7 |counter#0|) (_module.ArcAtomicIsize.i $Heap@@7 |counter#0|)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@34) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@34)) (= $o@@34 |universe#0|)))
 :qid |_02DoubleReaddfy.162:3|
 :skolemid |933|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34))
)) ($HeapSucc $Heap@@7 $Heap@0)) (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 Tclass._module.WorkerMethod) ($IsAlloc refType this@0 Tclass._module.WorkerMethod $Heap@0)))) (and (and ($IsAllocBox ($Box refType this@0) Tclass._module.WorkerMethod? $Heap@0) (|_module.WorkerMethod.i#canCall| $Heap@0 this@0)) (and (_module.WorkerMethod.i $Heap@0 this@0) (= (ControlFlow 0 2) (- 0 1))))) (or (not (= |universe#0| null)) (not true)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@7))) (and (and ($Is refType |counter#0| Tclass._module.ArcAtomicIsize) ($IsAlloc refType |counter#0| Tclass._module.ArcAtomicIsize $Heap@@7)) (and (= 13 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct)))
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
