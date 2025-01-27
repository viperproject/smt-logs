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
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
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
(declare-fun |Set#Card| (T@U) Int)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Universe.globalSequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#29| (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
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
(declare-fun |_module.Universe.globalSequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Universe? Tagclass._module.Object class._module.Universe? Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$Thread tytagFamily$Object tytagFamily$OwnedObject field$content field$owner field$nonvolatileVersion)
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
(assert (= (Ctor SetType) 7))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $h0)))) (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@0 $h0 this@@0 |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |681|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h0 this@@0 |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |682|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@1 $Heap@@0 this@@1) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@1 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $prevHeap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@1 this@@1) (=> (_module.Universe.globalBaseInv $prevHeap@@1 this@@1) (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@1 $Heap@@0 this@@1)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@1 this@@1) (_module.Universe.globalBaseInv $Heap@@0 this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@1)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |676|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_11MutexGuard2legacydfy.36:22|
 :skolemid |677|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@1 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@1 this@@2) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedObject) ($IsAlloc refType this@@2 Tclass._module.OwnedObject $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@1 this@@2)) (= (_module.OwnedObject.baseFieldsInv $Heap@@1 this@@2)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@1 this@@2)))))
 :qid |_11MutexGuard2legacydfy.323:19|
 :skolemid |1508|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@3) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@2)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|)) (=> (= (_module.Object.universe |o#0@@0|) this@@3) (=> (or (not (= |o#0@@0| this@@3)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@2 |o#0@@0|) (=> (_module.Object.baseFieldsInv $Heap@@2 |o#0@@0|) (|_module.Object.triggerAxioms#canCall| $Heap@@2 |o#0@@0|)))))))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |630|
 :pattern ( (_module.Object.triggerAxioms $Heap@@2 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@2 this@@3)  (and true (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (and (and (= (_module.Object.universe |o#0@@1|) this@@3) (or (not (= |o#0@@1| this@@3)) (not true))) (_module.Object.baseFieldsInv $Heap@@2 |o#0@@1|)) (_module.Object.triggerAxioms $Heap@@2 |o#0@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |629|
 :pattern ( (_module.Object.triggerAxioms $Heap@@2 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_11MutexGuard2legacydfy.17:19|
 :skolemid |631|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@2 this@@3) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($prevHeap@@2 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1520|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h0@@0 this@@4) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h1@@0 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1521|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h1@@0 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1608|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@1 this@@5) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@1 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1609|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@1 this@@5))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@3 this@@6) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $Heap@@3)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@3 this@@6) (=> (_module.Universe.globalBaseInv $Heap@@3 this@@6) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv#canCall| $Heap@@3 |o#0@@2|)))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |643|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (= (_module.Universe.globalInv $Heap@@3 this@@6)  (and (_module.Universe.globalBaseInv $Heap@@3 this@@6) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|))) (_module.Object.inv $Heap@@3 |o#0@@3|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |642|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_11MutexGuard2legacydfy.22:19|
 :skolemid |644|
 :pattern ( (_module.Universe.globalInv $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Thread?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is refType $o@@2 Tclass._module.Thread?))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@7 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe $h0@@2)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@4 $h0@@2 this@@7 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |716|
)) (= (_module.Universe.legalTransition $prevHeap@@4 $h0@@2 this@@7 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@4 $h1@@2 this@@7 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |717|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.legalTransition $prevHeap@@4 $h1@@2 this@@7 |running#0@@0|))
)))
(assert (forall (($h T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@4) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1494|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@4) _module.OwnedObject.nonvolatileVersion)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@4 this@@8) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@4 this@@8) (_module.Thread.baseFieldsInv $Heap@@4 this@@8)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1217|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@8) ($Is refType this@@8 Tclass._module.Thread) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@8) (_module.Thread.baseFieldsInv $Heap@@4 this@@8) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@5 this@@9) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@5 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@5 this@@9)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1509|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@5 this@@9) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@6 this@@10) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@6 this@@10) (_module.Thread.localInv $Heap@@6 this@@10)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1231|
 :pattern ( (_module.Object.localInv $Heap@@6 this@@10) ($Is refType this@@10 Tclass._module.Thread) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.localInv $Heap@@6 this@@10) (_module.Thread.localInv $Heap@@6 this@@10) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@7 this@@11) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@7 this@@11) (_module.OwnedObject.localInv $Heap@@7 this@@11)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1531|
 :pattern ( (_module.Object.localInv $Heap@@7 this@@11) ($Is refType this@@11 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.localInv $Heap@@7 this@@11) (_module.OwnedObject.localInv $Heap@@7 this@@11) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@8 this@@12) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@8 this@@12) (_module.Thread.inv $Heap@@8 this@@12)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1243|
 :pattern ( (_module.Object.inv $Heap@@8 this@@12) ($Is refType this@@12 Tclass._module.Thread) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.inv $Heap@@8 this@@12) (_module.Thread.inv $Heap@@8 this@@12) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@9 this@@13) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@9 this@@13) (_module.OwnedObject.inv $Heap@@9 this@@13)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1544|
 :pattern ( (_module.Object.inv $Heap@@9 this@@13) ($Is refType this@@13 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.inv $Heap@@9 this@@13) (_module.OwnedObject.inv $Heap@@9 this@@13) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@10 T@U) (this@@14 T@U) (|running#0@@1| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@5 $Heap@@10 this@@14 |running#0@@1|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@10)) ($HeapSucc $prevHeap@@5 $Heap@@10)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Universe) ($IsAlloc refType this@@14 Tclass._module.Universe $prevHeap@@5)))) ($Is SetType |running#0@@1| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@5 $Heap@@10 this@@14) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $Heap@@10 this@@14) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@14) _module.Universe.content)) ($Box refType |o#0@@4|))) (=> (not (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@5 null)) (not true)) (=> (= $o@@5 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 $o@@5) $f@@3))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |689|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 $o@@5) $f@@3))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@5 $Heap@@10 |o#0@@4|))))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |690|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@5 $Heap@@10 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@14) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@5 $Heap@@10 this@@14 |running#0@@1|)  (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $Heap@@10 this@@14) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#0@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@14) _module.Universe.content)) ($Box refType |o#0@@5|)))) (or (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@6 null)) (not true)) (=> (= $o@@6 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 $o@@6) $f@@4))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |685|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 $o@@6) $f@@4))
)) (_module.Object.sequenceInv2 $prevHeap@@5 $Heap@@10 |o#0@@5|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |686|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@5 $Heap@@10 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@14) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#0@@5|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@5)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@14) _module.Universe.content)) ($Box refType |o#1|)))
))))))
 :qid |_11MutexGuard2legacydfy.53:22|
 :skolemid |693|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@5 $Heap@@10 this@@14 |running#0@@1|) ($IsGoodHeap $Heap@@10))
))))
(assert (forall (($prevHeap@@6 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Universe) ($IsAlloc refType this@@15 Tclass._module.Universe $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |650|
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@6 $h0@@3 this@@15) (_module.Universe.globalSequenceInv2 $prevHeap@@6 $h1@@3 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |651|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.globalSequenceInv2 $prevHeap@@6 $h1@@3 this@@15))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Universe) ($IsAlloc refType this@@16 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |661|
)) (= (_module.Universe.globalInv2 $prevHeap@@7 $h0@@4 this@@16) (_module.Universe.globalInv2 $prevHeap@@7 $h1@@4 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |662|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv2 $prevHeap@@7 $h1@@4 this@@16))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Universe) ($IsAlloc refType this@@17 Tclass._module.Universe $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |672|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h0@@5 this@@17) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@5 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |673|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@5 this@@17))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1145|
)) (= (_module.Object.localInv2 $prevHeap@@9 $h0@@6 this@@18) (_module.Object.localInv2 $prevHeap@@9 $h1@@6 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1146|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.localInv2 $prevHeap@@9 $h1@@6 this@@18))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Object) ($IsAlloc refType this@@19 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@11) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1153|
)) (= (_module.Object.sequenceInv2 $prevHeap@@10 $h0@@7 this@@19) (_module.Object.sequenceInv2 $prevHeap@@10 $h1@@7 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1154|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.sequenceInv2 $prevHeap@@10 $h1@@7 this@@19))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@12) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1157|
)) (= (_module.Object.inv2 $prevHeap@@11 $h0@@8 this@@20) (_module.Object.inv2 $prevHeap@@11 $h1@@8 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1158|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.inv2 $prevHeap@@11 $h1@@8 this@@20))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Thread) ($IsAlloc refType this@@21 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@13) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@13) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1250|
)) (= (_module.Thread.localInv2 $prevHeap@@12 $h0@@9 this@@21) (_module.Thread.localInv2 $prevHeap@@12 $h1@@9 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1251|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.localInv2 $prevHeap@@12 $h1@@9 this@@21))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@14) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@14) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1257|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@13 $h0@@10 this@@22) (_module.Thread.sequenceInv2 $prevHeap@@13 $h1@@10 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.sequenceInv2 $prevHeap@@13 $h1@@10 this@@22))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@15 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@15) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@15) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1264|
)) (= (_module.Thread.inv2 $prevHeap@@14 $h0@@11 this@@23) (_module.Thread.inv2 $prevHeap@@14 $h1@@11 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1265|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.inv2 $prevHeap@@14 $h1@@11 this@@23))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.OwnedObject) ($IsAlloc refType this@@24 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@16 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@16) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@16) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1552|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@15 $h0@@12 this@@24) (_module.OwnedObject.localInv2 $prevHeap@@15 $h1@@12 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1553|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.localInv2 $prevHeap@@15 $h1@@12 this@@24))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.OwnedObject) ($IsAlloc refType this@@25 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@17 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@17) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@17) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1560|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@16 $h0@@13 this@@25) (_module.OwnedObject.sequenceInv2 $prevHeap@@16 $h1@@13 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1561|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.sequenceInv2 $prevHeap@@16 $h1@@13 this@@25))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@18 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@18) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@18) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1569|
)) (= (_module.OwnedObject.inv2 $prevHeap@@17 $h0@@14 this@@26) (_module.OwnedObject.inv2 $prevHeap@@17 $h1@@14 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1570|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.inv2 $prevHeap@@17 $h1@@14 this@@26))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@19 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@19) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@19) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1616|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@18 $h0@@15 this@@27) (_module.OwnedObject.localUserInv2 $prevHeap@@18 $h1@@15 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1617|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.localUserInv2 $prevHeap@@18 $h1@@15 this@@27))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@20 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@20) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@20) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1624|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@19 $h0@@16 this@@28) (_module.OwnedObject.userInv2 $prevHeap@@19 $h1@@16 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1625|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.userInv2 $prevHeap@@19 $h1@@16 this@@28))
)))
(assert (forall (($o@@21 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@21 Tclass._module.Universe? $h@@6)  (or (= $o@@21 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@21) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@22 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@22 Tclass._module.Object? $h@@7)  (or (= $o@@22 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@23 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@23 Tclass._module.Thread? $h@@8)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@24 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $h@@9))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@11 this@@29) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Object) ($IsAlloc refType this@@29 Tclass._module.Object $Heap@@11)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@29)) _module.Universe.content)) ($Box refType this@@29)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@11 this@@29) (=> (_module.Object.baseFieldsInv $Heap@@11 this@@29) (|_module.Universe.globalBaseInv#canCall| $Heap@@11 (_module.Object.universe this@@29))))) (= (_module.Object.objectGlobalBaseInv $Heap@@11 this@@29)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@29)) _module.Universe.content)) ($Box refType this@@29)) (_module.Object.baseFieldsInv $Heap@@11 this@@29)) (_module.Universe.globalBaseInv $Heap@@11 (_module.Object.universe this@@29))))))
 :qid |_11MutexGuard2legacydfy.202:19|
 :skolemid |1071|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@11 this@@29) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@12 T@U) (this@@30 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@20 $Heap@@12 this@@30 |running#0@@2|) (and (< 14 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@20 $Heap@@12)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Universe) ($IsAlloc refType this@@30 Tclass._module.Universe $prevHeap@@20)))) ($Is refType |running#0@@2| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@20 $Heap@@12 this@@30 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@20 $Heap@@12 this@@30 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@20 this@@30) (=> (_module.Universe.globalInv $prevHeap@@20 this@@30) (and (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@6|)) (and (=> (not (forall (($o@@25 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@25) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@25) $f@@19))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |724|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@25) $f@@19))
))) (|_module.Object.inv#canCall| $Heap@@12 |o#0@@6|)) (=> (or (forall (($o@@26 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@26) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@26) $f@@20))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |726|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@26) $f@@20))
)) (_module.Object.inv $Heap@@12 |o#0@@6|)) (=> (not (forall (($o@@27 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@27) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@27) $f@@21))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |725|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@27) $f@@21))
))) (|_module.Object.inv2#canCall| $prevHeap@@20 $Heap@@12 |o#0@@6|))))))
 :qid |_11MutexGuard2legacydfy.77:16|
 :skolemid |727|
 :pattern ( (_module.Object.inv2 $prevHeap@@20 $Heap@@12 |o#0@@6|))
 :pattern ( (_module.Object.inv $Heap@@12 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@6|)))
)) (=> (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (or (forall (($o@@28 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@28) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@28) $f@@22))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |729|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@28) $f@@22))
)) (_module.Object.inv $Heap@@12 |o#0@@7|)) (or (forall (($o@@29 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@29) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@29) $f@@23))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |730|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@29) $f@@23))
)) (_module.Object.inv2 $prevHeap@@20 $Heap@@12 |o#0@@7|))))
 :qid |_11MutexGuard2legacydfy.77:16|
 :skolemid |731|
 :pattern ( (_module.Object.inv2 $prevHeap@@20 $Heap@@12 |o#0@@7|))
 :pattern ( (_module.Object.inv $Heap@@12 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@7|)))
)) (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@30) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#1@@0|)))) (|_module.Object.inv#canCall| $Heap@@12 |o#1@@0|)))
 :qid |_11MutexGuard2legacydfy.79:16|
 :skolemid |728|
 :pattern ( (_module.Object.inv $Heap@@12 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@30) _module.Universe.content)) ($Box refType |o#1@@0|)))
)))))))) (= (_module.Universe.legalTransition $prevHeap@@20 $Heap@@12 this@@30 |running#0@@2|)  (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@20 $Heap@@12 this@@30 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (_module.Universe.globalInv $prevHeap@@20 this@@30)) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@8|))) (and (or (forall (($o@@30 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 |o#0@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@30) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@30) $f@@24))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |720|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@30) $f@@24))
)) (_module.Object.inv $Heap@@12 |o#0@@8|)) (or (forall (($o@@31 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 |o#0@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@31) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 $o@@31) $f@@25))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |721|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 $o@@31) $f@@25))
)) (_module.Object.inv2 $prevHeap@@20 $Heap@@12 |o#0@@8|))))
 :qid |_11MutexGuard2legacydfy.77:16|
 :skolemid |722|
 :pattern ( (_module.Object.inv2 $prevHeap@@20 $Heap@@12 |o#0@@8|))
 :pattern ( (_module.Object.inv $Heap@@12 |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#0@@8|)))
))) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@30) _module.Universe.content)) ($Box refType |o#1@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#1@@1|))))) (_module.Object.inv $Heap@@12 |o#1@@1|))
 :qid |_11MutexGuard2legacydfy.79:16|
 :skolemid |723|
 :pattern ( (_module.Object.inv $Heap@@12 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.Universe.content)) ($Box refType |o#1@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@30) _module.Universe.content)) ($Box refType |o#1@@1|)))
))))))
 :qid |_11MutexGuard2legacydfy.73:22|
 :skolemid |732|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@20 $Heap@@12 this@@30 |running#0@@2|) ($IsGoodHeap $Heap@@12))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@13 this@@31) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Thread) ($IsAlloc refType this@@31 Tclass._module.Thread $Heap@@13)))))) (= (_module.Thread.baseFieldsInv $Heap@@13 this@@31) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.260:19|
 :skolemid |1216|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@13 this@@31) ($IsGoodHeap $Heap@@13))
))))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@14 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@21 $Heap@@14 this@@32) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@14)) ($HeapSucc $prevHeap@@21 $Heap@@14)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Thread) ($IsAlloc refType this@@32 Tclass._module.Thread $prevHeap@@21)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@21 $Heap@@14 this@@32) (=> (_module.Thread.localInv2 $prevHeap@@21 $Heap@@14 this@@32) (|_module.Thread.sequenceInv2#canCall| $prevHeap@@21 $Heap@@14 this@@32))) (= (_module.Thread.inv2 $prevHeap@@21 $Heap@@14 this@@32)  (and (_module.Thread.localInv2 $prevHeap@@21 $Heap@@14 this@@32) (_module.Thread.sequenceInv2 $prevHeap@@21 $Heap@@14 this@@32)))))
 :qid |_11MutexGuard2legacydfy.278:22|
 :skolemid |1268|
 :pattern ( (_module.Thread.inv2 $prevHeap@@21 $Heap@@14 this@@32) ($IsGoodHeap $Heap@@14))
))))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#29| |l#0| |l#1| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0|) (and (|Set#IsMember| |l#1| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_11MutexGuard2legacydfy.256:7|
 :skolemid |2458|
 :pattern ( (MapType0Select BoxType boolType (|lambda#29| |l#0| |l#1| |l#2|) |$y#1|))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@15 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@22 $Heap@@15 this@@33) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@15)) ($HeapSucc $prevHeap@@22 $Heap@@15)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Thread) ($IsAlloc refType this@@33 Tclass._module.Thread $prevHeap@@22)))))) (=> (_module.Thread.inv2 $prevHeap@@22 $Heap@@15 this@@33) (and (_module.Thread.localInv2 $prevHeap@@22 $Heap@@15 this@@33) (_module.Thread.sequenceInv2 $prevHeap@@22 $Heap@@15 this@@33))))
 :qid |_11MutexGuard2legacydfy.278:22|
 :skolemid |1266|
 :pattern ( (_module.Thread.inv2 $prevHeap@@22 $Heap@@15 this@@33))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@16 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@23 $Heap@@16 this@@34) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@16)) ($HeapSucc $prevHeap@@23 $Heap@@16)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.OwnedObject) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $prevHeap@@23)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@23 $Heap@@16 this@@34) (and (_module.OwnedObject.localInv2 $prevHeap@@23 $Heap@@16 this@@34) (_module.OwnedObject.sequenceInv2 $prevHeap@@23 $Heap@@16 this@@34))))
 :qid |_11MutexGuard2legacydfy.371:22|
 :skolemid |1571|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@23 $Heap@@16 this@@34))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@17 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@24 $Heap@@17 this@@35) (and (< 11 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@24 $Heap@@17)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Object) ($IsAlloc refType this@@35 Tclass._module.Object $prevHeap@@24)))))) (=> (_module.Object.inv2 $prevHeap@@24 $Heap@@17 this@@35) (and (_module.Object.localInv2 $prevHeap@@24 $Heap@@17 this@@35) (_module.Object.sequenceInv2 $prevHeap@@24 $Heap@@17 this@@35))))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1159|
 :pattern ( (_module.Object.inv2 $prevHeap@@24 $Heap@@17 this@@35))
))))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@32 T@U) ($f@@26 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@32 $f@@26))  (=> (and (or (not (= $o@@32 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@32) |l#2@@0|)))) (or (= $o@@32 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@32)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2454|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@32 $f@@26))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@18 this@@36) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $Heap@@18)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@18 this@@36) (=> (_module.Object.objectGlobalBaseInv $Heap@@18 this@@36) (|_module.OwnedObject.localUserInv#canCall| $Heap@@18 this@@36))) (= (_module.OwnedObject.localInv $Heap@@18 this@@36)  (and (_module.Object.objectGlobalBaseInv $Heap@@18 this@@36) (_module.OwnedObject.localUserInv $Heap@@18 this@@36)))))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1530|
 :pattern ( (_module.OwnedObject.localInv $Heap@@18 this@@36) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@19 this@@37) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.OwnedObject) ($IsAlloc refType this@@37 Tclass._module.OwnedObject $Heap@@19)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@19 this@@37) (=> (_module.OwnedObject.localInv $Heap@@19 this@@37) (|_module.OwnedObject.userInv#canCall| $Heap@@19 this@@37))) (= (_module.OwnedObject.inv $Heap@@19 this@@37)  (and (_module.OwnedObject.localInv $Heap@@19 this@@37) (_module.OwnedObject.userInv $Heap@@19 this@@37)))))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1543|
 :pattern ( (_module.OwnedObject.inv $Heap@@19 this@@37) ($IsGoodHeap $Heap@@19))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@1) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@3 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@10 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@33 null)) (not true)) ($Is refType $o@@33 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@33) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@33) Tclass._module.Universe $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@33) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@33) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) ($Is refType $o@@34 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@34) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@34))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@20 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@25 $Heap@@20 this@@38) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@25 $Heap@@20 this@@38) (_module.Thread.localInv2 $prevHeap@@25 $Heap@@20 this@@38)))
 :qid |_11MutexGuard2legacydfy.248:22|
 :skolemid |1255|
 :pattern ( (_module.Object.localInv2 $prevHeap@@25 $Heap@@20 this@@38) ($Is refType this@@38 Tclass._module.Thread) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.Object.localInv2 $prevHeap@@25 $Heap@@20 this@@38) (_module.Thread.localInv2 $prevHeap@@25 $Heap@@20 this@@38) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@21 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@26 $Heap@@21 this@@39) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@26 $Heap@@21 this@@39) (_module.Thread.sequenceInv2 $prevHeap@@26 $Heap@@21 this@@39)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1262|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@26 $Heap@@21 this@@39) ($Is refType this@@39 Tclass._module.Thread) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@26 $Heap@@21 this@@39) (_module.Thread.sequenceInv2 $prevHeap@@26 $Heap@@21 this@@39) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@22 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@27 $Heap@@22 this@@40) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@40 null)) (not true)) ($Is refType this@@40 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@27 $Heap@@22 this@@40) (_module.Thread.inv2 $prevHeap@@27 $Heap@@22 this@@40)))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1269|
 :pattern ( (_module.Object.inv2 $prevHeap@@27 $Heap@@22 this@@40) ($Is refType this@@40 Tclass._module.Thread) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.Object.inv2 $prevHeap@@27 $Heap@@22 this@@40) (_module.Thread.inv2 $prevHeap@@27 $Heap@@22 this@@40) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@23 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@28 $Heap@@23 this@@41) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@28 $Heap@@23 this@@41) (_module.OwnedObject.localInv2 $prevHeap@@28 $Heap@@23 this@@41)))
 :qid |_11MutexGuard2legacydfy.248:22|
 :skolemid |1557|
 :pattern ( (_module.Object.localInv2 $prevHeap@@28 $Heap@@23 this@@41) ($Is refType this@@41 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@23))
 :pattern ( (_module.Object.localInv2 $prevHeap@@28 $Heap@@23 this@@41) (_module.OwnedObject.localInv2 $prevHeap@@28 $Heap@@23 this@@41) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@24 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@29 $Heap@@24 this@@42) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@42 null)) (not true)) ($Is refType this@@42 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@24 this@@42) (_module.OwnedObject.sequenceInv2 $prevHeap@@29 $Heap@@24 this@@42)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1565|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@24 this@@42) ($Is refType this@@42 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@24))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@24 this@@42) (_module.OwnedObject.sequenceInv2 $prevHeap@@29 $Heap@@24 this@@42) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@25 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@30 $Heap@@25 this@@43) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@30 $Heap@@25 this@@43) (_module.OwnedObject.inv2 $prevHeap@@30 $Heap@@25 this@@43)))
 :qid |_11MutexGuard2legacydfy.251:22|
 :skolemid |1574|
 :pattern ( (_module.Object.inv2 $prevHeap@@30 $Heap@@25 this@@43) ($Is refType this@@43 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@25))
 :pattern ( (_module.Object.inv2 $prevHeap@@30 $Heap@@25 this@@43) (_module.OwnedObject.inv2 $prevHeap@@30 $Heap@@25 this@@43) ($IsGoodHeap $Heap@@25))
))))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@5 Tclass._module.Thread))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@11 Tclass._module.OwnedObject?))
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
(assert (forall (($o@@35 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@35 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@35 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2437|
 :pattern ( ($IsAlloc refType $o@@35 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@36 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@36 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@36 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@36 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@26 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@31 $Heap@@26 this@@44) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@31 $Heap@@26)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Thread) ($IsAlloc refType this@@44 Tclass._module.Thread $prevHeap@@31)))))) (= (_module.Thread.localInv2 $prevHeap@@31 $Heap@@26 this@@44) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.272:22|
 :skolemid |1254|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@31 $Heap@@26 this@@44) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@27 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@32 $Heap@@27 this@@45) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@32 $Heap@@27)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Thread) ($IsAlloc refType this@@45 Tclass._module.Thread $prevHeap@@32)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@32 $Heap@@27 this@@45) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.275:22|
 :skolemid |1261|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@32 $Heap@@27 this@@45) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@28 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@33 $Heap@@28 this@@46) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@33 $Heap@@28)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedObject) ($IsAlloc refType this@@46 Tclass._module.OwnedObject $prevHeap@@33)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@33 $Heap@@28 this@@46)) (= (_module.OwnedObject.localInv2 $prevHeap@@33 $Heap@@28 this@@46)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@33 $Heap@@28 this@@46)))))
 :qid |_11MutexGuard2legacydfy.345:22|
 :skolemid |1556|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@33 $Heap@@28 this@@46) ($IsGoodHeap $Heap@@28))
))))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@37 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (or (= $o@@37 this@@47) (= $o@@37 (_module.Object.universe this@@47)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@37) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@37) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1133|
)) (= (_module.Object.baseFieldsInv $h0@@17 this@@47) (_module.Object.baseFieldsInv $h1@@17 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1134|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Object.baseFieldsInv $h1@@17 this@@47))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@38 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (or (= $o@@38 this@@48) (= $o@@38 (_module.Object.universe this@@48)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@38) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@38) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1212|
)) (= (_module.Thread.baseFieldsInv $h0@@18 this@@48) (_module.Thread.baseFieldsInv $h1@@18 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1213|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Thread.baseFieldsInv $h1@@18 this@@48))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@39 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (or (= $o@@39 this@@49) (= $o@@39 (_module.Object.universe this@@49)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@39) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@39) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1504|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@19 this@@49) (_module.OwnedObject.baseFieldsInv $h1@@19 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1505|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.baseFieldsInv $h1@@19 this@@49))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@40 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (or (= $o@@40 this@@50) (= $o@@40 (_module.Object.universe this@@50)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@40) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@40) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1602|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@20 this@@50) (_module.OwnedObject.baseUserFieldsInv $h1@@20 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1603|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.baseUserFieldsInv $h1@@20 this@@50))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@29 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@34 $Heap@@29 this@@51) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@34) ($IsGoodHeap $Heap@@29)) ($HeapSucc $prevHeap@@34 $Heap@@29)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.OwnedObject) ($IsAlloc refType this@@51 Tclass._module.OwnedObject $prevHeap@@34)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@34 $Heap@@29 this@@51))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@34 $Heap@@29 this@@51))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|)))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@34 $Heap@@29 this@@51)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@34 $Heap@@29 this@@51)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@51) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@51) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_11MutexGuard2legacydfy.349:22|
 :skolemid |1564|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@34 $Heap@@29 this@@51) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@30 this@@52) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Object) ($IsAlloc refType this@@52 Tclass._module.Object $Heap@@30)))))) (_module.Object.triggerAxioms $Heap@@30 this@@52))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1089|
 :pattern ( (_module.Object.triggerAxioms $Heap@@30 this@@52))
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
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TInt) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@12 TInt))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@31 this@@53) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $Heap@@31)))))) (=> (_module.Thread.localInv $Heap@@31 this@@53) (_module.Object.objectGlobalBaseInv $Heap@@31 this@@53)))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1228|
 :pattern ( (_module.Thread.localInv $Heap@@31 this@@53))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@32 this@@54) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $Heap@@32)))))) (=> (_module.OwnedObject.localInv $Heap@@32 this@@54) (_module.Object.objectGlobalBaseInv $Heap@@32 this@@54)))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1528|
 :pattern ( (_module.OwnedObject.localInv $Heap@@32 this@@54))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@33 this@@55) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Object) ($IsAlloc refType this@@55 Tclass._module.Object $Heap@@33)))))) (=> (_module.Object.localInv $Heap@@33 this@@55) (_module.Object.objectGlobalBaseInv $Heap@@33 this@@55)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1141|
 :pattern ( (_module.Object.localInv $Heap@@33 this@@55))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@34 this@@56) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.Thread) ($IsAlloc refType this@@56 Tclass._module.Thread $Heap@@34)))))) (=> (_module.Thread.inv $Heap@@34 this@@56) (_module.Thread.localInv $Heap@@34 this@@56)))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1240|
 :pattern ( (_module.Thread.inv $Heap@@34 this@@56))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@35 this@@57) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.OwnedObject) ($IsAlloc refType this@@57 Tclass._module.OwnedObject $Heap@@35)))))) (=> (_module.OwnedObject.userInv $Heap@@35 this@@57) (_module.OwnedObject.localUserInv $Heap@@35 this@@57)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1622|
 :pattern ( (_module.OwnedObject.userInv $Heap@@35 this@@57))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@36 this@@58) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.OwnedObject) ($IsAlloc refType this@@58 Tclass._module.OwnedObject $Heap@@36)))))) (=> (_module.OwnedObject.inv $Heap@@36 this@@58) (_module.OwnedObject.localInv $Heap@@36 this@@58)))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1541|
 :pattern ( (_module.OwnedObject.inv $Heap@@36 this@@58))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@37 this@@59) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Object) ($IsAlloc refType this@@59 Tclass._module.Object $Heap@@37)))))) (=> (_module.Object.inv $Heap@@37 this@@59) (_module.Object.localInv $Heap@@37 this@@59)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1151|
 :pattern ( (_module.Object.inv $Heap@@37 this@@59))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@38 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@35 $Heap@@38 this@@60) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@38)) ($HeapSucc $prevHeap@@35 $Heap@@38)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.OwnedObject) ($IsAlloc refType this@@60 Tclass._module.OwnedObject $prevHeap@@35)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@60) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@60) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@35 $Heap@@38 this@@60)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@35 $Heap@@38 this@@60)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@60) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@60) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@35 $Heap@@38 this@@60)))))
 :qid |_11MutexGuard2legacydfy.331:22|
 :skolemid |1524|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@35 $Heap@@38 this@@60) ($IsGoodHeap $Heap@@38))
))))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@13) ($IsAllocBox bx@@13 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@11 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@41 null)) (not true)) ($Is refType $o@@41 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@41) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@41) _module.OwnedObject.nonvolatileVersion)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@41) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@42 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (= $o@@42 this@@61)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@42) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@42) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1087|
)) (= (_module.Object.triggerAxioms $h0@@21 this@@61) (_module.Object.triggerAxioms $h1@@21 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1088|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Object.triggerAxioms $h1@@21 this@@61))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@43 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (or (= $o@@43 this@@62) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 this@@62) _module.Universe.content)) ($Box refType $o@@43)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@43) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@43) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |625|
)) (= (_module.Universe.globalBaseInv $h0@@22 this@@62) (_module.Universe.globalBaseInv $h1@@22 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |626|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Universe.globalBaseInv $h1@@22 this@@62))
)))
(assert (forall (($h@@12 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@44 null)) (not true)) ($Is refType $o@@44 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@44) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@44) _module.OwnedObject.owner)) Tclass._module.Object $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@44) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Universe) ($IsAlloc refType this@@63 Tclass._module.Universe $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@45 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@45) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@45) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@45) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |638|
)) (= (_module.Universe.globalInv $h0@@23 this@@63) (_module.Universe.globalInv $h1@@23 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |639|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Universe.globalInv $h1@@23 this@@63))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@64 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.Object) ($IsAlloc refType this@@64 Tclass._module.Object $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@46 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@46) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@46) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@46) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1067|
)) (= (_module.Object.objectGlobalBaseInv $h0@@24 this@@64) (_module.Object.objectGlobalBaseInv $h1@@24 this@@64))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1068|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.objectGlobalBaseInv $h1@@24 this@@64))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@65 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Object) ($IsAlloc refType this@@65 Tclass._module.Object $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@47 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@47) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@47) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@47) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1139|
)) (= (_module.Object.localInv $h0@@25 this@@65) (_module.Object.localInv $h1@@25 this@@65))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1140|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Object.localInv $h1@@25 this@@65))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@66 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.Object) ($IsAlloc refType this@@66 Tclass._module.Object $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@48 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@48) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@48) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@48) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1149|
)) (= (_module.Object.inv $h0@@26 this@@66) (_module.Object.inv $h1@@26 this@@66))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1150|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Object.inv $h1@@26 this@@66))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@67 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Thread) ($IsAlloc refType this@@67 Tclass._module.Thread $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@49 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@49) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@49) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@49) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1226|
)) (= (_module.Thread.localInv $h0@@27 this@@67) (_module.Thread.localInv $h1@@27 this@@67))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1227|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.Thread.localInv $h1@@27 this@@67))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@68 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Thread) ($IsAlloc refType this@@68 Tclass._module.Thread $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@50 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@50) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@50) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@50) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1238|
)) (= (_module.Thread.inv $h0@@28 this@@68) (_module.Thread.inv $h1@@28 this@@68))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1239|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Thread.inv $h1@@28 this@@68))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@69 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.OwnedObject) ($IsAlloc refType this@@69 Tclass._module.OwnedObject $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@51 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@51) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@51) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@51) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1526|
)) (= (_module.OwnedObject.localInv $h0@@29 this@@69) (_module.OwnedObject.localInv $h1@@29 this@@69))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1527|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.OwnedObject.localInv $h1@@29 this@@69))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@70 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.OwnedObject) ($IsAlloc refType this@@70 Tclass._module.OwnedObject $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@52 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@52) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@52) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@52) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.inv $h0@@30 this@@70) (_module.OwnedObject.inv $h1@@30 this@@70))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.OwnedObject.inv $h1@@30 this@@70))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@71 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.OwnedObject) ($IsAlloc refType this@@71 Tclass._module.OwnedObject $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@53 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@53) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@53) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@53) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1612|
)) (= (_module.OwnedObject.localUserInv $h0@@31 this@@71) (_module.OwnedObject.localUserInv $h1@@31 this@@71))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1613|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.OwnedObject.localUserInv $h1@@31 this@@71))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@72 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.OwnedObject) ($IsAlloc refType this@@72 Tclass._module.OwnedObject $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@54 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@54) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@54) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@54) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1620|
)) (= (_module.OwnedObject.userInv $h0@@32 this@@72) (_module.OwnedObject.userInv $h1@@32 this@@72))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1621|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.OwnedObject.userInv $h1@@32 this@@72))
)))
(assert (forall ((bx@@14 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@5)))
)))
(assert (forall ((a@@4 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@4 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@4 x@@10)) (|Set#Card| a@@4)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@4 x@@10)))
)))
(assert (forall (($o@@55 T@U) ) (!  (=> ($Is refType $o@@55 Tclass._module.Thread?) ($Is refType $o@@55 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2436|
 :pattern ( ($Is refType $o@@55 Tclass._module.Thread?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2434|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall (($o@@56 T@U) ) (!  (=> ($Is refType $o@@56 Tclass._module.OwnedObject?) ($Is refType $o@@56 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@56 Tclass._module.OwnedObject?))
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
(assert (forall (($h@@13 T@U) ($o@@57 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@57 null)) (not true)) ($Is refType $o@@57 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@57) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1496|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@57) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@58 T@U) ) (! (= ($Is refType $o@@58 Tclass._module.Universe?)  (or (= $o@@58 null) (implements$_module.Universe (dtype $o@@58))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@58 Tclass._module.Universe?))
)))
(assert (forall (($o@@59 T@U) ) (! (= ($Is refType $o@@59 Tclass._module.Object?)  (or (= $o@@59 null) (implements$_module.Object (dtype $o@@59))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@59 Tclass._module.Object?))
)))
(assert (forall (($o@@60 T@U) ) (! (= ($Is refType $o@@60 Tclass._module.OwnedObject?)  (or (= $o@@60 null) (implements$_module.OwnedObject (dtype $o@@60))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@60 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@14 T@U) ($o@@61 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@61 null)) (not true)) ($Is refType $o@@61 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@61) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@61) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@61) _module.Universe.content)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@39 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Universe.globalSequenceInv2#canCall| $prevHeap@@36 $Heap@@39 this@@73) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@39)) ($HeapSucc $prevHeap@@36 $Heap@@39)) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Universe) ($IsAlloc refType this@@73 Tclass._module.Universe $prevHeap@@36)))))) (and (forall ((|o#0@@9| T@U) ) (!  (=> ($Is refType |o#0@@9| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@73) _module.Universe.content)) ($Box refType |o#0@@9|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@73) _module.Universe.content)) ($Box refType |o#0@@9|)) (|_module.Object.sequenceInv2#canCall| $prevHeap@@36 $Heap@@39 |o#0@@9|))))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |655|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@36 $Heap@@39 |o#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@73) _module.Universe.content)) ($Box refType |o#0@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@73) _module.Universe.content)) ($Box refType |o#0@@9|)))
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@36 $Heap@@39 this@@73) (forall ((|o#0@@10| T@U) ) (!  (=> (and ($Is refType |o#0@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@73) _module.Universe.content)) ($Box refType |o#0@@10|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@73) _module.Universe.content)) ($Box refType |o#0@@10|)) (_module.Object.sequenceInv2 $prevHeap@@36 $Heap@@39 |o#0@@10|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |654|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@36 $Heap@@39 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@73) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@73) _module.Universe.content)) ($Box refType |o#0@@10|)))
)))))
 :qid |_11MutexGuard2legacydfy.27:22|
 :skolemid |656|
 :pattern ( (_module.Universe.globalSequenceInv2 $prevHeap@@36 $Heap@@39 this@@73) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@40 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@37 $Heap@@40 this@@74) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@40)) ($HeapSucc $prevHeap@@37 $Heap@@40)) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Universe) ($IsAlloc refType this@@74 Tclass._module.Universe $prevHeap@@37)))))) (and (forall ((|o#0@@11| T@U) ) (!  (=> ($Is refType |o#0@@11| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@74) _module.Universe.content)) ($Box refType |o#0@@11|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@74) _module.Universe.content)) ($Box refType |o#0@@11|)) (|_module.Object.inv2#canCall| $prevHeap@@37 $Heap@@40 |o#0@@11|))))
 :qid |_11MutexGuard2legacydfy.33:12|
 :skolemid |666|
 :pattern ( (_module.Object.inv2 $prevHeap@@37 $Heap@@40 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@74) _module.Universe.content)) ($Box refType |o#0@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@74) _module.Universe.content)) ($Box refType |o#0@@11|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@37 $Heap@@40 this@@74) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@74) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@74) _module.Universe.content)) ($Box refType |o#0@@12|)) (_module.Object.inv2 $prevHeap@@37 $Heap@@40 |o#0@@12|)))
 :qid |_11MutexGuard2legacydfy.33:12|
 :skolemid |665|
 :pattern ( (_module.Object.inv2 $prevHeap@@37 $Heap@@40 |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@74) _module.Universe.content)) ($Box refType |o#0@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@74) _module.Universe.content)) ($Box refType |o#0@@12|)))
)))))
 :qid |_11MutexGuard2legacydfy.32:22|
 :skolemid |667|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@37 $Heap@@40 this@@74) ($IsGoodHeap $Heap@@40))
))))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@41 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@38 $Heap@@41 this@@75) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@38) ($IsGoodHeap $Heap@@41)) ($HeapSucc $prevHeap@@38 $Heap@@41)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.OwnedObject) ($IsAlloc refType this@@75 Tclass._module.OwnedObject $prevHeap@@38)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@38 $Heap@@41 this@@75) (_module.OwnedObject.localUserInv2 $prevHeap@@38 $Heap@@41 this@@75)))
 :qid |_11MutexGuard2legacydfy.410:22|
 :skolemid |1626|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@38 $Heap@@41 this@@75))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@42 this@@76) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.Thread) ($IsAlloc refType this@@76 Tclass._module.Thread $Heap@@42)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@42 this@@76)) (= (_module.Thread.localInv $Heap@@42 this@@76)  (and true (_module.Object.objectGlobalBaseInv $Heap@@42 this@@76)))))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1230|
 :pattern ( (_module.Thread.localInv $Heap@@42 this@@76) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@43 this@@77) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.Thread) ($IsAlloc refType this@@77 Tclass._module.Thread $Heap@@43)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@43 this@@77)) (= (_module.Thread.inv $Heap@@43 this@@77)  (and true (_module.Thread.localInv $Heap@@43 this@@77)))))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1242|
 :pattern ( (_module.Thread.inv $Heap@@43 this@@77) ($IsGoodHeap $Heap@@43))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@44 this@@78) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.Object) ($IsAlloc refType this@@78 Tclass._module.Object $Heap@@44)))))) (= (_module.Object.triggerAxioms $Heap@@44 this@@78)  (and (or ($Is refType this@@78 Tclass._module.OwnedObject) ($Is refType this@@78 Tclass._module.Thread)) (not (and ($Is refType this@@78 Tclass._module.OwnedObject) ($Is refType this@@78 Tclass._module.Thread))))))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1091|
 :pattern ( (_module.Object.triggerAxioms $Heap@@44 this@@78) ($IsGoodHeap $Heap@@44))
))))
(assert (forall (($h@@15 T@U) ($o@@62 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@62 null)) (not true)) ($Is refType $o@@62 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@62) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@62) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((a@@5 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@5 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@5 x@@13)) (+ (|Set#Card| a@@5) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@5 x@@13)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@1 () T@U)
(declare-fun this@@79 () T@U)
(declare-fun $Heap@@45 () T@U)
(declare-fun |preempting#0| () T@U)
(declare-fun |##running#1@0| () T@U)
(declare-fun |t#2@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |steps#0@1| () Int)
(declare-fun |steps#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |envThreads#0_0@1| () T@U)
(declare-fun |running#0_0_0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |running#0_0_1@1| () T@U)
(declare-fun |t#0_0@1| () T@U)
(declare-fun |defass#running#0_0_0@0| () Bool)
(declare-fun |running#0_0_0@0| () T@U)
(declare-fun |envThreads#0_0@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |steps#0@0| () Int)
(declare-fun |running##0@0| () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun |envThreads#0_0| () T@U)
(declare-fun |defass#running#0_0_0| () Bool)
(declare-fun |running#0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Universe.Interference)
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
 (=> (= (ControlFlow 0 0) 124) (let ((anon13_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (_module.Universe.globalInv $Heap@1 this@@79) (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))))) (= (ControlFlow 0 82) 79)) anon13_correct)))
(let ((anon36_Then_correct  (=> (and (and (_module.Universe.globalInv $Heap@1 this@@79) (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)))) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@1)) (and (=> (= (ControlFlow 0 80) (- 0 81)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (=> (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79) (= (ControlFlow 0 80) 79)) anon13_correct))))))
(let ((anon10_correct  (=> (and (= |##running#1@0| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) ($IsAlloc SetType |##running#1@0| (TSet Tclass._module.Thread) $Heap@1)) (and (=> (= (ControlFlow 0 84) (- 0 86)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (and (=> (= (ControlFlow 0 84) (- 0 85)) ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (TSet Tclass._module.Thread) $Heap@@45)) (=> ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (TSet Tclass._module.Thread) $Heap@@45) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (and (=> (= (ControlFlow 0 84) 80) anon36_Then_correct) (=> (= (ControlFlow 0 84) 82) anon36_Else_correct))))))))))
(let ((anon35_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |t#2@0|)) (or (not (= |t#2@0| |preempting#0|)) (not true)))) (= (ControlFlow 0 89) 84)) anon10_correct)))
(let ((anon35_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |t#2@0|)) (or (not (= |t#2@0| |preempting#0|)) (not true))) (= (ControlFlow 0 88) 84)) anon10_correct)))
(let ((anon34_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |t#2@0|))) (and (=> (= (ControlFlow 0 91) 88) anon35_Then_correct) (=> (= (ControlFlow 0 91) 89) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |t#2@0|)) (and (=> (= (ControlFlow 0 90) 88) anon35_Then_correct) (=> (= (ControlFlow 0 90) 89) anon35_Else_correct)))))
(let ((anon33_Then_correct  (=> (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@1)) (and (=> (= (ControlFlow 0 92) (- 0 93)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (and (=> (= (ControlFlow 0 92) 90) anon34_Then_correct) (=> (= (ControlFlow 0 92) 91) anon34_Else_correct)))))))
(let ((anon33_Else_correct  (=> (and (not (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@1))) (= (ControlFlow 0 87) 84)) anon10_correct)))
(let ((anon32_Then_correct  (=> (and (_module.Universe.globalInv $Heap@1 this@@79) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@1)) (and (=> (= (ControlFlow 0 94) 92) anon33_Then_correct) (=> (= (ControlFlow 0 94) 87) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not (_module.Universe.globalInv $Heap@1 this@@79)) (and (=> (= (ControlFlow 0 83) 80) anon36_Then_correct) (=> (= (ControlFlow 0 83) 82) anon36_Else_correct)))))
(let ((anon31_Then_correct  (=> (not |$w$loop#0@0|) (=> (and ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@1) (|_module.Universe.globalInv#canCall| $Heap@1 this@@79)) (and (=> (= (ControlFlow 0 95) 94) anon32_Then_correct) (=> (= (ControlFlow 0 95) 83) anon32_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 65) (- 0 76)) (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 65) (- 0 75)) (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#12|))) (and (and (and (= (_module.Object.universe |o#12|) this@@79) (or (not (= |o#12| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@5 |o#12|)) (_module.Object.triggerAxioms $Heap@5 |o#12|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |901|
 :pattern ( (_module.Object.triggerAxioms $Heap@5 |o#12|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@5 |o#12|))
 :pattern ( (_module.Object.universe |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#12|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (forall ((|o#12@@0| T@U) ) (!  (=> (and ($Is refType |o#12@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#12@@0|))) (and (and (and (= (_module.Object.universe |o#12@@0|) this@@79) (or (not (= |o#12@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@5 |o#12@@0|)) (_module.Object.triggerAxioms $Heap@5 |o#12@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |901|
 :pattern ( (_module.Object.triggerAxioms $Heap@5 |o#12@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@5 |o#12@@0|))
 :pattern ( (_module.Object.universe |o#12@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#12@@0|)))
)))))) (and (=> (= (ControlFlow 0 65) (- 0 74)) (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#13|))) (_module.Object.inv $Heap@5 |o#13|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |903|
 :pattern ( (_module.Object.inv $Heap@5 |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#13|)))
))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalInv $Heap@5 this@@79) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#13@@0|))) (_module.Object.inv $Heap@5 |o#13@@0|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |903|
 :pattern ( (_module.Object.inv $Heap@5 |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))) (and (=> (= (ControlFlow 0 65) (- 0 73)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 65) (- 0 72)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#14|))) (and (and (and (= (_module.Object.universe |o#14|) this@@79) (or (not (= |o#14| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#14|)) (_module.Object.triggerAxioms $Heap@@45 |o#14|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |905|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#14|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#14|))
 :pattern ( (_module.Object.universe |o#14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#14|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#14@@0|))) (and (and (and (= (_module.Object.universe |o#14@@0|) this@@79) (or (not (= |o#14@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#14@@0|)) (_module.Object.triggerAxioms $Heap@@45 |o#14@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |905|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#14@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#14@@0|))
 :pattern ( (_module.Object.universe |o#14@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#14@@0|)))
)))))))) (and (=> (= (ControlFlow 0 65) (- 0 71)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 65) (- 0 70)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (forall ((|o#15| T@U) ) (!  (=> (and ($Is refType |o#15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#15|))) (and (and (and (= (_module.Object.universe |o#15|) this@@79) (or (not (= |o#15| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@5 |o#15|)) (_module.Object.triggerAxioms $Heap@5 |o#15|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |907|
 :pattern ( (_module.Object.triggerAxioms $Heap@5 |o#15|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@5 |o#15|))
 :pattern ( (_module.Object.universe |o#15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#15|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 this@@79) (or (_module.Universe.globalBaseInv $Heap@5 this@@79) (forall ((|o#15@@0| T@U) ) (!  (=> (and ($Is refType |o#15@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#15@@0|))) (and (and (and (= (_module.Object.universe |o#15@@0|) this@@79) (or (not (= |o#15@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@5 |o#15@@0|)) (_module.Object.triggerAxioms $Heap@5 |o#15@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |907|
 :pattern ( (_module.Object.triggerAxioms $Heap@5 |o#15@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@5 |o#15@@0|))
 :pattern ( (_module.Object.universe |o#15@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#15@@0|)))
)))))))) (and (=> (= (ControlFlow 0 65) (- 0 69)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 65) (- 0 68)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (forall ((|o#16| T@U) ) (!  (=> (and ($Is refType |o#16| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#16|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#16|)))) (not ($IsAllocBox ($Box refType |o#16|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |909|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#16|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#16|)))
))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@5 this@@79) (forall ((|o#16@@0| T@U) ) (!  (=> (and ($Is refType |o#16@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#16@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#16@@0|)))) (not ($IsAllocBox ($Box refType |o#16@@0|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |909|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#16@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#16@@0|)))
)))))) (and (=> (= (ControlFlow 0 65) (- 0 67)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#17| T@U) ) (!  (=> (and ($Is refType |o#17| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#17|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#17|)))) (or (forall (($o@@63 T@U) ($f@@43 T@U) ) (!  (=> (or (not (= $o@@63 null)) (not true)) (=> (= $o@@63 |o#17|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@63) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@63) $f@@43))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |911|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@63) $f@@43))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#17|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |912|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#17|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#17@@0| T@U) ) (!  (=> (and ($Is refType |o#17@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#17@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#17@@0|)))) (or (forall (($o@@64 T@U) ($f@@44 T@U) ) (!  (=> (or (not (= $o@@64 null)) (not true)) (=> (= $o@@64 |o#17@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@64) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@64) $f@@44))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |911|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@64) $f@@44))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#17@@0|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |912|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#17@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#17@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#17@@0|)))
)))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#18| T@U) ) (!  (=> (and ($Is refType |o#18| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#18|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |o#18|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |913|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |o#18|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#18|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@5 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#18@@0| T@U) ) (!  (=> (and ($Is refType |o#18@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#18@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |o#18@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |913|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |o#18@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#18@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#18@@0|)))
)))) (=> (= (ControlFlow 0 65) (- 0 64)) (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@5 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@5 this@@79) (forall ((|o#19| T@U) ) (!  (=> (and ($Is refType |o#19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#19|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#19|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#19|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |917|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@5 |o#19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@79) _module.Universe.content)) ($Box refType |o#19|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#19|)))
)))))))))))))))))))))))))))))
(let ((anon37_Then_correct  (=> (>= 0 |steps#0@1|) (=> (and (= $Heap@5 $Heap@1) (= (ControlFlow 0 77) 65)) GeneratedUnifiedExit_correct))))
(let ((anon28_correct  (=> (= |steps#0@2| (- |steps#0@1| 1)) (and (=> (= (ControlFlow 0 4) (- 0 17)) (or (<= 0 |$decr$loop#00@1|) (= (- |steps#0@2| 0) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |steps#0@2| 0) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 16)) (< (- |steps#0@2| 0) |$decr$loop#00@1|)) (=> (< (- |steps#0@2| 0) |$decr$loop#00@1|) (=> (and (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (=> (_module.Universe.globalInv $Heap@4 this@@79) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@4 this@@79))))) (and (=> (= (ControlFlow 0 4) (- 0 15)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 4) (- 0 14)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (forall ((|o#20| T@U) ) (!  (=> (and ($Is refType |o#20| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#20|))) (and (and (and (= (_module.Object.universe |o#20|) this@@79) (or (not (= |o#20| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#20|)) (_module.Object.triggerAxioms $Heap@4 |o#20|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |922|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#20|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#20|))
 :pattern ( (_module.Object.universe |o#20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#20|)))
)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (forall ((|o#20@@0| T@U) ) (!  (=> (and ($Is refType |o#20@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#20@@0|))) (and (and (and (= (_module.Object.universe |o#20@@0|) this@@79) (or (not (= |o#20@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#20@@0|)) (_module.Object.triggerAxioms $Heap@4 |o#20@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |922|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#20@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#20@@0|))
 :pattern ( (_module.Object.universe |o#20@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#20@@0|)))
))))))) (and (=> (= (ControlFlow 0 4) (- 0 13)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (forall ((|o#21| T@U) ) (!  (=> (and ($Is refType |o#21| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#21|))) (_module.Object.inv $Heap@4 |o#21|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |924|
 :pattern ( (_module.Object.inv $Heap@4 |o#21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#21|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalInv $Heap@4 this@@79) (forall ((|o#21@@0| T@U) ) (!  (=> (and ($Is refType |o#21@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#21@@0|))) (_module.Object.inv $Heap@4 |o#21@@0|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |924|
 :pattern ( (_module.Object.inv $Heap@4 |o#21@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#21@@0|)))
))))) (and (=> (= (ControlFlow 0 4) (- 0 12)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 4) (- 0 11)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#22| T@U) ) (!  (=> (and ($Is refType |o#22| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22|))) (and (and (and (= (_module.Object.universe |o#22|) this@@79) (or (not (= |o#22| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#22|)) (_module.Object.triggerAxioms $Heap@@45 |o#22|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |926|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#22|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#22|))
 :pattern ( (_module.Object.universe |o#22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22|)))
)))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#22@@0| T@U) ) (!  (=> (and ($Is refType |o#22@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@0|))) (and (and (and (= (_module.Object.universe |o#22@@0|) this@@79) (or (not (= |o#22@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#22@@0|)) (_module.Object.triggerAxioms $Heap@@45 |o#22@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |926|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#22@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#22@@0|))
 :pattern ( (_module.Object.universe |o#22@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@0|)))
))))))))) (and (=> (= (ControlFlow 0 4) (- 0 10)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (forall ((|o#23| T@U) ) (!  (=> (and ($Is refType |o#23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#23|))) (and (and (and (= (_module.Object.universe |o#23|) this@@79) (or (not (= |o#23| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#23|)) (_module.Object.triggerAxioms $Heap@4 |o#23|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |928|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#23|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#23|))
 :pattern ( (_module.Object.universe |o#23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#23|)))
)))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 this@@79) (or (_module.Universe.globalBaseInv $Heap@4 this@@79) (forall ((|o#23@@0| T@U) ) (!  (=> (and ($Is refType |o#23@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#23@@0|))) (and (and (and (= (_module.Object.universe |o#23@@0|) this@@79) (or (not (= |o#23@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#23@@0|)) (_module.Object.triggerAxioms $Heap@4 |o#23@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |928|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#23@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#23@@0|))
 :pattern ( (_module.Object.universe |o#23@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#23@@0|)))
))))))))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)))))))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (forall ((|o#24| T@U) ) (!  (=> (and ($Is refType |o#24| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#24|)))) (not ($IsAllocBox ($Box refType |o#24|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |930|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#24|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24|)))
)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@4 this@@79) (forall ((|o#24@@0| T@U) ) (!  (=> (and ($Is refType |o#24@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#24@@0|)))) (not ($IsAllocBox ($Box refType |o#24@@0|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |930|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#24@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@0|)))
))))))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#25| T@U) ) (!  (=> (and ($Is refType |o#25| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#25|)))) (or (forall (($o@@65 T@U) ($f@@45 T@U) ) (!  (=> (or (not (= $o@@65 null)) (not true)) (=> (= $o@@65 |o#25|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@65) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@65) $f@@45))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |932|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@65) $f@@45))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#25|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |933|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#25|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#25@@0| T@U) ) (!  (=> (and ($Is refType |o#25@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#25@@0|)))) (or (forall (($o@@66 T@U) ($f@@46 T@U) ) (!  (=> (or (not (= $o@@66 null)) (not true)) (=> (= $o@@66 |o#25@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@66) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@66) $f@@46))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |932|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@66) $f@@46))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#25@@0|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |933|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#25@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#25@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@0|)))
))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#26| T@U) ) (!  (=> (and ($Is refType |o#26| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#26|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |934|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#26|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@4 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#26@@0| T@U) ) (!  (=> (and ($Is refType |o#26@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#26@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |934|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#26@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@0|)))
))))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@4 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@4 this@@79) (forall ((|o#27| T@U) ) (!  (=> (and ($Is refType |o#27| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#27|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#27|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |938|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@4 |o#27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@79) _module.Universe.content)) ($Box refType |o#27|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27|)))
))))))))))))))))))))))))))))))))))))
(let ((anon26_correct  (=> (and (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@3 this@@79) (=> (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@3 this@@79) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@3 this@@79))) (=> (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@3 this@@79) (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@3 this@@79))) (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 19) 4))) anon28_correct)))
(let ((anon43_Else_correct  (=> (and (not (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@3 this@@79)) (= (ControlFlow 0 22) 19)) anon26_correct)))
(let ((anon43_Then_correct  (=> (and (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@3 this@@79) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@3)) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (=> (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@3 this@@79) (= (ControlFlow 0 20) 19)) anon26_correct))))))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 23) (- 0 52)) (or (and ($Is refType null Tclass._module.Thread) (|Set#IsMember| |envThreads#0_0@1| ($Box refType null))) (exists ((|$as#running0_0_0#0_0_0| T@U) ) (!  (and ($Is refType |$as#running0_0_0#0_0_0| Tclass._module.Thread) (|Set#IsMember| |envThreads#0_0@1| ($Box refType |$as#running0_0_0#0_0_0|)))
 :qid |_11MutexGuard2legacydfy.127:19|
 :skolemid |942|
)))) (=> (or (and ($Is refType null Tclass._module.Thread) (|Set#IsMember| |envThreads#0_0@1| ($Box refType null))) (exists ((|$as#running0_0_0#0_0_0@@0| T@U) ) (!  (and ($Is refType |$as#running0_0_0#0_0_0@@0| Tclass._module.Thread) (|Set#IsMember| |envThreads#0_0@1| ($Box refType |$as#running0_0_0#0_0_0@@0|)))
 :qid |_11MutexGuard2legacydfy.127:19|
 :skolemid |942|
))) (=> (=> true (and ($Is refType |running#0_0_0@1| Tclass._module.Thread) ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1))) (=> (and (|Set#IsMember| |envThreads#0_0@1| ($Box refType |running#0_0_0@1|)) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@1)) (and (=> (= (ControlFlow 0 23) (- 0 51)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (=> (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79)) (and (=> (= (ControlFlow 0 23) (- 0 50)) (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@1 this@@79) (forall ((|o#0_0_0| T@U) ) (!  (=> (and ($Is refType |o#0_0_0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#0_0_0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0_0_0|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#0_0_0|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |943|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#0_0_0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0_0_0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#0_0_0|)))
))))) (=> (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@1 this@@79) (and (=> (= (ControlFlow 0 23) (- 0 49)) (forall (($o@@67 T@U) ($f@@47 T@U) ) (!  (=> (and (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@67) alloc)))) (or (= $o@@67 this@@79) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType $o@@67)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@67 $f@@47)))
 :qid |_11MutexGuard2legacydfy.130:14|
 :skolemid |945|
))) (=> (forall (($o@@68 T@U) ($f@@48 T@U) ) (!  (=> (and (and (or (not (= $o@@68 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@68) alloc)))) (or (= $o@@68 this@@79) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType $o@@68)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@68 $f@@48)))
 :qid |_11MutexGuard2legacydfy.130:14|
 :skolemid |945|
)) (and (=> (= (ControlFlow 0 23) (- 0 48)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 23) (- 0 47)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (and (and (= (_module.Object.universe |o#0@@13|) this@@79) (or (not (= |o#0@@13| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#0@@13|)) (_module.Object.triggerAxioms $Heap@1 |o#0@@13|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |851|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#0@@13|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@13|)))
))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (and (and (= (_module.Object.universe |o#0@@14|) this@@79) (or (not (= |o#0@@14| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#0@@14|)) (_module.Object.triggerAxioms $Heap@1 |o#0@@14|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |851|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#0@@14|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#0@@14|))
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@14|)))
)))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (=> (_module.Universe.globalBaseInv $Heap@2 this@@79) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79))) (and (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (and (_module.Universe.globalBaseInv $Heap@2 this@@79) (and true (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@2|))) (and (and (and (= (_module.Object.universe |o#1@@2|) this@@79) (or (not (= |o#1@@2| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#1@@2|)) (_module.Object.triggerAxioms $Heap@2 |o#1@@2|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |854|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#1@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#1@@2|))
 :pattern ( (_module.Object.universe |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@2|)))
)))))) (=> (and (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (and (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (and (and (and (_module.Universe.globalBaseInv $Heap@1 this@@79) (_module.Universe.globalBaseInv $Heap@2 this@@79)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)))) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#4|)))) (not ($IsAllocBox ($Box refType |o#4|) Tclass._module.Object $Heap@1)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |860|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4|)))
))))) (forall (($o@@69 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@69) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@69) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@69)) (or (= $o@@69 this@@79) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType $o@@69)))))
 :qid |_11MutexGuard2legacydfy.98:10|
 :skolemid |861|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@69))
))) (and ($HeapSucc $Heap@1 $Heap@2) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@2))) (and (=> (= (ControlFlow 0 23) (- 0 46)) true) (=> ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@2) (and (=> (= (ControlFlow 0 23) (- 0 45)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1) (and (=> (= (ControlFlow 0 23) (- 0 44)) ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1)) (=> ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (and (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|)) (and (=> (= (ControlFlow 0 23) (- 0 43)) true) (and (=> (= (ControlFlow 0 23) (- 0 42)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1) (and (=> (= (ControlFlow 0 23) (- 0 41)) ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1)) (=> ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1) (and (=> (= (ControlFlow 0 23) (- 0 40)) ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1)) (=> ($IsAlloc refType |running#0_0_0@1| Tclass._module.Thread $Heap@1) (and (=> (= (ControlFlow 0 23) (- 0 39)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (=> (= (ControlFlow 0 23) (- 0 38)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#0@@15| T@U) ) (!  (=> (and ($Is refType |o#0@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@15|))) (and (and (and (= (_module.Object.universe |o#0@@15|) this@@79) (or (not (= |o#0@@15| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#0@@15|)) (_module.Object.triggerAxioms $Heap@1 |o#0@@15|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |788|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#0@@15|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#0@@15|))
 :pattern ( (_module.Object.universe |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@15|)))
))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#0@@16| T@U) ) (!  (=> (and ($Is refType |o#0@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@16|))) (and (and (and (= (_module.Object.universe |o#0@@16|) this@@79) (or (not (= |o#0@@16| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#0@@16|)) (_module.Object.triggerAxioms $Heap@1 |o#0@@16|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |788|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#0@@16|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#0@@16|))
 :pattern ( (_module.Object.universe |o#0@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0@@16|)))
)))))))))) (and (=> (= (ControlFlow 0 23) (- 0 37)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (or (_module.Universe.globalBaseInv $Heap@2 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (or (_module.Universe.globalBaseInv $Heap@2 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (=> (= (ControlFlow 0 23) (- 0 36)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (or (_module.Universe.globalBaseInv $Heap@2 this@@79) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@3|))) (and (and (and (= (_module.Object.universe |o#1@@3|) this@@79) (or (not (= |o#1@@3| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#1@@3|)) (_module.Object.triggerAxioms $Heap@2 |o#1@@3|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#1@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#1@@3|))
 :pattern ( (_module.Object.universe |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@3|)))
))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 this@@79) (or (_module.Universe.globalBaseInv $Heap@2 this@@79) (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@4|))) (and (and (and (= (_module.Object.universe |o#1@@4|) this@@79) (or (not (= |o#1@@4| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#1@@4|)) (_module.Object.triggerAxioms $Heap@2 |o#1@@4|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#1@@4|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#1@@4|))
 :pattern ( (_module.Object.universe |o#1@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#1@@4|)))
)))))))))) (and (=> (= (ControlFlow 0 23) (- 0 35)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content))))))))) (and (=> (= (ControlFlow 0 23) (- 0 34)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#2|)))) (not ($IsAllocBox ($Box refType |o#2|) Tclass._module.Object $Heap@1)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |792|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#2|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@1 $Heap@2 this@@79) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#2@@0|)))) (not ($IsAllocBox ($Box refType |o#2@@0|) Tclass._module.Object $Heap@1)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |792|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))))) (and (=> (= (ControlFlow 0 23) (- 0 33)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#3|)))) (or (forall (($o@@70 T@U) ($f@@49 T@U) ) (!  (=> (or (not (= $o@@70 null)) (not true)) (=> (= $o@@70 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@70) $f@@49) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@70) $f@@49))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |794|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@70) $f@@49))
)) (_module.Object.sequenceInv2 $Heap@1 $Heap@2 |o#3|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |795|
 :pattern ( (_module.Object.sequenceInv2 $Heap@1 $Heap@2 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#3|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#3@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#3@@0|)))) (or (forall (($o@@71 T@U) ($f@@50 T@U) ) (!  (=> (or (not (= $o@@71 null)) (not true)) (=> (= $o@@71 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@71) $f@@50) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@71) $f@@50))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |794|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@71) $f@@50))
)) (_module.Object.sequenceInv2 $Heap@1 $Heap@2 |o#3@@0|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |795|
 :pattern ( (_module.Object.sequenceInv2 $Heap@1 $Heap@2 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#3@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))) (and (=> (= (ControlFlow 0 23) (- 0 32)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |796|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4@@0|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (or (_module.Universe.legalTransitionsSequence $Heap@1 $Heap@2 this@@79 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|))) (forall ((|o#4@@1| T@U) ) (!  (=> (and ($Is refType |o#4@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0_0_0@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.owner) Tclass._module.Object $Heap@1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |796|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#4@@1|)))
)))))) (and (=> (= (ControlFlow 0 23) (- 0 31)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 23) (- 0 30)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#5|))) (and (and (and (= (_module.Object.universe |o#5|) this@@79) (or (not (= |o#5| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#5|)) (_module.Object.triggerAxioms $Heap@1 |o#5|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |800|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#5|))
 :pattern ( (_module.Object.universe |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#5|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#5@@0|))) (and (and (and (= (_module.Object.universe |o#5@@0|) this@@79) (or (not (= |o#5@@0| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#5@@0|)) (_module.Object.triggerAxioms $Heap@1 |o#5@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |800|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#5@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#5@@0|))
 :pattern ( (_module.Object.universe |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (and (=> (= (ControlFlow 0 23) (- 0 29)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.inv $Heap@1 |o#6|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@1 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#6|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#6@@0|))) (_module.Object.inv $Heap@1 |o#6@@0|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@1 |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))) (and (=> (= (ControlFlow 0 23) (- 0 28)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#7|))) (and (or (forall (($o@@72 T@U) ($f@@51 T@U) ) (!  (=> (or (not (= $o@@72 null)) (not true)) (=> (= $o@@72 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@72) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@72) $f@@51))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |804|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@72) $f@@51))
)) (_module.Object.inv $Heap@2 |o#7|)) (or (forall (($o@@73 T@U) ($f@@52 T@U) ) (!  (=> (or (not (= $o@@73 null)) (not true)) (=> (= $o@@73 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@73) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@73) $f@@52))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |805|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@73) $f@@52))
)) (_module.Object.inv2 $Heap@1 $Heap@2 |o#7|))))
 :qid |_11MutexGuard2legacydfy.77:16|
 :skolemid |806|
 :pattern ( (_module.Object.inv2 $Heap@1 $Heap@2 |o#7|))
 :pattern ( (_module.Object.inv $Heap@2 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#7|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#7@@0|))) (and (or (forall (($o@@74 T@U) ($f@@53 T@U) ) (!  (=> (or (not (= $o@@74 null)) (not true)) (=> (= $o@@74 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@74) $f@@53) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@74) $f@@53))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |804|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@74) $f@@53))
)) (_module.Object.inv $Heap@2 |o#7@@0|)) (or (forall (($o@@75 T@U) ($f@@54 T@U) ) (!  (=> (or (not (= $o@@75 null)) (not true)) (=> (= $o@@75 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@75) $f@@54) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@75) $f@@54))))
 :qid |_11MutexGuard2legacydfy.77:49|
 :skolemid |805|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@75) $f@@54))
)) (_module.Object.inv2 $Heap@1 $Heap@2 |o#7@@0|))))
 :qid |_11MutexGuard2legacydfy.77:16|
 :skolemid |806|
 :pattern ( (_module.Object.inv2 $Heap@1 $Heap@2 |o#7@@0|))
 :pattern ( (_module.Object.inv $Heap@2 |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))) (and (=> (= (ControlFlow 0 23) (- 0 27)) (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#8|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#8|))))) (_module.Object.inv $Heap@2 |o#8|))
 :qid |_11MutexGuard2legacydfy.79:16|
 :skolemid |807|
 :pattern ( (_module.Object.inv $Heap@2 |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#8|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (or (_module.Universe.legalTransition $Heap@1 $Heap@2 this@@79 |running#0_0_0@1|) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#8@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#8@@0|))))) (_module.Object.inv $Heap@2 |o#8@@0|))
 :qid |_11MutexGuard2legacydfy.79:16|
 :skolemid |807|
 :pattern ( (_module.Object.inv $Heap@2 |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#8@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.Universe.globalInv#canCall| $Heap@2 this@@79) (=> (_module.Universe.globalInv $Heap@2 this@@79) (|_module.Universe.globalInv2#canCall| $Heap@1 $Heap@2 this@@79))) (and (|_module.Universe.globalInv#canCall| $Heap@2 this@@79) (and (_module.Universe.globalInv $Heap@2 this@@79) (and (_module.Universe.globalBaseInv $Heap@2 this@@79) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.inv $Heap@2 |o#10|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |815|
 :pattern ( (_module.Object.inv $Heap@2 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#10|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@1 $Heap@2 this@@79) (and (_module.Universe.globalInv2 $Heap@1 $Heap@2 this@@79) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#11|)) (_module.Object.inv2 $Heap@1 $Heap@2 |o#11|)))
 :qid |_11MutexGuard2legacydfy.33:12|
 :skolemid |817|
 :pattern ( (_module.Object.inv2 $Heap@1 $Heap@2 |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@79) _module.Universe.content)) ($Box refType |o#11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#11|)))
)))) (and (= $Heap@2 $Heap@3) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@3)))) (and (=> (= (ControlFlow 0 23) (- 0 26)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@1) (=> (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@1 $Heap@3 this@@79) (|_module.Universe.globalSequenceInv2#canCall| $Heap@1 $Heap@3 this@@79)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@1 $Heap@3 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@1 $Heap@3 this@@79) (forall ((|o#0_0_1| T@U) ) (!  (=> (and ($Is refType |o#0_0_1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0_0_1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@79) _module.Universe.content)) ($Box refType |o#0_0_1|)) (_module.Object.sequenceInv2 $Heap@1 $Heap@3 |o#0_0_1|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |947|
 :pattern ( (_module.Object.sequenceInv2 $Heap@1 $Heap@3 |o#0_0_1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@79) _module.Universe.content)) ($Box refType |o#0_0_1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#0_0_1|)))
))))) (=> (and (_module.Universe.globalSequenceInv2 $Heap@1 $Heap@3 this@@79) ($IsAllocBox ($Box refType this@@79) Tclass._module.Universe? $Heap@3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@3 this@@79) (and (=> (= (ControlFlow 0 23) 20) anon43_Then_correct) (=> (= (ControlFlow 0 23) 22) anon43_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon42_Else_correct  (=> (and (not (and ($Is refType |running#0_0_1@1| Tclass._module.Thread) ($IsAlloc refType |running#0_0_1@1| Tclass._module.Thread $Heap@1))) (= (ControlFlow 0 54) 23)) anon24_correct)))
(let ((anon42_Then_correct  (=> (and (and ($Is refType |running#0_0_1@1| Tclass._module.Thread) ($IsAlloc refType |running#0_0_1@1| Tclass._module.Thread $Heap@1)) (= (ControlFlow 0 53) 23)) anon24_correct)))
(let ((anon41_Then_correct  (=> (> (|Set#Card| |envThreads#0_0@1|) 0) (and (=> (= (ControlFlow 0 55) 53) anon42_Then_correct) (=> (= (ControlFlow 0 55) 54) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (>= 0 (|Set#Card| |envThreads#0_0@1|)) (=> (and (= $Heap@4 $Heap@1) (= (ControlFlow 0 18) 4)) anon28_correct))))
(let ((anon21_correct  (=> (= |envThreads#0_0@1| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) |preempting#0|))) (and (=> (= (ControlFlow 0 56) 55) anon41_Then_correct) (=> (= (ControlFlow 0 56) 18) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |t#0_0@1|)) (or (not (= |t#0_0@1| |preempting#0|)) (not true)))) (= (ControlFlow 0 59) 56)) anon21_correct)))
(let ((anon40_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |t#0_0@1|)) (or (not (= |t#0_0@1| |preempting#0|)) (not true))) (= (ControlFlow 0 58) 56)) anon21_correct)))
(let ((anon39_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |t#0_0@1|))) (and (=> (= (ControlFlow 0 61) 58) anon40_Then_correct) (=> (= (ControlFlow 0 61) 59) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |t#0_0@1|)) (and (=> (= (ControlFlow 0 60) 58) anon40_Then_correct) (=> (= (ControlFlow 0 60) 59) anon40_Else_correct)))))
(let ((anon38_Then_correct  (=> (and ($Is refType |t#0_0@1| Tclass._module.Thread) ($IsAlloc refType |t#0_0@1| Tclass._module.Thread $Heap@1)) (and (=> (= (ControlFlow 0 62) 60) anon39_Then_correct) (=> (= (ControlFlow 0 62) 61) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and ($Is refType |t#0_0@1| Tclass._module.Thread) ($IsAlloc refType |t#0_0@1| Tclass._module.Thread $Heap@1))) (= (ControlFlow 0 57) 56)) anon21_correct)))
(let ((anon37_Else_correct  (=> (and (> |steps#0@1| 0) (= |$decr$loop#00@1| (- |steps#0@1| 0))) (and (=> (= (ControlFlow 0 63) 62) anon38_Then_correct) (=> (= (ControlFlow 0 63) 57) anon38_Else_correct)))))
(let ((anon31_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 78) 77) anon37_Then_correct) (=> (= (ControlFlow 0 78) 63) anon37_Else_correct)))))
(let ((anon30_LoopBody_correct  (and (=> (= (ControlFlow 0 96) 95) anon31_Then_correct) (=> (= (ControlFlow 0 96) 78) anon31_Else_correct))))
(let ((anon30_LoopDone_correct true))
(let ((anon30_LoopHead_correct  (=> (=> |defass#running#0_0_0@0| (and ($Is refType |running#0_0_0@0| Tclass._module.Thread) ($IsAlloc refType |running#0_0_0@0| Tclass._module.Thread $Heap@1))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and ($Is SetType |envThreads#0_0@0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |envThreads#0_0@0| (TSet Tclass._module.Thread) $Heap@1))) (=> (and (and (and (not false) (<= 0 |steps#0@1|)) (<= 0 |$decr_init$loop#00@0|)) (and (and (=> |$w$loop#0@0| (and (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (=> (_module.Universe.globalInv $Heap@1 this@@79) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79)))))) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#20@@1| T@U) ) (!  (=> (and ($Is refType |o#20@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#20@@1|))) (and (and (and (= (_module.Object.universe |o#20@@1|) this@@79) (or (not (= |o#20@@1| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#20@@1|)) (_module.Object.triggerAxioms $Heap@1 |o#20@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |922|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#20@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#20@@1|))
 :pattern ( (_module.Object.universe |o#20@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#20@@1|)))
))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalInv $Heap@1 this@@79) (forall ((|o#21@@1| T@U) ) (!  (=> (and ($Is refType |o#21@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#21@@1|))) (_module.Object.inv $Heap@1 |o#21@@1|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |924|
 :pattern ( (_module.Object.inv $Heap@1 |o#21@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#21@@1|)))
)))))))) (=> (and (and (and (and (=> |$w$loop#0@0| (and (|_module.Universe.globalInv#canCall| $Heap@1 this@@79) (and (_module.Universe.globalInv $Heap@1 this@@79) (and (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#21@@2| T@U) ) (!  (=> (and ($Is refType |o#21@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#21@@2|))) (_module.Object.inv $Heap@1 |o#21@@2|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |925|
 :pattern ( (_module.Object.inv $Heap@1 |o#21@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#21@@2|)))
)))))) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#22@@1| T@U) ) (!  (=> (and ($Is refType |o#22@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@1|))) (and (and (and (= (_module.Object.universe |o#22@@1|) this@@79) (or (not (= |o#22@@1| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#22@@1|)) (_module.Object.triggerAxioms $Heap@@45 |o#22@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |926|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#22@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#22@@1|))
 :pattern ( (_module.Object.universe |o#22@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@1|)))
))))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 this@@79) (or (_module.Universe.globalBaseInv $Heap@1 this@@79) (forall ((|o#23@@1| T@U) ) (!  (=> (and ($Is refType |o#23@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#23@@1|))) (and (and (and (= (_module.Object.universe |o#23@@1|) this@@79) (or (not (= |o#23@@1| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#23@@1|)) (_module.Object.triggerAxioms $Heap@1 |o#23@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |928|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#23@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#23@@1|))
 :pattern ( (_module.Object.universe |o#23@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#23@@1|)))
))))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content))))))))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (forall ((|o#24@@1| T@U) ) (!  (=> (and ($Is refType |o#24@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#24@@1|)))) (not ($IsAllocBox ($Box refType |o#24@@1|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |930|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#24@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@1|)))
))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#25@@1| T@U) ) (!  (=> (and ($Is refType |o#25@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#25@@1|)))) (or (forall (($o@@76 T@U) ($f@@55 T@U) ) (!  (=> (or (not (= $o@@76 null)) (not true)) (=> (= $o@@76 |o#25@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@76) $f@@55) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@76) $f@@55))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |932|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@76) $f@@55))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#25@@1|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |933|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#25@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#25@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@1|)))
)))))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#26@@1| T@U) ) (!  (=> (and ($Is refType |o#26@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#26@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |934|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#26@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@1|)))
))))) (=> |$w$loop#0@0| (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (and (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@1 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@1 this@@79) (forall ((|o#25@@2| T@U) ) (!  (=> (and ($Is refType |o#25@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#25@@2|)))) (or (forall (($o@@77 T@U) ($f@@56 T@U) ) (!  (=> (or (not (= $o@@77 null)) (not true)) (=> (= $o@@77 |o#25@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@77) $f@@56) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@77) $f@@56))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |935|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@77) $f@@56))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#25@@2|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |936|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#25@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#25@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@2|)))
))) (forall ((|o#26@@2| T@U) ) (!  (=> (and ($Is refType |o#26@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#26@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |937|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#26@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@2|)))
))))))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@1 this@@79) (forall ((|o#27@@0| T@U) ) (!  (=> (and ($Is refType |o#27@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#27@@0|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#27@@0|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |938|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#27@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#27@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@0|)))
))))) (=> |$w$loop#0@0| (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@1 this@@79) (and (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@1 this@@79) (forall ((|o#27@@1| T@U) ) (!  (=> (and ($Is refType |o#27@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#27@@1|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#27@@1|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |939|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@1 |o#27@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@79) _module.Universe.content)) ($Box refType |o#27@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@1|)))
))))))) (and (and (forall (($o@@78 T@U) ) (!  (=> (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@78) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@78) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@78)) (or (= $o@@78 this@@79) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType $o@@78)))))
 :qid |_11MutexGuard2legacydfy.121:5|
 :skolemid |940|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@78))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@79 T@U) ($f@@57 T@U) ) (!  (=> (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@79) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@79) $f@@57) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@79) $f@@57)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@79 $f@@57))))
 :qid |_11MutexGuard2legacydfy.121:5|
 :skolemid |941|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@79) $f@@57))
)) (<= (- |steps#0@1| 0) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 97) 2) anon30_LoopDone_correct) (=> (= (ControlFlow 0 97) 96) anon30_LoopBody_correct))))))))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 98) (- 0 122)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (<= (LitInt 0) (LitInt 0))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (<= (LitInt 0) (LitInt 0))) (exists ((|$as#steps0#0| Int) ) (! (<= (LitInt 0) |$as#steps0#0|)
 :qid |_11MutexGuard2legacydfy.119:9|
 :skolemid |920|
))))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (<= (LitInt 0) (LitInt 0))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (<= (LitInt 0) (LitInt 0))) (exists ((|$as#steps0#0@@0| Int) ) (! (<= (LitInt 0) |$as#steps0#0@@0|)
 :qid |_11MutexGuard2legacydfy.119:9|
 :skolemid |920|
)))) (=> (and (<= (LitInt 0) |steps#0@0|) (= |running##0@0| (Lit SetType |Set#Empty|))) (and (=> (= (ControlFlow 0 98) (- 0 121)) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45)) (=> ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45) (and (=> (= (ControlFlow 0 98) (- 0 120)) ($IsAlloc SetType (Lit SetType |Set#Empty|) (TSet Tclass._module.Thread) $Heap@@45)) (=> ($IsAlloc SetType (Lit SetType |Set#Empty|) (TSet Tclass._module.Thread) $Heap@@45) (=> (= call0formal@previous$Heap@0 $Heap@@45) (and (=> (= (ControlFlow 0 98) (- 0 119)) ($IsAlloc SetType |running##0@0| (TSet Tclass._module.Thread) call0formal@previous$Heap@0)) (=> ($IsAlloc SetType |running##0@0| (TSet Tclass._module.Thread) call0formal@previous$Heap@0) (and (=> (= (ControlFlow 0 98) (- 0 118)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 this@@79) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 this@@79) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 98) (- 0 117)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 this@@79) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 this@@79) (forall ((|o#0@@17| T@U) ) (!  (=> (and ($Is refType |o#0@@17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#0@@17|))) (and (and (and (= (_module.Object.universe |o#0@@17|) this@@79) (or (not (= |o#0@@17| this@@79)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@17|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@17|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |758|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@17|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@17|))
 :pattern ( (_module.Object.universe |o#0@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#0@@17|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 this@@79) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 this@@79) (forall ((|o#0@@18| T@U) ) (!  (=> (and ($Is refType |o#0@@18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#0@@18|))) (and (and (and (= (_module.Object.universe |o#0@@18|) this@@79) (or (not (= |o#0@@18| this@@79)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@18|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@18|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |758|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@18|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@18|))
 :pattern ( (_module.Object.universe |o#0@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#0@@18|)))
)))))))) (and (=> (= (ControlFlow 0 98) (- 0 116)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 98) (- 0 115)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#1@@5|))) (and (and (and (= (_module.Object.universe |o#1@@5|) this@@79) (or (not (= |o#1@@5| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#1@@5|)) (_module.Object.triggerAxioms $Heap@@45 |o#1@@5|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |760|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#1@@5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#1@@5|))
 :pattern ( (_module.Object.universe |o#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#1@@5|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#1@@6| T@U) ) (!  (=> (and ($Is refType |o#1@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#1@@6|))) (and (and (and (= (_module.Object.universe |o#1@@6|) this@@79) (or (not (= |o#1@@6| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#1@@6|)) (_module.Object.triggerAxioms $Heap@@45 |o#1@@6|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |760|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#1@@6|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#1@@6|))
 :pattern ( (_module.Object.universe |o#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#1@@6|)))
)))))))) (and (=> (= (ControlFlow 0 98) (- 0 114)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 98) (- 0 113)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (forall ((|o#2@@1| T@U) ) (!  (=> (and ($Is refType |o#2@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#2@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#2@@1|)))) (not ($IsAllocBox ($Box refType |o#2@@1|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |762|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#2@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#2@@1|)))
))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79) (forall ((|o#2@@2| T@U) ) (!  (=> (and ($Is refType |o#2@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#2@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#2@@2|)))) (not ($IsAllocBox ($Box refType |o#2@@2|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |762|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#2@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#2@@2|)))
)))))) (and (=> (= (ControlFlow 0 98) (- 0 112)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (forall ((|o#3@@1| T@U) ) (!  (=> (and ($Is refType |o#3@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#3@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#3@@1|)))) (or (forall (($o@@80 T@U) ($f@@58 T@U) ) (!  (=> (or (not (= $o@@80 null)) (not true)) (=> (= $o@@80 |o#3@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@80) $f@@58) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@80) $f@@58))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |764|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@80) $f@@58))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#3@@1|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |765|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#3@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#3@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#3@@1|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (forall ((|o#3@@2| T@U) ) (!  (=> (and ($Is refType |o#3@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#3@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#3@@2|)))) (or (forall (($o@@81 T@U) ($f@@59 T@U) ) (!  (=> (or (not (= $o@@81 null)) (not true)) (=> (= $o@@81 |o#3@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@81) $f@@59) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@81) $f@@59))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |764|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@81) $f@@59))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#3@@2|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |765|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#3@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#3@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#3@@2|)))
)))) (and (=> (= (ControlFlow 0 98) (- 0 111)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (forall ((|o#4@@2| T@U) ) (!  (=> (and ($Is refType |o#4@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#4@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#4@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |766|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#4@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#4@@2|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@@45 this@@79 |running##0@0|) (forall ((|o#4@@3| T@U) ) (!  (=> (and ($Is refType |o#4@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#4@@3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#4@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |766|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#4@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#4@@3|)))
)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Universe.globalSequenceInv2#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79)) (and (and (|_module.Universe.globalSequenceInv2#canCall| call0formal@previous$Heap@0 $Heap@@45 this@@79) (and (_module.Universe.globalSequenceInv2 call0formal@previous$Heap@0 $Heap@@45 this@@79) (forall ((|o#5@@1| T@U) ) (!  (=> (and ($Is refType |o#5@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#5@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#5@@1|)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#5@@1|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |771|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@@45 |o#5@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#5@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#5@@1|)))
)))) (and (= $Heap@@45 $Heap@0) (= |$decr_init$loop#00@0| (- |steps#0@0| 0))))) (and (=> (= (ControlFlow 0 98) (- 0 110)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 98) (- 0 109)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (forall ((|o#20@@2| T@U) ) (!  (=> (and ($Is refType |o#20@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#20@@2|))) (and (and (and (= (_module.Object.universe |o#20@@2|) this@@79) (or (not (= |o#20@@2| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#20@@2|)) (_module.Object.triggerAxioms $Heap@0 |o#20@@2|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |922|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#20@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#20@@2|))
 :pattern ( (_module.Object.universe |o#20@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#20@@2|)))
)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (forall ((|o#20@@3| T@U) ) (!  (=> (and ($Is refType |o#20@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#20@@3|))) (and (and (and (= (_module.Object.universe |o#20@@3|) this@@79) (or (not (= |o#20@@3| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#20@@3|)) (_module.Object.triggerAxioms $Heap@0 |o#20@@3|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |922|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#20@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#20@@3|))
 :pattern ( (_module.Object.universe |o#20@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#20@@3|)))
))))))) (and (=> (= (ControlFlow 0 98) (- 0 108)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (forall ((|o#21@@3| T@U) ) (!  (=> (and ($Is refType |o#21@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#21@@3|))) (_module.Object.inv $Heap@0 |o#21@@3|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |924|
 :pattern ( (_module.Object.inv $Heap@0 |o#21@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#21@@3|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalInv $Heap@0 this@@79) (forall ((|o#21@@4| T@U) ) (!  (=> (and ($Is refType |o#21@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#21@@4|))) (_module.Object.inv $Heap@0 |o#21@@4|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |924|
 :pattern ( (_module.Object.inv $Heap@0 |o#21@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#21@@4|)))
))))) (and (=> (= (ControlFlow 0 98) (- 0 107)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 98) (- 0 106)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#22@@2| T@U) ) (!  (=> (and ($Is refType |o#22@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@2|))) (and (and (and (= (_module.Object.universe |o#22@@2|) this@@79) (or (not (= |o#22@@2| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#22@@2|)) (_module.Object.triggerAxioms $Heap@@45 |o#22@@2|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |926|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#22@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#22@@2|))
 :pattern ( (_module.Object.universe |o#22@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@2|)))
)))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@45 this@@79) (or (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#22@@3| T@U) ) (!  (=> (and ($Is refType |o#22@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@3|))) (and (and (and (= (_module.Object.universe |o#22@@3|) this@@79) (or (not (= |o#22@@3| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@@45 |o#22@@3|)) (_module.Object.triggerAxioms $Heap@@45 |o#22@@3|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |926|
 :pattern ( (_module.Object.triggerAxioms $Heap@@45 |o#22@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@45 |o#22@@3|))
 :pattern ( (_module.Object.universe |o#22@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#22@@3|)))
))))))))) (and (=> (= (ControlFlow 0 98) (- 0 105)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 98) (- 0 104)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (forall ((|o#23@@2| T@U) ) (!  (=> (and ($Is refType |o#23@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#23@@2|))) (and (and (and (= (_module.Object.universe |o#23@@2|) this@@79) (or (not (= |o#23@@2| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#23@@2|)) (_module.Object.triggerAxioms $Heap@0 |o#23@@2|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |928|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#23@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#23@@2|))
 :pattern ( (_module.Object.universe |o#23@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#23@@2|)))
)))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 this@@79) (or (_module.Universe.globalBaseInv $Heap@0 this@@79) (forall ((|o#23@@3| T@U) ) (!  (=> (and ($Is refType |o#23@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#23@@3|))) (and (and (and (= (_module.Object.universe |o#23@@3|) this@@79) (or (not (= |o#23@@3| this@@79)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#23@@3|)) (_module.Object.triggerAxioms $Heap@0 |o#23@@3|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |928|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#23@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#23@@3|))
 :pattern ( (_module.Object.universe |o#23@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#23@@3|)))
))))))))) (and (=> (= (ControlFlow 0 98) (- 0 103)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content))))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)))))))) (and (=> (= (ControlFlow 0 98) (- 0 102)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (forall ((|o#24@@2| T@U) ) (!  (=> (and ($Is refType |o#24@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#24@@2|)))) (not ($IsAllocBox ($Box refType |o#24@@2|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |930|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#24@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@2|)))
)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@45 $Heap@0 this@@79) (forall ((|o#24@@3| T@U) ) (!  (=> (and ($Is refType |o#24@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#24@@3|)))) (not ($IsAllocBox ($Box refType |o#24@@3|) Tclass._module.Object $Heap@@45)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |930|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#24@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#24@@3|)))
))))))) (and (=> (= (ControlFlow 0 98) (- 0 101)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#25@@3| T@U) ) (!  (=> (and ($Is refType |o#25@@3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#25@@3|)))) (or (forall (($o@@82 T@U) ($f@@60 T@U) ) (!  (=> (or (not (= $o@@82 null)) (not true)) (=> (= $o@@82 |o#25@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@82) $f@@60) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@82) $f@@60))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |932|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@82) $f@@60))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#25@@3|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |933|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#25@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#25@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@3|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#25@@4| T@U) ) (!  (=> (and ($Is refType |o#25@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#25@@4|)))) (or (forall (($o@@83 T@U) ($f@@61 T@U) ) (!  (=> (or (not (= $o@@83 null)) (not true)) (=> (= $o@@83 |o#25@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@83) $f@@61) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 $o@@83) $f@@61))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |932|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@83) $f@@61))
)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#25@@4|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |933|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#25@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#25@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#25@@4|)))
))))) (and (=> (= (ControlFlow 0 98) (- 0 100)) (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#26@@3| T@U) ) (!  (=> (and ($Is refType |o#26@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#26@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |934|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#26@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@3|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@45 $Heap@0 this@@79 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|))) (forall ((|o#26@@4| T@U) ) (!  (=> (and ($Is refType |o#26@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@45)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#26@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |934|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#26@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 |o#26@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#26@@4|)))
))))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@0 this@@79) (forall ((|o#27@@2| T@U) ) (!  (=> (and ($Is refType |o#27@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@2|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#27@@2|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#27@@2|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |938|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#27@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#27@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@2|)))
)))))) (=> (=> |$w$loop#0@0| (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@45 $Heap@0 this@@79) (or (_module.Universe.globalSequenceInv2 $Heap@@45 $Heap@0 this@@79) (forall ((|o#27@@3| T@U) ) (!  (=> (and ($Is refType |o#27@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#27@@3|)) (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#27@@3|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |938|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@45 $Heap@0 |o#27@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@79) _module.Universe.content)) ($Box refType |o#27@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#27@@3|)))
))))) (=> (= (ControlFlow 0 98) 97) anon30_LoopHead_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon29_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@45 alloc this@@79 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)))) (and (=> (= (ControlFlow 0 123) 98) anon29_Then_correct) (=> (= (ControlFlow 0 123) 1) anon29_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@45) ($IsHeapAnchor $Heap@@45)) (=> (and (and (and (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Universe) ($IsAlloc refType this@@79 Tclass._module.Universe $Heap@@45))) (and ($Is refType |preempting#0| Tclass._module.Thread) ($IsAlloc refType |preempting#0| Tclass._module.Thread $Heap@@45))) (and (and ($Is SetType |envThreads#0_0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |envThreads#0_0| (TSet Tclass._module.Thread) $Heap@@45)) true)) (and (and (and (=> |defass#running#0_0_0| (and ($Is refType |running#0_0_0| Tclass._module.Thread) ($IsAlloc refType |running#0_0_0| Tclass._module.Thread $Heap@@45))) true) (= 19 $FunctionContextHeight)) (and (and (|_module.Universe.globalInv#canCall| $Heap@@45 this@@79) (and (_module.Universe.globalInv $Heap@@45 this@@79) (and (_module.Universe.globalBaseInv $Heap@@45 this@@79) (forall ((|o#11@@0| T@U) ) (!  (=> (and ($Is refType |o#11@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#11@@0|))) (_module.Object.inv $Heap@@45 |o#11@@0|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |900|
 :pattern ( (_module.Object.inv $Heap@@45 |o#11@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |o#11@@0|)))
))))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@79) _module.Universe.content)) ($Box refType |preempting#0|)) (= (ControlFlow 0 124) 123))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
