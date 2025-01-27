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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.NonOwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.NonOwnedObject? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$NonOwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun field$content () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.NonOwnedObject (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.NonOwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.NonOwnedObject () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#11| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._module.Universe Tagclass._module.NonOwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.Thread Tagclass._module.NonOwnedObject? Tagclass._module.Thread? tytagFamily$Universe tytagFamily$NonOwnedObject tytagFamily$Object tytagFamily$Thread field$content)
)
(assert (= (FDim alloc) 0))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (= (_module.Universe.globalBaseInv $Heap this) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this) (or (not (= |o#0| this)) (not true))))
 :qid |_08CounterNoTerminationdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_08CounterNoTerminationdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.NonOwnedObject Tclass._module.Thread?))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@0) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@0|)))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@0)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@0 |o#0@@1|))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_08CounterNoTerminationdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.NonOwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($IsAllocBox bx Tclass._module.NonOwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.NonOwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Thread? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Thread? $h@@4))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@1 this@@1) (_module.Thread.localInv $Heap@@1 this@@1)))
 :qid |_08CounterNoTerminationdfy.118:19|
 :skolemid |793|
 :pattern ( (_module.Object.localInv $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.Thread) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.localInv $Heap@@1 this@@1) (_module.Thread.localInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@2 this@@2) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@2 this@@2) (_module.Thread.inv $Heap@@2 this@@2)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |801|
 :pattern ( (_module.Object.inv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.Thread) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.inv $Heap@@2 this@@2) (_module.Thread.inv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap $h0 this@@3) (_module.Universe.globalInv2 $prevHeap $h1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.globalInv2 $prevHeap $h1 this@@3))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@1) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Object.localInv2 $prevHeap@@0 $h0@@0 this@@4) (_module.Object.localInv2 $prevHeap@@0 $h1@@0 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Object.localInv2 $prevHeap@@0 $h1@@0 this@@4))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Object) ($IsAlloc refType this@@5 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |736|
)) (= (_module.Object.inv2 $prevHeap@@1 $h0@@1 this@@5) (_module.Object.inv2 $prevHeap@@1 $h1@@1 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |737|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.inv2 $prevHeap@@1 $h1@@1 this@@5))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Thread) ($IsAlloc refType this@@6 Tclass._module.Thread $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |808|
)) (= (_module.Thread.localInv2 $prevHeap@@2 $h0@@2 this@@6) (_module.Thread.localInv2 $prevHeap@@2 $h1@@2 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |809|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Thread.localInv2 $prevHeap@@2 $h1@@2 this@@6))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Thread) ($IsAlloc refType this@@7 Tclass._module.Thread $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |815|
)) (= (_module.Thread.inv2 $prevHeap@@3 $h0@@3 this@@7) (_module.Thread.inv2 $prevHeap@@3 $h1@@3 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Thread.inv2 $prevHeap@@3 $h1@@3 this@@7))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Universe? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Universe? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@6))
)))
(assert (forall (($o@@7 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.NonOwnedObject? $h@@7)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.NonOwnedObject? $h@@7))
)))
(assert (forall (($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Thread? $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Thread? $h@@8))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@9) Tclass._module.Universe $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@10) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@11 T@U) ($f@@4 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#11| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@4))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) (= $o@@11 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2276|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#11| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@4 $Heap@@3 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@4 $Heap@@3 this@@8) (_module.Thread.localInv2 $prevHeap@@4 $Heap@@3 this@@8)))
 :qid |_08CounterNoTerminationdfy.119:22|
 :skolemid |813|
 :pattern ( (_module.Object.localInv2 $prevHeap@@4 $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.Thread) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.localInv2 $prevHeap@@4 $Heap@@3 this@@8) (_module.Thread.localInv2 $prevHeap@@4 $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@5 $Heap@@4 this@@9) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@5 $Heap@@4 this@@9) (_module.Thread.inv2 $prevHeap@@5 $Heap@@4 this@@9)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |820|
 :pattern ( (_module.Object.inv2 $prevHeap@@5 $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.Thread) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.inv2 $prevHeap@@5 $Heap@@4 this@@9) (_module.Thread.inv2 $prevHeap@@5 $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.NonOwnedObject) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.NonOwnedObject)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@4 Tclass._module.NonOwnedObject))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsBox bx@@8 Tclass._module.Thread))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.NonOwnedObject?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.NonOwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( ($IsBox bx@@9 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.NonOwnedObject)  (and ($Is refType |c#0@@5| Tclass._module.NonOwnedObject?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.NonOwnedObject))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.NonOwnedObject?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Thread)  (and ($Is refType |c#0@@6| Tclass._module.Thread?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread?))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@6 $Heap@@5 this@@10) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@6 $Heap@@5)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Universe) ($IsAlloc refType this@@10 Tclass._module.Universe $prevHeap@@6)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.Universe.content)) ($Box refType |o#0@@2|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv2#canCall| $prevHeap@@6 $Heap@@5 |o#0@@2|))))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@6 $Heap@@5 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.Universe.content)) ($Box refType |o#0@@2|)))
))) (= (_module.Universe.globalInv2 $prevHeap@@6 $Heap@@5 this@@10)  (and true (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) _module.Universe.content)) ($Box refType |o#0@@3|)) (_module.Object.inv2 $prevHeap@@6 $Heap@@5 |o#0@@3|)))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@6 $Heap@@5 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@10) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_08CounterNoTerminationdfy.43:22|
 :skolemid |521|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@6 $Heap@@5 this@@10) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@6 this@@11) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Object) ($IsAlloc refType this@@11 Tclass._module.Object $Heap@@6)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@11)) _module.Universe.content)) ($Box refType this@@11)) (|_module.Universe.globalBaseInv#canCall| $Heap@@6 (_module.Object.universe this@@11))) (= (_module.Object.baseInv $Heap@@6 this@@11)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@11)) _module.Universe.content)) ($Box refType this@@11)) (_module.Universe.globalBaseInv $Heap@@6 (_module.Object.universe this@@11))))))
 :qid |_08CounterNoTerminationdfy.90:19|
 :skolemid |680|
 :pattern ( (_module.Object.baseInv $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@12 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@13 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap@@0) ($IsAlloc refType $o@@13 Tclass._module.NonOwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap@@0))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@7 this@@12) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $Heap@@7)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@7 this@@12) (=> (_module.Object.baseInv $Heap@@7 this@@12) (|_module.Universe.globalInv#canCall| $Heap@@7 (_module.Object.universe this@@12)))) (= (_module.Object.objectGlobalInv $Heap@@7 this@@12)  (and (_module.Object.baseInv $Heap@@7 this@@12) (_module.Universe.globalInv $Heap@@7 (_module.Object.universe this@@12))))))
 :qid |_08CounterNoTerminationdfy.112:19|
 :skolemid |714|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@7 this@@12) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@8 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@7 $Heap@@8 this@@13) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@8)) ($HeapSucc $prevHeap@@7 $Heap@@8)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Thread) ($IsAlloc refType this@@13 Tclass._module.Thread $prevHeap@@7)))))) (= (_module.Thread.localInv2 $prevHeap@@7 $Heap@@8 this@@13) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_08CounterNoTerminationdfy.141:22|
 :skolemid |812|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@7 $Heap@@8 this@@13) ($IsGoodHeap $Heap@@8))
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@9 this@@14) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Thread) ($IsAlloc refType this@@14 Tclass._module.Thread $Heap@@9)))))) (=> (_module.Thread.inv $Heap@@9 this@@14) (_module.Thread.localInv $Heap@@9 this@@14)))
 :qid |_08CounterNoTerminationdfy.137:19|
 :skolemid |798|
 :pattern ( (_module.Thread.inv $Heap@@9 this@@14))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@10 this@@15) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $Heap@@10)))))) (=> (_module.Object.inv $Heap@@10 this@@15) (_module.Object.localInv $Heap@@10 this@@15)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |734|
 :pattern ( (_module.Object.inv $Heap@@10 this@@15))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@14 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (or (= $o@@14 this@@16) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@16) _module.Universe.content)) ($Box refType $o@@14)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@14) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@14) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@4 this@@16) (_module.Universe.globalBaseInv $h1@@4 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalBaseInv $h1@@4 this@@16))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Universe) ($IsAlloc refType this@@17 Tclass._module.Universe $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@15 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@15) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@15) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@5 this@@17) (_module.Universe.globalInv $h1@@5 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Universe.globalInv $h1@@5 this@@17))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@16 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@16) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@16) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |676|
)) (= (_module.Object.baseInv $h0@@6 this@@18) (_module.Object.baseInv $h1@@6 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |677|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.baseInv $h1@@6 this@@18))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Object) ($IsAlloc refType this@@19 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@17 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@17) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@17) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |710|
)) (= (_module.Object.objectGlobalInv $h0@@7 this@@19) (_module.Object.objectGlobalInv $h1@@7 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |711|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.objectGlobalInv $h1@@7 this@@19))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@18 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@18) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@18) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |724|
)) (= (_module.Object.localInv $h0@@8 this@@20) (_module.Object.localInv $h1@@8 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |725|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.localInv $h1@@8 this@@20))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Object) ($IsAlloc refType this@@21 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@19 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@19) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@19) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |732|
)) (= (_module.Object.inv $h0@@9 this@@21) (_module.Object.inv $h1@@9 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.inv $h1@@9 this@@21))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@20 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@20) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@20) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |788|
)) (= (_module.Thread.localInv $h0@@10 this@@22) (_module.Thread.localInv $h1@@10 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |789|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.localInv $h1@@10 this@@22))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@21 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@21) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@21) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |796|
)) (= (_module.Thread.inv $h0@@11 this@@23) (_module.Thread.inv $h1@@11 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |797|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.inv $h1@@11 this@@23))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.NonOwnedObject?) ($Is refType $o@@22 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( ($Is refType $o@@22 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.NonOwnedObject?) ($IsBox bx@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($IsBox bx@@13 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@23 T@U) ) (!  (=> ($Is refType $o@@23 Tclass._module.Thread?) ($Is refType $o@@23 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o@@23 Tclass._module.Thread?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) ($IsBox bx@@14 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.NonOwnedObject) Tagclass._module.NonOwnedObject))
(assert (= (TagFamily Tclass._module.NonOwnedObject) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.NonOwnedObject?) Tagclass._module.NonOwnedObject?))
(assert (= (TagFamily Tclass._module.NonOwnedObject?) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (forall (($o@@24 T@U) ) (! (= ($Is refType $o@@24 Tclass._module.Universe?)  (or (= $o@@24 null) (implements$_module.Universe (dtype $o@@24))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@24 Tclass._module.Universe?))
)))
(assert (forall (($o@@25 T@U) ) (! (= ($Is refType $o@@25 Tclass._module.Object?)  (or (= $o@@25 null) (implements$_module.Object (dtype $o@@25))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@25 Tclass._module.Object?))
)))
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass._module.NonOwnedObject?)  (or (= $o@@26 null) (implements$_module.NonOwnedObject (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( ($Is refType $o@@26 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($h@@10 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@27) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@27) _module.Universe.content)) (TSet Tclass._module.Object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@27) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@11 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@8 $Heap@@11 this@@24) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@11)) ($HeapSucc $prevHeap@@8 $Heap@@11)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Thread) ($IsAlloc refType this@@24 Tclass._module.Thread $prevHeap@@8)))))) (=> (_module.Thread.inv2 $prevHeap@@8 $Heap@@11 this@@24) (_module.Thread.localInv2 $prevHeap@@8 $Heap@@11 this@@24)))
 :qid |_08CounterNoTerminationdfy.144:22|
 :skolemid |817|
 :pattern ( (_module.Thread.inv2 $prevHeap@@8 $Heap@@11 this@@24))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@12 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@9 $Heap@@12 this@@25) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@9) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@9 $Heap@@12)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Object) ($IsAlloc refType this@@25 Tclass._module.Object $prevHeap@@9)))))) (=> (_module.Object.inv2 $prevHeap@@9 $Heap@@12 this@@25) (_module.Object.localInv2 $prevHeap@@9 $Heap@@12 this@@25)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |738|
 :pattern ( (_module.Object.inv2 $prevHeap@@9 $Heap@@12 this@@25))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@13 this@@26) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Thread) ($IsAlloc refType this@@26 Tclass._module.Thread $Heap@@13)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@13 this@@26)) (= (_module.Thread.localInv $Heap@@13 this@@26)  (and true (_module.Object.baseInv $Heap@@13 this@@26)))))
 :qid |_08CounterNoTerminationdfy.134:19|
 :skolemid |792|
 :pattern ( (_module.Thread.localInv $Heap@@13 this@@26) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@14 this@@27) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Thread) ($IsAlloc refType this@@27 Tclass._module.Thread $Heap@@14)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@14 this@@27)) (= (_module.Thread.inv $Heap@@14 this@@27)  (and true (_module.Thread.localInv $Heap@@14 this@@27)))))
 :qid |_08CounterNoTerminationdfy.137:19|
 :skolemid |800|
 :pattern ( (_module.Thread.inv $Heap@@14 this@@27) ($IsGoodHeap $Heap@@14))
))))
(assert (forall (($h@@11 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@28) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@28) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@15 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@10 $Heap@@15 this@@28) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@10) ($IsGoodHeap $Heap@@15)) ($HeapSucc $prevHeap@@10 $Heap@@15)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Thread) ($IsAlloc refType this@@28 Tclass._module.Thread $prevHeap@@10)))))) (and (|_module.Thread.localInv2#canCall| $prevHeap@@10 $Heap@@15 this@@28) (= (_module.Thread.inv2 $prevHeap@@10 $Heap@@15 this@@28) (_module.Thread.localInv2 $prevHeap@@10 $Heap@@15 this@@28))))
 :qid |_08CounterNoTerminationdfy.144:22|
 :skolemid |819|
 :pattern ( (_module.Thread.inv2 $prevHeap@@10 $Heap@@15 this@@28) ($IsGoodHeap $Heap@@15))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@16 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Thread.__ctor)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#11| null $Heap@@16 alloc |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@16) (=> (and (|_module.Universe.globalInv#canCall| $Heap@@16 |universe#0|) (_module.Universe.globalInv $Heap@@16 |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |running#0| null)) (not true))) (=> (or (not (= |running#0| null)) (not true)) (=> (= (_module.Object.universe |running#0|) |universe#0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |running#0| null)) (not true))) (=> (or (not (= |running#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |running#0|) Tclass._module.Thread? $Heap@@16) (=> (and (|_module.Thread.inv#canCall| $Heap@@16 |running#0|) (_module.Thread.inv $Heap@@16 |running#0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@29) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@29)) (= $o@@29 |universe#0|)))
 :qid |_08CounterNoTerminationdfy.151:3|
 :skolemid |921|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29))
)) ($HeapSucc $Heap@@16 $Heap@0))) (=> (and (and (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 Tclass._module.Thread) ($IsAlloc refType this@0 Tclass._module.Thread $Heap@0))) ($IsAllocBox ($Box refType this@0) Tclass._module.Object? $Heap@0)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@0 this@0) (_module.Object.objectGlobalInv $Heap@0 this@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@16))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@16) ($IsHeapAnchor $Heap@@16)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@16))) (and (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@16)) (and (= 15 $FunctionContextHeight) (= (ControlFlow 0 7) 2)))) anon0_correct)))
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
