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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.legalTransitionsSequence (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransitionsSequence#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.OwnedObject.owner () T@U)
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
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Universe.globalSequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
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
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.volatileOwns (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun |_module.Universe.globalSequenceInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $h0)))) (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap $h0 this |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |681|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap $h0 this |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |682|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@0 $Heap this@@0) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $prevHeap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@0 this@@0) (=> (_module.Universe.globalBaseInv $prevHeap@@0 this@@0) (|_module.Universe.globalBaseInv#canCall| $Heap this@@0))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@0 this@@0) (_module.Universe.globalBaseInv $Heap this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@0)))
 :qid |_11MutexGuard2legacydfy.45:16|
 :skolemid |676|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_11MutexGuard2legacydfy.36:22|
 :skolemid |677|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@0 this@@1) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.OwnedObject) ($IsAlloc refType this@@1 Tclass._module.OwnedObject $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@0 this@@1)) (= (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@1)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@0 this@@1)))))
 :qid |_11MutexGuard2legacydfy.323:19|
 :skolemid |1508|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@2) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)) (=> (= (_module.Object.universe |o#0@@0|) this@@2) (=> (or (not (= |o#0@@0| this@@2)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@1 |o#0@@0|) (=> (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|) (|_module.Object.triggerAxioms#canCall| $Heap@@1 |o#0@@0|)))))))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |630|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@1 this@@2)  (and true (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (and (and (= (_module.Object.universe |o#0@@1|) this@@2) (or (not (= |o#0@@1| this@@2)) (not true))) (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|)) (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |629|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_11MutexGuard2legacydfy.17:19|
 :skolemid |631|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1520|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1521|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1608|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1609|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@5) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Universe) ($IsAlloc refType this@@5 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@5) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@5) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0@@2|)))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |643|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@5)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@5) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Universe.content)) ($Box refType |o#0@@3|))) (_module.Object.inv $Heap@@2 |o#0@@3|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |642|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_11MutexGuard2legacydfy.22:19|
 :skolemid |644|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@5) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Thread?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is refType $o@@2 Tclass._module.Thread?))
)))
(assert (forall (($h T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1494|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.nonvolatileVersion)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@3 this@@6) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@3 this@@6) (_module.Thread.baseFieldsInv $Heap@@3 this@@6)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1217|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@6) ($Is refType this@@6 Tclass._module.Thread) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@6) (_module.Thread.baseFieldsInv $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@4 this@@7) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@4 this@@7) (_module.OwnedObject.baseFieldsInv $Heap@@4 this@@7)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1509|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@7) ($Is refType this@@7 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@4 this@@7) (_module.OwnedObject.baseFieldsInv $Heap@@4 this@@7) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@5 this@@8) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@5 this@@8) (_module.Thread.localInv $Heap@@5 this@@8)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1231|
 :pattern ( (_module.Object.localInv $Heap@@5 this@@8) ($Is refType this@@8 Tclass._module.Thread) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.localInv $Heap@@5 this@@8) (_module.Thread.localInv $Heap@@5 this@@8) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@6 this@@9) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@6 this@@9) (_module.OwnedObject.localInv $Heap@@6 this@@9)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1531|
 :pattern ( (_module.Object.localInv $Heap@@6 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.localInv $Heap@@6 this@@9) (_module.OwnedObject.localInv $Heap@@6 this@@9) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@7 this@@10) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@7 this@@10) (_module.Thread.inv $Heap@@7 this@@10)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1243|
 :pattern ( (_module.Object.inv $Heap@@7 this@@10) ($Is refType this@@10 Tclass._module.Thread) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.inv $Heap@@7 this@@10) (_module.Thread.inv $Heap@@7 this@@10) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@8 this@@11) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@8 this@@11) (_module.OwnedObject.inv $Heap@@8 this@@11)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1544|
 :pattern ( (_module.Object.inv $Heap@@8 this@@11) ($Is refType this@@11 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.inv $Heap@@8 this@@11) (_module.OwnedObject.inv $Heap@@8 this@@11) ($IsGoodHeap $Heap@@8))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@9 T@U) (this@@12 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@3 $Heap@@9 this@@12 |running#0@@0|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@3 $Heap@@9)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Universe) ($IsAlloc refType this@@12 Tclass._module.Universe $prevHeap@@3)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@3 $Heap@@9 this@@12) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@3 $Heap@@9 this@@12) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@12) _module.Universe.content)) ($Box refType |o#0@@4|))) (=> (not (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@4 null)) (not true)) (=> (= $o@@4 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 $o@@4) $f@@2))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |689|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@4) $f@@2))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@3 $Heap@@9 |o#0@@4|))))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |690|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@3 $Heap@@9 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@12) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@3 $Heap@@9 this@@12 |running#0@@0|)  (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@3 $Heap@@9 this@@12) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#0@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@12) _module.Universe.content)) ($Box refType |o#0@@5|)))) (or (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@5 null)) (not true)) (=> (= $o@@5 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 $o@@5) $f@@3))))
 :qid |_11MutexGuard2legacydfy.57:65|
 :skolemid |685|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@5) $f@@3))
)) (_module.Object.sequenceInv2 $prevHeap@@3 $Heap@@9 |o#0@@5|)))
 :qid |_11MutexGuard2legacydfy.57:16|
 :skolemid |686|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@3 $Heap@@9 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@12) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#0@@5|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_11MutexGuard2legacydfy.60:16|
 :skolemid |688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@12) _module.Universe.content)) ($Box refType |o#1|)))
))))))
 :qid |_11MutexGuard2legacydfy.53:22|
 :skolemid |693|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@3 $Heap@@9 this@@12 |running#0@@0|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall (($prevHeap@@4 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Universe) ($IsAlloc refType this@@13 Tclass._module.Universe $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@6) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |650|
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@4 $h0@@2 this@@13) (_module.Universe.globalSequenceInv2 $prevHeap@@4 $h1@@2 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |651|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.globalSequenceInv2 $prevHeap@@4 $h1@@2 this@@13))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Universe) ($IsAlloc refType this@@14 Tclass._module.Universe $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |672|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h0@@3 this@@14) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h1@@3 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |673|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h1@@3 this@@14))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1153|
)) (= (_module.Object.sequenceInv2 $prevHeap@@6 $h0@@4 this@@15) (_module.Object.sequenceInv2 $prevHeap@@6 $h1@@4 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1154|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.sequenceInv2 $prevHeap@@6 $h1@@4 this@@15))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Thread) ($IsAlloc refType this@@16 Tclass._module.Thread $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1257|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@7 $h0@@5 this@@16) (_module.Thread.sequenceInv2 $prevHeap@@7 $h1@@5 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Thread.sequenceInv2 $prevHeap@@7 $h1@@5 this@@16))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.OwnedObject) ($IsAlloc refType this@@17 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1560|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@8 $h0@@6 this@@17) (_module.OwnedObject.sequenceInv2 $prevHeap@@8 $h1@@6 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1561|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.sequenceInv2 $prevHeap@@8 $h1@@6 this@@17))
)))
(assert (forall (($o@@11 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@6)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@12 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@7)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@13 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass._module.Thread? $h@@8)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@14 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $h@@9))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@10 this@@18) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Object) ($IsAlloc refType this@@18 Tclass._module.Object $Heap@@10)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@18)) _module.Universe.content)) ($Box refType this@@18)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@10 this@@18) (=> (_module.Object.baseFieldsInv $Heap@@10 this@@18) (|_module.Universe.globalBaseInv#canCall| $Heap@@10 (_module.Object.universe this@@18))))) (= (_module.Object.objectGlobalBaseInv $Heap@@10 this@@18)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@18)) _module.Universe.content)) ($Box refType this@@18)) (_module.Object.baseFieldsInv $Heap@@10 this@@18)) (_module.Universe.globalBaseInv $Heap@@10 (_module.Object.universe this@@18))))))
 :qid |_11MutexGuard2legacydfy.202:19|
 :skolemid |1071|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@10 this@@18) ($IsGoodHeap $Heap@@10))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@11 this@@19) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Thread) ($IsAlloc refType this@@19 Tclass._module.Thread $Heap@@11)))))) (= (_module.Thread.baseFieldsInv $Heap@@11 this@@19) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.260:19|
 :skolemid |1216|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@11 this@@19) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@15 T@U) ($f@@9 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@15 $f@@9))  (=> (and (or (not (= $o@@15 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@15) |l#2@@0|)))) (or (= $o@@15 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@15)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2454|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@15 $f@@9))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@12 this@@20) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $Heap@@12)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@12 this@@20) (=> (_module.Object.objectGlobalBaseInv $Heap@@12 this@@20) (|_module.OwnedObject.localUserInv#canCall| $Heap@@12 this@@20))) (= (_module.OwnedObject.localInv $Heap@@12 this@@20)  (and (_module.Object.objectGlobalBaseInv $Heap@@12 this@@20) (_module.OwnedObject.localUserInv $Heap@@12 this@@20)))))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1530|
 :pattern ( (_module.OwnedObject.localInv $Heap@@12 this@@20) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@13 this@@21) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $Heap@@13)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@13 this@@21) (=> (_module.OwnedObject.localInv $Heap@@13 this@@21) (|_module.OwnedObject.userInv#canCall| $Heap@@13 this@@21))) (= (_module.OwnedObject.inv $Heap@@13 this@@21)  (and (_module.OwnedObject.localInv $Heap@@13 this@@21) (_module.OwnedObject.userInv $Heap@@13 this@@21)))))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1543|
 :pattern ( (_module.OwnedObject.inv $Heap@@13 this@@21) ($IsGoodHeap $Heap@@13))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@10 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@16) Tclass._module.Universe $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@17) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@17))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@14 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@9 $Heap@@14 this@@22) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@9 $Heap@@14 this@@22) (_module.Thread.sequenceInv2 $prevHeap@@9 $Heap@@14 this@@22)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1262|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@9 $Heap@@14 this@@22) ($Is refType this@@22 Tclass._module.Thread) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@9 $Heap@@14 this@@22) (_module.Thread.sequenceInv2 $prevHeap@@9 $Heap@@14 this@@22) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@15 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@10 $Heap@@15 this@@23) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@10 $Heap@@15 this@@23) (_module.OwnedObject.sequenceInv2 $prevHeap@@10 $Heap@@15 this@@23)))
 :qid |_11MutexGuard2legacydfy.250:22|
 :skolemid |1565|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@10 $Heap@@15 this@@23) ($Is refType this@@23 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@10 $Heap@@15 this@@23) (_module.OwnedObject.sequenceInv2 $prevHeap@@10 $Heap@@15 this@@23) ($IsGoodHeap $Heap@@15))
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
(assert (forall (($o@@18 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@18 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2437|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@19 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@19 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@16 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@11 $Heap@@16 this@@24) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@16)) ($HeapSucc $prevHeap@@11 $Heap@@16)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Thread) ($IsAlloc refType this@@24 Tclass._module.Thread $prevHeap@@11)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@11 $Heap@@16 this@@24) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.275:22|
 :skolemid |1261|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@11 $Heap@@16 this@@24) ($IsGoodHeap $Heap@@16))
))))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@20 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (or (= $o@@20 this@@25) (= $o@@20 (_module.Object.universe this@@25)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@20) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@20) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1133|
)) (= (_module.Object.baseFieldsInv $h0@@7 this@@25) (_module.Object.baseFieldsInv $h1@@7 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1134|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.baseFieldsInv $h1@@7 this@@25))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@21 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (or (= $o@@21 this@@26) (= $o@@21 (_module.Object.universe this@@26)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@21) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@21) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1212|
)) (= (_module.Thread.baseFieldsInv $h0@@8 this@@26) (_module.Thread.baseFieldsInv $h1@@8 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1213|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.baseFieldsInv $h1@@8 this@@26))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@22 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (or (= $o@@22 this@@27) (= $o@@22 (_module.Object.universe this@@27)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@22) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@22) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1504|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@9 this@@27) (_module.OwnedObject.baseFieldsInv $h1@@9 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1505|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.baseFieldsInv $h1@@9 this@@27))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@23 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (or (= $o@@23 this@@28) (= $o@@23 (_module.Object.universe this@@28)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@23) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@23) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1602|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@10 this@@28) (_module.OwnedObject.baseUserFieldsInv $h1@@10 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1603|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.baseUserFieldsInv $h1@@10 this@@28))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@17 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@12 $Heap@@17 this@@29) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@12 $Heap@@17)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.OwnedObject) ($IsAlloc refType this@@29 Tclass._module.OwnedObject $prevHeap@@12)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@12 $Heap@@17 this@@29))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@12 $Heap@@17 this@@29))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|)))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@12 $Heap@@17 this@@29)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@12 $Heap@@17 this@@29)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@29) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_11MutexGuard2legacydfy.349:22|
 :skolemid |1564|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@12 $Heap@@17 this@@29) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@18 this@@30) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Object) ($IsAlloc refType this@@30 Tclass._module.Object $Heap@@18)))))) (_module.Object.triggerAxioms $Heap@@18 this@@30))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1089|
 :pattern ( (_module.Object.triggerAxioms $Heap@@18 this@@30))
))))
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
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TInt) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@12 TInt))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@19 this@@31) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Thread) ($IsAlloc refType this@@31 Tclass._module.Thread $Heap@@19)))))) (=> (_module.Thread.localInv $Heap@@19 this@@31) (_module.Object.objectGlobalBaseInv $Heap@@19 this@@31)))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1228|
 :pattern ( (_module.Thread.localInv $Heap@@19 this@@31))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@20 this@@32) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.OwnedObject) ($IsAlloc refType this@@32 Tclass._module.OwnedObject $Heap@@20)))))) (=> (_module.OwnedObject.localInv $Heap@@20 this@@32) (_module.Object.objectGlobalBaseInv $Heap@@20 this@@32)))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1528|
 :pattern ( (_module.OwnedObject.localInv $Heap@@20 this@@32))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@21 this@@33) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Object) ($IsAlloc refType this@@33 Tclass._module.Object $Heap@@21)))))) (=> (_module.Object.localInv $Heap@@21 this@@33) (_module.Object.objectGlobalBaseInv $Heap@@21 this@@33)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1141|
 :pattern ( (_module.Object.localInv $Heap@@21 this@@33))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@22 this@@34) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Thread) ($IsAlloc refType this@@34 Tclass._module.Thread $Heap@@22)))))) (=> (_module.Thread.inv $Heap@@22 this@@34) (_module.Thread.localInv $Heap@@22 this@@34)))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1240|
 :pattern ( (_module.Thread.inv $Heap@@22 this@@34))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@23 this@@35) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $Heap@@23)))))) (=> (_module.OwnedObject.userInv $Heap@@23 this@@35) (_module.OwnedObject.localUserInv $Heap@@23 this@@35)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1622|
 :pattern ( (_module.OwnedObject.userInv $Heap@@23 this@@35))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@24 this@@36) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $Heap@@24)))))) (=> (_module.OwnedObject.inv $Heap@@24 this@@36) (_module.OwnedObject.localInv $Heap@@24 this@@36)))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1541|
 :pattern ( (_module.OwnedObject.inv $Heap@@24 this@@36))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@25 this@@37) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Object) ($IsAlloc refType this@@37 Tclass._module.Object $Heap@@25)))))) (=> (_module.Object.inv $Heap@@25 this@@37) (_module.Object.localInv $Heap@@25 this@@37)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1151|
 :pattern ( (_module.Object.inv $Heap@@25 this@@37))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@26 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@13 $Heap@@26 this@@38) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@13 $Heap@@26)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $prevHeap@@13)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@38) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@38) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@13 $Heap@@26 this@@38)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@13 $Heap@@26 this@@38)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@38) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@38) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@26 this@@38)))))
 :qid |_11MutexGuard2legacydfy.331:22|
 :skolemid |1524|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@13 $Heap@@26 this@@38) ($IsGoodHeap $Heap@@26))
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
(assert (forall (($h@@11 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@24) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@24) _module.OwnedObject.nonvolatileVersion)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1495|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@24) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@25 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (= $o@@25 this@@39)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@25) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@25) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1087|
)) (= (_module.Object.triggerAxioms $h0@@11 this@@39) (_module.Object.triggerAxioms $h1@@11 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1088|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.triggerAxioms $h1@@11 this@@39))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@40 null)) (not true)) ($Is refType this@@40 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@26 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (or (= $o@@26 this@@40) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 this@@40) _module.Universe.content)) ($Box refType $o@@26)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@26) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@26) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |625|
)) (= (_module.Universe.globalBaseInv $h0@@12 this@@40) (_module.Universe.globalBaseInv $h1@@12 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |626|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Universe.globalBaseInv $h1@@12 this@@40))
)))
(assert (forall (($h@@12 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@27) _module.OwnedObject.owner)) Tclass._module.Object $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@27) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Universe) ($IsAlloc refType this@@41 Tclass._module.Universe $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@28 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@28) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@28) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |638|
)) (= (_module.Universe.globalInv $h0@@13 this@@41) (_module.Universe.globalInv $h1@@13 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |639|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Universe.globalInv $h1@@13 this@@41))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Object) ($IsAlloc refType this@@42 Tclass._module.Object $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@29 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@29) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@29) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1067|
)) (= (_module.Object.objectGlobalBaseInv $h0@@14 this@@42) (_module.Object.objectGlobalBaseInv $h1@@14 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1068|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Object.objectGlobalBaseInv $h1@@14 this@@42))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Object) ($IsAlloc refType this@@43 Tclass._module.Object $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@30 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@30) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@30) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1139|
)) (= (_module.Object.localInv $h0@@15 this@@43) (_module.Object.localInv $h1@@15 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1140|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.localInv $h1@@15 this@@43))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Object) ($IsAlloc refType this@@44 Tclass._module.Object $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@31 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@31) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@31) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1149|
)) (= (_module.Object.inv $h0@@16 this@@44) (_module.Object.inv $h1@@16 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1150|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Object.inv $h1@@16 this@@44))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Thread) ($IsAlloc refType this@@45 Tclass._module.Thread $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@32 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@32) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@32) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1226|
)) (= (_module.Thread.localInv $h0@@17 this@@45) (_module.Thread.localInv $h1@@17 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1227|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Thread.localInv $h1@@17 this@@45))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Thread) ($IsAlloc refType this@@46 Tclass._module.Thread $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@33 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@33) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@33) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1238|
)) (= (_module.Thread.inv $h0@@18 this@@46) (_module.Thread.inv $h1@@18 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1239|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Thread.inv $h1@@18 this@@46))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.OwnedObject) ($IsAlloc refType this@@47 Tclass._module.OwnedObject $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@34 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@34) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@34) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1526|
)) (= (_module.OwnedObject.localInv $h0@@19 this@@47) (_module.OwnedObject.localInv $h1@@19 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1527|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.localInv $h1@@19 this@@47))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@35 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@35) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@35) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.inv $h0@@20 this@@48) (_module.OwnedObject.inv $h1@@20 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.inv $h1@@20 this@@48))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.OwnedObject) ($IsAlloc refType this@@49 Tclass._module.OwnedObject $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@36 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@36) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@36) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1612|
)) (= (_module.OwnedObject.localUserInv $h0@@21 this@@49) (_module.OwnedObject.localUserInv $h1@@21 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1613|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.localUserInv $h1@@21 this@@49))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.OwnedObject) ($IsAlloc refType this@@50 Tclass._module.OwnedObject $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@37 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@37) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@37) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1620|
)) (= (_module.OwnedObject.userInv $h0@@22 this@@50) (_module.OwnedObject.userInv $h1@@22 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1621|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.OwnedObject.userInv $h1@@22 this@@50))
)))
(assert (forall ((bx@@14 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@5)))
)))
(assert (forall (($o@@38 T@U) ) (!  (=> ($Is refType $o@@38 Tclass._module.Thread?) ($Is refType $o@@38 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2436|
 :pattern ( ($Is refType $o@@38 Tclass._module.Thread?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2434|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall (($o@@39 T@U) ) (!  (=> ($Is refType $o@@39 Tclass._module.OwnedObject?) ($Is refType $o@@39 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@39 Tclass._module.OwnedObject?))
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
(assert (forall (($h@@13 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@40 null)) (not true)) ($Is refType $o@@40 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@40) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1496|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@40) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@41 T@U) ) (! (= ($Is refType $o@@41 Tclass._module.Universe?)  (or (= $o@@41 null) (implements$_module.Universe (dtype $o@@41))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@41 Tclass._module.Universe?))
)))
(assert (forall (($o@@42 T@U) ) (! (= ($Is refType $o@@42 Tclass._module.Object?)  (or (= $o@@42 null) (implements$_module.Object (dtype $o@@42))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@42 Tclass._module.Object?))
)))
(assert (forall (($o@@43 T@U) ) (! (= ($Is refType $o@@43 Tclass._module.OwnedObject?)  (or (= $o@@43 null) (implements$_module.OwnedObject (dtype $o@@43))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@43 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@14 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@44 null)) (not true)) ($Is refType $o@@44 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@44) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@44) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@44) _module.Universe.content)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@27 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Universe.globalSequenceInv2#canCall| $prevHeap@@14 $Heap@@27 this@@51) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@14) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@14 $Heap@@27)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Universe) ($IsAlloc refType this@@51 Tclass._module.Universe $prevHeap@@14)))))) (and (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@51) _module.Universe.content)) ($Box refType |o#0@@6|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@51) _module.Universe.content)) ($Box refType |o#0@@6|)) (|_module.Object.sequenceInv2#canCall| $prevHeap@@14 $Heap@@27 |o#0@@6|))))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |655|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@27 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@51) _module.Universe.content)) ($Box refType |o#0@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@51) _module.Universe.content)) ($Box refType |o#0@@6|)))
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@14 $Heap@@27 this@@51) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@51) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@51) _module.Universe.content)) ($Box refType |o#0@@7|)) (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@27 |o#0@@7|)))
 :qid |_11MutexGuard2legacydfy.28:12|
 :skolemid |654|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@27 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@51) _module.Universe.content)) ($Box refType |o#0@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@51) _module.Universe.content)) ($Box refType |o#0@@7|)))
)))))
 :qid |_11MutexGuard2legacydfy.27:22|
 :skolemid |656|
 :pattern ( (_module.Universe.globalSequenceInv2 $prevHeap@@14 $Heap@@27 this@@51) ($IsGoodHeap $Heap@@27))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@28 this@@52) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Thread) ($IsAlloc refType this@@52 Tclass._module.Thread $Heap@@28)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@28 this@@52)) (= (_module.Thread.localInv $Heap@@28 this@@52)  (and true (_module.Object.objectGlobalBaseInv $Heap@@28 this@@52)))))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1230|
 :pattern ( (_module.Thread.localInv $Heap@@28 this@@52) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@29 this@@53) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $Heap@@29)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@29 this@@53)) (= (_module.Thread.inv $Heap@@29 this@@53)  (and true (_module.Thread.localInv $Heap@@29 this@@53)))))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1242|
 :pattern ( (_module.Thread.inv $Heap@@29 this@@53) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@30 this@@54) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Object) ($IsAlloc refType this@@54 Tclass._module.Object $Heap@@30)))))) (= (_module.Object.triggerAxioms $Heap@@30 this@@54)  (and (or ($Is refType this@@54 Tclass._module.OwnedObject) ($Is refType this@@54 Tclass._module.Thread)) (not (and ($Is refType this@@54 Tclass._module.OwnedObject) ($Is refType this@@54 Tclass._module.Thread))))))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1091|
 :pattern ( (_module.Object.triggerAxioms $Heap@@30 this@@54) ($IsGoodHeap $Heap@@30))
))))
(assert (forall (($h@@15 T@U) ($o@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@45 null)) (not true)) ($Is refType $o@@45 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@45) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@45) _module.Universe.content)))
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
(declare-fun |##running#0@0| () T@U)
(declare-fun $Heap@@31 () T@U)
(declare-fun this@@55 () T@U)
(declare-fun |preempting#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Universe.Interference)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon6_correct  (=> (and (= |##running#0@0| (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) |preempting#0|))) ($IsAlloc SetType |##running#0@0| (TSet Tclass._module.Thread) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31)) (=> ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) |preempting#0|)) (TSet Tclass._module.Thread) $Heap@@31)) (=> ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) |preempting#0|)) (TSet Tclass._module.Thread) $Heap@@31) (=> (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@31 $Heap@0 this@@55 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) |preempting#0|))) (_module.Universe.legalTransitionsSequence $Heap@@31 $Heap@0 this@@55 (|Set#FromBoogieMap| (|lambda#29| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) |preempting#0|)))) (and ($IsAllocBox ($Box refType this@@55) Tclass._module.Universe? $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31)))))))))
(let ((anon9_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType |t#0@0|)) (or (not (= |t#0@0| |preempting#0|)) (not true)))) (= (ControlFlow 0 7) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType |t#0@0|)) (or (not (= |t#0@0| |preempting#0|)) (not true))) (= (ControlFlow 0 6) 2)) anon6_correct)))
(let ((anon8_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType |t#0@0|))) (and (=> (= (ControlFlow 0 9) 6) anon9_Then_correct) (=> (= (ControlFlow 0 9) 7) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType |t#0@0|)) (and (=> (= (ControlFlow 0 8) 6) anon9_Then_correct) (=> (= (ControlFlow 0 8) 7) anon9_Else_correct)))))
(let ((anon7_Then_correct  (=> (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@0)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31)) (=> ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31) (and (=> (= (ControlFlow 0 10) 8) anon8_Then_correct) (=> (= (ControlFlow 0 10) 9) anon8_Else_correct)))))))
(let ((anon7_Else_correct  (=> (and (not (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@0))) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@31 alloc this@@55 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)))) (=> (and (and ($IsAllocBox ($Box refType this@@55) Tclass._module.Universe? $Heap@@31) (|_module.Universe.globalInv#canCall| $Heap@@31 this@@55)) (and (_module.Universe.globalInv $Heap@@31 this@@55) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType |preempting#0|)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@46 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@46) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@46) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@46)) (or (= $o@@46 this@@55) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@55) _module.Universe.content)) ($Box refType $o@@46)))))
 :qid |_11MutexGuard2legacydfy.109:10|
 :skolemid |873|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@46))
)) ($HeapSucc $Heap@@31 $Heap@0))) (and (and ($IsAllocBox ($Box refType this@@55) Tclass._module.Universe? $Heap@0) (|_module.Universe.globalInv#canCall| $Heap@0 this@@55)) (and (_module.Universe.globalInv $Heap@0 this@@55) ($IsAllocBox ($Box refType this@@55) Tclass._module.Universe? $Heap@0)))) (and (=> (= (ControlFlow 0 12) 10) anon7_Then_correct) (=> (= (ControlFlow 0 12) 5) anon7_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@31) ($IsHeapAnchor $Heap@@31)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Universe) ($IsAlloc refType this@@55 Tclass._module.Universe $Heap@@31)))) (and (and ($Is refType |preempting#0| Tclass._module.Thread) ($IsAlloc refType |preempting#0| Tclass._module.Thread $Heap@@31)) (and (= 19 $FunctionContextHeight) (= (ControlFlow 0 13) 12)))) anon0_correct)))
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
