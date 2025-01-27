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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun field$content () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$owner () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.OwnedObject? tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object field$content field$nonvolatileVersion field$owner)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1025|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1026|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@0))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1035|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1036|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |960|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
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
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@0 this@@2) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@0 this@@2) (_module.OwnedObject.localInv $Heap@@0 this@@2)))
 :qid |_08CounterNoTerminationdfy.118:19|
 :skolemid |969|
 :pattern ( (_module.Object.localInv $Heap@@0 this@@2) ($Is refType this@@2 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@0))
 :pattern ( (_module.Object.localInv $Heap@@0 this@@2) (_module.OwnedObject.localInv $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Object) ($IsAlloc refType this@@3 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Object.localInv2 $prevHeap@@1 $h0@@1 this@@3) (_module.Object.localInv2 $prevHeap@@1 $h1@@1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.localInv2 $prevHeap@@1 $h1@@1 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.OwnedObject) ($IsAlloc refType this@@4 Tclass._module.OwnedObject $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |987|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@2 $h0@@2 this@@4) (_module.OwnedObject.localInv2 $prevHeap@@2 $h1@@2 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |988|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.OwnedObject.localInv2 $prevHeap@@2 $h1@@2 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.OwnedObject) ($IsAlloc refType this@@5 Tclass._module.OwnedObject $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1002|
)) (= (_module.OwnedObject.inv2 $prevHeap@@3 $h0@@3 this@@5) (_module.OwnedObject.inv2 $prevHeap@@3 $h1@@3 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1003|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedObject.inv2 $prevHeap@@3 $h1@@3 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.OwnedObject) ($IsAlloc refType this@@6 Tclass._module.OwnedObject $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@5 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@5) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1049|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@4 $h0@@4 this@@6) (_module.OwnedObject.localUserInv2 $prevHeap@@4 $h1@@4 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1050|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.OwnedObject.localUserInv2 $prevHeap@@4 $h1@@4 this@@6))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.OwnedObject) ($IsAlloc refType this@@7 Tclass._module.OwnedObject $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@6 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@6) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@6) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1057|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@5 $h0@@5 this@@7) (_module.OwnedObject.userInv2 $prevHeap@@5 $h1@@5 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1058|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.OwnedObject.userInv2 $prevHeap@@5 $h1@@5 this@@7))
)))
(assert (forall (($o@@7 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Universe? $h@@4)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Universe? $h@@4))
)))
(assert (forall (($o@@8 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@5)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@5))
)))
(assert (forall (($o@@9 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@6)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.OwnedObject? $h@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@1 this@@8) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.OwnedObject) ($IsAlloc refType this@@8 Tclass._module.OwnedObject $Heap@@1)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@1 this@@8) (=> (_module.Object.baseInv $Heap@@1 this@@8) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.OwnedObject.owner))) (_module.Object.universe this@@8)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@8)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@1 this@@8) (=> (_module.OwnedObject.baseUserInv $Heap@@1 this@@8) (|_module.OwnedObject.localUserInv#canCall| $Heap@@1 this@@8))))))) (= (_module.OwnedObject.localInv $Heap@@1 this@@8)  (and (and (and (and (_module.Object.baseInv $Heap@@1 this@@8) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.OwnedObject.owner))) (_module.Object.universe this@@8))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@8)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@1 this@@8)) (_module.OwnedObject.localUserInv $Heap@@1 this@@8)))))
 :qid |_08CounterNoTerminationdfy.169:19|
 :skolemid |968|
 :pattern ( (_module.OwnedObject.localInv $Heap@@1 this@@8) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@10 T@U) ($f@@6 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f@@6))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@10) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2275|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@7 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@11) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@11) Tclass._module.Universe $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@11) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@12) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@12))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@2 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@6 $Heap@@2 this@@9) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@6 $Heap@@2 this@@9) (_module.OwnedObject.localInv2 $prevHeap@@6 $Heap@@2 this@@9)))
 :qid |_08CounterNoTerminationdfy.119:22|
 :skolemid |994|
 :pattern ( (_module.Object.localInv2 $prevHeap@@6 $Heap@@2 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.localInv2 $prevHeap@@6 $Heap@@2 this@@9) (_module.OwnedObject.localInv2 $prevHeap@@6 $Heap@@2 this@@9) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@3 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@7 $Heap@@3 this@@10) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@3)) ($HeapSucc $prevHeap@@7 $Heap@@3)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedObject) ($IsAlloc refType this@@10 Tclass._module.OwnedObject $prevHeap@@7)))))) (and (and (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@7 $Heap@@3 this@@10) (=> (_module.OwnedObject.localUserInv2 $prevHeap@@7 $Heap@@3 this@@10) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@10) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@7 $Heap@@3 this@@10)))) (= (_module.OwnedObject.localInv2 $prevHeap@@7 $Heap@@3 this@@10)  (and (and (_module.OwnedObject.localUserInv2 $prevHeap@@7 $Heap@@3 this@@10) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@10) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@7 $Heap@@3 this@@10) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 (_module.Object.universe this@@10)) _module.Universe.content)) ($Box refType |o#0@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 |o#0@@0|) _module.OwnedObject.owner)) this@@10))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 |o#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0@@0|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_08CounterNoTerminationdfy.187:18|
 :skolemid |991|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |o#0@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 |o#0@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 |o#0@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 (_module.Object.universe this@@10)) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@10) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_08CounterNoTerminationdfy.180:22|
 :skolemid |993|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@7 $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@4 this@@11) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Object) ($IsAlloc refType this@@11 Tclass._module.Object $Heap@@4)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@11)) _module.Universe.content)) ($Box refType this@@11)) (|_module.Universe.globalBaseInv#canCall| $Heap@@4 (_module.Object.universe this@@11))) (= (_module.Object.baseInv $Heap@@4 this@@11)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.Object.universe this@@11)) _module.Universe.content)) ($Box refType this@@11)) (_module.Universe.globalBaseInv $Heap@@4 (_module.Object.universe this@@11))))))
 :qid |_08CounterNoTerminationdfy.90:19|
 :skolemid |680|
 :pattern ( (_module.Object.baseInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert (forall (($o@@13 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@13 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $heap))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@8 $Heap@@5 this@@12) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@8 $Heap@@5)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.OwnedObject) ($IsAlloc refType this@@12 Tclass._module.OwnedObject $prevHeap@@8)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@12) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@8 $Heap@@5 this@@12)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@8 $Heap@@5 this@@12)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@12) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@5 this@@12)))))
 :qid |_08CounterNoTerminationdfy.211:22|
 :skolemid |1029|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@8 $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@8 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@14) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@14) _module.OwnedObject.nonvolatileVersion)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |961|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@14) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@15 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (or (= $o@@15 this@@13) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 this@@13) _module.Universe.content)) ($Box refType $o@@15)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@15) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@15) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@6 this@@13) (_module.Universe.globalBaseInv $h1@@6 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.globalBaseInv $h1@@6 this@@13))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@6 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@9 $Heap@@6 this@@14) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@9) ($IsGoodHeap $Heap@@6)) ($HeapSucc $prevHeap@@9 $Heap@@6)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.OwnedObject) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $prevHeap@@9)))))) (and (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@9 $Heap@@6 this@@14) (=> (_module.OwnedObject.localInv2 $prevHeap@@9 $Heap@@6 this@@14) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap@@9 $Heap@@6 this@@14) (=> (_module.OwnedObject.userInv2 $prevHeap@@9 $Heap@@6 this@@14) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $prevHeap@@9 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap@@9 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner))) (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@9) (|_module.Object.localInv2#canCall| $prevHeap@@9 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner)))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap@@9 $Heap@@6 this@@14)  (and (and (_module.OwnedObject.localInv2 $prevHeap@@9 $Heap@@6 this@@14) (_module.OwnedObject.userInv2 $prevHeap@@9 $Heap@@6 this@@14)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@9 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@14) _module.OwnedObject.owner)))) (_module.Object.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner)))) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@9) (_module.Object.localInv2 $prevHeap@@9 $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@14) _module.OwnedObject.owner)))))))))))
 :qid |_08CounterNoTerminationdfy.195:22|
 :skolemid |1006|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@9 $Heap@@6 this@@14) ($IsGoodHeap $Heap@@6))
))))
(assert (forall (($h@@9 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@16) _module.OwnedObject.owner)) Tclass._module.Object $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |963|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@16) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@17 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@17) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@17) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |676|
)) (= (_module.Object.baseInv $h0@@7 this@@15) (_module.Object.baseInv $h1@@7 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |677|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.baseInv $h1@@7 this@@15))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@18 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@18) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@18) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |724|
)) (= (_module.Object.localInv $h0@@8 this@@16) (_module.Object.localInv $h1@@8 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |725|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.localInv $h1@@8 this@@16))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.OwnedObject) ($IsAlloc refType this@@17 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@19 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@19) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@19) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |964|
)) (= (_module.OwnedObject.localInv $h0@@9 this@@17) (_module.OwnedObject.localInv $h1@@9 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |965|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.localInv $h1@@9 this@@17))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.OwnedObject) ($IsAlloc refType this@@18 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@20 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@20) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@20) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1041|
)) (= (_module.OwnedObject.baseUserInv $h0@@10 this@@18) (_module.OwnedObject.baseUserInv $h1@@10 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1042|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.baseUserInv $h1@@10 this@@18))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@21 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@21) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@21) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1045|
)) (= (_module.OwnedObject.localUserInv $h0@@11 this@@19) (_module.OwnedObject.localUserInv $h1@@11 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1046|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.localUserInv $h1@@11 this@@19))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall (($o@@22 T@U) ) (!  (=> ($Is refType $o@@22 Tclass._module.OwnedObject?) ($Is refType $o@@22 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( ($Is refType $o@@22 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject?) ($IsBox bx@@12 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@10 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@23 null)) (not true)) ($Is refType $o@@23 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@23) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |962|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@23) _module.OwnedObject.owner)))
)))
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
(assert (forall (($o@@26 T@U) ) (! (= ($Is refType $o@@26 Tclass._module.OwnedObject?)  (or (= $o@@26 null) (implements$_module.OwnedObject (dtype $o@@26))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType $o@@26 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@11 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@27) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@27) _module.Universe.content)) (TSet Tclass._module.Object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@27) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@7 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@10 $Heap@@7 this@@20) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@10) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@10 $Heap@@7)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $prevHeap@@10)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@10 $Heap@@7 this@@20) (_module.OwnedObject.localUserInv2 $prevHeap@@10 $Heap@@7 this@@20)))
 :qid |_08CounterNoTerminationdfy.225:22|
 :skolemid |1059|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@10 $Heap@@7 this@@20))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@8 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@11 $Heap@@8 this@@21) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@8)) ($HeapSucc $prevHeap@@11 $Heap@@8)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $prevHeap@@11)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@11 $Heap@@8 this@@21) (_module.OwnedObject.localInv2 $prevHeap@@11 $Heap@@8 this@@21)))
 :qid |_08CounterNoTerminationdfy.195:22|
 :skolemid |1004|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@11 $Heap@@8 this@@21))
))))
(assert (forall (($h@@12 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@28) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@28) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun previous$Heap () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@22 () T@U)
(declare-fun $Heap@@9 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@2| () Bool)
(declare-fun |b$reqreads#5@2| () Bool)
(declare-fun |b$reqreads#6@2| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |currOwner#Z#0@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.OwnedObject.inv2)
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
 (=> (= (ControlFlow 0 0) 51) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 8) (- 0 12)) (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (_module.OwnedObject.localUserInv2 previous$Heap current$Heap this@@22))))) (=> (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (_module.OwnedObject.localUserInv2 previous$Heap current$Heap this@@22)))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.unchangedNonvolatileFields previous$Heap current$Heap this@@22) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))))))))) (=> (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.unchangedNonvolatileFields previous$Heap current$Heap this@@22) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))))))))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.unchangedNonvolatileFields previous$Heap current$Heap this@@22) (_module.OwnedObject.unchangedNonvolatileUserFields previous$Heap current$Heap this@@22)))))))) (=> (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.unchangedNonvolatileFields previous$Heap current$Heap this@@22) (_module.OwnedObject.unchangedNonvolatileUserFields previous$Heap current$Heap this@@22))))))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe this@@22)) _module.Universe.content)) ($Box refType |o#0@@1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@1|) _module.OwnedObject.owner)) this@@22))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#0@@1|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_08CounterNoTerminationdfy.187:18|
 :skolemid |1008|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#0@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe this@@22)) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))) (=> (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe this@@22)) _module.Universe.content)) ($Box refType |o#0@@2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@2|) _module.OwnedObject.owner)) this@@22))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_08CounterNoTerminationdfy.187:18|
 :skolemid |1008|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |o#0@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap (_module.Object.universe this@@22)) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))))) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (_module.OwnedObject.inv2 previous$Heap current$Heap this@@22) (=> (|_module.OwnedObject.localInv2#canCall| previous$Heap current$Heap this@@22) (or (_module.OwnedObject.localInv2 previous$Heap current$Heap this@@22) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@22) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.nonvolatileVersion)))))))))))))))))))))
(let ((anon17_correct  (=> (= (_module.OwnedObject.inv2 $Heap@@9 current$Heap this@@22)  (and (and (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) (_module.OwnedObject.userInv2 $Heap@@9 current$Heap this@@22)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (let ((|currOwner#1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#1|) Tclass._module.Object $Heap@@9) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))))))))) (=> (and (and (|_module.OwnedObject.localInv2#canCall| $Heap@@9 current$Heap this@@22) (=> (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) (and (|_module.OwnedObject.userInv2#canCall| $Heap@@9 current$Heap this@@22) (=> (_module.OwnedObject.userInv2 $Heap@@9 current$Heap this@@22) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (=> (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))) (=> (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))) (let ((|currOwner#1@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#1@@0|) Tclass._module.Object $Heap@@9) (|_module.Object.localInv2#canCall| $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))))))))))))))) ($Is boolType (bool_2_U (_module.OwnedObject.inv2 $Heap@@9 current$Heap this@@22)) TBool)) (and (=> (= (ControlFlow 0 13) (- 0 23)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 13) (- 0 22)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 13) (- 0 21)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 13) (- 0 20)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 13) (- 0 19)) |b$reqreads#4@2|) (=> |b$reqreads#4@2| (and (=> (= (ControlFlow 0 13) (- 0 18)) |b$reqreads#5@2|) (=> |b$reqreads#5@2| (and (=> (= (ControlFlow 0 13) (- 0 17)) |b$reqreads#6@2|) (=> |b$reqreads#6@2| (and (=> (= (ControlFlow 0 13) (- 0 16)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (and (=> (= (ControlFlow 0 13) (- 0 15)) |b$reqreads#8@1|) (=> |b$reqreads#8@1| (and (=> (= (ControlFlow 0 13) (- 0 14)) |b$reqreads#9@1|) (=> |b$reqreads#9@1| (=> (= (ControlFlow 0 13) 8) GeneratedUnifiedExit_correct)))))))))))))))))))))))))
(let ((anon27_Else_correct  (=> (and (not ($IsAllocBox ($Box refType |currOwner#Z#0@0|) Tclass._module.Object $Heap@@9)) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@2| |b$reqreads#4@1|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 30) 13)))) anon17_correct))))
(let ((anon27_Then_correct  (=> (and ($IsAllocBox ($Box refType |currOwner#Z#0@0|) Tclass._module.Object $Heap@@9) (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@22 _module.OwnedObject.owner)))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 27) (- 0 28)) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) Tclass._module.Object $Heap@@9)) (=> ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) Tclass._module.Object $Heap@@9) (=> (= |b$reqreads#9@0| (forall (($o@@29 T@U) ($f@@13 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@29 $f@@13)))
 :qid |_08CounterNoTerminationdfy.204:71|
 :skolemid |1015|
))) (=> (and (|_module.Object.localInv2#canCall| $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@2| |b$reqreads#4@1|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#9@1| |b$reqreads#9@0|) (= (ControlFlow 0 27) 13)))) anon17_correct)))))))))))
(let ((anon26_Then_correct  (=> (and (and (and (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (and (and (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@22 _module.OwnedObject.owner))) (= |let#0#0#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (and ($Is refType |let#0#0#0| Tclass._module.Object) (= |currOwner#Z#0@0| |let#0#0#0|)))) (and (=> (= (ControlFlow 0 31) 27) anon27_Then_correct) (=> (= (ControlFlow 0 31) 30) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and (and (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@2| |b$reqreads#4@1|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 26) 13)))) anon17_correct))))
(let ((anon25_Else_correct  (=> (not (and (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))))) (=> (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true)) (and (=> (= (ControlFlow 0 34) 31) anon26_Then_correct) (=> (= (ControlFlow 0 34) 26) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and (and (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (_module.Object.localInv2 $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@22 _module.OwnedObject.owner)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner) Tclass._module.Object? current$Heap) (=> (and (and (= |b$reqreads#6@0| (forall (($o@@30 T@U) ($f@@14 T@U) ) (!  (=> (and (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@30 $f@@14)))
 :qid |_08CounterNoTerminationdfy.202:16|
 :skolemid |1014|
))) (|_module.Object.localInv#canCall| current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|))) (and (=> (= (ControlFlow 0 32) 31) anon26_Then_correct) (=> (= (ControlFlow 0 32) 26) anon26_Else_correct)))))))))
(let ((anon24_Else_correct  (=> (and (not (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (= |b$reqreads#4@1| true)) (and (=> (= (ControlFlow 0 39) 32) anon25_Then_correct) (=> (= (ControlFlow 0 39) 34) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (_module.Object.localInv current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 35) (- 0 38)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (and (=> (= (ControlFlow 0 35) (- 0 37)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 35) (- 0 36)) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) Tclass._module.Object $Heap@@9)) (=> ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) Tclass._module.Object $Heap@@9) (=> (= |b$reqreads#4@0| (forall (($o@@31 T@U) ($f@@15 T@U) ) (!  (=> (and (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@31 $f@@15)))
 :qid |_08CounterNoTerminationdfy.201:21|
 :skolemid |1013|
))) (=> (and (|_module.Object.localInv2#canCall| $Heap@@9 current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner))) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (=> (= (ControlFlow 0 35) 32) anon25_Then_correct) (=> (= (ControlFlow 0 35) 34) anon25_Else_correct))))))))))))))
(let ((anon23_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner)))) (not true)) (and (=> (= (ControlFlow 0 40) (- 0 42)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner) Tclass._module.Object? current$Heap) (=> (and (= |b$reqreads#3@0| (forall (($o@@32 T@U) ($f@@16 T@U) ) (!  (=> (and (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@32 $f@@16)))
 :qid |_08CounterNoTerminationdfy.200:21|
 :skolemid |1012|
))) (|_module.Object.localInv#canCall| current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)))) (and (=> (= (ControlFlow 0 40) 35) anon24_Then_correct) (=> (= (ControlFlow 0 40) 39) anon24_Else_correct)))))))))))
(let ((anon23_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@22) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@22) _module.OwnedObject.owner))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (=> (and (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@2| true)) (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true))) (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 25) 13)))) anon17_correct))))
(let ((anon22_Then_correct  (=> (and (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) (_module.OwnedObject.userInv2 $Heap@@9 current$Heap this@@22)) (and (=> (= (ControlFlow 0 43) (- 0 44)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (=> (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@22 _module.OwnedObject.owner))) (and (=> (= (ControlFlow 0 43) 40) anon23_Then_correct) (=> (= (ControlFlow 0 43) 25) anon23_Else_correct))))))))
(let ((anon22_Else_correct  (=> (and (not (and (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) (_module.OwnedObject.userInv2 $Heap@@9 current$Heap this@@22))) (= |b$reqreads#2@1| true)) (=> (and (and (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@2| true)) (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true))) (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 24) 13)))) anon17_correct))))
(let ((anon21_Else_correct  (=> (and (not (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22)) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 47) 43) anon22_Then_correct) (=> (= (ControlFlow 0 47) 24) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) ($IsAllocBox ($Box refType this@@22) Tclass._module.OwnedObject? current$Heap)) (and (=> (= (ControlFlow 0 45) (- 0 46)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (=> (= |b$reqreads#1@0| (forall (($o@@33 T@U) ($f@@17 T@U) ) (!  (=> (and (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@33 $f@@17)))
 :qid |_08CounterNoTerminationdfy.197:8|
 :skolemid |1011|
))) (=> (and (|_module.OwnedObject.userInv2#canCall| $Heap@@9 current$Heap this@@22) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 45) 43) anon22_Then_correct) (=> (= (ControlFlow 0 45) 24) anon22_Else_correct)))))))))
(let ((anon19_Else_correct  (=> ($IsAllocBox ($Box refType this@@22) Tclass._module.OwnedObject? current$Heap) (and (=> (= (ControlFlow 0 48) (- 0 49)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (=> (and (= |b$reqreads#0@0| (forall (($o@@34 T@U) ($f@@18 T@U) ) (!  (=> (and (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@34 $f@@18)))
 :qid |_08CounterNoTerminationdfy.196:8|
 :skolemid |1010|
))) (|_module.OwnedObject.localInv2#canCall| $Heap@@9 current$Heap this@@22)) (and (=> (= (ControlFlow 0 48) 45) anon21_Then_correct) (=> (= (ControlFlow 0 48) 47) anon21_Else_correct))))))))
(let ((anon5_correct true))
(let ((anon20_Else_correct  (=> (and (=> (_module.OwnedObject.inv2 $Heap@@9 current$Heap this@@22) (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22)) (= (ControlFlow 0 6) 1)) anon5_correct)))
(let ((anon20_Then_correct  (=> ($IsAllocBox ($Box refType this@@22) Tclass._module.OwnedObject? current$Heap) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (= this@@22 this@@22) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@22 this@@22) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (or (= this@@22 this@@22) (|_module.OwnedObject.inv2#canCall| $Heap@@9 current$Heap this@@22)) (=> (and (_module.OwnedObject.inv2 $Heap@@9 current$Heap this@@22) ($IsAllocBox ($Box refType this@@22) Tclass._module.OwnedObject? current$Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9)) (=> ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@9) (=> (|_module.OwnedObject.localInv2#canCall| $Heap@@9 current$Heap this@@22) (=> (and (_module.OwnedObject.localInv2 $Heap@@9 current$Heap this@@22) (= (ControlFlow 0 2) 1)) anon5_correct)))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null current$Heap alloc current$Heap alloc)) (and (and (=> (= (ControlFlow 0 50) 48) anon19_Else_correct) (=> (= (ControlFlow 0 50) 2) anon20_Then_correct)) (=> (= (ControlFlow 0 50) 6) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@9) ($IsHeapAnchor $Heap@@9)) (=> (and (and (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject previous$Heap))) (= 6 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@9) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 51) 50))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
