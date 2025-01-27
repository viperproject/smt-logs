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
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.NonOwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.NonOwnedObject? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter? () T@U)
(declare-fun Tagclass._module.AtomicCounter () T@U)
(declare-fun class._module.Remaining? () T@U)
(declare-fun Tagclass._module.Remaining? () T@U)
(declare-fun Tagclass._module.Remaining () T@U)
(declare-fun class._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod? () T@U)
(declare-fun Tagclass._module.IncrementerMethod () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$NonOwnedObject () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$AtomicCounter () T@U)
(declare-fun tytagFamily$Remaining () T@U)
(declare-fun tytagFamily$IncrementerMethod () T@U)
(declare-fun field$content () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
(declare-fun field$programCounter () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$remaining () T@U)
(declare-fun field$initial_value () T@U)
(declare-fun field$final_value () T@U)
(declare-fun field$i () T@U)
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
(declare-fun _module.AtomicCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun _module.Remaining.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun _module.IncrementerMethod.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.IncrementerMethod () T@U)
(declare-fun implements$_module.NonOwnedObject (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.NonOwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.NonOwnedObject () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Remaining.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.Remaining.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Remaining.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Remaining.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Remaining.userInv (T@U T@U) Bool)
(declare-fun |_module.Remaining.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.userInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun _module.AtomicCounter.value () T@U)
(declare-fun _module.Remaining.value () T@U)
(declare-fun _module.IncrementerMethod.programCounter () T@U)
(declare-fun _module.IncrementerMethod.initial__value () T@U)
(declare-fun _module.IncrementerMethod.final__value () T@U)
(declare-fun _module.IncrementerMethod.i () T@U)
(declare-fun _module.IncrementerMethod.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Remaining.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Remaining.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.userInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Remaining.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#11| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.localInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.NonOwnedObject Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.Thread Tagclass._module.OwnedObject? Tagclass._module.NonOwnedObject? Tagclass._module.Thread? class._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.Remaining? Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$Universe tytagFamily$NonOwnedObject tytagFamily$OwnedObject tytagFamily$Object tytagFamily$Thread tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$content field$nonvolatileVersion field$owner field$value field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
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
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.AtomicCounter))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1260|
)) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@1 this@@2) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1262|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@2))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Remaining))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1454|
)) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@2 this@@3) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1456|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@3))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.IncrementerMethod))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1658|
)) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@3 this@@4) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1660|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@4))
)))
(assert (implements$_module.NonOwnedObject Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@5) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Universe) ($IsAlloc refType this@@5 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@5) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@5) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@5) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@0|)))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@5) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@5)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@5) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@5) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@0 |o#0@@1|))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@5) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_08CounterNoTerminationdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@5) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.Thread?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( ($Is refType $o@@4 Tclass._module.Thread?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.AtomicCounter?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( ($Is refType $o@@5 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.Remaining?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o@@6 Tclass._module.Remaining?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.IncrementerMethod?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( ($Is refType $o@@7 Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@8) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |960|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@8) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.NonOwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2246|
 :pattern ( ($IsAllocBox bx Tclass._module.NonOwnedObject? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Thread? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.NonOwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Thread? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.AtomicCounter? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.AtomicCounter? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.Remaining? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2266|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.Remaining? $h@@4))
)))
(assert (forall ((bx@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.IncrementerMethod? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.IncrementerMethod? $h@@5))
)))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@8) ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |784|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.NonOwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Thread $h@@9) ($IsAlloc refType |c#0@@2| Tclass._module.Thread? $h@@9))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Thread $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Thread? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.OwnedObject $h@@10) ($IsAlloc refType |c#0@@3| Tclass._module.OwnedObject? $h@@10))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.OwnedObject $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.OwnedObject? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter $h@@11) ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter? $h@@11))
 :qid |unknown.0:0|
 :skolemid |1448|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.AtomicCounter? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.Remaining $h@@12) ($IsAlloc refType |c#0@@5| Tclass._module.Remaining? $h@@12))
 :qid |unknown.0:0|
 :skolemid |1642|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Remaining $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Remaining? $h@@12))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.IncrementerMethod $h@@13) ($IsAlloc refType |c#0@@6| Tclass._module.IncrementerMethod? $h@@13))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.IncrementerMethod $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.IncrementerMethod? $h@@13))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@1 this@@6) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@1 this@@6) (_module.AtomicCounter.baseUserInv $Heap@@1 this@@6)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1280|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@1 this@@6) ($Is refType this@@6 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@1 this@@6) (_module.AtomicCounter.baseUserInv $Heap@@1 this@@6) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@2 this@@7) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@2 this@@7) (_module.AtomicCounter.localUserInv $Heap@@2 this@@7)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1287|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@7) ($Is refType this@@7 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@7) (_module.AtomicCounter.localUserInv $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@3 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Remaining)))) (= (_module.OwnedObject.baseUserInv $Heap@@3 this@@8) (_module.Remaining.baseUserInv $Heap@@3 this@@8)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1474|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.Remaining) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@8) (_module.Remaining.baseUserInv $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@4 this@@9) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@9) (_module.Remaining.localUserInv $Heap@@4 this@@9)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1481|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.Remaining) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@9) (_module.Remaining.localUserInv $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@5 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.IncrementerMethod.localUserInv $Heap@@5 this@@10)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1685|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) ($Is refType this@@10 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.IncrementerMethod.localUserInv $Heap@@5 this@@10) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@6 this@@11) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv $Heap@@6 this@@11) (_module.AtomicCounter.userInv $Heap@@6 this@@11)))
 :qid |_08CounterNoTerminationdfy.224:19|
 :skolemid |1294|
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@11) ($Is refType this@@11 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@11) (_module.AtomicCounter.userInv $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@7 this@@12) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Remaining)))) (= (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.Remaining.userInv $Heap@@7 this@@12)))
 :qid |_08CounterNoTerminationdfy.224:19|
 :skolemid |1488|
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) ($Is refType this@@12 Tclass._module.Remaining) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.Remaining.userInv $Heap@@7 this@@12) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@8 this@@13) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.baseUserInv $Heap@@8 this@@13) (_module.IncrementerMethod.baseUserInv $Heap@@8 this@@13)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1678|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@8 this@@13) ($Is refType this@@13 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@8 this@@13) (_module.IncrementerMethod.baseUserInv $Heap@@8 this@@13) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@9 this@@14) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@9 this@@14) (_module.Thread.localInv $Heap@@9 this@@14)))
 :qid |_08CounterNoTerminationdfy.118:19|
 :skolemid |793|
 :pattern ( (_module.Object.localInv $Heap@@9 this@@14) ($Is refType this@@14 Tclass._module.Thread) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.localInv $Heap@@9 this@@14) (_module.Thread.localInv $Heap@@9 this@@14) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@10 this@@15) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@10 this@@15) (_module.OwnedObject.localInv $Heap@@10 this@@15)))
 :qid |_08CounterNoTerminationdfy.118:19|
 :skolemid |969|
 :pattern ( (_module.Object.localInv $Heap@@10 this@@15) ($Is refType this@@15 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.localInv $Heap@@10 this@@15) (_module.OwnedObject.localInv $Heap@@10 this@@15) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@11 this@@16) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@11 this@@16) (_module.Thread.inv $Heap@@11 this@@16)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |801|
 :pattern ( (_module.Object.inv $Heap@@11 this@@16) ($Is refType this@@16 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.inv $Heap@@11 this@@16) (_module.Thread.inv $Heap@@11 this@@16) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@12 this@@17) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.userInv $Heap@@12 this@@17) (_module.IncrementerMethod.userInv $Heap@@12 this@@17)))
 :qid |_08CounterNoTerminationdfy.224:19|
 :skolemid |1692|
 :pattern ( (_module.OwnedObject.userInv $Heap@@12 this@@17) ($Is refType this@@17 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.userInv $Heap@@12 this@@17) (_module.IncrementerMethod.userInv $Heap@@12 this@@17) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@13 this@@18) (and (< 7 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@13 this@@18) (_module.OwnedObject.inv $Heap@@13 this@@18)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |979|
 :pattern ( (_module.Object.inv $Heap@@13 this@@18) ($Is refType this@@18 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.inv $Heap@@13 this@@18) (_module.OwnedObject.inv $Heap@@13 this@@18) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@14 this@@19) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@19 Tclass._module.IncrementerMethod $Heap@@14)))))) (and (and (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@14 this@@19) (=> (_module.IncrementerMethod.localUserInv $Heap@@14 this@@19) (and (|_module.OwnedObject.localInv#canCall| $Heap@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@19) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv $Heap@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@19) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv#canCall| $Heap@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@19) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv $Heap@@14 this@@19)  (and (and (_module.IncrementerMethod.localUserInv $Heap@@14 this@@19) (_module.OwnedObject.localInv $Heap@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@19) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv $Heap@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@19) _module.IncrementerMethod.remaining)))))))
 :qid |_08CounterNoTerminationdfy.446:19|
 :skolemid |1691|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@14 this@@19) ($IsGoodHeap $Heap@@14))
))))
(assert (= (FDim _module.AtomicCounter.value) 0))
(assert (= (FieldOfDecl class._module.AtomicCounter? field$value) _module.AtomicCounter.value))
(assert  (not ($IsGhostField _module.AtomicCounter.value)))
(assert (= (FDim _module.Remaining.value) 0))
(assert (= (FieldOfDecl class._module.Remaining? field$value) _module.Remaining.value))
(assert  (not ($IsGhostField _module.Remaining.value)))
(assert (= (FDim _module.IncrementerMethod.programCounter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$programCounter) _module.IncrementerMethod.programCounter))
(assert  (not ($IsGhostField _module.IncrementerMethod.programCounter)))
(assert (= (FDim _module.IncrementerMethod.counter) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$counter) _module.IncrementerMethod.counter))
(assert  (not ($IsGhostField _module.IncrementerMethod.counter)))
(assert (= (FDim _module.IncrementerMethod.remaining) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$remaining) _module.IncrementerMethod.remaining))
(assert  (not ($IsGhostField _module.IncrementerMethod.remaining)))
(assert (= (FDim _module.IncrementerMethod.initial__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$initial_value) _module.IncrementerMethod.initial__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.initial__value)))
(assert (= (FDim _module.IncrementerMethod.final__value) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$final_value) _module.IncrementerMethod.final__value))
(assert  (not ($IsGhostField _module.IncrementerMethod.final__value)))
(assert (= (FDim _module.IncrementerMethod.i) 0))
(assert (= (FieldOfDecl class._module.IncrementerMethod? field$i) _module.IncrementerMethod.i))
(assert  (not ($IsGhostField _module.IncrementerMethod.i)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@15 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@4 $Heap@@15 this@@20) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@15)) ($HeapSucc $prevHeap@@4 $Heap@@15)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@20 Tclass._module.IncrementerMethod $prevHeap@@4)))))) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@4 $Heap@@15 this@@20)  (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.OwnedObject.owner))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.remaining)))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 3))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 4))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 5))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 6))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 7))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 2))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.programCounter))) (LitInt 9))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@20) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@20) _module.IncrementerMethod.i))))))))
 :qid |_08CounterNoTerminationdfy.452:22|
 :skolemid |1701|
 :pattern ( (_module.IncrementerMethod.localUserInv2 $prevHeap@@4 $Heap@@15 this@@20) ($IsGoodHeap $Heap@@15))
))))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Universe) ($IsAlloc refType this@@21 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@9 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@9) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap@@5 $h0@@4 this@@21) (_module.Universe.globalInv2 $prevHeap@@5 $h1@@4 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv2 $prevHeap@@5 $h1@@4 this@@21))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Object) ($IsAlloc refType this@@22 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@10 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@10) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Object.localInv2 $prevHeap@@6 $h0@@5 this@@22) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@22))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Object) ($IsAlloc refType this@@23 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |736|
)) (= (_module.Object.inv2 $prevHeap@@7 $h0@@6 this@@23) (_module.Object.inv2 $prevHeap@@7 $h1@@6 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |737|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.inv2 $prevHeap@@7 $h1@@6 this@@23))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Thread) ($IsAlloc refType this@@24 Tclass._module.Thread $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@12 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@12) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |808|
)) (= (_module.Thread.localInv2 $prevHeap@@8 $h0@@7 this@@24) (_module.Thread.localInv2 $prevHeap@@8 $h1@@7 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |809|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Thread.localInv2 $prevHeap@@8 $h1@@7 this@@24))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Thread) ($IsAlloc refType this@@25 Tclass._module.Thread $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@13 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@13) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |815|
)) (= (_module.Thread.inv2 $prevHeap@@9 $h0@@8 this@@25) (_module.Thread.inv2 $prevHeap@@9 $h1@@8 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.inv2 $prevHeap@@9 $h1@@8 this@@25))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@14 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@14) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |987|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@10 $h0@@9 this@@26) (_module.OwnedObject.localInv2 $prevHeap@@10 $h1@@9 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |988|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.localInv2 $prevHeap@@10 $h1@@9 this@@26))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@15 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@15) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1002|
)) (= (_module.OwnedObject.inv2 $prevHeap@@11 $h0@@10 this@@27) (_module.OwnedObject.inv2 $prevHeap@@11 $h1@@10 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1003|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.inv2 $prevHeap@@11 $h1@@10 this@@27))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@16 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@16) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1049|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@12 $h0@@11 this@@28) (_module.OwnedObject.localUserInv2 $prevHeap@@12 $h1@@11 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1050|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.localUserInv2 $prevHeap@@12 $h1@@11 this@@28))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.OwnedObject) ($IsAlloc refType this@@29 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@17 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@17) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1057|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@13 $h0@@12 this@@29) (_module.OwnedObject.userInv2 $prevHeap@@13 $h1@@12 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1058|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.userInv2 $prevHeap@@13 $h1@@12 this@@29))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.AtomicCounter) ($IsAlloc refType this@@30 Tclass._module.AtomicCounter $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@18 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@18) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1297|
)) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@14 $h0@@13 this@@30) (_module.AtomicCounter.localUserInv2 $prevHeap@@14 $h1@@13 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1298|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.AtomicCounter.localUserInv2 $prevHeap@@14 $h1@@13 this@@30))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.AtomicCounter) ($IsAlloc refType this@@31 Tclass._module.AtomicCounter $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@19 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@19) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1304|
)) (= (_module.AtomicCounter.userInv2 $prevHeap@@15 $h0@@14 this@@31) (_module.AtomicCounter.userInv2 $prevHeap@@15 $h1@@14 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1305|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.AtomicCounter.userInv2 $prevHeap@@15 $h1@@14 this@@31))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Remaining) ($IsAlloc refType this@@32 Tclass._module.Remaining $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@20 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@20) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1491|
)) (= (_module.Remaining.localUserInv2 $prevHeap@@16 $h0@@15 this@@32) (_module.Remaining.localUserInv2 $prevHeap@@16 $h1@@15 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1492|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Remaining.localUserInv2 $prevHeap@@16 $h1@@15 this@@32))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Remaining) ($IsAlloc refType this@@33 Tclass._module.Remaining $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@21 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@21) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1498|
)) (= (_module.Remaining.userInv2 $prevHeap@@17 $h0@@16 this@@33) (_module.Remaining.userInv2 $prevHeap@@17 $h1@@16 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1499|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Remaining.userInv2 $prevHeap@@17 $h1@@16 this@@33))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@34 Tclass._module.IncrementerMethod $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@22 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@22) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1697|
)) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@18 $h0@@17 this@@34) (_module.IncrementerMethod.localUserInv2 $prevHeap@@18 $h1@@17 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1698|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.IncrementerMethod.localUserInv2 $prevHeap@@18 $h1@@17 this@@34))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@35 Tclass._module.IncrementerMethod $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@23 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@23) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1704|
)) (= (_module.IncrementerMethod.userInv2 $prevHeap@@19 $h0@@18 this@@35) (_module.IncrementerMethod.userInv2 $prevHeap@@19 $h1@@18 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.IncrementerMethod.userInv2 $prevHeap@@19 $h1@@18 this@@35))
)))
(assert (forall (($o@@24 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.Universe? $h@@14)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.Universe? $h@@14))
)))
(assert (forall (($o@@25 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@25 Tclass._module.Object? $h@@15)  (or (= $o@@25 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@25) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@25 Tclass._module.Object? $h@@15))
)))
(assert (forall (($o@@26 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@26 Tclass._module.NonOwnedObject? $h@@16)  (or (= $o@@26 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@26) alloc)))))
 :qid |unknown.0:0|
 :skolemid |776|
 :pattern ( ($IsAlloc refType $o@@26 Tclass._module.NonOwnedObject? $h@@16))
)))
(assert (forall (($o@@27 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@27 Tclass._module.Thread? $h@@17)  (or (= $o@@27 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@27) alloc)))))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( ($IsAlloc refType $o@@27 Tclass._module.Thread? $h@@17))
)))
(assert (forall (($o@@28 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@28 Tclass._module.OwnedObject? $h@@18)  (or (= $o@@28 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@28) alloc)))))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType $o@@28 Tclass._module.OwnedObject? $h@@18))
)))
(assert (forall (($o@@29 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@29 Tclass._module.AtomicCounter? $h@@19)  (or (= $o@@29 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@29) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsAlloc refType $o@@29 Tclass._module.AtomicCounter? $h@@19))
)))
(assert (forall (($o@@30 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@30 Tclass._module.Remaining? $h@@20)  (or (= $o@@30 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@30) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.Remaining? $h@@20))
)))
(assert (forall (($o@@31 T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType $o@@31 Tclass._module.IncrementerMethod? $h@@21)  (or (= $o@@31 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@31) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.IncrementerMethod? $h@@21))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@16 this@@36) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $Heap@@16)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@16 this@@36) (=> (_module.Object.baseInv $Heap@@16 this@@36) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@36) _module.OwnedObject.owner))) (_module.Object.universe this@@36)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 (_module.Object.universe this@@36)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@36) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@16 this@@36) (=> (_module.OwnedObject.baseUserInv $Heap@@16 this@@36) (|_module.OwnedObject.localUserInv#canCall| $Heap@@16 this@@36))))))) (= (_module.OwnedObject.localInv $Heap@@16 this@@36)  (and (and (and (and (_module.Object.baseInv $Heap@@16 this@@36) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@36) _module.OwnedObject.owner))) (_module.Object.universe this@@36))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 (_module.Object.universe this@@36)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@36) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@16 this@@36)) (_module.OwnedObject.localUserInv $Heap@@16 this@@36)))))
 :qid |_08CounterNoTerminationdfy.169:19|
 :skolemid |968|
 :pattern ( (_module.OwnedObject.localInv $Heap@@16 this@@36) ($IsGoodHeap $Heap@@16))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@17 this@@37) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@37 Tclass._module.IncrementerMethod $Heap@@17)))))) (= (_module.IncrementerMethod.baseUserInv $Heap@@17 this@@37)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 (_module.Object.universe this@@37)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@37) _module.IncrementerMethod.counter)) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@37) _module.IncrementerMethod.counter))) (_module.Object.universe this@@37))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 (_module.Object.universe this@@37)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@37) _module.IncrementerMethod.remaining))) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@37) _module.IncrementerMethod.remaining))) (_module.Object.universe this@@37)))))
 :qid |_08CounterNoTerminationdfy.426:19|
 :skolemid |1677|
 :pattern ( (_module.IncrementerMethod.baseUserInv $Heap@@17 this@@37) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@18 this@@38) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.AtomicCounter) ($IsAlloc refType this@@38 Tclass._module.AtomicCounter $Heap@@18)))))) (= (_module.AtomicCounter.baseUserInv $Heap@@18 this@@38) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.295:19|
 :skolemid |1279|
 :pattern ( (_module.AtomicCounter.baseUserInv $Heap@@18 this@@38) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@19 this@@39) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.AtomicCounter) ($IsAlloc refType this@@39 Tclass._module.AtomicCounter $Heap@@19)))))) (= (_module.AtomicCounter.localUserInv $Heap@@19 this@@39) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.299:19|
 :skolemid |1286|
 :pattern ( (_module.AtomicCounter.localUserInv $Heap@@19 this@@39) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@20 this@@40) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Remaining) ($IsAlloc refType this@@40 Tclass._module.Remaining $Heap@@20)))))) (= (_module.Remaining.baseUserInv $Heap@@20 this@@40) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.341:19|
 :skolemid |1473|
 :pattern ( (_module.Remaining.baseUserInv $Heap@@20 this@@40) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@21 this@@41) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Remaining) ($IsAlloc refType this@@41 Tclass._module.Remaining $Heap@@21)))))) (= (_module.Remaining.localUserInv $Heap@@21 this@@41) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.345:19|
 :skolemid |1480|
 :pattern ( (_module.Remaining.localUserInv $Heap@@21 this@@41) ($IsGoodHeap $Heap@@21))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@5))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@22 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@20 $Heap@@22 this@@42) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@22)) ($HeapSucc $prevHeap@@20 $Heap@@22)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.AtomicCounter) ($IsAlloc refType this@@42 Tclass._module.AtomicCounter $prevHeap@@20)))))) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@20 $Heap@@22 this@@42) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@42) _module.AtomicCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@42) _module.AtomicCounter.value))))))
 :qid |_08CounterNoTerminationdfy.306:22|
 :skolemid |1301|
 :pattern ( (_module.AtomicCounter.localUserInv2 $prevHeap@@20 $Heap@@22 this@@42) ($IsGoodHeap $Heap@@22))
))))
(assert (forall (($h@@22 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) _module.AtomicCounter.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1259|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@32) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.Remaining?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@33) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@33) _module.Remaining.value)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@33) _module.Remaining.value)))
)))
(assert (forall (($h@@24 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@34) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@34) _module.IncrementerMethod.programCounter)) TInt $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1647|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@34) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@25 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) _module.IncrementerMethod.initial__value)) TInt $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1653|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@35) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@26 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@36) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@36) _module.IncrementerMethod.final__value)) TInt $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1655|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@36) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@27 T@U) ($o@@37 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) _module.IncrementerMethod.i)) TInt $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1657|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@37) _module.IncrementerMethod.i)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@23 this@@43) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@23)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@23 this@@43) (=> (_module.OwnedObject.localInv $Heap@@23 this@@43) (|_module.OwnedObject.userInv#canCall| $Heap@@23 this@@43))) (= (_module.OwnedObject.inv $Heap@@23 this@@43)  (and (_module.OwnedObject.localInv $Heap@@23 this@@43) (_module.OwnedObject.userInv $Heap@@23 this@@43)))))
 :qid |_08CounterNoTerminationdfy.175:19|
 :skolemid |978|
 :pattern ( (_module.OwnedObject.inv $Heap@@23 this@@43) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@24 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@21 $Heap@@24 this@@44) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@21 $Heap@@24)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Remaining) ($IsAlloc refType this@@44 Tclass._module.Remaining $prevHeap@@21)))))) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@21 $Heap@@24 this@@44)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@44) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@44) _module.Remaining.value)))))))
 :qid |_08CounterNoTerminationdfy.336:22|
 :skolemid |1459|
 :pattern ( (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@21 $Heap@@24 this@@44) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@1) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@6 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@28 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@38) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@38) Tclass._module.Universe $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@38) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@38) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) ($Is refType $o@@39 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@39) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@39))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@40 T@U) ($f@@19 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#11| |l#0| |l#1| |l#2| |l#3|) $o@@40 $f@@19))  (=> (and (or (not (= $o@@40 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@40) |l#2|)))) (= $o@@40 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2276|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#11| |l#0| |l#1| |l#2| |l#3|) $o@@40 $f@@19))
)))
(assert (forall (($h@@29 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@41) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@41) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@30 T@U) ($o@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@42) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1650|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@42) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@25 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@22 $Heap@@25 this@@45) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@22 $Heap@@25 this@@45) (_module.Thread.localInv2 $prevHeap@@22 $Heap@@25 this@@45)))
 :qid |_08CounterNoTerminationdfy.119:22|
 :skolemid |813|
 :pattern ( (_module.Object.localInv2 $prevHeap@@22 $Heap@@25 this@@45) ($Is refType this@@45 Tclass._module.Thread) ($IsGoodHeap $Heap@@25))
 :pattern ( (_module.Object.localInv2 $prevHeap@@22 $Heap@@25 this@@45) (_module.Thread.localInv2 $prevHeap@@22 $Heap@@25 this@@45) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@26 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@23 $Heap@@26 this@@46) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@26 this@@46) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@26 this@@46)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1266|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@26 this@@46) ($Is refType this@@46 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@26))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@26 this@@46) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@26 this@@46) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@27 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@24 $Heap@@27 this@@47) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@24 $Heap@@27 this@@47) (_module.AtomicCounter.localUserInv2 $prevHeap@@24 $Heap@@27 this@@47)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1302|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@24 $Heap@@27 this@@47) ($Is refType this@@47 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@27))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@24 $Heap@@27 this@@47) (_module.AtomicCounter.localUserInv2 $prevHeap@@24 $Heap@@27 this@@47) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@28 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@25 $Heap@@28 this@@48) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Remaining)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@28 this@@48) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@28 this@@48)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@28 this@@48) ($Is refType this@@48 Tclass._module.Remaining) ($IsGoodHeap $Heap@@28))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@28 this@@48) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@28 this@@48) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@29 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@26 $Heap@@29 this@@49) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@26 $Heap@@29 this@@49) (_module.Remaining.localUserInv2 $prevHeap@@26 $Heap@@29 this@@49)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1496|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@26 $Heap@@29 this@@49) ($Is refType this@@49 Tclass._module.Remaining) ($IsGoodHeap $Heap@@29))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@26 $Heap@@29 this@@49) (_module.Remaining.localUserInv2 $prevHeap@@26 $Heap@@29 this@@49) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@30 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@27 $Heap@@30 this@@50) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@30 this@@50) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@30 this@@50)))
 :qid |_08CounterNoTerminationdfy.218:22|
 :skolemid |1664|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@30 this@@50) ($Is refType this@@50 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@30 this@@50) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@30 this@@50) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@31 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@28 $Heap@@31 this@@51) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@28 $Heap@@31 this@@51) (_module.IncrementerMethod.localUserInv2 $prevHeap@@28 $Heap@@31 this@@51)))
 :qid |_08CounterNoTerminationdfy.223:22|
 :skolemid |1702|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@28 $Heap@@31 this@@51) ($Is refType this@@51 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@28 $Heap@@31 this@@51) (_module.IncrementerMethod.localUserInv2 $prevHeap@@28 $Heap@@31 this@@51) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@32 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@29 $Heap@@32 this@@52) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@52 null)) (not true)) ($Is refType this@@52 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@29 $Heap@@32 this@@52) (_module.Thread.inv2 $prevHeap@@29 $Heap@@32 this@@52)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |820|
 :pattern ( (_module.Object.inv2 $prevHeap@@29 $Heap@@32 this@@52) ($Is refType this@@52 Tclass._module.Thread) ($IsGoodHeap $Heap@@32))
 :pattern ( (_module.Object.inv2 $prevHeap@@29 $Heap@@32 this@@52) (_module.Thread.inv2 $prevHeap@@29 $Heap@@32 this@@52) ($IsGoodHeap $Heap@@32))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@33 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@30 $Heap@@33 this@@53) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@53 null)) (not true)) ($Is refType this@@53 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv2 $prevHeap@@30 $Heap@@33 this@@53) (_module.AtomicCounter.userInv2 $prevHeap@@30 $Heap@@33 this@@53)))
 :qid |_08CounterNoTerminationdfy.225:22|
 :skolemid |1309|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@30 $Heap@@33 this@@53) ($Is refType this@@53 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@33))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@30 $Heap@@33 this@@53) (_module.AtomicCounter.userInv2 $prevHeap@@30 $Heap@@33 this@@53) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@34 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@31 $Heap@@34 this@@54) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@54 null)) (not true)) ($Is refType this@@54 Tclass._module.Remaining)))) (= (_module.OwnedObject.userInv2 $prevHeap@@31 $Heap@@34 this@@54) (_module.Remaining.userInv2 $prevHeap@@31 $Heap@@34 this@@54)))
 :qid |_08CounterNoTerminationdfy.225:22|
 :skolemid |1503|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@31 $Heap@@34 this@@54) ($Is refType this@@54 Tclass._module.Remaining) ($IsGoodHeap $Heap@@34))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@31 $Heap@@34 this@@54) (_module.Remaining.userInv2 $prevHeap@@31 $Heap@@34 this@@54) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@35 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@32 $Heap@@35 this@@55) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@55 null)) (not true)) ($Is refType this@@55 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@32 $Heap@@35 this@@55) (_module.OwnedObject.localInv2 $prevHeap@@32 $Heap@@35 this@@55)))
 :qid |_08CounterNoTerminationdfy.119:22|
 :skolemid |994|
 :pattern ( (_module.Object.localInv2 $prevHeap@@32 $Heap@@35 this@@55) ($Is refType this@@55 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@35))
 :pattern ( (_module.Object.localInv2 $prevHeap@@32 $Heap@@35 this@@55) (_module.OwnedObject.localInv2 $prevHeap@@32 $Heap@@35 this@@55) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@36 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@33 $Heap@@36 this@@56) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@36 this@@56) (_module.IncrementerMethod.userInv2 $prevHeap@@33 $Heap@@36 this@@56)))
 :qid |_08CounterNoTerminationdfy.225:22|
 :skolemid |1709|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@36 this@@56) ($Is refType this@@56 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@36))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@36 this@@56) (_module.IncrementerMethod.userInv2 $prevHeap@@33 $Heap@@36 this@@56) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@37 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@34 $Heap@@37 this@@57) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@34 $Heap@@37 this@@57) (_module.OwnedObject.inv2 $prevHeap@@34 $Heap@@37 this@@57)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |1007|
 :pattern ( (_module.Object.inv2 $prevHeap@@34 $Heap@@37 this@@57) ($Is refType this@@57 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@37))
 :pattern ( (_module.Object.inv2 $prevHeap@@34 $Heap@@37 this@@57) (_module.OwnedObject.inv2 $prevHeap@@34 $Heap@@37 this@@57) ($IsGoodHeap $Heap@@37))
))))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.NonOwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.NonOwnedObject)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@8 Tclass._module.NonOwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@10 Tclass._module.Universe?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@12 Tclass._module.Object?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsBox bx@@13 Tclass._module.Thread))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.NonOwnedObject?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.NonOwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |774|
 :pattern ( ($IsBox bx@@15 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsBox bx@@16 Tclass._module.Thread?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsBox bx@@17 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1261|
 :pattern ( ($IsBox bx@@18 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Remaining?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsBox bx@@19 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Remaining) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.Remaining)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx@@20 Tclass._module.Remaining))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.IncrementerMethod?) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1643|
 :pattern ( ($IsBox bx@@21 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.IncrementerMethod) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) Tclass._module.IncrementerMethod)))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( ($IsBox bx@@22 Tclass._module.IncrementerMethod))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@38 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@35 $Heap@@38 this@@58) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@38)) ($HeapSucc $prevHeap@@35 $Heap@@38)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.OwnedObject) ($IsAlloc refType this@@58 Tclass._module.OwnedObject $prevHeap@@35)))))) (and (and (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@35 $Heap@@38 this@@58) (=> (_module.OwnedObject.localUserInv2 $prevHeap@@35 $Heap@@38 this@@58) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@58) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@35 $Heap@@38 this@@58)))) (= (_module.OwnedObject.localInv2 $prevHeap@@35 $Heap@@38 this@@58)  (and (and (_module.OwnedObject.localUserInv2 $prevHeap@@35 $Heap@@38 this@@58) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@58) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@35 $Heap@@38 this@@58) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 (_module.Object.universe this@@58)) _module.Universe.content)) ($Box refType |o#0@@2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#0@@2|) _module.OwnedObject.owner)) this@@58))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#0@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_08CounterNoTerminationdfy.187:18|
 :skolemid |991|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#0@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 (_module.Object.universe this@@58)) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@58) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@58) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_08CounterNoTerminationdfy.180:22|
 :skolemid |993|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@35 $Heap@@38 this@@58) ($IsGoodHeap $Heap@@38))
))))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.NonOwnedObject)  (and ($Is refType |c#0@@9| Tclass._module.NonOwnedObject?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.NonOwnedObject))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.NonOwnedObject?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.Thread)  (and ($Is refType |c#0@@10| Tclass._module.Thread?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@11| Tclass._module.OwnedObject?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@12| Tclass._module.AtomicCounter?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.Remaining)  (and ($Is refType |c#0@@13| Tclass._module.Remaining?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1641|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@14| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@31 T@U) ($o@@43 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@43) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@43) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@43) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@32 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@44) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@44) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1651|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@44) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@39 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@36 $Heap@@39 this@@59) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@39)) ($HeapSucc $prevHeap@@36 $Heap@@39)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Universe) ($IsAlloc refType this@@59 Tclass._module.Universe $prevHeap@@36)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@59) _module.Universe.content)) ($Box refType |o#0@@3|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@59) _module.Universe.content)) ($Box refType |o#0@@3|)) (|_module.Object.inv2#canCall| $prevHeap@@36 $Heap@@39 |o#0@@3|))))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@39 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@59) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@59) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (= (_module.Universe.globalInv2 $prevHeap@@36 $Heap@@39 this@@59)  (and true (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@59) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@59) _module.Universe.content)) ($Box refType |o#0@@4|)) (_module.Object.inv2 $prevHeap@@36 $Heap@@39 |o#0@@4|)))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@39 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@59) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@59) _module.Universe.content)) ($Box refType |o#0@@4|)))
))))))
 :qid |_08CounterNoTerminationdfy.43:22|
 :skolemid |521|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@36 $Heap@@39 this@@59) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@40 this@@60) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Object) ($IsAlloc refType this@@60 Tclass._module.Object $Heap@@40)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@60)) _module.Universe.content)) ($Box refType this@@60)) (|_module.Universe.globalBaseInv#canCall| $Heap@@40 (_module.Object.universe this@@60))) (= (_module.Object.baseInv $Heap@@40 this@@60)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@60)) _module.Universe.content)) ($Box refType this@@60)) (_module.Universe.globalBaseInv $Heap@@40 (_module.Object.universe this@@60))))))
 :qid |_08CounterNoTerminationdfy.90:19|
 :skolemid |680|
 :pattern ( (_module.Object.baseInv $Heap@@40 this@@60) ($IsGoodHeap $Heap@@40))
))))
(assert (forall (($o@@45 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@45 Tclass._module.NonOwnedObject? $heap) ($IsAlloc refType $o@@45 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2248|
 :pattern ( ($IsAlloc refType $o@@45 Tclass._module.NonOwnedObject? $heap))
)))
(assert (forall (($o@@46 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@46 Tclass._module.Thread? $heap@@0) ($IsAlloc refType $o@@46 Tclass._module.NonOwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@46 Tclass._module.Thread? $heap@@0))
)))
(assert (forall (($o@@47 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@47 Tclass._module.OwnedObject? $heap@@1) ($IsAlloc refType $o@@47 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($IsAlloc refType $o@@47 Tclass._module.OwnedObject? $heap@@1))
)))
(assert (forall (($o@@48 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@48 Tclass._module.AtomicCounter? $heap@@2) ($IsAlloc refType $o@@48 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@48 Tclass._module.AtomicCounter? $heap@@2))
)))
(assert (forall (($o@@49 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@49 Tclass._module.Remaining? $heap@@3) ($IsAlloc refType $o@@49 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2268|
 :pattern ( ($IsAlloc refType $o@@49 Tclass._module.Remaining? $heap@@3))
)))
(assert (forall (($o@@50 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@50 Tclass._module.IncrementerMethod? $heap@@4) ($IsAlloc refType $o@@50 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( ($IsAlloc refType $o@@50 Tclass._module.IncrementerMethod? $heap@@4))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@41 this@@61) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.Object) ($IsAlloc refType this@@61 Tclass._module.Object $Heap@@41)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@41 this@@61) (=> (_module.Object.baseInv $Heap@@41 this@@61) (|_module.Universe.globalInv#canCall| $Heap@@41 (_module.Object.universe this@@61)))) (= (_module.Object.objectGlobalInv $Heap@@41 this@@61)  (and (_module.Object.baseInv $Heap@@41 this@@61) (_module.Universe.globalInv $Heap@@41 (_module.Object.universe this@@61))))))
 :qid |_08CounterNoTerminationdfy.112:19|
 :skolemid |714|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@41 this@@61) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@42 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@37 $Heap@@42 this@@62) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@42)) ($HeapSucc $prevHeap@@37 $Heap@@42)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Thread) ($IsAlloc refType this@@62 Tclass._module.Thread $prevHeap@@37)))))) (= (_module.Thread.localInv2 $prevHeap@@37 $Heap@@42 this@@62) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_08CounterNoTerminationdfy.141:22|
 :skolemid |812|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@37 $Heap@@42 this@@62) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@43 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@38 $Heap@@43 this@@63) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@38) ($IsGoodHeap $Heap@@43)) ($HeapSucc $prevHeap@@38 $Heap@@43)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.AtomicCounter) ($IsAlloc refType this@@63 Tclass._module.AtomicCounter $prevHeap@@38)))))) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@43 this@@63) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_08CounterNoTerminationdfy.290:22|
 :skolemid |1265|
 :pattern ( (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@43 this@@63) ($IsGoodHeap $Heap@@43))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@44 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@39 $Heap@@44 this@@64) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@39) ($IsGoodHeap $Heap@@44)) ($HeapSucc $prevHeap@@39 $Heap@@44)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.AtomicCounter) ($IsAlloc refType this@@64 Tclass._module.AtomicCounter $prevHeap@@39)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@39 $Heap@@44 this@@64)) (= (_module.AtomicCounter.userInv2 $prevHeap@@39 $Heap@@44 this@@64)  (and true (_module.AtomicCounter.localUserInv2 $prevHeap@@39 $Heap@@44 this@@64)))))
 :qid |_08CounterNoTerminationdfy.309:22|
 :skolemid |1308|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@39 $Heap@@44 this@@64) ($IsGoodHeap $Heap@@44))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@45 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@40 $Heap@@45 this@@65) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@40) ($IsGoodHeap $Heap@@45)) ($HeapSucc $prevHeap@@40 $Heap@@45)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Remaining) ($IsAlloc refType this@@65 Tclass._module.Remaining $prevHeap@@40)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Remaining.localUserInv2#canCall| $prevHeap@@40 $Heap@@45 this@@65)) (= (_module.Remaining.userInv2 $prevHeap@@40 $Heap@@45 this@@65)  (and true (_module.Remaining.localUserInv2 $prevHeap@@40 $Heap@@45 this@@65)))))
 :qid |_08CounterNoTerminationdfy.355:22|
 :skolemid |1502|
 :pattern ( (_module.Remaining.userInv2 $prevHeap@@40 $Heap@@45 this@@65) ($IsGoodHeap $Heap@@45))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@46 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@41 $Heap@@46 this@@66) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@41) ($IsGoodHeap $Heap@@46)) ($HeapSucc $prevHeap@@41 $Heap@@46)) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.Remaining) ($IsAlloc refType this@@66 Tclass._module.Remaining $prevHeap@@41)))))) (= (_module.Remaining.localUserInv2 $prevHeap@@41 $Heap@@46 this@@66) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.352:22|
 :skolemid |1495|
 :pattern ( (_module.Remaining.localUserInv2 $prevHeap@@41 $Heap@@46 this@@66) ($IsGoodHeap $Heap@@46))
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
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 TInt) (and (= ($Box intType ($Unbox intType bx@@23)) bx@@23) ($Is intType ($Unbox intType bx@@23) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@23 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@47 this@@67) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.AtomicCounter) ($IsAlloc refType this@@67 Tclass._module.AtomicCounter $Heap@@47)))))) (=> (_module.AtomicCounter.userInv $Heap@@47 this@@67) (_module.AtomicCounter.localUserInv $Heap@@47 this@@67)))
 :qid |_08CounterNoTerminationdfy.302:19|
 :skolemid |1291|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@47 this@@67))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@48 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@48 this@@68) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Remaining) ($IsAlloc refType this@@68 Tclass._module.Remaining $Heap@@48)))))) (=> (_module.Remaining.userInv $Heap@@48 this@@68) (_module.Remaining.localUserInv $Heap@@48 this@@68)))
 :qid |_08CounterNoTerminationdfy.348:19|
 :skolemid |1485|
 :pattern ( (_module.Remaining.userInv $Heap@@48 this@@68))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@49 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@49 this@@69) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@49) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.Thread) ($IsAlloc refType this@@69 Tclass._module.Thread $Heap@@49)))))) (=> (_module.Thread.inv $Heap@@49 this@@69) (_module.Thread.localInv $Heap@@49 this@@69)))
 :qid |_08CounterNoTerminationdfy.137:19|
 :skolemid |798|
 :pattern ( (_module.Thread.inv $Heap@@49 this@@69))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@50 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@50 this@@70) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@50) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@70 Tclass._module.IncrementerMethod $Heap@@50)))))) (=> (_module.IncrementerMethod.userInv $Heap@@50 this@@70) (_module.IncrementerMethod.localUserInv $Heap@@50 this@@70)))
 :qid |_08CounterNoTerminationdfy.446:19|
 :skolemid |1689|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@50 this@@70))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@51 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@51 this@@71) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@51) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.OwnedObject) ($IsAlloc refType this@@71 Tclass._module.OwnedObject $Heap@@51)))))) (=> (_module.OwnedObject.userInv $Heap@@51 this@@71) (_module.OwnedObject.localUserInv $Heap@@51 this@@71)))
 :qid |_08CounterNoTerminationdfy.224:19|
 :skolemid |1055|
 :pattern ( (_module.OwnedObject.userInv $Heap@@51 this@@71))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@52 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@52 this@@72) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@52) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.OwnedObject) ($IsAlloc refType this@@72 Tclass._module.OwnedObject $Heap@@52)))))) (=> (_module.OwnedObject.inv $Heap@@52 this@@72) (_module.OwnedObject.localInv $Heap@@52 this@@72)))
 :qid |_08CounterNoTerminationdfy.175:19|
 :skolemid |976|
 :pattern ( (_module.OwnedObject.inv $Heap@@52 this@@72))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@53 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@53 this@@73) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@53) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Object) ($IsAlloc refType this@@73 Tclass._module.Object $Heap@@53)))))) (=> (_module.Object.inv $Heap@@53 this@@73) (_module.Object.localInv $Heap@@53 this@@73)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |734|
 :pattern ( (_module.Object.inv $Heap@@53 this@@73))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@54 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@54 this@@74) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@54) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@74 Tclass._module.IncrementerMethod $Heap@@54)))))) (= (_module.IncrementerMethod.localUserInv $Heap@@54 this@@74)  (and (and (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@74) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 1)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 0))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 2)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 3)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 4)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 5)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 9)))) (and (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 6)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 7)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 11)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 8)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 9)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.i))) (LitInt 10))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.programCounter))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@74) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0))))))
 :qid |_08CounterNoTerminationdfy.431:19|
 :skolemid |1684|
 :pattern ( (_module.IncrementerMethod.localUserInv $Heap@@54 this@@74) ($IsGoodHeap $Heap@@54))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@55 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@42 $Heap@@55 this@@75) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@42) ($IsGoodHeap $Heap@@55)) ($HeapSucc $prevHeap@@42 $Heap@@55)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.OwnedObject) ($IsAlloc refType this@@75 Tclass._module.OwnedObject $prevHeap@@42)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@75) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@75) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@42 $Heap@@55 this@@75)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@42 $Heap@@55 this@@75)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@75) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@75) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@55 this@@75)))))
 :qid |_08CounterNoTerminationdfy.211:22|
 :skolemid |1029|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@42 $Heap@@55 this@@75) ($IsGoodHeap $Heap@@55))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@24 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@24) ($IsAllocBox bx@@24 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@24))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@33 T@U) ($o@@51 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@51 null)) (not true)) ($Is refType $o@@51 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@51) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@51) _module.OwnedObject.nonvolatileVersion)) TInt $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |961|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@51) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@34 T@U) ($o@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@52) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@52) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@35 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.Remaining?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@53) _module.Remaining.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@53) _module.Remaining.value)))
)))
(assert (forall (($h@@36 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@54) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1646|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@54) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@37 T@U) ($o@@55 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@55 null)) (not true)) (= (dtype $o@@55) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@55) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@55) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@38 T@U) ($o@@56 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@56 null)) (not true)) (= (dtype $o@@56) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@56) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1654|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@56) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@39 T@U) ($o@@57 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@57 null)) (not true)) (= (dtype $o@@57) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@57) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1656|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@57) _module.IncrementerMethod.i)))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@76 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@76 null)) (not true)) ($Is refType this@@76 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@58 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (or (= $o@@58 this@@76) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 this@@76) _module.Universe.content)) ($Box refType $o@@58)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@58) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@58) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@19 this@@76) (_module.Universe.globalBaseInv $h1@@19 this@@76))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Universe.globalBaseInv $h1@@19 this@@76))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@56 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@43 $Heap@@56 this@@77) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@43) ($IsGoodHeap $Heap@@56)) ($HeapSucc $prevHeap@@43 $Heap@@56)) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.OwnedObject) ($IsAlloc refType this@@77 Tclass._module.OwnedObject $prevHeap@@43)))))) (and (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@43 $Heap@@56 this@@77) (=> (_module.OwnedObject.localInv2 $prevHeap@@43 $Heap@@56 this@@77) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap@@43 $Heap@@56 this@@77) (=> (_module.OwnedObject.userInv2 $prevHeap@@43 $Heap@@56 this@@77) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $prevHeap@@43 $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap@@43 $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner))) (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap@@43) (|_module.Object.localInv2#canCall| $prevHeap@@43 $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner)))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap@@43 $Heap@@56 this@@77)  (and (and (_module.OwnedObject.localInv2 $prevHeap@@43 $Heap@@56 this@@77) (_module.OwnedObject.userInv2 $prevHeap@@43 $Heap@@56 this@@77)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@43 $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@77) _module.OwnedObject.owner)))) (_module.Object.localInv $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner)))) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap@@43) (_module.Object.localInv2 $prevHeap@@43 $Heap@@56 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@77) _module.OwnedObject.owner)))))))))))
 :qid |_08CounterNoTerminationdfy.195:22|
 :skolemid |1006|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@43 $Heap@@56 this@@77) ($IsGoodHeap $Heap@@56))
))))
(assert (forall (($h@@40 T@U) ($o@@59 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@59 null)) (not true)) ($Is refType $o@@59 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@59) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@59) _module.OwnedObject.owner)) Tclass._module.Object $h@@40))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |963|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@59) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@78 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.Universe) ($IsAlloc refType this@@78 Tclass._module.Universe $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@60 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@60) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@60) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@20 this@@78) (_module.Universe.globalInv $h1@@20 this@@78))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Universe.globalInv $h1@@20 this@@78))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@79 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Object) ($IsAlloc refType this@@79 Tclass._module.Object $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@61 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@61) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@61) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |676|
)) (= (_module.Object.baseInv $h0@@21 this@@79) (_module.Object.baseInv $h1@@21 this@@79))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |677|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Object.baseInv $h1@@21 this@@79))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@80 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.Object) ($IsAlloc refType this@@80 Tclass._module.Object $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@62 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@62) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@62) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |710|
)) (= (_module.Object.objectGlobalInv $h0@@22 this@@80) (_module.Object.objectGlobalInv $h1@@22 this@@80))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |711|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.objectGlobalInv $h1@@22 this@@80))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.Object) ($IsAlloc refType this@@81 Tclass._module.Object $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@63 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@63) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@63) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |724|
)) (= (_module.Object.localInv $h0@@23 this@@81) (_module.Object.localInv $h1@@23 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |725|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Object.localInv $h1@@23 this@@81))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Object) ($IsAlloc refType this@@82 Tclass._module.Object $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@64 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@64) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@64) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |732|
)) (= (_module.Object.inv $h0@@24 this@@82) (_module.Object.inv $h1@@24 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.inv $h1@@24 this@@82))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.Thread) ($IsAlloc refType this@@83 Tclass._module.Thread $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@65 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@65) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@65) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@65) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |788|
)) (= (_module.Thread.localInv $h0@@25 this@@83) (_module.Thread.localInv $h1@@25 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |789|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Thread.localInv $h1@@25 this@@83))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@84 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Thread) ($IsAlloc refType this@@84 Tclass._module.Thread $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@66 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@66) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@66) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@66) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |796|
)) (= (_module.Thread.inv $h0@@26 this@@84) (_module.Thread.inv $h1@@26 this@@84))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |797|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Thread.inv $h1@@26 this@@84))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@85 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.OwnedObject) ($IsAlloc refType this@@85 Tclass._module.OwnedObject $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@67 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@67) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@67) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@67) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |964|
)) (= (_module.OwnedObject.localInv $h0@@27 this@@85) (_module.OwnedObject.localInv $h1@@27 this@@85))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |965|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedObject.localInv $h1@@27 this@@85))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.OwnedObject) ($IsAlloc refType this@@86 Tclass._module.OwnedObject $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@68 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@68 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@68) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@68) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@68) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |974|
)) (= (_module.OwnedObject.inv $h0@@28 this@@86) (_module.OwnedObject.inv $h1@@28 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |975|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.OwnedObject.inv $h1@@28 this@@86))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@87 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.OwnedObject) ($IsAlloc refType this@@87 Tclass._module.OwnedObject $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@69 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@69) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@69) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@69) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1041|
)) (= (_module.OwnedObject.baseUserInv $h0@@29 this@@87) (_module.OwnedObject.baseUserInv $h1@@29 this@@87))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1042|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.OwnedObject.baseUserInv $h1@@29 this@@87))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@88 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.OwnedObject) ($IsAlloc refType this@@88 Tclass._module.OwnedObject $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@70 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@70) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@70) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@70) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1045|
)) (= (_module.OwnedObject.localUserInv $h0@@30 this@@88) (_module.OwnedObject.localUserInv $h1@@30 this@@88))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1046|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.OwnedObject.localUserInv $h1@@30 this@@88))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@89 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.OwnedObject) ($IsAlloc refType this@@89 Tclass._module.OwnedObject $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@71 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@71) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@71) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@71) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |1053|
)) (= (_module.OwnedObject.userInv $h0@@31 this@@89) (_module.OwnedObject.userInv $h1@@31 this@@89))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1054|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.OwnedObject.userInv $h1@@31 this@@89))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@90 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.AtomicCounter) ($IsAlloc refType this@@90 Tclass._module.AtomicCounter $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@72 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@72) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@72) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |1275|
)) (= (_module.AtomicCounter.baseUserInv $h0@@32 this@@90) (_module.AtomicCounter.baseUserInv $h1@@32 this@@90))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1276|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.AtomicCounter.baseUserInv $h1@@32 this@@90))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.AtomicCounter) ($IsAlloc refType this@@91 Tclass._module.AtomicCounter $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@73 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@73) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@73) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1282|
)) (= (_module.AtomicCounter.localUserInv $h0@@33 this@@91) (_module.AtomicCounter.localUserInv $h1@@33 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1283|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.AtomicCounter.localUserInv $h1@@33 this@@91))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@92 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.AtomicCounter) ($IsAlloc refType this@@92 Tclass._module.AtomicCounter $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@74 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@74) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@74) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1289|
)) (= (_module.AtomicCounter.userInv $h0@@34 this@@92) (_module.AtomicCounter.userInv $h1@@34 this@@92))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1290|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.AtomicCounter.userInv $h1@@34 this@@92))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@93 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Remaining) ($IsAlloc refType this@@93 Tclass._module.Remaining $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@75 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@75) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@75) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@75) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.Remaining.baseUserInv $h0@@35 this@@93) (_module.Remaining.baseUserInv $h1@@35 this@@93))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Remaining.baseUserInv $h1@@35 this@@93))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@94 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.Remaining) ($IsAlloc refType this@@94 Tclass._module.Remaining $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@76 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@76) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@76) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@76) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1476|
)) (= (_module.Remaining.localUserInv $h0@@36 this@@94) (_module.Remaining.localUserInv $h1@@36 this@@94))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1477|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.Remaining.localUserInv $h1@@36 this@@94))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@95 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.Remaining) ($IsAlloc refType this@@95 Tclass._module.Remaining $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@77 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@77) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@77) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@77) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1483|
)) (= (_module.Remaining.userInv $h0@@37 this@@95) (_module.Remaining.userInv $h1@@37 this@@95))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1484|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.Remaining.userInv $h1@@37 this@@95))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@96 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@96 Tclass._module.IncrementerMethod $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@78 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@78) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@78) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@78) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1673|
)) (= (_module.IncrementerMethod.baseUserInv $h0@@38 this@@96) (_module.IncrementerMethod.baseUserInv $h1@@38 this@@96))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1674|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.IncrementerMethod.baseUserInv $h1@@38 this@@96))
)))
(assert (forall (($h0@@39 T@U) ($h1@@39 T@U) (this@@97 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@97 Tclass._module.IncrementerMethod $h0@@39)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@79 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@79) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@79) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@79) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1680|
)) (= (_module.IncrementerMethod.localUserInv $h0@@39 this@@97) (_module.IncrementerMethod.localUserInv $h1@@39 this@@97))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1681|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.IncrementerMethod.localUserInv $h1@@39 this@@97))
)))
(assert (forall (($h0@@40 T@U) ($h1@@40 T@U) (this@@98 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@98 Tclass._module.IncrementerMethod $h0@@40)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@80 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@80 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@80) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@80) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@80) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1687|
)) (= (_module.IncrementerMethod.userInv $h0@@40 this@@98) (_module.IncrementerMethod.userInv $h1@@40 this@@98))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.IncrementerMethod.userInv $h1@@40 this@@98))
)))
(assert (forall ((bx@@25 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@25 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@25)) bx@@25) ($Is SetType ($Unbox SetType bx@@25) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@25 (TSet t@@5)))
)))
(assert (forall (($o@@81 T@U) ) (!  (=> ($Is refType $o@@81 Tclass._module.NonOwnedObject?) ($Is refType $o@@81 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2247|
 :pattern ( ($Is refType $o@@81 Tclass._module.NonOwnedObject?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.NonOwnedObject?) ($IsBox bx@@26 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2245|
 :pattern ( ($IsBox bx@@26 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@82 T@U) ) (!  (=> ($Is refType $o@@82 Tclass._module.Thread?) ($Is refType $o@@82 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o@@82 Tclass._module.Thread?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.Thread?) ($IsBox bx@@27 Tclass._module.NonOwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($IsBox bx@@27 Tclass._module.Thread?))
)))
(assert (forall (($o@@83 T@U) ) (!  (=> ($Is refType $o@@83 Tclass._module.OwnedObject?) ($Is refType $o@@83 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( ($Is refType $o@@83 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.OwnedObject?) ($IsBox bx@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($IsBox bx@@28 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@84 T@U) ) (!  (=> ($Is refType $o@@84 Tclass._module.AtomicCounter?) ($Is refType $o@@84 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@84 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.AtomicCounter?) ($IsBox bx@@29 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( ($IsBox bx@@29 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@85 T@U) ) (!  (=> ($Is refType $o@@85 Tclass._module.Remaining?) ($Is refType $o@@85 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2267|
 :pattern ( ($Is refType $o@@85 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.Remaining?) ($IsBox bx@@30 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2265|
 :pattern ( ($IsBox bx@@30 Tclass._module.Remaining?))
)))
(assert (forall (($o@@86 T@U) ) (!  (=> ($Is refType $o@@86 Tclass._module.IncrementerMethod?) ($Is refType $o@@86 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($Is refType $o@@86 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.IncrementerMethod?) ($IsBox bx@@31 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2269|
 :pattern ( ($IsBox bx@@31 Tclass._module.IncrementerMethod?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.NonOwnedObject) Tagclass._module.NonOwnedObject))
(assert (= (TagFamily Tclass._module.NonOwnedObject) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.NonOwnedObject?) Tagclass._module.NonOwnedObject?))
(assert (= (TagFamily Tclass._module.NonOwnedObject?) tytagFamily$NonOwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.AtomicCounter?) Tagclass._module.AtomicCounter?))
(assert (= (TagFamily Tclass._module.AtomicCounter?) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.AtomicCounter) Tagclass._module.AtomicCounter))
(assert (= (TagFamily Tclass._module.AtomicCounter) tytagFamily$AtomicCounter))
(assert (= (Tag Tclass._module.Remaining?) Tagclass._module.Remaining?))
(assert (= (TagFamily Tclass._module.Remaining?) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.Remaining) Tagclass._module.Remaining))
(assert (= (TagFamily Tclass._module.Remaining) tytagFamily$Remaining))
(assert (= (Tag Tclass._module.IncrementerMethod?) Tagclass._module.IncrementerMethod?))
(assert (= (TagFamily Tclass._module.IncrementerMethod?) tytagFamily$IncrementerMethod))
(assert (= (Tag Tclass._module.IncrementerMethod) Tagclass._module.IncrementerMethod))
(assert (= (TagFamily Tclass._module.IncrementerMethod) tytagFamily$IncrementerMethod))
(assert (forall (($h@@41 T@U) ($o@@87 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@87 null)) (not true)) ($Is refType $o@@87 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@87) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |962|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@87) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@57 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@44 $Heap@@57 this@@99) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@44) ($IsGoodHeap $Heap@@57)) ($HeapSucc $prevHeap@@44 $Heap@@57)) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@99 Tclass._module.IncrementerMethod $prevHeap@@44)))))) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@57 this@@99)  (and (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.remaining)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.final__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@99) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@99) _module.IncrementerMethod.i)))))))
 :qid |_08CounterNoTerminationdfy.416:22|
 :skolemid |1663|
 :pattern ( (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@57 this@@99) ($IsGoodHeap $Heap@@57))
))))
(assert (forall (($o@@88 T@U) ) (! (= ($Is refType $o@@88 Tclass._module.Universe?)  (or (= $o@@88 null) (implements$_module.Universe (dtype $o@@88))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@88 Tclass._module.Universe?))
)))
(assert (forall (($o@@89 T@U) ) (! (= ($Is refType $o@@89 Tclass._module.Object?)  (or (= $o@@89 null) (implements$_module.Object (dtype $o@@89))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@89 Tclass._module.Object?))
)))
(assert (forall (($o@@90 T@U) ) (! (= ($Is refType $o@@90 Tclass._module.NonOwnedObject?)  (or (= $o@@90 null) (implements$_module.NonOwnedObject (dtype $o@@90))))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( ($Is refType $o@@90 Tclass._module.NonOwnedObject?))
)))
(assert (forall (($o@@91 T@U) ) (! (= ($Is refType $o@@91 Tclass._module.OwnedObject?)  (or (= $o@@91 null) (implements$_module.OwnedObject (dtype $o@@91))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType $o@@91 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@42 T@U) ($o@@92 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@92 null)) (not true)) ($Is refType $o@@92 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@92) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@92) _module.Universe.content)) (TSet Tclass._module.Object) $h@@42))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@92) _module.Universe.content)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@58 T@U) (this@@100 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@45 $Heap@@58 this@@100) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@45) ($IsGoodHeap $Heap@@58)) ($HeapSucc $prevHeap@@45 $Heap@@58)) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@100 Tclass._module.IncrementerMethod $prevHeap@@45)))))) (and (and (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@45 $Heap@@58 this@@100) (=> (_module.IncrementerMethod.localUserInv2 $prevHeap@@45 $Heap@@58 this@@100) (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@45 $Heap@@58 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@100) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv2 $prevHeap@@45 $Heap@@58 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@100) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv2#canCall| $prevHeap@@45 $Heap@@58 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@100) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv2 $prevHeap@@45 $Heap@@58 this@@100)  (and (and (_module.IncrementerMethod.localUserInv2 $prevHeap@@45 $Heap@@58 this@@100) (_module.OwnedObject.localInv2 $prevHeap@@45 $Heap@@58 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@100) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv2 $prevHeap@@45 $Heap@@58 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@100) _module.IncrementerMethod.remaining)))))))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1708|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@45 $Heap@@58 this@@100) ($IsGoodHeap $Heap@@58))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@59 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@46 $Heap@@59 this@@101) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@46) ($IsGoodHeap $Heap@@59)) ($HeapSucc $prevHeap@@46 $Heap@@59)) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.Thread) ($IsAlloc refType this@@101 Tclass._module.Thread $prevHeap@@46)))))) (=> (_module.Thread.inv2 $prevHeap@@46 $Heap@@59 this@@101) (_module.Thread.localInv2 $prevHeap@@46 $Heap@@59 this@@101)))
 :qid |_08CounterNoTerminationdfy.144:22|
 :skolemid |817|
 :pattern ( (_module.Thread.inv2 $prevHeap@@46 $Heap@@59 this@@101))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@47 T@U) ($Heap@@60 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@47 $Heap@@60 this@@102) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@47) ($IsGoodHeap $Heap@@60)) ($HeapSucc $prevHeap@@47 $Heap@@60)) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.AtomicCounter) ($IsAlloc refType this@@102 Tclass._module.AtomicCounter $prevHeap@@47)))))) (=> (_module.AtomicCounter.userInv2 $prevHeap@@47 $Heap@@60 this@@102) (_module.AtomicCounter.localUserInv2 $prevHeap@@47 $Heap@@60 this@@102)))
 :qid |_08CounterNoTerminationdfy.309:22|
 :skolemid |1306|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@47 $Heap@@60 this@@102))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@48 T@U) ($Heap@@61 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@48 $Heap@@61 this@@103) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@48) ($IsGoodHeap $Heap@@61)) ($HeapSucc $prevHeap@@48 $Heap@@61)) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.Remaining) ($IsAlloc refType this@@103 Tclass._module.Remaining $prevHeap@@48)))))) (=> (_module.Remaining.userInv2 $prevHeap@@48 $Heap@@61 this@@103) (_module.Remaining.localUserInv2 $prevHeap@@48 $Heap@@61 this@@103)))
 :qid |_08CounterNoTerminationdfy.355:22|
 :skolemid |1500|
 :pattern ( (_module.Remaining.userInv2 $prevHeap@@48 $Heap@@61 this@@103))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@49 T@U) ($Heap@@62 T@U) (this@@104 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@49 $Heap@@62 this@@104) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@49) ($IsGoodHeap $Heap@@62)) ($HeapSucc $prevHeap@@49 $Heap@@62)) (and (or (not (= this@@104 null)) (not true)) (and ($Is refType this@@104 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@104 Tclass._module.IncrementerMethod $prevHeap@@49)))))) (=> (_module.IncrementerMethod.userInv2 $prevHeap@@49 $Heap@@62 this@@104) (_module.IncrementerMethod.localUserInv2 $prevHeap@@49 $Heap@@62 this@@104)))
 :qid |_08CounterNoTerminationdfy.465:22|
 :skolemid |1706|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@49 $Heap@@62 this@@104))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@50 T@U) ($Heap@@63 T@U) (this@@105 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@50 $Heap@@63 this@@105) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@50) ($IsGoodHeap $Heap@@63)) ($HeapSucc $prevHeap@@50 $Heap@@63)) (and (or (not (= this@@105 null)) (not true)) (and ($Is refType this@@105 Tclass._module.OwnedObject) ($IsAlloc refType this@@105 Tclass._module.OwnedObject $prevHeap@@50)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@50 $Heap@@63 this@@105) (_module.OwnedObject.localUserInv2 $prevHeap@@50 $Heap@@63 this@@105)))
 :qid |_08CounterNoTerminationdfy.225:22|
 :skolemid |1059|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@50 $Heap@@63 this@@105))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@51 T@U) ($Heap@@64 T@U) (this@@106 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@51 $Heap@@64 this@@106) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@51) ($IsGoodHeap $Heap@@64)) ($HeapSucc $prevHeap@@51 $Heap@@64)) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.OwnedObject) ($IsAlloc refType this@@106 Tclass._module.OwnedObject $prevHeap@@51)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@51 $Heap@@64 this@@106) (_module.OwnedObject.localInv2 $prevHeap@@51 $Heap@@64 this@@106)))
 :qid |_08CounterNoTerminationdfy.195:22|
 :skolemid |1004|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@51 $Heap@@64 this@@106))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@52 T@U) ($Heap@@65 T@U) (this@@107 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@52 $Heap@@65 this@@107) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@52) ($IsGoodHeap $Heap@@65)) ($HeapSucc $prevHeap@@52 $Heap@@65)) (and (or (not (= this@@107 null)) (not true)) (and ($Is refType this@@107 Tclass._module.Object) ($IsAlloc refType this@@107 Tclass._module.Object $prevHeap@@52)))))) (=> (_module.Object.inv2 $prevHeap@@52 $Heap@@65 this@@107) (_module.Object.localInv2 $prevHeap@@52 $Heap@@65 this@@107)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |738|
 :pattern ( (_module.Object.inv2 $prevHeap@@52 $Heap@@65 this@@107))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@66 T@U) (this@@108 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@66 this@@108) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@66) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.AtomicCounter) ($IsAlloc refType this@@108 Tclass._module.AtomicCounter $Heap@@66)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv#canCall| $Heap@@66 this@@108)) (= (_module.AtomicCounter.userInv $Heap@@66 this@@108)  (and true (_module.AtomicCounter.localUserInv $Heap@@66 this@@108)))))
 :qid |_08CounterNoTerminationdfy.302:19|
 :skolemid |1293|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@66 this@@108) ($IsGoodHeap $Heap@@66))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@67 T@U) (this@@109 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@67 this@@109) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@67) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.Remaining) ($IsAlloc refType this@@109 Tclass._module.Remaining $Heap@@67)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Remaining.localUserInv#canCall| $Heap@@67 this@@109)) (= (_module.Remaining.userInv $Heap@@67 this@@109)  (and true (_module.Remaining.localUserInv $Heap@@67 this@@109)))))
 :qid |_08CounterNoTerminationdfy.348:19|
 :skolemid |1487|
 :pattern ( (_module.Remaining.userInv $Heap@@67 this@@109) ($IsGoodHeap $Heap@@67))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@68 T@U) (this@@110 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@68 this@@110) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@68) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.Thread) ($IsAlloc refType this@@110 Tclass._module.Thread $Heap@@68)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@68 this@@110)) (= (_module.Thread.localInv $Heap@@68 this@@110)  (and true (_module.Object.baseInv $Heap@@68 this@@110)))))
 :qid |_08CounterNoTerminationdfy.134:19|
 :skolemid |792|
 :pattern ( (_module.Thread.localInv $Heap@@68 this@@110) ($IsGoodHeap $Heap@@68))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@69 T@U) (this@@111 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@69 this@@111) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@69) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.Thread) ($IsAlloc refType this@@111 Tclass._module.Thread $Heap@@69)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@69 this@@111)) (= (_module.Thread.inv $Heap@@69 this@@111)  (and true (_module.Thread.localInv $Heap@@69 this@@111)))))
 :qid |_08CounterNoTerminationdfy.137:19|
 :skolemid |800|
 :pattern ( (_module.Thread.inv $Heap@@69 this@@111) ($IsGoodHeap $Heap@@69))
))))
(assert (forall (($h@@43 T@U) ($o@@93 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@93 null)) (not true)) ($Is refType $o@@93 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@93) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@93) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@53 T@U) ($Heap@@70 T@U) (this@@112 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@53 $Heap@@70 this@@112) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@53) ($IsGoodHeap $Heap@@70)) ($HeapSucc $prevHeap@@53 $Heap@@70)) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.Thread) ($IsAlloc refType this@@112 Tclass._module.Thread $prevHeap@@53)))))) (and (|_module.Thread.localInv2#canCall| $prevHeap@@53 $Heap@@70 this@@112) (= (_module.Thread.inv2 $prevHeap@@53 $Heap@@70 this@@112) (_module.Thread.localInv2 $prevHeap@@53 $Heap@@70 this@@112))))
 :qid |_08CounterNoTerminationdfy.144:22|
 :skolemid |819|
 :pattern ( (_module.Thread.inv2 $prevHeap@@53 $Heap@@70 this@@112) ($IsGoodHeap $Heap@@70))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@113 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@71 () T@U)
(declare-fun |running#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.IncrementerMethod.Statement1)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@113) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (ControlFlow 0 3) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@113) _module.IncrementerMethod.programCounter))) (LitInt 2))) (not true)) (= (ControlFlow 0 2) 1)) anon3_correct)))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#11| null $Heap@@71 alloc this@@113)) ($IsAllocBox ($Box refType this@@113) Tclass._module.Object? $Heap@@71)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@@71 this@@113) (_module.Object.objectGlobalInv $Heap@@71 this@@113))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (not (= |running#0| null)) (not true))) (=> (or (not (= |running#0| null)) (not true)) (=> (= (_module.Object.universe |running#0|) (_module.Object.universe this@@113)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (not (= (_module.Object.universe this@@113) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@113) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 (_module.Object.universe this@@113)) _module.Universe.content)) ($Box refType |running#0|)) (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 this@@113) _module.OwnedObject.owner)) |running#0|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 this@@113) _module.IncrementerMethod.programCounter))) (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@94 T@U) ) (!  (=> (and (or (not (= $o@@94 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 $o@@94) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@94) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 $o@@94)) (= $o@@94 this@@113)))
 :qid |_08CounterNoTerminationdfy.508:10|
 :skolemid |1893|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@94))
))) (and (and ($HeapSucc $Heap@@71 $Heap@0) ($IsAllocBox ($Box refType this@@113) Tclass._module.Object? $Heap@0)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@0 this@@113) (_module.Object.objectGlobalInv $Heap@0 this@@113)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= (_module.Object.universe this@@113) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@113) null)) (not true)) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@113)) Tclass._module.Universe? $Heap@0) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($IsAlloc refType (_module.Object.universe this@@113) Tclass._module.Universe $Heap@@71)) (=> ($IsAlloc refType (_module.Object.universe this@@113) Tclass._module.Universe $Heap@@71) (=> (and (|_module.Universe.globalInv2#canCall| $Heap@@71 $Heap@0 (_module.Object.universe this@@113)) (_module.Universe.globalInv2 $Heap@@71 $Heap@0 (_module.Object.universe this@@113))) (and (=> (= (ControlFlow 0 4) 2) anon4_Then_correct) (=> (= (ControlFlow 0 4) 3) anon4_Else_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@71) ($IsHeapAnchor $Heap@@71)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@113 Tclass._module.IncrementerMethod $Heap@@71)))) (and (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@71)) (and (= 15 $FunctionContextHeight) (= (ControlFlow 0 9) 4)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
