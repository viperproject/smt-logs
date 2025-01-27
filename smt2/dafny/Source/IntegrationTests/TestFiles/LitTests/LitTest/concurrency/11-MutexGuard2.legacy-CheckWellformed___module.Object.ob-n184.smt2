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
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$nonvolatileVersion () T@U)
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
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun |_module.OwnedObject.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.objectGlobalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.volatileOwns (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Universe? Tagclass._module.Object class._module.Universe? Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$Thread tytagFamily$Object tytagFamily$OwnedObject field$content field$owner field$nonvolatileVersion)
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
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap $Heap this) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.OwnedObject) ($IsAlloc refType this Tclass._module.OwnedObject $prevHeap)))))) (and (and (|_module.OwnedObject.localInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.localInv2 $prevHeap $Heap this) (and (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.sequenceInv2 $prevHeap $Heap this) (and (|_module.OwnedObject.userInv2#canCall| $prevHeap $Heap this) (=> (_module.OwnedObject.userInv2 $prevHeap $Heap this) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (and (|_module.Object.localInv#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))) (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object $prevHeap) (|_module.Object.localInv2#canCall| $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap $Heap this)  (and (and (and (_module.OwnedObject.localInv2 $prevHeap $Heap this) (_module.OwnedObject.sequenceInv2 $prevHeap $Heap this)) (_module.OwnedObject.userInv2 $prevHeap $Heap this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (not true)) (and (and (and (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.OwnedObject.owner)))) (_module.Object.localInv $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object $prevHeap) (_module.Object.localInv2 $prevHeap $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)))))))))))
 :qid |_11MutexGuard2legacydfy.371:22|
 :skolemid |1573|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.OwnedObject) ($IsAlloc refType this@@0 Tclass._module.OwnedObject $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@0 this@@0)) (= (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@0 this@@0)))))
 :qid |_11MutexGuard2legacydfy.323:19|
 :skolemid |1508|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@1) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this@@1) (=> (or (not (= |o#0| this@@1)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@1 |o#0|) (=> (_module.Object.baseFieldsInv $Heap@@1 |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap@@1 |o#0|)))))))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |630|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@1 this@@1)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this@@1) (or (not (= |o#0@@0| this@@1)) (not true))) (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|)) (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |629|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_11MutexGuard2legacydfy.17:19|
 :skolemid |631|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1520|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h0 this@@2) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1521|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1608|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1609|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@4) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Universe) ($IsAlloc refType this@@4 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@4) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@4) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Universe.content)) ($Box refType |o#0@@1|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0@@1|)))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |643|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Universe.content)) ($Box refType |o#0@@1|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@4)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@4) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Universe.content)) ($Box refType |o#0@@2|))) (_module.Object.inv $Heap@@2 |o#0@@2|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |642|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))))
 :qid |_11MutexGuard2legacydfy.22:19|
 :skolemid |644|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@4) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Thread?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is refType $o@@1 Tclass._module.Thread?))
)))
(assert (forall (($h T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1494|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2435|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2439|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@3 this@@5) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@3 this@@5) (_module.Thread.baseFieldsInv $Heap@@3 this@@5)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1217|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@5) ($Is refType this@@5 Tclass._module.Thread) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@5) (_module.Thread.baseFieldsInv $Heap@@3 this@@5) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@4 this@@6) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@4 this@@6) (_module.OwnedObject.baseFieldsInv $Heap@@4 this@@6)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1509|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@6) ($Is refType this@@6 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@6) (_module.OwnedObject.baseFieldsInv $Heap@@4 this@@6) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@5 this@@7) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@5 this@@7) (_module.Thread.localInv $Heap@@5 this@@7)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1231|
 :pattern ( (_module.Object.localInv $Heap@@5 this@@7) ($Is refType this@@7 Tclass._module.Thread) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.localInv $Heap@@5 this@@7) (_module.Thread.localInv $Heap@@5 this@@7) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@6 this@@8) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@6 this@@8) (_module.OwnedObject.localInv $Heap@@6 this@@8)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1531|
 :pattern ( (_module.Object.localInv $Heap@@6 this@@8) ($Is refType this@@8 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.localInv $Heap@@6 this@@8) (_module.OwnedObject.localInv $Heap@@6 this@@8) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@7 this@@9) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@7 this@@9) (_module.Thread.inv $Heap@@7 this@@9)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1243|
 :pattern ( (_module.Object.inv $Heap@@7 this@@9) ($Is refType this@@9 Tclass._module.Thread) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.inv $Heap@@7 this@@9) (_module.Thread.inv $Heap@@7 this@@9) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@8 this@@10) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@8 this@@10) (_module.OwnedObject.inv $Heap@@8 this@@10)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1544|
 :pattern ( (_module.Object.inv $Heap@@8 this@@10) ($Is refType this@@10 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.inv $Heap@@8 this@@10) (_module.OwnedObject.inv $Heap@@8 this@@10) ($IsGoodHeap $Heap@@8))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@11 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Universe) ($IsAlloc refType this@@11 Tclass._module.Universe $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@3) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |661|
)) (= (_module.Universe.globalInv2 $prevHeap@@2 $h0@@1 this@@11) (_module.Universe.globalInv2 $prevHeap@@2 $h1@@1 this@@11))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |662|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.globalInv2 $prevHeap@@2 $h1@@1 this@@11))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@4) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1080|
)) (= (_module.Object.objectGlobalInv2 $prevHeap@@3 $h0@@2 this@@12) (_module.Object.objectGlobalInv2 $prevHeap@@3 $h1@@2 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1081|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.objectGlobalInv2 $prevHeap@@3 $h1@@2 this@@12))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1145|
)) (= (_module.Object.localInv2 $prevHeap@@4 $h0@@3 this@@13) (_module.Object.localInv2 $prevHeap@@4 $h1@@3 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1146|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.localInv2 $prevHeap@@4 $h1@@3 this@@13))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Object) ($IsAlloc refType this@@14 Tclass._module.Object $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@6) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1153|
)) (= (_module.Object.sequenceInv2 $prevHeap@@5 $h0@@4 this@@14) (_module.Object.sequenceInv2 $prevHeap@@5 $h1@@4 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1154|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.sequenceInv2 $prevHeap@@5 $h1@@4 this@@14))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1157|
)) (= (_module.Object.inv2 $prevHeap@@6 $h0@@5 this@@15) (_module.Object.inv2 $prevHeap@@6 $h1@@5 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1158|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.inv2 $prevHeap@@6 $h1@@5 this@@15))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Thread) ($IsAlloc refType this@@16 Tclass._module.Thread $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1250|
)) (= (_module.Thread.localInv2 $prevHeap@@7 $h0@@6 this@@16) (_module.Thread.localInv2 $prevHeap@@7 $h1@@6 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1251|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Thread.localInv2 $prevHeap@@7 $h1@@6 this@@16))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Thread) ($IsAlloc refType this@@17 Tclass._module.Thread $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1257|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@8 $h0@@7 this@@17) (_module.Thread.sequenceInv2 $prevHeap@@8 $h1@@7 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Thread.sequenceInv2 $prevHeap@@8 $h1@@7 this@@17))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Thread) ($IsAlloc refType this@@18 Tclass._module.Thread $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1264|
)) (= (_module.Thread.inv2 $prevHeap@@9 $h0@@8 this@@18) (_module.Thread.inv2 $prevHeap@@9 $h1@@8 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1265|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.inv2 $prevHeap@@9 $h1@@8 this@@18))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@11) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1552|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@10 $h0@@9 this@@19) (_module.OwnedObject.localInv2 $prevHeap@@10 $h1@@9 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1553|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.localInv2 $prevHeap@@10 $h1@@9 this@@19))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@12) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1560|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h0@@10 this@@20) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@10 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1561|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@10 this@@20))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@13) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@13) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1569|
)) (= (_module.OwnedObject.inv2 $prevHeap@@12 $h0@@11 this@@21) (_module.OwnedObject.inv2 $prevHeap@@12 $h1@@11 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1570|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.inv2 $prevHeap@@12 $h1@@11 this@@21))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@14) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@14) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1616|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@13 $h0@@12 this@@22) (_module.OwnedObject.localUserInv2 $prevHeap@@13 $h1@@12 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1617|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.localUserInv2 $prevHeap@@13 $h1@@12 this@@22))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.OwnedObject) ($IsAlloc refType this@@23 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@15 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@15) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@15) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1624|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@14 $h0@@13 this@@23) (_module.OwnedObject.userInv2 $prevHeap@@14 $h1@@13 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1625|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.userInv2 $prevHeap@@14 $h1@@13 this@@23))
)))
(assert (forall (($o@@16 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.Universe? $h@@6)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@17 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@17 Tclass._module.Object? $h@@7)  (or (= $o@@17 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@17) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@18 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.Thread? $h@@8)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@19 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $h@@9))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@24) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@9)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@9 this@@24) (=> (_module.Object.baseFieldsInv $Heap@@9 this@@24) (|_module.Universe.globalBaseInv#canCall| $Heap@@9 (_module.Object.universe this@@24))))) (= (_module.Object.objectGlobalBaseInv $Heap@@9 this@@24)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (_module.Object.baseFieldsInv $Heap@@9 this@@24)) (_module.Universe.globalBaseInv $Heap@@9 (_module.Object.universe this@@24))))))
 :qid |_11MutexGuard2legacydfy.202:19|
 :skolemid |1071|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@9 this@@24) ($IsGoodHeap $Heap@@9))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@10 this@@25) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Thread) ($IsAlloc refType this@@25 Tclass._module.Thread $Heap@@10)))))) (= (_module.Thread.baseFieldsInv $Heap@@10 this@@25) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.260:19|
 :skolemid |1216|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@10 this@@25) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@11 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@15 $Heap@@11 this@@26) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@15) ($IsGoodHeap $Heap@@11)) ($HeapSucc $prevHeap@@15 $Heap@@11)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Thread) ($IsAlloc refType this@@26 Tclass._module.Thread $prevHeap@@15)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@15 $Heap@@11 this@@26) (=> (_module.Thread.localInv2 $prevHeap@@15 $Heap@@11 this@@26) (|_module.Thread.sequenceInv2#canCall| $prevHeap@@15 $Heap@@11 this@@26))) (= (_module.Thread.inv2 $prevHeap@@15 $Heap@@11 this@@26)  (and (_module.Thread.localInv2 $prevHeap@@15 $Heap@@11 this@@26) (_module.Thread.sequenceInv2 $prevHeap@@15 $Heap@@11 this@@26)))))
 :qid |_11MutexGuard2legacydfy.278:22|
 :skolemid |1268|
 :pattern ( (_module.Thread.inv2 $prevHeap@@15 $Heap@@11 this@@26) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@20 T@U) ($f@@14 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@14))  (=> (and (or (not (= $o@@20 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@20) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@20) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2455|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@20 $f@@14))
)))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@12 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv2#canCall| $prevHeap@@16 $Heap@@12 this@@27) (and (< 15 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@16) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@16 $Heap@@12)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Object) ($IsAlloc refType this@@27 Tclass._module.Object $prevHeap@@16)))) (_module.Object.objectGlobalInv $prevHeap@@16 this@@27)))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@12 this@@27) (=> (_module.Object.objectGlobalBaseInv $Heap@@12 this@@27) (|_module.Universe.globalInv2#canCall| $prevHeap@@16 $Heap@@12 (_module.Object.universe this@@27)))) (= (_module.Object.objectGlobalInv2 $prevHeap@@16 $Heap@@12 this@@27)  (and (_module.Object.objectGlobalBaseInv $Heap@@12 this@@27) (_module.Universe.globalInv2 $prevHeap@@16 $Heap@@12 (_module.Object.universe this@@27))))))
 :qid |_11MutexGuard2legacydfy.208:22|
 :skolemid |1084|
 :pattern ( (_module.Object.objectGlobalInv2 $prevHeap@@16 $Heap@@12 this@@27) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@13 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@17 $Heap@@13 this@@28) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@17) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@17 $Heap@@13)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Thread) ($IsAlloc refType this@@28 Tclass._module.Thread $prevHeap@@17)))))) (=> (_module.Thread.inv2 $prevHeap@@17 $Heap@@13 this@@28) (and (_module.Thread.localInv2 $prevHeap@@17 $Heap@@13 this@@28) (_module.Thread.sequenceInv2 $prevHeap@@17 $Heap@@13 this@@28))))
 :qid |_11MutexGuard2legacydfy.278:22|
 :skolemid |1266|
 :pattern ( (_module.Thread.inv2 $prevHeap@@17 $Heap@@13 this@@28))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@14 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@18 $Heap@@14 this@@29) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@18) ($IsGoodHeap $Heap@@14)) ($HeapSucc $prevHeap@@18 $Heap@@14)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.OwnedObject) ($IsAlloc refType this@@29 Tclass._module.OwnedObject $prevHeap@@18)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@18 $Heap@@14 this@@29) (and (_module.OwnedObject.localInv2 $prevHeap@@18 $Heap@@14 this@@29) (_module.OwnedObject.sequenceInv2 $prevHeap@@18 $Heap@@14 this@@29))))
 :qid |_11MutexGuard2legacydfy.371:22|
 :skolemid |1571|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@18 $Heap@@14 this@@29))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@15 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@19 $Heap@@15 this@@30) (and (< 11 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@15)) ($HeapSucc $prevHeap@@19 $Heap@@15)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Object) ($IsAlloc refType this@@30 Tclass._module.Object $prevHeap@@19)))))) (=> (_module.Object.inv2 $prevHeap@@19 $Heap@@15 this@@30) (and (_module.Object.localInv2 $prevHeap@@19 $Heap@@15 this@@30) (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@15 this@@30))))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1159|
 :pattern ( (_module.Object.inv2 $prevHeap@@19 $Heap@@15 this@@30))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@16 this@@31) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.OwnedObject) ($IsAlloc refType this@@31 Tclass._module.OwnedObject $Heap@@16)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@16 this@@31) (=> (_module.Object.objectGlobalBaseInv $Heap@@16 this@@31) (|_module.OwnedObject.localUserInv#canCall| $Heap@@16 this@@31))) (= (_module.OwnedObject.localInv $Heap@@16 this@@31)  (and (_module.Object.objectGlobalBaseInv $Heap@@16 this@@31) (_module.OwnedObject.localUserInv $Heap@@16 this@@31)))))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1530|
 :pattern ( (_module.OwnedObject.localInv $Heap@@16 this@@31) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@17 this@@32) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.OwnedObject) ($IsAlloc refType this@@32 Tclass._module.OwnedObject $Heap@@17)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@17 this@@32) (=> (_module.OwnedObject.localInv $Heap@@17 this@@32) (|_module.OwnedObject.userInv#canCall| $Heap@@17 this@@32))) (= (_module.OwnedObject.inv $Heap@@17 this@@32)  (and (_module.OwnedObject.localInv $Heap@@17 this@@32) (_module.OwnedObject.userInv $Heap@@17 this@@32)))))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1543|
 :pattern ( (_module.OwnedObject.inv $Heap@@17 this@@32) ($IsGoodHeap $Heap@@17))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@10 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@21 null)) (not true)) ($Is refType $o@@21 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@21) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@21) Tclass._module.Universe $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@21) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) ($Is refType $o@@22 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@22) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@22))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@18 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@20 $Heap@@18 this@@33) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@20 $Heap@@18 this@@33) (_module.Thread.localInv2 $prevHeap@@20 $Heap@@18 this@@33)))
 :qid |_11MutexGuard2legacydfy.248:22|
 :skolemid |1255|
 :pattern ( (_module.Object.localInv2 $prevHeap@@20 $Heap@@18 this@@33) ($Is refType this@@33 Tclass._module.Thread) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.Object.localInv2 $prevHeap@@20 $Heap@@18 this@@33) (_module.Thread.localInv2 $prevHeap@@20 $Heap@@18 this@@33) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@19 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@21 $Heap@@19 this@@34) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@34 null)) (not true)) ($Is refType this@@34 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@19 this@@34) (_module.Thread.sequenceInv2 $prevHeap@@21 $Heap@@19 this@@34)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1262|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@19 this@@34) ($Is refType this@@34 Tclass._module.Thread) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@19 this@@34) (_module.Thread.sequenceInv2 $prevHeap@@21 $Heap@@19 this@@34) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@20 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@22 $Heap@@20 this@@35) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@35 null)) (not true)) ($Is refType this@@35 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@22 $Heap@@20 this@@35) (_module.Thread.inv2 $prevHeap@@22 $Heap@@20 this@@35)))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1269|
 :pattern ( (_module.Object.inv2 $prevHeap@@22 $Heap@@20 this@@35) ($Is refType this@@35 Tclass._module.Thread) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.Object.inv2 $prevHeap@@22 $Heap@@20 this@@35) (_module.Thread.inv2 $prevHeap@@22 $Heap@@20 this@@35) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@21 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@23 $Heap@@21 this@@36) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@36 null)) (not true)) ($Is refType this@@36 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@23 $Heap@@21 this@@36) (_module.OwnedObject.localInv2 $prevHeap@@23 $Heap@@21 this@@36)))
 :qid |_11MutexGuard2legacydfy.248:22|
 :skolemid |1557|
 :pattern ( (_module.Object.localInv2 $prevHeap@@23 $Heap@@21 this@@36) ($Is refType this@@36 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.Object.localInv2 $prevHeap@@23 $Heap@@21 this@@36) (_module.OwnedObject.localInv2 $prevHeap@@23 $Heap@@21 this@@36) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@22 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@24 $Heap@@22 this@@37) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@37 null)) (not true)) ($Is refType this@@37 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@24 $Heap@@22 this@@37) (_module.OwnedObject.sequenceInv2 $prevHeap@@24 $Heap@@22 this@@37)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1565|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@24 $Heap@@22 this@@37) ($Is refType this@@37 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@24 $Heap@@22 this@@37) (_module.OwnedObject.sequenceInv2 $prevHeap@@24 $Heap@@22 this@@37) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@23 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@25 $Heap@@23 this@@38) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@25 $Heap@@23 this@@38) (_module.OwnedObject.inv2 $prevHeap@@25 $Heap@@23 this@@38)))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1574|
 :pattern ( (_module.Object.inv2 $prevHeap@@25 $Heap@@23 this@@38) ($Is refType this@@38 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@23))
 :pattern ( (_module.Object.inv2 $prevHeap@@25 $Heap@@23 this@@38) (_module.OwnedObject.inv2 $prevHeap@@25 $Heap@@23 this@@38) ($IsGoodHeap $Heap@@23))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@4 Tclass._module.Thread))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( ($IsBox bx@@9 Tclass._module.Thread?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Thread)  (and ($Is refType |c#0@@5| Tclass._module.Thread?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.OwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@24 this@@39) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Object) ($IsAlloc refType this@@39 Tclass._module.Object $Heap@@24)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@39)) _module.Universe.content)) ($Box refType this@@39)) (|_module.Universe.globalInv#canCall| $Heap@@24 (_module.Object.universe this@@39))) (= (_module.Object.objectGlobalInv $Heap@@24 this@@39)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@39)) _module.Universe.content)) ($Box refType this@@39)) (_module.Universe.globalInv $Heap@@24 (_module.Object.universe this@@39))))))
 :qid |_11MutexGuard2legacydfy.205:19|
 :skolemid |1078|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@24 this@@39) ($IsGoodHeap $Heap@@24))
))))
(assert (forall (($o@@23 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@23 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2437|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@24 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@24 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@25 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@26 $Heap@@25 this@@40) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@26) ($IsGoodHeap $Heap@@25)) ($HeapSucc $prevHeap@@26 $Heap@@25)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Thread) ($IsAlloc refType this@@40 Tclass._module.Thread $prevHeap@@26)))))) (= (_module.Thread.localInv2 $prevHeap@@26 $Heap@@25 this@@40) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.272:22|
 :skolemid |1254|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@26 $Heap@@25 this@@40) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@26 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@27 $Heap@@26 this@@41) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@27) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@27 $Heap@@26)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Thread) ($IsAlloc refType this@@41 Tclass._module.Thread $prevHeap@@27)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@27 $Heap@@26 this@@41) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.275:22|
 :skolemid |1261|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@27 $Heap@@26 this@@41) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@27 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@28 $Heap@@27 this@@42) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@28) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@28 $Heap@@27)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.OwnedObject) ($IsAlloc refType this@@42 Tclass._module.OwnedObject $prevHeap@@28)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@28 $Heap@@27 this@@42)) (= (_module.OwnedObject.localInv2 $prevHeap@@28 $Heap@@27 this@@42)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@28 $Heap@@27 this@@42)))))
 :qid |_11MutexGuard2legacydfy.345:22|
 :skolemid |1556|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@28 $Heap@@27 this@@42) ($IsGoodHeap $Heap@@27))
))))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@25 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (or (= $o@@25 this@@43) (= $o@@25 (_module.Object.universe this@@43)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@25) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@25) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1133|
)) (= (_module.Object.baseFieldsInv $h0@@14 this@@43) (_module.Object.baseFieldsInv $h1@@14 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1134|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Object.baseFieldsInv $h1@@14 this@@43))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@44 null)) (not true)) ($Is refType this@@44 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@26 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (or (= $o@@26 this@@44) (= $o@@26 (_module.Object.universe this@@44)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@26) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@26) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1212|
)) (= (_module.Thread.baseFieldsInv $h0@@15 this@@44) (_module.Thread.baseFieldsInv $h1@@15 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1213|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Thread.baseFieldsInv $h1@@15 this@@44))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@27 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (or (= $o@@27 this@@45) (= $o@@27 (_module.Object.universe this@@45)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@27) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@27) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1504|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@16 this@@45) (_module.OwnedObject.baseFieldsInv $h1@@16 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1505|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.baseFieldsInv $h1@@16 this@@45))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@28 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (or (= $o@@28 this@@46) (= $o@@28 (_module.Object.universe this@@46)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@28) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@28) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1602|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@17 this@@46) (_module.OwnedObject.baseUserFieldsInv $h1@@17 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1603|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.baseUserFieldsInv $h1@@17 this@@46))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@28 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@29 $Heap@@28 this@@47) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@29) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@29 $Heap@@28)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.OwnedObject) ($IsAlloc refType this@@47 Tclass._module.OwnedObject $prevHeap@@29)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@29 $Heap@@28 this@@47))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@29 $Heap@@28 this@@47))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|)))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@29 $Heap@@28 this@@47)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@29 $Heap@@28 this@@47)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@47) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@47) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_11MutexGuard2legacydfy.349:22|
 :skolemid |1564|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@29 $Heap@@28 this@@47) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@29 this@@48) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.Object) ($IsAlloc refType this@@48 Tclass._module.Object $Heap@@29)))))) (_module.Object.triggerAxioms $Heap@@29 this@@48))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1089|
 :pattern ( (_module.Object.triggerAxioms $Heap@@29 this@@48))
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
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TBool) (and (= ($Box boolType ($Unbox boolType bx@@12)) bx@@12) ($Is boolType ($Unbox boolType bx@@12) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@12 TBool))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@30 this@@49) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Thread) ($IsAlloc refType this@@49 Tclass._module.Thread $Heap@@30)))))) (=> (_module.Thread.localInv $Heap@@30 this@@49) (_module.Object.objectGlobalBaseInv $Heap@@30 this@@49)))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1228|
 :pattern ( (_module.Thread.localInv $Heap@@30 this@@49))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@31 this@@50) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.OwnedObject) ($IsAlloc refType this@@50 Tclass._module.OwnedObject $Heap@@31)))))) (=> (_module.OwnedObject.localInv $Heap@@31 this@@50) (_module.Object.objectGlobalBaseInv $Heap@@31 this@@50)))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1528|
 :pattern ( (_module.OwnedObject.localInv $Heap@@31 this@@50))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@32 this@@51) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Object) ($IsAlloc refType this@@51 Tclass._module.Object $Heap@@32)))))) (=> (_module.Object.localInv $Heap@@32 this@@51) (_module.Object.objectGlobalBaseInv $Heap@@32 this@@51)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1141|
 :pattern ( (_module.Object.localInv $Heap@@32 this@@51))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@33 this@@52) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Thread) ($IsAlloc refType this@@52 Tclass._module.Thread $Heap@@33)))))) (=> (_module.Thread.inv $Heap@@33 this@@52) (_module.Thread.localInv $Heap@@33 this@@52)))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1240|
 :pattern ( (_module.Thread.inv $Heap@@33 this@@52))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@34 this@@53) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.OwnedObject) ($IsAlloc refType this@@53 Tclass._module.OwnedObject $Heap@@34)))))) (=> (_module.OwnedObject.userInv $Heap@@34 this@@53) (_module.OwnedObject.localUserInv $Heap@@34 this@@53)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1622|
 :pattern ( (_module.OwnedObject.userInv $Heap@@34 this@@53))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@35 this@@54) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $Heap@@35)))))) (=> (_module.OwnedObject.inv $Heap@@35 this@@54) (_module.OwnedObject.localInv $Heap@@35 this@@54)))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1541|
 :pattern ( (_module.OwnedObject.inv $Heap@@35 this@@54))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@36 this@@55) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Object) ($IsAlloc refType this@@55 Tclass._module.Object $Heap@@36)))))) (=> (_module.Object.inv $Heap@@36 this@@55) (_module.Object.localInv $Heap@@36 this@@55)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1151|
 :pattern ( (_module.Object.inv $Heap@@36 this@@55))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@37 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@30 $Heap@@37 this@@56) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@30) ($IsGoodHeap $Heap@@37)) ($HeapSucc $prevHeap@@30 $Heap@@37)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.OwnedObject) ($IsAlloc refType this@@56 Tclass._module.OwnedObject $prevHeap@@30)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@30 this@@56) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@56) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@30 $Heap@@37 this@@56)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@30 $Heap@@37 this@@56)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@30 this@@56) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@56) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@37 this@@56)))))
 :qid |_11MutexGuard2legacydfy.331:22|
 :skolemid |1524|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@30 $Heap@@37 this@@56) ($IsGoodHeap $Heap@@37))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@13) ($IsAllocBox bx@@13 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@11 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@29) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@29) _module.OwnedObject.nonvolatileVersion)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@29) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@30 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (= $o@@30 this@@57)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@30) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@30) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1087|
)) (= (_module.Object.triggerAxioms $h0@@18 this@@57) (_module.Object.triggerAxioms $h1@@18 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1088|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Object.triggerAxioms $h1@@18 this@@57))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@31 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (or (= $o@@31 this@@58) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 this@@58) _module.Universe.content)) ($Box refType $o@@31)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@31) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@31) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |625|
)) (= (_module.Universe.globalBaseInv $h0@@19 this@@58) (_module.Universe.globalBaseInv $h1@@19 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |626|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Universe.globalBaseInv $h1@@19 this@@58))
)))
(assert (forall (($h@@12 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@32 null)) (not true)) ($Is refType $o@@32 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@32) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@32) _module.OwnedObject.owner)) Tclass._module.Object $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@32) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Universe) ($IsAlloc refType this@@59 Tclass._module.Universe $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@33 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@33) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@33) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |638|
)) (= (_module.Universe.globalInv $h0@@20 this@@59) (_module.Universe.globalInv $h1@@20 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |639|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Universe.globalInv $h1@@20 this@@59))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Object) ($IsAlloc refType this@@60 Tclass._module.Object $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@34 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@34) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@34) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1067|
)) (= (_module.Object.objectGlobalBaseInv $h0@@21 this@@60) (_module.Object.objectGlobalBaseInv $h1@@21 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1068|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Object.objectGlobalBaseInv $h1@@21 this@@60))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.Object) ($IsAlloc refType this@@61 Tclass._module.Object $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@35 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@35) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@35) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1074|
)) (= (_module.Object.objectGlobalInv $h0@@22 this@@61) (_module.Object.objectGlobalInv $h1@@22 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1075|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.objectGlobalInv $h1@@22 this@@61))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Object) ($IsAlloc refType this@@62 Tclass._module.Object $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@36 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@36) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@36) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1139|
)) (= (_module.Object.localInv $h0@@23 this@@62) (_module.Object.localInv $h1@@23 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1140|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Object.localInv $h1@@23 this@@62))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Object) ($IsAlloc refType this@@63 Tclass._module.Object $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@37 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@37) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@37) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1149|
)) (= (_module.Object.inv $h0@@24 this@@63) (_module.Object.inv $h1@@24 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1150|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.inv $h1@@24 this@@63))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@64 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.Thread) ($IsAlloc refType this@@64 Tclass._module.Thread $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@38 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@38) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@38) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |1226|
)) (= (_module.Thread.localInv $h0@@25 this@@64) (_module.Thread.localInv $h1@@25 this@@64))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1227|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Thread.localInv $h1@@25 this@@64))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@65 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Thread) ($IsAlloc refType this@@65 Tclass._module.Thread $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@39 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@39) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@39) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1238|
)) (= (_module.Thread.inv $h0@@26 this@@65) (_module.Thread.inv $h1@@26 this@@65))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1239|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Thread.inv $h1@@26 this@@65))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@66 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.OwnedObject) ($IsAlloc refType this@@66 Tclass._module.OwnedObject $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@40 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@40) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@40) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1526|
)) (= (_module.OwnedObject.localInv $h0@@27 this@@66) (_module.OwnedObject.localInv $h1@@27 this@@66))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1527|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedObject.localInv $h1@@27 this@@66))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@67 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.OwnedObject) ($IsAlloc refType this@@67 Tclass._module.OwnedObject $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@41 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@41) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@41) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@41) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.inv $h0@@28 this@@67) (_module.OwnedObject.inv $h1@@28 this@@67))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.OwnedObject.inv $h1@@28 this@@67))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@68 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.OwnedObject) ($IsAlloc refType this@@68 Tclass._module.OwnedObject $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@42 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@42) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@42) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@42) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1612|
)) (= (_module.OwnedObject.localUserInv $h0@@29 this@@68) (_module.OwnedObject.localUserInv $h1@@29 this@@68))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1613|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.OwnedObject.localUserInv $h1@@29 this@@68))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@69 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.OwnedObject) ($IsAlloc refType this@@69 Tclass._module.OwnedObject $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@43 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@43) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@43) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1620|
)) (= (_module.OwnedObject.userInv $h0@@30 this@@69) (_module.OwnedObject.userInv $h1@@30 this@@69))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1621|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.OwnedObject.userInv $h1@@30 this@@69))
)))
(assert (forall ((bx@@14 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@5)))
)))
(assert (forall (($o@@44 T@U) ) (!  (=> ($Is refType $o@@44 Tclass._module.Thread?) ($Is refType $o@@44 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2436|
 :pattern ( ($Is refType $o@@44 Tclass._module.Thread?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2434|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall (($o@@45 T@U) ) (!  (=> ($Is refType $o@@45 Tclass._module.OwnedObject?) ($Is refType $o@@45 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@45 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.OwnedObject?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2438|
 :pattern ( ($IsBox bx@@16 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@13 T@U) ($o@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@46 null)) (not true)) ($Is refType $o@@46 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@46) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1496|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@46) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@47 T@U) ) (! (= ($Is refType $o@@47 Tclass._module.Universe?)  (or (= $o@@47 null) (implements$_module.Universe (dtype $o@@47))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@47 Tclass._module.Universe?))
)))
(assert (forall (($o@@48 T@U) ) (! (= ($Is refType $o@@48 Tclass._module.Object?)  (or (= $o@@48 null) (implements$_module.Object (dtype $o@@48))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@48 Tclass._module.Object?))
)))
(assert (forall (($o@@49 T@U) ) (! (= ($Is refType $o@@49 Tclass._module.OwnedObject?)  (or (= $o@@49 null) (implements$_module.OwnedObject (dtype $o@@49))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@49 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@14 T@U) ($o@@50 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@50 null)) (not true)) ($Is refType $o@@50 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@50) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@50) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@50) _module.Universe.content)))
)))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@38 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@31 $Heap@@38 this@@70) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@38)) ($HeapSucc $prevHeap@@31 $Heap@@38)) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.Universe) ($IsAlloc refType this@@70 Tclass._module.Universe $prevHeap@@31)))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@70) _module.Universe.content)) ($Box refType |o#0@@3|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@70) _module.Universe.content)) ($Box refType |o#0@@3|)) (|_module.Object.inv2#canCall| $prevHeap@@31 $Heap@@38 |o#0@@3|))))
 :qid |_11MutexGuard2legacydfy.33:12|
 :skolemid |666|
 :pattern ( (_module.Object.inv2 $prevHeap@@31 $Heap@@38 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@70) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@70) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@31 $Heap@@38 this@@70) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@70) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@70) _module.Universe.content)) ($Box refType |o#0@@4|)) (_module.Object.inv2 $prevHeap@@31 $Heap@@38 |o#0@@4|)))
 :qid |_11MutexGuard2legacydfy.33:12|
 :skolemid |665|
 :pattern ( (_module.Object.inv2 $prevHeap@@31 $Heap@@38 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@70) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 this@@70) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))))
 :qid |_11MutexGuard2legacydfy.32:22|
 :skolemid |667|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@31 $Heap@@38 this@@70) ($IsGoodHeap $Heap@@38))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@39 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@32 $Heap@@39 this@@71) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@39)) ($HeapSucc $prevHeap@@32 $Heap@@39)) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.OwnedObject) ($IsAlloc refType this@@71 Tclass._module.OwnedObject $prevHeap@@32)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@32 $Heap@@39 this@@71) (_module.OwnedObject.localUserInv2 $prevHeap@@32 $Heap@@39 this@@71)))
 :qid |_11MutexGuard2legacydfy.410:22|
 :skolemid |1626|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@32 $Heap@@39 this@@71))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@40 this@@72) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Thread) ($IsAlloc refType this@@72 Tclass._module.Thread $Heap@@40)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@40 this@@72)) (= (_module.Thread.localInv $Heap@@40 this@@72)  (and true (_module.Object.objectGlobalBaseInv $Heap@@40 this@@72)))))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1230|
 :pattern ( (_module.Thread.localInv $Heap@@40 this@@72) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@41 this@@73) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Thread) ($IsAlloc refType this@@73 Tclass._module.Thread $Heap@@41)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@41 this@@73)) (= (_module.Thread.inv $Heap@@41 this@@73)  (and true (_module.Thread.localInv $Heap@@41 this@@73)))))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1242|
 :pattern ( (_module.Thread.inv $Heap@@41 this@@73) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@42 this@@74) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Object) ($IsAlloc refType this@@74 Tclass._module.Object $Heap@@42)))))) (= (_module.Object.triggerAxioms $Heap@@42 this@@74)  (and (or ($Is refType this@@74 Tclass._module.OwnedObject) ($Is refType this@@74 Tclass._module.Thread)) (not (and ($Is refType this@@74 Tclass._module.OwnedObject) ($Is refType this@@74 Tclass._module.Thread))))))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1091|
 :pattern ( (_module.Object.triggerAxioms $Heap@@42 this@@74) ($IsGoodHeap $Heap@@42))
))))
(assert (forall (($h@@15 T@U) ($o@@51 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@51 null)) (not true)) ($Is refType $o@@51 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@51) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@51) _module.Universe.content)))
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
(declare-fun $Heap@@43 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@75 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Object.objectGlobalInv2)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon5_correct  (=> (= (_module.Object.objectGlobalInv2 $Heap@@43 current$Heap this@@75)  (and (_module.Object.objectGlobalBaseInv current$Heap this@@75) (_module.Universe.globalInv2 $Heap@@43 current$Heap (_module.Object.universe this@@75)))) (=> (and (and (|_module.Object.objectGlobalBaseInv#canCall| current$Heap this@@75) (=> (_module.Object.objectGlobalBaseInv current$Heap this@@75) (|_module.Universe.globalInv2#canCall| $Heap@@43 current$Heap (_module.Object.universe this@@75)))) ($Is boolType (bool_2_U (_module.Object.objectGlobalInv2 $Heap@@43 current$Heap this@@75)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@1|)))))))
(let ((anon8_Else_correct  (=> (not (_module.Object.objectGlobalBaseInv current$Heap this@@75)) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 8) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (_module.Object.objectGlobalBaseInv current$Heap this@@75) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= (_module.Object.universe this@@75) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@75) null)) (not true)) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@75)) Tclass._module.Universe? current$Heap) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType (_module.Object.universe this@@75) Tclass._module.Universe $Heap@@43)) (=> ($IsAlloc refType (_module.Object.universe this@@75) Tclass._module.Universe $Heap@@43) (=> (and (and (= |b$reqreads#1@0| (forall (($o@@52 T@U) ($f@@32 T@U) ) (!  (=> (and (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@52) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@52) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@52 $f@@32)))
 :qid |_11MutexGuard2legacydfy.208:117|
 :skolemid |1086|
))) (|_module.Universe.globalInv2#canCall| $Heap@@43 current$Heap (_module.Object.universe this@@75))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 5) 3))) anon5_correct)))))))))
(let ((anon7_Else_correct  (=> ($IsAllocBox ($Box refType this@@75) Tclass._module.Object? current$Heap) (=> (and (= |b$reqreads#0@0| (forall (($o@@53 T@U) ($f@@33 T@U) ) (!  (=> (and (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@53) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@53) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@53 $f@@33)))
 :qid |_11MutexGuard2legacydfy.208:83|
 :skolemid |1085|
))) (|_module.Object.objectGlobalBaseInv#canCall| current$Heap this@@75)) (and (=> (= (ControlFlow 0 9) 5) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#8| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType this@@75 Tclass._module.Object $Heap@@43)) (=> ($IsAlloc refType this@@75 Tclass._module.Object $Heap@@43) (=> (and (|_module.Object.objectGlobalInv#canCall| $Heap@@43 this@@75) (_module.Object.objectGlobalInv $Heap@@43 this@@75)) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@43) ($IsHeapAnchor $Heap@@43)) (=> (and (and (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.Object) ($IsAlloc refType this@@75 Tclass._module.Object previous$Heap))) (= 15 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@43) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 12) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
