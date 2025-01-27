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
(declare-fun Tagclass._module.IncreasingCounter () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.ConstantInteger () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.IncreasingCounter? () T@U)
(declare-fun Tagclass._module.IncreasingCounter? () T@U)
(declare-fun class._module.Integer? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun class._module.ConstantInteger? () T@U)
(declare-fun Tagclass._module.ConstantInteger? () T@U)
(declare-fun class._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$IncreasingCounter () T@U)
(declare-fun tytagFamily$Integer () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ConstantInteger () T@U)
(declare-fun tytagFamily$ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$constant () T@U)
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
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.counter () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.constant () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter () T@U)
(declare-fun _module.Integer.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Integer () T@U)
(declare-fun _module.ConstantInteger.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.ConstantInteger () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter? () T@U)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun Tclass._module.ConstantInteger? () T@U)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
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
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.userInv (T@U T@U) Bool)
(declare-fun |_module.Integer.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.userInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Integer.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.value () T@U)
(declare-fun _module.IncreasingCounter.value () T@U)
(declare-fun _module.ConstantInteger.value () T@U)
(declare-fun _module.Universe.globalSequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#17| (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Integer.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun |_module.Universe.globalSequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.IncreasingCounter Tagclass._module.Integer Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.ConstantInteger Tagclass._module.ClaimIncreasingCounterGreaterThanConstant Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? class._module.IncreasingCounter? Tagclass._module.IncreasingCounter? class._module.Integer? Tagclass._module.Integer? class._module.ConstantInteger? Tagclass._module.ConstantInteger? class._module.ClaimIncreasingCounterGreaterThanConstant? Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? tytagFamily$Universe tytagFamily$Thread tytagFamily$IncreasingCounter tytagFamily$Integer tytagFamily$Object tytagFamily$ConstantInteger tytagFamily$ClaimIncreasingCounterGreaterThanConstant tytagFamily$OwnedObject field$content field$owner field$value field$nonvolatileVersion field$counter field$constant)
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
 :skolemid |663|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap $h0 this |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |664|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@0 $Heap this@@0) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $prevHeap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@0 this@@0) (=> (_module.Universe.globalBaseInv $prevHeap@@0 this@@0) (|_module.Universe.globalBaseInv#canCall| $Heap this@@0))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@0 this@@0) (_module.Universe.globalBaseInv $Heap this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@0)))
 :qid |_10SequenceInvariantdfy.43:16|
 :skolemid |658|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_10SequenceInvariantdfy.35:22|
 :skolemid |659|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@0 this@@1) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.OwnedObject) ($IsAlloc refType this@@1 Tclass._module.OwnedObject $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@0 this@@1)) (= (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@1)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@0 this@@1)))))
 :qid |_10SequenceInvariantdfy.316:19|
 :skolemid |1444|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| $Heap@@1 this@@2) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@2 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@1)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@1 this@@2)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))))
 :qid |_10SequenceInvariantdfy.550:19|
 :skolemid |2201|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1434|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1435|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1535|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1536|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1576|
)) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@2 this@@5) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1577|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Integer))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1787|
)) (= (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@6) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1788|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1998|
)) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h0@@4 this@@7) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1999|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= $o@@5 this@@8)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@5) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |2211|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h0@@5 this@@8) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2212|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.IncreasingCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Integer?))
(assert (implements$_module.OwnedObject Tclass._module.ConstantInteger?))
(assert (implements$_module.OwnedObject Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@9) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@9) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@9) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@9) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0@@0|)))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |625|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@9) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@9)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@9) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@9) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@2 |o#0@@1|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |624|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@9) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_10SequenceInvariantdfy.21:19|
 :skolemid |626|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@9) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.Thread?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($Is refType $o@@6 Tclass._module.Thread?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.IncreasingCounter?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( ($Is refType $o@@7 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Integer?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1769|
 :pattern ( ($Is refType $o@@8 Tclass._module.Integer?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.ConstantInteger?)  (or (= $o@@9 null) (= (dtype $o@@9) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($Is refType $o@@9 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)  (or (= $o@@10 null) (= (dtype $o@@10) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2191|
 :pattern ( ($Is refType $o@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall (($h T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@11) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1424|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@11) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2404|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2408|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2412|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2416|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2420|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@4))
)))
(assert (forall ((bx@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |2424|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@5))
)))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@10) ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@10))
 :qid |unknown.0:0|
 :skolemid |1767|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@11) ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@11))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@12) ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@12))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@12))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@13) ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@13))
 :qid |unknown.0:0|
 :skolemid |2402|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@13))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@3 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@10) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@10)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |1588|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@10) ($Is refType this@@10 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@10) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@4 this@@11) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.Integer)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@11) (_module.Integer.localUserInv $Heap@@4 this@@11)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |1799|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@11) ($Is refType this@@11 Tclass._module.Integer) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@11) (_module.Integer.localUserInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@5 this@@12) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@12) (_module.ConstantInteger.localUserInv $Heap@@5 this@@12)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |2010|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@12) ($Is refType this@@12 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@12) (_module.ConstantInteger.localUserInv $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@6 this@@13) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv $Heap@@6 this@@13) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@6 this@@13)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |2223|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@13) ($Is refType this@@13 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@13) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@6 this@@13) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@7 this@@14) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv $Heap@@7 this@@14) (_module.IncreasingCounter.userInv $Heap@@7 this@@14)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1595|
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@14) ($Is refType this@@14 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@14) (_module.IncreasingCounter.userInv $Heap@@7 this@@14) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@8 this@@15) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Integer)))) (= (_module.OwnedObject.userInv $Heap@@8 this@@15) (_module.Integer.userInv $Heap@@8 this@@15)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1806|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@15) ($Is refType this@@15 Tclass._module.Integer) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@15) (_module.Integer.userInv $Heap@@8 this@@15) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@9 this@@16) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.ConstantInteger.userInv $Heap@@9 this@@16)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |2017|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) ($Is refType this@@16 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.ConstantInteger.userInv $Heap@@9 this@@16) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@10 this@@17) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv $Heap@@10 this@@17) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@10 this@@17)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |2230|
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@17) ($Is refType this@@17 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@17) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@10 this@@17) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@11 this@@18) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@11 this@@18) (_module.Thread.baseFieldsInv $Heap@@11 this@@18)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1192|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@18) ($Is refType this@@18 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@18) (_module.Thread.baseFieldsInv $Heap@@11 this@@18) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@12 this@@19) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@19) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@12 this@@19)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1567|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@19) ($Is refType this@@19 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@19) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@12 this@@19) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Integer.baseUserFieldsInv#canCall| $Heap@@13 this@@20) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.Integer)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@13 this@@20) (_module.Integer.baseUserFieldsInv $Heap@@13 this@@20)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1778|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@13 this@@20) ($Is refType this@@20 Tclass._module.Integer) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@13 this@@20) (_module.Integer.baseUserFieldsInv $Heap@@13 this@@20) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@14 this@@21) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@14 this@@21) (_module.ConstantInteger.baseUserFieldsInv $Heap@@14 this@@21)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1989|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@14 this@@21) ($Is refType this@@21 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@14 this@@21) (_module.ConstantInteger.baseUserFieldsInv $Heap@@14 this@@21) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| $Heap@@15 this@@22) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@15 this@@22) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@15 this@@22)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |2202|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@15 this@@22) ($Is refType this@@22 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@15 this@@22) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@15 this@@22) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@16 this@@23) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@16 this@@23) (_module.OwnedObject.baseFieldsInv $Heap@@16 this@@23)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1445|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@16 this@@23) ($Is refType this@@23 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@16 this@@23) (_module.OwnedObject.baseFieldsInv $Heap@@16 this@@23) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@17 this@@24) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@17 this@@24) (_module.Thread.localInv $Heap@@17 this@@24)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1206|
 :pattern ( (_module.Object.localInv $Heap@@17 this@@24) ($Is refType this@@24 Tclass._module.Thread) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.Object.localInv $Heap@@17 this@@24) (_module.Thread.localInv $Heap@@17 this@@24) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@18 this@@25) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@18 this@@25) (_module.OwnedObject.localInv $Heap@@18 this@@25)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1461|
 :pattern ( (_module.Object.localInv $Heap@@18 this@@25) ($Is refType this@@25 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.Object.localInv $Heap@@18 this@@25) (_module.OwnedObject.localInv $Heap@@18 this@@25) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@19 this@@26) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@19 this@@26) (_module.Thread.inv $Heap@@19 this@@26)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1218|
 :pattern ( (_module.Object.inv $Heap@@19 this@@26) ($Is refType this@@26 Tclass._module.Thread) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.inv $Heap@@19 this@@26) (_module.Thread.inv $Heap@@19 this@@26) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@20 this@@27) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@20 this@@27) (_module.OwnedObject.inv $Heap@@20 this@@27)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1474|
 :pattern ( (_module.Object.inv $Heap@@20 this@@27) ($Is refType this@@27 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.Object.inv $Heap@@20 this@@27) (_module.OwnedObject.inv $Heap@@20 this@@27) ($IsGoodHeap $Heap@@20))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (= (FDim _module.Integer.value) 0))
(assert (= (FieldOfDecl class._module.Integer? field$value) _module.Integer.value))
(assert  (not ($IsGhostField _module.Integer.value)))
(assert (= (FDim _module.IncreasingCounter.value) 0))
(assert (= (FieldOfDecl class._module.IncreasingCounter? field$value) _module.IncreasingCounter.value))
(assert  (not ($IsGhostField _module.IncreasingCounter.value)))
(assert (= (FDim _module.ConstantInteger.value) 0))
(assert (= (FieldOfDecl class._module.ConstantInteger? field$value) _module.ConstantInteger.value))
(assert  (not ($IsGhostField _module.ConstantInteger.value)))
(assert (= (FDim _module.ClaimIncreasingCounterGreaterThanConstant.counter) 0))
(assert (= (FieldOfDecl class._module.ClaimIncreasingCounterGreaterThanConstant? field$counter) _module.ClaimIncreasingCounterGreaterThanConstant.counter))
(assert  (not ($IsGhostField _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
(assert (= (FDim _module.ClaimIncreasingCounterGreaterThanConstant.constant) 0))
(assert (= (FieldOfDecl class._module.ClaimIncreasingCounterGreaterThanConstant? field$constant) _module.ClaimIncreasingCounterGreaterThanConstant.constant))
(assert  (not ($IsGhostField _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Universe) ($IsAlloc refType this@@28 Tclass._module.Universe $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@12 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@12) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@12) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |632|
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@7 $h0@@6 this@@28) (_module.Universe.globalSequenceInv2 $prevHeap@@7 $h1@@6 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |633|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.globalSequenceInv2 $prevHeap@@7 $h1@@6 this@@28))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Universe) ($IsAlloc refType this@@29 Tclass._module.Universe $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@13) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |654|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h0@@7 this@@29) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@7 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |655|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@7 this@@29))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Object) ($IsAlloc refType this@@30 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@14 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@14) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1128|
)) (= (_module.Object.sequenceInv2 $prevHeap@@9 $h0@@8 this@@30) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@8 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1129|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@8 this@@30))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Thread) ($IsAlloc refType this@@31 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@15 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@15) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@10 $h0@@9 this@@31) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@9 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@9 this@@31))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.OwnedObject) ($IsAlloc refType this@@32 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@16) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1490|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h0@@10 this@@32) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@10 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1491|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@10 this@@32))
)))
(assert (forall (($o@@17 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@17 Tclass._module.Universe? $h@@14)  (or (= $o@@17 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Universe? $h@@14))
)))
(assert (forall (($o@@18 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.Object? $h@@15)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Object? $h@@15))
)))
(assert (forall (($o@@19 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.Thread? $h@@16)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1180|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Thread? $h@@16))
)))
(assert (forall (($o@@20 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@20 Tclass._module.OwnedObject? $h@@17)  (or (= $o@@20 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.OwnedObject? $h@@17))
)))
(assert (forall (($o@@21 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@21 Tclass._module.IncreasingCounter? $h@@18)  (or (= $o@@21 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1559|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.IncreasingCounter? $h@@18))
)))
(assert (forall (($o@@22 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@22 Tclass._module.Integer? $h@@19)  (or (= $o@@22 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1770|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Integer? $h@@19))
)))
(assert (forall (($o@@23 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@23 Tclass._module.ConstantInteger? $h@@20)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.ConstantInteger? $h@@20))
)))
(assert (forall (($o@@24 T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@21)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2192|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@21))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@21 this@@33) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Object) ($IsAlloc refType this@@33 Tclass._module.Object $Heap@@21)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 (_module.Object.universe this@@33)) _module.Universe.content)) ($Box refType this@@33)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@21 this@@33) (=> (_module.Object.baseFieldsInv $Heap@@21 this@@33) (|_module.Universe.globalBaseInv#canCall| $Heap@@21 (_module.Object.universe this@@33))))) (= (_module.Object.objectGlobalBaseInv $Heap@@21 this@@33)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 (_module.Object.universe this@@33)) _module.Universe.content)) ($Box refType this@@33)) (_module.Object.baseFieldsInv $Heap@@21 this@@33)) (_module.Universe.globalBaseInv $Heap@@21 (_module.Object.universe this@@33))))))
 :qid |_10SequenceInvariantdfy.196:19|
 :skolemid |1046|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@21 this@@33) ($IsGoodHeap $Heap@@21))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@22 this@@34) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Thread) ($IsAlloc refType this@@34 Tclass._module.Thread $Heap@@22)))))) (= (_module.Thread.baseFieldsInv $Heap@@22 this@@34) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.254:19|
 :skolemid |1191|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@22 this@@34) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@23 this@@35) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@35 Tclass._module.IncreasingCounter $Heap@@23)))))) (= (_module.IncreasingCounter.baseUserFieldsInv $Heap@@23 this@@35) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.419:19|
 :skolemid |1566|
 :pattern ( (_module.IncreasingCounter.baseUserFieldsInv $Heap@@23 this@@35) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Integer.baseUserFieldsInv#canCall| $Heap@@24 this@@36) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Integer) ($IsAlloc refType this@@36 Tclass._module.Integer $Heap@@24)))))) (= (_module.Integer.baseUserFieldsInv $Heap@@24 this@@36) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.461:19|
 :skolemid |1777|
 :pattern ( (_module.Integer.baseUserFieldsInv $Heap@@24 this@@36) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@25 this@@37) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.ConstantInteger) ($IsAlloc refType this@@37 Tclass._module.ConstantInteger $Heap@@25)))))) (= (_module.ConstantInteger.baseUserFieldsInv $Heap@@25 this@@37) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.505:19|
 :skolemid |1988|
 :pattern ( (_module.ConstantInteger.baseUserFieldsInv $Heap@@25 this@@37) ($IsGoodHeap $Heap@@25))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@26 this@@38) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@38 Tclass._module.IncreasingCounter $Heap@@26)))))) (= (_module.IncreasingCounter.localUserInv $Heap@@26 this@@38) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.424:19|
 :skolemid |1587|
 :pattern ( (_module.IncreasingCounter.localUserInv $Heap@@26 this@@38) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@27 this@@39) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Integer) ($IsAlloc refType this@@39 Tclass._module.Integer $Heap@@27)))))) (= (_module.Integer.localUserInv $Heap@@27 this@@39) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.468:19|
 :skolemid |1798|
 :pattern ( (_module.Integer.localUserInv $Heap@@27 this@@39) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@28 this@@40) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.ConstantInteger) ($IsAlloc refType this@@40 Tclass._module.ConstantInteger $Heap@@28)))))) (= (_module.ConstantInteger.localUserInv $Heap@@28 this@@40) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.512:19|
 :skolemid |2009|
 :pattern ( (_module.ConstantInteger.localUserInv $Heap@@28 this@@40) ($IsGoodHeap $Heap@@28))
))))
(assert (forall ((m@@1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@5)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#17| |l#0| |l#1| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0|) (and (|Set#IsMember| |l#1| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_10SequenceInvariantdfy.250:7|
 :skolemid |2430|
 :pattern ( (MapType0Select BoxType boolType (|lambda#17| |l#0| |l#1| |l#2|) |$y#1|))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v bx@@6) ($IsBox bx@@6 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@6))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@25 T@U) ($f@@11 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@25 $f@@11))  (=> (and (or (not (= $o@@25 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@25) |l#2@@0|)))) (or (= $o@@25 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@25)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2427|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@25 $f@@11))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@29 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Integer.unchangedNonvolatileUserFields#canCall| $prevHeap@@12 $Heap@@29 this@@41) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@29)) ($HeapSucc $prevHeap@@12 $Heap@@29)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Integer) ($IsAlloc refType this@@41 Tclass._module.Integer $prevHeap@@12)))))) (= (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@29 this@@41) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@41) _module.Integer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@41) _module.Integer.value))))))
 :qid |_10SequenceInvariantdfy.464:22|
 :skolemid |1791|
 :pattern ( (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@29 this@@41) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@30 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@13 $Heap@@30 this@@42) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@30)) ($HeapSucc $prevHeap@@13 $Heap@@30)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.ConstantInteger) ($IsAlloc refType this@@42 Tclass._module.ConstantInteger $prevHeap@@13)))))) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@30 this@@42) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@42) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@42) _module.ConstantInteger.value))))))
 :qid |_10SequenceInvariantdfy.508:22|
 :skolemid |2002|
 :pattern ( (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@30 this@@42) ($IsGoodHeap $Heap@@30))
))))
(assert (forall (($h@@22 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.IncreasingCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.IncreasingCounter.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1561|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Integer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Integer.value)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1772|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Integer.value)))
)))
(assert (forall (($h@@24 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.ConstantInteger?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) _module.ConstantInteger.value)) TInt $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1983|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) _module.ConstantInteger.value)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@31 this@@43) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@31)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@31 this@@43) (=> (_module.Object.objectGlobalBaseInv $Heap@@31 this@@43) (|_module.OwnedObject.localUserInv#canCall| $Heap@@31 this@@43))) (= (_module.OwnedObject.localInv $Heap@@31 this@@43)  (and (_module.Object.objectGlobalBaseInv $Heap@@31 this@@43) (_module.OwnedObject.localUserInv $Heap@@31 this@@43)))))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.localInv $Heap@@31 this@@43) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@32 this@@44) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.OwnedObject) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $Heap@@32)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@32 this@@44) (=> (_module.OwnedObject.localInv $Heap@@32 this@@44) (|_module.OwnedObject.userInv#canCall| $Heap@@32 this@@44))) (= (_module.OwnedObject.inv $Heap@@32 this@@44)  (and (_module.OwnedObject.localInv $Heap@@32 this@@44) (_module.OwnedObject.userInv $Heap@@32 this@@44)))))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1473|
 :pattern ( (_module.OwnedObject.inv $Heap@@32 this@@44) ($IsGoodHeap $Heap@@32))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@7 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@7 t@@0 h@@1) ($IsAllocBox bx@@7 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@7 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@25 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@29) Tclass._module.Universe $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1041|
 :pattern ( (_module.Object.universe $o@@29) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@30) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_module.Object.universe $o@@30))
))))
(assert (forall (($h@@26 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@31) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2193|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@31) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@27 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@32) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2195|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@32) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@33 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@14 $Heap@@33 this@@45) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@33 this@@45) (_module.Thread.sequenceInv2 $prevHeap@@14 $Heap@@33 this@@45)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1237|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@33 this@@45) ($Is refType this@@45 Tclass._module.Thread) ($IsGoodHeap $Heap@@33))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@33 this@@45) (_module.Thread.sequenceInv2 $prevHeap@@14 $Heap@@33 this@@45) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@34 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@15 $Heap@@34 this@@46) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@34 this@@46) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@34 this@@46)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |1581|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@34 this@@46) ($Is refType this@@46 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@34))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@34 this@@46) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@15 $Heap@@34 this@@46) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@35 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Integer.unchangedNonvolatileUserFields#canCall| $prevHeap@@16 $Heap@@35 this@@47) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.Integer)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@35 this@@47) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@35 this@@47)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |1792|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@35 this@@47) ($Is refType this@@47 Tclass._module.Integer) ($IsGoodHeap $Heap@@35))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@35 this@@47) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@35 this@@47) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@36 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@17 $Heap@@36 this@@48) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@36 this@@48) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@36 this@@48)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |2003|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@36 this@@48) ($Is refType this@@48 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@36))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@36 this@@48) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@36 this@@48) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@37 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@18 $Heap@@37 this@@49) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@37 this@@49) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@37 this@@49)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |2216|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@37 this@@49) ($Is refType this@@49 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@37))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@37 this@@49) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@37 this@@49) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@38 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@19 $Heap@@38 this@@50) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@38 this@@50) (_module.OwnedObject.sequenceInv2 $prevHeap@@19 $Heap@@38 this@@50)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1495|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@38 this@@50) ($Is refType this@@50 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@38))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@38 this@@50) (_module.OwnedObject.sequenceInv2 $prevHeap@@19 $Heap@@38 this@@50) ($IsGoodHeap $Heap@@38))
))))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@9 Tclass._module.Thread))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.IncreasingCounter) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.IncreasingCounter)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@10 Tclass._module.IncreasingCounter))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@11 Tclass._module.Integer))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@12 Tclass._module.Universe?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@13 Tclass._module.Object))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.ConstantInteger) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.ConstantInteger)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@14 Tclass._module.ConstantInteger))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@15 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@16 Tclass._module.Object?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@17 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsBox bx@@19 Tclass._module.Thread?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.IncreasingCounter?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1557|
 :pattern ( ($IsBox bx@@20 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1768|
 :pattern ( ($IsBox bx@@21 Tclass._module.Integer?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.ConstantInteger?) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@22 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (and (= ($Box refType ($Unbox refType bx@@23)) bx@@23) ($Is refType ($Unbox refType bx@@23) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2190|
 :pattern ( ($IsBox bx@@23 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@39 this@@51) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Universe) ($IsAlloc refType this@@51 Tclass._module.Universe $Heap@@39)))))) (and (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@51) _module.Universe.content)) ($Box refType |o#0@@2|)) (=> (= (_module.Object.universe |o#0@@2|) this@@51) (=> (or (not (= |o#0@@2| this@@51)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@39 |o#0@@2|) (=> (_module.Object.baseFieldsInv $Heap@@39 |o#0@@2|) (|_module.Object.triggerAxioms#canCall| $Heap@@39 |o#0@@2|)))))))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |613|
 :pattern ( (_module.Object.triggerAxioms $Heap@@39 |o#0@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@39 |o#0@@2|))
 :pattern ( (_module.Object.universe |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@51) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (= (_module.Universe.globalBaseInv $Heap@@39 this@@51) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@51) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (and (and (= (_module.Object.universe |o#0@@3|) this@@51) (or (not (= |o#0@@3| this@@51)) (not true))) (_module.Object.baseFieldsInv $Heap@@39 |o#0@@3|)) (_module.Object.triggerAxioms $Heap@@39 |o#0@@3|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |612|
 :pattern ( (_module.Object.triggerAxioms $Heap@@39 |o#0@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@39 |o#0@@3|))
 :pattern ( (_module.Object.universe |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@51) _module.Universe.content)) ($Box refType |o#0@@3|)))
)))))
 :qid |_10SequenceInvariantdfy.16:19|
 :skolemid |614|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@39 this@@51) ($IsGoodHeap $Heap@@39))
))))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Thread)  (and ($Is refType |c#0@@9| Tclass._module.Thread?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@10| Tclass._module.OwnedObject?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.IncreasingCounter)  (and ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1766|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.Integer)  (and ($Is refType |c#0@@12| Tclass._module.Integer?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.ConstantInteger)  (and ($Is refType |c#0@@13| Tclass._module.ConstantInteger?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant)  (and ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2401|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall (($h@@28 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@33) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@33) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2194|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@33) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@29 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@34) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@34) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2196|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@34) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@40 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Universe.globalSequenceInv2#canCall| $prevHeap@@20 $Heap@@40 this@@52) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@40)) ($HeapSucc $prevHeap@@20 $Heap@@40)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Universe) ($IsAlloc refType this@@52 Tclass._module.Universe $prevHeap@@20)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@52) _module.Universe.content)) ($Box refType |o#0@@4|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Universe.content)) ($Box refType |o#0@@4|)) (|_module.Object.sequenceInv2#canCall| $prevHeap@@20 $Heap@@40 |o#0@@4|))))
 :qid |_10SequenceInvariantdfy.27:15|
 :skolemid |637|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@40 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@52) _module.Universe.content)) ($Box refType |o#0@@4|)))
))) (= (_module.Universe.globalSequenceInv2 $prevHeap@@20 $Heap@@40 this@@52)  (and true (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@52) _module.Universe.content)) ($Box refType |o#0@@5|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Universe.content)) ($Box refType |o#0@@5|)) (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@40 |o#0@@5|)))
 :qid |_10SequenceInvariantdfy.27:15|
 :skolemid |636|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@40 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@52) _module.Universe.content)) ($Box refType |o#0@@5|)))
))))))
 :qid |_10SequenceInvariantdfy.26:22|
 :skolemid |638|
 :pattern ( (_module.Universe.globalSequenceInv2 $prevHeap@@20 $Heap@@40 this@@52) ($IsGoodHeap $Heap@@40))
))))
(assert (forall (($o@@35 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@35 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@35 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2406|
 :pattern ( ($IsAlloc refType $o@@35 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@36 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@36 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@36 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2410|
 :pattern ( ($IsAlloc refType $o@@36 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@37 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@37 Tclass._module.IncreasingCounter? $heap@@1) ($IsAlloc refType $o@@37 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2414|
 :pattern ( ($IsAlloc refType $o@@37 Tclass._module.IncreasingCounter? $heap@@1))
)))
(assert (forall (($o@@38 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@38 Tclass._module.Integer? $heap@@2) ($IsAlloc refType $o@@38 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2418|
 :pattern ( ($IsAlloc refType $o@@38 Tclass._module.Integer? $heap@@2))
)))
(assert (forall (($o@@39 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@39 Tclass._module.ConstantInteger? $heap@@3) ($IsAlloc refType $o@@39 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2422|
 :pattern ( ($IsAlloc refType $o@@39 Tclass._module.ConstantInteger? $heap@@3))
)))
(assert (forall (($o@@40 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4) ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |2426|
 :pattern ( ($IsAlloc refType $o@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@41 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@21 $Heap@@41 this@@53) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@41)) ($HeapSucc $prevHeap@@21 $Heap@@41)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $prevHeap@@21)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@21 $Heap@@41 this@@53) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.269:22|
 :skolemid |1236|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@21 $Heap@@41 this@@53) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@42 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@22 $Heap@@42 this@@54) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@42)) ($HeapSucc $prevHeap@@22 $Heap@@42)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@54 Tclass._module.IncreasingCounter $prevHeap@@22)))))) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@22 $Heap@@42 this@@54) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.422:22|
 :skolemid |1580|
 :pattern ( (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@22 $Heap@@42 this@@54) ($IsGoodHeap $Heap@@42))
))))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@55 null)) (not true)) ($Is refType this@@55 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@41 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (or (= $o@@41 this@@55) (= $o@@41 (_module.Object.universe this@@55)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@41) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@41) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1108|
)) (= (_module.Object.baseFieldsInv $h0@@11 this@@55) (_module.Object.baseFieldsInv $h1@@11 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1109|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.baseFieldsInv $h1@@11 this@@55))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@42 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (or (= $o@@42 this@@56) (= $o@@42 (_module.Object.universe this@@56)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@42) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@42) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1187|
)) (= (_module.Thread.baseFieldsInv $h0@@12 this@@56) (_module.Thread.baseFieldsInv $h1@@12 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1188|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.baseFieldsInv $h1@@12 this@@56))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@43 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (or (= $o@@43 this@@57) (= $o@@43 (_module.Object.universe this@@57)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@43) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@43) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@13 this@@57) (_module.OwnedObject.baseFieldsInv $h1@@13 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.baseFieldsInv $h1@@13 this@@57))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@44 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (or (= $o@@44 this@@58) (= $o@@44 (_module.Object.universe this@@58)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@44) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@44) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1529|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@14 this@@58) (_module.OwnedObject.baseUserFieldsInv $h1@@14 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1530|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.baseUserFieldsInv $h1@@14 this@@58))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@59 null)) (not true)) ($Is refType this@@59 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@45 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (or (= $o@@45 this@@59) (= $o@@45 (_module.Object.universe this@@59)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@45) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@45) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1562|
)) (= (_module.IncreasingCounter.baseUserFieldsInv $h0@@15 this@@59) (_module.IncreasingCounter.baseUserFieldsInv $h1@@15 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1563|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.IncreasingCounter.baseUserFieldsInv $h1@@15 this@@59))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Integer))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@46 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (or (= $o@@46 this@@60) (= $o@@46 (_module.Object.universe this@@60)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@46) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@46) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1773|
)) (= (_module.Integer.baseUserFieldsInv $h0@@16 this@@60) (_module.Integer.baseUserFieldsInv $h1@@16 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1774|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Integer.baseUserFieldsInv $h1@@16 this@@60))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@47 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (or (= $o@@47 this@@61) (= $o@@47 (_module.Object.universe this@@61)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@47) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@47) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1984|
)) (= (_module.ConstantInteger.baseUserFieldsInv $h0@@17 this@@61) (_module.ConstantInteger.baseUserFieldsInv $h1@@17 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1985|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.ConstantInteger.baseUserFieldsInv $h1@@17 this@@61))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@48 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (or (= $o@@48 this@@62) (= $o@@48 (_module.Object.universe this@@62)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@48) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@48) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |2197|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h0@@18 this@@62) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h1@@18 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2198|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h1@@18 this@@62))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@43 this@@63) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Object) ($IsAlloc refType this@@63 Tclass._module.Object $Heap@@43)))))) (_module.Object.triggerAxioms $Heap@@43 this@@63))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1064|
 :pattern ( (_module.Object.triggerAxioms $Heap@@43 this@@63))
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
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 TInt) (and (= ($Box intType ($Unbox intType bx@@24)) bx@@24) ($Is intType ($Unbox intType bx@@24) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@24 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@44 this@@64) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@64 Tclass._module.IncreasingCounter $Heap@@44)))))) (=> (_module.IncreasingCounter.userInv $Heap@@44 this@@64) (_module.IncreasingCounter.localUserInv $Heap@@44 this@@64)))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1592|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@44 this@@64))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@45 this@@65) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Integer) ($IsAlloc refType this@@65 Tclass._module.Integer $Heap@@45)))))) (=> (_module.Integer.userInv $Heap@@45 this@@65) (_module.Integer.localUserInv $Heap@@45 this@@65)))
 :qid |_10SequenceInvariantdfy.471:19|
 :skolemid |1803|
 :pattern ( (_module.Integer.userInv $Heap@@45 this@@65))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@46 this@@66) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.ConstantInteger) ($IsAlloc refType this@@66 Tclass._module.ConstantInteger $Heap@@46)))))) (=> (_module.ConstantInteger.userInv $Heap@@46 this@@66) (_module.ConstantInteger.localUserInv $Heap@@46 this@@66)))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2014|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@46 this@@66))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@47 this@@67) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@67 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@47)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@47 this@@67) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@47 this@@67)))
 :qid |_10SequenceInvariantdfy.563:19|
 :skolemid |2227|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@47 this@@67))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@48 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@48 this@@68) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.OwnedObject) ($IsAlloc refType this@@68 Tclass._module.OwnedObject $Heap@@48)))))) (=> (_module.OwnedObject.userInv $Heap@@48 this@@68) (_module.OwnedObject.localUserInv $Heap@@48 this@@68)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1549|
 :pattern ( (_module.OwnedObject.userInv $Heap@@48 this@@68))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@49 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@49 this@@69) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@49) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.Thread) ($IsAlloc refType this@@69 Tclass._module.Thread $Heap@@49)))))) (=> (_module.Thread.localInv $Heap@@49 this@@69) (_module.Object.objectGlobalBaseInv $Heap@@49 this@@69)))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1203|
 :pattern ( (_module.Thread.localInv $Heap@@49 this@@69))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@50 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@50 this@@70) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@50) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.OwnedObject) ($IsAlloc refType this@@70 Tclass._module.OwnedObject $Heap@@50)))))) (=> (_module.OwnedObject.localInv $Heap@@50 this@@70) (_module.Object.objectGlobalBaseInv $Heap@@50 this@@70)))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1458|
 :pattern ( (_module.OwnedObject.localInv $Heap@@50 this@@70))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@51 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@51 this@@71) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@51) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Object) ($IsAlloc refType this@@71 Tclass._module.Object $Heap@@51)))))) (=> (_module.Object.localInv $Heap@@51 this@@71) (_module.Object.objectGlobalBaseInv $Heap@@51 this@@71)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1116|
 :pattern ( (_module.Object.localInv $Heap@@51 this@@71))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@52 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@52 this@@72) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@52) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Thread) ($IsAlloc refType this@@72 Tclass._module.Thread $Heap@@52)))))) (=> (_module.Thread.inv $Heap@@52 this@@72) (_module.Thread.localInv $Heap@@52 this@@72)))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1215|
 :pattern ( (_module.Thread.inv $Heap@@52 this@@72))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@53 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@53 this@@73) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@53) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.OwnedObject) ($IsAlloc refType this@@73 Tclass._module.OwnedObject $Heap@@53)))))) (=> (_module.OwnedObject.inv $Heap@@53 this@@73) (_module.OwnedObject.localInv $Heap@@53 this@@73)))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1471|
 :pattern ( (_module.OwnedObject.inv $Heap@@53 this@@73))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@54 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@54 this@@74) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@54) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Object) ($IsAlloc refType this@@74 Tclass._module.Object $Heap@@54)))))) (=> (_module.Object.inv $Heap@@54 this@@74) (_module.Object.localInv $Heap@@54 this@@74)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1126|
 :pattern ( (_module.Object.inv $Heap@@54 this@@74))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@55 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@23 $Heap@@55 this@@75) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@55)) ($HeapSucc $prevHeap@@23 $Heap@@55)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.OwnedObject) ($IsAlloc refType this@@75 Tclass._module.OwnedObject $prevHeap@@23)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@75) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@75) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@23 $Heap@@55 this@@75)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@23 $Heap@@55 this@@75)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@23 this@@75) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@75) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@55 this@@75)))))
 :qid |_10SequenceInvariantdfy.312:22|
 :skolemid |1438|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@23 $Heap@@55 this@@75) ($IsGoodHeap $Heap@@55))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@25 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@25) ($IsAllocBox bx@@25 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@25))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@30 T@U) ($o@@49 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@49 null)) (not true)) ($Is refType $o@@49 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@49) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@49) _module.OwnedObject.nonvolatileVersion)) TInt $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1425|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@49) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@76 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@76 null)) (not true)) ($Is refType this@@76 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@50 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (= $o@@50 this@@76)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@50) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@50) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1062|
)) (= (_module.Object.triggerAxioms $h0@@19 this@@76) (_module.Object.triggerAxioms $h1@@19 this@@76))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1063|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Object.triggerAxioms $h1@@19 this@@76))
)))
(assert (forall (($h@@31 T@U) ($o@@51 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@51 null)) (not true)) (= (dtype $o@@51) Tclass._module.IncreasingCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@51) _module.IncreasingCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1560|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@51) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@32 T@U) ($o@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) Tclass._module.Integer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@52) _module.Integer.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1771|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@52) _module.Integer.value)))
)))
(assert (forall (($h@@33 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.ConstantInteger?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@53) _module.ConstantInteger.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1982|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@53) _module.ConstantInteger.value)))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@77 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@77 null)) (not true)) ($Is refType this@@77 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@54 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (or (= $o@@54 this@@77) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 this@@77) _module.Universe.content)) ($Box refType $o@@54)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@54) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@54) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |608|
)) (= (_module.Universe.globalBaseInv $h0@@20 this@@77) (_module.Universe.globalBaseInv $h1@@20 this@@77))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |609|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Universe.globalBaseInv $h1@@20 this@@77))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@56 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@24 $Heap@@56 this@@78) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@56)) ($HeapSucc $prevHeap@@24 $Heap@@56)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.OwnedObject) ($IsAlloc refType this@@78 Tclass._module.OwnedObject $prevHeap@@24)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@78) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@78) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@24 $Heap@@56 this@@78)))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@24 $Heap@@56 this@@78)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@78) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@78) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@24 $Heap@@56 this@@78)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@78) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@78) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_10SequenceInvariantdfy.338:22|
 :skolemid |1494|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@24 $Heap@@56 this@@78) ($IsGoodHeap $Heap@@56))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@57 T@U) (this@@79 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@25 $Heap@@57 this@@79 |running#0@@0|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@57)) ($HeapSucc $prevHeap@@25 $Heap@@57)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Universe) ($IsAlloc refType this@@79 Tclass._module.Universe $prevHeap@@25)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@25 $Heap@@57 this@@79) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@25 $Heap@@57 this@@79) (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#0@@6|)) (=> (not (forall (($o@@55 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@55 null)) (not true)) (=> (= $o@@55 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 $o@@55) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 $o@@55) $f@@22))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |670|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 $o@@55) $f@@22))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@25 $Heap@@57 |o#0@@6|))))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |671|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@25 $Heap@@57 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#0@@6|)))
)))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@25 $Heap@@57 this@@79 |running#0@@0|)  (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@25 $Heap@@57 this@@79) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#0@@7|))) (or (forall (($o@@56 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@56 null)) (not true)) (=> (= $o@@56 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 $o@@56) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 $o@@56) $f@@23))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |667|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 $o@@56) $f@@23))
)) (_module.Object.sequenceInv2 $prevHeap@@25 $Heap@@57 |o#0@@7|)))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |668|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@25 $Heap@@57 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#0@@7|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@25)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_10SequenceInvariantdfy.58:16|
 :skolemid |669|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@79) _module.Universe.content)) ($Box refType |o#1|)))
))))))
 :qid |_10SequenceInvariantdfy.51:22|
 :skolemid |674|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@25 $Heap@@57 this@@79 |running#0@@0|) ($IsGoodHeap $Heap@@57))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@58 T@U) (this@@80 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@26 $Heap@@58 this@@80) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@26) ($IsGoodHeap $Heap@@58)) ($HeapSucc $prevHeap@@26 $Heap@@58)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@80 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@26)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@26 $Heap@@58 this@@80)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@80) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@80) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@80) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@58 this@@80) _module.ClaimIncreasingCounterGreaterThanConstant.constant))))))
 :qid |_10SequenceInvariantdfy.556:22|
 :skolemid |2215|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@26 $Heap@@58 this@@80) ($IsGoodHeap $Heap@@58))
))))
(assert (forall (($h@@34 T@U) ($o@@57 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@57 null)) (not true)) ($Is refType $o@@57 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@57) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@57) _module.OwnedObject.owner)) Tclass._module.Object $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@57) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.Universe) ($IsAlloc refType this@@81 Tclass._module.Universe $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@58 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@58) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@58) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@58) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.Universe.globalInv $h0@@21 this@@81) (_module.Universe.globalInv $h1@@21 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Universe.globalInv $h1@@21 this@@81))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Object) ($IsAlloc refType this@@82 Tclass._module.Object $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@59 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@59) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@59) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@59) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1042|
)) (= (_module.Object.objectGlobalBaseInv $h0@@22 this@@82) (_module.Object.objectGlobalBaseInv $h1@@22 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1043|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.objectGlobalBaseInv $h1@@22 this@@82))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.Object) ($IsAlloc refType this@@83 Tclass._module.Object $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@60 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@60) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@60) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |1114|
)) (= (_module.Object.localInv $h0@@23 this@@83) (_module.Object.localInv $h1@@23 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1115|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Object.localInv $h1@@23 this@@83))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@84 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Object) ($IsAlloc refType this@@84 Tclass._module.Object $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@61 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@61) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@61) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1124|
)) (= (_module.Object.inv $h0@@24 this@@84) (_module.Object.inv $h1@@24 this@@84))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.inv $h1@@24 this@@84))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@85 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.Thread) ($IsAlloc refType this@@85 Tclass._module.Thread $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@62 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@62) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@62) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1201|
)) (= (_module.Thread.localInv $h0@@25 this@@85) (_module.Thread.localInv $h1@@25 this@@85))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1202|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Thread.localInv $h1@@25 this@@85))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.Thread) ($IsAlloc refType this@@86 Tclass._module.Thread $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@63 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@63) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@63) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1213|
)) (= (_module.Thread.inv $h0@@26 this@@86) (_module.Thread.inv $h1@@26 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1214|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Thread.inv $h1@@26 this@@86))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@87 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.OwnedObject) ($IsAlloc refType this@@87 Tclass._module.OwnedObject $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@64 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@64) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@64) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1456|
)) (= (_module.OwnedObject.localInv $h0@@27 this@@87) (_module.OwnedObject.localInv $h1@@27 this@@87))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1457|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedObject.localInv $h1@@27 this@@87))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@88 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.OwnedObject) ($IsAlloc refType this@@88 Tclass._module.OwnedObject $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@65 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@65) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@65) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@65) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.OwnedObject.inv $h0@@28 this@@88) (_module.OwnedObject.inv $h1@@28 this@@88))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.OwnedObject.inv $h1@@28 this@@88))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@89 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.OwnedObject) ($IsAlloc refType this@@89 Tclass._module.OwnedObject $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@66 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@66) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@66) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@66) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.localUserInv $h0@@29 this@@89) (_module.OwnedObject.localUserInv $h1@@29 this@@89))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.OwnedObject.localUserInv $h1@@29 this@@89))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@90 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.OwnedObject) ($IsAlloc refType this@@90 Tclass._module.OwnedObject $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@67 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@67) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@67) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@67) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.OwnedObject.userInv $h0@@30 this@@90) (_module.OwnedObject.userInv $h1@@30 this@@90))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.OwnedObject.userInv $h1@@30 this@@90))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@91 Tclass._module.IncreasingCounter $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@68 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@68 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@68) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@68) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@68) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1583|
)) (= (_module.IncreasingCounter.localUserInv $h0@@31 this@@91) (_module.IncreasingCounter.localUserInv $h1@@31 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1584|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.IncreasingCounter.localUserInv $h1@@31 this@@91))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@92 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@92 Tclass._module.IncreasingCounter $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@69 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@69) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@69) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@69) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1590|
)) (= (_module.IncreasingCounter.userInv $h0@@32 this@@92) (_module.IncreasingCounter.userInv $h1@@32 this@@92))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1591|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.IncreasingCounter.userInv $h1@@32 this@@92))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@93 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Integer) ($IsAlloc refType this@@93 Tclass._module.Integer $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@70 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@70) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@70) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@70) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1794|
)) (= (_module.Integer.localUserInv $h0@@33 this@@93) (_module.Integer.localUserInv $h1@@33 this@@93))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1795|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.Integer.localUserInv $h1@@33 this@@93))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@94 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.Integer) ($IsAlloc refType this@@94 Tclass._module.Integer $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@71 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@71) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@71) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@71) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1801|
)) (= (_module.Integer.userInv $h0@@34 this@@94) (_module.Integer.userInv $h1@@34 this@@94))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1802|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Integer.userInv $h1@@34 this@@94))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@95 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.ConstantInteger) ($IsAlloc refType this@@95 Tclass._module.ConstantInteger $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@72 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@72) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@72) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |2005|
)) (= (_module.ConstantInteger.localUserInv $h0@@35 this@@95) (_module.ConstantInteger.localUserInv $h1@@35 this@@95))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2006|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.ConstantInteger.localUserInv $h1@@35 this@@95))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@96 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.ConstantInteger) ($IsAlloc refType this@@96 Tclass._module.ConstantInteger $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@73 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@73) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@73) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |2012|
)) (= (_module.ConstantInteger.userInv $h0@@36 this@@96) (_module.ConstantInteger.userInv $h1@@36 this@@96))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2013|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.ConstantInteger.userInv $h1@@36 this@@96))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@97 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@97 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@74 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@74) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@74) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |2218|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h0@@37 this@@97) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@37 this@@97))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2219|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@37 this@@97))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@98 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@98 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@75 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@75) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@75) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@75) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |2225|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h0@@38 this@@98) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@38 this@@98))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2226|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@38 this@@98))
)))
(assert (forall ((bx@@26 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@26 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@26)) bx@@26) ($Is SetType ($Unbox SetType bx@@26) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@26 (TSet t@@5)))
)))
(assert (forall (($o@@76 T@U) ) (!  (=> ($Is refType $o@@76 Tclass._module.Thread?) ($Is refType $o@@76 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2405|
 :pattern ( ($Is refType $o@@76 Tclass._module.Thread?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.Thread?) ($IsBox bx@@27 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2403|
 :pattern ( ($IsBox bx@@27 Tclass._module.Thread?))
)))
(assert (forall (($o@@77 T@U) ) (!  (=> ($Is refType $o@@77 Tclass._module.OwnedObject?) ($Is refType $o@@77 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($Is refType $o@@77 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.OwnedObject?) ($IsBox bx@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2407|
 :pattern ( ($IsBox bx@@28 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@78 T@U) ) (!  (=> ($Is refType $o@@78 Tclass._module.IncreasingCounter?) ($Is refType $o@@78 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2413|
 :pattern ( ($Is refType $o@@78 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.IncreasingCounter?) ($IsBox bx@@29 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2411|
 :pattern ( ($IsBox bx@@29 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@79 T@U) ) (!  (=> ($Is refType $o@@79 Tclass._module.Integer?) ($Is refType $o@@79 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2417|
 :pattern ( ($Is refType $o@@79 Tclass._module.Integer?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.Integer?) ($IsBox bx@@30 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2415|
 :pattern ( ($IsBox bx@@30 Tclass._module.Integer?))
)))
(assert (forall (($o@@80 T@U) ) (!  (=> ($Is refType $o@@80 Tclass._module.ConstantInteger?) ($Is refType $o@@80 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2421|
 :pattern ( ($Is refType $o@@80 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.ConstantInteger?) ($IsBox bx@@31 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2419|
 :pattern ( ($IsBox bx@@31 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@81 T@U) ) (!  (=> ($Is refType $o@@81 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($Is refType $o@@81 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2425|
 :pattern ( ($Is refType $o@@81 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($IsBox bx@@32 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2423|
 :pattern ( ($IsBox bx@@32 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter) Tagclass._module.IncreasingCounter))
(assert (= (TagFamily Tclass._module.IncreasingCounter) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer) Tagclass._module.Integer))
(assert (= (TagFamily Tclass._module.Integer) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.ConstantInteger) Tagclass._module.ConstantInteger))
(assert (= (TagFamily Tclass._module.ConstantInteger) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter?) Tagclass._module.IncreasingCounter?))
(assert (= (TagFamily Tclass._module.IncreasingCounter?) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer?) Tagclass._module.Integer?))
(assert (= (TagFamily Tclass._module.Integer?) tytagFamily$Integer))
(assert (= (Tag Tclass._module.ConstantInteger?) Tagclass._module.ConstantInteger?))
(assert (= (TagFamily Tclass._module.ConstantInteger?) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (forall (($h@@35 T@U) ($o@@82 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@82 null)) (not true)) ($Is refType $o@@82 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@82) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1426|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@82) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@83 T@U) ) (! (= ($Is refType $o@@83 Tclass._module.Universe?)  (or (= $o@@83 null) (implements$_module.Universe (dtype $o@@83))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType $o@@83 Tclass._module.Universe?))
)))
(assert (forall (($o@@84 T@U) ) (! (= ($Is refType $o@@84 Tclass._module.Object?)  (or (= $o@@84 null) (implements$_module.Object (dtype $o@@84))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Is refType $o@@84 Tclass._module.Object?))
)))
(assert (forall (($o@@85 T@U) ) (! (= ($Is refType $o@@85 Tclass._module.OwnedObject?)  (or (= $o@@85 null) (implements$_module.OwnedObject (dtype $o@@85))))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( ($Is refType $o@@85 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@36 T@U) ($o@@86 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@86 null)) (not true)) ($Is refType $o@@86 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@86) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@86) _module.Universe.content)) (TSet Tclass._module.Object) $h@@36))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |607|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@86) _module.Universe.content)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@59 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@59 this@@99) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@59) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@99 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@59)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@59 this@@99)  (and true (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) _module.ClaimIncreasingCounterGreaterThanConstant.constant))) _module.ConstantInteger.value)))))))
 :qid |_10SequenceInvariantdfy.560:19|
 :skolemid |2222|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@59 this@@99) ($IsGoodHeap $Heap@@59))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@60 T@U) (this@@100 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@60 this@@100) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@60) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@100 Tclass._module.IncreasingCounter $Heap@@60)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@60 this@@100)) (= (_module.IncreasingCounter.userInv $Heap@@60 this@@100)  (and true (_module.IncreasingCounter.localUserInv $Heap@@60 this@@100)))))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1594|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@60 this@@100) ($IsGoodHeap $Heap@@60))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@61 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@61 this@@101) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@61) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.Integer) ($IsAlloc refType this@@101 Tclass._module.Integer $Heap@@61)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Integer.localUserInv#canCall| $Heap@@61 this@@101)) (= (_module.Integer.userInv $Heap@@61 this@@101)  (and true (_module.Integer.localUserInv $Heap@@61 this@@101)))))
 :qid |_10SequenceInvariantdfy.471:19|
 :skolemid |1805|
 :pattern ( (_module.Integer.userInv $Heap@@61 this@@101) ($IsGoodHeap $Heap@@61))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@62 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@62 this@@102) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@62) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.ConstantInteger) ($IsAlloc refType this@@102 Tclass._module.ConstantInteger $Heap@@62)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv#canCall| $Heap@@62 this@@102)) (= (_module.ConstantInteger.userInv $Heap@@62 this@@102)  (and true (_module.ConstantInteger.localUserInv $Heap@@62 this@@102)))))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2016|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@62 this@@102) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@63 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@63 this@@103) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@63) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@103 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@63)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@63 this@@103)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@63 this@@103)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@63 this@@103)))))
 :qid |_10SequenceInvariantdfy.563:19|
 :skolemid |2229|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@63 this@@103) ($IsGoodHeap $Heap@@63))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@64 T@U) (this@@104 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@64 this@@104) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@64) (and (or (not (= this@@104 null)) (not true)) (and ($Is refType this@@104 Tclass._module.Thread) ($IsAlloc refType this@@104 Tclass._module.Thread $Heap@@64)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@64 this@@104)) (= (_module.Thread.localInv $Heap@@64 this@@104)  (and true (_module.Object.objectGlobalBaseInv $Heap@@64 this@@104)))))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1205|
 :pattern ( (_module.Thread.localInv $Heap@@64 this@@104) ($IsGoodHeap $Heap@@64))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@65 T@U) (this@@105 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@65 this@@105) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@65) (and (or (not (= this@@105 null)) (not true)) (and ($Is refType this@@105 Tclass._module.Thread) ($IsAlloc refType this@@105 Tclass._module.Thread $Heap@@65)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@65 this@@105)) (= (_module.Thread.inv $Heap@@65 this@@105)  (and true (_module.Thread.localInv $Heap@@65 this@@105)))))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1217|
 :pattern ( (_module.Thread.inv $Heap@@65 this@@105) ($IsGoodHeap $Heap@@65))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@66 T@U) (this@@106 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@66 this@@106) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@66) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.Object) ($IsAlloc refType this@@106 Tclass._module.Object $Heap@@66)))))) (= (_module.Object.triggerAxioms $Heap@@66 this@@106)  (and (or ($Is refType this@@106 Tclass._module.OwnedObject) ($Is refType this@@106 Tclass._module.Thread)) (not (and ($Is refType this@@106 Tclass._module.OwnedObject) ($Is refType this@@106 Tclass._module.Thread))))))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1066|
 :pattern ( (_module.Object.triggerAxioms $Heap@@66 this@@106) ($IsGoodHeap $Heap@@66))
))))
(assert (forall (($h@@37 T@U) ($o@@87 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@87 null)) (not true)) ($Is refType $o@@87 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@87) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@87) _module.Universe.content)))
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
(declare-fun $Heap@@67 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0@@1| () T@U)
(declare-fun |counter#0| () T@U)
(declare-fun |remaining#0| () T@U)
(declare-fun |defass#initial_value#0_0| () Bool)
(declare-fun |initial_value#0_0| () T@U)
(declare-fun |defass#claim1#0_0| () Bool)
(declare-fun |claim1#0_0| () T@U)
(declare-fun |defass#initial_value_plus_one#0_0| () Bool)
(declare-fun |initial_value_plus_one#0_0| () T@U)
(declare-fun |defass#claim2#0_0| () Bool)
(declare-fun |claim2#0_0| () T@U)
(declare-fun |defass#final_value#0_0| () Bool)
(declare-fun |final_value#0_0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |i#0@0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Incrementer_split6)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@67) ($IsHeapAnchor $Heap@@67)) (=> (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@67)) (and ($Is refType |running#0@@1| Tclass._module.Thread) ($IsAlloc refType |running#0@@1| Tclass._module.Thread $Heap@@67))) (=> (and (and (and (and (and (and ($Is refType |counter#0| Tclass._module.IncreasingCounter) ($IsAlloc refType |counter#0| Tclass._module.IncreasingCounter $Heap@@67)) (and ($Is refType |remaining#0| Tclass._module.Integer) ($IsAlloc refType |remaining#0| Tclass._module.Integer $Heap@@67))) (and (and (=> |defass#initial_value#0_0| (and ($Is refType |initial_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value#0_0| Tclass._module.ConstantInteger $Heap@@67))) true) (and (=> |defass#claim1#0_0| (and ($Is refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@67))) true))) (and (and (and (=> |defass#initial_value_plus_one#0_0| (and ($Is refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger $Heap@@67))) true) (and (=> |defass#claim2#0_0| (and ($Is refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@67))) true)) (and (and (=> |defass#final_value#0_0| (and ($Is refType |final_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |final_value#0_0| Tclass._module.ConstantInteger $Heap@@67))) true) (= 18 $FunctionContextHeight)))) (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@@67 |universe#0|) (and (_module.Universe.globalInv $Heap@@67 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@67 |universe#0|) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#8|))) (_module.Object.inv $Heap@@67 |o#8|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@67 |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |remaining#0|)))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |remaining#0|) _module.OwnedObject.owner)) |running#0@@1|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |remaining#0|) _module.Integer.value))) (LitInt 10))) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@67 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)))) (or (not (= |universe#0| null)) (not true)))) (and (and (forall (($o@@88 T@U) ($f@@42 T@U) ) (!  (=> (and (and (or (not (= $o@@88 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 $o@@88) alloc)))) (or (= $o@@88 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType $o@@88)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@88 $f@@42)))
 :qid |_10SequenceInvariantdfy.624:24|
 :skolemid |518|
)) (=> (|_module.Universe.globalInv#canCall| $Heap@@67 |universe#0|) (or (_module.Universe.globalInv $Heap@@67 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@67 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@67 |universe#0|) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@8|))) (and (and (and (= (_module.Object.universe |o#0@@8|) |universe#0|) (or (not (= |o#0@@8| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@67 |o#0@@8|)) (_module.Object.triggerAxioms $Heap@@67 |o#0@@8|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |849|
 :pattern ( (_module.Object.triggerAxioms $Heap@@67 |o#0@@8|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@67 |o#0@@8|))
 :pattern ( (_module.Object.universe |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@8|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@@67 |universe#0|) (or (_module.Universe.globalInv $Heap@@67 |universe#0|) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@0|))) (_module.Object.inv $Heap@@67 |o#1@@0|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |851|
 :pattern ( (_module.Object.inv $Heap@@67 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@0|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@1|))))))) (and (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|)) (and (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (and (_module.Universe.globalInv $Heap@0 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (_module.Object.inv $Heap@0 |o#3|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |856|
 :pattern ( (_module.Object.inv $Heap@0 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
)))))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@67 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#17| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) |running#0@@1|))) (=> (_module.Universe.legalTransitionsSequence $Heap@@67 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#17| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) |running#0@@1|))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@67 $Heap@0 |universe#0|))) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@67 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#17| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) |running#0@@1|))) (and (_module.Universe.legalTransitionsSequence $Heap@@67 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#17| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) |running#0@@1|))) (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@@67 $Heap@0 |universe#0|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#7|))) (or (forall (($o@@89 T@U) ($f@@43 T@U) ) (!  (=> (or (not (= $o@@89 null)) (not true)) (=> (= $o@@89 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@89) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 $o@@89) $f@@43))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |866|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@89) $f@@43))
)) (_module.Object.sequenceInv2 $Heap@@67 $Heap@0 |o#7|)))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |867|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@67 $Heap@0 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
))) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#17| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) |running#0@@1|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@67)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_10SequenceInvariantdfy.58:16|
 :skolemid |868|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |o#8@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
))))))) (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@67 $Heap@0 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@@67 $Heap@0 |universe#0|) (and true (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#9|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)) (_module.Object.sequenceInv2 $Heap@@67 $Heap@0 |o#9|)))
 :qid |_10SequenceInvariantdfy.27:15|
 :skolemid |870|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@67 $Heap@0 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
))))) (forall (($o@@90 T@U) ) (!  (=> (and (or (not (= $o@@90 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 $o@@90) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@90) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 $o@@90)) (or (= $o@@90 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@67 |universe#0|) _module.Universe.content)) ($Box refType $o@@90)))))
 :qid |_10SequenceInvariantdfy.103:10|
 :skolemid |871|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@90))
))) (and (and ($HeapSucc $Heap@@67 $Heap@0) (= |i#0@0| (LitInt 0))) (and (or (not (= |universe#0| null)) (not true)) (= (ControlFlow 0 2) (- 0 1))))))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
