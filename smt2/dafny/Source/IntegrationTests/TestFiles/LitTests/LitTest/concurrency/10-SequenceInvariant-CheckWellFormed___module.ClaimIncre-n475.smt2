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
(declare-fun class._module.ConstantInteger? () T@U)
(declare-fun Tagclass._module.ConstantInteger? () T@U)
(declare-fun class._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$IncreasingCounter () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun |_module.OwnedObject.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.counter () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.constant () T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter () T@U)
(declare-fun _module.ConstantInteger.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.ConstantInteger () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter? () T@U)
(declare-fun Tclass._module.ConstantInteger? () T@U)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
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
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.userInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.value () T@U)
(declare-fun _module.ConstantInteger.value () T@U)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#57| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.IncreasingCounter Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.ConstantInteger Tagclass._module.ClaimIncreasingCounterGreaterThanConstant Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? class._module.IncreasingCounter? Tagclass._module.IncreasingCounter? class._module.ConstantInteger? Tagclass._module.ConstantInteger? class._module.ClaimIncreasingCounterGreaterThanConstant? Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? tytagFamily$Universe tytagFamily$Thread tytagFamily$IncreasingCounter tytagFamily$Object tytagFamily$ConstantInteger tytagFamily$ClaimIncreasingCounterGreaterThanConstant tytagFamily$OwnedObject field$content field$owner field$value field$nonvolatileVersion field$counter field$constant)
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
 :qid |_10SequenceInvariantdfy.360:22|
 :skolemid |1502|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.OwnedObject) ($IsAlloc refType this@@0 Tclass._module.OwnedObject $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@0 this@@0)) (= (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@0 this@@0)))))
 :qid |_10SequenceInvariantdfy.316:19|
 :skolemid |1444|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| $Heap@@1 this@@1) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@1 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@1)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@1 this@@1)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))))
 :qid |_10SequenceInvariantdfy.550:19|
 :skolemid |2201|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1434|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h0 this@@2) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1435|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1535|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1536|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1576|
)) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1577|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1998|
)) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@2 this@@5) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1999|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |2211|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@6) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2212|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.IncreasingCounter?))
(assert (implements$_module.OwnedObject Tclass._module.ConstantInteger?))
(assert (implements$_module.OwnedObject Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@7) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@7) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@7) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.Universe.content)) ($Box refType |o#0|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0|)))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |625|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.Universe.content)) ($Box refType |o#0|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@7)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@7) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.Universe.content)) ($Box refType |o#0@@0|))) (_module.Object.inv $Heap@@2 |o#0@@0|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |624|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_10SequenceInvariantdfy.21:19|
 :skolemid |626|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.Thread?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($Is refType $o@@4 Tclass._module.Thread?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.IncreasingCounter?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( ($Is refType $o@@5 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.ConstantInteger?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($Is refType $o@@6 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2191|
 :pattern ( ($Is refType $o@@7 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall (($h T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@8 null)) (not true)) ($Is refType $o@@8 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@8) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1424|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@8) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.ConstantInteger? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2420|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.ConstantInteger? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |2424|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@9) ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1767|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.ConstantInteger $h@@10) ($IsAlloc refType |c#0@@4| Tclass._module.ConstantInteger? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.ConstantInteger $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.ConstantInteger? $h@@10))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@11) ($IsAlloc refType |c#0@@5| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2402|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@11))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@3 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@8)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |1588|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@4 this@@9) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@9) (_module.ConstantInteger.localUserInv $Heap@@4 this@@9)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |2010|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@9) (_module.ConstantInteger.localUserInv $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@5 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@5 this@@10)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |2223|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) ($Is refType this@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@5 this@@10) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@6 this@@11) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv $Heap@@6 this@@11) (_module.IncreasingCounter.userInv $Heap@@6 this@@11)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1595|
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@11) ($Is refType this@@11 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.userInv $Heap@@6 this@@11) (_module.IncreasingCounter.userInv $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@7 this@@12) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.ConstantInteger.userInv $Heap@@7 this@@12)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |2017|
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) ($Is refType this@@12 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.ConstantInteger.userInv $Heap@@7 this@@12) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@8 this@@13) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv $Heap@@8 this@@13) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@8 this@@13)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |2230|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@13) ($Is refType this@@13 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@13) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@8 this@@13) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@9 this@@14) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@9 this@@14) (_module.Thread.baseFieldsInv $Heap@@9 this@@14)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1192|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@14) ($Is refType this@@14 Tclass._module.Thread) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@14) (_module.Thread.baseFieldsInv $Heap@@9 this@@14) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@10 this@@15) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@15) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@10 this@@15)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1567|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@15) ($Is refType this@@15 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@15) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@10 this@@15) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@11 this@@16) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@16) (_module.ConstantInteger.baseUserFieldsInv $Heap@@11 this@@16)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1989|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@16) ($Is refType this@@16 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@16) (_module.ConstantInteger.baseUserFieldsInv $Heap@@11 this@@16) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv#canCall| $Heap@@12 this@@17) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@17) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@12 this@@17)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |2202|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@17) ($Is refType this@@17 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@17) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $Heap@@12 this@@17) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@13 this@@18) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@13 this@@18) (_module.OwnedObject.baseFieldsInv $Heap@@13 this@@18)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1445|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@13 this@@18) ($Is refType this@@18 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@13 this@@18) (_module.OwnedObject.baseFieldsInv $Heap@@13 this@@18) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@14 this@@19) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@14 this@@19) (_module.Thread.localInv $Heap@@14 this@@19)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1206|
 :pattern ( (_module.Object.localInv $Heap@@14 this@@19) ($Is refType this@@19 Tclass._module.Thread) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.localInv $Heap@@14 this@@19) (_module.Thread.localInv $Heap@@14 this@@19) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@15 this@@20) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@15 this@@20) (_module.OwnedObject.localInv $Heap@@15 this@@20)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1461|
 :pattern ( (_module.Object.localInv $Heap@@15 this@@20) ($Is refType this@@20 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.localInv $Heap@@15 this@@20) (_module.OwnedObject.localInv $Heap@@15 this@@20) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@16 this@@21) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@16 this@@21) (_module.Thread.inv $Heap@@16 this@@21)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1218|
 :pattern ( (_module.Object.inv $Heap@@16 this@@21) ($Is refType this@@21 Tclass._module.Thread) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.inv $Heap@@16 this@@21) (_module.Thread.inv $Heap@@16 this@@21) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@17 this@@22) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@17 this@@22) (_module.OwnedObject.inv $Heap@@17 this@@22)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1474|
 :pattern ( (_module.Object.inv $Heap@@17 this@@22) ($Is refType this@@22 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.Object.inv $Heap@@17 this@@22) (_module.OwnedObject.inv $Heap@@17 this@@22) ($IsGoodHeap $Heap@@17))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
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
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Universe) ($IsAlloc refType this@@23 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@9 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@9) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |643|
)) (= (_module.Universe.globalInv2 $prevHeap@@5 $h0@@4 this@@23) (_module.Universe.globalInv2 $prevHeap@@5 $h1@@4 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |644|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv2 $prevHeap@@5 $h1@@4 this@@23))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@10 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@10) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1120|
)) (= (_module.Object.localInv2 $prevHeap@@6 $h0@@5 this@@24) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1121|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@24))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Object) ($IsAlloc refType this@@25 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1128|
)) (= (_module.Object.sequenceInv2 $prevHeap@@7 $h0@@6 this@@25) (_module.Object.sequenceInv2 $prevHeap@@7 $h1@@6 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1129|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.sequenceInv2 $prevHeap@@7 $h1@@6 this@@25))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Object) ($IsAlloc refType this@@26 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@12 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@12) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1132|
)) (= (_module.Object.inv2 $prevHeap@@8 $h0@@7 this@@26) (_module.Object.inv2 $prevHeap@@8 $h1@@7 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1133|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.inv2 $prevHeap@@8 $h1@@7 this@@26))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Thread) ($IsAlloc refType this@@27 Tclass._module.Thread $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@13 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@13) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1225|
)) (= (_module.Thread.localInv2 $prevHeap@@9 $h0@@8 this@@27) (_module.Thread.localInv2 $prevHeap@@9 $h1@@8 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1226|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.localInv2 $prevHeap@@9 $h1@@8 this@@27))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Thread) ($IsAlloc refType this@@28 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@14 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@14) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@14) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@10 $h0@@9 this@@28) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@9 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@9 this@@28))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Thread) ($IsAlloc refType this@@29 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@15 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@15) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@15) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1239|
)) (= (_module.Thread.inv2 $prevHeap@@11 $h0@@10 this@@29) (_module.Thread.inv2 $prevHeap@@11 $h1@@10 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1240|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.inv2 $prevHeap@@11 $h1@@10 this@@29))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.OwnedObject) ($IsAlloc refType this@@30 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@16 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@16) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@16) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1482|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@12 $h0@@11 this@@30) (_module.OwnedObject.localInv2 $prevHeap@@12 $h1@@11 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1483|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.localInv2 $prevHeap@@12 $h1@@11 this@@30))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.OwnedObject) ($IsAlloc refType this@@31 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@17 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@17) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@17) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1490|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@13 $h0@@12 this@@31) (_module.OwnedObject.sequenceInv2 $prevHeap@@13 $h1@@12 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1491|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.sequenceInv2 $prevHeap@@13 $h1@@12 this@@31))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.OwnedObject) ($IsAlloc refType this@@32 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@18 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@18) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@18) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1498|
)) (= (_module.OwnedObject.inv2 $prevHeap@@14 $h0@@13 this@@32) (_module.OwnedObject.inv2 $prevHeap@@14 $h1@@13 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1499|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.inv2 $prevHeap@@14 $h1@@13 this@@32))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@19 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@19) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@19) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1543|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h0@@14 this@@33) (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h1@@14 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1544|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h1@@14 this@@33))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.OwnedObject) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@20 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@20) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@20) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1551|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@16 $h0@@15 this@@34) (_module.OwnedObject.userInv2 $prevHeap@@16 $h1@@15 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1552|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.userInv2 $prevHeap@@16 $h1@@15 this@@34))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@35 Tclass._module.IncreasingCounter $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@21 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@21) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@21) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1598|
)) (= (_module.IncreasingCounter.localUserInv2 $prevHeap@@17 $h0@@16 this@@35) (_module.IncreasingCounter.localUserInv2 $prevHeap@@17 $h1@@16 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1599|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.IncreasingCounter.localUserInv2 $prevHeap@@17 $h1@@16 this@@35))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@36 Tclass._module.IncreasingCounter $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@22 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@22) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@22) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1605|
)) (= (_module.IncreasingCounter.userInv2 $prevHeap@@18 $h0@@17 this@@36) (_module.IncreasingCounter.userInv2 $prevHeap@@18 $h1@@17 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1606|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.IncreasingCounter.userInv2 $prevHeap@@18 $h1@@17 this@@36))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.ConstantInteger) ($IsAlloc refType this@@37 Tclass._module.ConstantInteger $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@23 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@23) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@23) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |2020|
)) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h0@@18 this@@37) (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h1@@18 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2021|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h1@@18 this@@37))
)))
(assert (forall (($prevHeap@@20 T@U) ($h0@@19 T@U) ($h1@@19 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.ConstantInteger) ($IsAlloc refType this@@38 Tclass._module.ConstantInteger $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@24 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@24) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@24) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |2027|
)) (= (_module.ConstantInteger.userInv2 $prevHeap@@20 $h0@@19 this@@38) (_module.ConstantInteger.userInv2 $prevHeap@@20 $h1@@19 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2028|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.ConstantInteger.userInv2 $prevHeap@@20 $h1@@19 this@@38))
)))
(assert (forall (($prevHeap@@21 T@U) ($h0@@20 T@U) ($h1@@20 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@39 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@25 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@25) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@25) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |2233|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@21 $h0@@20 this@@39) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@21 $h1@@20 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2234|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@21 $h1@@20 this@@39))
)))
(assert (forall (($prevHeap@@22 T@U) ($h0@@21 T@U) ($h1@@21 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@26 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@26) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@26) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |2240|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@22 $h0@@21 this@@40) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@22 $h1@@21 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2241|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@22 $h1@@21 this@@40))
)))
(assert (forall (($o@@27 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@27 Tclass._module.Universe? $h@@12)  (or (= $o@@27 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@27) alloc)))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType $o@@27 Tclass._module.Universe? $h@@12))
)))
(assert (forall (($o@@28 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@28 Tclass._module.Object? $h@@13)  (or (= $o@@28 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@28) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc refType $o@@28 Tclass._module.Object? $h@@13))
)))
(assert (forall (($o@@29 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@29 Tclass._module.Thread? $h@@14)  (or (= $o@@29 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@29) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1180|
 :pattern ( ($IsAlloc refType $o@@29 Tclass._module.Thread? $h@@14))
)))
(assert (forall (($o@@30 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@30 Tclass._module.OwnedObject? $h@@15)  (or (= $o@@30 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@30) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.OwnedObject? $h@@15))
)))
(assert (forall (($o@@31 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@31 Tclass._module.IncreasingCounter? $h@@16)  (or (= $o@@31 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@31) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1559|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.IncreasingCounter? $h@@16))
)))
(assert (forall (($o@@32 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@32 Tclass._module.ConstantInteger? $h@@17)  (or (= $o@@32 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@32) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsAlloc refType $o@@32 Tclass._module.ConstantInteger? $h@@17))
)))
(assert (forall (($o@@33 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@33 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@18)  (or (= $o@@33 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@33) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2192|
 :pattern ( ($IsAlloc refType $o@@33 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@18))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@18 this@@41) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Object) ($IsAlloc refType this@@41 Tclass._module.Object $Heap@@18)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@41)) _module.Universe.content)) ($Box refType this@@41)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@18 this@@41) (=> (_module.Object.baseFieldsInv $Heap@@18 this@@41) (|_module.Universe.globalBaseInv#canCall| $Heap@@18 (_module.Object.universe this@@41))))) (= (_module.Object.objectGlobalBaseInv $Heap@@18 this@@41)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@41)) _module.Universe.content)) ($Box refType this@@41)) (_module.Object.baseFieldsInv $Heap@@18 this@@41)) (_module.Universe.globalBaseInv $Heap@@18 (_module.Object.universe this@@41))))))
 :qid |_10SequenceInvariantdfy.196:19|
 :skolemid |1046|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@18 this@@41) ($IsGoodHeap $Heap@@18))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@19 this@@42) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Thread) ($IsAlloc refType this@@42 Tclass._module.Thread $Heap@@19)))))) (= (_module.Thread.baseFieldsInv $Heap@@19 this@@42) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.254:19|
 :skolemid |1191|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@19 this@@42) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@20 this@@43) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@43 Tclass._module.IncreasingCounter $Heap@@20)))))) (= (_module.IncreasingCounter.baseUserFieldsInv $Heap@@20 this@@43) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.419:19|
 :skolemid |1566|
 :pattern ( (_module.IncreasingCounter.baseUserFieldsInv $Heap@@20 this@@43) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@21 this@@44) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.ConstantInteger) ($IsAlloc refType this@@44 Tclass._module.ConstantInteger $Heap@@21)))))) (= (_module.ConstantInteger.baseUserFieldsInv $Heap@@21 this@@44) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.505:19|
 :skolemid |1988|
 :pattern ( (_module.ConstantInteger.baseUserFieldsInv $Heap@@21 this@@44) ($IsGoodHeap $Heap@@21))
))))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@22 this@@45) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@45 Tclass._module.IncreasingCounter $Heap@@22)))))) (= (_module.IncreasingCounter.localUserInv $Heap@@22 this@@45) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.424:19|
 :skolemid |1587|
 :pattern ( (_module.IncreasingCounter.localUserInv $Heap@@22 this@@45) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@23 this@@46) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.ConstantInteger) ($IsAlloc refType this@@46 Tclass._module.ConstantInteger $Heap@@23)))))) (= (_module.ConstantInteger.localUserInv $Heap@@23 this@@46) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.512:19|
 :skolemid |2009|
 :pattern ( (_module.ConstantInteger.localUserInv $Heap@@23 this@@46) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@24 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@23 $Heap@@24 this@@47) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@23 $Heap@@24)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Thread) ($IsAlloc refType this@@47 Tclass._module.Thread $prevHeap@@23)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@23 $Heap@@24 this@@47) (=> (_module.Thread.localInv2 $prevHeap@@23 $Heap@@24 this@@47) (|_module.Thread.sequenceInv2#canCall| $prevHeap@@23 $Heap@@24 this@@47))) (= (_module.Thread.inv2 $prevHeap@@23 $Heap@@24 this@@47)  (and (_module.Thread.localInv2 $prevHeap@@23 $Heap@@24 this@@47) (_module.Thread.sequenceInv2 $prevHeap@@23 $Heap@@24 this@@47)))))
 :qid |_10SequenceInvariantdfy.272:22|
 :skolemid |1243|
 :pattern ( (_module.Thread.inv2 $prevHeap@@23 $Heap@@24 this@@47) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@25 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@24 $Heap@@25 this@@48) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@25)) ($HeapSucc $prevHeap@@24 $Heap@@25)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.Thread) ($IsAlloc refType this@@48 Tclass._module.Thread $prevHeap@@24)))))) (=> (_module.Thread.inv2 $prevHeap@@24 $Heap@@25 this@@48) (and (_module.Thread.localInv2 $prevHeap@@24 $Heap@@25 this@@48) (_module.Thread.sequenceInv2 $prevHeap@@24 $Heap@@25 this@@48))))
 :qid |_10SequenceInvariantdfy.272:22|
 :skolemid |1241|
 :pattern ( (_module.Thread.inv2 $prevHeap@@24 $Heap@@25 this@@48))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@26 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@25 $Heap@@26 this@@49) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@25 $Heap@@26)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.OwnedObject) ($IsAlloc refType this@@49 Tclass._module.OwnedObject $prevHeap@@25)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@25 $Heap@@26 this@@49) (and (_module.OwnedObject.localInv2 $prevHeap@@25 $Heap@@26 this@@49) (_module.OwnedObject.sequenceInv2 $prevHeap@@25 $Heap@@26 this@@49))))
 :qid |_10SequenceInvariantdfy.360:22|
 :skolemid |1500|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@25 $Heap@@26 this@@49))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@27 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@26 $Heap@@27 this@@50) (and (< 11 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@26) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@26 $Heap@@27)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Object) ($IsAlloc refType this@@50 Tclass._module.Object $prevHeap@@26)))))) (=> (_module.Object.inv2 $prevHeap@@26 $Heap@@27 this@@50) (and (_module.Object.localInv2 $prevHeap@@26 $Heap@@27 this@@50) (_module.Object.sequenceInv2 $prevHeap@@26 $Heap@@27 this@@50))))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1134|
 :pattern ( (_module.Object.inv2 $prevHeap@@26 $Heap@@27 this@@50))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@28 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@27 $Heap@@28 this@@51) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@27) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@27 $Heap@@28)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.ConstantInteger) ($IsAlloc refType this@@51 Tclass._module.ConstantInteger $prevHeap@@27)))))) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@28 this@@51) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@27 this@@51) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@51) _module.ConstantInteger.value))))))
 :qid |_10SequenceInvariantdfy.508:22|
 :skolemid |2002|
 :pattern ( (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@27 $Heap@@28 this@@51) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@29 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@28 $Heap@@29 this@@52) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@28) ($IsGoodHeap $Heap@@29)) ($HeapSucc $prevHeap@@28 $Heap@@29)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@52 Tclass._module.IncreasingCounter $prevHeap@@28)))))) (= (_module.IncreasingCounter.localUserInv2 $prevHeap@@28 $Heap@@29 this@@52) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@28 this@@52) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@52) _module.IncreasingCounter.value))))))
 :qid |_10SequenceInvariantdfy.431:22|
 :skolemid |1602|
 :pattern ( (_module.IncreasingCounter.localUserInv2 $prevHeap@@28 $Heap@@29 this@@52) ($IsGoodHeap $Heap@@29))
))))
(assert (forall (($h@@19 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.IncreasingCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@34) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@34) _module.IncreasingCounter.value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1561|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@34) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@20 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.ConstantInteger?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@35) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@35) _module.ConstantInteger.value)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1983|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@35) _module.ConstantInteger.value)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@30 this@@53) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.OwnedObject) ($IsAlloc refType this@@53 Tclass._module.OwnedObject $Heap@@30)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@30 this@@53) (=> (_module.Object.objectGlobalBaseInv $Heap@@30 this@@53) (|_module.OwnedObject.localUserInv#canCall| $Heap@@30 this@@53))) (= (_module.OwnedObject.localInv $Heap@@30 this@@53)  (and (_module.Object.objectGlobalBaseInv $Heap@@30 this@@53) (_module.OwnedObject.localUserInv $Heap@@30 this@@53)))))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.localInv $Heap@@30 this@@53) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@31 this@@54) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $Heap@@31)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@31 this@@54) (=> (_module.OwnedObject.localInv $Heap@@31 this@@54) (|_module.OwnedObject.userInv#canCall| $Heap@@31 this@@54))) (= (_module.OwnedObject.inv $Heap@@31 this@@54)  (and (_module.OwnedObject.localInv $Heap@@31 this@@54) (_module.OwnedObject.userInv $Heap@@31 this@@54)))))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1473|
 :pattern ( (_module.OwnedObject.inv $Heap@@31 this@@54) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@32 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@29 $Heap@@32 this@@55) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@29) ($IsGoodHeap $Heap@@32)) ($HeapSucc $prevHeap@@29 $Heap@@32)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.ConstantInteger) ($IsAlloc refType this@@55 Tclass._module.ConstantInteger $prevHeap@@29)))))) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@29 $Heap@@32 this@@55)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@29 this@@55) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@32 this@@55) _module.ConstantInteger.value)))))))
 :qid |_10SequenceInvariantdfy.519:22|
 :skolemid |2024|
 :pattern ( (_module.ConstantInteger.localUserInv2 $prevHeap@@29 $Heap@@32 this@@55) ($IsGoodHeap $Heap@@32))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@21 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@36 null)) (not true)) ($Is refType $o@@36 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@36) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@36) Tclass._module.Universe $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1041|
 :pattern ( (_module.Object.universe $o@@36) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@36) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) ($Is refType $o@@37 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@37) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_module.Object.universe $o@@37))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@38 T@U) ($f@@22 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@38 $f@@22))  (=> (and (or (not (= $o@@38 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@38) |l#2|)))) (= $o@@38 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2431|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@38 $f@@22))
)))
(assert (forall (($h@@22 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@39) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2193|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@39) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@23 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@40) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2195|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@40) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@33 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@30 $Heap@@33 this@@56) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@30 $Heap@@33 this@@56) (_module.Thread.localInv2 $prevHeap@@30 $Heap@@33 this@@56)))
 :qid |_10SequenceInvariantdfy.242:22|
 :skolemid |1230|
 :pattern ( (_module.Object.localInv2 $prevHeap@@30 $Heap@@33 this@@56) ($Is refType this@@56 Tclass._module.Thread) ($IsGoodHeap $Heap@@33))
 :pattern ( (_module.Object.localInv2 $prevHeap@@30 $Heap@@33 this@@56) (_module.Thread.localInv2 $prevHeap@@30 $Heap@@33 this@@56) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@34 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@31 $Heap@@34 this@@57) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@31 $Heap@@34 this@@57) (_module.Thread.sequenceInv2 $prevHeap@@31 $Heap@@34 this@@57)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1237|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@31 $Heap@@34 this@@57) ($Is refType this@@57 Tclass._module.Thread) ($IsGoodHeap $Heap@@34))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@31 $Heap@@34 this@@57) (_module.Thread.sequenceInv2 $prevHeap@@31 $Heap@@34 this@@57) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@35 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@32 $Heap@@35 this@@58) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@35 this@@58) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@35 this@@58)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |1581|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@35 this@@58) ($Is refType this@@58 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@35))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@35 this@@58) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@35 this@@58) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@36 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@33 $Heap@@36 this@@59) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@59 null)) (not true)) ($Is refType this@@59 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@33 $Heap@@36 this@@59) (_module.IncreasingCounter.localUserInv2 $prevHeap@@33 $Heap@@36 this@@59)))
 :qid |_10SequenceInvariantdfy.396:22|
 :skolemid |1603|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@33 $Heap@@36 this@@59) ($Is refType this@@59 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@36))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@33 $Heap@@36 this@@59) (_module.IncreasingCounter.localUserInv2 $prevHeap@@33 $Heap@@36 this@@59) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@37 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@34 $Heap@@37 this@@60) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@37 this@@60) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@37 this@@60)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |2003|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@37 this@@60) ($Is refType this@@60 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@37))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@37 this@@60) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@37 this@@60) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@38 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@35 $Heap@@38 this@@61) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@35 $Heap@@38 this@@61) (_module.ConstantInteger.localUserInv2 $prevHeap@@35 $Heap@@38 this@@61)))
 :qid |_10SequenceInvariantdfy.396:22|
 :skolemid |2025|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@35 $Heap@@38 this@@61) ($Is refType this@@61 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@38))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@35 $Heap@@38 this@@61) (_module.ConstantInteger.localUserInv2 $prevHeap@@35 $Heap@@38 this@@61) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@39 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@36 $Heap@@39 this@@62) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@39 this@@62) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@39 this@@62)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |2216|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@39 this@@62) ($Is refType this@@62 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@39))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@39 this@@62) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@36 $Heap@@39 this@@62) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@40 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@37 $Heap@@40 this@@63) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@40 this@@63) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@37 $Heap@@40 this@@63)))
 :qid |_10SequenceInvariantdfy.396:22|
 :skolemid |2238|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@40 this@@63) ($Is refType this@@63 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@40))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@37 $Heap@@40 this@@63) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@37 $Heap@@40 this@@63) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@41 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@38 $Heap@@41 this@@64) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@38 $Heap@@41 this@@64) (_module.Thread.inv2 $prevHeap@@38 $Heap@@41 this@@64)))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1244|
 :pattern ( (_module.Object.inv2 $prevHeap@@38 $Heap@@41 this@@64) ($Is refType this@@64 Tclass._module.Thread) ($IsGoodHeap $Heap@@41))
 :pattern ( (_module.Object.inv2 $prevHeap@@38 $Heap@@41 this@@64) (_module.Thread.inv2 $prevHeap@@38 $Heap@@41 this@@64) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@42 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@39 $Heap@@42 this@@65) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@65 null)) (not true)) ($Is refType this@@65 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv2 $prevHeap@@39 $Heap@@42 this@@65) (_module.IncreasingCounter.userInv2 $prevHeap@@39 $Heap@@42 this@@65)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |1610|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@39 $Heap@@42 this@@65) ($Is refType this@@65 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@42))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@39 $Heap@@42 this@@65) (_module.IncreasingCounter.userInv2 $prevHeap@@39 $Heap@@42 this@@65) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@43 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@40 $Heap@@43 this@@66) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@66 null)) (not true)) ($Is refType this@@66 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv2 $prevHeap@@40 $Heap@@43 this@@66) (_module.ConstantInteger.userInv2 $prevHeap@@40 $Heap@@43 this@@66)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |2032|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@40 $Heap@@43 this@@66) ($Is refType this@@66 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@43))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@40 $Heap@@43 this@@66) (_module.ConstantInteger.userInv2 $prevHeap@@40 $Heap@@43 this@@66) ($IsGoodHeap $Heap@@43))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@44 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@41 $Heap@@44 this@@67) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@67 null)) (not true)) ($Is refType this@@67 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv2 $prevHeap@@41 $Heap@@44 this@@67) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@41 $Heap@@44 this@@67)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |2245|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@41 $Heap@@44 this@@67) ($Is refType this@@67 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@44))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@41 $Heap@@44 this@@67) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@41 $Heap@@44 this@@67) ($IsGoodHeap $Heap@@44))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@45 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@42 $Heap@@45 this@@68) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@68 null)) (not true)) ($Is refType this@@68 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@42 $Heap@@45 this@@68) (_module.OwnedObject.localInv2 $prevHeap@@42 $Heap@@45 this@@68)))
 :qid |_10SequenceInvariantdfy.242:22|
 :skolemid |1487|
 :pattern ( (_module.Object.localInv2 $prevHeap@@42 $Heap@@45 this@@68) ($Is refType this@@68 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@45))
 :pattern ( (_module.Object.localInv2 $prevHeap@@42 $Heap@@45 this@@68) (_module.OwnedObject.localInv2 $prevHeap@@42 $Heap@@45 this@@68) ($IsGoodHeap $Heap@@45))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@46 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@43 $Heap@@46 this@@69) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@69 null)) (not true)) ($Is refType this@@69 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@46 this@@69) (_module.OwnedObject.sequenceInv2 $prevHeap@@43 $Heap@@46 this@@69)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1495|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@46 this@@69) ($Is refType this@@69 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@46))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@46 this@@69) (_module.OwnedObject.sequenceInv2 $prevHeap@@43 $Heap@@46 this@@69) ($IsGoodHeap $Heap@@46))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@47 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@44 $Heap@@47 this@@70) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@70 null)) (not true)) ($Is refType this@@70 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@44 $Heap@@47 this@@70) (_module.OwnedObject.inv2 $prevHeap@@44 $Heap@@47 this@@70)))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1503|
 :pattern ( (_module.Object.inv2 $prevHeap@@44 $Heap@@47 this@@70) ($Is refType this@@70 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@47))
 :pattern ( (_module.Object.inv2 $prevHeap@@44 $Heap@@47 this@@70) (_module.OwnedObject.inv2 $prevHeap@@44 $Heap@@47 this@@70) ($IsGoodHeap $Heap@@47))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.IncreasingCounter) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.IncreasingCounter)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@8 Tclass._module.IncreasingCounter))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@9 Tclass._module.Universe?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.ConstantInteger) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.ConstantInteger)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@11 Tclass._module.ConstantInteger))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@12 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@13 Tclass._module.Object?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@15 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsBox bx@@16 Tclass._module.Thread?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.IncreasingCounter?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1557|
 :pattern ( ($IsBox bx@@17 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.ConstantInteger?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@18 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2190|
 :pattern ( ($IsBox bx@@19 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@48 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@48 this@@71) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Universe) ($IsAlloc refType this@@71 Tclass._module.Universe $Heap@@48)))))) (and (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 this@@71) _module.Universe.content)) ($Box refType |o#0@@1|)) (=> (= (_module.Object.universe |o#0@@1|) this@@71) (=> (or (not (= |o#0@@1| this@@71)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@48 |o#0@@1|) (=> (_module.Object.baseFieldsInv $Heap@@48 |o#0@@1|) (|_module.Object.triggerAxioms#canCall| $Heap@@48 |o#0@@1|)))))))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |613|
 :pattern ( (_module.Object.triggerAxioms $Heap@@48 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@48 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 this@@71) _module.Universe.content)) ($Box refType |o#0@@1|)))
)) (= (_module.Universe.globalBaseInv $Heap@@48 this@@71) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 this@@71) _module.Universe.content)) ($Box refType |o#0@@2|))) (and (and (and (= (_module.Object.universe |o#0@@2|) this@@71) (or (not (= |o#0@@2| this@@71)) (not true))) (_module.Object.baseFieldsInv $Heap@@48 |o#0@@2|)) (_module.Object.triggerAxioms $Heap@@48 |o#0@@2|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |612|
 :pattern ( (_module.Object.triggerAxioms $Heap@@48 |o#0@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@48 |o#0@@2|))
 :pattern ( (_module.Object.universe |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@48 this@@71) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))))
 :qid |_10SequenceInvariantdfy.16:19|
 :skolemid |614|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@48 this@@71) ($IsGoodHeap $Heap@@48))
))))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Universe)  (and ($Is refType |c#0@@6| Tclass._module.Universe?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Object)  (and ($Is refType |c#0@@7| Tclass._module.Object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Thread)  (and ($Is refType |c#0@@8| Tclass._module.Thread?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@9| Tclass._module.OwnedObject?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.IncreasingCounter)  (and ($Is refType |c#0@@10| Tclass._module.IncreasingCounter?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1766|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncreasingCounter))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncreasingCounter?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.ConstantInteger)  (and ($Is refType |c#0@@11| Tclass._module.ConstantInteger?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.ConstantInteger))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.ConstantInteger?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.ClaimIncreasingCounterGreaterThanConstant)  (and ($Is refType |c#0@@12| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2401|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall (($h@@24 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@41) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@41) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2194|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@41) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@25 T@U) ($o@@42 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@42) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@42) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2196|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@42) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@49 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@49 this@@72) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@49) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Object) ($IsAlloc refType this@@72 Tclass._module.Object $Heap@@49)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@49 (_module.Object.universe this@@72)) _module.Universe.content)) ($Box refType this@@72)) (|_module.Universe.globalInv#canCall| $Heap@@49 (_module.Object.universe this@@72))) (= (_module.Object.objectGlobalInv $Heap@@49 this@@72)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@49 (_module.Object.universe this@@72)) _module.Universe.content)) ($Box refType this@@72)) (_module.Universe.globalInv $Heap@@49 (_module.Object.universe this@@72))))))
 :qid |_10SequenceInvariantdfy.199:19|
 :skolemid |1053|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@49 this@@72) ($IsGoodHeap $Heap@@49))
))))
(assert (forall (($o@@43 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@43 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@43 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2406|
 :pattern ( ($IsAlloc refType $o@@43 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@44 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@44 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@44 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2410|
 :pattern ( ($IsAlloc refType $o@@44 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@45 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@45 Tclass._module.IncreasingCounter? $heap@@1) ($IsAlloc refType $o@@45 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2414|
 :pattern ( ($IsAlloc refType $o@@45 Tclass._module.IncreasingCounter? $heap@@1))
)))
(assert (forall (($o@@46 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@46 Tclass._module.ConstantInteger? $heap@@2) ($IsAlloc refType $o@@46 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2422|
 :pattern ( ($IsAlloc refType $o@@46 Tclass._module.ConstantInteger? $heap@@2))
)))
(assert (forall (($o@@47 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@47 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@3) ($IsAlloc refType $o@@47 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2426|
 :pattern ( ($IsAlloc refType $o@@47 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@50 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@45 $Heap@@50 this@@73) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@45) ($IsGoodHeap $Heap@@50)) ($HeapSucc $prevHeap@@45 $Heap@@50)) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Thread) ($IsAlloc refType this@@73 Tclass._module.Thread $prevHeap@@45)))))) (= (_module.Thread.localInv2 $prevHeap@@45 $Heap@@50 this@@73) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.266:22|
 :skolemid |1229|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@45 $Heap@@50 this@@73) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@51 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@46 $Heap@@51 this@@74) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@46) ($IsGoodHeap $Heap@@51)) ($HeapSucc $prevHeap@@46 $Heap@@51)) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Thread) ($IsAlloc refType this@@74 Tclass._module.Thread $prevHeap@@46)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@46 $Heap@@51 this@@74) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.269:22|
 :skolemid |1236|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@46 $Heap@@51 this@@74) ($IsGoodHeap $Heap@@51))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@47 T@U) ($Heap@@52 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@47 $Heap@@52 this@@75) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@47) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@47 $Heap@@52)) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@75 Tclass._module.IncreasingCounter $prevHeap@@47)))))) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@47 $Heap@@52 this@@75) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.422:22|
 :skolemid |1580|
 :pattern ( (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@47 $Heap@@52 this@@75) ($IsGoodHeap $Heap@@52))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@48 T@U) ($Heap@@53 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@48 $Heap@@53 this@@76) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@48) ($IsGoodHeap $Heap@@53)) ($HeapSucc $prevHeap@@48 $Heap@@53)) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@76 Tclass._module.IncreasingCounter $prevHeap@@48)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@48 $Heap@@53 this@@76)) (= (_module.IncreasingCounter.userInv2 $prevHeap@@48 $Heap@@53 this@@76)  (and true (_module.IncreasingCounter.localUserInv2 $prevHeap@@48 $Heap@@53 this@@76)))))
 :qid |_10SequenceInvariantdfy.434:22|
 :skolemid |1609|
 :pattern ( (_module.IncreasingCounter.userInv2 $prevHeap@@48 $Heap@@53 this@@76) ($IsGoodHeap $Heap@@53))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@49 T@U) ($Heap@@54 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@49 $Heap@@54 this@@77) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@49) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@49 $Heap@@54)) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.ConstantInteger) ($IsAlloc refType this@@77 Tclass._module.ConstantInteger $prevHeap@@49)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@49 $Heap@@54 this@@77)) (= (_module.ConstantInteger.userInv2 $prevHeap@@49 $Heap@@54 this@@77)  (and true (_module.ConstantInteger.localUserInv2 $prevHeap@@49 $Heap@@54 this@@77)))))
 :qid |_10SequenceInvariantdfy.522:22|
 :skolemid |2031|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@49 $Heap@@54 this@@77) ($IsGoodHeap $Heap@@54))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@50 T@U) ($Heap@@55 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@50 $Heap@@55 this@@78) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@50) ($IsGoodHeap $Heap@@55)) ($HeapSucc $prevHeap@@50 $Heap@@55)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@78 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@50)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@50 $Heap@@55 this@@78)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@50 $Heap@@55 this@@78)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@50 $Heap@@55 this@@78)))))
 :qid |_10SequenceInvariantdfy.571:22|
 :skolemid |2244|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@50 $Heap@@55 this@@78) ($IsGoodHeap $Heap@@55))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@51 T@U) ($Heap@@56 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@51 $Heap@@56 this@@79) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@51) ($IsGoodHeap $Heap@@56)) ($HeapSucc $prevHeap@@51 $Heap@@56)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.OwnedObject) ($IsAlloc refType this@@79 Tclass._module.OwnedObject $prevHeap@@51)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@51 $Heap@@56 this@@79)) (= (_module.OwnedObject.localInv2 $prevHeap@@51 $Heap@@56 this@@79)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@51 $Heap@@56 this@@79)))))
 :qid |_10SequenceInvariantdfy.334:22|
 :skolemid |1486|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@51 $Heap@@56 this@@79) ($IsGoodHeap $Heap@@56))
))))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@80 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@80 null)) (not true)) ($Is refType this@@80 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@48 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (or (= $o@@48 this@@80) (= $o@@48 (_module.Object.universe this@@80)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@48) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@48) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1108|
)) (= (_module.Object.baseFieldsInv $h0@@22 this@@80) (_module.Object.baseFieldsInv $h1@@22 this@@80))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1109|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.baseFieldsInv $h1@@22 this@@80))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@81 null)) (not true)) ($Is refType this@@81 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@49 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (or (= $o@@49 this@@81) (= $o@@49 (_module.Object.universe this@@81)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@49) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@49) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1187|
)) (= (_module.Thread.baseFieldsInv $h0@@23 this@@81) (_module.Thread.baseFieldsInv $h1@@23 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1188|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Thread.baseFieldsInv $h1@@23 this@@81))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@82 null)) (not true)) ($Is refType this@@82 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@50 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (or (= $o@@50 this@@82) (= $o@@50 (_module.Object.universe this@@82)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@50) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@50) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@24 this@@82) (_module.OwnedObject.baseFieldsInv $h1@@24 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.OwnedObject.baseFieldsInv $h1@@24 this@@82))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@83 null)) (not true)) ($Is refType this@@83 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@51 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (or (= $o@@51 this@@83) (= $o@@51 (_module.Object.universe this@@83)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@51) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@51) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |1529|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@25 this@@83) (_module.OwnedObject.baseUserFieldsInv $h1@@25 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1530|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.OwnedObject.baseUserFieldsInv $h1@@25 this@@83))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@84 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@84 null)) (not true)) ($Is refType this@@84 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@52 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@52 null)) (not true)) (or (= $o@@52 this@@84) (= $o@@52 (_module.Object.universe this@@84)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@52) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@52) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1562|
)) (= (_module.IncreasingCounter.baseUserFieldsInv $h0@@26 this@@84) (_module.IncreasingCounter.baseUserFieldsInv $h1@@26 this@@84))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1563|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.IncreasingCounter.baseUserFieldsInv $h1@@26 this@@84))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@85 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@85 null)) (not true)) ($Is refType this@@85 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@53 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (or (= $o@@53 this@@85) (= $o@@53 (_module.Object.universe this@@85)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@53) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@53) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1984|
)) (= (_module.ConstantInteger.baseUserFieldsInv $h0@@27 this@@85) (_module.ConstantInteger.baseUserFieldsInv $h1@@27 this@@85))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1985|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.ConstantInteger.baseUserFieldsInv $h1@@27 this@@85))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@86 null)) (not true)) ($Is refType this@@86 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@54 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (or (= $o@@54 this@@86) (= $o@@54 (_module.Object.universe this@@86)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@54) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@54) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |2197|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h0@@28 this@@86) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h1@@28 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2198|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserFieldsInv $h1@@28 this@@86))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@87 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@57 this@@87) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.Object) ($IsAlloc refType this@@87 Tclass._module.Object $Heap@@57)))))) (_module.Object.triggerAxioms $Heap@@57 this@@87))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1064|
 :pattern ( (_module.Object.triggerAxioms $Heap@@57 this@@87))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@88 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@58 this@@88) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@88 Tclass._module.IncreasingCounter $Heap@@58)))))) (=> (_module.IncreasingCounter.userInv $Heap@@58 this@@88) (_module.IncreasingCounter.localUserInv $Heap@@58 this@@88)))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1592|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@58 this@@88))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@59 T@U) (this@@89 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@59 this@@89) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@59) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.ConstantInteger) ($IsAlloc refType this@@89 Tclass._module.ConstantInteger $Heap@@59)))))) (=> (_module.ConstantInteger.userInv $Heap@@59 this@@89) (_module.ConstantInteger.localUserInv $Heap@@59 this@@89)))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2014|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@59 this@@89))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@60 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@60 this@@90) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@60) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@90 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@60)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@60 this@@90) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@60 this@@90)))
 :qid |_10SequenceInvariantdfy.563:19|
 :skolemid |2227|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@60 this@@90))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@61 T@U) (this@@91 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@61 this@@91) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@61) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.OwnedObject) ($IsAlloc refType this@@91 Tclass._module.OwnedObject $Heap@@61)))))) (=> (_module.OwnedObject.userInv $Heap@@61 this@@91) (_module.OwnedObject.localUserInv $Heap@@61 this@@91)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1549|
 :pattern ( (_module.OwnedObject.userInv $Heap@@61 this@@91))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@62 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@62 this@@92) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@62) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.Thread) ($IsAlloc refType this@@92 Tclass._module.Thread $Heap@@62)))))) (=> (_module.Thread.localInv $Heap@@62 this@@92) (_module.Object.objectGlobalBaseInv $Heap@@62 this@@92)))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1203|
 :pattern ( (_module.Thread.localInv $Heap@@62 this@@92))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@63 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@63 this@@93) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@63) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.OwnedObject) ($IsAlloc refType this@@93 Tclass._module.OwnedObject $Heap@@63)))))) (=> (_module.OwnedObject.localInv $Heap@@63 this@@93) (_module.Object.objectGlobalBaseInv $Heap@@63 this@@93)))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1458|
 :pattern ( (_module.OwnedObject.localInv $Heap@@63 this@@93))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@64 T@U) (this@@94 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@64 this@@94) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@64) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.Object) ($IsAlloc refType this@@94 Tclass._module.Object $Heap@@64)))))) (=> (_module.Object.localInv $Heap@@64 this@@94) (_module.Object.objectGlobalBaseInv $Heap@@64 this@@94)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1116|
 :pattern ( (_module.Object.localInv $Heap@@64 this@@94))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@65 T@U) (this@@95 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@65 this@@95) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@65) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.Thread) ($IsAlloc refType this@@95 Tclass._module.Thread $Heap@@65)))))) (=> (_module.Thread.inv $Heap@@65 this@@95) (_module.Thread.localInv $Heap@@65 this@@95)))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1215|
 :pattern ( (_module.Thread.inv $Heap@@65 this@@95))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@66 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@66 this@@96) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@66) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.OwnedObject) ($IsAlloc refType this@@96 Tclass._module.OwnedObject $Heap@@66)))))) (=> (_module.OwnedObject.inv $Heap@@66 this@@96) (_module.OwnedObject.localInv $Heap@@66 this@@96)))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1471|
 :pattern ( (_module.OwnedObject.inv $Heap@@66 this@@96))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@67 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@67 this@@97) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@67) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.Object) ($IsAlloc refType this@@97 Tclass._module.Object $Heap@@67)))))) (=> (_module.Object.inv $Heap@@67 this@@97) (_module.Object.localInv $Heap@@67 this@@97)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1126|
 :pattern ( (_module.Object.inv $Heap@@67 this@@97))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@52 T@U) ($Heap@@68 T@U) (this@@98 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@52 $Heap@@68 this@@98) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@52) ($IsGoodHeap $Heap@@68)) ($HeapSucc $prevHeap@@52 $Heap@@68)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.OwnedObject) ($IsAlloc refType this@@98 Tclass._module.OwnedObject $prevHeap@@52)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@52 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@68 this@@98) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@52 $Heap@@68 this@@98)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@52 $Heap@@68 this@@98)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@52 this@@98) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@68 this@@98) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@68 this@@98)))))
 :qid |_10SequenceInvariantdfy.312:22|
 :skolemid |1438|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@52 $Heap@@68 this@@98) ($IsGoodHeap $Heap@@68))
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
(assert (forall (($h@@26 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@55 null)) (not true)) ($Is refType $o@@55 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.OwnedObject.nonvolatileVersion)) TInt $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1425|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@99 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@99 null)) (not true)) ($Is refType this@@99 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@56 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (= $o@@56 this@@99)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@56) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@56) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1062|
)) (= (_module.Object.triggerAxioms $h0@@29 this@@99) (_module.Object.triggerAxioms $h1@@29 this@@99))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1063|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.Object.triggerAxioms $h1@@29 this@@99))
)))
(assert (forall (($h@@27 T@U) ($o@@57 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@57 null)) (not true)) (= (dtype $o@@57) Tclass._module.IncreasingCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@57) _module.IncreasingCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1560|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@57) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@28 T@U) ($o@@58 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@58 null)) (not true)) (= (dtype $o@@58) Tclass._module.ConstantInteger?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@58) _module.ConstantInteger.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1982|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@58) _module.ConstantInteger.value)))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@100 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@100 null)) (not true)) ($Is refType this@@100 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@59 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (or (= $o@@59 this@@100) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 this@@100) _module.Universe.content)) ($Box refType $o@@59)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@59) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@59) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |608|
)) (= (_module.Universe.globalBaseInv $h0@@30 this@@100) (_module.Universe.globalBaseInv $h1@@30 this@@100))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |609|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Universe.globalBaseInv $h1@@30 this@@100))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@53 T@U) ($Heap@@69 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@53 $Heap@@69 this@@101) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@53) ($IsGoodHeap $Heap@@69)) ($HeapSucc $prevHeap@@53 $Heap@@69)) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.OwnedObject) ($IsAlloc refType this@@101 Tclass._module.OwnedObject $prevHeap@@53)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 this@@101) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 this@@101) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@53 $Heap@@69 this@@101)))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@53 $Heap@@69 this@@101)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 this@@101) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 this@@101) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@53 $Heap@@69 this@@101)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@53 this@@101) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@69 this@@101) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_10SequenceInvariantdfy.338:22|
 :skolemid |1494|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@53 $Heap@@69 this@@101) ($IsGoodHeap $Heap@@69))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@54 T@U) ($Heap@@70 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@54 $Heap@@70 this@@102) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@54) ($IsGoodHeap $Heap@@70)) ($HeapSucc $prevHeap@@54 $Heap@@70)) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@102 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@54)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@54 $Heap@@70 this@@102)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@54 this@@102) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@70 this@@102) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@54 this@@102) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@70 this@@102) _module.ClaimIncreasingCounterGreaterThanConstant.constant))))))
 :qid |_10SequenceInvariantdfy.556:22|
 :skolemid |2215|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@54 $Heap@@70 this@@102) ($IsGoodHeap $Heap@@70))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@55 T@U) ($Heap@@71 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@55 $Heap@@71 this@@103) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@55) ($IsGoodHeap $Heap@@71)) ($HeapSucc $prevHeap@@55 $Heap@@71)) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@103 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@55)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@55 $Heap@@71 this@@103)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@55 this@@103) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 this@@103) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@55 this@@103) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@71 this@@103) _module.ClaimIncreasingCounterGreaterThanConstant.constant))))))
 :qid |_10SequenceInvariantdfy.567:22|
 :skolemid |2237|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@55 $Heap@@71 this@@103) ($IsGoodHeap $Heap@@71))
))))
(assert (forall (($h@@29 T@U) ($o@@60 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@60 null)) (not true)) ($Is refType $o@@60 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@60) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@60) _module.OwnedObject.owner)) Tclass._module.Object $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@60) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@104 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@104 null)) (not true)) (and ($Is refType this@@104 Tclass._module.Universe) ($IsAlloc refType this@@104 Tclass._module.Universe $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@61 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@61) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@61) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.Universe.globalInv $h0@@31 this@@104) (_module.Universe.globalInv $h1@@31 this@@104))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Universe.globalInv $h1@@31 this@@104))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@105 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@105 null)) (not true)) (and ($Is refType this@@105 Tclass._module.Object) ($IsAlloc refType this@@105 Tclass._module.Object $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@62 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@62) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@62) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |1042|
)) (= (_module.Object.objectGlobalBaseInv $h0@@32 this@@105) (_module.Object.objectGlobalBaseInv $h1@@32 this@@105))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1043|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Object.objectGlobalBaseInv $h1@@32 this@@105))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@106 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.Object) ($IsAlloc refType this@@106 Tclass._module.Object $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@63 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@63) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@63) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1049|
)) (= (_module.Object.objectGlobalInv $h0@@33 this@@106) (_module.Object.objectGlobalInv $h1@@33 this@@106))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1050|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.Object.objectGlobalInv $h1@@33 this@@106))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@107 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@107 null)) (not true)) (and ($Is refType this@@107 Tclass._module.Object) ($IsAlloc refType this@@107 Tclass._module.Object $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@64 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@64) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@64) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1114|
)) (= (_module.Object.localInv $h0@@34 this@@107) (_module.Object.localInv $h1@@34 this@@107))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1115|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Object.localInv $h1@@34 this@@107))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@108 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.Object) ($IsAlloc refType this@@108 Tclass._module.Object $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@65 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@65) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@65) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@65) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1124|
)) (= (_module.Object.inv $h0@@35 this@@108) (_module.Object.inv $h1@@35 this@@108))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Object.inv $h1@@35 this@@108))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@109 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.Thread) ($IsAlloc refType this@@109 Tclass._module.Thread $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@66 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@66) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@66) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@66) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1201|
)) (= (_module.Thread.localInv $h0@@36 this@@109) (_module.Thread.localInv $h1@@36 this@@109))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1202|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.Thread.localInv $h1@@36 this@@109))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@110 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.Thread) ($IsAlloc refType this@@110 Tclass._module.Thread $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@67 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@67) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@67) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@67) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1213|
)) (= (_module.Thread.inv $h0@@37 this@@110) (_module.Thread.inv $h1@@37 this@@110))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1214|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.Thread.inv $h1@@37 this@@110))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@111 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.OwnedObject) ($IsAlloc refType this@@111 Tclass._module.OwnedObject $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@68 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@68 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@68) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@68) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@68) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1456|
)) (= (_module.OwnedObject.localInv $h0@@38 this@@111) (_module.OwnedObject.localInv $h1@@38 this@@111))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1457|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.OwnedObject.localInv $h1@@38 this@@111))
)))
(assert (forall (($h0@@39 T@U) ($h1@@39 T@U) (this@@112 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.OwnedObject) ($IsAlloc refType this@@112 Tclass._module.OwnedObject $h0@@39)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@69 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@69) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@69) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@69) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.OwnedObject.inv $h0@@39 this@@112) (_module.OwnedObject.inv $h1@@39 this@@112))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.OwnedObject.inv $h1@@39 this@@112))
)))
(assert (forall (($h0@@40 T@U) ($h1@@40 T@U) (this@@113 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.OwnedObject) ($IsAlloc refType this@@113 Tclass._module.OwnedObject $h0@@40)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@70 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@70) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@70) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@70) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.localUserInv $h0@@40 this@@113) (_module.OwnedObject.localUserInv $h1@@40 this@@113))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.OwnedObject.localUserInv $h1@@40 this@@113))
)))
(assert (forall (($h0@@41 T@U) ($h1@@41 T@U) (this@@114 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@41) ($IsGoodHeap $h1@@41)) (and (or (not (= this@@114 null)) (not true)) (and ($Is refType this@@114 Tclass._module.OwnedObject) ($IsAlloc refType this@@114 Tclass._module.OwnedObject $h0@@41)))) (and ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41))) (=> (forall (($o@@71 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@71) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@71) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@41 $o@@71) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.OwnedObject.userInv $h0@@41 this@@114) (_module.OwnedObject.userInv $h1@@41 this@@114))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41) (_module.OwnedObject.userInv $h1@@41 this@@114))
)))
(assert (forall (($h0@@42 T@U) ($h1@@42 T@U) (this@@115 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@42) ($IsGoodHeap $h1@@42)) (and (or (not (= this@@115 null)) (not true)) (and ($Is refType this@@115 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@115 Tclass._module.IncreasingCounter $h0@@42)))) (and ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42))) (=> (forall (($o@@72 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@72) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@42 $o@@72) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1583|
)) (= (_module.IncreasingCounter.localUserInv $h0@@42 this@@115) (_module.IncreasingCounter.localUserInv $h1@@42 this@@115))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1584|
 :pattern ( ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42) (_module.IncreasingCounter.localUserInv $h1@@42 this@@115))
)))
(assert (forall (($h0@@43 T@U) ($h1@@43 T@U) (this@@116 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@43) ($IsGoodHeap $h1@@43)) (and (or (not (= this@@116 null)) (not true)) (and ($Is refType this@@116 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@116 Tclass._module.IncreasingCounter $h0@@43)))) (and ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43))) (=> (forall (($o@@73 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@73) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@43 $o@@73) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1590|
)) (= (_module.IncreasingCounter.userInv $h0@@43 this@@116) (_module.IncreasingCounter.userInv $h1@@43 this@@116))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1591|
 :pattern ( ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43) (_module.IncreasingCounter.userInv $h1@@43 this@@116))
)))
(assert (forall (($h0@@44 T@U) ($h1@@44 T@U) (this@@117 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@44) ($IsGoodHeap $h1@@44)) (and (or (not (= this@@117 null)) (not true)) (and ($Is refType this@@117 Tclass._module.ConstantInteger) ($IsAlloc refType this@@117 Tclass._module.ConstantInteger $h0@@44)))) (and ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44))) (=> (forall (($o@@74 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@74) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@44 $o@@74) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |2005|
)) (= (_module.ConstantInteger.localUserInv $h0@@44 this@@117) (_module.ConstantInteger.localUserInv $h1@@44 this@@117))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2006|
 :pattern ( ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44) (_module.ConstantInteger.localUserInv $h1@@44 this@@117))
)))
(assert (forall (($h0@@45 T@U) ($h1@@45 T@U) (this@@118 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@45) ($IsGoodHeap $h1@@45)) (and (or (not (= this@@118 null)) (not true)) (and ($Is refType this@@118 Tclass._module.ConstantInteger) ($IsAlloc refType this@@118 Tclass._module.ConstantInteger $h0@@45)))) (and ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45))) (=> (forall (($o@@75 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@75) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@75) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@45 $o@@75) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |2012|
)) (= (_module.ConstantInteger.userInv $h0@@45 this@@118) (_module.ConstantInteger.userInv $h1@@45 this@@118))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2013|
 :pattern ( ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45) (_module.ConstantInteger.userInv $h1@@45 this@@118))
)))
(assert (forall (($h0@@46 T@U) ($h1@@46 T@U) (this@@119 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@46) ($IsGoodHeap $h1@@46)) (and (or (not (= this@@119 null)) (not true)) (and ($Is refType this@@119 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@119 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@46)))) (and ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46))) (=> (forall (($o@@76 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@76) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@76) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@46 $o@@76) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |2218|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h0@@46 this@@119) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@46 this@@119))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2219|
 :pattern ( ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@46 this@@119))
)))
(assert (forall (($h0@@47 T@U) ($h1@@47 T@U) (this@@120 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@47) ($IsGoodHeap $h1@@47)) (and (or (not (= this@@120 null)) (not true)) (and ($Is refType this@@120 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@120 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@47)))) (and ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47))) (=> (forall (($o@@77 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@77) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@77) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@47 $o@@77) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |2225|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h0@@47 this@@120) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@47 this@@120))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2226|
 :pattern ( ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@47 this@@120))
)))
(assert (forall ((bx@@22 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@22 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@22)) bx@@22) ($Is SetType ($Unbox SetType bx@@22) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@22 (TSet t@@5)))
)))
(assert (forall (($o@@78 T@U) ) (!  (=> ($Is refType $o@@78 Tclass._module.Thread?) ($Is refType $o@@78 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2405|
 :pattern ( ($Is refType $o@@78 Tclass._module.Thread?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.Thread?) ($IsBox bx@@23 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2403|
 :pattern ( ($IsBox bx@@23 Tclass._module.Thread?))
)))
(assert (forall (($o@@79 T@U) ) (!  (=> ($Is refType $o@@79 Tclass._module.OwnedObject?) ($Is refType $o@@79 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($Is refType $o@@79 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass._module.OwnedObject?) ($IsBox bx@@24 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2407|
 :pattern ( ($IsBox bx@@24 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@80 T@U) ) (!  (=> ($Is refType $o@@80 Tclass._module.IncreasingCounter?) ($Is refType $o@@80 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2413|
 :pattern ( ($Is refType $o@@80 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass._module.IncreasingCounter?) ($IsBox bx@@25 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2411|
 :pattern ( ($IsBox bx@@25 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@81 T@U) ) (!  (=> ($Is refType $o@@81 Tclass._module.ConstantInteger?) ($Is refType $o@@81 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2421|
 :pattern ( ($Is refType $o@@81 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.ConstantInteger?) ($IsBox bx@@26 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2419|
 :pattern ( ($IsBox bx@@26 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@82 T@U) ) (!  (=> ($Is refType $o@@82 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($Is refType $o@@82 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2425|
 :pattern ( ($Is refType $o@@82 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($IsBox bx@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2423|
 :pattern ( ($IsBox bx@@27 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter) Tagclass._module.IncreasingCounter))
(assert (= (TagFamily Tclass._module.IncreasingCounter) tytagFamily$IncreasingCounter))
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
(assert (= (Tag Tclass._module.ConstantInteger?) Tagclass._module.ConstantInteger?))
(assert (= (TagFamily Tclass._module.ConstantInteger?) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (forall (($h@@30 T@U) ($o@@83 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@83 null)) (not true)) ($Is refType $o@@83 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@83) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1426|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@83) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@84 T@U) ) (! (= ($Is refType $o@@84 Tclass._module.Universe?)  (or (= $o@@84 null) (implements$_module.Universe (dtype $o@@84))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType $o@@84 Tclass._module.Universe?))
)))
(assert (forall (($o@@85 T@U) ) (! (= ($Is refType $o@@85 Tclass._module.Object?)  (or (= $o@@85 null) (implements$_module.Object (dtype $o@@85))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Is refType $o@@85 Tclass._module.Object?))
)))
(assert (forall (($o@@86 T@U) ) (! (= ($Is refType $o@@86 Tclass._module.OwnedObject?)  (or (= $o@@86 null) (implements$_module.OwnedObject (dtype $o@@86))))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( ($Is refType $o@@86 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@31 T@U) ($o@@87 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@87 null)) (not true)) ($Is refType $o@@87 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@87) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@87) _module.Universe.content)) (TSet Tclass._module.Object) $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |607|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@87) _module.Universe.content)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@72 T@U) (this@@121 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@72 this@@121) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@72) (and (or (not (= this@@121 null)) (not true)) (and ($Is refType this@@121 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@121 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@72)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@72 this@@121)  (and true (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@72 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@72 this@@121) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@72 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@72 this@@121) _module.ClaimIncreasingCounterGreaterThanConstant.constant))) _module.ConstantInteger.value)))))))
 :qid |_10SequenceInvariantdfy.560:19|
 :skolemid |2222|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@72 this@@121) ($IsGoodHeap $Heap@@72))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@56 T@U) ($Heap@@73 T@U) (this@@122 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@56 $Heap@@73 this@@122) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@56) ($IsGoodHeap $Heap@@73)) ($HeapSucc $prevHeap@@56 $Heap@@73)) (and (or (not (= this@@122 null)) (not true)) (and ($Is refType this@@122 Tclass._module.Universe) ($IsAlloc refType this@@122 Tclass._module.Universe $prevHeap@@56)))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@122) _module.Universe.content)) ($Box refType |o#0@@3|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@73 this@@122) _module.Universe.content)) ($Box refType |o#0@@3|)) (|_module.Object.inv2#canCall| $prevHeap@@56 $Heap@@73 |o#0@@3|))))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |648|
 :pattern ( (_module.Object.inv2 $prevHeap@@56 $Heap@@73 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@73 this@@122) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@122) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@56 $Heap@@73 this@@122) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@122) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@73 this@@122) _module.Universe.content)) ($Box refType |o#0@@4|)) (_module.Object.inv2 $prevHeap@@56 $Heap@@73 |o#0@@4|)))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |647|
 :pattern ( (_module.Object.inv2 $prevHeap@@56 $Heap@@73 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@73 this@@122) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@122) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))))
 :qid |_10SequenceInvariantdfy.31:22|
 :skolemid |649|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@56 $Heap@@73 this@@122) ($IsGoodHeap $Heap@@73))
))))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@57 T@U) ($Heap@@74 T@U) (this@@123 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@57 $Heap@@74 this@@123) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@57) ($IsGoodHeap $Heap@@74)) ($HeapSucc $prevHeap@@57 $Heap@@74)) (and (or (not (= this@@123 null)) (not true)) (and ($Is refType this@@123 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@123 Tclass._module.IncreasingCounter $prevHeap@@57)))))) (=> (_module.IncreasingCounter.userInv2 $prevHeap@@57 $Heap@@74 this@@123) (_module.IncreasingCounter.localUserInv2 $prevHeap@@57 $Heap@@74 this@@123)))
 :qid |_10SequenceInvariantdfy.434:22|
 :skolemid |1607|
 :pattern ( (_module.IncreasingCounter.userInv2 $prevHeap@@57 $Heap@@74 this@@123))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@58 T@U) ($Heap@@75 T@U) (this@@124 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@58 $Heap@@75 this@@124) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@58) ($IsGoodHeap $Heap@@75)) ($HeapSucc $prevHeap@@58 $Heap@@75)) (and (or (not (= this@@124 null)) (not true)) (and ($Is refType this@@124 Tclass._module.ConstantInteger) ($IsAlloc refType this@@124 Tclass._module.ConstantInteger $prevHeap@@58)))))) (=> (_module.ConstantInteger.userInv2 $prevHeap@@58 $Heap@@75 this@@124) (_module.ConstantInteger.localUserInv2 $prevHeap@@58 $Heap@@75 this@@124)))
 :qid |_10SequenceInvariantdfy.522:22|
 :skolemid |2029|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@58 $Heap@@75 this@@124))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@59 T@U) ($Heap@@76 T@U) (this@@125 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@59 $Heap@@76 this@@125) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@59) ($IsGoodHeap $Heap@@76)) ($HeapSucc $prevHeap@@59 $Heap@@76)) (and (or (not (= this@@125 null)) (not true)) (and ($Is refType this@@125 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@125 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@59)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@59 $Heap@@76 this@@125) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@59 $Heap@@76 this@@125)))
 :qid |_10SequenceInvariantdfy.571:22|
 :skolemid |2242|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@59 $Heap@@76 this@@125))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@60 T@U) ($Heap@@77 T@U) (this@@126 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@60 $Heap@@77 this@@126) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@60) ($IsGoodHeap $Heap@@77)) ($HeapSucc $prevHeap@@60 $Heap@@77)) (and (or (not (= this@@126 null)) (not true)) (and ($Is refType this@@126 Tclass._module.OwnedObject) ($IsAlloc refType this@@126 Tclass._module.OwnedObject $prevHeap@@60)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@60 $Heap@@77 this@@126) (_module.OwnedObject.localUserInv2 $prevHeap@@60 $Heap@@77 this@@126)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |1553|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@60 $Heap@@77 this@@126))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@78 T@U) (this@@127 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@78 this@@127) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@78) (and (or (not (= this@@127 null)) (not true)) (and ($Is refType this@@127 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@127 Tclass._module.IncreasingCounter $Heap@@78)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@78 this@@127)) (= (_module.IncreasingCounter.userInv $Heap@@78 this@@127)  (and true (_module.IncreasingCounter.localUserInv $Heap@@78 this@@127)))))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1594|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@78 this@@127) ($IsGoodHeap $Heap@@78))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@79 T@U) (this@@128 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@79 this@@128) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@79) (and (or (not (= this@@128 null)) (not true)) (and ($Is refType this@@128 Tclass._module.ConstantInteger) ($IsAlloc refType this@@128 Tclass._module.ConstantInteger $Heap@@79)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv#canCall| $Heap@@79 this@@128)) (= (_module.ConstantInteger.userInv $Heap@@79 this@@128)  (and true (_module.ConstantInteger.localUserInv $Heap@@79 this@@128)))))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2016|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@79 this@@128) ($IsGoodHeap $Heap@@79))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@80 T@U) (this@@129 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@80 this@@129) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@80) (and (or (not (= this@@129 null)) (not true)) (and ($Is refType this@@129 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@129 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@80)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@80 this@@129)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@80 this@@129)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@80 this@@129)))))
 :qid |_10SequenceInvariantdfy.563:19|
 :skolemid |2229|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@80 this@@129) ($IsGoodHeap $Heap@@80))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@81 T@U) (this@@130 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@81 this@@130) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@81) (and (or (not (= this@@130 null)) (not true)) (and ($Is refType this@@130 Tclass._module.Thread) ($IsAlloc refType this@@130 Tclass._module.Thread $Heap@@81)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@81 this@@130)) (= (_module.Thread.localInv $Heap@@81 this@@130)  (and true (_module.Object.objectGlobalBaseInv $Heap@@81 this@@130)))))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1205|
 :pattern ( (_module.Thread.localInv $Heap@@81 this@@130) ($IsGoodHeap $Heap@@81))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@82 T@U) (this@@131 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@82 this@@131) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@82) (and (or (not (= this@@131 null)) (not true)) (and ($Is refType this@@131 Tclass._module.Thread) ($IsAlloc refType this@@131 Tclass._module.Thread $Heap@@82)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@82 this@@131)) (= (_module.Thread.inv $Heap@@82 this@@131)  (and true (_module.Thread.localInv $Heap@@82 this@@131)))))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1217|
 :pattern ( (_module.Thread.inv $Heap@@82 this@@131) ($IsGoodHeap $Heap@@82))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@83 T@U) (this@@132 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@83 this@@132) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@83) (and (or (not (= this@@132 null)) (not true)) (and ($Is refType this@@132 Tclass._module.Object) ($IsAlloc refType this@@132 Tclass._module.Object $Heap@@83)))))) (= (_module.Object.triggerAxioms $Heap@@83 this@@132)  (and (or ($Is refType this@@132 Tclass._module.OwnedObject) ($Is refType this@@132 Tclass._module.Thread)) (not (and ($Is refType this@@132 Tclass._module.OwnedObject) ($Is refType this@@132 Tclass._module.Thread))))))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1066|
 :pattern ( (_module.Object.triggerAxioms $Heap@@83 this@@132) ($IsGoodHeap $Heap@@83))
))))
(assert (forall (($h@@32 T@U) ($o@@88 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@88 null)) (not true)) ($Is refType $o@@88 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@88) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@88) _module.Universe.content)))
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
(declare-fun $Heap@@84 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0| () T@U)
(declare-fun |counter#0| () T@U)
(declare-fun |constant#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.ClaimIncreasingCounterGreaterThanConstant.__ctor)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#57| null $Heap@@84 alloc |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@84) (=> (and (|_module.Universe.globalInv#canCall| $Heap@@84 |universe#0|) (_module.Universe.globalInv $Heap@@84 |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 |universe#0|) _module.Universe.content)) ($Box refType |running#0|)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 |universe#0|) _module.Universe.content)) ($Box refType |constant#0|)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |counter#0| null)) (not true))) (=> (or (not (= |counter#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |constant#0| null)) (not true))) (=> (or (not (= |constant#0| null)) (not true)) (=> (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 |counter#0|) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 |constant#0|) _module.ConstantInteger.value)))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@89 T@U) ) (!  (=> (and (or (not (= $o@@89 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 $o@@89) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@89) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@84 $o@@89)) (= $o@@89 |universe#0|)))
 :qid |_10SequenceInvariantdfy.578:3|
 :skolemid |2376|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@89))
)) ($HeapSucc $Heap@@84 $Heap@0))) (=> (and (and (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@0))) ($IsAllocBox ($Box refType this@0) Tclass._module.Object? $Heap@0)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@0 this@0) (_module.Object.objectGlobalInv $Heap@0 this@0))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@84)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@84) (=> (and (|_module.Universe.globalInv2#canCall| $Heap@@84 $Heap@0 |universe#0|) (_module.Universe.globalInv2 $Heap@@84 $Heap@0 |universe#0|)) (=> (and (and (= (_module.Object.universe this@0) |universe#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.OwnedObject.owner)) |running#0|)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) |counter#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) |constant#0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@84))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@84) ($IsHeapAnchor $Heap@@84)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@84))) (=> (and (and (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@84)) (and ($Is refType |counter#0| Tclass._module.IncreasingCounter) ($IsAlloc refType |counter#0| Tclass._module.IncreasingCounter $Heap@@84))) (and (and ($Is refType |constant#0| Tclass._module.ConstantInteger) ($IsAlloc refType |constant#0| Tclass._module.ConstantInteger $Heap@@84)) (and (= 17 $FunctionContextHeight) (= (ControlFlow 0 13) 2)))) anon0_correct))))
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
