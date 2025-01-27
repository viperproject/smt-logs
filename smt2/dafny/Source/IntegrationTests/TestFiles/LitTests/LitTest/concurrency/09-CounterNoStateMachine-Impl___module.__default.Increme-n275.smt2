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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.ConstantInteger () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun Tagclass._module.Object? () T@U)
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
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$ConstantInteger () T@U)
(declare-fun tytagFamily$ClaimIncreasingCounterGreaterThanConstant () T@U)
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
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.counter () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.constant () T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
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
(declare-fun _module.IncreasingCounter.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.baseUserInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Integer.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Integer.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.userInv2 (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#14| (T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Integer.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Integer.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Integer.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
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
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.IncreasingCounter Tagclass._module.Integer Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.ConstantInteger Tagclass._module.ClaimIncreasingCounterGreaterThanConstant Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? class._module.IncreasingCounter? Tagclass._module.IncreasingCounter? class._module.Integer? Tagclass._module.Integer? class._module.ConstantInteger? Tagclass._module.ConstantInteger? class._module.ClaimIncreasingCounterGreaterThanConstant? Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? tytagFamily$Universe tytagFamily$Thread tytagFamily$IncreasingCounter tytagFamily$Integer tytagFamily$Object tytagFamily$OwnedObject tytagFamily$ConstantInteger tytagFamily$ClaimIncreasingCounterGreaterThanConstant field$content field$owner field$value field$nonvolatileVersion field$counter field$constant)
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
 :qid |_09CounterNoStateMachinedfy.388:22|
 :skolemid |1757|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor SetType) 7))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $h0)))) (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@0 $h0 this@@0 |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |709|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h0 this@@0 |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |710|
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| $Heap@@0 this@@1) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@1 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@0)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@0 this@@1)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@1)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))))
 :qid |_09CounterNoStateMachinedfy.635:19|
 :skolemid |2946|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
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
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1698|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@2) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1699|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@2))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1814|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@3) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1815|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@3))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |2116|
)) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@2 this@@4) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2117|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@2 this@@4))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Integer))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |2386|
)) (= (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@5) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2387|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@5))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |2656|
)) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h0@@4 this@@6) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2657|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@6))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= $o@@5 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@5) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |2928|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h0@@5 this@@7) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2929|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@7))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.IncreasingCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Integer?))
(assert (implements$_module.OwnedObject Tclass._module.ConstantInteger?))
(assert (implements$_module.OwnedObject Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@8) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@8) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@8) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.Universe.content)) ($Box refType |o#0|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0|)))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |670|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.Universe.content)) ($Box refType |o#0|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@8)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@8) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.Universe.content)) ($Box refType |o#0@@0|))) (_module.Object.inv $Heap@@1 |o#0@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |669|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@8) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.39:19|
 :skolemid |671|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@8) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.Thread?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1389|
 :pattern ( ($Is refType $o@@6 Tclass._module.Thread?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.IncreasingCounter?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( ($Is refType $o@@7 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Integer?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |2382|
 :pattern ( ($Is refType $o@@8 Tclass._module.Integer?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.ConstantInteger?)  (or (= $o@@9 null) (= (dtype $o@@9) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |2652|
 :pattern ( ($Is refType $o@@9 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)  (or (= $o@@10 null) (= (dtype $o@@10) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2922|
 :pattern ( ($Is refType $o@@10 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@9 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe $h0@@6)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@7 $h0@@6 this@@9 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Universe.legalTransition $prevHeap@@7 $h0@@6 this@@9 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@7 $h1@@6 this@@9 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.legalTransition $prevHeap@@7 $h1@@6 this@@9 |running#0@@0|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall (($h T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3194|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3206|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3210|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3214|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@4))
)))
(assert (forall ((bx@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3218|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@5))
)))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@10) ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2380|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@11) ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2650|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@12) ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@12))
 :qid |unknown.0:0|
 :skolemid |2920|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@12))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@13) ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@13))
 :qid |unknown.0:0|
 :skolemid |3192|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@13))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserInv#canCall| $Heap@@2 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@2 this@@10) (_module.IncreasingCounter.baseUserInv $Heap@@2 this@@10)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2135|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@10) ($Is refType this@@10 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@10) (_module.IncreasingCounter.baseUserInv $Heap@@2 this@@10) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@3 this@@11) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@11) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@11)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2142|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@11) ($Is refType this@@11 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@11) (_module.IncreasingCounter.localUserInv $Heap@@3 this@@11) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Integer.baseUserInv#canCall| $Heap@@4 this@@12) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Integer)))) (= (_module.OwnedObject.baseUserInv $Heap@@4 this@@12) (_module.Integer.baseUserInv $Heap@@4 this@@12)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2405|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@4 this@@12) ($Is refType this@@12 Tclass._module.Integer) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@4 this@@12) (_module.Integer.baseUserInv $Heap@@4 this@@12) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@5 this@@13) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Integer)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@13) (_module.Integer.localUserInv $Heap@@5 this@@13)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2412|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@13) ($Is refType this@@13 Tclass._module.Integer) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@13) (_module.Integer.localUserInv $Heap@@5 this@@13) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserInv#canCall| $Heap@@6 this@@14) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.baseUserInv $Heap@@6 this@@14) (_module.ConstantInteger.baseUserInv $Heap@@6 this@@14)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2675|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@6 this@@14) ($Is refType this@@14 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@6 this@@14) (_module.ConstantInteger.baseUserInv $Heap@@6 this@@14) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@7 this@@15) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv $Heap@@7 this@@15) (_module.ConstantInteger.localUserInv $Heap@@7 this@@15)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2682|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@15) ($Is refType this@@15 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@15) (_module.ConstantInteger.localUserInv $Heap@@7 this@@15) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@8 this@@16) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv $Heap@@8 this@@16) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@8 this@@16)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2954|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@16) ($Is refType this@@16 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@16) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@8 this@@16) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@9 this@@17) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@17) (_module.IncreasingCounter.userInv $Heap@@9 this@@17)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2149|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@17) ($Is refType this@@17 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@17) (_module.IncreasingCounter.userInv $Heap@@9 this@@17) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@10 this@@18) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Integer)))) (= (_module.OwnedObject.userInv $Heap@@10 this@@18) (_module.Integer.userInv $Heap@@10 this@@18)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2419|
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@18) ($Is refType this@@18 Tclass._module.Integer) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@18) (_module.Integer.userInv $Heap@@10 this@@18) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@11 this@@19) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv $Heap@@11 this@@19) (_module.ConstantInteger.userInv $Heap@@11 this@@19)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2689|
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@19) ($Is refType this@@19 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@19) (_module.ConstantInteger.userInv $Heap@@11 this@@19) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@12 this@@20) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv $Heap@@12 this@@20) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@12 this@@20)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2961|
 :pattern ( (_module.OwnedObject.userInv $Heap@@12 this@@20) ($Is refType this@@20 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.userInv $Heap@@12 this@@20) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@12 this@@20) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| $Heap@@13 this@@21) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.baseUserInv $Heap@@13 this@@21) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@13 this@@21)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2947|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@13 this@@21) ($Is refType this@@21 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@13 this@@21) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@13 this@@21) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@14 this@@22) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@14 this@@22) (_module.Thread.localInv $Heap@@14 this@@22)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1402|
 :pattern ( (_module.Object.localInv $Heap@@14 this@@22) ($Is refType this@@22 Tclass._module.Thread) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.localInv $Heap@@14 this@@22) (_module.Thread.localInv $Heap@@14 this@@22) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@15 this@@23) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@15 this@@23) (_module.OwnedObject.localInv $Heap@@15 this@@23)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1709|
 :pattern ( (_module.Object.localInv $Heap@@15 this@@23) ($Is refType this@@23 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.localInv $Heap@@15 this@@23) (_module.OwnedObject.localInv $Heap@@15 this@@23) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@16 this@@24) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@16 this@@24) (_module.Thread.inv $Heap@@16 this@@24)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1410|
 :pattern ( (_module.Object.inv $Heap@@16 this@@24) ($Is refType this@@24 Tclass._module.Thread) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.inv $Heap@@16 this@@24) (_module.Thread.inv $Heap@@16 this@@24) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@17 this@@25) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@17 this@@25) (_module.OwnedObject.inv $Heap@@17 this@@25)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1719|
 :pattern ( (_module.Object.inv $Heap@@17 this@@25) ($Is refType this@@25 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.Object.inv $Heap@@17 this@@25) (_module.OwnedObject.inv $Heap@@17 this@@25) ($IsGoodHeap $Heap@@17))
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
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Universe) ($IsAlloc refType this@@26 Tclass._module.Universe $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@13) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |677|
)) (= (_module.Universe.globalInv2 $prevHeap@@8 $h0@@7 this@@26) (_module.Universe.globalInv2 $prevHeap@@8 $h1@@7 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |678|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalInv2 $prevHeap@@8 $h1@@7 this@@26))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Universe) ($IsAlloc refType this@@27 Tclass._module.Universe $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@14 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@14) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |688|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h0@@8 this@@27) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h1@@8 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |689|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@9 $h1@@8 this@@27))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Object) ($IsAlloc refType this@@28 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@15 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@15) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1318|
)) (= (_module.Object.localInv2 $prevHeap@@10 $h0@@9 this@@28) (_module.Object.localInv2 $prevHeap@@10 $h1@@9 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1319|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.localInv2 $prevHeap@@10 $h1@@9 this@@28))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Object) ($IsAlloc refType this@@29 Tclass._module.Object $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@16) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1326|
)) (= (_module.Object.transitiveInv2 $prevHeap@@11 $h0@@10 this@@29) (_module.Object.transitiveInv2 $prevHeap@@11 $h1@@10 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1327|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.transitiveInv2 $prevHeap@@11 $h1@@10 this@@29))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Object) ($IsAlloc refType this@@30 Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@17 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@17) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@17) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.Object.inv2 $prevHeap@@12 $h0@@11 this@@30) (_module.Object.inv2 $prevHeap@@12 $h1@@11 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.inv2 $prevHeap@@12 $h1@@11 this@@30))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Thread) ($IsAlloc refType this@@31 Tclass._module.Thread $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@18 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@18) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@18) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1421|
)) (= (_module.Thread.localInv2 $prevHeap@@13 $h0@@12 this@@31) (_module.Thread.localInv2 $prevHeap@@13 $h1@@12 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1422|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.localInv2 $prevHeap@@13 $h1@@12 this@@31))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Thread) ($IsAlloc refType this@@32 Tclass._module.Thread $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@19 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@19) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@19) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1428|
)) (= (_module.Thread.transitiveInv2 $prevHeap@@14 $h0@@13 this@@32) (_module.Thread.transitiveInv2 $prevHeap@@14 $h1@@13 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1429|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Thread.transitiveInv2 $prevHeap@@14 $h1@@13 this@@32))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Thread) ($IsAlloc refType this@@33 Tclass._module.Thread $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@20 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@20) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@20) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1435|
)) (= (_module.Thread.inv2 $prevHeap@@15 $h0@@14 this@@33) (_module.Thread.inv2 $prevHeap@@15 $h1@@14 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1436|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Thread.inv2 $prevHeap@@15 $h1@@14 this@@33))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.OwnedObject) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@21 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@21) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@21) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1731|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@16 $h0@@15 this@@34) (_module.OwnedObject.localInv2 $prevHeap@@16 $h1@@15 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1732|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.localInv2 $prevHeap@@16 $h1@@15 this@@34))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@22 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@22) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@22) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1739|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h0@@16 this@@35) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h1@@16 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1740|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $h1@@16 this@@35))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@23 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@23) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@23) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1753|
)) (= (_module.OwnedObject.inv2 $prevHeap@@18 $h0@@17 this@@36) (_module.OwnedObject.inv2 $prevHeap@@18 $h1@@17 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1754|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.inv2 $prevHeap@@18 $h1@@17 this@@36))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.OwnedObject) ($IsAlloc refType this@@37 Tclass._module.OwnedObject $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@24 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@24) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@24) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1826|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h0@@18 this@@37) (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h1@@18 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1827|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedObject.localUserInv2 $prevHeap@@19 $h1@@18 this@@37))
)))
(assert (forall (($prevHeap@@20 T@U) ($h0@@19 T@U) ($h1@@19 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@25 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@25) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@25) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1834|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@20 $h0@@19 this@@38) (_module.OwnedObject.userInv2 $prevHeap@@20 $h1@@19 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1835|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.userInv2 $prevHeap@@20 $h1@@19 this@@38))
)))
(assert (forall (($prevHeap@@21 T@U) ($h0@@20 T@U) ($h1@@20 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@39 Tclass._module.IncreasingCounter $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@26 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@26) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@26) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |2152|
)) (= (_module.IncreasingCounter.localUserInv2 $prevHeap@@21 $h0@@20 this@@39) (_module.IncreasingCounter.localUserInv2 $prevHeap@@21 $h1@@20 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2153|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.IncreasingCounter.localUserInv2 $prevHeap@@21 $h1@@20 this@@39))
)))
(assert (forall (($prevHeap@@22 T@U) ($h0@@21 T@U) ($h1@@21 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@40 Tclass._module.IncreasingCounter $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@27 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@27) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@27) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |2159|
)) (= (_module.IncreasingCounter.userInv2 $prevHeap@@22 $h0@@21 this@@40) (_module.IncreasingCounter.userInv2 $prevHeap@@22 $h1@@21 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2160|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.IncreasingCounter.userInv2 $prevHeap@@22 $h1@@21 this@@40))
)))
(assert (forall (($prevHeap@@23 T@U) ($h0@@22 T@U) ($h1@@22 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Integer) ($IsAlloc refType this@@41 Tclass._module.Integer $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@28 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@28) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@28) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |2422|
)) (= (_module.Integer.localUserInv2 $prevHeap@@23 $h0@@22 this@@41) (_module.Integer.localUserInv2 $prevHeap@@23 $h1@@22 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2423|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Integer.localUserInv2 $prevHeap@@23 $h1@@22 this@@41))
)))
(assert (forall (($prevHeap@@24 T@U) ($h0@@23 T@U) ($h1@@23 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Integer) ($IsAlloc refType this@@42 Tclass._module.Integer $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@29 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@29) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@29) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |2429|
)) (= (_module.Integer.userInv2 $prevHeap@@24 $h0@@23 this@@42) (_module.Integer.userInv2 $prevHeap@@24 $h1@@23 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2430|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Integer.userInv2 $prevHeap@@24 $h1@@23 this@@42))
)))
(assert (forall (($prevHeap@@25 T@U) ($h0@@24 T@U) ($h1@@24 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.ConstantInteger) ($IsAlloc refType this@@43 Tclass._module.ConstantInteger $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@30 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@30) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@30) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |2692|
)) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@25 $h0@@24 this@@43) (_module.ConstantInteger.localUserInv2 $prevHeap@@25 $h1@@24 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2693|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.ConstantInteger.localUserInv2 $prevHeap@@25 $h1@@24 this@@43))
)))
(assert (forall (($prevHeap@@26 T@U) ($h0@@25 T@U) ($h1@@25 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.ConstantInteger) ($IsAlloc refType this@@44 Tclass._module.ConstantInteger $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@31 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@31) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@31) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |2699|
)) (= (_module.ConstantInteger.userInv2 $prevHeap@@26 $h0@@25 this@@44) (_module.ConstantInteger.userInv2 $prevHeap@@26 $h1@@25 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2700|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.ConstantInteger.userInv2 $prevHeap@@26 $h1@@25 this@@44))
)))
(assert (forall (($prevHeap@@27 T@U) ($h0@@26 T@U) ($h1@@26 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@45 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@32 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@32) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@32) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |2964|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@27 $h0@@26 this@@45) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@27 $h1@@26 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2965|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@27 $h1@@26 this@@45))
)))
(assert (forall (($prevHeap@@28 T@U) ($h0@@27 T@U) ($h1@@27 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@46 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@33 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@33) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@33) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |2971|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@28 $h0@@27 this@@46) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@28 $h1@@27 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2972|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@28 $h1@@27 this@@46))
)))
(assert (forall (($o@@34 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@34 Tclass._module.Universe? $h@@14)  (or (= $o@@34 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@34) alloc)))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc refType $o@@34 Tclass._module.Universe? $h@@14))
)))
(assert (forall (($o@@35 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@35 Tclass._module.Object? $h@@15)  (or (= $o@@35 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@35) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1248|
 :pattern ( ($IsAlloc refType $o@@35 Tclass._module.Object? $h@@15))
)))
(assert (forall (($o@@36 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@36 Tclass._module.Thread? $h@@16)  (or (= $o@@36 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@36) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1390|
 :pattern ( ($IsAlloc refType $o@@36 Tclass._module.Thread? $h@@16))
)))
(assert (forall (($o@@37 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@37 Tclass._module.OwnedObject? $h@@17)  (or (= $o@@37 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@37) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsAlloc refType $o@@37 Tclass._module.OwnedObject? $h@@17))
)))
(assert (forall (($o@@38 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@38 Tclass._module.IncreasingCounter? $h@@18)  (or (= $o@@38 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@38) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsAlloc refType $o@@38 Tclass._module.IncreasingCounter? $h@@18))
)))
(assert (forall (($o@@39 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@39 Tclass._module.Integer? $h@@19)  (or (= $o@@39 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@39) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2383|
 :pattern ( ($IsAlloc refType $o@@39 Tclass._module.Integer? $h@@19))
)))
(assert (forall (($o@@40 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@40 Tclass._module.ConstantInteger? $h@@20)  (or (= $o@@40 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@40) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2653|
 :pattern ( ($IsAlloc refType $o@@40 Tclass._module.ConstantInteger? $h@@20))
)))
(assert (forall (($o@@41 T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType $o@@41 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@21)  (or (= $o@@41 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@41) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2923|
 :pattern ( ($IsAlloc refType $o@@41 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@21))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@3) (|Set#IsMember| b@@4 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserInv#canCall| $Heap@@18 this@@47) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@47 Tclass._module.IncreasingCounter $Heap@@18)))))) (= (_module.IncreasingCounter.baseUserInv $Heap@@18 this@@47) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.498:19|
 :skolemid |2134|
 :pattern ( (_module.IncreasingCounter.baseUserInv $Heap@@18 this@@47) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@19 this@@48) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@48 Tclass._module.IncreasingCounter $Heap@@19)))))) (= (_module.IncreasingCounter.localUserInv $Heap@@19 this@@48) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.502:19|
 :skolemid |2141|
 :pattern ( (_module.IncreasingCounter.localUserInv $Heap@@19 this@@48) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Integer.baseUserInv#canCall| $Heap@@20 this@@49) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Integer) ($IsAlloc refType this@@49 Tclass._module.Integer $Heap@@20)))))) (= (_module.Integer.baseUserInv $Heap@@20 this@@49) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.543:19|
 :skolemid |2404|
 :pattern ( (_module.Integer.baseUserInv $Heap@@20 this@@49) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@21 this@@50) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Integer) ($IsAlloc refType this@@50 Tclass._module.Integer $Heap@@21)))))) (= (_module.Integer.localUserInv $Heap@@21 this@@50) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.547:19|
 :skolemid |2411|
 :pattern ( (_module.Integer.localUserInv $Heap@@21 this@@50) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserInv#canCall| $Heap@@22 this@@51) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.ConstantInteger) ($IsAlloc refType this@@51 Tclass._module.ConstantInteger $Heap@@22)))))) (= (_module.ConstantInteger.baseUserInv $Heap@@22 this@@51) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.588:19|
 :skolemid |2674|
 :pattern ( (_module.ConstantInteger.baseUserInv $Heap@@22 this@@51) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@23 this@@52) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.ConstantInteger) ($IsAlloc refType this@@52 Tclass._module.ConstantInteger $Heap@@23)))))) (= (_module.ConstantInteger.localUserInv $Heap@@23 this@@52) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.592:19|
 :skolemid |2681|
 :pattern ( (_module.ConstantInteger.localUserInv $Heap@@23 this@@52) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@24 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@29 $Heap@@24 this@@53) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@29) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@29 $Heap@@24)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $prevHeap@@29)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@29 $Heap@@24 this@@53) (=> (_module.Thread.localInv2 $prevHeap@@29 $Heap@@24 this@@53) (|_module.Thread.transitiveInv2#canCall| $prevHeap@@29 $Heap@@24 this@@53))) (= (_module.Thread.inv2 $prevHeap@@29 $Heap@@24 this@@53)  (and (_module.Thread.localInv2 $prevHeap@@29 $Heap@@24 this@@53) (_module.Thread.transitiveInv2 $prevHeap@@29 $Heap@@24 this@@53)))))
 :qid |_09CounterNoStateMachinedfy.303:22|
 :skolemid |1439|
 :pattern ( (_module.Thread.inv2 $prevHeap@@29 $Heap@@24 this@@53) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@4)) (not (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((m@@1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@5)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0|) (and (|Set#IsMember| |l#1| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_09CounterNoStateMachinedfy.286:7|
 :skolemid |3224|
 :pattern ( (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#1|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@25 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@30 $Heap@@25 this@@54) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@30) ($IsGoodHeap $Heap@@25)) ($HeapSucc $prevHeap@@30 $Heap@@25)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Thread) ($IsAlloc refType this@@54 Tclass._module.Thread $prevHeap@@30)))))) (=> (_module.Thread.inv2 $prevHeap@@30 $Heap@@25 this@@54) (and (_module.Thread.localInv2 $prevHeap@@30 $Heap@@25 this@@54) (_module.Thread.transitiveInv2 $prevHeap@@30 $Heap@@25 this@@54))))
 :qid |_09CounterNoStateMachinedfy.303:22|
 :skolemid |1437|
 :pattern ( (_module.Thread.inv2 $prevHeap@@30 $Heap@@25 this@@54))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@26 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@31 $Heap@@26 this@@55) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@31 $Heap@@26)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.OwnedObject) ($IsAlloc refType this@@55 Tclass._module.OwnedObject $prevHeap@@31)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@31 $Heap@@26 this@@55) (and (_module.OwnedObject.localInv2 $prevHeap@@31 $Heap@@26 this@@55) (_module.OwnedObject.transitiveInv2 $prevHeap@@31 $Heap@@26 this@@55))))
 :qid |_09CounterNoStateMachinedfy.388:22|
 :skolemid |1755|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@31 $Heap@@26 this@@55))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@27 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@32 $Heap@@27 this@@56) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@27)) ($HeapSucc $prevHeap@@32 $Heap@@27)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.Object) ($IsAlloc refType this@@56 Tclass._module.Object $prevHeap@@32)))))) (=> (_module.Object.inv2 $prevHeap@@32 $Heap@@27 this@@56) (and (_module.Object.localInv2 $prevHeap@@32 $Heap@@27 this@@56) (_module.Object.transitiveInv2 $prevHeap@@32 $Heap@@27 this@@56))))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1332|
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@27 this@@56))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@42 T@U) ($f@@28 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@42 $f@@28))  (=> (and (or (not (= $o@@42 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@42) |l#2@@0|)))) (or (= $o@@42 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@42)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3221|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3| |l#4|) $o@@42 $f@@28))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@28 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.Integer.unchangedNonvolatileUserFields#canCall| $prevHeap@@33 $Heap@@28 this@@57) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@33 $Heap@@28)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.Integer) ($IsAlloc refType this@@57 Tclass._module.Integer $prevHeap@@33)))))) (= (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@33 $Heap@@28 this@@57) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@57) _module.Integer.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@57) _module.Integer.value))))))
 :qid |_09CounterNoStateMachinedfy.538:22|
 :skolemid |2390|
 :pattern ( (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@33 $Heap@@28 this@@57) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@29 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@34 $Heap@@29 this@@58) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@34) ($IsGoodHeap $Heap@@29)) ($HeapSucc $prevHeap@@34 $Heap@@29)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.ConstantInteger) ($IsAlloc refType this@@58 Tclass._module.ConstantInteger $prevHeap@@34)))))) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@29 this@@58) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@34 this@@58) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@58) _module.ConstantInteger.value))))))
 :qid |_09CounterNoStateMachinedfy.583:22|
 :skolemid |2660|
 :pattern ( (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@34 $Heap@@29 this@@58) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@30 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@35 $Heap@@30 this@@59) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@30)) ($HeapSucc $prevHeap@@35 $Heap@@30)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@59 Tclass._module.IncreasingCounter $prevHeap@@35)))))) (= (_module.IncreasingCounter.localUserInv2 $prevHeap@@35 $Heap@@30 this@@59) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@59) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@59) _module.IncreasingCounter.value))))))
 :qid |_09CounterNoStateMachinedfy.509:22|
 :skolemid |2156|
 :pattern ( (_module.IncreasingCounter.localUserInv2 $prevHeap@@35 $Heap@@30 this@@59) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@31 T@U) (this@@60 T@U) (|running#0@@1| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@36 $Heap@@31 this@@60 |running#0@@1|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@31)) ($HeapSucc $prevHeap@@36 $Heap@@31)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Universe) ($IsAlloc refType this@@60 Tclass._module.Universe $prevHeap@@36)))) ($Is refType |running#0@@1| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@36 $Heap@@31 this@@60 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@36 $Heap@@31 this@@60 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@36 this@@60) (=> (_module.Universe.globalInv $prevHeap@@36 this@@60) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@31 this@@60) (=> (_module.Universe.globalBaseInv $Heap@@31 this@@60) (and (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@1|)) (and (=> (not (forall (($o@@43 T@U) ($f@@29 T@U) ) (!  (=> (or (not (= $o@@43 null)) (not true)) (=> (= $o@@43 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@43) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@43) $f@@29))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |736|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@43) $f@@29))
))) (|_module.Object.inv#canCall| $Heap@@31 |o#0@@1|)) (=> (or (forall (($o@@44 T@U) ($f@@30 T@U) ) (!  (=> (or (not (= $o@@44 null)) (not true)) (=> (= $o@@44 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@44) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@44) $f@@30))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |738|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@44) $f@@30))
)) (_module.Object.inv $Heap@@31 |o#0@@1|)) (=> (not (forall (($o@@45 T@U) ($f@@31 T@U) ) (!  (=> (or (not (= $o@@45 null)) (not true)) (=> (= $o@@45 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@45) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@45) $f@@31))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |737|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@45) $f@@31))
))) (|_module.Object.inv2#canCall| $prevHeap@@36 $Heap@@31 |o#0@@1|))))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |739|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@31 |o#0@@1|))
 :pattern ( (_module.Object.inv $Heap@@31 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@1|)))
)) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@2|))) (and (or (forall (($o@@46 T@U) ($f@@32 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@46) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@46) $f@@32))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |741|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@46) $f@@32))
)) (_module.Object.inv $Heap@@31 |o#0@@2|)) (or (forall (($o@@47 T@U) ($f@@33 T@U) ) (!  (=> (or (not (= $o@@47 null)) (not true)) (=> (= $o@@47 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@47) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@47) $f@@33))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |742|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@47) $f@@33))
)) (_module.Object.inv2 $prevHeap@@36 $Heap@@31 |o#0@@2|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |743|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@31 |o#0@@2|))
 :pattern ( (_module.Object.inv $Heap@@31 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@60) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@31 |o#1|)))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |740|
 :pattern ( (_module.Object.inv $Heap@@31 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@60) _module.Universe.content)) ($Box refType |o#1|)))
)))))))))) (= (_module.Universe.legalTransition $prevHeap@@36 $Heap@@31 this@@60 |running#0@@1|)  (and (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@36 $Heap@@31 this@@60 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (_module.Universe.globalInv $prevHeap@@36 this@@60)) (_module.Universe.globalBaseInv $Heap@@31 this@@60)) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (or (forall (($o@@48 T@U) ($f@@34 T@U) ) (!  (=> (or (not (= $o@@48 null)) (not true)) (=> (= $o@@48 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@48) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@48) $f@@34))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |732|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@48) $f@@34))
)) (_module.Object.inv $Heap@@31 |o#0@@3|)) (or (forall (($o@@49 T@U) ($f@@35 T@U) ) (!  (=> (or (not (= $o@@49 null)) (not true)) (=> (= $o@@49 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@49) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 $o@@49) $f@@35))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |733|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 $o@@49) $f@@35))
)) (_module.Object.inv2 $prevHeap@@36 $Heap@@31 |o#0@@3|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |734|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@31 |o#0@@3|))
 :pattern ( (_module.Object.inv $Heap@@31 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@60) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@31 |o#1@@0|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |735|
 :pattern ( (_module.Object.inv $Heap@@31 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@60) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@31 this@@60) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.86:22|
 :skolemid |744|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@36 $Heap@@31 this@@60 |running#0@@1|) ($IsGoodHeap $Heap@@31))
))))
(assert (forall (($h@@22 T@U) ($o@@50 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@50 null)) (not true)) (= (dtype $o@@50) Tclass._module.IncreasingCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@50) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@50) _module.IncreasingCounter.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2115|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@50) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@51 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@51 null)) (not true)) (= (dtype $o@@51) Tclass._module.Integer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@51) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@51) _module.Integer.value)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2385|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@51) _module.Integer.value)))
)))
(assert (forall (($h@@24 T@U) ($o@@52 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) Tclass._module.ConstantInteger?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) _module.ConstantInteger.value)) TInt $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2655|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) _module.ConstantInteger.value)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@32 this@@61) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.OwnedObject) ($IsAlloc refType this@@61 Tclass._module.OwnedObject $Heap@@32)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@32 this@@61) (=> (_module.OwnedObject.localInv $Heap@@32 this@@61) (|_module.OwnedObject.userInv#canCall| $Heap@@32 this@@61))) (= (_module.OwnedObject.inv $Heap@@32 this@@61)  (and (_module.OwnedObject.localInv $Heap@@32 this@@61) (_module.OwnedObject.userInv $Heap@@32 this@@61)))))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1718|
 :pattern ( (_module.OwnedObject.inv $Heap@@32 this@@61) ($IsGoodHeap $Heap@@32))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@33 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@37 $Heap@@33 this@@62) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@33)) ($HeapSucc $prevHeap@@37 $Heap@@33)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.ConstantInteger) ($IsAlloc refType this@@62 Tclass._module.ConstantInteger $prevHeap@@37)))))) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@37 $Heap@@33 this@@62)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@37 this@@62) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@62) _module.ConstantInteger.value)))))))
 :qid |_09CounterNoStateMachinedfy.599:22|
 :skolemid |2696|
 :pattern ( (_module.ConstantInteger.localUserInv2 $prevHeap@@37 $Heap@@33 this@@62) ($IsGoodHeap $Heap@@33))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@25 T@U) ($o@@53 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@53 null)) (not true)) ($Is refType $o@@53 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@53) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@53) Tclass._module.Universe $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1250|
 :pattern ( (_module.Object.universe $o@@53) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@53) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@54 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) ($Is refType $o@@54 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@54) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1249|
 :pattern ( (_module.Object.universe $o@@54))
))))
(assert (forall (($h@@26 T@U) ($o@@55 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@55 null)) (not true)) (= (dtype $o@@55) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2924|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@27 T@U) ($o@@56 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@56 null)) (not true)) (= (dtype $o@@56) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@56) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2926|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@56) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@34 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@38 $Heap@@34 this@@63) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@38 $Heap@@34 this@@63) (_module.Thread.localInv2 $prevHeap@@38 $Heap@@34 this@@63)))
 :qid |_09CounterNoStateMachinedfy.278:22|
 :skolemid |1426|
 :pattern ( (_module.Object.localInv2 $prevHeap@@38 $Heap@@34 this@@63) ($Is refType this@@63 Tclass._module.Thread) ($IsGoodHeap $Heap@@34))
 :pattern ( (_module.Object.localInv2 $prevHeap@@38 $Heap@@34 this@@63) (_module.Thread.localInv2 $prevHeap@@38 $Heap@@34 this@@63) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@35 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@39 $Heap@@35 this@@64) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.Thread)))) (= (_module.Object.transitiveInv2 $prevHeap@@39 $Heap@@35 this@@64) (_module.Thread.transitiveInv2 $prevHeap@@39 $Heap@@35 this@@64)))
 :qid |_09CounterNoStateMachinedfy.280:22|
 :skolemid |1433|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@39 $Heap@@35 this@@64) ($Is refType this@@64 Tclass._module.Thread) ($IsGoodHeap $Heap@@35))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@39 $Heap@@35 this@@64) (_module.Thread.transitiveInv2 $prevHeap@@39 $Heap@@35 this@@64) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@36 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@40 $Heap@@36 this@@65) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@65 null)) (not true)) ($Is refType this@@65 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@65) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@65)))
 :qid |_09CounterNoStateMachinedfy.429:22|
 :skolemid |2121|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@65) ($Is refType this@@65 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@36))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@65) (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@40 $Heap@@36 this@@65) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@37 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@41 $Heap@@37 this@@66) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@66 null)) (not true)) ($Is refType this@@66 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@66) (_module.IncreasingCounter.localUserInv2 $prevHeap@@41 $Heap@@37 this@@66)))
 :qid |_09CounterNoStateMachinedfy.432:22|
 :skolemid |2157|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@66) ($Is refType this@@66 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@37))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@41 $Heap@@37 this@@66) (_module.IncreasingCounter.localUserInv2 $prevHeap@@41 $Heap@@37 this@@66) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@38 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.Integer.unchangedNonvolatileUserFields#canCall| $prevHeap@@42 $Heap@@38 this@@67) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@67 null)) (not true)) ($Is refType this@@67 Tclass._module.Integer)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@38 this@@67) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@38 this@@67)))
 :qid |_09CounterNoStateMachinedfy.429:22|
 :skolemid |2391|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@38 this@@67) ($Is refType this@@67 Tclass._module.Integer) ($IsGoodHeap $Heap@@38))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@38 this@@67) (_module.Integer.unchangedNonvolatileUserFields $prevHeap@@42 $Heap@@38 this@@67) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@39 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Integer.localUserInv2#canCall| $prevHeap@@43 $Heap@@39 this@@68) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@68 null)) (not true)) ($Is refType this@@68 Tclass._module.Integer)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@43 $Heap@@39 this@@68) (_module.Integer.localUserInv2 $prevHeap@@43 $Heap@@39 this@@68)))
 :qid |_09CounterNoStateMachinedfy.432:22|
 :skolemid |2427|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@43 $Heap@@39 this@@68) ($Is refType this@@68 Tclass._module.Integer) ($IsGoodHeap $Heap@@39))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@43 $Heap@@39 this@@68) (_module.Integer.localUserInv2 $prevHeap@@43 $Heap@@39 this@@68) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@40 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@44 $Heap@@40 this@@69) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@69 null)) (not true)) ($Is refType this@@69 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@40 this@@69) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@40 this@@69)))
 :qid |_09CounterNoStateMachinedfy.429:22|
 :skolemid |2661|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@40 this@@69) ($Is refType this@@69 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@40))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@40 this@@69) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@44 $Heap@@40 this@@69) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@41 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@45 $Heap@@41 this@@70) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@70 null)) (not true)) ($Is refType this@@70 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@45 $Heap@@41 this@@70) (_module.ConstantInteger.localUserInv2 $prevHeap@@45 $Heap@@41 this@@70)))
 :qid |_09CounterNoStateMachinedfy.432:22|
 :skolemid |2697|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@45 $Heap@@41 this@@70) ($Is refType this@@70 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@41))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@45 $Heap@@41 this@@70) (_module.ConstantInteger.localUserInv2 $prevHeap@@45 $Heap@@41 this@@70) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@42 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@46 $Heap@@42 this@@71) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@71 null)) (not true)) ($Is refType this@@71 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@46 $Heap@@42 this@@71) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@46 $Heap@@42 this@@71)))
 :qid |_09CounterNoStateMachinedfy.429:22|
 :skolemid |2933|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@46 $Heap@@42 this@@71) ($Is refType this@@71 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@42))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@46 $Heap@@42 this@@71) (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@46 $Heap@@42 this@@71) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@47 T@U) ($Heap@@43 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@47 $Heap@@43 this@@72) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@72 null)) (not true)) ($Is refType this@@72 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@47 $Heap@@43 this@@72) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@47 $Heap@@43 this@@72)))
 :qid |_09CounterNoStateMachinedfy.432:22|
 :skolemid |2969|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@47 $Heap@@43 this@@72) ($Is refType this@@72 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@43))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@47 $Heap@@43 this@@72) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@47 $Heap@@43 this@@72) ($IsGoodHeap $Heap@@43))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@48 T@U) ($Heap@@44 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@48 $Heap@@44 this@@73) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@73 null)) (not true)) ($Is refType this@@73 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@73) (_module.Thread.inv2 $prevHeap@@48 $Heap@@44 this@@73)))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1440|
 :pattern ( (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@73) ($Is refType this@@73 Tclass._module.Thread) ($IsGoodHeap $Heap@@44))
 :pattern ( (_module.Object.inv2 $prevHeap@@48 $Heap@@44 this@@73) (_module.Thread.inv2 $prevHeap@@48 $Heap@@44 this@@73) ($IsGoodHeap $Heap@@44))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@49 T@U) ($Heap@@45 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@49 $Heap@@45 this@@74) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@74 null)) (not true)) ($Is refType this@@74 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv2 $prevHeap@@49 $Heap@@45 this@@74) (_module.IncreasingCounter.userInv2 $prevHeap@@49 $Heap@@45 this@@74)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |2164|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@49 $Heap@@45 this@@74) ($Is refType this@@74 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@45))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@49 $Heap@@45 this@@74) (_module.IncreasingCounter.userInv2 $prevHeap@@49 $Heap@@45 this@@74) ($IsGoodHeap $Heap@@45))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@50 T@U) ($Heap@@46 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.Integer.userInv2#canCall| $prevHeap@@50 $Heap@@46 this@@75) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@75 null)) (not true)) ($Is refType this@@75 Tclass._module.Integer)))) (= (_module.OwnedObject.userInv2 $prevHeap@@50 $Heap@@46 this@@75) (_module.Integer.userInv2 $prevHeap@@50 $Heap@@46 this@@75)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |2434|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@50 $Heap@@46 this@@75) ($Is refType this@@75 Tclass._module.Integer) ($IsGoodHeap $Heap@@46))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@50 $Heap@@46 this@@75) (_module.Integer.userInv2 $prevHeap@@50 $Heap@@46 this@@75) ($IsGoodHeap $Heap@@46))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@51 T@U) ($Heap@@47 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@51 $Heap@@47 this@@76) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@76 null)) (not true)) ($Is refType this@@76 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv2 $prevHeap@@51 $Heap@@47 this@@76) (_module.ConstantInteger.userInv2 $prevHeap@@51 $Heap@@47 this@@76)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |2704|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@51 $Heap@@47 this@@76) ($Is refType this@@76 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@47))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@51 $Heap@@47 this@@76) (_module.ConstantInteger.userInv2 $prevHeap@@51 $Heap@@47 this@@76) ($IsGoodHeap $Heap@@47))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@52 T@U) ($Heap@@48 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@52 $Heap@@48 this@@77) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@77 null)) (not true)) ($Is refType this@@77 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv2 $prevHeap@@52 $Heap@@48 this@@77) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@52 $Heap@@48 this@@77)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |2976|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@52 $Heap@@48 this@@77) ($Is refType this@@77 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@48))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@52 $Heap@@48 this@@77) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@52 $Heap@@48 this@@77) ($IsGoodHeap $Heap@@48))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@53 T@U) ($Heap@@49 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@53 $Heap@@49 this@@78) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@78 null)) (not true)) ($Is refType this@@78 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@53 $Heap@@49 this@@78) (_module.OwnedObject.localInv2 $prevHeap@@53 $Heap@@49 this@@78)))
 :qid |_09CounterNoStateMachinedfy.278:22|
 :skolemid |1736|
 :pattern ( (_module.Object.localInv2 $prevHeap@@53 $Heap@@49 this@@78) ($Is refType this@@78 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@49))
 :pattern ( (_module.Object.localInv2 $prevHeap@@53 $Heap@@49 this@@78) (_module.OwnedObject.localInv2 $prevHeap@@53 $Heap@@49 this@@78) ($IsGoodHeap $Heap@@49))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@54 T@U) ($Heap@@50 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@54 $Heap@@50 this@@79) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@79 null)) (not true)) ($Is refType this@@79 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@54 $Heap@@50 this@@79) (_module.OwnedObject.transitiveInv2 $prevHeap@@54 $Heap@@50 this@@79)))
 :qid |_09CounterNoStateMachinedfy.280:22|
 :skolemid |1746|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@54 $Heap@@50 this@@79) ($Is refType this@@79 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@50))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@54 $Heap@@50 this@@79) (_module.OwnedObject.transitiveInv2 $prevHeap@@54 $Heap@@50 this@@79) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@55 T@U) ($Heap@@51 T@U) (this@@80 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@55 $Heap@@51 this@@80) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@80 null)) (not true)) ($Is refType this@@80 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@55 $Heap@@51 this@@80) (_module.OwnedObject.inv2 $prevHeap@@55 $Heap@@51 this@@80)))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1758|
 :pattern ( (_module.Object.inv2 $prevHeap@@55 $Heap@@51 this@@80) ($Is refType this@@80 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@51))
 :pattern ( (_module.Object.inv2 $prevHeap@@55 $Heap@@51 this@@80) (_module.OwnedObject.inv2 $prevHeap@@55 $Heap@@51 this@@80) ($IsGoodHeap $Heap@@51))
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
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.ConstantInteger) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.ConstantInteger)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@15 Tclass._module.ConstantInteger))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsBox bx@@16 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@17 Tclass._module.Object?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsBox bx@@19 Tclass._module.Thread?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.IncreasingCounter?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |2111|
 :pattern ( ($IsBox bx@@20 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |2381|
 :pattern ( ($IsBox bx@@21 Tclass._module.Integer?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.ConstantInteger?) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |2651|
 :pattern ( ($IsBox bx@@22 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (and (= ($Box refType ($Unbox refType bx@@23)) bx@@23) ($Is refType ($Unbox refType bx@@23) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2921|
 :pattern ( ($IsBox bx@@23 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Thread)  (and ($Is refType |c#0@@9| Tclass._module.Thread?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@10| Tclass._module.OwnedObject?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.IncreasingCounter)  (and ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2379|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.Integer)  (and ($Is refType |c#0@@12| Tclass._module.Integer?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2649|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.ConstantInteger)  (and ($Is refType |c#0@@13| Tclass._module.ConstantInteger?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2919|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant)  (and ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3191|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall (($h@@28 T@U) ($o@@57 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@57 null)) (not true)) (= (dtype $o@@57) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@57) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@57) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2925|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@57) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@29 T@U) ($o@@58 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@58 null)) (not true)) (= (dtype $o@@58) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@58) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@58) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2927|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@58) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5)  (or (|Set#IsMember| a@@9 o@@5) (|Set#IsMember| b@@6 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@56 T@U) ($Heap@@52 T@U) (this@@81 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@56 $Heap@@52 this@@81) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@56) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@56 $Heap@@52)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.Universe) ($IsAlloc refType this@@81 Tclass._module.Universe $prevHeap@@56)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@81) _module.Universe.content)) ($Box refType |o#0@@4|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@81) _module.Universe.content)) ($Box refType |o#0@@4|)) (|_module.Object.inv2#canCall| $prevHeap@@56 $Heap@@52 |o#0@@4|))))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |682|
 :pattern ( (_module.Object.inv2 $prevHeap@@56 $Heap@@52 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@81) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@81) _module.Universe.content)) ($Box refType |o#0@@4|)))
))) (= (_module.Universe.globalInv2 $prevHeap@@56 $Heap@@52 this@@81)  (and true (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@81) _module.Universe.content)) ($Box refType |o#0@@5|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@81) _module.Universe.content)) ($Box refType |o#0@@5|)) (_module.Object.inv2 $prevHeap@@56 $Heap@@52 |o#0@@5|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |681|
 :pattern ( (_module.Object.inv2 $prevHeap@@56 $Heap@@52 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@81) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@56 this@@81) _module.Universe.content)) ($Box refType |o#0@@5|)))
))))))
 :qid |_09CounterNoStateMachinedfy.44:22|
 :skolemid |683|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@56 $Heap@@52 this@@81) ($IsGoodHeap $Heap@@52))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@53 T@U) (this@@82 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@53 this@@82) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@53) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Object) ($IsAlloc refType this@@82 Tclass._module.Object $Heap@@53)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 (_module.Object.universe this@@82)) _module.Universe.content)) ($Box refType this@@82)) (|_module.Universe.globalBaseInv#canCall| $Heap@@53 (_module.Object.universe this@@82))) (= (_module.Object.baseInv $Heap@@53 this@@82)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 (_module.Object.universe this@@82)) _module.Universe.content)) ($Box refType this@@82)) (_module.Universe.globalBaseInv $Heap@@53 (_module.Object.universe this@@82))))))
 :qid |_09CounterNoStateMachinedfy.243:19|
 :skolemid |1255|
 :pattern ( (_module.Object.baseInv $Heap@@53 this@@82) ($IsGoodHeap $Heap@@53))
))))
(assert (forall (($o@@59 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@59 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@59 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($IsAlloc refType $o@@59 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@60 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@60 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@60 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@60 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@61 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@61 Tclass._module.IncreasingCounter? $heap@@1) ($IsAlloc refType $o@@61 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3208|
 :pattern ( ($IsAlloc refType $o@@61 Tclass._module.IncreasingCounter? $heap@@1))
)))
(assert (forall (($o@@62 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@62 Tclass._module.Integer? $heap@@2) ($IsAlloc refType $o@@62 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( ($IsAlloc refType $o@@62 Tclass._module.Integer? $heap@@2))
)))
(assert (forall (($o@@63 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@63 Tclass._module.ConstantInteger? $heap@@3) ($IsAlloc refType $o@@63 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsAlloc refType $o@@63 Tclass._module.ConstantInteger? $heap@@3))
)))
(assert (forall (($o@@64 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@64 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4) ($IsAlloc refType $o@@64 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3220|
 :pattern ( ($IsAlloc refType $o@@64 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@54 T@U) (this@@83 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@54 this@@83) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@54) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.Universe) ($IsAlloc refType this@@83 Tclass._module.Universe $Heap@@54)))))) (and (=> (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#0@@6|))) (and (= (_module.Object.universe |o#0@@6|) this@@83) (or (not (= |o#0@@6| this@@83)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |655|
 :pattern ( (_module.Object.universe |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#0@@6|)))
)) (forall ((|o#1@@1| T@U) ) (!  (=> ($Is refType |o#1@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#1@@1|)) (|_module.Object.triggerAxioms#canCall| $Heap@@54 |o#1@@1|)))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |654|
 :pattern ( (_module.Object.triggerAxioms $Heap@@54 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#1@@1|)))
))) (= (_module.Universe.globalBaseInv $Heap@@54 this@@83)  (and (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (= (_module.Object.universe |o#0@@7|) this@@83) (or (not (= |o#0@@7| this@@83)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |652|
 :pattern ( (_module.Object.universe |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#0@@7|)))
)) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#1@@2|))) (_module.Object.triggerAxioms $Heap@@54 |o#1@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |653|
 :pattern ( (_module.Object.triggerAxioms $Heap@@54 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@83) _module.Universe.content)) ($Box refType |o#1@@2|)))
))))))
 :qid |_09CounterNoStateMachinedfy.33:19|
 :skolemid |656|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@54 this@@83) ($IsGoodHeap $Heap@@54))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@84 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@55 this@@84) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Object) ($IsAlloc refType this@@84 Tclass._module.Object $Heap@@55)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@55 this@@84) (=> (_module.Object.baseInv $Heap@@55 this@@84) (|_module.Universe.globalInv#canCall| $Heap@@55 (_module.Object.universe this@@84)))) (= (_module.Object.objectGlobalInv $Heap@@55 this@@84)  (and (_module.Object.baseInv $Heap@@55 this@@84) (_module.Universe.globalInv $Heap@@55 (_module.Object.universe this@@84))))))
 :qid |_09CounterNoStateMachinedfy.264:19|
 :skolemid |1297|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@55 this@@84) ($IsGoodHeap $Heap@@55))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@57 T@U) ($Heap@@56 T@U) (this@@85 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@57 $Heap@@56 this@@85) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@57) ($IsGoodHeap $Heap@@56)) ($HeapSucc $prevHeap@@57 $Heap@@56)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.Thread) ($IsAlloc refType this@@85 Tclass._module.Thread $prevHeap@@57)))))) (= (_module.Thread.localInv2 $prevHeap@@57 $Heap@@56 this@@85) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_09CounterNoStateMachinedfy.297:22|
 :skolemid |1425|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@57 $Heap@@56 this@@85) ($IsGoodHeap $Heap@@56))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@58 T@U) ($Heap@@57 T@U) (this@@86 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@58 $Heap@@57 this@@86) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@58) ($IsGoodHeap $Heap@@57)) ($HeapSucc $prevHeap@@58 $Heap@@57)) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.Thread) ($IsAlloc refType this@@86 Tclass._module.Thread $prevHeap@@58)))))) (= (_module.Thread.transitiveInv2 $prevHeap@@58 $Heap@@57 this@@86) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_09CounterNoStateMachinedfy.300:22|
 :skolemid |1432|
 :pattern ( (_module.Thread.transitiveInv2 $prevHeap@@58 $Heap@@57 this@@86) ($IsGoodHeap $Heap@@57))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@59 T@U) ($Heap@@58 T@U) (this@@87 T@U) ) (!  (=> (or (|_module.IncreasingCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@59 $Heap@@58 this@@87) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@59) ($IsGoodHeap $Heap@@58)) ($HeapSucc $prevHeap@@59 $Heap@@58)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@87 Tclass._module.IncreasingCounter $prevHeap@@59)))))) (= (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@59 $Heap@@58 this@@87) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_09CounterNoStateMachinedfy.495:22|
 :skolemid |2120|
 :pattern ( (_module.IncreasingCounter.unchangedNonvolatileUserFields $prevHeap@@59 $Heap@@58 this@@87) ($IsGoodHeap $Heap@@58))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@60 T@U) ($Heap@@59 T@U) (this@@88 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@60 $Heap@@59 this@@88) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@60) ($IsGoodHeap $Heap@@59)) ($HeapSucc $prevHeap@@60 $Heap@@59)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@88 Tclass._module.IncreasingCounter $prevHeap@@60)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv2#canCall| $prevHeap@@60 $Heap@@59 this@@88)) (= (_module.IncreasingCounter.userInv2 $prevHeap@@60 $Heap@@59 this@@88)  (and true (_module.IncreasingCounter.localUserInv2 $prevHeap@@60 $Heap@@59 this@@88)))))
 :qid |_09CounterNoStateMachinedfy.512:22|
 :skolemid |2163|
 :pattern ( (_module.IncreasingCounter.userInv2 $prevHeap@@60 $Heap@@59 this@@88) ($IsGoodHeap $Heap@@59))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@61 T@U) ($Heap@@60 T@U) (this@@89 T@U) ) (!  (=> (or (|_module.Integer.userInv2#canCall| $prevHeap@@61 $Heap@@60 this@@89) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@61) ($IsGoodHeap $Heap@@60)) ($HeapSucc $prevHeap@@61 $Heap@@60)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.Integer) ($IsAlloc refType this@@89 Tclass._module.Integer $prevHeap@@61)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Integer.localUserInv2#canCall| $prevHeap@@61 $Heap@@60 this@@89)) (= (_module.Integer.userInv2 $prevHeap@@61 $Heap@@60 this@@89)  (and true (_module.Integer.localUserInv2 $prevHeap@@61 $Heap@@60 this@@89)))))
 :qid |_09CounterNoStateMachinedfy.557:22|
 :skolemid |2433|
 :pattern ( (_module.Integer.userInv2 $prevHeap@@61 $Heap@@60 this@@89) ($IsGoodHeap $Heap@@60))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@62 T@U) ($Heap@@61 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@62 $Heap@@61 this@@90) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@62) ($IsGoodHeap $Heap@@61)) ($HeapSucc $prevHeap@@62 $Heap@@61)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.ConstantInteger) ($IsAlloc refType this@@90 Tclass._module.ConstantInteger $prevHeap@@62)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@62 $Heap@@61 this@@90)) (= (_module.ConstantInteger.userInv2 $prevHeap@@62 $Heap@@61 this@@90)  (and true (_module.ConstantInteger.localUserInv2 $prevHeap@@62 $Heap@@61 this@@90)))))
 :qid |_09CounterNoStateMachinedfy.602:22|
 :skolemid |2703|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@62 $Heap@@61 this@@90) ($IsGoodHeap $Heap@@61))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@63 T@U) ($Heap@@62 T@U) (this@@91 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@63 $Heap@@62 this@@91) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@63) ($IsGoodHeap $Heap@@62)) ($HeapSucc $prevHeap@@63 $Heap@@62)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@91 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@63)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@63 $Heap@@62 this@@91)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@63 $Heap@@62 this@@91)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@63 $Heap@@62 this@@91)))))
 :qid |_09CounterNoStateMachinedfy.651:22|
 :skolemid |2975|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@63 $Heap@@62 this@@91) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@64 T@U) ($Heap@@63 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@64 $Heap@@63 this@@92) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@64) ($IsGoodHeap $Heap@@63)) ($HeapSucc $prevHeap@@64 $Heap@@63)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.OwnedObject) ($IsAlloc refType this@@92 Tclass._module.OwnedObject $prevHeap@@64)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@64 $Heap@@63 this@@92)) (= (_module.OwnedObject.localInv2 $prevHeap@@64 $Heap@@63 this@@92)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@64 $Heap@@63 this@@92)))))
 :qid |_09CounterNoStateMachinedfy.361:22|
 :skolemid |1735|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@64 $Heap@@63 this@@92) ($IsGoodHeap $Heap@@63))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@65 T@U) ($Heap@@64 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.Integer.localUserInv2#canCall| $prevHeap@@65 $Heap@@64 this@@93) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@65) ($IsGoodHeap $Heap@@64)) ($HeapSucc $prevHeap@@65 $Heap@@64)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Integer) ($IsAlloc refType this@@93 Tclass._module.Integer $prevHeap@@65)))))) (= (_module.Integer.localUserInv2 $prevHeap@@65 $Heap@@64 this@@93) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.554:22|
 :skolemid |2426|
 :pattern ( (_module.Integer.localUserInv2 $prevHeap@@65 $Heap@@64 this@@93) ($IsGoodHeap $Heap@@64))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@65 T@U) (this@@94 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@65 this@@94) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@65) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.Object) ($IsAlloc refType this@@94 Tclass._module.Object $Heap@@65)))))) (_module.Object.triggerAxioms $Heap@@65 this@@94))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1309|
 :pattern ( (_module.Object.triggerAxioms $Heap@@65 this@@94))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@66 T@U) (this@@95 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@66 this@@95) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@66) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@95 Tclass._module.IncreasingCounter $Heap@@66)))))) (=> (_module.IncreasingCounter.userInv $Heap@@66 this@@95) (_module.IncreasingCounter.localUserInv $Heap@@66 this@@95)))
 :qid |_09CounterNoStateMachinedfy.505:19|
 :skolemid |2146|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@66 this@@95))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@67 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@67 this@@96) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@67) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.Integer) ($IsAlloc refType this@@96 Tclass._module.Integer $Heap@@67)))))) (=> (_module.Integer.userInv $Heap@@67 this@@96) (_module.Integer.localUserInv $Heap@@67 this@@96)))
 :qid |_09CounterNoStateMachinedfy.550:19|
 :skolemid |2416|
 :pattern ( (_module.Integer.userInv $Heap@@67 this@@96))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@68 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@68 this@@97) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@68) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.ConstantInteger) ($IsAlloc refType this@@97 Tclass._module.ConstantInteger $Heap@@68)))))) (=> (_module.ConstantInteger.userInv $Heap@@68 this@@97) (_module.ConstantInteger.localUserInv $Heap@@68 this@@97)))
 :qid |_09CounterNoStateMachinedfy.595:19|
 :skolemid |2686|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@68 this@@97))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@69 T@U) (this@@98 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@69 this@@98) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@69) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@98 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@69)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@69 this@@98) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@69 this@@98)))
 :qid |_09CounterNoStateMachinedfy.643:19|
 :skolemid |2958|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@69 this@@98))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@70 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@70 this@@99) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@70) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.OwnedObject) ($IsAlloc refType this@@99 Tclass._module.OwnedObject $Heap@@70)))))) (=> (_module.OwnedObject.userInv $Heap@@70 this@@99) (_module.OwnedObject.localUserInv $Heap@@70 this@@99)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |1832|
 :pattern ( (_module.OwnedObject.userInv $Heap@@70 this@@99))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@71 T@U) (this@@100 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@71 this@@100) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@71) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.Thread) ($IsAlloc refType this@@100 Tclass._module.Thread $Heap@@71)))))) (=> (_module.Thread.inv $Heap@@71 this@@100) (_module.Thread.localInv $Heap@@71 this@@100)))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1407|
 :pattern ( (_module.Thread.inv $Heap@@71 this@@100))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@72 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@72 this@@101) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@72) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.OwnedObject) ($IsAlloc refType this@@101 Tclass._module.OwnedObject $Heap@@72)))))) (=> (_module.OwnedObject.inv $Heap@@72 this@@101) (_module.OwnedObject.localInv $Heap@@72 this@@101)))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1716|
 :pattern ( (_module.OwnedObject.inv $Heap@@72 this@@101))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@73 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@73 this@@102) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@73) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.Object) ($IsAlloc refType this@@102 Tclass._module.Object $Heap@@73)))))) (=> (_module.Object.inv $Heap@@73 this@@102) (_module.Object.localInv $Heap@@73 this@@102)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1324|
 :pattern ( (_module.Object.inv $Heap@@73 this@@102))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@66 T@U) ($Heap@@74 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@66 $Heap@@74 this@@103) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@66) ($IsGoodHeap $Heap@@74)) ($HeapSucc $prevHeap@@66 $Heap@@74)) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.OwnedObject) ($IsAlloc refType this@@103 Tclass._module.OwnedObject $prevHeap@@66)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@103) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@103) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@66 $Heap@@74 this@@103)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@66 $Heap@@74 this@@103)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@66 this@@103) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@103) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@66 $Heap@@74 this@@103)))))
 :qid |_09CounterNoStateMachinedfy.346:22|
 :skolemid |1702|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@66 $Heap@@74 this@@103) ($IsGoodHeap $Heap@@74))
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
(assert (forall (($h@@30 T@U) ($o@@65 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@65 null)) (not true)) ($Is refType $o@@65 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@65) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@65) _module.OwnedObject.nonvolatileVersion)) TInt $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1689|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@65) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@104 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@104 null)) (not true)) ($Is refType this@@104 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@66 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (= $o@@66 this@@104)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@66) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@66) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1307|
)) (= (_module.Object.triggerAxioms $h0@@28 this@@104) (_module.Object.triggerAxioms $h1@@28 this@@104))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1308|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Object.triggerAxioms $h1@@28 this@@104))
)))
(assert (forall (($h@@31 T@U) ($o@@67 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@67 null)) (not true)) (= (dtype $o@@67) Tclass._module.IncreasingCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@67) _module.IncreasingCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2114|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@67) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@32 T@U) ($o@@68 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@68 null)) (not true)) (= (dtype $o@@68) Tclass._module.Integer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@68) _module.Integer.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2384|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@68) _module.Integer.value)))
)))
(assert (forall (($h@@33 T@U) ($o@@69 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@69 null)) (not true)) (= (dtype $o@@69) Tclass._module.ConstantInteger?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@69) _module.ConstantInteger.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2654|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@69) _module.ConstantInteger.value)))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@105 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@105 null)) (not true)) ($Is refType this@@105 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@70 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (or (= $o@@70 this@@105) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 this@@105) _module.Universe.content)) ($Box refType $o@@70)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@70) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@70) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |648|
)) (= (_module.Universe.globalBaseInv $h0@@29 this@@105) (_module.Universe.globalBaseInv $h1@@29 this@@105))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |649|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.Universe.globalBaseInv $h1@@29 this@@105))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@67 T@U) ($Heap@@75 T@U) (this@@106 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields#canCall| $prevHeap@@67 $Heap@@75 this@@106) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@67) ($IsGoodHeap $Heap@@75)) ($HeapSucc $prevHeap@@67 $Heap@@75)) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@106 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@67)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@67 $Heap@@75 this@@106)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@67 this@@106) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@75 this@@106) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@67 this@@106) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@75 this@@106) _module.ClaimIncreasingCounterGreaterThanConstant.constant))))))
 :qid |_09CounterNoStateMachinedfy.630:22|
 :skolemid |2932|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.unchangedNonvolatileUserFields $prevHeap@@67 $Heap@@75 this@@106) ($IsGoodHeap $Heap@@75))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@68 T@U) ($Heap@@76 T@U) (this@@107 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2#canCall| $prevHeap@@68 $Heap@@76 this@@107) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@68) ($IsGoodHeap $Heap@@76)) ($HeapSucc $prevHeap@@68 $Heap@@76)) (and (or (not (= this@@107 null)) (not true)) (and ($Is refType this@@107 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@107 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@68)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@68 $Heap@@76 this@@107)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@68 this@@107) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@107) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@68 this@@107) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@107) _module.ClaimIncreasingCounterGreaterThanConstant.constant))))))
 :qid |_09CounterNoStateMachinedfy.647:22|
 :skolemid |2968|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@68 $Heap@@76 this@@107) ($IsGoodHeap $Heap@@76))
))))
(assert (forall (($h@@34 T@U) ($o@@71 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@71 null)) (not true)) ($Is refType $o@@71 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@71) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@71) _module.OwnedObject.owner)) Tclass._module.Object $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1691|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@71) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@77 T@U) (this@@108 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@77 this@@108) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@77) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.OwnedObject) ($IsAlloc refType this@@108 Tclass._module.OwnedObject $Heap@@77)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@77 this@@108) (=> (_module.Object.baseInv $Heap@@77 this@@108) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 (_module.Object.universe this@@108)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 this@@108) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@77 this@@108) (=> (_module.OwnedObject.baseUserInv $Heap@@77 this@@108) (|_module.OwnedObject.localUserInv#canCall| $Heap@@77 this@@108)))))) (= (_module.OwnedObject.localInv $Heap@@77 this@@108)  (and (and (and (_module.Object.baseInv $Heap@@77 this@@108) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 (_module.Object.universe this@@108)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 this@@108) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@77 this@@108)) (_module.OwnedObject.localUserInv $Heap@@77 this@@108)))))
 :qid |_09CounterNoStateMachinedfy.350:19|
 :skolemid |1708|
 :pattern ( (_module.OwnedObject.localInv $Heap@@77 this@@108) ($IsGoodHeap $Heap@@77))
))))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@109 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.Universe) ($IsAlloc refType this@@109 Tclass._module.Universe $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@72 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@72) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@72) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@72) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.Universe.globalInv $h0@@30 this@@109) (_module.Universe.globalInv $h1@@30 this@@109))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Universe.globalInv $h1@@30 this@@109))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@110 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.Object) ($IsAlloc refType this@@110 Tclass._module.Object $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@73 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@73) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@73) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@73) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1251|
)) (= (_module.Object.baseInv $h0@@31 this@@110) (_module.Object.baseInv $h1@@31 this@@110))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1252|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Object.baseInv $h1@@31 this@@110))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@111 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.Object) ($IsAlloc refType this@@111 Tclass._module.Object $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@74 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@74) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@74) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@74) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1293|
)) (= (_module.Object.objectGlobalInv $h0@@32 this@@111) (_module.Object.objectGlobalInv $h1@@32 this@@111))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1294|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Object.objectGlobalInv $h1@@32 this@@111))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@112 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.Object) ($IsAlloc refType this@@112 Tclass._module.Object $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@75 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@75) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@75) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@75) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1314|
)) (= (_module.Object.localInv $h0@@33 this@@112) (_module.Object.localInv $h1@@33 this@@112))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1315|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.Object.localInv $h1@@33 this@@112))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@113 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.Object) ($IsAlloc refType this@@113 Tclass._module.Object $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@76 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@76) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@76) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@76) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1322|
)) (= (_module.Object.inv $h0@@34 this@@113) (_module.Object.inv $h1@@34 this@@113))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1323|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Object.inv $h1@@34 this@@113))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@114 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@114 null)) (not true)) (and ($Is refType this@@114 Tclass._module.Thread) ($IsAlloc refType this@@114 Tclass._module.Thread $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@77 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@77) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@77) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@77) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.Thread.localInv $h0@@35 this@@114) (_module.Thread.localInv $h1@@35 this@@114))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1398|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Thread.localInv $h1@@35 this@@114))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@115 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@115 null)) (not true)) (and ($Is refType this@@115 Tclass._module.Thread) ($IsAlloc refType this@@115 Tclass._module.Thread $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@78 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@78) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@78) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@78) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1405|
)) (= (_module.Thread.inv $h0@@36 this@@115) (_module.Thread.inv $h1@@36 this@@115))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1406|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.Thread.inv $h1@@36 this@@115))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@116 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@116 null)) (not true)) (and ($Is refType this@@116 Tclass._module.OwnedObject) ($IsAlloc refType this@@116 Tclass._module.OwnedObject $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@79 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@79) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@79) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@79) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |1704|
)) (= (_module.OwnedObject.localInv $h0@@37 this@@116) (_module.OwnedObject.localInv $h1@@37 this@@116))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.OwnedObject.localInv $h1@@37 this@@116))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@117 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@117 null)) (not true)) (and ($Is refType this@@117 Tclass._module.OwnedObject) ($IsAlloc refType this@@117 Tclass._module.OwnedObject $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@80 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@80 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@80) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@80) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@80) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |1714|
)) (= (_module.OwnedObject.inv $h0@@38 this@@117) (_module.OwnedObject.inv $h1@@38 this@@117))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1715|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.OwnedObject.inv $h1@@38 this@@117))
)))
(assert (forall (($h0@@39 T@U) ($h1@@39 T@U) (this@@118 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@118 null)) (not true)) (and ($Is refType this@@118 Tclass._module.OwnedObject) ($IsAlloc refType this@@118 Tclass._module.OwnedObject $h0@@39)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@81 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@81 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@81) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@81) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@81) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |1818|
)) (= (_module.OwnedObject.baseUserInv $h0@@39 this@@118) (_module.OwnedObject.baseUserInv $h1@@39 this@@118))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1819|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.OwnedObject.baseUserInv $h1@@39 this@@118))
)))
(assert (forall (($h0@@40 T@U) ($h1@@40 T@U) (this@@119 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@119 null)) (not true)) (and ($Is refType this@@119 Tclass._module.OwnedObject) ($IsAlloc refType this@@119 Tclass._module.OwnedObject $h0@@40)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@82 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@82 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@82) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@82) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@82) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |1822|
)) (= (_module.OwnedObject.localUserInv $h0@@40 this@@119) (_module.OwnedObject.localUserInv $h1@@40 this@@119))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1823|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.OwnedObject.localUserInv $h1@@40 this@@119))
)))
(assert (forall (($h0@@41 T@U) ($h1@@41 T@U) (this@@120 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@41) ($IsGoodHeap $h1@@41)) (and (or (not (= this@@120 null)) (not true)) (and ($Is refType this@@120 Tclass._module.OwnedObject) ($IsAlloc refType this@@120 Tclass._module.OwnedObject $h0@@41)))) (and ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41))) (=> (forall (($o@@83 T@U) ($f@@49 T@U) ) (!  (=> (and (or (not (= $o@@83 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@83) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@83) $f@@49) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@41 $o@@83) $f@@49)))
 :qid |unknown.0:0|
 :skolemid |1830|
)) (= (_module.OwnedObject.userInv $h0@@41 this@@120) (_module.OwnedObject.userInv $h1@@41 this@@120))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1831|
 :pattern ( ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41) (_module.OwnedObject.userInv $h1@@41 this@@120))
)))
(assert (forall (($h0@@42 T@U) ($h1@@42 T@U) (this@@121 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@42) ($IsGoodHeap $h1@@42)) (and (or (not (= this@@121 null)) (not true)) (and ($Is refType this@@121 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@121 Tclass._module.IncreasingCounter $h0@@42)))) (and ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42))) (=> (forall (($o@@84 T@U) ($f@@50 T@U) ) (!  (=> (and (or (not (= $o@@84 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@84) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@84) $f@@50) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@42 $o@@84) $f@@50)))
 :qid |unknown.0:0|
 :skolemid |2130|
)) (= (_module.IncreasingCounter.baseUserInv $h0@@42 this@@121) (_module.IncreasingCounter.baseUserInv $h1@@42 this@@121))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2131|
 :pattern ( ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42) (_module.IncreasingCounter.baseUserInv $h1@@42 this@@121))
)))
(assert (forall (($h0@@43 T@U) ($h1@@43 T@U) (this@@122 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@43) ($IsGoodHeap $h1@@43)) (and (or (not (= this@@122 null)) (not true)) (and ($Is refType this@@122 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@122 Tclass._module.IncreasingCounter $h0@@43)))) (and ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43))) (=> (forall (($o@@85 T@U) ($f@@51 T@U) ) (!  (=> (and (or (not (= $o@@85 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@85) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@85) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@43 $o@@85) $f@@51)))
 :qid |unknown.0:0|
 :skolemid |2137|
)) (= (_module.IncreasingCounter.localUserInv $h0@@43 this@@122) (_module.IncreasingCounter.localUserInv $h1@@43 this@@122))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2138|
 :pattern ( ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43) (_module.IncreasingCounter.localUserInv $h1@@43 this@@122))
)))
(assert (forall (($h0@@44 T@U) ($h1@@44 T@U) (this@@123 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@44) ($IsGoodHeap $h1@@44)) (and (or (not (= this@@123 null)) (not true)) (and ($Is refType this@@123 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@123 Tclass._module.IncreasingCounter $h0@@44)))) (and ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44))) (=> (forall (($o@@86 T@U) ($f@@52 T@U) ) (!  (=> (and (or (not (= $o@@86 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@86) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@86) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@44 $o@@86) $f@@52)))
 :qid |unknown.0:0|
 :skolemid |2144|
)) (= (_module.IncreasingCounter.userInv $h0@@44 this@@123) (_module.IncreasingCounter.userInv $h1@@44 this@@123))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2145|
 :pattern ( ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44) (_module.IncreasingCounter.userInv $h1@@44 this@@123))
)))
(assert (forall (($h0@@45 T@U) ($h1@@45 T@U) (this@@124 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@45) ($IsGoodHeap $h1@@45)) (and (or (not (= this@@124 null)) (not true)) (and ($Is refType this@@124 Tclass._module.Integer) ($IsAlloc refType this@@124 Tclass._module.Integer $h0@@45)))) (and ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45))) (=> (forall (($o@@87 T@U) ($f@@53 T@U) ) (!  (=> (and (or (not (= $o@@87 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@87) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@87) $f@@53) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@45 $o@@87) $f@@53)))
 :qid |unknown.0:0|
 :skolemid |2400|
)) (= (_module.Integer.baseUserInv $h0@@45 this@@124) (_module.Integer.baseUserInv $h1@@45 this@@124))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2401|
 :pattern ( ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45) (_module.Integer.baseUserInv $h1@@45 this@@124))
)))
(assert (forall (($h0@@46 T@U) ($h1@@46 T@U) (this@@125 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@46) ($IsGoodHeap $h1@@46)) (and (or (not (= this@@125 null)) (not true)) (and ($Is refType this@@125 Tclass._module.Integer) ($IsAlloc refType this@@125 Tclass._module.Integer $h0@@46)))) (and ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46))) (=> (forall (($o@@88 T@U) ($f@@54 T@U) ) (!  (=> (and (or (not (= $o@@88 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@88) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@88) $f@@54) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@46 $o@@88) $f@@54)))
 :qid |unknown.0:0|
 :skolemid |2407|
)) (= (_module.Integer.localUserInv $h0@@46 this@@125) (_module.Integer.localUserInv $h1@@46 this@@125))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2408|
 :pattern ( ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46) (_module.Integer.localUserInv $h1@@46 this@@125))
)))
(assert (forall (($h0@@47 T@U) ($h1@@47 T@U) (this@@126 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@47) ($IsGoodHeap $h1@@47)) (and (or (not (= this@@126 null)) (not true)) (and ($Is refType this@@126 Tclass._module.Integer) ($IsAlloc refType this@@126 Tclass._module.Integer $h0@@47)))) (and ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47))) (=> (forall (($o@@89 T@U) ($f@@55 T@U) ) (!  (=> (and (or (not (= $o@@89 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@89) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@89) $f@@55) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@47 $o@@89) $f@@55)))
 :qid |unknown.0:0|
 :skolemid |2414|
)) (= (_module.Integer.userInv $h0@@47 this@@126) (_module.Integer.userInv $h1@@47 this@@126))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2415|
 :pattern ( ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47) (_module.Integer.userInv $h1@@47 this@@126))
)))
(assert (forall (($h0@@48 T@U) ($h1@@48 T@U) (this@@127 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@48) ($IsGoodHeap $h1@@48)) (and (or (not (= this@@127 null)) (not true)) (and ($Is refType this@@127 Tclass._module.ConstantInteger) ($IsAlloc refType this@@127 Tclass._module.ConstantInteger $h0@@48)))) (and ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48))) (=> (forall (($o@@90 T@U) ($f@@56 T@U) ) (!  (=> (and (or (not (= $o@@90 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@48 $o@@90) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@48 $o@@90) $f@@56) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@48 $o@@90) $f@@56)))
 :qid |unknown.0:0|
 :skolemid |2670|
)) (= (_module.ConstantInteger.baseUserInv $h0@@48 this@@127) (_module.ConstantInteger.baseUserInv $h1@@48 this@@127))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2671|
 :pattern ( ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48) (_module.ConstantInteger.baseUserInv $h1@@48 this@@127))
)))
(assert (forall (($h0@@49 T@U) ($h1@@49 T@U) (this@@128 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@49) ($IsGoodHeap $h1@@49)) (and (or (not (= this@@128 null)) (not true)) (and ($Is refType this@@128 Tclass._module.ConstantInteger) ($IsAlloc refType this@@128 Tclass._module.ConstantInteger $h0@@49)))) (and ($IsHeapAnchor $h0@@49) ($HeapSucc $h0@@49 $h1@@49))) (=> (forall (($o@@91 T@U) ($f@@57 T@U) ) (!  (=> (and (or (not (= $o@@91 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@49 $o@@91) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@49 $o@@91) $f@@57) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@49 $o@@91) $f@@57)))
 :qid |unknown.0:0|
 :skolemid |2677|
)) (= (_module.ConstantInteger.localUserInv $h0@@49 this@@128) (_module.ConstantInteger.localUserInv $h1@@49 this@@128))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2678|
 :pattern ( ($IsHeapAnchor $h0@@49) ($HeapSucc $h0@@49 $h1@@49) (_module.ConstantInteger.localUserInv $h1@@49 this@@128))
)))
(assert (forall (($h0@@50 T@U) ($h1@@50 T@U) (this@@129 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@50) ($IsGoodHeap $h1@@50)) (and (or (not (= this@@129 null)) (not true)) (and ($Is refType this@@129 Tclass._module.ConstantInteger) ($IsAlloc refType this@@129 Tclass._module.ConstantInteger $h0@@50)))) (and ($IsHeapAnchor $h0@@50) ($HeapSucc $h0@@50 $h1@@50))) (=> (forall (($o@@92 T@U) ($f@@58 T@U) ) (!  (=> (and (or (not (= $o@@92 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@50 $o@@92) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@50 $o@@92) $f@@58) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@50 $o@@92) $f@@58)))
 :qid |unknown.0:0|
 :skolemid |2684|
)) (= (_module.ConstantInteger.userInv $h0@@50 this@@129) (_module.ConstantInteger.userInv $h1@@50 this@@129))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2685|
 :pattern ( ($IsHeapAnchor $h0@@50) ($HeapSucc $h0@@50 $h1@@50) (_module.ConstantInteger.userInv $h1@@50 this@@129))
)))
(assert (forall (($h0@@51 T@U) ($h1@@51 T@U) (this@@130 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@51) ($IsGoodHeap $h1@@51)) (and (or (not (= this@@130 null)) (not true)) (and ($Is refType this@@130 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@130 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@51)))) (and ($IsHeapAnchor $h0@@51) ($HeapSucc $h0@@51 $h1@@51))) (=> (forall (($o@@93 T@U) ($f@@59 T@U) ) (!  (=> (and (or (not (= $o@@93 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@51 $o@@93) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@51 $o@@93) $f@@59) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@51 $o@@93) $f@@59)))
 :qid |unknown.0:0|
 :skolemid |2942|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $h0@@51 this@@130) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $h1@@51 this@@130))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2943|
 :pattern ( ($IsHeapAnchor $h0@@51) ($HeapSucc $h0@@51 $h1@@51) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $h1@@51 this@@130))
)))
(assert (forall (($h0@@52 T@U) ($h1@@52 T@U) (this@@131 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@52) ($IsGoodHeap $h1@@52)) (and (or (not (= this@@131 null)) (not true)) (and ($Is refType this@@131 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@131 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@52)))) (and ($IsHeapAnchor $h0@@52) ($HeapSucc $h0@@52 $h1@@52))) (=> (forall (($o@@94 T@U) ($f@@60 T@U) ) (!  (=> (and (or (not (= $o@@94 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@52 $o@@94) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@52 $o@@94) $f@@60) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@52 $o@@94) $f@@60)))
 :qid |unknown.0:0|
 :skolemid |2949|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h0@@52 this@@131) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@52 this@@131))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2950|
 :pattern ( ($IsHeapAnchor $h0@@52) ($HeapSucc $h0@@52 $h1@@52) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $h1@@52 this@@131))
)))
(assert (forall (($h0@@53 T@U) ($h1@@53 T@U) (this@@132 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@53) ($IsGoodHeap $h1@@53)) (and (or (not (= this@@132 null)) (not true)) (and ($Is refType this@@132 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@132 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h0@@53)))) (and ($IsHeapAnchor $h0@@53) ($HeapSucc $h0@@53 $h1@@53))) (=> (forall (($o@@95 T@U) ($f@@61 T@U) ) (!  (=> (and (or (not (= $o@@95 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@53 $o@@95) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@53 $o@@95) $f@@61) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@53 $o@@95) $f@@61)))
 :qid |unknown.0:0|
 :skolemid |2956|
)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h0@@53 this@@132) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@53 this@@132))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2957|
 :pattern ( ($IsHeapAnchor $h0@@53) ($HeapSucc $h0@@53 $h1@@53) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $h1@@53 this@@132))
)))
(assert (forall ((bx@@26 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@26 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@26)) bx@@26) ($Is SetType ($Unbox SetType bx@@26) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@26 (TSet t@@5)))
)))
(assert (forall (($o@@96 T@U) ) (!  (=> ($Is refType $o@@96 Tclass._module.Thread?) ($Is refType $o@@96 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3195|
 :pattern ( ($Is refType $o@@96 Tclass._module.Thread?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.Thread?) ($IsBox bx@@27 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3193|
 :pattern ( ($IsBox bx@@27 Tclass._module.Thread?))
)))
(assert (forall (($o@@97 T@U) ) (!  (=> ($Is refType $o@@97 Tclass._module.OwnedObject?) ($Is refType $o@@97 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@97 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.OwnedObject?) ($IsBox bx@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsBox bx@@28 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@98 T@U) ) (!  (=> ($Is refType $o@@98 Tclass._module.IncreasingCounter?) ($Is refType $o@@98 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3207|
 :pattern ( ($Is refType $o@@98 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.IncreasingCounter?) ($IsBox bx@@29 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3205|
 :pattern ( ($IsBox bx@@29 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@99 T@U) ) (!  (=> ($Is refType $o@@99 Tclass._module.Integer?) ($Is refType $o@@99 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3211|
 :pattern ( ($Is refType $o@@99 Tclass._module.Integer?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.Integer?) ($IsBox bx@@30 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3209|
 :pattern ( ($IsBox bx@@30 Tclass._module.Integer?))
)))
(assert (forall (($o@@100 T@U) ) (!  (=> ($Is refType $o@@100 Tclass._module.ConstantInteger?) ($Is refType $o@@100 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3215|
 :pattern ( ($Is refType $o@@100 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.ConstantInteger?) ($IsBox bx@@31 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3213|
 :pattern ( ($IsBox bx@@31 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@101 T@U) ) (!  (=> ($Is refType $o@@101 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($Is refType $o@@101 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3219|
 :pattern ( ($Is refType $o@@101 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($IsBox bx@@32 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3217|
 :pattern ( ($IsBox bx@@32 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
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
(assert (= (Tag Tclass._module.IncreasingCounter) Tagclass._module.IncreasingCounter))
(assert (= (TagFamily Tclass._module.IncreasingCounter) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer) Tagclass._module.Integer))
(assert (= (TagFamily Tclass._module.Integer) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.ConstantInteger) Tagclass._module.ConstantInteger))
(assert (= (TagFamily Tclass._module.ConstantInteger) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
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
(assert (forall (($h@@35 T@U) ($o@@102 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@102 null)) (not true)) ($Is refType $o@@102 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@102) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1690|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@102) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@103 T@U) ) (! (= ($Is refType $o@@103 Tclass._module.Universe?)  (or (= $o@@103 null) (implements$_module.Universe (dtype $o@@103))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($Is refType $o@@103 Tclass._module.Universe?))
)))
(assert (forall (($o@@104 T@U) ) (! (= ($Is refType $o@@104 Tclass._module.Object?)  (or (= $o@@104 null) (implements$_module.Object (dtype $o@@104))))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($Is refType $o@@104 Tclass._module.Object?))
)))
(assert (forall (($o@@105 T@U) ) (! (= ($Is refType $o@@105 Tclass._module.OwnedObject?)  (or (= $o@@105 null) (implements$_module.OwnedObject (dtype $o@@105))))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($Is refType $o@@105 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@36 T@U) ($o@@106 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@106 null)) (not true)) ($Is refType $o@@106 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@106) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@106) _module.Universe.content)) (TSet Tclass._module.Object) $h@@36))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |647|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@106) _module.Universe.content)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@14 o@@6) (|Set#IsMember| b@@11 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@6))
 :pattern ( (|Set#IsMember| b@@11 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@69 T@U) ($Heap@@78 T@U) (this@@133 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@69 $Heap@@78 this@@133) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@69) ($IsGoodHeap $Heap@@78)) ($HeapSucc $prevHeap@@69 $Heap@@78)) (and (or (not (= this@@133 null)) (not true)) (and ($Is refType this@@133 Tclass._module.OwnedObject) ($IsAlloc refType this@@133 Tclass._module.OwnedObject $prevHeap@@69)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 this@@133) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@133) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@69 $Heap@@78 this@@133)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@69 $Heap@@78 this@@133)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 this@@133) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@133) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@69 $Heap@@78 this@@133) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 (_module.Object.universe this@@133)) _module.Universe.content)) ($Box refType |o#0@@8|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 |o#0@@8|) _module.OwnedObject.owner)) this@@133))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 |o#0@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#0@@8|) _module.OwnedObject.owner)) this@@133)))
 :qid |_09CounterNoStateMachinedfy.373:18|
 :skolemid |1743|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#0@@8|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 |o#0@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 |o#0@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 (_module.Object.universe this@@133)) _module.Universe.content)) ($Box refType |o#0@@8|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 this@@133) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 this@@133) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@69 this@@133) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@133) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_09CounterNoStateMachinedfy.366:22|
 :skolemid |1745|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@69 $Heap@@78 this@@133) ($IsGoodHeap $Heap@@78))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@79 T@U) (this@@134 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@79 this@@134) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@79) (and (or (not (= this@@134 null)) (not true)) (and ($Is refType this@@134 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@134 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@79)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@79 this@@134)  (and true (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@134) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@134) _module.ClaimIncreasingCounterGreaterThanConstant.constant))) _module.ConstantInteger.value)))))))
 :qid |_09CounterNoStateMachinedfy.640:19|
 :skolemid |2953|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@79 this@@134) ($IsGoodHeap $Heap@@79))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@70 T@U) ($Heap@@80 T@U) (this@@135 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv2#canCall| $prevHeap@@70 $Heap@@80 this@@135) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@70) ($IsGoodHeap $Heap@@80)) ($HeapSucc $prevHeap@@70 $Heap@@80)) (and (or (not (= this@@135 null)) (not true)) (and ($Is refType this@@135 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@135 Tclass._module.IncreasingCounter $prevHeap@@70)))))) (=> (_module.IncreasingCounter.userInv2 $prevHeap@@70 $Heap@@80 this@@135) (_module.IncreasingCounter.localUserInv2 $prevHeap@@70 $Heap@@80 this@@135)))
 :qid |_09CounterNoStateMachinedfy.512:22|
 :skolemid |2161|
 :pattern ( (_module.IncreasingCounter.userInv2 $prevHeap@@70 $Heap@@80 this@@135))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@71 T@U) ($Heap@@81 T@U) (this@@136 T@U) ) (!  (=> (or (|_module.Integer.userInv2#canCall| $prevHeap@@71 $Heap@@81 this@@136) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@71) ($IsGoodHeap $Heap@@81)) ($HeapSucc $prevHeap@@71 $Heap@@81)) (and (or (not (= this@@136 null)) (not true)) (and ($Is refType this@@136 Tclass._module.Integer) ($IsAlloc refType this@@136 Tclass._module.Integer $prevHeap@@71)))))) (=> (_module.Integer.userInv2 $prevHeap@@71 $Heap@@81 this@@136) (_module.Integer.localUserInv2 $prevHeap@@71 $Heap@@81 this@@136)))
 :qid |_09CounterNoStateMachinedfy.557:22|
 :skolemid |2431|
 :pattern ( (_module.Integer.userInv2 $prevHeap@@71 $Heap@@81 this@@136))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@72 T@U) ($Heap@@82 T@U) (this@@137 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@72 $Heap@@82 this@@137) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@72) ($IsGoodHeap $Heap@@82)) ($HeapSucc $prevHeap@@72 $Heap@@82)) (and (or (not (= this@@137 null)) (not true)) (and ($Is refType this@@137 Tclass._module.ConstantInteger) ($IsAlloc refType this@@137 Tclass._module.ConstantInteger $prevHeap@@72)))))) (=> (_module.ConstantInteger.userInv2 $prevHeap@@72 $Heap@@82 this@@137) (_module.ConstantInteger.localUserInv2 $prevHeap@@72 $Heap@@82 this@@137)))
 :qid |_09CounterNoStateMachinedfy.602:22|
 :skolemid |2701|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@72 $Heap@@82 this@@137))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@73 T@U) ($Heap@@83 T@U) (this@@138 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv2#canCall| $prevHeap@@73 $Heap@@83 this@@138) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@73) ($IsGoodHeap $Heap@@83)) ($HeapSucc $prevHeap@@73 $Heap@@83)) (and (or (not (= this@@138 null)) (not true)) (and ($Is refType this@@138 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@138 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $prevHeap@@73)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@73 $Heap@@83 this@@138) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv2 $prevHeap@@73 $Heap@@83 this@@138)))
 :qid |_09CounterNoStateMachinedfy.651:22|
 :skolemid |2973|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv2 $prevHeap@@73 $Heap@@83 this@@138))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@74 T@U) ($Heap@@84 T@U) (this@@139 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@74 $Heap@@84 this@@139) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@74) ($IsGoodHeap $Heap@@84)) ($HeapSucc $prevHeap@@74 $Heap@@84)) (and (or (not (= this@@139 null)) (not true)) (and ($Is refType this@@139 Tclass._module.OwnedObject) ($IsAlloc refType this@@139 Tclass._module.OwnedObject $prevHeap@@74)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@74 $Heap@@84 this@@139) (_module.OwnedObject.localUserInv2 $prevHeap@@74 $Heap@@84 this@@139)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |1836|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@74 $Heap@@84 this@@139))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@85 T@U) (this@@140 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@85 this@@140) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@85) (and (or (not (= this@@140 null)) (not true)) (and ($Is refType this@@140 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@140 Tclass._module.IncreasingCounter $Heap@@85)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@85 this@@140)) (= (_module.IncreasingCounter.userInv $Heap@@85 this@@140)  (and true (_module.IncreasingCounter.localUserInv $Heap@@85 this@@140)))))
 :qid |_09CounterNoStateMachinedfy.505:19|
 :skolemid |2148|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@85 this@@140) ($IsGoodHeap $Heap@@85))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@86 T@U) (this@@141 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@86 this@@141) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@86) (and (or (not (= this@@141 null)) (not true)) (and ($Is refType this@@141 Tclass._module.Integer) ($IsAlloc refType this@@141 Tclass._module.Integer $Heap@@86)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Integer.localUserInv#canCall| $Heap@@86 this@@141)) (= (_module.Integer.userInv $Heap@@86 this@@141)  (and true (_module.Integer.localUserInv $Heap@@86 this@@141)))))
 :qid |_09CounterNoStateMachinedfy.550:19|
 :skolemid |2418|
 :pattern ( (_module.Integer.userInv $Heap@@86 this@@141) ($IsGoodHeap $Heap@@86))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@87 T@U) (this@@142 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@87 this@@142) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@87) (and (or (not (= this@@142 null)) (not true)) (and ($Is refType this@@142 Tclass._module.ConstantInteger) ($IsAlloc refType this@@142 Tclass._module.ConstantInteger $Heap@@87)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv#canCall| $Heap@@87 this@@142)) (= (_module.ConstantInteger.userInv $Heap@@87 this@@142)  (and true (_module.ConstantInteger.localUserInv $Heap@@87 this@@142)))))
 :qid |_09CounterNoStateMachinedfy.595:19|
 :skolemid |2688|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@87 this@@142) ($IsGoodHeap $Heap@@87))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@88 T@U) (this@@143 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@88 this@@143) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@88) (and (or (not (= this@@143 null)) (not true)) (and ($Is refType this@@143 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@143 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@88)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@88 this@@143)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@88 this@@143)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@88 this@@143)))))
 :qid |_09CounterNoStateMachinedfy.643:19|
 :skolemid |2960|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@88 this@@143) ($IsGoodHeap $Heap@@88))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@89 T@U) (this@@144 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@89 this@@144) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@89) (and (or (not (= this@@144 null)) (not true)) (and ($Is refType this@@144 Tclass._module.Thread) ($IsAlloc refType this@@144 Tclass._module.Thread $Heap@@89)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@89 this@@144)) (= (_module.Thread.localInv $Heap@@89 this@@144)  (and true (_module.Object.baseInv $Heap@@89 this@@144)))))
 :qid |_09CounterNoStateMachinedfy.290:19|
 :skolemid |1401|
 :pattern ( (_module.Thread.localInv $Heap@@89 this@@144) ($IsGoodHeap $Heap@@89))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@90 T@U) (this@@145 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@90 this@@145) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@90) (and (or (not (= this@@145 null)) (not true)) (and ($Is refType this@@145 Tclass._module.Thread) ($IsAlloc refType this@@145 Tclass._module.Thread $Heap@@90)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@90 this@@145)) (= (_module.Thread.inv $Heap@@90 this@@145)  (and true (_module.Thread.localInv $Heap@@90 this@@145)))))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1409|
 :pattern ( (_module.Thread.inv $Heap@@90 this@@145) ($IsGoodHeap $Heap@@90))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@91 T@U) (this@@146 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@91 this@@146) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@91) (and (or (not (= this@@146 null)) (not true)) (and ($Is refType this@@146 Tclass._module.Object) ($IsAlloc refType this@@146 Tclass._module.Object $Heap@@91)))))) (= (_module.Object.triggerAxioms $Heap@@91 this@@146)  (and (or ($Is refType this@@146 Tclass._module.OwnedObject) ($Is refType this@@146 Tclass._module.Thread)) (not (and ($Is refType this@@146 Tclass._module.OwnedObject) ($Is refType this@@146 Tclass._module.Thread))))))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1311|
 :pattern ( (_module.Object.triggerAxioms $Heap@@91 this@@146) ($IsGoodHeap $Heap@@91))
))))
(assert (forall (($h@@37 T@U) ($o@@107 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@107 null)) (not true)) ($Is refType $o@@107 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@107) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@107) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@75 T@U) ($Heap@@92 T@U) (this@@147 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@75 $Heap@@92 this@@147) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@75) ($IsGoodHeap $Heap@@92)) ($HeapSucc $prevHeap@@75 $Heap@@92)) (and (or (not (= this@@147 null)) (not true)) (and ($Is refType this@@147 Tclass._module.Universe) ($IsAlloc refType this@@147 Tclass._module.Universe $prevHeap@@75)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@75 $Heap@@92 this@@147)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@147) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 this@@147) _module.Universe.content))) (forall ((|o#0@@9| T@U) ) (!  (=> (and ($Is refType |o#0@@9| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@147) _module.Universe.content)) ($Box refType |o#0@@9|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 this@@147) _module.Universe.content)) ($Box refType |o#0@@9|)))) (not ($IsAllocBox ($Box refType |o#0@@9|) Tclass._module.Object $prevHeap@@75)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |692|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 this@@147) _module.Universe.content)) ($Box refType |o#0@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@147) _module.Universe.content)) ($Box refType |o#0@@9|)))
))) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@147) _module.Universe.content)) ($Box refType |o#1@@3|))) (or (forall (($o@@108 T@U) ($f@@62 T@U) ) (!  (=> (or (not (= $o@@108 null)) (not true)) (=> (= $o@@108 |o#1@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 $o@@108) $f@@62) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 $o@@108) $f@@62))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |693|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 $o@@108) $f@@62))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 |o#1@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 |o#1@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |694|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@92 |o#1@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 |o#1@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@147) _module.Universe.content)) ($Box refType |o#1@@3|)))
)))))
 :qid |_09CounterNoStateMachinedfy.52:22|
 :skolemid |697|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@75 $Heap@@92 this@@147) ($IsGoodHeap $Heap@@92))
))))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@76 T@U) ($Heap@@93 T@U) (this@@148 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@76 $Heap@@93 this@@148 |running#0@@2|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@76) ($IsGoodHeap $Heap@@93)) ($HeapSucc $prevHeap@@76 $Heap@@93)) (and (or (not (= this@@148 null)) (not true)) (and ($Is refType this@@148 Tclass._module.Universe) ($IsAlloc refType this@@148 Tclass._module.Universe $prevHeap@@76)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@76 $Heap@@93 this@@148) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@76 $Heap@@93 this@@148) (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@76 this@@148) (=> (_module.Universe.globalBaseInv $prevHeap@@76 this@@148) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@93 this@@148) (=> (_module.Universe.globalBaseInv $Heap@@93 this@@148) (forall ((|o#0@@10| T@U) ) (!  (=> ($Is refType |o#0@@10| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#0@@10|)) (|_module.Object.transitiveInv2#canCall| $prevHeap@@76 $Heap@@93 |o#0@@10|)))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |715|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@76 $Heap@@93 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#0@@10|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@76 $Heap@@93 this@@148 |running#0@@2|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@76 $Heap@@93 this@@148) (_module.Universe.globalBaseInv $prevHeap@@76 this@@148)) (_module.Universe.globalBaseInv $Heap@@93 this@@148)) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#0@@11|))) (_module.Object.transitiveInv2 $prevHeap@@76 $Heap@@93 |o#0@@11|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |713|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@76 $Heap@@93 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#0@@11|)))
))) (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#1@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@76)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@93 |o#1@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |714|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@93 |o#1@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 |o#1@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@76 this@@148) _module.Universe.content)) ($Box refType |o#1@@4|)))
))))))
 :qid |_09CounterNoStateMachinedfy.68:22|
 :skolemid |717|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@76 $Heap@@93 this@@148 |running#0@@2|) ($IsGoodHeap $Heap@@93))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@94 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0@@3| () T@U)
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
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$Frame$loop#0@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |defass#initial_value#0_0@0| () Bool)
(declare-fun |initial_value#0_0@0| () T@U)
(declare-fun |defass#claim1#0_0@0| () Bool)
(declare-fun |claim1#0_0@0| () T@U)
(declare-fun |defass#initial_value_plus_one#0_0@0| () Bool)
(declare-fun |initial_value_plus_one#0_0@0| () T@U)
(declare-fun |defass#claim2#0_0@0| () Bool)
(declare-fun |claim2#0_0@0| () T@U)
(declare-fun |defass#final_value#0_0@0| () Bool)
(declare-fun |final_value#0_0@0| () T@U)
(declare-fun |i#0@1| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |value##0_0@1| () Int)
(declare-fun call4formal@this () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun call5formal@this () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun call5formal@this@0 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |$rhs#0_2@1| () Int)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |value##0_1@1| () Int)
(declare-fun call4formal@this@@0 () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun call4formal@this@0@@0 () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun call5formal@this@@0 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun call5formal@this@0@@0 () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun |value##0_2@1| () Int)
(declare-fun call4formal@this@@1 () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun call4formal@this@0@@1 () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun $Heap@26 () T@U)
(declare-fun $Heap@27 () T@U)
(declare-fun $Heap@28 () T@U)
(declare-fun $Heap@29 () T@U)
(declare-fun $Heap@30 () T@U)
(declare-fun |i#0@2| () Int)
(declare-fun $Heap@31 () T@U)
(declare-fun $Heap@32 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Incrementer_split264)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@94) ($IsHeapAnchor $Heap@@94)) (=> (and (and (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@94)) (and ($Is refType |running#0@@3| Tclass._module.Thread) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@94))) (and (and ($Is refType |counter#0| Tclass._module.IncreasingCounter) ($IsAlloc refType |counter#0| Tclass._module.IncreasingCounter $Heap@@94)) (and ($Is refType |remaining#0| Tclass._module.Integer) ($IsAlloc refType |remaining#0| Tclass._module.Integer $Heap@@94)))) (and (and (and (=> |defass#initial_value#0_0| (and ($Is refType |initial_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value#0_0| Tclass._module.ConstantInteger $Heap@@94))) true) (and (=> |defass#claim1#0_0| (and ($Is refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@94))) true)) (and (and (=> |defass#initial_value_plus_one#0_0| (and ($Is refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger $Heap@@94))) true) (and (=> |defass#claim2#0_0| (and ($Is refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@94))) true)))) (=> (and (and (and (and (and (and (and (and (and (and (=> |defass#final_value#0_0| (and ($Is refType |final_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |final_value#0_0| Tclass._module.ConstantInteger $Heap@@94))) true) (= 14 $FunctionContextHeight)) (and (|_module.Universe.globalInv#canCall| $Heap@@94 |universe#0|) (and (_module.Universe.globalInv $Heap@@94 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@94 |universe#0|) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.inv $Heap@@94 |o#10|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |513|
 :pattern ( (_module.Object.inv $Heap@@94 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#10|)))
)))))) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |remaining#0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |remaining#0|) _module.OwnedObject.owner)) |running#0@@3|)))) (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |remaining#0|) _module.Integer.value))) (LitInt 10)) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@94 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content))))) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@109 T@U) ($f@@63 T@U) ) (!  (=> (and (and (or (not (= $o@@109 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 $o@@109) alloc)))) (or (= $o@@109 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType $o@@109)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@109 $f@@63)))
 :qid |_09CounterNoStateMachinedfy.700:24|
 :skolemid |527|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@@94 |universe#0|) (or (_module.Universe.globalInv $Heap@@94 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@94 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@94 |universe#0|) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (= (_module.Object.universe |o#0@@12|) |universe#0|) (or (not (= |o#0@@12| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@12|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@@94 |universe#0|) (or (_module.Universe.globalInv $Heap@@94 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@94 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@94 |universe#0|) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@5|))) (_module.Object.triggerAxioms $Heap@@94 |o#1@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@@94 |o#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@5|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@@94 |universe#0|) (or (_module.Universe.globalInv $Heap@@94 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (_module.Object.inv $Heap@@94 |o#2|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@@94 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))))) (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (and (_module.Universe.globalInv $Heap@0 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|))) (_module.Object.inv $Heap@0 |o#5|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@0 |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@94 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) |running#0@@3|))))) (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@94 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@@94 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@@94 $Heap@0 |universe#0|) (_module.Universe.globalBaseInv $Heap@@94 |universe#0|)) (_module.Universe.globalBaseInv $Heap@0 |universe#0|)) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#12|))) (_module.Object.transitiveInv2 $Heap@@94 $Heap@0 |o#12|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@94 $Heap@0 |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#12|)))
))) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#13|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@94)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#13|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#13|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |o#13|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType |o#13|)))
))))) (forall (($o@@110 T@U) ) (!  (=> (and (or (not (= $o@@110 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 $o@@110) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@110) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 $o@@110)) (or (= $o@@110 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType $o@@110)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@110))
))) (and (and ($HeapSucc $Heap@@94 $Heap@0) (= |i#0@0| (LitInt 0))) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0)))))) (and (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall ((|o#1@@6| T@U) ) (!  (=> ($Is refType |o#1@@6| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|)) (=> (=> ($Is refType |o#1@@6| Tclass._module.OwnedObject) (and (forall (($o@@111 T@U) ($f@@64 T@U) ) (!  (=> (or (not (= $o@@111 null)) (not true)) (=> (= $o@@111 |o#1@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@111) $f@@64) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@111) $f@@64))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@111) $f@@64))
)) (forall ((|x#2| T@U) ) (!  (=> (and ($Is refType |x#2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe |o#1@@6|)) _module.Universe.content)) ($Box refType |x#2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.owner)) |o#1@@6|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.owner)) |o#1@@6|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe |o#1@@6|)) _module.Universe.content)) ($Box refType |x#2|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@0 $Heap@0 |o#1@@6|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@0 $Heap@0 |o#1@@6|))
 :pattern ( (_module.Object.universe |o#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|)))
))) (and (and (forall ((|o#1@@7| T@U) ) (!  (=> (and ($Is refType |o#1@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|))) (=> (=> ($Is refType |o#1@@7| Tclass._module.OwnedObject) (and (forall (($o@@112 T@U) ($f@@65 T@U) ) (!  (=> (or (not (= $o@@112 null)) (not true)) (=> (= $o@@112 |o#1@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@112) $f@@65) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@112) $f@@65))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@112) $f@@65))
)) (forall ((|x#2@@0| T@U) ) (!  (=> (and ($Is refType |x#2@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe |o#1@@7|)) _module.Universe.content)) ($Box refType |x#2@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@7|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@7|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe |o#1@@7|)) _module.Universe.content)) ($Box refType |x#2@@0|)))
)))) (_module.Object.transitiveInv2 $Heap@0 $Heap@0 |o#1@@7|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@0 $Heap@0 |o#1@@7|))
 :pattern ( (_module.Object.universe |o#1@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|)))
)) (= $Heap@0 $Heap@1)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@0) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@0)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 |universe#0|) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|)))) (not ($IsAllocBox ($Box refType |o#0@@13|) Tclass._module.Object $Heap@0)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 |universe#0|) (forall ((|o#1@@8| T@U) ) (!  (=> (and ($Is refType |o#1@@8| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@8|))) (or (forall (($o@@113 T@U) ($f@@66 T@U) ) (!  (=> (or (not (= $o@@113 null)) (not true)) (=> (= $o@@113 |o#1@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@113) $f@@66) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@113) $f@@66))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@113) $f@@66))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#1@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#1@@8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#1@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#1@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@8|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (and (= (_module.Object.universe |o#2@@0|) |universe#0|) (or (not (= |o#2@@0| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (_module.Object.triggerAxioms $Heap@0 |o#3|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4|))) (and (= (_module.Object.universe |o#4|) |universe#0|) (or (not (= |o#4| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|))) (_module.Object.triggerAxioms $Heap@1 |o#5@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.transitiveInv2 $Heap@0 $Heap@1 |o#6|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@0 $Heap@1 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.owner) Tclass._module.Object $Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#7|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#7|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8|))) (and (= (_module.Object.universe |o#8|) |universe#0|) (or (not (= |o#8| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#9|))) (_module.Object.triggerAxioms $Heap@0 |o#9|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (forall ((|o#10@@0| T@U) ) (!  (=> (and ($Is refType |o#10@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@0|))) (_module.Object.inv $Heap@0 |o#10@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@0 |o#10@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@0|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#11|))) (and (= (_module.Object.universe |o#11|) |universe#0|) (or (not (= |o#11| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#12@@0| T@U) ) (!  (=> (and ($Is refType |o#12@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|))) (_module.Object.triggerAxioms $Heap@1 |o#12@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#12@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@0|))) (and (or (forall (($o@@114 T@U) ($f@@67 T@U) ) (!  (=> (or (not (= $o@@114 null)) (not true)) (=> (= $o@@114 |o#13@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@114) $f@@67) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@114) $f@@67))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@114) $f@@67))
)) (_module.Object.inv $Heap@1 |o#13@@0|)) (or (forall (($o@@115 T@U) ($f@@68 T@U) ) (!  (=> (or (not (= $o@@115 null)) (not true)) (=> (= $o@@115 |o#13@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@115) $f@@68) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@115) $f@@68))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@115) $f@@68))
)) (_module.Object.inv2 $Heap@0 $Heap@1 |o#13@@0|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@0 $Heap@1 |o#13@@0|))
 :pattern ( (_module.Object.inv $Heap@1 |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#14|))))) (_module.Object.inv $Heap@1 |o#14|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@1 |o#14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)))
))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (|_module.Universe.globalInv#canCall| $Heap@1 |universe#0|) (=> (_module.Universe.globalInv $Heap@1 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@0 $Heap@1 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@1 |universe#0|) (and (_module.Universe.globalInv $Heap@1 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#17| T@U) ) (!  (=> (and ($Is refType |o#17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#17|))) (_module.Object.inv $Heap@1 |o#17|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@1 |o#17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#17|)))
)))))))))) (and (and (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@0 $Heap@1 |universe#0|) (and (_module.Universe.globalInv2 $Heap@0 $Heap@1 |universe#0|) (and true (forall ((|o#18| T@U) ) (!  (=> (and ($Is refType |o#18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#18|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)) (_module.Object.inv2 $Heap@0 $Heap@1 |o#18|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@0 $Heap@1 |o#18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)))
))))) (= $Heap@1 $Heap@2)) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@116 T@U) ($f@@69 T@U) ) (!  (=> (and (and (or (not (= $o@@116 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@116) alloc)))) (or (= $o@@116 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType $o@@116)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@116 $f@@69)))
 :qid |_09CounterNoStateMachinedfy.707:24|
 :skolemid |530|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (= (_module.Object.universe |o#0@@14|) |universe#0|) (or (not (= |o#0@@14| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#1@@9| T@U) ) (!  (=> (and ($Is refType |o#1@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@9|))) (_module.Object.triggerAxioms $Heap@2 |o#1@@9|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#1@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@9|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (forall ((|o#2@@1| T@U) ) (!  (=> (and ($Is refType |o#2@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|))) (_module.Object.inv $Heap@2 |o#2@@1|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@2 |o#2@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (and (_module.Universe.globalInv $Heap@3 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@3 |universe#0|) (forall ((|o#5@@1| T@U) ) (!  (=> (and ($Is refType |o#5@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|))) (_module.Object.inv $Heap@3 |o#5@@1|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@3 |o#5@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@2 $Heap@3 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) |running#0@@3|)))))) (and (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@2 $Heap@3 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@2 $Heap@3 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@2 $Heap@3 |universe#0|) (_module.Universe.globalBaseInv $Heap@2 |universe#0|)) (_module.Universe.globalBaseInv $Heap@3 |universe#0|)) (forall ((|o#12@@1| T@U) ) (!  (=> (and ($Is refType |o#12@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|))) (_module.Object.transitiveInv2 $Heap@2 $Heap@3 |o#12@@1|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@2 $Heap@3 |o#12@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|)))
))) (forall ((|o#13@@1| T@U) ) (!  (=> (and ($Is refType |o#13@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.owner) Tclass._module.Object $Heap@2)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#13@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#13@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#13@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@1|)))
))))) (forall (($o@@117 T@U) ) (!  (=> (and (or (not (= $o@@117 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@117) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@117) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@117)) (or (= $o@@117 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType $o@@117)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@117))
))) (and ($HeapSucc $Heap@2 $Heap@3) (or (not (= |universe#0| null)) (not true)))) (and (and (forall (($o@@118 T@U) ($f@@70 T@U) ) (!  (=> (and (and (or (not (= $o@@118 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@118) alloc)))) (or (= $o@@118 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType $o@@118)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@118 $f@@70)))
 :qid |_09CounterNoStateMachinedfy.710:3|
 :skolemid |531|
)) (= |$Frame$loop#0@0| (|lambda#0| null $Heap@3 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content))))) (and (= |$decr_init$loop#00@0| (- 10 |i#0@0|)) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@3 |universe#0|) (forall ((|o#16| T@U) ) (!  (=> (and ($Is refType |o#16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#16|))) (and (= (_module.Object.universe |o#16|) |universe#0|) (or (not (= |o#16| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |532|
 :pattern ( (_module.Object.universe |o#16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#16|)))
)))))))))) (and (and (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@3 |universe#0|) (forall ((|o#17@@0| T@U) ) (!  (=> (and ($Is refType |o#17@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|))) (_module.Object.triggerAxioms $Heap@3 |o#17@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |533|
 :pattern ( (_module.Object.triggerAxioms $Heap@3 |o#17@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|)))
))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (forall ((|o#18@@0| T@U) ) (!  (=> (and ($Is refType |o#18@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|))) (_module.Object.inv $Heap@3 |o#18@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |536|
 :pattern ( (_module.Object.inv $Heap@3 |o#18@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|)))
)))))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@3 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@3 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)))))) (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@3 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@3 |universe#0|) (forall ((|o#19| T@U) ) (!  (=> (and ($Is refType |o#19| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19|)))) (not ($IsAllocBox ($Box refType |o#19|) Tclass._module.Object $Heap@3)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |538|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19|)))
))))))) (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@3 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@3 |universe#0|) (forall ((|o#20| T@U) ) (!  (=> (and ($Is refType |o#20| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20|))) (or (forall (($o@@119 T@U) ($f@@71 T@U) ) (!  (=> (or (not (= $o@@119 null)) (not true)) (=> (= $o@@119 |o#20|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@119) $f@@71) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@119) $f@@71))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@119) $f@@71))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |540|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20|)))
))))) (=> |$w$loop#0@0| (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |remaining#0|) _module.OwnedObject.owner)) |running#0@@3|))) (and (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@0|)) (=> |$w$loop#0@0| (= (+ |i#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |remaining#0|) _module.Integer.value)))) (LitInt 10)))))) (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> |defass#initial_value#0_0@0| (and ($Is refType |initial_value#0_0@0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value#0_0@0| Tclass._module.ConstantInteger $Heap@4)))) (and (and (=> |defass#claim1#0_0@0| (and ($Is refType |claim1#0_0@0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim1#0_0@0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@4))) (=> |defass#initial_value_plus_one#0_0@0| (and ($Is refType |initial_value_plus_one#0_0@0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value_plus_one#0_0@0| Tclass._module.ConstantInteger $Heap@4)))) (and (=> |defass#claim2#0_0@0| (and ($Is refType |claim2#0_0@0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim2#0_0@0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@4))) (=> |defass#final_value#0_0@0| (and ($Is refType |final_value#0_0@0| Tclass._module.ConstantInteger) ($IsAlloc refType |final_value#0_0@0| Tclass._module.ConstantInteger $Heap@4)))))))))) (and (and (and (and (and (and (and (and (not false) (and (<= 0 |i#0@1|) (< |i#0@1| 11))) (= |$decr_init$loop#00@0| 10)) (=> |$w$loop#0@0| (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|))) (and (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#16@@0| T@U) ) (!  (=> (and ($Is refType |o#16@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#16@@0|))) (and (= (_module.Object.universe |o#16@@0|) |universe#0|) (or (not (= |o#16@@0| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |532|
 :pattern ( (_module.Object.universe |o#16@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#16@@0|)))
))))))) (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#17@@1| T@U) ) (!  (=> (and ($Is refType |o#17@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@1|))) (_module.Object.triggerAxioms $Heap@4 |o#17@@1|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |533|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#17@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@1|)))
))))))))) (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (forall ((|o#18@@1| T@U) ) (!  (=> (and ($Is refType |o#18@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@1|))) (_module.Object.inv $Heap@4 |o#18@@1|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |536|
 :pattern ( (_module.Object.inv $Heap@4 |o#18@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@1|)))
))))) (=> |$w$loop#0@0| (and (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (and (_module.Universe.globalInv $Heap@4 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#18@@2| T@U) ) (!  (=> (and ($Is refType |o#18@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@2|))) (_module.Object.inv $Heap@4 |o#18@@2|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@4 |o#18@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@2|)))
))))))) (and (=> |$w$loop#0@0| (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0|)) (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@4 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content))))))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@4 |universe#0|) (forall ((|o#19@@0| T@U) ) (!  (=> (and ($Is refType |o#19@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|)))) (not ($IsAllocBox ($Box refType |o#19@@0|) Tclass._module.Object $Heap@3)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |538|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|)))
))))) (=> |$w$loop#0@0| (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@4 |universe#0|) (forall ((|o#20@@0| T@U) ) (!  (=> (and ($Is refType |o#20@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20@@0|))) (or (forall (($o@@120 T@U) ($f@@72 T@U) ) (!  (=> (or (not (= $o@@120 null)) (not true)) (=> (= $o@@120 |o#20@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@120) $f@@72) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@120) $f@@72))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@120) $f@@72))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#20@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |540|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#20@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20@@0|)))
)))))) (and (=> |$w$loop#0@0| (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0|) (and (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@4 |universe#0|) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content))) (forall ((|o#19@@1| T@U) ) (!  (=> (and ($Is refType |o#19@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@1|)))) (not ($IsAllocBox ($Box refType |o#19@@1|) Tclass._module.Object $Heap@3)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |541|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@1|)))
))) (forall ((|o#20@@1| T@U) ) (!  (=> (and ($Is refType |o#20@@1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20@@1|))) (or (forall (($o@@121 T@U) ($f@@73 T@U) ) (!  (=> (or (not (= $o@@121 null)) (not true)) (=> (= $o@@121 |o#20@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@121) $f@@73) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@121) $f@@73))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@121) $f@@73))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#20@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |543|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#20@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#20@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#20@@1|)))
)))))) (=> |$w$loop#0@0| (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |remaining#0|) _module.OwnedObject.owner)) |running#0@@3|)))) (and (and (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@1|)) (=> |$w$loop#0@0| (= (+ |i#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |remaining#0|) _module.Integer.value)))) (LitInt 10)))) (and (forall (($o@@122 T@U) ) (!  (=> (and (or (not (= $o@@122 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 $o@@122) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@122) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@122)) (or (= $o@@122 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 |universe#0|) _module.Universe.content)) ($Box refType $o@@122)))))
 :qid |_09CounterNoStateMachinedfy.710:3|
 :skolemid |544|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@122))
)) ($HeapSucc $Heap@3 $Heap@4))))) (and (and (and (and (and (forall (($o@@123 T@U) ($f@@74 T@U) ) (!  (=> (and (or (not (= $o@@123 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@123) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@123) $f@@74) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@123) $f@@74)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@123 $f@@74))))
 :qid |_09CounterNoStateMachinedfy.710:3|
 :skolemid |545|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@123) $f@@74))
)) (<= (- 10 |i#0@1|) |$decr_init$loop#00@0|)) (and |$w$loop#0@0| (< |i#0@1| 10))) (and (and (= |$decr$loop#00@1| (- 10 |i#0@1|)) (or (not (= |counter#0| null)) (not true))) (and (= |value##0_0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |counter#0|) _module.IncreasingCounter.value)))) (forall (($o@@124 T@U) ($f@@75 T@U) ) (!  (=> (and (and (or (not (= $o@@124 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@124) alloc)))) (= $o@@124 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@124 $f@@75)))
 :qid |_09CounterNoStateMachinedfy.718:26|
 :skolemid |547|
))))) (and (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this Tclass._module.ConstantInteger $Heap@@94))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#0@@15| T@U) ) (!  (=> (and ($Is refType |o#0@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|))) (and (= (_module.Object.universe |o#0@@15|) |universe#0|) (or (not (= |o#0@@15| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |2878|
 :pattern ( (_module.Object.universe |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#1@@10| T@U) ) (!  (=> (and ($Is refType |o#1@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@10|))) (_module.Object.triggerAxioms $Heap@4 |o#1@@10|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |2879|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#1@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@10|)))
)))))))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (forall ((|o#2@@2| T@U) ) (!  (=> (and ($Is refType |o#2@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|))) (_module.Object.inv $Heap@4 |o#2@@2|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |2882|
 :pattern ( (_module.Object.inv $Heap@4 |o#2@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))) (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9))))) (and (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this@0 Tclass._module.ConstantInteger $Heap@9))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@9 call4formal@this@0) (=> (_module.Object.objectGlobalInv $Heap@9 call4formal@this@0) (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@9 |universe#0|)))) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@9 call4formal@this@0) (and (_module.Object.objectGlobalInv $Heap@9 call4formal@this@0) (and (_module.Object.baseInv $Heap@9 call4formal@this@0) (_module.Universe.globalInv $Heap@9 (_module.Object.universe call4formal@this@0))))) (and (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@9 |universe#0|) (and (_module.Universe.globalInv2 $Heap@4 $Heap@9 |universe#0|) (and true (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)) (_module.Object.inv2 $Heap@4 $Heap@9 |o#8@@0|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |2895|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@9 |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
))))))) (and (and (and (= (_module.Object.universe call4formal@this@0) |universe#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call4formal@this@0) _module.OwnedObject.owner)) |running#0@@3|)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call4formal@this@0) _module.ConstantInteger.value))) |value##0_0@1|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0)))))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call4formal@this@0) alloc)))) (forall (($o@@125 T@U) ) (!  (=> (and (or (not (= $o@@125 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@125) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@125) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@125)) (= $o@@125 |universe#0|)))
 :qid |_09CounterNoStateMachinedfy.608:3|
 :skolemid |2896|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@125))
))) (and ($HeapSucc $Heap@4 $Heap@9) (forall (($o@@126 T@U) ($f@@76 T@U) ) (!  (=> (and (and (or (not (= $o@@126 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@126) alloc)))) (= $o@@126 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@126 $f@@76)))
 :qid |_09CounterNoStateMachinedfy.719:19|
 :skolemid |549|
)))))))) (and (and (and (and (and (and (or (not (= call5formal@this null)) (not true)) (and ($Is refType call5formal@this Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType call5formal@this Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@94))) (=> (|_module.Universe.globalInv#canCall| $Heap@9 |universe#0|) (or (_module.Universe.globalInv $Heap@9 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@9 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@9 |universe#0|) (forall ((|o#0@@16| T@U) ) (!  (=> (and ($Is refType |o#0@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@16|))) (and (= (_module.Object.universe |o#0@@16|) |universe#0|) (or (not (= |o#0@@16| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |3150|
 :pattern ( (_module.Object.universe |o#0@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@16|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@9 |universe#0|) (or (_module.Universe.globalInv $Heap@9 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@9 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@9 |universe#0|) (forall ((|o#1@@11| T@U) ) (!  (=> (and ($Is refType |o#1@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@11|))) (_module.Object.triggerAxioms $Heap@9 |o#1@@11|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |3151|
 :pattern ( (_module.Object.triggerAxioms $Heap@9 |o#1@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@11|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@9 |universe#0|) (or (_module.Universe.globalInv $Heap@9 |universe#0|) (forall ((|o#2@@3| T@U) ) (!  (=> (and ($Is refType |o#2@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|))) (_module.Object.inv $Heap@9 |o#2@@3|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |3154|
 :pattern ( (_module.Object.inv $Heap@9 |o#2@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|)))
)))))) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType call4formal@this@0)) (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |counter#0|) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call4formal@this@0) _module.ConstantInteger.value)))))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (or (not (= call5formal@this@0 null)) (not true)) (and ($Is refType call5formal@this@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType call5formal@this@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@10)))))) (and (and (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@10 call5formal@this@0) (=> (_module.Object.objectGlobalInv $Heap@10 call5formal@this@0) (|_module.Universe.globalInv2#canCall| $Heap@9 $Heap@10 |universe#0|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@10 call5formal@this@0) (and (_module.Object.objectGlobalInv $Heap@10 call5formal@this@0) (and (_module.Object.baseInv $Heap@10 call5formal@this@0) (_module.Universe.globalInv $Heap@10 (_module.Object.universe call5formal@this@0)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@9 $Heap@10 |universe#0|) (and (_module.Universe.globalInv2 $Heap@9 $Heap@10 |universe#0|) (and true (forall ((|o#8@@1| T@U) ) (!  (=> (and ($Is refType |o#8@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)) (_module.Object.inv2 $Heap@9 $Heap@10 |o#8@@1|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |3167|
 :pattern ( (_module.Object.inv2 $Heap@9 $Heap@10 |o#8@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)))
))))) (and (= (_module.Object.universe call5formal@this@0) |universe#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call5formal@this@0) _module.OwnedObject.owner)) |running#0@@3|)))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call5formal@this@0) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) |counter#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call5formal@this@0) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) call4formal@this@0)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call5formal@this@0) alloc)))))) (and (and (forall (($o@@127 T@U) ) (!  (=> (and (or (not (= $o@@127 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@127) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@127) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@127)) (= $o@@127 |universe#0|)))
 :qid |_09CounterNoStateMachinedfy.657:3|
 :skolemid |3168|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@127))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@4)))))) (and (and (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall ((|o#1@@12| T@U) ) (!  (=> ($Is refType |o#1@@12| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@12|)) (=> (=> ($Is refType |o#1@@12| Tclass._module.OwnedObject) (and (forall (($o@@128 T@U) ($f@@77 T@U) ) (!  (=> (or (not (= $o@@128 null)) (not true)) (=> (= $o@@128 |o#1@@12|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@128) $f@@77) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@128) $f@@77))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@128) $f@@77))
)) (forall ((|x#2@@1| T@U) ) (!  (=> (and ($Is refType |x#2@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.Object.universe |o#1@@12|)) _module.Universe.content)) ($Box refType |x#2@@1|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@1|) _module.OwnedObject.owner)) |o#1@@12|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@1|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@1|) _module.OwnedObject.owner)) |o#1@@12|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@1|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.Object.universe |o#1@@12|)) _module.Universe.content)) ($Box refType |x#2@@1|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@4 $Heap@10 |o#1@@12|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@4 $Heap@10 |o#1@@12|))
 :pattern ( (_module.Object.universe |o#1@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@12|)))
))) (and (and (forall ((|o#1@@13| T@U) ) (!  (=> (and ($Is refType |o#1@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@13|))) (=> (=> ($Is refType |o#1@@13| Tclass._module.OwnedObject) (and (forall (($o@@129 T@U) ($f@@78 T@U) ) (!  (=> (or (not (= $o@@129 null)) (not true)) (=> (= $o@@129 |o#1@@13|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@129) $f@@78) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@129) $f@@78))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@129) $f@@78))
)) (forall ((|x#2@@2| T@U) ) (!  (=> (and ($Is refType |x#2@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.Object.universe |o#1@@13|)) _module.Universe.content)) ($Box refType |x#2@@2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@2|) _module.OwnedObject.owner)) |o#1@@13|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@2|) _module.OwnedObject.owner)) |o#1@@13|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |x#2@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |x#2@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.Object.universe |o#1@@13|)) _module.Universe.content)) ($Box refType |x#2@@2|)))
)))) (_module.Object.transitiveInv2 $Heap@4 $Heap@10 |o#1@@13|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@4 $Heap@10 |o#1@@13|))
 :pattern ( (_module.Object.universe |o#1@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@13|)))
)) (= $Heap@10 $Heap@11)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@4)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@4) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@4)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@11 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@11 |universe#0|) (forall ((|o#0@@17| T@U) ) (!  (=> (and ($Is refType |o#0@@17| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@17|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@17|)))) (not ($IsAllocBox ($Box refType |o#0@@17|) Tclass._module.Object $Heap@4)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@17|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@11 |universe#0|) (forall ((|o#1@@14| T@U) ) (!  (=> (and ($Is refType |o#1@@14| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@14|))) (or (forall (($o@@130 T@U) ($f@@79 T@U) ) (!  (=> (or (not (= $o@@130 null)) (not true)) (=> (= $o@@130 |o#1@@14|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@130) $f@@79) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@130) $f@@79))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@130) $f@@79))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#1@@14|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#1@@14|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#1@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#1@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@14|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#2@@4| T@U) ) (!  (=> (and ($Is refType |o#2@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|))) (and (= (_module.Object.universe |o#2@@4|) |universe#0|) (or (not (= |o#2@@4| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|))) (_module.Object.triggerAxioms $Heap@4 |o#3@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|))) (and (= (_module.Object.universe |o#4@@0|) |universe#0|) (or (not (= |o#4@@0| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#5@@2| T@U) ) (!  (=> (and ($Is refType |o#5@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@2|))) (_module.Object.triggerAxioms $Heap@11 |o#5@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@11 |o#5@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|))) (_module.Object.transitiveInv2 $Heap@4 $Heap@11 |o#6@@0|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@4 $Heap@11 |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@11 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#7@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#7@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#7@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#8@@2| T@U) ) (!  (=> (and ($Is refType |o#8@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|))) (and (= (_module.Object.universe |o#8@@2|) |universe#0|) (or (not (= |o#8@@2| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#9@@0| T@U) ) (!  (=> (and ($Is refType |o#9@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|))) (_module.Object.triggerAxioms $Heap@4 |o#9@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#9@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (forall ((|o#10@@1| T@U) ) (!  (=> (and ($Is refType |o#10@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@1|))) (_module.Object.inv $Heap@4 |o#10@@1|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@4 |o#10@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@1|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#11@@0| T@U) ) (!  (=> (and ($Is refType |o#11@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|))) (and (= (_module.Object.universe |o#11@@0|) |universe#0|) (or (not (= |o#11@@0| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#12@@2| T@U) ) (!  (=> (and ($Is refType |o#12@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|))) (_module.Object.triggerAxioms $Heap@11 |o#12@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@11 |o#12@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (forall ((|o#13@@2| T@U) ) (!  (=> (and ($Is refType |o#13@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@2|))) (and (or (forall (($o@@131 T@U) ($f@@80 T@U) ) (!  (=> (or (not (= $o@@131 null)) (not true)) (=> (= $o@@131 |o#13@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@131) $f@@80) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@131) $f@@80))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@131) $f@@80))
)) (_module.Object.inv $Heap@11 |o#13@@2|)) (or (forall (($o@@132 T@U) ($f@@81 T@U) ) (!  (=> (or (not (= $o@@132 null)) (not true)) (=> (= $o@@132 |o#13@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@132) $f@@81) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@132) $f@@81))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@132) $f@@81))
)) (_module.Object.inv2 $Heap@4 $Heap@11 |o#13@@2|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@11 |o#13@@2|))
 :pattern ( (_module.Object.inv $Heap@11 |o#13@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@2|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@11 |universe#0| |running#0@@3|) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|))))) (_module.Object.inv $Heap@11 |o#14@@0|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@11 |o#14@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)))
))))) (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12))) (and (and (|_module.Universe.globalInv#canCall| $Heap@11 |universe#0|) (=> (_module.Universe.globalInv $Heap@11 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@11 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@11 |universe#0|) (and (_module.Universe.globalInv $Heap@11 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#17@@2| T@U) ) (!  (=> (and ($Is refType |o#17@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@2|))) (_module.Object.inv $Heap@11 |o#17@@2|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@11 |o#17@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@2|)))
)))))))))))) (and (and (and (and (and (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@11 |universe#0|) (and (_module.Universe.globalInv2 $Heap@4 $Heap@11 |universe#0|) (and true (forall ((|o#18@@3| T@U) ) (!  (=> (and ($Is refType |o#18@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@3|)) (_module.Object.inv2 $Heap@4 $Heap@11 |o#18@@3|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@11 |o#18@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@3|)))
))))) (= $Heap@11 $Heap@12)) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@133 T@U) ($f@@82 T@U) ) (!  (=> (and (and (or (not (= $o@@133 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@133) alloc)))) (or (= $o@@133 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType $o@@133)))) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@133 $f@@82)))
 :qid |_09CounterNoStateMachinedfy.723:26|
 :skolemid |552|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#0@@18| T@U) ) (!  (=> (and ($Is refType |o#0@@18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@18|))) (and (= (_module.Object.universe |o#0@@18|) |universe#0|) (or (not (= |o#0@@18| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@18|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#1@@15| T@U) ) (!  (=> (and ($Is refType |o#1@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@15|))) (_module.Object.triggerAxioms $Heap@12 |o#1@@15|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@12 |o#1@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@15|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (forall ((|o#2@@5| T@U) ) (!  (=> (and ($Is refType |o#2@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|))) (_module.Object.inv $Heap@12 |o#2@@5|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@12 |o#2@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (|_module.Universe.globalInv#canCall| $Heap@13 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@13 |universe#0|) (and (_module.Universe.globalInv $Heap@13 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@13 |universe#0|) (forall ((|o#5@@3| T@U) ) (!  (=> (and ($Is refType |o#5@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|))) (_module.Object.inv $Heap@13 |o#5@@3|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@13 |o#5@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@13 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) |running#0@@3|)))))) (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@13 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@13 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@13 |universe#0|) (_module.Universe.globalBaseInv $Heap@12 |universe#0|)) (_module.Universe.globalBaseInv $Heap@13 |universe#0|)) (forall ((|o#12@@3| T@U) ) (!  (=> (and ($Is refType |o#12@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@3|))) (_module.Object.transitiveInv2 $Heap@12 $Heap@13 |o#12@@3|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@12 $Heap@13 |o#12@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@3|)))
))) (forall ((|o#13@@3| T@U) ) (!  (=> (and ($Is refType |o#13@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.owner) Tclass._module.Object $Heap@12)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#13@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#13@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#13@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@3|)))
))))) (and (forall (($o@@134 T@U) ) (!  (=> (and (or (not (= $o@@134 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@134) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@134) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@134)) (or (= $o@@134 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType $o@@134)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@134))
)) ($HeapSucc $Heap@12 $Heap@13))) (and (and (or (not (= |counter#0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| |counter#0| _module.IncreasingCounter.value))) (and (or (not (= |counter#0| null)) (not true)) (= |$rhs#0_2@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |counter#0|) _module.IncreasingCounter.value))) 1))))) (and (and (and (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 |counter#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |counter#0|) _module.IncreasingCounter.value ($Box intType (int_2_U |$rhs#0_2@1|))))) ($IsGoodHeap $Heap@14)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@13))) (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (forall ((|o#1@@16| T@U) ) (!  (=> ($Is refType |o#1@@16| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@16|)) (=> (=> ($Is refType |o#1@@16| Tclass._module.OwnedObject) (and (forall (($o@@135 T@U) ($f@@83 T@U) ) (!  (=> (or (not (= $o@@135 null)) (not true)) (=> (= $o@@135 |o#1@@16|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@135) $f@@83) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@135) $f@@83))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@135) $f@@83))
)) (forall ((|x#2@@3| T@U) ) (!  (=> (and ($Is refType |x#2@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 (_module.Object.universe |o#1@@16|)) _module.Universe.content)) ($Box refType |x#2@@3|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@3|) _module.OwnedObject.owner)) |o#1@@16|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@3|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@3|) _module.OwnedObject.owner)) |o#1@@16|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@3|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 (_module.Object.universe |o#1@@16|)) _module.Universe.content)) ($Box refType |x#2@@3|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@13 $Heap@14 |o#1@@16|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@13 $Heap@14 |o#1@@16|))
 :pattern ( (_module.Object.universe |o#1@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@16|)))
)))))) (and (and (and (and (and (and (forall ((|o#1@@17| T@U) ) (!  (=> (and ($Is refType |o#1@@17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@17|))) (=> (=> ($Is refType |o#1@@17| Tclass._module.OwnedObject) (and (forall (($o@@136 T@U) ($f@@84 T@U) ) (!  (=> (or (not (= $o@@136 null)) (not true)) (=> (= $o@@136 |o#1@@17|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@136) $f@@84) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@136) $f@@84))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@136) $f@@84))
)) (forall ((|x#2@@4| T@U) ) (!  (=> (and ($Is refType |x#2@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 (_module.Object.universe |o#1@@17|)) _module.Universe.content)) ($Box refType |x#2@@4|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@4|) _module.OwnedObject.owner)) |o#1@@17|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@4|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@4|) _module.OwnedObject.owner)) |o#1@@17|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@4|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |x#2@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |x#2@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 (_module.Object.universe |o#1@@17|)) _module.Universe.content)) ($Box refType |x#2@@4|)))
)))) (_module.Object.transitiveInv2 $Heap@13 $Heap@14 |o#1@@17|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@13 $Heap@14 |o#1@@17|))
 :pattern ( (_module.Object.universe |o#1@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@17|)))
)) (= $Heap@14 $Heap@15)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@13))) (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@13) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@13)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@13 $Heap@15 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@13 $Heap@15 |universe#0|) (forall ((|o#0@@19| T@U) ) (!  (=> (and ($Is refType |o#0@@19| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|)))) (not ($IsAllocBox ($Box refType |o#0@@19|) Tclass._module.Object $Heap@13)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|)))
))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@13 $Heap@15 |universe#0|) (forall ((|o#1@@18| T@U) ) (!  (=> (and ($Is refType |o#1@@18| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@18|))) (or (forall (($o@@137 T@U) ($f@@85 T@U) ) (!  (=> (or (not (= $o@@137 null)) (not true)) (=> (= $o@@137 |o#1@@18|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@137) $f@@85) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@137) $f@@85))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@137) $f@@85))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#1@@18|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#1@@18|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#1@@18|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#1@@18|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@18|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@13 |universe#0|) (forall ((|o#2@@6| T@U) ) (!  (=> (and ($Is refType |o#2@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|))) (and (= (_module.Object.universe |o#2@@6|) |universe#0|) (or (not (= |o#2@@6| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@13 |universe#0|) (forall ((|o#3@@1| T@U) ) (!  (=> (and ($Is refType |o#3@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|))) (_module.Object.triggerAxioms $Heap@13 |o#3@@1|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@13 |o#3@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#4@@1| T@U) ) (!  (=> (and ($Is refType |o#4@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|))) (and (= (_module.Object.universe |o#4@@1|) |universe#0|) (or (not (= |o#4@@1| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#5@@4| T@U) ) (!  (=> (and ($Is refType |o#5@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@4|))) (_module.Object.triggerAxioms $Heap@15 |o#5@@4|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@15 |o#5@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@4|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@1| T@U) ) (!  (=> (and ($Is refType |o#6@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|))) (_module.Object.transitiveInv2 $Heap@13 $Heap@15 |o#6@@1|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@13 $Heap@15 |o#6@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@13 $Heap@15 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@1| T@U) ) (!  (=> (and ($Is refType |o#7@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.owner) Tclass._module.Object $Heap@13)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#7@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#7@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |o#7@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@1|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalInv $Heap@13 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@13 |universe#0|) (forall ((|o#8@@3| T@U) ) (!  (=> (and ($Is refType |o#8@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|))) (and (= (_module.Object.universe |o#8@@3|) |universe#0|) (or (not (= |o#8@@3| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalInv $Heap@13 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@13 |universe#0|) (forall ((|o#9@@1| T@U) ) (!  (=> (and ($Is refType |o#9@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@1|))) (_module.Object.triggerAxioms $Heap@13 |o#9@@1|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@13 |o#9@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@1|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@13 |universe#0|) (or (_module.Universe.globalInv $Heap@13 |universe#0|) (forall ((|o#10@@2| T@U) ) (!  (=> (and ($Is refType |o#10@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@2|))) (_module.Object.inv $Heap@13 |o#10@@2|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@13 |o#10@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@2|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#11@@1| T@U) ) (!  (=> (and ($Is refType |o#11@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@1|))) (and (= (_module.Object.universe |o#11@@1|) |universe#0|) (or (not (= |o#11@@1| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@1|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#12@@4| T@U) ) (!  (=> (and ($Is refType |o#12@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@4|))) (_module.Object.triggerAxioms $Heap@15 |o#12@@4|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@15 |o#12@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@4|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (forall ((|o#13@@4| T@U) ) (!  (=> (and ($Is refType |o#13@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@4|))) (and (or (forall (($o@@138 T@U) ($f@@86 T@U) ) (!  (=> (or (not (= $o@@138 null)) (not true)) (=> (= $o@@138 |o#13@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@138) $f@@86) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@138) $f@@86))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@138) $f@@86))
)) (_module.Object.inv $Heap@15 |o#13@@4|)) (or (forall (($o@@139 T@U) ($f@@87 T@U) ) (!  (=> (or (not (= $o@@139 null)) (not true)) (=> (= $o@@139 |o#13@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@139) $f@@87) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@139) $f@@87))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@139) $f@@87))
)) (_module.Object.inv2 $Heap@13 $Heap@15 |o#13@@4|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@13 $Heap@15 |o#13@@4|))
 :pattern ( (_module.Object.inv $Heap@15 |o#13@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@4|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@13 $Heap@15 |universe#0| |running#0@@3|) (forall ((|o#14@@1| T@U) ) (!  (=> (and ($Is refType |o#14@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@1|))))) (_module.Object.inv $Heap@15 |o#14@@1|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@15 |o#14@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@1|)))
))))) (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@15 |universe#0|) (=> (_module.Universe.globalInv $Heap@15 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@13 $Heap@15 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@15 |universe#0|) (and (_module.Universe.globalInv $Heap@15 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#17@@3| T@U) ) (!  (=> (and ($Is refType |o#17@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@3|))) (_module.Object.inv $Heap@15 |o#17@@3|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@15 |o#17@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@3|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@13 $Heap@15 |universe#0|) (and (_module.Universe.globalInv2 $Heap@13 $Heap@15 |universe#0|) (and true (forall ((|o#18@@4| T@U) ) (!  (=> (and ($Is refType |o#18@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@4|)) (_module.Object.inv2 $Heap@13 $Heap@15 |o#18@@4|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@13 $Heap@15 |o#18@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@4|)))
))))) (and (= $Heap@15 $Heap@16) (or (not (= call4formal@this@0 null)) (not true))))))) (and (and (and (and (and (= |value##0_1@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call4formal@this@0) _module.ConstantInteger.value))) 1)) (forall (($o@@140 T@U) ($f@@88 T@U) ) (!  (=> (and (and (or (not (= $o@@140 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@140) alloc)))) (= $o@@140 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@140 $f@@88)))
 :qid |_09CounterNoStateMachinedfy.733:35|
 :skolemid |555|
))) (and (or (not (= call4formal@this@@0 null)) (not true)) (and ($Is refType call4formal@this@@0 Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this@@0 Tclass._module.ConstantInteger $Heap@@94)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#0@@20| T@U) ) (!  (=> (and ($Is refType |o#0@@20| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@20|))) (and (= (_module.Object.universe |o#0@@20|) |universe#0|) (or (not (= |o#0@@20| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |2878|
 :pattern ( (_module.Object.universe |o#0@@20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@20|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#1@@19| T@U) ) (!  (=> (and ($Is refType |o#1@@19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@19|))) (_module.Object.triggerAxioms $Heap@16 |o#1@@19|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |2879|
 :pattern ( (_module.Object.triggerAxioms $Heap@16 |o#1@@19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@19|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (forall ((|o#2@@7| T@U) ) (!  (=> (and ($Is refType |o#2@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|))) (_module.Object.inv $Heap@16 |o#2@@7|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |2882|
 :pattern ( (_module.Object.inv $Heap@16 |o#2@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and (or (not (= call4formal@this@0@@0 null)) (not true)) (and ($Is refType call4formal@this@0@@0 Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this@0@@0 Tclass._module.ConstantInteger $Heap@17)))) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@17 call4formal@this@0@@0) (=> (_module.Object.objectGlobalInv $Heap@17 call4formal@this@0@@0) (|_module.Universe.globalInv2#canCall| $Heap@16 $Heap@17 |universe#0|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@17 call4formal@this@0@@0) (and (_module.Object.objectGlobalInv $Heap@17 call4formal@this@0@@0) (and (_module.Object.baseInv $Heap@17 call4formal@this@0@@0) (_module.Universe.globalInv $Heap@17 (_module.Object.universe call4formal@this@0@@0)))))))) (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@16 $Heap@17 |universe#0|) (and (_module.Universe.globalInv2 $Heap@16 $Heap@17 |universe#0|) (and true (forall ((|o#8@@4| T@U) ) (!  (=> (and ($Is refType |o#8@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)) (_module.Object.inv2 $Heap@16 $Heap@17 |o#8@@4|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |2895|
 :pattern ( (_module.Object.inv2 $Heap@16 $Heap@17 |o#8@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)))
))))) (= (_module.Object.universe call4formal@this@0@@0) |universe#0|)) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call4formal@this@0@@0) _module.OwnedObject.owner)) |running#0@@3|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call4formal@this@0@@0) _module.ConstantInteger.value))) |value##0_1@1|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0@@0)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call4formal@this@0@@0) alloc))))))) (and (and (and (forall (($o@@141 T@U) ) (!  (=> (and (or (not (= $o@@141 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@141) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@141) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@141)) (= $o@@141 |universe#0|)))
 :qid |_09CounterNoStateMachinedfy.608:3|
 :skolemid |2896|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@141))
)) ($HeapSucc $Heap@16 $Heap@17)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16))) (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (forall ((|o#1@@20| T@U) ) (!  (=> ($Is refType |o#1@@20| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@20|)) (=> (=> ($Is refType |o#1@@20| Tclass._module.OwnedObject) (and (forall (($o@@142 T@U) ($f@@89 T@U) ) (!  (=> (or (not (= $o@@142 null)) (not true)) (=> (= $o@@142 |o#1@@20|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@142) $f@@89) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@142) $f@@89))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@142) $f@@89))
)) (forall ((|x#2@@5| T@U) ) (!  (=> (and ($Is refType |x#2@@5| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.Object.universe |o#1@@20|)) _module.Universe.content)) ($Box refType |x#2@@5|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@5|) _module.OwnedObject.owner)) |o#1@@20|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@5|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@5|) _module.OwnedObject.owner)) |o#1@@20|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@5|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@5|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.Object.universe |o#1@@20|)) _module.Universe.content)) ($Box refType |x#2@@5|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@16 $Heap@17 |o#1@@20|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@16 $Heap@17 |o#1@@20|))
 :pattern ( (_module.Object.universe |o#1@@20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@20|)))
)))))))) (and (and (and (and (and (and (and (forall ((|o#1@@21| T@U) ) (!  (=> (and ($Is refType |o#1@@21| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@21|))) (=> (=> ($Is refType |o#1@@21| Tclass._module.OwnedObject) (and (forall (($o@@143 T@U) ($f@@90 T@U) ) (!  (=> (or (not (= $o@@143 null)) (not true)) (=> (= $o@@143 |o#1@@21|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@143) $f@@90) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@143) $f@@90))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@143) $f@@90))
)) (forall ((|x#2@@6| T@U) ) (!  (=> (and ($Is refType |x#2@@6| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.Object.universe |o#1@@21|)) _module.Universe.content)) ($Box refType |x#2@@6|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@6|) _module.OwnedObject.owner)) |o#1@@21|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@6|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@6|) _module.OwnedObject.owner)) |o#1@@21|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@6|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |x#2@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |x#2@@6|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.Object.universe |o#1@@21|)) _module.Universe.content)) ($Box refType |x#2@@6|)))
)))) (_module.Object.transitiveInv2 $Heap@16 $Heap@17 |o#1@@21|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@16 $Heap@17 |o#1@@21|))
 :pattern ( (_module.Object.universe |o#1@@21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@21|)))
)) (= $Heap@17 $Heap@18)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16))) (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@16) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@16)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (forall ((|o#0@@21| T@U) ) (!  (=> (and ($Is refType |o#0@@21| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|)))) (not ($IsAllocBox ($Box refType |o#0@@21|) Tclass._module.Object $Heap@16)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|)))
))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (forall ((|o#1@@22| T@U) ) (!  (=> (and ($Is refType |o#1@@22| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@22|))) (or (forall (($o@@144 T@U) ($f@@91 T@U) ) (!  (=> (or (not (= $o@@144 null)) (not true)) (=> (= $o@@144 |o#1@@22|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@144) $f@@91) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@144) $f@@91))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@144) $f@@91))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#1@@22|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#1@@22|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#1@@22|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#1@@22|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@22|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#2@@8| T@U) ) (!  (=> (and ($Is refType |o#2@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@8|))) (and (= (_module.Object.universe |o#2@@8|) |universe#0|) (or (not (= |o#2@@8| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@8|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#3@@2| T@U) ) (!  (=> (and ($Is refType |o#3@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|))) (_module.Object.triggerAxioms $Heap@16 |o#3@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@16 |o#3@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#4@@2| T@U) ) (!  (=> (and ($Is refType |o#4@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@2|))) (and (= (_module.Object.universe |o#4@@2|) |universe#0|) (or (not (= |o#4@@2| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@2|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#5@@5| T@U) ) (!  (=> (and ($Is refType |o#5@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@5|))) (_module.Object.triggerAxioms $Heap@18 |o#5@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@18 |o#5@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@2| T@U) ) (!  (=> (and ($Is refType |o#6@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@2|))) (_module.Object.transitiveInv2 $Heap@16 $Heap@18 |o#6@@2|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@16 $Heap@18 |o#6@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@2|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@2| T@U) ) (!  (=> (and ($Is refType |o#7@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.owner) Tclass._module.Object $Heap@16)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#7@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#7@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#7@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#8@@5| T@U) ) (!  (=> (and ($Is refType |o#8@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|))) (and (= (_module.Object.universe |o#8@@5|) |universe#0|) (or (not (= |o#8@@5| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#9@@2| T@U) ) (!  (=> (and ($Is refType |o#9@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@2|))) (_module.Object.triggerAxioms $Heap@16 |o#9@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@16 |o#9@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (forall ((|o#10@@3| T@U) ) (!  (=> (and ($Is refType |o#10@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@3|))) (_module.Object.inv $Heap@16 |o#10@@3|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@16 |o#10@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@3|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#11@@2| T@U) ) (!  (=> (and ($Is refType |o#11@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|))) (and (= (_module.Object.universe |o#11@@2|) |universe#0|) (or (not (= |o#11@@2| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#12@@5| T@U) ) (!  (=> (and ($Is refType |o#12@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@5|))) (_module.Object.triggerAxioms $Heap@18 |o#12@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@18 |o#12@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@5|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (forall ((|o#13@@5| T@U) ) (!  (=> (and ($Is refType |o#13@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@5|))) (and (or (forall (($o@@145 T@U) ($f@@92 T@U) ) (!  (=> (or (not (= $o@@145 null)) (not true)) (=> (= $o@@145 |o#13@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@145) $f@@92) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@145) $f@@92))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@145) $f@@92))
)) (_module.Object.inv $Heap@18 |o#13@@5|)) (or (forall (($o@@146 T@U) ($f@@93 T@U) ) (!  (=> (or (not (= $o@@146 null)) (not true)) (=> (= $o@@146 |o#13@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@146) $f@@93) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@146) $f@@93))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@146) $f@@93))
)) (_module.Object.inv2 $Heap@16 $Heap@18 |o#13@@5|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@16 $Heap@18 |o#13@@5|))
 :pattern ( (_module.Object.inv $Heap@18 |o#13@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@5|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@16 $Heap@18 |universe#0| |running#0@@3|) (forall ((|o#14@@2| T@U) ) (!  (=> (and ($Is refType |o#14@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@2|))))) (_module.Object.inv $Heap@18 |o#14@@2|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@18 |o#14@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@2|)))
))))) (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@18 |universe#0|) (=> (_module.Universe.globalInv $Heap@18 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@16 $Heap@18 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@18 |universe#0|) (and (_module.Universe.globalInv $Heap@18 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#17@@4| T@U) ) (!  (=> (and ($Is refType |o#17@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@4|))) (_module.Object.inv $Heap@18 |o#17@@4|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@18 |o#17@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@4|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@16 $Heap@18 |universe#0|) (and (_module.Universe.globalInv2 $Heap@16 $Heap@18 |universe#0|) (and true (forall ((|o#18@@5| T@U) ) (!  (=> (and ($Is refType |o#18@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@5|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@5|)) (_module.Object.inv2 $Heap@16 $Heap@18 |o#18@@5|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@16 $Heap@18 |o#18@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@5|)))
))))) (and (= $Heap@18 $Heap@19) (forall (($o@@147 T@U) ($f@@94 T@U) ) (!  (=> (and (and (or (not (= $o@@147 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@147) alloc)))) (= $o@@147 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@147 $f@@94)))
 :qid |_09CounterNoStateMachinedfy.742:19|
 :skolemid |558|
))))))) (and (and (and (and (and (or (not (= call5formal@this@@0 null)) (not true)) (and ($Is refType call5formal@this@@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType call5formal@this@@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@94))) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#0@@22| T@U) ) (!  (=> (and ($Is refType |o#0@@22| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@22|))) (and (= (_module.Object.universe |o#0@@22|) |universe#0|) (or (not (= |o#0@@22| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |3150|
 :pattern ( (_module.Object.universe |o#0@@22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@22|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#1@@23| T@U) ) (!  (=> (and ($Is refType |o#1@@23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@23|))) (_module.Object.triggerAxioms $Heap@19 |o#1@@23|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |3151|
 :pattern ( (_module.Object.triggerAxioms $Heap@19 |o#1@@23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@23|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (forall ((|o#2@@9| T@U) ) (!  (=> (and ($Is refType |o#2@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@9|))) (_module.Object.inv $Heap@19 |o#2@@9|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |3154|
 :pattern ( (_module.Object.inv $Heap@19 |o#2@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@9|)))
)))))) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType call4formal@this@0@@0)) (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |counter#0|) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call4formal@this@0@@0) _module.ConstantInteger.value)))))) (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (and (or (not (= call5formal@this@0@@0 null)) (not true)) (and ($Is refType call5formal@this@0@@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType call5formal@this@0@@0 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@20)))))) (and (and (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@20 call5formal@this@0@@0) (=> (_module.Object.objectGlobalInv $Heap@20 call5formal@this@0@@0) (|_module.Universe.globalInv2#canCall| $Heap@19 $Heap@20 |universe#0|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@20 call5formal@this@0@@0) (and (_module.Object.objectGlobalInv $Heap@20 call5formal@this@0@@0) (and (_module.Object.baseInv $Heap@20 call5formal@this@0@@0) (_module.Universe.globalInv $Heap@20 (_module.Object.universe call5formal@this@0@@0)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@19 $Heap@20 |universe#0|) (and (_module.Universe.globalInv2 $Heap@19 $Heap@20 |universe#0|) (and true (forall ((|o#8@@6| T@U) ) (!  (=> (and ($Is refType |o#8@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)) (_module.Object.inv2 $Heap@19 $Heap@20 |o#8@@6|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |3167|
 :pattern ( (_module.Object.inv2 $Heap@19 $Heap@20 |o#8@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)))
))))) (and (= (_module.Object.universe call5formal@this@0@@0) |universe#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 call5formal@this@0@@0) _module.OwnedObject.owner)) |running#0@@3|)))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 call5formal@this@0@@0) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) |counter#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 call5formal@this@0@@0) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) call4formal@this@0@@0)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0@@0) alloc)))))) (and (and (forall (($o@@148 T@U) ) (!  (=> (and (or (not (= $o@@148 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@148) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@148) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@148)) (= $o@@148 |universe#0|)))
 :qid |_09CounterNoStateMachinedfy.657:3|
 :skolemid |3168|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@148))
)) ($HeapSucc $Heap@19 $Heap@20)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@19))))))) (and (and (and (and (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (forall ((|o#1@@24| T@U) ) (!  (=> ($Is refType |o#1@@24| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@24|)) (=> (=> ($Is refType |o#1@@24| Tclass._module.OwnedObject) (and (forall (($o@@149 T@U) ($f@@95 T@U) ) (!  (=> (or (not (= $o@@149 null)) (not true)) (=> (= $o@@149 |o#1@@24|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@149) $f@@95) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@149) $f@@95))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@149) $f@@95))
)) (forall ((|x#2@@7| T@U) ) (!  (=> (and ($Is refType |x#2@@7| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 (_module.Object.universe |o#1@@24|)) _module.Universe.content)) ($Box refType |x#2@@7|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@7|) _module.OwnedObject.owner)) |o#1@@24|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@7|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@7|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@7|) _module.OwnedObject.owner)) |o#1@@24|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@7|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@7|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 (_module.Object.universe |o#1@@24|)) _module.Universe.content)) ($Box refType |x#2@@7|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@19 $Heap@20 |o#1@@24|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@19 $Heap@20 |o#1@@24|))
 :pattern ( (_module.Object.universe |o#1@@24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@24|)))
))) (and (and (forall ((|o#1@@25| T@U) ) (!  (=> (and ($Is refType |o#1@@25| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@25|))) (=> (=> ($Is refType |o#1@@25| Tclass._module.OwnedObject) (and (forall (($o@@150 T@U) ($f@@96 T@U) ) (!  (=> (or (not (= $o@@150 null)) (not true)) (=> (= $o@@150 |o#1@@25|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@150) $f@@96) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@150) $f@@96))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@150) $f@@96))
)) (forall ((|x#2@@8| T@U) ) (!  (=> (and ($Is refType |x#2@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 (_module.Object.universe |o#1@@25|)) _module.Universe.content)) ($Box refType |x#2@@8|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@8|) _module.OwnedObject.owner)) |o#1@@25|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@8|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@8|) _module.OwnedObject.owner)) |o#1@@25|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@8|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |x#2@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |x#2@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 (_module.Object.universe |o#1@@25|)) _module.Universe.content)) ($Box refType |x#2@@8|)))
)))) (_module.Object.transitiveInv2 $Heap@19 $Heap@20 |o#1@@25|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@19 $Heap@20 |o#1@@25|))
 :pattern ( (_module.Object.universe |o#1@@25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@25|)))
)) (= $Heap@20 $Heap@21)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@19)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@19) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@19)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@19 $Heap@21 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@19 $Heap@21 |universe#0|) (forall ((|o#0@@23| T@U) ) (!  (=> (and ($Is refType |o#0@@23| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|)))) (not ($IsAllocBox ($Box refType |o#0@@23|) Tclass._module.Object $Heap@19)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@19 $Heap@21 |universe#0|) (forall ((|o#1@@26| T@U) ) (!  (=> (and ($Is refType |o#1@@26| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@26|))) (or (forall (($o@@151 T@U) ($f@@97 T@U) ) (!  (=> (or (not (= $o@@151 null)) (not true)) (=> (= $o@@151 |o#1@@26|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@151) $f@@97) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@151) $f@@97))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@151) $f@@97))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#1@@26|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |o#1@@26|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |o#1@@26|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#1@@26|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@26|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#2@@10| T@U) ) (!  (=> (and ($Is refType |o#2@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@10|))) (and (= (_module.Object.universe |o#2@@10|) |universe#0|) (or (not (= |o#2@@10| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@10|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#3@@3| T@U) ) (!  (=> (and ($Is refType |o#3@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@3|))) (_module.Object.triggerAxioms $Heap@19 |o#3@@3|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@19 |o#3@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@3|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@21 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@21 |universe#0|) (forall ((|o#4@@3| T@U) ) (!  (=> (and ($Is refType |o#4@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|))) (and (= (_module.Object.universe |o#4@@3|) |universe#0|) (or (not (= |o#4@@3| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@21 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@21 |universe#0|) (forall ((|o#5@@6| T@U) ) (!  (=> (and ($Is refType |o#5@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@6|))) (_module.Object.triggerAxioms $Heap@21 |o#5@@6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@21 |o#5@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@6|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@3| T@U) ) (!  (=> (and ($Is refType |o#6@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@3|))) (_module.Object.transitiveInv2 $Heap@19 $Heap@21 |o#6@@3|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@19 $Heap@21 |o#6@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@3|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@3| T@U) ) (!  (=> (and ($Is refType |o#7@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.owner) Tclass._module.Object $Heap@19)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |o#7@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |o#7@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#7@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@3|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#8@@7| T@U) ) (!  (=> (and ($Is refType |o#8@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|))) (and (= (_module.Object.universe |o#8@@7|) |universe#0|) (or (not (= |o#8@@7| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#9@@3| T@U) ) (!  (=> (and ($Is refType |o#9@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@3|))) (_module.Object.triggerAxioms $Heap@19 |o#9@@3|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@19 |o#9@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@3|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (forall ((|o#10@@4| T@U) ) (!  (=> (and ($Is refType |o#10@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@4|))) (_module.Object.inv $Heap@19 |o#10@@4|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@19 |o#10@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@4|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@21 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@21 |universe#0|) (forall ((|o#11@@3| T@U) ) (!  (=> (and ($Is refType |o#11@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@3|))) (and (= (_module.Object.universe |o#11@@3|) |universe#0|) (or (not (= |o#11@@3| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@3|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@21 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@21 |universe#0|) (forall ((|o#12@@6| T@U) ) (!  (=> (and ($Is refType |o#12@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@6|))) (_module.Object.triggerAxioms $Heap@21 |o#12@@6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@21 |o#12@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@6|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (forall ((|o#13@@6| T@U) ) (!  (=> (and ($Is refType |o#13@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@6|))) (and (or (forall (($o@@152 T@U) ($f@@98 T@U) ) (!  (=> (or (not (= $o@@152 null)) (not true)) (=> (= $o@@152 |o#13@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@152) $f@@98) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@152) $f@@98))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@152) $f@@98))
)) (_module.Object.inv $Heap@21 |o#13@@6|)) (or (forall (($o@@153 T@U) ($f@@99 T@U) ) (!  (=> (or (not (= $o@@153 null)) (not true)) (=> (= $o@@153 |o#13@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@153) $f@@99) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@153) $f@@99))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@153) $f@@99))
)) (_module.Object.inv2 $Heap@19 $Heap@21 |o#13@@6|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@19 $Heap@21 |o#13@@6|))
 :pattern ( (_module.Object.inv $Heap@21 |o#13@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@6|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@19 $Heap@21 |universe#0| |running#0@@3|) (forall ((|o#14@@3| T@U) ) (!  (=> (and ($Is refType |o#14@@3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@3|))))) (_module.Object.inv $Heap@21 |o#14@@3|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@21 |o#14@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@3|)))
))))) (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22))) (and (and (|_module.Universe.globalInv#canCall| $Heap@21 |universe#0|) (=> (_module.Universe.globalInv $Heap@21 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@19 $Heap@21 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@21 |universe#0|) (and (_module.Universe.globalInv $Heap@21 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@21 |universe#0|) (forall ((|o#17@@5| T@U) ) (!  (=> (and ($Is refType |o#17@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@5|))) (_module.Object.inv $Heap@21 |o#17@@5|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@21 |o#17@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@5|)))
))))))))) (and (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@19 $Heap@21 |universe#0|) (and (_module.Universe.globalInv2 $Heap@19 $Heap@21 |universe#0|) (and true (forall ((|o#18@@6| T@U) ) (!  (=> (and ($Is refType |o#18@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@6|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@6|)) (_module.Object.inv2 $Heap@19 $Heap@21 |o#18@@6|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@19 $Heap@21 |o#18@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@6|)))
))))) (= $Heap@21 $Heap@22)) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@154 T@U) ($f@@100 T@U) ) (!  (=> (and (and (or (not (= $o@@154 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@154) alloc)))) (or (= $o@@154 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType $o@@154)))) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@154 $f@@100)))
 :qid |_09CounterNoStateMachinedfy.746:26|
 :skolemid |561|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalInv $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@22 |universe#0|) (forall ((|o#0@@24| T@U) ) (!  (=> (and ($Is refType |o#0@@24| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@24|))) (and (= (_module.Object.universe |o#0@@24|) |universe#0|) (or (not (= |o#0@@24| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@24|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalInv $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@22 |universe#0|) (forall ((|o#1@@27| T@U) ) (!  (=> (and ($Is refType |o#1@@27| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@27|))) (_module.Object.triggerAxioms $Heap@22 |o#1@@27|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@22 |o#1@@27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@27|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalInv $Heap@22 |universe#0|) (forall ((|o#2@@11| T@U) ) (!  (=> (and ($Is refType |o#2@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@11|))) (_module.Object.inv $Heap@22 |o#2@@11|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@22 |o#2@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@11|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)) (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (and (_module.Universe.globalInv $Heap@23 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#5@@7| T@U) ) (!  (=> (and ($Is refType |o#5@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@7|))) (_module.Object.inv $Heap@23 |o#5@@7|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@23 |o#5@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@7|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@22 $Heap@23 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) |running#0@@3|))))))))) (and (and (and (and (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@22 $Heap@23 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@22 $Heap@23 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@22 $Heap@23 |universe#0|) (_module.Universe.globalBaseInv $Heap@22 |universe#0|)) (_module.Universe.globalBaseInv $Heap@23 |universe#0|)) (forall ((|o#12@@7| T@U) ) (!  (=> (and ($Is refType |o#12@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@7|))) (_module.Object.transitiveInv2 $Heap@22 $Heap@23 |o#12@@7|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@22 $Heap@23 |o#12@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@7|)))
))) (forall ((|o#13@@7| T@U) ) (!  (=> (and ($Is refType |o#13@@7| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@7|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.owner) Tclass._module.Object $Heap@22)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#13@@7|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#13@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#13@@7|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@7|)))
))))) (forall (($o@@155 T@U) ) (!  (=> (and (or (not (= $o@@155 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@155) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@155) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@155)) (or (= $o@@155 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType $o@@155)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@155))
))) (and ($HeapSucc $Heap@22 $Heap@23) (or (not (= |counter#0| null)) (not true)))) (and (and (= |value##0_2@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |counter#0|) _module.IncreasingCounter.value)))) (forall (($o@@156 T@U) ($f@@101 T@U) ) (!  (=> (and (and (or (not (= $o@@156 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@156) alloc)))) (= $o@@156 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@156 $f@@101)))
 :qid |_09CounterNoStateMachinedfy.751:24|
 :skolemid |562|
))) (and (or (not (= call4formal@this@@1 null)) (not true)) (and ($Is refType call4formal@this@@1 Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this@@1 Tclass._module.ConstantInteger $Heap@@94))))) (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#0@@25| T@U) ) (!  (=> (and ($Is refType |o#0@@25| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@25|))) (and (= (_module.Object.universe |o#0@@25|) |universe#0|) (or (not (= |o#0@@25| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |2878|
 :pattern ( (_module.Object.universe |o#0@@25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@25|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#1@@28| T@U) ) (!  (=> (and ($Is refType |o#1@@28| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@28|))) (_module.Object.triggerAxioms $Heap@23 |o#1@@28|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |2879|
 :pattern ( (_module.Object.triggerAxioms $Heap@23 |o#1@@28|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@28|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (forall ((|o#2@@12| T@U) ) (!  (=> (and ($Is refType |o#2@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@12|))) (_module.Object.inv $Heap@23 |o#2@@12|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |2882|
 :pattern ( (_module.Object.inv $Heap@23 |o#2@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@12|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (and (or (not (= call4formal@this@0@@1 null)) (not true)) (and ($Is refType call4formal@this@0@@1 Tclass._module.ConstantInteger) ($IsAlloc refType call4formal@this@0@@1 Tclass._module.ConstantInteger $Heap@24)))))) (and (and (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@24 call4formal@this@0@@1) (=> (_module.Object.objectGlobalInv $Heap@24 call4formal@this@0@@1) (|_module.Universe.globalInv2#canCall| $Heap@23 $Heap@24 |universe#0|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@24 call4formal@this@0@@1) (and (_module.Object.objectGlobalInv $Heap@24 call4formal@this@0@@1) (and (_module.Object.baseInv $Heap@24 call4formal@this@0@@1) (_module.Universe.globalInv $Heap@24 (_module.Object.universe call4formal@this@0@@1)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@23 $Heap@24 |universe#0|) (and (_module.Universe.globalInv2 $Heap@23 $Heap@24 |universe#0|) (and true (forall ((|o#8@@8| T@U) ) (!  (=> (and ($Is refType |o#8@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|)) (_module.Object.inv2 $Heap@23 $Heap@24 |o#8@@8|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |2895|
 :pattern ( (_module.Object.inv2 $Heap@23 $Heap@24 |o#8@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|)))
))))) (= (_module.Object.universe call4formal@this@0@@1) |universe#0|))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call4formal@this@0@@1) _module.OwnedObject.owner)) |running#0@@3|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call4formal@this@0@@1) _module.ConstantInteger.value))) |value##0_2@1|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0@@1)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 call4formal@this@0@@1) alloc)))))) (and (and (forall (($o@@157 T@U) ) (!  (=> (and (or (not (= $o@@157 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@157) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@157) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@157)) (= $o@@157 |universe#0|)))
 :qid |_09CounterNoStateMachinedfy.608:3|
 :skolemid |2896|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@157))
)) ($HeapSucc $Heap@23 $Heap@24)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@23)))))) (and (and (and (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (forall ((|o#1@@29| T@U) ) (!  (=> ($Is refType |o#1@@29| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@29|)) (=> (=> ($Is refType |o#1@@29| Tclass._module.OwnedObject) (and (forall (($o@@158 T@U) ($f@@102 T@U) ) (!  (=> (or (not (= $o@@158 null)) (not true)) (=> (= $o@@158 |o#1@@29|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@158) $f@@102) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@158) $f@@102))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@158) $f@@102))
)) (forall ((|x#2@@9| T@U) ) (!  (=> (and ($Is refType |x#2@@9| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 (_module.Object.universe |o#1@@29|)) _module.Universe.content)) ($Box refType |x#2@@9|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@9|) _module.OwnedObject.owner)) |o#1@@29|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@9|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@9|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@9|) _module.OwnedObject.owner)) |o#1@@29|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@9|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@9|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 (_module.Object.universe |o#1@@29|)) _module.Universe.content)) ($Box refType |x#2@@9|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@23 $Heap@24 |o#1@@29|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@23 $Heap@24 |o#1@@29|))
 :pattern ( (_module.Object.universe |o#1@@29|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@29|)))
))) (and (and (forall ((|o#1@@30| T@U) ) (!  (=> (and ($Is refType |o#1@@30| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@30|))) (=> (=> ($Is refType |o#1@@30| Tclass._module.OwnedObject) (and (forall (($o@@159 T@U) ($f@@103 T@U) ) (!  (=> (or (not (= $o@@159 null)) (not true)) (=> (= $o@@159 |o#1@@30|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@159) $f@@103) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@159) $f@@103))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@159) $f@@103))
)) (forall ((|x#2@@10| T@U) ) (!  (=> (and ($Is refType |x#2@@10| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 (_module.Object.universe |o#1@@30|)) _module.Universe.content)) ($Box refType |x#2@@10|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@10|) _module.OwnedObject.owner)) |o#1@@30|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@10|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@10|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@10|) _module.OwnedObject.owner)) |o#1@@30|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@10|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |x#2@@10|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@10|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |x#2@@10|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 (_module.Object.universe |o#1@@30|)) _module.Universe.content)) ($Box refType |x#2@@10|)))
)))) (_module.Object.transitiveInv2 $Heap@23 $Heap@24 |o#1@@30|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@23 $Heap@24 |o#1@@30|))
 :pattern ( (_module.Object.universe |o#1@@30|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@30|)))
)) (= $Heap@24 $Heap@25)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@23)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@23) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@23)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@23 $Heap@25 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@23 $Heap@25 |universe#0|) (forall ((|o#0@@26| T@U) ) (!  (=> (and ($Is refType |o#0@@26| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|)))) (not ($IsAllocBox ($Box refType |o#0@@26|) Tclass._module.Object $Heap@23)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@23 $Heap@25 |universe#0|) (forall ((|o#1@@31| T@U) ) (!  (=> (and ($Is refType |o#1@@31| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@31|))) (or (forall (($o@@160 T@U) ($f@@104 T@U) ) (!  (=> (or (not (= $o@@160 null)) (not true)) (=> (= $o@@160 |o#1@@31|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@160) $f@@104) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@160) $f@@104))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@160) $f@@104))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#1@@31|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |o#1@@31|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |o#1@@31|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#1@@31|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@31|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#2@@13| T@U) ) (!  (=> (and ($Is refType |o#2@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@13|))) (and (= (_module.Object.universe |o#2@@13|) |universe#0|) (or (not (= |o#2@@13| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@13|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#3@@4| T@U) ) (!  (=> (and ($Is refType |o#3@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|))) (_module.Object.triggerAxioms $Heap@23 |o#3@@4|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@23 |o#3@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@25 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#4@@4| T@U) ) (!  (=> (and ($Is refType |o#4@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@4|))) (and (= (_module.Object.universe |o#4@@4|) |universe#0|) (or (not (= |o#4@@4| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@4|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@25 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#5@@8| T@U) ) (!  (=> (and ($Is refType |o#5@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@8|))) (_module.Object.triggerAxioms $Heap@25 |o#5@@8|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@25 |o#5@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@8|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@4| T@U) ) (!  (=> (and ($Is refType |o#6@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@4|))) (_module.Object.transitiveInv2 $Heap@23 $Heap@25 |o#6@@4|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@23 $Heap@25 |o#6@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@4|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@25 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@4| T@U) ) (!  (=> (and ($Is refType |o#7@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.owner) Tclass._module.Object $Heap@23)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |o#7@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |o#7@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#7@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@4|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#8@@9| T@U) ) (!  (=> (and ($Is refType |o#8@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|))) (and (= (_module.Object.universe |o#8@@9|) |universe#0|) (or (not (= |o#8@@9| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#9@@4| T@U) ) (!  (=> (and ($Is refType |o#9@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@4|))) (_module.Object.triggerAxioms $Heap@23 |o#9@@4|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@23 |o#9@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@4|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (forall ((|o#10@@5| T@U) ) (!  (=> (and ($Is refType |o#10@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@5|))) (_module.Object.inv $Heap@23 |o#10@@5|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@23 |o#10@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@5|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@25 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#11@@4| T@U) ) (!  (=> (and ($Is refType |o#11@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|))) (and (= (_module.Object.universe |o#11@@4|) |universe#0|) (or (not (= |o#11@@4| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@25 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#12@@8| T@U) ) (!  (=> (and ($Is refType |o#12@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@8|))) (_module.Object.triggerAxioms $Heap@25 |o#12@@8|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@25 |o#12@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@8|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (forall ((|o#13@@8| T@U) ) (!  (=> (and ($Is refType |o#13@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@8|))) (and (or (forall (($o@@161 T@U) ($f@@105 T@U) ) (!  (=> (or (not (= $o@@161 null)) (not true)) (=> (= $o@@161 |o#13@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@161) $f@@105) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@161) $f@@105))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@161) $f@@105))
)) (_module.Object.inv $Heap@25 |o#13@@8|)) (or (forall (($o@@162 T@U) ($f@@106 T@U) ) (!  (=> (or (not (= $o@@162 null)) (not true)) (=> (= $o@@162 |o#13@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@162) $f@@106) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@162) $f@@106))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@162) $f@@106))
)) (_module.Object.inv2 $Heap@23 $Heap@25 |o#13@@8|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@23 $Heap@25 |o#13@@8|))
 :pattern ( (_module.Object.inv $Heap@25 |o#13@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@8|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@23 $Heap@25 |universe#0| |running#0@@3|) (forall ((|o#14@@4| T@U) ) (!  (=> (and ($Is refType |o#14@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@4|))))) (_module.Object.inv $Heap@25 |o#14@@4|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@25 |o#14@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@4|)))
))))) (and ($IsGoodHeap $Heap@26) ($IsHeapAnchor $Heap@26))) (and (and (|_module.Universe.globalInv#canCall| $Heap@25 |universe#0|) (=> (_module.Universe.globalInv $Heap@25 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@23 $Heap@25 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@25 |universe#0|) (and (_module.Universe.globalInv $Heap@25 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#17@@6| T@U) ) (!  (=> (and ($Is refType |o#17@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@6|))) (_module.Object.inv $Heap@25 |o#17@@6|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@25 |o#17@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@6|)))
)))))))))) (and (and (and (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@23 $Heap@25 |universe#0|) (and (_module.Universe.globalInv2 $Heap@23 $Heap@25 |universe#0|) (and true (forall ((|o#18@@7| T@U) ) (!  (=> (and ($Is refType |o#18@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@7|)) (_module.Object.inv2 $Heap@23 $Heap@25 |o#18@@7|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@23 $Heap@25 |o#18@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@7|)))
))))) (= $Heap@25 $Heap@26)) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@163 T@U) ($f@@107 T@U) ) (!  (=> (and (and (or (not (= $o@@163 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@163) alloc)))) (or (= $o@@163 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType $o@@163)))) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@163 $f@@107)))
 :qid |_09CounterNoStateMachinedfy.755:26|
 :skolemid |565|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalInv $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@26 |universe#0|) (forall ((|o#0@@27| T@U) ) (!  (=> (and ($Is refType |o#0@@27| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@27|))) (and (= (_module.Object.universe |o#0@@27|) |universe#0|) (or (not (= |o#0@@27| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@27|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalInv $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@26 |universe#0|) (forall ((|o#1@@32| T@U) ) (!  (=> (and ($Is refType |o#1@@32| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@32|))) (_module.Object.triggerAxioms $Heap@26 |o#1@@32|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@26 |o#1@@32|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@32|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalInv $Heap@26 |universe#0|) (forall ((|o#2@@14| T@U) ) (!  (=> (and ($Is refType |o#2@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@14|))) (_module.Object.inv $Heap@26 |o#2@@14|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@26 |o#2@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@14|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and (and ($IsGoodHeap $Heap@27) ($IsHeapAnchor $Heap@27)) (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (and (_module.Universe.globalInv $Heap@27 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#5@@9| T@U) ) (!  (=> (and ($Is refType |o#5@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@9|))) (_module.Object.inv $Heap@27 |o#5@@9|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@27 |o#5@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@9|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@26 $Heap@27 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) |running#0@@3|))))) (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@26 $Heap@27 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@26 $Heap@27 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@26 $Heap@27 |universe#0|) (_module.Universe.globalBaseInv $Heap@26 |universe#0|)) (_module.Universe.globalBaseInv $Heap@27 |universe#0|)) (forall ((|o#12@@9| T@U) ) (!  (=> (and ($Is refType |o#12@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@9|))) (_module.Object.transitiveInv2 $Heap@26 $Heap@27 |o#12@@9|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@26 $Heap@27 |o#12@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@9|)))
))) (forall ((|o#13@@9| T@U) ) (!  (=> (and ($Is refType |o#13@@9| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@9|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.owner) Tclass._module.Object $Heap@26)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#13@@9|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#13@@9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#13@@9|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@9|)))
))))) (and (forall (($o@@164 T@U) ) (!  (=> (and (or (not (= $o@@164 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@164) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@164) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@164)) (or (= $o@@164 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType $o@@164)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@164))
)) ($HeapSucc $Heap@26 $Heap@27))) (and (and (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call4formal@this@0@@1) _module.ConstantInteger.value))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call4formal@this@0) _module.ConstantInteger.value))) 1)) (U_2_bool (Lit boolType (bool_2_U true)))) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@27)))))) (and (and (and (and (and ($IsGoodHeap $Heap@28) ($IsHeapAnchor $Heap@28)) (forall ((|o#1@@33| T@U) ) (!  (=> ($Is refType |o#1@@33| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@33|)) (=> (=> ($Is refType |o#1@@33| Tclass._module.OwnedObject) (and (forall (($o@@165 T@U) ($f@@108 T@U) ) (!  (=> (or (not (= $o@@165 null)) (not true)) (=> (= $o@@165 |o#1@@33|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@165) $f@@108) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@165) $f@@108))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@165) $f@@108))
)) (forall ((|x#2@@11| T@U) ) (!  (=> (and ($Is refType |x#2@@11| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 (_module.Object.universe |o#1@@33|)) _module.Universe.content)) ($Box refType |x#2@@11|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.owner)) |o#1@@33|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.owner)) |o#1@@33|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@11|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 (_module.Object.universe |o#1@@33|)) _module.Universe.content)) ($Box refType |x#2@@11|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@27 $Heap@27 |o#1@@33|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@27 $Heap@27 |o#1@@33|))
 :pattern ( (_module.Object.universe |o#1@@33|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@33|)))
))) (and (and (forall ((|o#1@@34| T@U) ) (!  (=> (and ($Is refType |o#1@@34| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@34|))) (=> (=> ($Is refType |o#1@@34| Tclass._module.OwnedObject) (and (forall (($o@@166 T@U) ($f@@109 T@U) ) (!  (=> (or (not (= $o@@166 null)) (not true)) (=> (= $o@@166 |o#1@@34|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@166) $f@@109) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@166) $f@@109))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@166) $f@@109))
)) (forall ((|x#2@@12| T@U) ) (!  (=> (and ($Is refType |x#2@@12| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 (_module.Object.universe |o#1@@34|)) _module.Universe.content)) ($Box refType |x#2@@12|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.owner)) |o#1@@34|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.owner)) |o#1@@34|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |x#2@@12|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 (_module.Object.universe |o#1@@34|)) _module.Universe.content)) ($Box refType |x#2@@12|)))
)))) (_module.Object.transitiveInv2 $Heap@27 $Heap@27 |o#1@@34|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@27 $Heap@27 |o#1@@34|))
 :pattern ( (_module.Object.universe |o#1@@34|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@34|)))
)) (= $Heap@27 $Heap@28)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@27)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@27) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@27)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@27 $Heap@28 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@27 $Heap@28 |universe#0|) (forall ((|o#0@@28| T@U) ) (!  (=> (and ($Is refType |o#0@@28| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|)))) (not ($IsAllocBox ($Box refType |o#0@@28|) Tclass._module.Object $Heap@27)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@27 $Heap@28 |universe#0|) (forall ((|o#1@@35| T@U) ) (!  (=> (and ($Is refType |o#1@@35| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@35|))) (or (forall (($o@@167 T@U) ($f@@110 T@U) ) (!  (=> (or (not (= $o@@167 null)) (not true)) (=> (= $o@@167 |o#1@@35|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@167) $f@@110) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@167) $f@@110))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@167) $f@@110))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#1@@35|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#1@@35|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#1@@35|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#1@@35|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@35|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#2@@15| T@U) ) (!  (=> (and ($Is refType |o#2@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@15|))) (and (= (_module.Object.universe |o#2@@15|) |universe#0|) (or (not (= |o#2@@15| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@15|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#3@@5| T@U) ) (!  (=> (and ($Is refType |o#3@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@5|))) (_module.Object.triggerAxioms $Heap@27 |o#3@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@27 |o#3@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#4@@5| T@U) ) (!  (=> (and ($Is refType |o#4@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|))) (and (= (_module.Object.universe |o#4@@5|) |universe#0|) (or (not (= |o#4@@5| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#5@@10| T@U) ) (!  (=> (and ($Is refType |o#5@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@10|))) (_module.Object.triggerAxioms $Heap@28 |o#5@@10|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@28 |o#5@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@10|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@5| T@U) ) (!  (=> (and ($Is refType |o#6@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@5|))) (_module.Object.transitiveInv2 $Heap@27 $Heap@28 |o#6@@5|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@27 $Heap@28 |o#6@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@5|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@5| T@U) ) (!  (=> (and ($Is refType |o#7@@5| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@5|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.owner) Tclass._module.Object $Heap@27)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#7@@5|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#7@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#7@@5|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@5|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#8@@10| T@U) ) (!  (=> (and ($Is refType |o#8@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|))) (and (= (_module.Object.universe |o#8@@10|) |universe#0|) (or (not (= |o#8@@10| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#9@@5| T@U) ) (!  (=> (and ($Is refType |o#9@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@5|))) (_module.Object.triggerAxioms $Heap@27 |o#9@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@27 |o#9@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (forall ((|o#10@@6| T@U) ) (!  (=> (and ($Is refType |o#10@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@6|))) (_module.Object.inv $Heap@27 |o#10@@6|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@27 |o#10@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@6|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#11@@5| T@U) ) (!  (=> (and ($Is refType |o#11@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@5|))) (and (= (_module.Object.universe |o#11@@5|) |universe#0|) (or (not (= |o#11@@5| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@5|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#12@@10| T@U) ) (!  (=> (and ($Is refType |o#12@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@10|))) (_module.Object.triggerAxioms $Heap@28 |o#12@@10|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@28 |o#12@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@10|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (forall ((|o#13@@10| T@U) ) (!  (=> (and ($Is refType |o#13@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@10|))) (and (or (forall (($o@@168 T@U) ($f@@111 T@U) ) (!  (=> (or (not (= $o@@168 null)) (not true)) (=> (= $o@@168 |o#13@@10|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@168) $f@@111) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@168) $f@@111))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@168) $f@@111))
)) (_module.Object.inv $Heap@28 |o#13@@10|)) (or (forall (($o@@169 T@U) ($f@@112 T@U) ) (!  (=> (or (not (= $o@@169 null)) (not true)) (=> (= $o@@169 |o#13@@10|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@169) $f@@112) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@169) $f@@112))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@169) $f@@112))
)) (_module.Object.inv2 $Heap@27 $Heap@28 |o#13@@10|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@27 $Heap@28 |o#13@@10|))
 :pattern ( (_module.Object.inv $Heap@28 |o#13@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@10|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@27 $Heap@28 |universe#0| |running#0@@3|) (forall ((|o#14@@5| T@U) ) (!  (=> (and ($Is refType |o#14@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@5|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@5|))))) (_module.Object.inv $Heap@28 |o#14@@5|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@28 |o#14@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@5|)))
))))) (and ($IsGoodHeap $Heap@29) ($IsHeapAnchor $Heap@29))) (and (and (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (=> (_module.Universe.globalInv $Heap@28 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@27 $Heap@28 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (and (_module.Universe.globalInv $Heap@28 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#17@@7| T@U) ) (!  (=> (and ($Is refType |o#17@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@7|))) (_module.Object.inv $Heap@28 |o#17@@7|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@28 |o#17@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@7|)))
)))))))))) (and (and (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@27 $Heap@28 |universe#0|) (and (_module.Universe.globalInv2 $Heap@27 $Heap@28 |universe#0|) (and true (forall ((|o#18@@8| T@U) ) (!  (=> (and ($Is refType |o#18@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@8|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@8|)) (_module.Object.inv2 $Heap@27 $Heap@28 |o#18@@8|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@27 $Heap@28 |o#18@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@8|)))
))))) (= $Heap@28 $Heap@29)) (and (or (not (= |universe#0| null)) (not true)) (forall (($o@@170 T@U) ($f@@113 T@U) ) (!  (=> (and (and (or (not (= $o@@170 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@170) alloc)))) (or (= $o@@170 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType $o@@170)))) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@170 $f@@113)))
 :qid |_09CounterNoStateMachinedfy.768:26|
 :skolemid |568|
)))) (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@29 |universe#0|) (or (_module.Universe.globalInv $Heap@29 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@29 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@29 |universe#0|) (forall ((|o#0@@29| T@U) ) (!  (=> (and ($Is refType |o#0@@29| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@29|))) (and (= (_module.Object.universe |o#0@@29|) |universe#0|) (or (not (= |o#0@@29| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |893|
 :pattern ( (_module.Object.universe |o#0@@29|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@29|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@29 |universe#0|) (or (_module.Universe.globalInv $Heap@29 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@29 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@29 |universe#0|) (forall ((|o#1@@36| T@U) ) (!  (=> (and ($Is refType |o#1@@36| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@36|))) (_module.Object.triggerAxioms $Heap@29 |o#1@@36|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |894|
 :pattern ( (_module.Object.triggerAxioms $Heap@29 |o#1@@36|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@36|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@29 |universe#0|) (or (_module.Universe.globalInv $Heap@29 |universe#0|) (forall ((|o#2@@16| T@U) ) (!  (=> (and ($Is refType |o#2@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@16|))) (_module.Object.inv $Heap@29 |o#2@@16|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |897|
 :pattern ( (_module.Object.inv $Heap@29 |o#2@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@16|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@30) ($IsHeapAnchor $Heap@30)) (|_module.Universe.globalInv#canCall| $Heap@30 |universe#0|)))) (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@30 |universe#0|) (and (_module.Universe.globalInv $Heap@30 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@30 |universe#0|) (forall ((|o#5@@11| T@U) ) (!  (=> (and ($Is refType |o#5@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@11|))) (_module.Object.inv $Heap@30 |o#5@@11|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |904|
 :pattern ( (_module.Object.inv $Heap@30 |o#5@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@11|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@29 $Heap@30 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@29 $Heap@30 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@29 $Heap@30 |universe#0| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@29 $Heap@30 |universe#0|) (_module.Universe.globalBaseInv $Heap@29 |universe#0|)) (_module.Universe.globalBaseInv $Heap@30 |universe#0|)) (forall ((|o#12@@11| T@U) ) (!  (=> (and ($Is refType |o#12@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@11|))) (_module.Object.transitiveInv2 $Heap@29 $Heap@30 |o#12@@11|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |921|
 :pattern ( (_module.Object.transitiveInv2 $Heap@29 $Heap@30 |o#12@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@11|)))
))) (forall ((|o#13@@11| T@U) ) (!  (=> (and ($Is refType |o#13@@11| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@11|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#14| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.owner) Tclass._module.Object $Heap@29)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#13@@11|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |922|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#13@@11|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |o#13@@11|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@11|)))
))))) (forall (($o@@171 T@U) ) (!  (=> (and (or (not (= $o@@171 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@171) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@171) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@171)) (or (= $o@@171 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |universe#0|) _module.Universe.content)) ($Box refType $o@@171)))))
 :qid |_09CounterNoStateMachinedfy.116:10|
 :skolemid |923|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@171))
)))) (and (and (and ($HeapSucc $Heap@29 $Heap@30) (= |i#0@2| (+ |i#0@1| 1))) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@30))) (and (and ($IsGoodHeap $Heap@31) ($IsHeapAnchor $Heap@31)) (forall ((|o#1@@37| T@U) ) (!  (=> ($Is refType |o#1@@37| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@37|)) (=> (=> ($Is refType |o#1@@37| Tclass._module.OwnedObject) (and (forall (($o@@172 T@U) ($f@@114 T@U) ) (!  (=> (or (not (= $o@@172 null)) (not true)) (=> (= $o@@172 |o#1@@37|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@172) $f@@114) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@172) $f@@114))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1006|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@172) $f@@114))
)) (forall ((|x#2@@13| T@U) ) (!  (=> (and ($Is refType |x#2@@13| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 (_module.Object.universe |o#1@@37|)) _module.Universe.content)) ($Box refType |x#2@@13|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.owner)) |o#1@@37|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.owner)) |o#1@@37|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1007|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@13|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 (_module.Object.universe |o#1@@37|)) _module.Universe.content)) ($Box refType |x#2@@13|)))
)))) (|_module.Object.transitiveInv2#canCall| $Heap@30 $Heap@30 |o#1@@37|))))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1008|
 :pattern ( (_module.Object.transitiveInv2 $Heap@30 $Heap@30 |o#1@@37|))
 :pattern ( (_module.Object.universe |o#1@@37|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@37|)))
)))))) (and (and (and (and (and (forall ((|o#1@@38| T@U) ) (!  (=> (and ($Is refType |o#1@@38| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@38|))) (=> (=> ($Is refType |o#1@@38| Tclass._module.OwnedObject) (and (forall (($o@@173 T@U) ($f@@115 T@U) ) (!  (=> (or (not (= $o@@173 null)) (not true)) (=> (= $o@@173 |o#1@@38|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@173) $f@@115) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@173) $f@@115))))
 :qid |_09CounterNoStateMachinedfy.154:12|
 :skolemid |1009|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@173) $f@@115))
)) (forall ((|x#2@@14| T@U) ) (!  (=> (and ($Is refType |x#2@@14| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 (_module.Object.universe |o#1@@38|)) _module.Universe.content)) ($Box refType |x#2@@14|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.owner)) |o#1@@38|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.owner)) |o#1@@38|)))
 :qid |_09CounterNoStateMachinedfy.155:20|
 :skolemid |1010|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |x#2@@14|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 (_module.Object.universe |o#1@@38|)) _module.Universe.content)) ($Box refType |x#2@@14|)))
)))) (_module.Object.transitiveInv2 $Heap@30 $Heap@30 |o#1@@38|)))
 :qid |_09CounterNoStateMachinedfy.152:20|
 :skolemid |1011|
 :pattern ( (_module.Object.transitiveInv2 $Heap@30 $Heap@30 |o#1@@38|))
 :pattern ( (_module.Object.universe |o#1@@38|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@38|)))
)) (= $Heap@30 $Heap@31)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@30))) (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@30) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@30)) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@30 $Heap@31 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@30 $Heap@31 |universe#0|) (forall ((|o#0@@30| T@U) ) (!  (=> (and ($Is refType |o#0@@30| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|)))) (not ($IsAllocBox ($Box refType |o#0@@30|) Tclass._module.Object $Heap@30)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |771|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|)))
))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@30 $Heap@31 |universe#0|) (forall ((|o#1@@39| T@U) ) (!  (=> (and ($Is refType |o#1@@39| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@39|))) (or (forall (($o@@174 T@U) ($f@@116 T@U) ) (!  (=> (or (not (= $o@@174 null)) (not true)) (=> (= $o@@174 |o#1@@39|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@174) $f@@116) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@174) $f@@116))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |772|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@174) $f@@116))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#1@@39|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |o#1@@39|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |773|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |o#1@@39|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#1@@39|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@39|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@30 |universe#0|) (forall ((|o#2@@17| T@U) ) (!  (=> (and ($Is refType |o#2@@17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@17|))) (and (= (_module.Object.universe |o#2@@17|) |universe#0|) (or (not (= |o#2@@17| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |777|
 :pattern ( (_module.Object.universe |o#2@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@17|)))
))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@30 |universe#0|) (forall ((|o#3@@6| T@U) ) (!  (=> (and ($Is refType |o#3@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|))) (_module.Object.triggerAxioms $Heap@30 |o#3@@6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |778|
 :pattern ( (_module.Object.triggerAxioms $Heap@30 |o#3@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@31 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@31 |universe#0|) (forall ((|o#4@@6| T@U) ) (!  (=> (and ($Is refType |o#4@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@6|))) (and (= (_module.Object.universe |o#4@@6|) |universe#0|) (or (not (= |o#4@@6| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |781|
 :pattern ( (_module.Object.universe |o#4@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@6|)))
)))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@31 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@31 |universe#0|) (forall ((|o#5@@12| T@U) ) (!  (=> (and ($Is refType |o#5@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@12|))) (_module.Object.triggerAxioms $Heap@31 |o#5@@12|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |782|
 :pattern ( (_module.Object.triggerAxioms $Heap@31 |o#5@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@12|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#6@@6| T@U) ) (!  (=> (and ($Is refType |o#6@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@6|))) (_module.Object.transitiveInv2 $Heap@30 $Heap@31 |o#6@@6|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |785|
 :pattern ( (_module.Object.transitiveInv2 $Heap@30 $Heap@31 |o#6@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@6|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@30 $Heap@31 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#7@@6| T@U) ) (!  (=> (and ($Is refType |o#7@@6| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@6|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.owner) Tclass._module.Object $Heap@30)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |o#7@@6|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |786|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |o#7@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |o#7@@6|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@6|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalInv $Heap@30 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@30 |universe#0|) (forall ((|o#8@@11| T@U) ) (!  (=> (and ($Is refType |o#8@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|))) (and (= (_module.Object.universe |o#8@@11|) |universe#0|) (or (not (= |o#8@@11| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |789|
 :pattern ( (_module.Object.universe |o#8@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|)))
)))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalInv $Heap@30 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@30 |universe#0|) (forall ((|o#9@@6| T@U) ) (!  (=> (and ($Is refType |o#9@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@6|))) (_module.Object.triggerAxioms $Heap@30 |o#9@@6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |790|
 :pattern ( (_module.Object.triggerAxioms $Heap@30 |o#9@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@6|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@30 |universe#0|) (or (_module.Universe.globalInv $Heap@30 |universe#0|) (forall ((|o#10@@7| T@U) ) (!  (=> (and ($Is refType |o#10@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@7|))) (_module.Object.inv $Heap@30 |o#10@@7|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |793|
 :pattern ( (_module.Object.inv $Heap@30 |o#10@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@7|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@31 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@31 |universe#0|) (forall ((|o#11@@6| T@U) ) (!  (=> (and ($Is refType |o#11@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|))) (and (= (_module.Object.universe |o#11@@6|) |universe#0|) (or (not (= |o#11@@6| |universe#0|)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |795|
 :pattern ( (_module.Object.universe |o#11@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@31 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@31 |universe#0|) (forall ((|o#12@@12| T@U) ) (!  (=> (and ($Is refType |o#12@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@12|))) (_module.Object.triggerAxioms $Heap@31 |o#12@@12|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |796|
 :pattern ( (_module.Object.triggerAxioms $Heap@31 |o#12@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@12|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (forall ((|o#13@@12| T@U) ) (!  (=> (and ($Is refType |o#13@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@12|))) (and (or (forall (($o@@175 T@U) ($f@@117 T@U) ) (!  (=> (or (not (= $o@@175 null)) (not true)) (=> (= $o@@175 |o#13@@12|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@175) $f@@117) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@175) $f@@117))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |799|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@175) $f@@117))
)) (_module.Object.inv $Heap@31 |o#13@@12|)) (or (forall (($o@@176 T@U) ($f@@118 T@U) ) (!  (=> (or (not (= $o@@176 null)) (not true)) (=> (= $o@@176 |o#13@@12|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@176) $f@@118) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@176) $f@@118))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |800|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 $o@@176) $f@@118))
)) (_module.Object.inv2 $Heap@30 $Heap@31 |o#13@@12|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |801|
 :pattern ( (_module.Object.inv2 $Heap@30 $Heap@31 |o#13@@12|))
 :pattern ( (_module.Object.inv $Heap@31 |o#13@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@12|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@30 $Heap@31 |universe#0| |running#0@@3|) (forall ((|o#14@@6| T@U) ) (!  (=> (and ($Is refType |o#14@@6| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@6|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@6|))))) (_module.Object.inv $Heap@31 |o#14@@6|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |802|
 :pattern ( (_module.Object.inv $Heap@31 |o#14@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@6|)))
))))) (and ($IsGoodHeap $Heap@32) ($IsHeapAnchor $Heap@32)))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@31 |universe#0|) (=> (_module.Universe.globalInv $Heap@31 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@30 $Heap@31 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@31 |universe#0|) (and (_module.Universe.globalInv $Heap@31 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@31 |universe#0|) (forall ((|o#17@@8| T@U) ) (!  (=> (and ($Is refType |o#17@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@8|))) (_module.Object.inv $Heap@31 |o#17@@8|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |812|
 :pattern ( (_module.Object.inv $Heap@31 |o#17@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@8|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@30 $Heap@31 |universe#0|) (and (_module.Universe.globalInv2 $Heap@30 $Heap@31 |universe#0|) (and true (forall ((|o#18@@9| T@U) ) (!  (=> (and ($Is refType |o#18@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@9|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@9|)) (_module.Object.inv2 $Heap@30 $Heap@31 |o#18@@9|)))
 :qid |_09CounterNoStateMachinedfy.45:16|
 :skolemid |814|
 :pattern ( (_module.Object.inv2 $Heap@30 $Heap@31 |o#18@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@9|)))
))))) (and (= $Heap@31 $Heap@32) (= (ControlFlow 0 2) (- 0 1)))))))))))) (or (not (= |universe#0| null)) (not true)))))))
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
