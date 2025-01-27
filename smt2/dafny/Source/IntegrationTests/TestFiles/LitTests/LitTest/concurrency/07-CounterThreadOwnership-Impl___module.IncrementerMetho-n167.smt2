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
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
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
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Object () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.OwnedObject.inv2 (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv2 (T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun |_module.Object.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Universe.legalTransitionsSequence (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun |_module.Universe.legalTransitionsSequence#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.IncrementerMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.IncrementerMethod () T@U)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun _module.Remaining.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun _module.IncrementerMethod.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Universe.legalTransition (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransition#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
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
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Remaining.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Remaining.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.userInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Remaining.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#52| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Remaining.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun |_module.Object.transitiveInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object? Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.Remaining? Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$Universe tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$content field$nonvolatileVersion field$owner field$value field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap $Heap this) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.OwnedObject) ($IsAlloc refType this Tclass._module.OwnedObject $prevHeap)))))) (and (and (|_module.OwnedObject.localInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.localInv2 $prevHeap $Heap this) (and (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.transitiveInv2 $prevHeap $Heap this) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.userInv2 $prevHeap $Heap this) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))) (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap) (|_module.Object.localInv2#canCall| $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap $Heap this)  (and (and (and (_module.OwnedObject.localInv2 $prevHeap $Heap this) (_module.OwnedObject.transitiveInv2 $prevHeap $Heap this)) (_module.OwnedObject.userInv2 $prevHeap $Heap this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)))) (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap) (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))))))))))
 :qid |_07CounterThreadOwnershipdfy.357:22|
 :skolemid |1348|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor SetType) 7))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $h0)))) (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@0 $h0 this@@0 |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |544|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h0 this@@0 |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |545|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@0)))))) (= (_module.Universe.globalBaseInv $Heap@@0 this@@1) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this@@1) (or (not (= |o#0| this@@1)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_07CounterThreadOwnershipdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@1 this@@2) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@2 Tclass._module.IncrementerMethod $Heap@@1)))))) (= (_module.IncrementerMethod.baseUserInv $Heap@@1 this@@2)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.IncrementerMethod.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.IncrementerMethod.remaining)))))
 :qid |_07CounterThreadOwnershipdfy.650:19|
 :skolemid |2155|
 :pattern ( (_module.IncrementerMethod.baseUserInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1371|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1372|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1381|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1382|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.AtomicCounter))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1650|
)) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@2 this@@5) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Remaining))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1888|
)) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@6) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1890|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.IncrementerMethod))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |2136|
)) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@5 $h0@@4 this@@7) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2138|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@8) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@8) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@8) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0@@0|)))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@8)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@8) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@2 |o#0@@1|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_07CounterThreadOwnershipdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@8) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Thread?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( ($Is refType $o@@5 Tclass._module.Thread?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.AtomicCounter?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType $o@@6 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Remaining?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($Is refType $o@@7 Tclass._module.Remaining?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.IncrementerMethod?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($Is refType $o@@8 Tclass._module.IncrementerMethod?))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@9 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe $h0@@5)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@6 $h0@@5 this@@9 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |563|
)) (= (_module.Universe.legalTransition $prevHeap@@6 $h0@@5 this@@9 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@6 $h1@@5 this@@9 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |564|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Universe.legalTransition $prevHeap@@6 $h1@@5 this@@9 |running#0@@0|))
)))
(assert (forall (($h T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@10) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@10) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3517|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.AtomicCounter? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3529|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.AtomicCounter? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Remaining? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3533|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Remaining? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.IncrementerMethod? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3537|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.IncrementerMethod? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1285|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.AtomicCounter $h@@9) ($IsAlloc refType |c#0@@3| Tclass._module.AtomicCounter? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.AtomicCounter $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.AtomicCounter? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Remaining $h@@10) ($IsAlloc refType |c#0@@4| Tclass._module.Remaining? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Remaining $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Remaining? $h@@10))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.IncrementerMethod $h@@11) ($IsAlloc refType |c#0@@5| Tclass._module.IncrementerMethod? $h@@11))
 :qid |unknown.0:0|
 :skolemid |3515|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.IncrementerMethod $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.IncrementerMethod? $h@@11))
)))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@3 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@3 this@@10) (_module.AtomicCounter.baseUserInv $Heap@@3 this@@10)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |1670|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@10) ($Is refType this@@10 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@10) (_module.AtomicCounter.baseUserInv $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@4 this@@11) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@11) (_module.AtomicCounter.localUserInv $Heap@@4 this@@11)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |1677|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@11) ($Is refType this@@11 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@11) (_module.AtomicCounter.localUserInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@5 this@@12) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Remaining)))) (= (_module.OwnedObject.baseUserInv $Heap@@5 this@@12) (_module.Remaining.baseUserInv $Heap@@5 this@@12)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |1908|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@12) ($Is refType this@@12 Tclass._module.Remaining) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@12) (_module.Remaining.baseUserInv $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@6 this@@13) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv $Heap@@6 this@@13) (_module.Remaining.localUserInv $Heap@@6 this@@13)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |1915|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@13) ($Is refType this@@13 Tclass._module.Remaining) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@13) (_module.Remaining.localUserInv $Heap@@6 this@@13) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@7 this@@14) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv $Heap@@7 this@@14) (_module.IncrementerMethod.localUserInv $Heap@@7 this@@14)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |2163|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@14) ($Is refType this@@14 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@14) (_module.IncrementerMethod.localUserInv $Heap@@7 this@@14) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@8 this@@15) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv $Heap@@8 this@@15) (_module.AtomicCounter.userInv $Heap@@8 this@@15)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1684|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@15) ($Is refType this@@15 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@15) (_module.AtomicCounter.userInv $Heap@@8 this@@15) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@9 this@@16) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Remaining)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.Remaining.userInv $Heap@@9 this@@16)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1922|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) ($Is refType this@@16 Tclass._module.Remaining) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.Remaining.userInv $Heap@@9 this@@16) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@10 this@@17) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.baseUserInv $Heap@@10 this@@17) (_module.IncrementerMethod.baseUserInv $Heap@@10 this@@17)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |2156|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@10 this@@17) ($Is refType this@@17 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@10 this@@17) (_module.IncrementerMethod.baseUserInv $Heap@@10 this@@17) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@11 this@@18) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@11 this@@18) (_module.Thread.localInv $Heap@@11 this@@18)))
 :qid |_07CounterThreadOwnershipdfy.271:19|
 :skolemid |1089|
 :pattern ( (_module.Object.localInv $Heap@@11 this@@18) ($Is refType this@@18 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.localInv $Heap@@11 this@@18) (_module.Thread.localInv $Heap@@11 this@@18) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@12 this@@19) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@12 this@@19) (_module.OwnedObject.localInv $Heap@@12 this@@19)))
 :qid |_07CounterThreadOwnershipdfy.271:19|
 :skolemid |1304|
 :pattern ( (_module.Object.localInv $Heap@@12 this@@19) ($Is refType this@@19 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.Object.localInv $Heap@@12 this@@19) (_module.OwnedObject.localInv $Heap@@12 this@@19) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@13 this@@20) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@13 this@@20) (_module.Thread.inv $Heap@@13 this@@20)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1097|
 :pattern ( (_module.Object.inv $Heap@@13 this@@20) ($Is refType this@@20 Tclass._module.Thread) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.inv $Heap@@13 this@@20) (_module.Thread.inv $Heap@@13 this@@20) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@14 this@@21) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.userInv $Heap@@14 this@@21) (_module.IncrementerMethod.userInv $Heap@@14 this@@21)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |2170|
 :pattern ( (_module.OwnedObject.userInv $Heap@@14 this@@21) ($Is refType this@@21 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.OwnedObject.userInv $Heap@@14 this@@21) (_module.IncrementerMethod.userInv $Heap@@14 this@@21) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@15 this@@22) (and (< 7 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@15 this@@22) (_module.OwnedObject.inv $Heap@@15 this@@22)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1314|
 :pattern ( (_module.Object.inv $Heap@@15 this@@22) ($Is refType this@@22 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.inv $Heap@@15 this@@22) (_module.OwnedObject.inv $Heap@@15 this@@22) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@16 this@@23) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@23 Tclass._module.IncrementerMethod $Heap@@16)))))) (and (and (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@23) (=> (_module.IncrementerMethod.localUserInv $Heap@@16 this@@23) (and (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@23) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@23) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@23) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv $Heap@@16 this@@23)  (and (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@23) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@23) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@23) _module.IncrementerMethod.remaining)))))))
 :qid |_07CounterThreadOwnershipdfy.670:19|
 :skolemid |2169|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@16 this@@23) ($IsGoodHeap $Heap@@16))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@17 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@7 $Heap@@17 this@@24) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@7 $Heap@@17)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@24 Tclass._module.IncrementerMethod $prevHeap@@7)))))) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@7 $Heap@@17 this@@24)  (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.OwnedObject.owner))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.remaining)))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 3))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 4))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 5))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 6))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 7))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 8))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 2))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i)))))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.programCounter))) (LitInt 9))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@24) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@24) _module.IncrementerMethod.i))))))))
 :qid |_07CounterThreadOwnershipdfy.676:22|
 :skolemid |2179|
 :pattern ( (_module.IncrementerMethod.localUserInv2 $prevHeap@@7 $Heap@@17 this@@24) ($IsGoodHeap $Heap@@17))
))))
(assert (forall (($prevHeap@@8 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Universe) ($IsAlloc refType this@@25 Tclass._module.Universe $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap@@8 $h0@@6 this@@25) (_module.Universe.globalInv2 $prevHeap@@8 $h1@@6 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.globalInv2 $prevHeap@@8 $h1@@6 this@@25))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Universe) ($IsAlloc refType this@@26 Tclass._module.Universe $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@12 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@12) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |530|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h0@@7 this@@26) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h1@@7 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |531|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h1@@7 this@@26))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Object) ($IsAlloc refType this@@27 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@13 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@13) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1021|
)) (= (_module.Object.localInv2 $prevHeap@@10 $h0@@8 this@@27) (_module.Object.localInv2 $prevHeap@@10 $h1@@8 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1022|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.localInv2 $prevHeap@@10 $h1@@8 this@@27))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Object) ($IsAlloc refType this@@28 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@14 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@14) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1029|
)) (= (_module.Object.transitiveInv2 $prevHeap@@11 $h0@@9 this@@28) (_module.Object.transitiveInv2 $prevHeap@@11 $h1@@9 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1030|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.transitiveInv2 $prevHeap@@11 $h1@@9 this@@28))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Object) ($IsAlloc refType this@@29 Tclass._module.Object $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@15 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@15) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1033|
)) (= (_module.Object.inv2 $prevHeap@@12 $h0@@10 this@@29) (_module.Object.inv2 $prevHeap@@12 $h1@@10 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1034|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.inv2 $prevHeap@@12 $h1@@10 this@@29))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Thread) ($IsAlloc refType this@@30 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@16 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@16) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1104|
)) (= (_module.Thread.localInv2 $prevHeap@@13 $h0@@11 this@@30) (_module.Thread.localInv2 $prevHeap@@13 $h1@@11 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1105|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.localInv2 $prevHeap@@13 $h1@@11 this@@30))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Thread) ($IsAlloc refType this@@31 Tclass._module.Thread $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@17 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@17) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1111|
)) (= (_module.Thread.transitiveInv2 $prevHeap@@14 $h0@@12 this@@31) (_module.Thread.transitiveInv2 $prevHeap@@14 $h1@@12 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1112|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.transitiveInv2 $prevHeap@@14 $h1@@12 this@@31))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Thread) ($IsAlloc refType this@@32 Tclass._module.Thread $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@18 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@18) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1118|
)) (= (_module.Thread.inv2 $prevHeap@@15 $h0@@13 this@@32) (_module.Thread.inv2 $prevHeap@@15 $h1@@13 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1119|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Thread.inv2 $prevHeap@@15 $h1@@13 this@@32))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@19 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@19) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1322|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@16 $h0@@14 this@@33) (_module.OwnedObject.localInv2 $prevHeap@@16 $h1@@14 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1323|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.localInv2 $prevHeap@@16 $h1@@14 this@@33))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.OwnedObject) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@20 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@20) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h0@@15 this@@34) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h1@@15 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h1@@15 this@@34))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@21 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@21) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1344|
)) (= (_module.OwnedObject.inv2 $prevHeap@@18 $h0@@16 this@@35) (_module.OwnedObject.inv2 $prevHeap@@18 $h1@@16 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1345|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.inv2 $prevHeap@@18 $h1@@16 this@@35))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@22 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@22) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1393|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h0@@17 this@@36) (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h1@@17 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1394|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h1@@17 this@@36))
)))
(assert (forall (($prevHeap@@20 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.OwnedObject) ($IsAlloc refType this@@37 Tclass._module.OwnedObject $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@23 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@23) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1401|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@20 $h0@@18 this@@37) (_module.OwnedObject.userInv2 $prevHeap@@20 $h1@@18 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1402|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedObject.userInv2 $prevHeap@@20 $h1@@18 this@@37))
)))
(assert (forall (($prevHeap@@21 T@U) ($h0@@19 T@U) ($h1@@19 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.AtomicCounter) ($IsAlloc refType this@@38 Tclass._module.AtomicCounter $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@24 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@24) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@24) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1687|
)) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@21 $h0@@19 this@@38) (_module.AtomicCounter.localUserInv2 $prevHeap@@21 $h1@@19 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.AtomicCounter.localUserInv2 $prevHeap@@21 $h1@@19 this@@38))
)))
(assert (forall (($prevHeap@@22 T@U) ($h0@@20 T@U) ($h1@@20 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.AtomicCounter) ($IsAlloc refType this@@39 Tclass._module.AtomicCounter $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@25 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@25) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@25) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1694|
)) (= (_module.AtomicCounter.userInv2 $prevHeap@@22 $h0@@20 this@@39) (_module.AtomicCounter.userInv2 $prevHeap@@22 $h1@@20 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1695|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.AtomicCounter.userInv2 $prevHeap@@22 $h1@@20 this@@39))
)))
(assert (forall (($prevHeap@@23 T@U) ($h0@@21 T@U) ($h1@@21 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Remaining) ($IsAlloc refType this@@40 Tclass._module.Remaining $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@26 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@26) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@26) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1925|
)) (= (_module.Remaining.localUserInv2 $prevHeap@@23 $h0@@21 this@@40) (_module.Remaining.localUserInv2 $prevHeap@@23 $h1@@21 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1926|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Remaining.localUserInv2 $prevHeap@@23 $h1@@21 this@@40))
)))
(assert (forall (($prevHeap@@24 T@U) ($h0@@22 T@U) ($h1@@22 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Remaining) ($IsAlloc refType this@@41 Tclass._module.Remaining $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@27 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@27) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@27) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1932|
)) (= (_module.Remaining.userInv2 $prevHeap@@24 $h0@@22 this@@41) (_module.Remaining.userInv2 $prevHeap@@24 $h1@@22 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1933|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Remaining.userInv2 $prevHeap@@24 $h1@@22 this@@41))
)))
(assert (forall (($prevHeap@@25 T@U) ($h0@@23 T@U) ($h1@@23 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@42 Tclass._module.IncrementerMethod $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@28 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@28) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@28) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |2175|
)) (= (_module.IncrementerMethod.localUserInv2 $prevHeap@@25 $h0@@23 this@@42) (_module.IncrementerMethod.localUserInv2 $prevHeap@@25 $h1@@23 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2176|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.IncrementerMethod.localUserInv2 $prevHeap@@25 $h1@@23 this@@42))
)))
(assert (forall (($prevHeap@@26 T@U) ($h0@@24 T@U) ($h1@@24 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@43 Tclass._module.IncrementerMethod $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@29 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@29) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@29) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |2182|
)) (= (_module.IncrementerMethod.userInv2 $prevHeap@@26 $h0@@24 this@@43) (_module.IncrementerMethod.userInv2 $prevHeap@@26 $h1@@24 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2183|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.IncrementerMethod.userInv2 $prevHeap@@26 $h1@@24 this@@43))
)))
(assert (forall (($o@@30 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@30 Tclass._module.Universe? $h@@12)  (or (= $o@@30 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@30) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.Universe? $h@@12))
)))
(assert (forall (($o@@31 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@31 Tclass._module.Object? $h@@13)  (or (= $o@@31 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@31) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.Object? $h@@13))
)))
(assert (forall (($o@@32 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@32 Tclass._module.Thread? $h@@14)  (or (= $o@@32 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@32) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAlloc refType $o@@32 Tclass._module.Thread? $h@@14))
)))
(assert (forall (($o@@33 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@33 Tclass._module.OwnedObject? $h@@15)  (or (= $o@@33 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@33) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@33 Tclass._module.OwnedObject? $h@@15))
)))
(assert (forall (($o@@34 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@34 Tclass._module.AtomicCounter? $h@@16)  (or (= $o@@34 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@34) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType $o@@34 Tclass._module.AtomicCounter? $h@@16))
)))
(assert (forall (($o@@35 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@35 Tclass._module.Remaining? $h@@17)  (or (= $o@@35 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@35) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( ($IsAlloc refType $o@@35 Tclass._module.Remaining? $h@@17))
)))
(assert (forall (($o@@36 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@36 Tclass._module.IncrementerMethod? $h@@18)  (or (= $o@@36 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@36) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( ($IsAlloc refType $o@@36 Tclass._module.IncrementerMethod? $h@@18))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@18 this@@44) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.AtomicCounter) ($IsAlloc refType this@@44 Tclass._module.AtomicCounter $Heap@@18)))))) (= (_module.AtomicCounter.baseUserInv $Heap@@18 this@@44) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.490:19|
 :skolemid |1669|
 :pattern ( (_module.AtomicCounter.baseUserInv $Heap@@18 this@@44) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@19 this@@45) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.AtomicCounter) ($IsAlloc refType this@@45 Tclass._module.AtomicCounter $Heap@@19)))))) (= (_module.AtomicCounter.localUserInv $Heap@@19 this@@45) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.494:19|
 :skolemid |1676|
 :pattern ( (_module.AtomicCounter.localUserInv $Heap@@19 this@@45) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@20 this@@46) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Remaining) ($IsAlloc refType this@@46 Tclass._module.Remaining $Heap@@20)))))) (= (_module.Remaining.baseUserInv $Heap@@20 this@@46) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.551:19|
 :skolemid |1907|
 :pattern ( (_module.Remaining.baseUserInv $Heap@@20 this@@46) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@21 this@@47) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Remaining) ($IsAlloc refType this@@47 Tclass._module.Remaining $Heap@@21)))))) (= (_module.Remaining.localUserInv $Heap@@21 this@@47) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.555:19|
 :skolemid |1914|
 :pattern ( (_module.Remaining.localUserInv $Heap@@21 this@@47) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@22 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@27 $Heap@@22 this@@48) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@27) ($IsGoodHeap $Heap@@22)) ($HeapSucc $prevHeap@@27 $Heap@@22)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.Thread) ($IsAlloc refType this@@48 Tclass._module.Thread $prevHeap@@27)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@27 $Heap@@22 this@@48) (=> (_module.Thread.localInv2 $prevHeap@@27 $Heap@@22 this@@48) (|_module.Thread.transitiveInv2#canCall| $prevHeap@@27 $Heap@@22 this@@48))) (= (_module.Thread.inv2 $prevHeap@@27 $Heap@@22 this@@48)  (and (_module.Thread.localInv2 $prevHeap@@27 $Heap@@22 this@@48) (_module.Thread.transitiveInv2 $prevHeap@@27 $Heap@@22 this@@48)))))
 :qid |_07CounterThreadOwnershipdfy.297:22|
 :skolemid |1122|
 :pattern ( (_module.Thread.inv2 $prevHeap@@27 $Heap@@22 this@@48) ($IsGoodHeap $Heap@@22))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@23 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@28 $Heap@@23 this@@49) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@28) ($IsGoodHeap $Heap@@23)) ($HeapSucc $prevHeap@@28 $Heap@@23)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Thread) ($IsAlloc refType this@@49 Tclass._module.Thread $prevHeap@@28)))))) (=> (_module.Thread.inv2 $prevHeap@@28 $Heap@@23 this@@49) (and (_module.Thread.localInv2 $prevHeap@@28 $Heap@@23 this@@49) (_module.Thread.transitiveInv2 $prevHeap@@28 $Heap@@23 this@@49))))
 :qid |_07CounterThreadOwnershipdfy.297:22|
 :skolemid |1120|
 :pattern ( (_module.Thread.inv2 $prevHeap@@28 $Heap@@23 this@@49))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@24 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@29 $Heap@@24 this@@50) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@29) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@29 $Heap@@24)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.OwnedObject) ($IsAlloc refType this@@50 Tclass._module.OwnedObject $prevHeap@@29)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@29 $Heap@@24 this@@50) (and (_module.OwnedObject.localInv2 $prevHeap@@29 $Heap@@24 this@@50) (_module.OwnedObject.transitiveInv2 $prevHeap@@29 $Heap@@24 this@@50))))
 :qid |_07CounterThreadOwnershipdfy.357:22|
 :skolemid |1346|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@29 $Heap@@24 this@@50))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@25 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@30 $Heap@@25 this@@51) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@30) ($IsGoodHeap $Heap@@25)) ($HeapSucc $prevHeap@@30 $Heap@@25)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Object) ($IsAlloc refType this@@51 Tclass._module.Object $prevHeap@@30)))))) (=> (_module.Object.inv2 $prevHeap@@30 $Heap@@25 this@@51) (and (_module.Object.localInv2 $prevHeap@@30 $Heap@@25 this@@51) (_module.Object.transitiveInv2 $prevHeap@@30 $Heap@@25 this@@51))))
 :qid |_07CounterThreadOwnershipdfy.275:22|
 :skolemid |1035|
 :pattern ( (_module.Object.inv2 $prevHeap@@30 $Heap@@25 this@@51))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@26 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@31 $Heap@@26 this@@52) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@31 $Heap@@26)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.AtomicCounter) ($IsAlloc refType this@@52 Tclass._module.AtomicCounter $prevHeap@@31)))))) (= (_module.AtomicCounter.localUserInv2 $prevHeap@@31 $Heap@@26 this@@52) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@52) _module.AtomicCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@52) _module.AtomicCounter.value))))))
 :qid |_07CounterThreadOwnershipdfy.501:22|
 :skolemid |1691|
 :pattern ( (_module.AtomicCounter.localUserInv2 $prevHeap@@31 $Heap@@26 this@@52) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@27 T@U) (this@@53 T@U) (|running#0@@1| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@32 $Heap@@27 this@@53 |running#0@@1|) (and (< 10 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@32 $Heap@@27)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Universe) ($IsAlloc refType this@@53 Tclass._module.Universe $prevHeap@@32)))) ($Is refType |running#0@@1| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@32 $Heap@@27 this@@53 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@32 $Heap@@27 this@@53 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@32 this@@53) (=> (_module.Universe.globalInv $prevHeap@@32 this@@53) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@27 this@@53) (=> (_module.Universe.globalBaseInv $Heap@@27 this@@53) (and (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@2|)) (and (=> (not (forall (($o@@37 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@37 null)) (not true)) (=> (= $o@@37 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@37) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@37) $f@@25))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@37) $f@@25))
))) (|_module.Object.inv#canCall| $Heap@@27 |o#0@@2|)) (=> (or (forall (($o@@38 T@U) ($f@@26 T@U) ) (!  (=> (or (not (= $o@@38 null)) (not true)) (=> (= $o@@38 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@38) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@38) $f@@26))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |573|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@38) $f@@26))
)) (_module.Object.inv $Heap@@27 |o#0@@2|)) (=> (not (forall (($o@@39 T@U) ($f@@27 T@U) ) (!  (=> (or (not (= $o@@39 null)) (not true)) (=> (= $o@@39 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@39) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@39) $f@@27))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |572|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@39) $f@@27))
))) (|_module.Object.inv2#canCall| $prevHeap@@32 $Heap@@27 |o#0@@2|))))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |574|
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@27 |o#0@@2|))
 :pattern ( (_module.Object.inv $Heap@@27 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (=> (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (or (forall (($o@@40 T@U) ($f@@28 T@U) ) (!  (=> (or (not (= $o@@40 null)) (not true)) (=> (= $o@@40 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@40) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@40) $f@@28))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |576|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@40) $f@@28))
)) (_module.Object.inv $Heap@@27 |o#0@@3|)) (or (forall (($o@@41 T@U) ($f@@29 T@U) ) (!  (=> (or (not (= $o@@41 null)) (not true)) (=> (= $o@@41 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@41) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@41) $f@@29))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |577|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@41) $f@@29))
)) (_module.Object.inv2 $prevHeap@@32 $Heap@@27 |o#0@@3|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |578|
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@27 |o#0@@3|))
 :pattern ( (_module.Object.inv $Heap@@27 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@53) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@27 |o#1|)))
 :qid |_07CounterThreadOwnershipdfy.92:16|
 :skolemid |575|
 :pattern ( (_module.Object.inv $Heap@@27 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@53) _module.Universe.content)) ($Box refType |o#1|)))
)))))))))) (= (_module.Universe.legalTransition $prevHeap@@32 $Heap@@27 this@@53 |running#0@@1|)  (and (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@32 $Heap@@27 this@@53 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (_module.Universe.globalInv $prevHeap@@32 this@@53)) (_module.Universe.globalBaseInv $Heap@@27 this@@53)) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (or (forall (($o@@42 T@U) ($f@@30 T@U) ) (!  (=> (or (not (= $o@@42 null)) (not true)) (=> (= $o@@42 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@42) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@42) $f@@30))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |567|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@42) $f@@30))
)) (_module.Object.inv $Heap@@27 |o#0@@4|)) (or (forall (($o@@43 T@U) ($f@@31 T@U) ) (!  (=> (or (not (= $o@@43 null)) (not true)) (=> (= $o@@43 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@43) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 $o@@43) $f@@31))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 $o@@43) $f@@31))
)) (_module.Object.inv2 $prevHeap@@32 $Heap@@27 |o#0@@4|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |569|
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@27 |o#0@@4|))
 :pattern ( (_module.Object.inv $Heap@@27 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#0@@4|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@53) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@27 |o#1@@0|))
 :qid |_07CounterThreadOwnershipdfy.92:16|
 :skolemid |570|
 :pattern ( (_module.Object.inv $Heap@@27 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@53) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@53) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_07CounterThreadOwnershipdfy.85:22|
 :skolemid |579|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@32 $Heap@@27 this@@53 |running#0@@1|) ($IsGoodHeap $Heap@@27))
))))
(assert (forall (($h@@19 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@44) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@44) _module.AtomicCounter.value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@44) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@20 T@U) ($o@@45 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@45 null)) (not true)) (= (dtype $o@@45) Tclass._module.Remaining?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) _module.Remaining.value)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1887|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) _module.Remaining.value)))
)))
(assert (forall (($h@@21 T@U) ($o@@46 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@46 null)) (not true)) (= (dtype $o@@46) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@46) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@46) _module.IncrementerMethod.programCounter)) TInt $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2125|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@46) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@22 T@U) ($o@@47 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@47 null)) (not true)) (= (dtype $o@@47) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@47) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@47) _module.IncrementerMethod.initial__value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2131|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@47) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@23 T@U) ($o@@48 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@48 null)) (not true)) (= (dtype $o@@48) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@48) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@48) _module.IncrementerMethod.final__value)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2133|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@48) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@24 T@U) ($o@@49 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@49 null)) (not true)) (= (dtype $o@@49) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@49) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@49) _module.IncrementerMethod.i)) TInt $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2135|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@49) _module.IncrementerMethod.i)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@28 this@@54) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $Heap@@28)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@28 this@@54) (=> (_module.OwnedObject.localInv $Heap@@28 this@@54) (|_module.OwnedObject.userInv#canCall| $Heap@@28 this@@54))) (= (_module.OwnedObject.inv $Heap@@28 this@@54)  (and (_module.OwnedObject.localInv $Heap@@28 this@@54) (_module.OwnedObject.userInv $Heap@@28 this@@54)))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1313|
 :pattern ( (_module.OwnedObject.inv $Heap@@28 this@@54) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@29 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@33 $Heap@@29 this@@55) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@29)) ($HeapSucc $prevHeap@@33 $Heap@@29)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Remaining) ($IsAlloc refType this@@55 Tclass._module.Remaining $prevHeap@@33)))))) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@33 $Heap@@29 this@@55)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@55) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@55) _module.Remaining.value)))))))
 :qid |_07CounterThreadOwnershipdfy.546:22|
 :skolemid |1893|
 :pattern ( (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@33 $Heap@@29 this@@55) ($IsGoodHeap $Heap@@29))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@1) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@5 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@25 T@U) ($o@@50 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@50 null)) (not true)) ($Is refType $o@@50 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@50) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@50) Tclass._module.Universe $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |966|
 :pattern ( (_module.Object.universe $o@@50) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@50) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@51 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) ($Is refType $o@@51 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@51) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (_module.Object.universe $o@@51))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@52 T@U) ($f@@32 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#52| |l#0| |l#1| |l#2| |l#3|) $o@@52 $f@@32))  (=> (and (or (not (= $o@@52 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@52) |l#2|)))) (= $o@@52 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3544|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#52| |l#0| |l#1| |l#2| |l#3|) $o@@52 $f@@32))
)))
(assert (forall (($h@@26 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@53) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2126|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@53) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@27 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@54) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2128|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@54) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@30 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@34 $Heap@@30 this@@56) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@34 $Heap@@30 this@@56) (_module.Thread.localInv2 $prevHeap@@34 $Heap@@30 this@@56)))
 :qid |_07CounterThreadOwnershipdfy.272:22|
 :skolemid |1109|
 :pattern ( (_module.Object.localInv2 $prevHeap@@34 $Heap@@30 this@@56) ($Is refType this@@56 Tclass._module.Thread) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.Object.localInv2 $prevHeap@@34 $Heap@@30 this@@56) (_module.Thread.localInv2 $prevHeap@@34 $Heap@@30 this@@56) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@31 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@35 $Heap@@31 this@@57) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.Thread)))) (= (_module.Object.transitiveInv2 $prevHeap@@35 $Heap@@31 this@@57) (_module.Thread.transitiveInv2 $prevHeap@@35 $Heap@@31 this@@57)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1116|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@35 $Heap@@31 this@@57) ($Is refType this@@57 Tclass._module.Thread) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@35 $Heap@@31 this@@57) (_module.Thread.transitiveInv2 $prevHeap@@35 $Heap@@31 this@@57) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@32 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@36 $Heap@@32 this@@58) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@32 this@@58) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@32 this@@58)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |1656|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@32 this@@58) ($Is refType this@@58 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@32))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@32 this@@58) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@32 this@@58) ($IsGoodHeap $Heap@@32))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@33 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@37 $Heap@@33 this@@59) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@59 null)) (not true)) ($Is refType this@@59 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@33 this@@59) (_module.AtomicCounter.localUserInv2 $prevHeap@@37 $Heap@@33 this@@59)))
 :qid |_07CounterThreadOwnershipdfy.386:22|
 :skolemid |1692|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@33 this@@59) ($Is refType this@@59 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@33))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@33 this@@59) (_module.AtomicCounter.localUserInv2 $prevHeap@@37 $Heap@@33 this@@59) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@34 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@38 $Heap@@34 this@@60) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Remaining)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@34 this@@60) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@34 this@@60)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |1894|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@34 this@@60) ($Is refType this@@60 Tclass._module.Remaining) ($IsGoodHeap $Heap@@34))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@34 this@@60) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@38 $Heap@@34 this@@60) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@35 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@39 $Heap@@35 this@@61) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@39 $Heap@@35 this@@61) (_module.Remaining.localUserInv2 $prevHeap@@39 $Heap@@35 this@@61)))
 :qid |_07CounterThreadOwnershipdfy.386:22|
 :skolemid |1930|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@39 $Heap@@35 this@@61) ($Is refType this@@61 Tclass._module.Remaining) ($IsGoodHeap $Heap@@35))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@39 $Heap@@35 this@@61) (_module.Remaining.localUserInv2 $prevHeap@@39 $Heap@@35 this@@61) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@36 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@40 $Heap@@36 this@@62) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@62) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@62)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |2142|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@62) ($Is refType this@@62 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@36))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@62) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@62) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@37 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@41 $Heap@@37 this@@63) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@63) (_module.IncrementerMethod.localUserInv2 $prevHeap@@41 $Heap@@37 this@@63)))
 :qid |_07CounterThreadOwnershipdfy.386:22|
 :skolemid |2180|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@63) ($Is refType this@@63 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@37))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@63) (_module.IncrementerMethod.localUserInv2 $prevHeap@@41 $Heap@@37 this@@63) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@38 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@42 $Heap@@38 this@@64) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@42 $Heap@@38 this@@64) (_module.Thread.inv2 $prevHeap@@42 $Heap@@38 this@@64)))
 :qid |_07CounterThreadOwnershipdfy.275:22|
 :skolemid |1123|
 :pattern ( (_module.Object.inv2 $prevHeap@@42 $Heap@@38 this@@64) ($Is refType this@@64 Tclass._module.Thread) ($IsGoodHeap $Heap@@38))
 :pattern ( (_module.Object.inv2 $prevHeap@@42 $Heap@@38 this@@64) (_module.Thread.inv2 $prevHeap@@42 $Heap@@38 this@@64) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@39 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@43 $Heap@@39 this@@65) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@65 null)) (not true)) ($Is refType this@@65 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv2 $prevHeap@@43 $Heap@@39 this@@65) (_module.AtomicCounter.userInv2 $prevHeap@@43 $Heap@@39 this@@65)))
 :qid |_07CounterThreadOwnershipdfy.388:22|
 :skolemid |1699|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@43 $Heap@@39 this@@65) ($Is refType this@@65 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@39))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@43 $Heap@@39 this@@65) (_module.AtomicCounter.userInv2 $prevHeap@@43 $Heap@@39 this@@65) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@40 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@44 $Heap@@40 this@@66) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@66 null)) (not true)) ($Is refType this@@66 Tclass._module.Remaining)))) (= (_module.OwnedObject.userInv2 $prevHeap@@44 $Heap@@40 this@@66) (_module.Remaining.userInv2 $prevHeap@@44 $Heap@@40 this@@66)))
 :qid |_07CounterThreadOwnershipdfy.388:22|
 :skolemid |1937|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@44 $Heap@@40 this@@66) ($Is refType this@@66 Tclass._module.Remaining) ($IsGoodHeap $Heap@@40))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@44 $Heap@@40 this@@66) (_module.Remaining.userInv2 $prevHeap@@44 $Heap@@40 this@@66) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@41 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@45 $Heap@@41 this@@67) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@67 null)) (not true)) ($Is refType this@@67 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.userInv2 $prevHeap@@45 $Heap@@41 this@@67) (_module.IncrementerMethod.userInv2 $prevHeap@@45 $Heap@@41 this@@67)))
 :qid |_07CounterThreadOwnershipdfy.388:22|
 :skolemid |2187|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@45 $Heap@@41 this@@67) ($Is refType this@@67 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@41))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@45 $Heap@@41 this@@67) (_module.IncrementerMethod.userInv2 $prevHeap@@45 $Heap@@41 this@@67) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@42 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@46 $Heap@@42 this@@68) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@68 null)) (not true)) ($Is refType this@@68 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@46 $Heap@@42 this@@68) (_module.OwnedObject.localInv2 $prevHeap@@46 $Heap@@42 this@@68)))
 :qid |_07CounterThreadOwnershipdfy.272:22|
 :skolemid |1327|
 :pattern ( (_module.Object.localInv2 $prevHeap@@46 $Heap@@42 this@@68) ($Is refType this@@68 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@42))
 :pattern ( (_module.Object.localInv2 $prevHeap@@46 $Heap@@42 this@@68) (_module.OwnedObject.localInv2 $prevHeap@@46 $Heap@@42 this@@68) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@47 T@U) ($Heap@@43 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@47 $Heap@@43 this@@69) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@69 null)) (not true)) ($Is refType this@@69 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@47 $Heap@@43 this@@69) (_module.OwnedObject.transitiveInv2 $prevHeap@@47 $Heap@@43 this@@69)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1337|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@47 $Heap@@43 this@@69) ($Is refType this@@69 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@43))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@47 $Heap@@43 this@@69) (_module.OwnedObject.transitiveInv2 $prevHeap@@47 $Heap@@43 this@@69) ($IsGoodHeap $Heap@@43))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@48 T@U) ($Heap@@44 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@48 $Heap@@44 this@@70) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@70 null)) (not true)) ($Is refType this@@70 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@70) (_module.OwnedObject.inv2 $prevHeap@@48 $Heap@@44 this@@70)))
 :qid |_07CounterThreadOwnershipdfy.275:22|
 :skolemid |1349|
 :pattern ( (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@70) ($Is refType this@@70 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@44))
 :pattern ( (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@70) (_module.OwnedObject.inv2 $prevHeap@@48 $Heap@@44 this@@70) ($IsGoodHeap $Heap@@44))
))))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@7 Tclass._module.Thread))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@10 Tclass._module.Universe?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( ($IsBox bx@@12 Tclass._module.Thread?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsBox bx@@14 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1651|
 :pattern ( ($IsBox bx@@15 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Remaining?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1883|
 :pattern ( ($IsBox bx@@16 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Remaining) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.Remaining)))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( ($IsBox bx@@17 Tclass._module.Remaining))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.IncrementerMethod?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |2121|
 :pattern ( ($IsBox bx@@18 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.IncrementerMethod) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.IncrementerMethod)))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( ($IsBox bx@@19 Tclass._module.IncrementerMethod))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Universe)  (and ($Is refType |c#0@@6| Tclass._module.Universe?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Object)  (and ($Is refType |c#0@@7| Tclass._module.Object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Thread)  (and ($Is refType |c#0@@8| Tclass._module.Thread?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1284|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@9| Tclass._module.OwnedObject?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@10| Tclass._module.AtomicCounter?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.Remaining)  (and ($Is refType |c#0@@11| Tclass._module.Remaining?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@12| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3514|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@28 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@55 null)) (not true)) (= (dtype $o@@55) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@55) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@55) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2127|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@55) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@29 T@U) ($o@@56 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@56 null)) (not true)) (= (dtype $o@@56) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@56) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@56) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2129|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@56) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@45 this@@71) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Object) ($IsAlloc refType this@@71 Tclass._module.Object $Heap@@45)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.Object.universe this@@71)) _module.Universe.content)) ($Box refType this@@71)) (|_module.Universe.globalBaseInv#canCall| $Heap@@45 (_module.Object.universe this@@71))) (= (_module.Object.baseInv $Heap@@45 this@@71)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.Object.universe this@@71)) _module.Universe.content)) ($Box refType this@@71)) (_module.Universe.globalBaseInv $Heap@@45 (_module.Object.universe this@@71))))))
 :qid |_07CounterThreadOwnershipdfy.243:19|
 :skolemid |971|
 :pattern ( (_module.Object.baseInv $Heap@@45 this@@71) ($IsGoodHeap $Heap@@45))
))))
(assert (forall (($o@@57 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@57 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@57 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3519|
 :pattern ( ($IsAlloc refType $o@@57 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@58 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@58 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@58 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@58 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@59 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@59 Tclass._module.AtomicCounter? $heap@@1) ($IsAlloc refType $o@@59 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3531|
 :pattern ( ($IsAlloc refType $o@@59 Tclass._module.AtomicCounter? $heap@@1))
)))
(assert (forall (($o@@60 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@60 Tclass._module.Remaining? $heap@@2) ($IsAlloc refType $o@@60 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3535|
 :pattern ( ($IsAlloc refType $o@@60 Tclass._module.Remaining? $heap@@2))
)))
(assert (forall (($o@@61 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@61 Tclass._module.IncrementerMethod? $heap@@3) ($IsAlloc refType $o@@61 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3539|
 :pattern ( ($IsAlloc refType $o@@61 Tclass._module.IncrementerMethod? $heap@@3))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@46 this@@72) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Object) ($IsAlloc refType this@@72 Tclass._module.Object $Heap@@46)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@46 this@@72) (=> (_module.Object.baseInv $Heap@@46 this@@72) (|_module.Universe.globalInv#canCall| $Heap@@46 (_module.Object.universe this@@72)))) (= (_module.Object.objectGlobalInv $Heap@@46 this@@72)  (and (_module.Object.baseInv $Heap@@46 this@@72) (_module.Universe.globalInv $Heap@@46 (_module.Object.universe this@@72))))))
 :qid |_07CounterThreadOwnershipdfy.264:19|
 :skolemid |1005|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@46 this@@72) ($IsGoodHeap $Heap@@46))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@49 T@U) ($Heap@@47 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@49 $Heap@@47 this@@73) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@49) ($IsGoodHeap $Heap@@47)) ($HeapSucc $prevHeap@@49 $Heap@@47)) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Thread) ($IsAlloc refType this@@73 Tclass._module.Thread $prevHeap@@49)))))) (= (_module.Thread.localInv2 $prevHeap@@49 $Heap@@47 this@@73) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_07CounterThreadOwnershipdfy.291:22|
 :skolemid |1108|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@49 $Heap@@47 this@@73) ($IsGoodHeap $Heap@@47))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@50 T@U) ($Heap@@48 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@50 $Heap@@48 this@@74) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@50) ($IsGoodHeap $Heap@@48)) ($HeapSucc $prevHeap@@50 $Heap@@48)) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Thread) ($IsAlloc refType this@@74 Tclass._module.Thread $prevHeap@@50)))))) (= (_module.Thread.transitiveInv2 $prevHeap@@50 $Heap@@48 this@@74) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_07CounterThreadOwnershipdfy.294:22|
 :skolemid |1115|
 :pattern ( (_module.Thread.transitiveInv2 $prevHeap@@50 $Heap@@48 this@@74) ($IsGoodHeap $Heap@@48))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@51 T@U) ($Heap@@49 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@51 $Heap@@49 this@@75) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@51) ($IsGoodHeap $Heap@@49)) ($HeapSucc $prevHeap@@51 $Heap@@49)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.AtomicCounter) ($IsAlloc refType this@@75 Tclass._module.AtomicCounter $prevHeap@@51)))))) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@51 $Heap@@49 this@@75) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_07CounterThreadOwnershipdfy.485:22|
 :skolemid |1655|
 :pattern ( (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@51 $Heap@@49 this@@75) ($IsGoodHeap $Heap@@49))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@52 T@U) ($Heap@@50 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@52 $Heap@@50 this@@76) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@52) ($IsGoodHeap $Heap@@50)) ($HeapSucc $prevHeap@@52 $Heap@@50)) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.AtomicCounter) ($IsAlloc refType this@@76 Tclass._module.AtomicCounter $prevHeap@@52)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv2#canCall| $prevHeap@@52 $Heap@@50 this@@76)) (= (_module.AtomicCounter.userInv2 $prevHeap@@52 $Heap@@50 this@@76)  (and true (_module.AtomicCounter.localUserInv2 $prevHeap@@52 $Heap@@50 this@@76)))))
 :qid |_07CounterThreadOwnershipdfy.504:22|
 :skolemid |1698|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@52 $Heap@@50 this@@76) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@53 T@U) ($Heap@@51 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@53 $Heap@@51 this@@77) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@53) ($IsGoodHeap $Heap@@51)) ($HeapSucc $prevHeap@@53 $Heap@@51)) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.Remaining) ($IsAlloc refType this@@77 Tclass._module.Remaining $prevHeap@@53)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Remaining.localUserInv2#canCall| $prevHeap@@53 $Heap@@51 this@@77)) (= (_module.Remaining.userInv2 $prevHeap@@53 $Heap@@51 this@@77)  (and true (_module.Remaining.localUserInv2 $prevHeap@@53 $Heap@@51 this@@77)))))
 :qid |_07CounterThreadOwnershipdfy.565:22|
 :skolemid |1936|
 :pattern ( (_module.Remaining.userInv2 $prevHeap@@53 $Heap@@51 this@@77) ($IsGoodHeap $Heap@@51))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@54 T@U) ($Heap@@52 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@54 $Heap@@52 this@@78) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@54) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@54 $Heap@@52)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@78 Tclass._module.IncrementerMethod $prevHeap@@54)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncrementerMethod.localUserInv2#canCall| $prevHeap@@54 $Heap@@52 this@@78)) (= (_module.IncrementerMethod.userInv2 $prevHeap@@54 $Heap@@52 this@@78)  (and true (_module.IncrementerMethod.localUserInv2 $prevHeap@@54 $Heap@@52 this@@78)))))
 :qid |_07CounterThreadOwnershipdfy.689:22|
 :skolemid |2186|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@54 $Heap@@52 this@@78) ($IsGoodHeap $Heap@@52))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@55 T@U) ($Heap@@53 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@55 $Heap@@53 this@@79) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@55) ($IsGoodHeap $Heap@@53)) ($HeapSucc $prevHeap@@55 $Heap@@53)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.OwnedObject) ($IsAlloc refType this@@79 Tclass._module.OwnedObject $prevHeap@@55)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@55 $Heap@@53 this@@79)) (= (_module.OwnedObject.localInv2 $prevHeap@@55 $Heap@@53 this@@79)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@55 $Heap@@53 this@@79)))))
 :qid |_07CounterThreadOwnershipdfy.338:22|
 :skolemid |1326|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@55 $Heap@@53 this@@79) ($IsGoodHeap $Heap@@53))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@56 T@U) ($Heap@@54 T@U) (this@@80 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv2#canCall| $prevHeap@@56 $Heap@@54 this@@80) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@56) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@56 $Heap@@54)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.Remaining) ($IsAlloc refType this@@80 Tclass._module.Remaining $prevHeap@@56)))))) (= (_module.Remaining.localUserInv2 $prevHeap@@56 $Heap@@54 this@@80) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.562:22|
 :skolemid |1929|
 :pattern ( (_module.Remaining.localUserInv2 $prevHeap@@56 $Heap@@54 this@@80) ($IsGoodHeap $Heap@@54))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 TInt) (and (= ($Box intType ($Unbox intType bx@@20)) bx@@20) ($Is intType ($Unbox intType bx@@20) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@20 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@81 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@55 this@@81) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.AtomicCounter) ($IsAlloc refType this@@81 Tclass._module.AtomicCounter $Heap@@55)))))) (=> (_module.AtomicCounter.userInv $Heap@@55 this@@81) (_module.AtomicCounter.localUserInv $Heap@@55 this@@81)))
 :qid |_07CounterThreadOwnershipdfy.497:19|
 :skolemid |1681|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@55 this@@81))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@56 T@U) (this@@82 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@56 this@@82) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Remaining) ($IsAlloc refType this@@82 Tclass._module.Remaining $Heap@@56)))))) (=> (_module.Remaining.userInv $Heap@@56 this@@82) (_module.Remaining.localUserInv $Heap@@56 this@@82)))
 :qid |_07CounterThreadOwnershipdfy.558:19|
 :skolemid |1919|
 :pattern ( (_module.Remaining.userInv $Heap@@56 this@@82))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@83 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@57 this@@83) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.Thread) ($IsAlloc refType this@@83 Tclass._module.Thread $Heap@@57)))))) (=> (_module.Thread.inv $Heap@@57 this@@83) (_module.Thread.localInv $Heap@@57 this@@83)))
 :qid |_07CounterThreadOwnershipdfy.287:19|
 :skolemid |1094|
 :pattern ( (_module.Thread.inv $Heap@@57 this@@83))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@84 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@58 this@@84) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@84 Tclass._module.IncrementerMethod $Heap@@58)))))) (=> (_module.IncrementerMethod.userInv $Heap@@58 this@@84) (_module.IncrementerMethod.localUserInv $Heap@@58 this@@84)))
 :qid |_07CounterThreadOwnershipdfy.670:19|
 :skolemid |2167|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@58 this@@84))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@59 T@U) (this@@85 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@59 this@@85) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@59) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.OwnedObject) ($IsAlloc refType this@@85 Tclass._module.OwnedObject $Heap@@59)))))) (=> (_module.OwnedObject.userInv $Heap@@59 this@@85) (_module.OwnedObject.localUserInv $Heap@@59 this@@85)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1399|
 :pattern ( (_module.OwnedObject.userInv $Heap@@59 this@@85))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@60 T@U) (this@@86 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@60 this@@86) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@60) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.OwnedObject) ($IsAlloc refType this@@86 Tclass._module.OwnedObject $Heap@@60)))))) (=> (_module.OwnedObject.inv $Heap@@60 this@@86) (_module.OwnedObject.localInv $Heap@@60 this@@86)))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1311|
 :pattern ( (_module.OwnedObject.inv $Heap@@60 this@@86))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@61 T@U) (this@@87 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@61 this@@87) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@61) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.Object) ($IsAlloc refType this@@87 Tclass._module.Object $Heap@@61)))))) (=> (_module.Object.inv $Heap@@61 this@@87) (_module.Object.localInv $Heap@@61 this@@87)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1027|
 :pattern ( (_module.Object.inv $Heap@@61 this@@87))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@62 T@U) (this@@88 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@62 this@@88) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@62) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@88 Tclass._module.IncrementerMethod $Heap@@62)))))) (= (_module.IncrementerMethod.localUserInv $Heap@@62 this@@88)  (and (and (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@88) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 1)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 0))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 2)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 3)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 4)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 5)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 9)))) (and (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 6)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 7)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 11)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 8)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 9)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.i))) (LitInt 10))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.programCounter))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@88) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0))))))
 :qid |_07CounterThreadOwnershipdfy.655:19|
 :skolemid |2162|
 :pattern ( (_module.IncrementerMethod.localUserInv $Heap@@62 this@@88) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@57 T@U) ($Heap@@63 T@U) (this@@89 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@57 $Heap@@63 this@@89) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@57) ($IsGoodHeap $Heap@@63)) ($HeapSucc $prevHeap@@57 $Heap@@63)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.OwnedObject) ($IsAlloc refType this@@89 Tclass._module.OwnedObject $prevHeap@@57)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@57 this@@89) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@89) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@57 $Heap@@63 this@@89)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@57 $Heap@@63 this@@89)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@57 this@@89) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@89) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@57 $Heap@@63 this@@89)))))
 :qid |_07CounterThreadOwnershipdfy.375:22|
 :skolemid |1375|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@57 $Heap@@63 this@@89) ($IsGoodHeap $Heap@@63))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@21 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@21) ($IsAllocBox bx@@21 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@21))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@58 T@U) ($Heap@@64 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@58 $Heap@@64 this@@90) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@58) ($IsGoodHeap $Heap@@64)) ($HeapSucc $prevHeap@@58 $Heap@@64)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.Universe) ($IsAlloc refType this@@90 Tclass._module.Universe $prevHeap@@58)))))) (and (and (forall ((|o#0@@5| T@U) ) (!  (=> ($Is refType |o#0@@5| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@5|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@5|)) (|_module.Object.inv2#canCall| $prevHeap@@58 $Heap@@64 |o#0@@5|))))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@58 $Heap@@64 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (=> (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@6|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@6|)) (_module.Object.inv2 $prevHeap@@58 $Heap@@64 |o#0@@6|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |521|
 :pattern ( (_module.Object.inv2 $prevHeap@@58 $Heap@@64 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@6|)))
)) (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@58 $Heap@@64 this@@90))) (= (_module.Universe.globalInv2 $prevHeap@@58 $Heap@@64 this@@90)  (and (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@7|)) (_module.Object.inv2 $prevHeap@@58 $Heap@@64 |o#0@@7|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@58 $Heap@@64 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 this@@90) _module.Universe.content)) ($Box refType |o#0@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@58 this@@90) _module.Universe.content)) ($Box refType |o#0@@7|)))
)) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@58 $Heap@@64 this@@90)))))
 :qid |_07CounterThreadOwnershipdfy.43:22|
 :skolemid |522|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@58 $Heap@@64 this@@90) ($IsGoodHeap $Heap@@64))
))))
(assert (forall (($h@@30 T@U) ($o@@62 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@62 null)) (not true)) ($Is refType $o@@62 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@62) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@62) _module.OwnedObject.nonvolatileVersion)) TInt $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@62) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@31 T@U) ($o@@63 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@63 null)) (not true)) (= (dtype $o@@63) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@63) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@63) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@32 T@U) ($o@@64 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@64 null)) (not true)) (= (dtype $o@@64) Tclass._module.Remaining?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@64) _module.Remaining.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1886|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@64) _module.Remaining.value)))
)))
(assert (forall (($h@@33 T@U) ($o@@65 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@65 null)) (not true)) (= (dtype $o@@65) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@65) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2124|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@65) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@34 T@U) ($o@@66 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@66 null)) (not true)) (= (dtype $o@@66) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@66) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2130|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@66) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@35 T@U) ($o@@67 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@67 null)) (not true)) (= (dtype $o@@67) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@67) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2132|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@67) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@36 T@U) ($o@@68 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@68 null)) (not true)) (= (dtype $o@@68) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@68) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2134|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@68) _module.IncrementerMethod.i)))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@91 null)) (not true)) ($Is refType this@@91 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@69 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (or (= $o@@69 this@@91) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 this@@91) _module.Universe.content)) ($Box refType $o@@69)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@69) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@69) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@25 this@@91) (_module.Universe.globalBaseInv $h1@@25 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Universe.globalBaseInv $h1@@25 this@@91))
)))
(assert (forall (($h@@37 T@U) ($o@@70 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@70 null)) (not true)) ($Is refType $o@@70 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@70) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@70) _module.OwnedObject.owner)) Tclass._module.Object $h@@37))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@70) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@65 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@65 this@@92) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@65) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.OwnedObject) ($IsAlloc refType this@@92 Tclass._module.OwnedObject $Heap@@65)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@65 this@@92) (=> (_module.Object.baseInv $Heap@@65 this@@92) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@65 (_module.Object.universe this@@92)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@65 this@@92) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@65 this@@92) (=> (_module.OwnedObject.baseUserInv $Heap@@65 this@@92) (|_module.OwnedObject.localUserInv#canCall| $Heap@@65 this@@92)))))) (= (_module.OwnedObject.localInv $Heap@@65 this@@92)  (and (and (and (_module.Object.baseInv $Heap@@65 this@@92) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@65 (_module.Object.universe this@@92)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@65 this@@92) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@65 this@@92)) (_module.OwnedObject.localUserInv $Heap@@65 this@@92)))))
 :qid |_07CounterThreadOwnershipdfy.327:19|
 :skolemid |1303|
 :pattern ( (_module.OwnedObject.localInv $Heap@@65 this@@92) ($IsGoodHeap $Heap@@65))
))))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@93 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Universe) ($IsAlloc refType this@@93 Tclass._module.Universe $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@71 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@71) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@71) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@71) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@26 this@@93) (_module.Universe.globalInv $h1@@26 this@@93))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Universe.globalInv $h1@@26 this@@93))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@94 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.Object) ($IsAlloc refType this@@94 Tclass._module.Object $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@72 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@72) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@72) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |967|
)) (= (_module.Object.baseInv $h0@@27 this@@94) (_module.Object.baseInv $h1@@27 this@@94))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |968|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.Object.baseInv $h1@@27 this@@94))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@95 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.Object) ($IsAlloc refType this@@95 Tclass._module.Object $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@73 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@73) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@73) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1001|
)) (= (_module.Object.objectGlobalInv $h0@@28 this@@95) (_module.Object.objectGlobalInv $h1@@28 this@@95))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1002|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Object.objectGlobalInv $h1@@28 this@@95))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@96 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.Object) ($IsAlloc refType this@@96 Tclass._module.Object $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@74 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@74) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@74) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1017|
)) (= (_module.Object.localInv $h0@@29 this@@96) (_module.Object.localInv $h1@@29 this@@96))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1018|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.Object.localInv $h1@@29 this@@96))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@97 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.Object) ($IsAlloc refType this@@97 Tclass._module.Object $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@75 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@75) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@75) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@75) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1025|
)) (= (_module.Object.inv $h0@@30 this@@97) (_module.Object.inv $h1@@30 this@@97))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1026|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Object.inv $h1@@30 this@@97))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@98 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.Thread) ($IsAlloc refType this@@98 Tclass._module.Thread $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@76 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@76) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@76) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@76) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1084|
)) (= (_module.Thread.localInv $h0@@31 this@@98) (_module.Thread.localInv $h1@@31 this@@98))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1085|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Thread.localInv $h1@@31 this@@98))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@99 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.Thread) ($IsAlloc refType this@@99 Tclass._module.Thread $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@77 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@77) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@77) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@77) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1092|
)) (= (_module.Thread.inv $h0@@32 this@@99) (_module.Thread.inv $h1@@32 this@@99))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1093|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Thread.inv $h1@@32 this@@99))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@100 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.OwnedObject) ($IsAlloc refType this@@100 Tclass._module.OwnedObject $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@78 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@78) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@78) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@78) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1299|
)) (= (_module.OwnedObject.localInv $h0@@33 this@@100) (_module.OwnedObject.localInv $h1@@33 this@@100))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1300|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.OwnedObject.localInv $h1@@33 this@@100))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@101 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.OwnedObject) ($IsAlloc refType this@@101 Tclass._module.OwnedObject $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@79 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@79) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@79) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@79) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1309|
)) (= (_module.OwnedObject.inv $h0@@34 this@@101) (_module.OwnedObject.inv $h1@@34 this@@101))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1310|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.OwnedObject.inv $h1@@34 this@@101))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@102 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.OwnedObject) ($IsAlloc refType this@@102 Tclass._module.OwnedObject $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@80 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@80 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@80) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@80) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@80) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1385|
)) (= (_module.OwnedObject.baseUserInv $h0@@35 this@@102) (_module.OwnedObject.baseUserInv $h1@@35 this@@102))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1386|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.OwnedObject.baseUserInv $h1@@35 this@@102))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@103 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.OwnedObject) ($IsAlloc refType this@@103 Tclass._module.OwnedObject $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@81 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@81 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@81) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@81) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@81) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1389|
)) (= (_module.OwnedObject.localUserInv $h0@@36 this@@103) (_module.OwnedObject.localUserInv $h1@@36 this@@103))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1390|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.OwnedObject.localUserInv $h1@@36 this@@103))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@104 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@104 null)) (not true)) (and ($Is refType this@@104 Tclass._module.OwnedObject) ($IsAlloc refType this@@104 Tclass._module.OwnedObject $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@82 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@82 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@82) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@82) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@82) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.OwnedObject.userInv $h0@@37 this@@104) (_module.OwnedObject.userInv $h1@@37 this@@104))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1398|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.OwnedObject.userInv $h1@@37 this@@104))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@105 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@105 null)) (not true)) (and ($Is refType this@@105 Tclass._module.AtomicCounter) ($IsAlloc refType this@@105 Tclass._module.AtomicCounter $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@83 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@83 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@83) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@83) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@83) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |1665|
)) (= (_module.AtomicCounter.baseUserInv $h0@@38 this@@105) (_module.AtomicCounter.baseUserInv $h1@@38 this@@105))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1666|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.AtomicCounter.baseUserInv $h1@@38 this@@105))
)))
(assert (forall (($h0@@39 T@U) ($h1@@39 T@U) (this@@106 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.AtomicCounter) ($IsAlloc refType this@@106 Tclass._module.AtomicCounter $h0@@39)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@84 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@84 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@84) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@84) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@84) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |1672|
)) (= (_module.AtomicCounter.localUserInv $h0@@39 this@@106) (_module.AtomicCounter.localUserInv $h1@@39 this@@106))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1673|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.AtomicCounter.localUserInv $h1@@39 this@@106))
)))
(assert (forall (($h0@@40 T@U) ($h1@@40 T@U) (this@@107 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@107 null)) (not true)) (and ($Is refType this@@107 Tclass._module.AtomicCounter) ($IsAlloc refType this@@107 Tclass._module.AtomicCounter $h0@@40)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@85 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@85 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@85) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@85) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@85) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |1679|
)) (= (_module.AtomicCounter.userInv $h0@@40 this@@107) (_module.AtomicCounter.userInv $h1@@40 this@@107))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1680|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.AtomicCounter.userInv $h1@@40 this@@107))
)))
(assert (forall (($h0@@41 T@U) ($h1@@41 T@U) (this@@108 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@41) ($IsGoodHeap $h1@@41)) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.Remaining) ($IsAlloc refType this@@108 Tclass._module.Remaining $h0@@41)))) (and ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41))) (=> (forall (($o@@86 T@U) ($f@@49 T@U) ) (!  (=> (and (or (not (= $o@@86 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@86) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@86) $f@@49) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@41 $o@@86) $f@@49)))
 :qid |unknown.0:0|
 :skolemid |1903|
)) (= (_module.Remaining.baseUserInv $h0@@41 this@@108) (_module.Remaining.baseUserInv $h1@@41 this@@108))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41) (_module.Remaining.baseUserInv $h1@@41 this@@108))
)))
(assert (forall (($h0@@42 T@U) ($h1@@42 T@U) (this@@109 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@42) ($IsGoodHeap $h1@@42)) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.Remaining) ($IsAlloc refType this@@109 Tclass._module.Remaining $h0@@42)))) (and ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42))) (=> (forall (($o@@87 T@U) ($f@@50 T@U) ) (!  (=> (and (or (not (= $o@@87 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@87) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@87) $f@@50) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@42 $o@@87) $f@@50)))
 :qid |unknown.0:0|
 :skolemid |1910|
)) (= (_module.Remaining.localUserInv $h0@@42 this@@109) (_module.Remaining.localUserInv $h1@@42 this@@109))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1911|
 :pattern ( ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42) (_module.Remaining.localUserInv $h1@@42 this@@109))
)))
(assert (forall (($h0@@43 T@U) ($h1@@43 T@U) (this@@110 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@43) ($IsGoodHeap $h1@@43)) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.Remaining) ($IsAlloc refType this@@110 Tclass._module.Remaining $h0@@43)))) (and ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43))) (=> (forall (($o@@88 T@U) ($f@@51 T@U) ) (!  (=> (and (or (not (= $o@@88 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@88) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@88) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@43 $o@@88) $f@@51)))
 :qid |unknown.0:0|
 :skolemid |1917|
)) (= (_module.Remaining.userInv $h0@@43 this@@110) (_module.Remaining.userInv $h1@@43 this@@110))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1918|
 :pattern ( ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43) (_module.Remaining.userInv $h1@@43 this@@110))
)))
(assert (forall (($h0@@44 T@U) ($h1@@44 T@U) (this@@111 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@44) ($IsGoodHeap $h1@@44)) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@111 Tclass._module.IncrementerMethod $h0@@44)))) (and ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44))) (=> (forall (($o@@89 T@U) ($f@@52 T@U) ) (!  (=> (and (or (not (= $o@@89 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@89) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@89) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@44 $o@@89) $f@@52)))
 :qid |unknown.0:0|
 :skolemid |2151|
)) (= (_module.IncrementerMethod.baseUserInv $h0@@44 this@@111) (_module.IncrementerMethod.baseUserInv $h1@@44 this@@111))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2152|
 :pattern ( ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44) (_module.IncrementerMethod.baseUserInv $h1@@44 this@@111))
)))
(assert (forall (($h0@@45 T@U) ($h1@@45 T@U) (this@@112 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@45) ($IsGoodHeap $h1@@45)) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@112 Tclass._module.IncrementerMethod $h0@@45)))) (and ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45))) (=> (forall (($o@@90 T@U) ($f@@53 T@U) ) (!  (=> (and (or (not (= $o@@90 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@90) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@90) $f@@53) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@45 $o@@90) $f@@53)))
 :qid |unknown.0:0|
 :skolemid |2158|
)) (= (_module.IncrementerMethod.localUserInv $h0@@45 this@@112) (_module.IncrementerMethod.localUserInv $h1@@45 this@@112))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2159|
 :pattern ( ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45) (_module.IncrementerMethod.localUserInv $h1@@45 this@@112))
)))
(assert (forall (($h0@@46 T@U) ($h1@@46 T@U) (this@@113 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@46) ($IsGoodHeap $h1@@46)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@113 Tclass._module.IncrementerMethod $h0@@46)))) (and ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46))) (=> (forall (($o@@91 T@U) ($f@@54 T@U) ) (!  (=> (and (or (not (= $o@@91 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@91) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@91) $f@@54) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@46 $o@@91) $f@@54)))
 :qid |unknown.0:0|
 :skolemid |2165|
)) (= (_module.IncrementerMethod.userInv $h0@@46 this@@113) (_module.IncrementerMethod.userInv $h1@@46 this@@113))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2166|
 :pattern ( ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46) (_module.IncrementerMethod.userInv $h1@@46 this@@113))
)))
(assert (forall ((bx@@22 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@22 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@22)) bx@@22) ($Is SetType ($Unbox SetType bx@@22) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@22 (TSet t@@5)))
)))
(assert (forall (($o@@92 T@U) ) (!  (=> ($Is refType $o@@92 Tclass._module.Thread?) ($Is refType $o@@92 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3518|
 :pattern ( ($Is refType $o@@92 Tclass._module.Thread?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.Thread?) ($IsBox bx@@23 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3516|
 :pattern ( ($IsBox bx@@23 Tclass._module.Thread?))
)))
(assert (forall (($o@@93 T@U) ) (!  (=> ($Is refType $o@@93 Tclass._module.OwnedObject?) ($Is refType $o@@93 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@93 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass._module.OwnedObject?) ($IsBox bx@@24 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($IsBox bx@@24 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@94 T@U) ) (!  (=> ($Is refType $o@@94 Tclass._module.AtomicCounter?) ($Is refType $o@@94 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($Is refType $o@@94 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass._module.AtomicCounter?) ($IsBox bx@@25 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3528|
 :pattern ( ($IsBox bx@@25 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@95 T@U) ) (!  (=> ($Is refType $o@@95 Tclass._module.Remaining?) ($Is refType $o@@95 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3534|
 :pattern ( ($Is refType $o@@95 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.Remaining?) ($IsBox bx@@26 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3532|
 :pattern ( ($IsBox bx@@26 Tclass._module.Remaining?))
)))
(assert (forall (($o@@96 T@U) ) (!  (=> ($Is refType $o@@96 Tclass._module.IncrementerMethod?) ($Is refType $o@@96 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3538|
 :pattern ( ($Is refType $o@@96 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.IncrementerMethod?) ($IsBox bx@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3536|
 :pattern ( ($IsBox bx@@27 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9)))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
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
(assert (forall (($h@@38 T@U) ($o@@97 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@97 null)) (not true)) ($Is refType $o@@97 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@97) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@97) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@59 T@U) ($Heap@@66 T@U) (this@@114 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@59 $Heap@@66 this@@114) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@59) ($IsGoodHeap $Heap@@66)) ($HeapSucc $prevHeap@@59 $Heap@@66)) (and (or (not (= this@@114 null)) (not true)) (and ($Is refType this@@114 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@114 Tclass._module.IncrementerMethod $prevHeap@@59)))))) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@59 $Heap@@66 this@@114)  (and (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.remaining)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.final__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@59 this@@114) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@66 this@@114) _module.IncrementerMethod.i)))))))
 :qid |_07CounterThreadOwnershipdfy.640:22|
 :skolemid |2141|
 :pattern ( (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@59 $Heap@@66 this@@114) ($IsGoodHeap $Heap@@66))
))))
(assert (forall (($o@@98 T@U) ) (! (= ($Is refType $o@@98 Tclass._module.Universe?)  (or (= $o@@98 null) (implements$_module.Universe (dtype $o@@98))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@98 Tclass._module.Universe?))
)))
(assert (forall (($o@@99 T@U) ) (! (= ($Is refType $o@@99 Tclass._module.Object?)  (or (= $o@@99 null) (implements$_module.Object (dtype $o@@99))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@99 Tclass._module.Object?))
)))
(assert (forall (($o@@100 T@U) ) (! (= ($Is refType $o@@100 Tclass._module.OwnedObject?)  (or (= $o@@100 null) (implements$_module.OwnedObject (dtype $o@@100))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@100 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@39 T@U) ($o@@101 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@101 null)) (not true)) ($Is refType $o@@101 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@101) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@101) _module.Universe.content)) (TSet Tclass._module.Object) $h@@39))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@101) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@60 T@U) ($Heap@@67 T@U) (this@@115 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@60 $Heap@@67 this@@115) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@60) ($IsGoodHeap $Heap@@67)) ($HeapSucc $prevHeap@@60 $Heap@@67)) (and (or (not (= this@@115 null)) (not true)) (and ($Is refType this@@115 Tclass._module.OwnedObject) ($IsAlloc refType this@@115 Tclass._module.OwnedObject $prevHeap@@60)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 this@@115) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 this@@115) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@60 $Heap@@67 this@@115)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@60 $Heap@@67 this@@115)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 this@@115) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 this@@115) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@60 $Heap@@67 this@@115) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 (_module.Object.universe this@@115)) _module.Universe.content)) ($Box refType |o#0@@8|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 |o#0@@8|) _module.OwnedObject.owner)) this@@115))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 |o#0@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#0@@8|) _module.OwnedObject.owner)) this@@115)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |1334|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#0@@8|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 |o#0@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 (_module.Object.universe this@@115)) _module.Universe.content)) ($Box refType |o#0@@8|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 this@@115) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 this@@115) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@60 this@@115) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 this@@115) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_07CounterThreadOwnershipdfy.343:22|
 :skolemid |1336|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@60 $Heap@@67 this@@115) ($IsGoodHeap $Heap@@67))
))))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@61 T@U) ($Heap@@68 T@U) (this@@116 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv2#canCall| $prevHeap@@61 $Heap@@68 this@@116) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@61) ($IsGoodHeap $Heap@@68)) ($HeapSucc $prevHeap@@61 $Heap@@68)) (and (or (not (= this@@116 null)) (not true)) (and ($Is refType this@@116 Tclass._module.AtomicCounter) ($IsAlloc refType this@@116 Tclass._module.AtomicCounter $prevHeap@@61)))))) (=> (_module.AtomicCounter.userInv2 $prevHeap@@61 $Heap@@68 this@@116) (_module.AtomicCounter.localUserInv2 $prevHeap@@61 $Heap@@68 this@@116)))
 :qid |_07CounterThreadOwnershipdfy.504:22|
 :skolemid |1696|
 :pattern ( (_module.AtomicCounter.userInv2 $prevHeap@@61 $Heap@@68 this@@116))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@62 T@U) ($Heap@@69 T@U) (this@@117 T@U) ) (!  (=> (or (|_module.Remaining.userInv2#canCall| $prevHeap@@62 $Heap@@69 this@@117) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@62) ($IsGoodHeap $Heap@@69)) ($HeapSucc $prevHeap@@62 $Heap@@69)) (and (or (not (= this@@117 null)) (not true)) (and ($Is refType this@@117 Tclass._module.Remaining) ($IsAlloc refType this@@117 Tclass._module.Remaining $prevHeap@@62)))))) (=> (_module.Remaining.userInv2 $prevHeap@@62 $Heap@@69 this@@117) (_module.Remaining.localUserInv2 $prevHeap@@62 $Heap@@69 this@@117)))
 :qid |_07CounterThreadOwnershipdfy.565:22|
 :skolemid |1934|
 :pattern ( (_module.Remaining.userInv2 $prevHeap@@62 $Heap@@69 this@@117))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@63 T@U) ($Heap@@70 T@U) (this@@118 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv2#canCall| $prevHeap@@63 $Heap@@70 this@@118) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@63) ($IsGoodHeap $Heap@@70)) ($HeapSucc $prevHeap@@63 $Heap@@70)) (and (or (not (= this@@118 null)) (not true)) (and ($Is refType this@@118 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@118 Tclass._module.IncrementerMethod $prevHeap@@63)))))) (=> (_module.IncrementerMethod.userInv2 $prevHeap@@63 $Heap@@70 this@@118) (_module.IncrementerMethod.localUserInv2 $prevHeap@@63 $Heap@@70 this@@118)))
 :qid |_07CounterThreadOwnershipdfy.689:22|
 :skolemid |2184|
 :pattern ( (_module.IncrementerMethod.userInv2 $prevHeap@@63 $Heap@@70 this@@118))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@64 T@U) ($Heap@@71 T@U) (this@@119 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@64 $Heap@@71 this@@119) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@64) ($IsGoodHeap $Heap@@71)) ($HeapSucc $prevHeap@@64 $Heap@@71)) (and (or (not (= this@@119 null)) (not true)) (and ($Is refType this@@119 Tclass._module.OwnedObject) ($IsAlloc refType this@@119 Tclass._module.OwnedObject $prevHeap@@64)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@64 $Heap@@71 this@@119) (_module.OwnedObject.localUserInv2 $prevHeap@@64 $Heap@@71 this@@119)))
 :qid |_07CounterThreadOwnershipdfy.388:22|
 :skolemid |1403|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@64 $Heap@@71 this@@119))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@72 T@U) (this@@120 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@72 this@@120) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@72) (and (or (not (= this@@120 null)) (not true)) (and ($Is refType this@@120 Tclass._module.AtomicCounter) ($IsAlloc refType this@@120 Tclass._module.AtomicCounter $Heap@@72)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv#canCall| $Heap@@72 this@@120)) (= (_module.AtomicCounter.userInv $Heap@@72 this@@120)  (and true (_module.AtomicCounter.localUserInv $Heap@@72 this@@120)))))
 :qid |_07CounterThreadOwnershipdfy.497:19|
 :skolemid |1683|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@72 this@@120) ($IsGoodHeap $Heap@@72))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@73 T@U) (this@@121 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@73 this@@121) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@73) (and (or (not (= this@@121 null)) (not true)) (and ($Is refType this@@121 Tclass._module.Remaining) ($IsAlloc refType this@@121 Tclass._module.Remaining $Heap@@73)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Remaining.localUserInv#canCall| $Heap@@73 this@@121)) (= (_module.Remaining.userInv $Heap@@73 this@@121)  (and true (_module.Remaining.localUserInv $Heap@@73 this@@121)))))
 :qid |_07CounterThreadOwnershipdfy.558:19|
 :skolemid |1921|
 :pattern ( (_module.Remaining.userInv $Heap@@73 this@@121) ($IsGoodHeap $Heap@@73))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@74 T@U) (this@@122 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@74 this@@122) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@74) (and (or (not (= this@@122 null)) (not true)) (and ($Is refType this@@122 Tclass._module.Thread) ($IsAlloc refType this@@122 Tclass._module.Thread $Heap@@74)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@74 this@@122)) (= (_module.Thread.localInv $Heap@@74 this@@122)  (and true (_module.Object.baseInv $Heap@@74 this@@122)))))
 :qid |_07CounterThreadOwnershipdfy.284:19|
 :skolemid |1088|
 :pattern ( (_module.Thread.localInv $Heap@@74 this@@122) ($IsGoodHeap $Heap@@74))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@75 T@U) (this@@123 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@75 this@@123) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@75) (and (or (not (= this@@123 null)) (not true)) (and ($Is refType this@@123 Tclass._module.Thread) ($IsAlloc refType this@@123 Tclass._module.Thread $Heap@@75)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@75 this@@123)) (= (_module.Thread.inv $Heap@@75 this@@123)  (and true (_module.Thread.localInv $Heap@@75 this@@123)))))
 :qid |_07CounterThreadOwnershipdfy.287:19|
 :skolemid |1096|
 :pattern ( (_module.Thread.inv $Heap@@75 this@@123) ($IsGoodHeap $Heap@@75))
))))
(assert (forall (($h@@40 T@U) ($o@@102 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@102 null)) (not true)) ($Is refType $o@@102 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@102) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@102) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@65 T@U) ($Heap@@76 T@U) (this@@124 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@65 $Heap@@76 this@@124) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@65) ($IsGoodHeap $Heap@@76)) ($HeapSucc $prevHeap@@65 $Heap@@76)) (and (or (not (= this@@124 null)) (not true)) (and ($Is refType this@@124 Tclass._module.Universe) ($IsAlloc refType this@@124 Tclass._module.Universe $prevHeap@@65)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@65 $Heap@@76 this@@124)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@124) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@124) _module.Universe.content))) (forall ((|o#0@@9| T@U) ) (!  (=> (and ($Is refType |o#0@@9| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@124) _module.Universe.content)) ($Box refType |o#0@@9|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@124) _module.Universe.content)) ($Box refType |o#0@@9|)))) (not ($IsAllocBox ($Box refType |o#0@@9|) Tclass._module.Object $prevHeap@@65)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |534|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@124) _module.Universe.content)) ($Box refType |o#0@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@124) _module.Universe.content)) ($Box refType |o#0@@9|)))
))) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@124) _module.Universe.content)) ($Box refType |o#1@@1|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |535|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@124) _module.Universe.content)) ($Box refType |o#1@@1|)))
)))))
 :qid |_07CounterThreadOwnershipdfy.51:22|
 :skolemid |537|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@65 $Heap@@76 this@@124) ($IsGoodHeap $Heap@@76))
))))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@66 T@U) ($Heap@@77 T@U) (this@@125 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@66 $Heap@@77 this@@125 |running#0@@2|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@66) ($IsGoodHeap $Heap@@77)) ($HeapSucc $prevHeap@@66 $Heap@@77)) (and (or (not (= this@@125 null)) (not true)) (and ($Is refType this@@125 Tclass._module.Universe) ($IsAlloc refType this@@125 Tclass._module.Universe $prevHeap@@66)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@66 $Heap@@77 this@@125) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@66 $Heap@@77 this@@125) (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@66 this@@125) (=> (_module.Universe.globalBaseInv $prevHeap@@66 this@@125) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@77 this@@125) (=> (_module.Universe.globalBaseInv $Heap@@77 this@@125) (forall ((|o#0@@10| T@U) ) (!  (=> ($Is refType |o#0@@10| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#0@@10|)) (|_module.Object.transitiveInv2#canCall| $prevHeap@@66 $Heap@@77 |o#0@@10|)))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |550|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@66 $Heap@@77 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#0@@10|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@66 $Heap@@77 this@@125 |running#0@@2|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@66 $Heap@@77 this@@125) (_module.Universe.globalBaseInv $prevHeap@@66 this@@125)) (_module.Universe.globalBaseInv $Heap@@77 this@@125)) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#0@@11|))) (_module.Object.transitiveInv2 $prevHeap@@66 $Heap@@77 |o#0@@11|))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |548|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@66 $Heap@@77 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#0@@11|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#1@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@66)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 |o#1@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_07CounterThreadOwnershipdfy.76:16|
 :skolemid |549|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 |o#1@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 |o#1@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@125) _module.Universe.content)) ($Box refType |o#1@@2|)))
))))))
 :qid |_07CounterThreadOwnershipdfy.67:22|
 :skolemid |552|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@66 $Heap@@77 this@@125 |running#0@@2|) ($IsGoodHeap $Heap@@77))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun this@@126 () T@U)
(declare-fun |last##0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call2formal@res#0@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@@78 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |running#0@@3| () T@U)
(declare-fun call0formal@previous$Heap@0@@0 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |$rhs#1_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.IncrementerMethod.Statement8)
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
 (=> (= (ControlFlow 0 0) 47) (let ((anon3_correct  (and (=> (= (ControlFlow 0 2) (- 0 41)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.OwnedObject.nonvolatileVersion))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.OwnedObject.nonvolatileVersion)) (=> (= |last##0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@126) _module.OwnedObject.nonvolatileVersion)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (> |call2formal@res#0@0| |last##0@0|)) (and (and (forall (($o@@103 T@U) ) (!  (=> (and (or (not (= $o@@103 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@103) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@103) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@103)))
 :qid |_07CounterThreadOwnershipdfy.406:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@103))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@126 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@126) _module.OwnedObject.nonvolatileVersion ($Box intType (int_2_U |call2formal@res#0@0|))))) ($IsGoodHeap $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (or (not (= (_module.Object.universe this@@126) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@126) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 39)) ($IsAlloc refType (_module.Object.universe this@@126) Tclass._module.Universe $Heap@@78)) (=> ($IsAlloc refType (_module.Object.universe this@@126) Tclass._module.Universe $Heap@@78) (=> (and (= call0formal@previous$Heap@0 $Heap@@78) (= call2formal@this@0 (_module.Object.universe this@@126))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall ((|o#1@@3| T@U) ) (!  (=> ($Is refType |o#1@@3| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@3|)) (=> (=> ($Is refType |o#1@@3| Tclass._module.OwnedObject) (and (forall (($o@@104 T@U) ($f@@55 T@U) ) (!  (=> (or (not (= $o@@104 null)) (not true)) (=> (= $o@@104 |o#1@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@104) $f@@55) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@104) $f@@55))))
 :qid |_07CounterThreadOwnershipdfy.153:12|
 :skolemid |785|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@104) $f@@55))
)) (forall ((|x#2| T@U) ) (!  (=> (and ($Is refType |x#2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@3|)) _module.Universe.content)) ($Box refType |x#2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.owner)) |o#1@@3|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2|) _module.OwnedObject.owner)) |o#1@@3|)))
 :qid |_07CounterThreadOwnershipdfy.154:20|
 :skolemid |786|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@3|)) _module.Universe.content)) ($Box refType |x#2|)))
)))) (|_module.Object.transitiveInv2#canCall| call0formal@previous$Heap@0 $Heap@4 |o#1@@3|))))
 :qid |_07CounterThreadOwnershipdfy.151:20|
 :skolemid |787|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@4 |o#1@@3|))
 :pattern ( (_module.Object.universe |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@3|)))
))) (and (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@4|))) (=> (=> ($Is refType |o#1@@4| Tclass._module.OwnedObject) (and (forall (($o@@105 T@U) ($f@@56 T@U) ) (!  (=> (or (not (= $o@@105 null)) (not true)) (=> (= $o@@105 |o#1@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@105) $f@@56) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@105) $f@@56))))
 :qid |_07CounterThreadOwnershipdfy.153:12|
 :skolemid |788|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@105) $f@@56))
)) (forall ((|x#2@@0| T@U) ) (!  (=> (and ($Is refType |x#2@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@4|)) _module.Universe.content)) ($Box refType |x#2@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@4|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@4|)))
 :qid |_07CounterThreadOwnershipdfy.154:20|
 :skolemid |789|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@4|)) _module.Universe.content)) ($Box refType |x#2@@0|)))
)))) (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@4 |o#1@@4|)))
 :qid |_07CounterThreadOwnershipdfy.151:20|
 :skolemid |790|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@4 |o#1@@4|))
 :pattern ( (_module.Object.universe |o#1@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@4|)))
)) (= $Heap@4 $Heap@5))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (not ($Is refType |running#0@@3| Tclass._module.OwnedObject)) (= $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (or (not (= (_module.Object.universe this@@126) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@126) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 37)) ($IsAlloc refType (_module.Object.universe this@@126) Tclass._module.Universe $Heap@@78)) (=> ($IsAlloc refType (_module.Object.universe this@@126) Tclass._module.Universe $Heap@@78) (and (=> (= (ControlFlow 0 2) (- 0 36)) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@78)) (=> ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@78) (=> (and (= call0formal@previous$Heap@0@@0 $Heap@@78) (= call2formal@this@0@@0 (_module.Object.universe this@@126))) (and (=> (= (ControlFlow 0 2) (- 0 35)) ($IsAlloc refType |running#0@@3| Tclass._module.Thread call0formal@previous$Heap@0@@0)) (=> ($IsAlloc refType |running#0@@3| Tclass._module.Thread call0formal@previous$Heap@0@@0) (and (=> (= (ControlFlow 0 2) (- 0 34)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content))))))))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@12|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@12|)))) (not ($IsAllocBox ($Box refType |o#0@@12|) Tclass._module.Object call0formal@previous$Heap@0@@0)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |606|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@12|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@13|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@13|)))) (not ($IsAllocBox ($Box refType |o#0@@13|) Tclass._module.Object call0formal@previous$Heap@0@@0)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |606|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@13|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@5|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#1@@5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#1@@5|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |607|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#1@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#1@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@5|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (forall ((|o#1@@6| T@U) ) (!  (=> (and ($Is refType |o#1@@6| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@6|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#1@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#1@@6|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |607|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#1@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#1@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@6|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2|))) (and (= (_module.Object.universe |o#2|) call2formal@this@0@@0) (or (not (= |o#2| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |610|
 :pattern ( (_module.Object.universe |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|))) (and (= (_module.Object.universe |o#2@@0|) call2formal@this@0@@0) (or (not (= |o#2@@0| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |610|
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@6 call2formal@this@0@@0) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3|))) (and (= (_module.Object.universe |o#3|) call2formal@this@0@@0) (or (not (= |o#3| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |612|
 :pattern ( (_module.Object.universe |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@6 call2formal@this@0@@0) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3@@0|))) (and (= (_module.Object.universe |o#3@@0|) call2formal@this@0@@0) (or (not (= |o#3@@0| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |612|
 :pattern ( (_module.Object.universe |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#4|))) (_module.Object.transitiveInv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#4|))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |614|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#4|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#4@@0|))) (_module.Object.transitiveInv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#4@@0|))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |614|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#5|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0@@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#5|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_07CounterThreadOwnershipdfy.76:16|
 :skolemid |615|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#5|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#5@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0@@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#5@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_07CounterThreadOwnershipdfy.76:16|
 :skolemid |615|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#5@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |o#5@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#6|))) (and (= (_module.Object.universe |o#6|) call2formal@this@0@@0) (or (not (= |o#6| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |618|
 :pattern ( (_module.Object.universe |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#6|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#6@@0|))) (and (= (_module.Object.universe |o#6@@0|) call2formal@this@0@@0) (or (not (= |o#6@@0| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |618|
 :pattern ( (_module.Object.universe |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#7|))) (_module.Object.inv call0formal@previous$Heap@0@@0 |o#7|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |620|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0@@0 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#7|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (or (_module.Universe.globalInv call0formal@previous$Heap@0@@0 call2formal@this@0@@0) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#7@@0|))) (_module.Object.inv call0formal@previous$Heap@0@@0 |o#7@@0|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |620|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0@@0 |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@6 call2formal@this@0@@0) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#8|))) (and (= (_module.Object.universe |o#8|) call2formal@this@0@@0) (or (not (= |o#8| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |622|
 :pattern ( (_module.Object.universe |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#8|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 call2formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@6 call2formal@this@0@@0) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#8@@0|))) (and (= (_module.Object.universe |o#8@@0|) call2formal@this@0@@0) (or (not (= |o#8@@0| call2formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |622|
 :pattern ( (_module.Object.universe |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#9|))) (and (or (forall (($o@@106 T@U) ($f@@57 T@U) ) (!  (=> (or (not (= $o@@106 null)) (not true)) (=> (= $o@@106 |o#9|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@106) $f@@57) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 $o@@106) $f@@57))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |624|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@106) $f@@57))
)) (_module.Object.inv $Heap@6 |o#9|)) (or (forall (($o@@107 T@U) ($f@@58 T@U) ) (!  (=> (or (not (= $o@@107 null)) (not true)) (=> (= $o@@107 |o#9|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@107) $f@@58) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 $o@@107) $f@@58))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |625|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@107) $f@@58))
)) (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#9|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |626|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#9|))
 :pattern ( (_module.Object.inv $Heap@6 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#9|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (forall ((|o#9@@0| T@U) ) (!  (=> (and ($Is refType |o#9@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#9@@0|))) (and (or (forall (($o@@108 T@U) ($f@@59 T@U) ) (!  (=> (or (not (= $o@@108 null)) (not true)) (=> (= $o@@108 |o#9@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@108) $f@@59) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 $o@@108) $f@@59))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |624|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@108) $f@@59))
)) (_module.Object.inv $Heap@6 |o#9@@0|)) (or (forall (($o@@109 T@U) ($f@@60 T@U) ) (!  (=> (or (not (= $o@@109 null)) (not true)) (=> (= $o@@109 |o#9@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@109) $f@@60) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 $o@@109) $f@@60))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |625|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@109) $f@@60))
)) (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#9@@0|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |626|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#9@@0|))
 :pattern ( (_module.Object.inv $Heap@6 |o#9@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#9@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10|))))) (_module.Object.inv $Heap@6 |o#10|))
 :qid |_07CounterThreadOwnershipdfy.92:16|
 :skolemid |627|
 :pattern ( (_module.Object.inv $Heap@6 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0 |running#0@@3|) (forall ((|o#10@@0| T@U) ) (!  (=> (and ($Is refType |o#10@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10@@0|))))) (_module.Object.inv $Heap@6 |o#10@@0|))
 :qid |_07CounterThreadOwnershipdfy.92:16|
 :skolemid |627|
 :pattern ( (_module.Object.inv $Heap@6 |o#10@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#10@@0|)))
)))) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (|_module.Universe.globalInv#canCall| $Heap@6 call2formal@this@0@@0) (=> (_module.Universe.globalInv $Heap@6 call2formal@this@0@@0) (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0))) (and (|_module.Universe.globalInv#canCall| $Heap@6 call2formal@this@0@@0) (and (_module.Universe.globalInv $Heap@6 call2formal@this@0@@0) (and (_module.Universe.globalBaseInv $Heap@6 call2formal@this@0@@0) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#12|))) (_module.Object.inv $Heap@6 |o#12|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |635|
 :pattern ( (_module.Object.inv $Heap@6 |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#12|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (and (_module.Universe.globalInv2 call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0) (and (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#13|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#13|)) (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#13|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |641|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0@@0 $Heap@6 |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 call2formal@this@0@@0) _module.Universe.content)) ($Box refType |o#13|)))
)) (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0@@0 $Heap@6 call2formal@this@0@@0)))) (= $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Object.baseInv#canCall| $Heap@7 this@@126) (or (_module.Object.baseInv $Heap@7 this@@126) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType this@@126))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Object.baseInv#canCall| $Heap@7 this@@126) (or (_module.Object.baseInv $Heap@7 this@@126) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType this@@126)))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Object.baseInv#canCall| $Heap@7 this@@126) (or (_module.Object.baseInv $Heap@7 this@@126) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#23| T@U) ) (!  (=> (and ($Is refType |o#23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#23|))) (and (= (_module.Object.universe |o#23|) (_module.Object.universe this@@126)) (or (not (= |o#23| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3282|
 :pattern ( (_module.Object.universe |o#23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#23|)))
))))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Object.baseInv#canCall| $Heap@7 this@@126) (or (_module.Object.baseInv $Heap@7 this@@126) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#23@@0| T@U) ) (!  (=> (and ($Is refType |o#23@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#23@@0|))) (and (= (_module.Object.universe |o#23@@0|) (_module.Object.universe this@@126)) (or (not (= |o#23@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3282|
 :pattern ( (_module.Object.universe |o#23@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#23@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Universe.globalInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#24| T@U) ) (!  (=> (and ($Is refType |o#24| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#24|))) (and (= (_module.Object.universe |o#24|) (_module.Object.universe this@@126)) (or (not (= |o#24| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3284|
 :pattern ( (_module.Object.universe |o#24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#24|)))
))))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Universe.globalInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#24@@0| T@U) ) (!  (=> (and ($Is refType |o#24@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#24@@0|))) (and (= (_module.Object.universe |o#24@@0|) (_module.Object.universe this@@126)) (or (not (= |o#24@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3284|
 :pattern ( (_module.Object.universe |o#24@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#24@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Universe.globalInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#25| T@U) ) (!  (=> (and ($Is refType |o#25| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#25|))) (_module.Object.inv $Heap@7 |o#25|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |3286|
 :pattern ( (_module.Object.inv $Heap@7 |o#25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#25|)))
))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@7 this@@126) (or (_module.Object.objectGlobalInv $Heap@7 this@@126) (=> (|_module.Universe.globalInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#25@@0| T@U) ) (!  (=> (and ($Is refType |o#25@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#25@@0|))) (_module.Object.inv $Heap@7 |o#25@@0|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |3286|
 :pattern ( (_module.Object.inv $Heap@7 |o#25@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#25@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#26| T@U) ) (!  (=> (and ($Is refType |o#26| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26|)) (_module.Object.inv2 $Heap@@78 $Heap@7 |o#26|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |3288|
 :pattern ( (_module.Object.inv2 $Heap@@78 $Heap@7 |o#26|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26|)))
))))) (=> (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#26@@0| T@U) ) (!  (=> (and ($Is refType |o#26@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26@@0|)) (_module.Object.inv2 $Heap@@78 $Heap@7 |o#26@@0|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |3288|
 :pattern ( (_module.Object.inv2 $Heap@@78 $Heap@7 |o#26@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#26@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)))))))) (=> (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#27| T@U) ) (!  (=> (and ($Is refType |o#27| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27|)))) (not ($IsAllocBox ($Box refType |o#27|) Tclass._module.Object $Heap@@78)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |3289|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27|)))
))))))) (=> (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#27@@0| T@U) ) (!  (=> (and ($Is refType |o#27@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27@@0|)))) (not ($IsAllocBox ($Box refType |o#27@@0|) Tclass._module.Object $Heap@@78)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |3289|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#27@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#28| T@U) ) (!  (=> (and ($Is refType |o#28| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#28|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#28|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#28|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |3290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#28|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#28|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#28|)))
))))))) (=> (=> (|_module.Universe.globalInv2#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv2 $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#28@@0| T@U) ) (!  (=> (and ($Is refType |o#28@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#28@@0|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#28@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#28@@0|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |3290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#28@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#28@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#28@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@126) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@126) _module.IncrementerMethod.programCounter))) (LitInt 9)))) (=> (or (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@126) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@126) _module.IncrementerMethod.programCounter))) (LitInt 9))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content))))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#29| T@U) ) (!  (=> (and ($Is refType |o#29| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29|)))) (not ($IsAllocBox ($Box refType |o#29|) Tclass._module.Object $Heap@@78)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |3294|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#29@@0| T@U) ) (!  (=> (and ($Is refType |o#29@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29@@0|)))) (not ($IsAllocBox ($Box refType |o#29@@0|) Tclass._module.Object $Heap@@78)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |3294|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#29@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#30| T@U) ) (!  (=> (and ($Is refType |o#30| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#30|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#30|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#30|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |3295|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#30|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#30|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#30|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#30@@0| T@U) ) (!  (=> (and ($Is refType |o#30@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#30@@0|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#30@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#30@@0|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |3295|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#30@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#30@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#30@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#31| T@U) ) (!  (=> (and ($Is refType |o#31| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#31|))) (and (= (_module.Object.universe |o#31|) (_module.Object.universe this@@126)) (or (not (= |o#31| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3298|
 :pattern ( (_module.Object.universe |o#31|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#31|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#31@@0| T@U) ) (!  (=> (and ($Is refType |o#31@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#31@@0|))) (and (= (_module.Object.universe |o#31@@0|) (_module.Object.universe this@@126)) (or (not (= |o#31@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3298|
 :pattern ( (_module.Object.universe |o#31@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#31@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#32| T@U) ) (!  (=> (and ($Is refType |o#32| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#32|))) (and (= (_module.Object.universe |o#32|) (_module.Object.universe this@@126)) (or (not (= |o#32| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3300|
 :pattern ( (_module.Object.universe |o#32|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#32|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#32@@0| T@U) ) (!  (=> (and ($Is refType |o#32@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#32@@0|))) (and (= (_module.Object.universe |o#32@@0|) (_module.Object.universe this@@126)) (or (not (= |o#32@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3300|
 :pattern ( (_module.Object.universe |o#32@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#32@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#33| T@U) ) (!  (=> (and ($Is refType |o#33| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#33|))) (_module.Object.transitiveInv2 $Heap@@78 $Heap@7 |o#33|))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |3302|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@78 $Heap@7 |o#33|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#33|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#33@@0| T@U) ) (!  (=> (and ($Is refType |o#33@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#33@@0|))) (_module.Object.transitiveInv2 $Heap@@78 $Heap@7 |o#33@@0|))
 :qid |_07CounterThreadOwnershipdfy.73:16|
 :skolemid |3302|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@78 $Heap@7 |o#33@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#33@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#34| T@U) ) (!  (=> (and ($Is refType |o#34| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#34|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@78)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#34|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_07CounterThreadOwnershipdfy.76:16|
 :skolemid |3303|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#34|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#34|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@@78 $Heap@7 (_module.Object.universe this@@126) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#34@@0| T@U) ) (!  (=> (and ($Is refType |o#34@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#34@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@78)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#34@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_07CounterThreadOwnershipdfy.76:16|
 :skolemid |3303|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#34@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#34@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#34@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@@78 (_module.Object.universe this@@126)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#35| T@U) ) (!  (=> (and ($Is refType |o#35| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#35|))) (and (= (_module.Object.universe |o#35|) (_module.Object.universe this@@126)) (or (not (= |o#35| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3306|
 :pattern ( (_module.Object.universe |o#35|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#35|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@@78 (_module.Object.universe this@@126)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#35@@0| T@U) ) (!  (=> (and ($Is refType |o#35@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#35@@0|))) (and (= (_module.Object.universe |o#35@@0|) (_module.Object.universe this@@126)) (or (not (= |o#35@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3306|
 :pattern ( (_module.Object.universe |o#35@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#35@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#36| T@U) ) (!  (=> (and ($Is refType |o#36| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#36|))) (_module.Object.inv $Heap@@78 |o#36|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |3308|
 :pattern ( (_module.Object.inv $Heap@@78 |o#36|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#36|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@@78 (_module.Object.universe this@@126)) (or (_module.Universe.globalInv $Heap@@78 (_module.Object.universe this@@126)) (forall ((|o#36@@0| T@U) ) (!  (=> (and ($Is refType |o#36@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#36@@0|))) (_module.Object.inv $Heap@@78 |o#36@@0|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |3308|
 :pattern ( (_module.Object.inv $Heap@@78 |o#36@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#36@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#37| T@U) ) (!  (=> (and ($Is refType |o#37| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#37|))) (and (= (_module.Object.universe |o#37|) (_module.Object.universe this@@126)) (or (not (= |o#37| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3310|
 :pattern ( (_module.Object.universe |o#37|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#37|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 (_module.Object.universe this@@126)) (or (_module.Universe.globalBaseInv $Heap@7 (_module.Object.universe this@@126)) (forall ((|o#37@@0| T@U) ) (!  (=> (and ($Is refType |o#37@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#37@@0|))) (and (= (_module.Object.universe |o#37@@0|) (_module.Object.universe this@@126)) (or (not (= |o#37@@0| (_module.Object.universe this@@126))) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |3310|
 :pattern ( (_module.Object.universe |o#37@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#37@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (forall ((|o#38| T@U) ) (!  (=> (and ($Is refType |o#38| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#38|))) (and (or (forall (($o@@110 T@U) ($f@@61 T@U) ) (!  (=> (or (not (= $o@@110 null)) (not true)) (=> (= $o@@110 |o#38|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@110) $f@@61) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 $o@@110) $f@@61))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |3312|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@110) $f@@61))
)) (_module.Object.inv $Heap@7 |o#38|)) (or (forall (($o@@111 T@U) ($f@@62 T@U) ) (!  (=> (or (not (= $o@@111 null)) (not true)) (=> (= $o@@111 |o#38|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@111) $f@@62) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 $o@@111) $f@@62))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |3313|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@111) $f@@62))
)) (_module.Object.inv2 $Heap@@78 $Heap@7 |o#38|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |3314|
 :pattern ( (_module.Object.inv2 $Heap@@78 $Heap@7 |o#38|))
 :pattern ( (_module.Object.inv $Heap@7 |o#38|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#38|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (forall ((|o#38@@0| T@U) ) (!  (=> (and ($Is refType |o#38@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#38@@0|))) (and (or (forall (($o@@112 T@U) ($f@@63 T@U) ) (!  (=> (or (not (= $o@@112 null)) (not true)) (=> (= $o@@112 |o#38@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@112) $f@@63) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 $o@@112) $f@@63))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |3312|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@112) $f@@63))
)) (_module.Object.inv $Heap@7 |o#38@@0|)) (or (forall (($o@@113 T@U) ($f@@64 T@U) ) (!  (=> (or (not (= $o@@113 null)) (not true)) (=> (= $o@@113 |o#38@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@113) $f@@64) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 $o@@113) $f@@64))))
 :qid |_07CounterThreadOwnershipdfy.90:49|
 :skolemid |3313|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@113) $f@@64))
)) (_module.Object.inv2 $Heap@@78 $Heap@7 |o#38@@0|))))
 :qid |_07CounterThreadOwnershipdfy.90:16|
 :skolemid |3314|
 :pattern ( (_module.Object.inv2 $Heap@@78 $Heap@7 |o#38@@0|))
 :pattern ( (_module.Object.inv $Heap@7 |o#38@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#38@@0|)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Universe.legalTransition#canCall| $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (or (_module.Universe.legalTransition $Heap@@78 $Heap@7 (_module.Object.universe this@@126) |running#0@@3|) (forall ((|o#39| T@U) ) (!  (=> (and ($Is refType |o#39| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#39|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#39|))))) (_module.Object.inv $Heap@7 |o#39|))
 :qid |_07CounterThreadOwnershipdfy.92:16|
 :skolemid |3315|
 :pattern ( (_module.Object.inv $Heap@7 |o#39|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#39|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |o#39|)))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon4_Else_correct  (=> (<= 10 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.IncrementerMethod.i)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.IncrementerMethod.programCounter))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.IncrementerMethod.programCounter)) (=> (= |$rhs#1_0@0| (LitInt 9)) (=> (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.IncrementerMethod.programCounter ($Box intType (int_2_U |$rhs#1_0@0|))))) ($IsGoodHeap $Heap@1)) (and (= $Heap@2 $Heap@1) (= (ControlFlow 0 44) 2))) anon3_correct)))))))
(let ((anon4_Then_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.IncrementerMethod.i))) 10) (and (=> (= (ControlFlow 0 42) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.IncrementerMethod.programCounter))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@126 _module.IncrementerMethod.programCounter)) (=> (= |$rhs#0_0@0| (LitInt 2)) (=> (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.IncrementerMethod.programCounter ($Box intType (int_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@0)) (and (= $Heap@2 $Heap@0) (= (ControlFlow 0 42) 2))) anon3_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#52| null $Heap@@78 alloc this@@126)) (and (=> (= (ControlFlow 0 46) 42) anon4_Then_correct) (=> (= (ControlFlow 0 46) 44) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@78) ($IsHeapAnchor $Heap@@78)) (and (or (not (= this@@126 null)) (not true)) (and ($Is refType this@@126 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@126 Tclass._module.IncrementerMethod $Heap@@78)))) (=> (and (and (and (and ($Is refType |running#0@@3| Tclass._module.Thread) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@78)) (= 15 $FunctionContextHeight)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@@78 this@@126) (and (_module.Object.objectGlobalInv $Heap@@78 this@@126) (and (_module.Object.baseInv $Heap@@78 this@@126) (_module.Universe.globalInv $Heap@@78 (_module.Object.universe this@@126)))))) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 (_module.Object.universe this@@126)) _module.Universe.content)) ($Box refType |running#0@@3|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.OwnedObject.owner)) |running#0@@3|)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@126) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (ControlFlow 0 47) 46)))) anon0_correct))))
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
