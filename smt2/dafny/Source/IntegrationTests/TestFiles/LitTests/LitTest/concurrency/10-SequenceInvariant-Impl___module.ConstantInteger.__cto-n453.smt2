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
(declare-fun Tagclass._module.ConstantInteger () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.ConstantInteger? () T@U)
(declare-fun Tagclass._module.ConstantInteger? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ConstantInteger () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.ConstantInteger () T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.ConstantInteger? () T@U)
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
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.ConstantInteger.value () T@U)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#57| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.ConstantInteger.userInv2#canCall| (T@U T@U T@U) Bool)
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
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.ConstantInteger Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? class._module.ConstantInteger? Tagclass._module.ConstantInteger? tytagFamily$Universe tytagFamily$Thread tytagFamily$Object tytagFamily$ConstantInteger tytagFamily$OwnedObject field$content field$owner field$value field$nonvolatileVersion)
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
(assert (= (Ctor SetType) 7))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|running#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $h0)))) (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@0 $h0 this@@0 |running#0|) (and ($Is SetType |running#0| (TSet Tclass._module.Thread)) ($IsAlloc SetType |running#0| (TSet Tclass._module.Thread) $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |663|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h0 this@@0 |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |664|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap@@0 $h1 this@@0 |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@1 $Heap@@0 this@@1) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@1 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $prevHeap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@1 this@@1) (=> (_module.Universe.globalBaseInv $prevHeap@@1 this@@1) (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@1 $Heap@@0 this@@1)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@1 this@@1) (_module.Universe.globalBaseInv $Heap@@0 this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@1)))
 :qid |_10SequenceInvariantdfy.43:16|
 :skolemid |658|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_10SequenceInvariantdfy.35:22|
 :skolemid |659|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@1 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@1 this@@2) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedObject) ($IsAlloc refType this@@2 Tclass._module.OwnedObject $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@1 this@@2)) (= (_module.OwnedObject.baseFieldsInv $Heap@@1 this@@2)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 (_module.Object.universe this@@2)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@1 this@@2)))))
 :qid |_10SequenceInvariantdfy.316:19|
 :skolemid |1444|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
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
(assert (forall (($prevHeap@@2 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1434|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1435|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1535|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1536|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1998|
)) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@2 this@@5) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1999|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@2 this@@5))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.ConstantInteger?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@2 this@@6) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $Heap@@2)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@2 this@@6) (=> (_module.Universe.globalBaseInv $Heap@@2 this@@6) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@2 |o#0@@0|)))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |625|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@2 this@@6)  (and (_module.Universe.globalBaseInv $Heap@@2 this@@6) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@2 |o#0@@1|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |624|
 :pattern ( (_module.Object.inv $Heap@@2 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_10SequenceInvariantdfy.21:19|
 :skolemid |626|
 :pattern ( (_module.Universe.globalInv $Heap@@2 this@@6) ($IsGoodHeap $Heap@@2))
))))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Thread?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($Is refType $o@@3 Tclass._module.Thread?))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.ConstantInteger?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($Is refType $o@@4 Tclass._module.ConstantInteger?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@7 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe $h0@@3)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@5 $h0@@3 this@@7 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |691|
)) (= (_module.Universe.legalTransition $prevHeap@@5 $h0@@3 this@@7 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@5 $h1@@3 this@@7 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |692|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.legalTransition $prevHeap@@5 $h1@@3 this@@7 |running#0@@0|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall (($h T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@6) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1424|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@6) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.ConstantInteger? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2420|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.ConstantInteger? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.ConstantInteger $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.ConstantInteger? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2189|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.ConstantInteger $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.ConstantInteger? $h@@7))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@3 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.ConstantInteger.localUserInv $Heap@@3 this@@8)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |2010|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.ConstantInteger.localUserInv $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@4 this@@9) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv $Heap@@4 this@@9) (_module.ConstantInteger.userInv $Heap@@4 this@@9)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |2017|
 :pattern ( (_module.OwnedObject.userInv $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.userInv $Heap@@4 this@@9) (_module.ConstantInteger.userInv $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@5 this@@10) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@5 this@@10) (_module.Thread.baseFieldsInv $Heap@@5 this@@10)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1192|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@10) ($Is refType this@@10 Tclass._module.Thread) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@10) (_module.Thread.baseFieldsInv $Heap@@5 this@@10) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@6 this@@11) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@6 this@@11) (_module.ConstantInteger.baseUserFieldsInv $Heap@@6 this@@11)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1989|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@6 this@@11) ($Is refType this@@11 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@6 this@@11) (_module.ConstantInteger.baseUserFieldsInv $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@7 this@@12) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@7 this@@12) (_module.OwnedObject.baseFieldsInv $Heap@@7 this@@12)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1445|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@7 this@@12) ($Is refType this@@12 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@7 this@@12) (_module.OwnedObject.baseFieldsInv $Heap@@7 this@@12) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@8 this@@13) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@8 this@@13) (_module.Thread.localInv $Heap@@8 this@@13)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1206|
 :pattern ( (_module.Object.localInv $Heap@@8 this@@13) ($Is refType this@@13 Tclass._module.Thread) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.localInv $Heap@@8 this@@13) (_module.Thread.localInv $Heap@@8 this@@13) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@9 this@@14) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@9 this@@14) (_module.OwnedObject.localInv $Heap@@9 this@@14)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1461|
 :pattern ( (_module.Object.localInv $Heap@@9 this@@14) ($Is refType this@@14 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.localInv $Heap@@9 this@@14) (_module.OwnedObject.localInv $Heap@@9 this@@14) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@10 this@@15) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@10 this@@15) (_module.Thread.inv $Heap@@10 this@@15)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1218|
 :pattern ( (_module.Object.inv $Heap@@10 this@@15) ($Is refType this@@15 Tclass._module.Thread) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.inv $Heap@@10 this@@15) (_module.Thread.inv $Heap@@10 this@@15) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@11 this@@16) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@11 this@@16) (_module.OwnedObject.inv $Heap@@11 this@@16)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1474|
 :pattern ( (_module.Object.inv $Heap@@11 this@@16) ($Is refType this@@16 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.inv $Heap@@11 this@@16) (_module.OwnedObject.inv $Heap@@11 this@@16) ($IsGoodHeap $Heap@@11))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (= (FDim _module.ConstantInteger.value) 0))
(assert (= (FieldOfDecl class._module.ConstantInteger? field$value) _module.ConstantInteger.value))
(assert  (not ($IsGhostField _module.ConstantInteger.value)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Universe) ($IsAlloc refType this@@17 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@7 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@7) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |643|
)) (= (_module.Universe.globalInv2 $prevHeap@@6 $h0@@4 this@@17) (_module.Universe.globalInv2 $prevHeap@@6 $h1@@4 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |644|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv2 $prevHeap@@6 $h1@@4 this@@17))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Universe) ($IsAlloc refType this@@18 Tclass._module.Universe $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@8 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@8) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@8) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |654|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@7 $h0@@5 this@@18) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@7 $h1@@5 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |655|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@7 $h1@@5 this@@18))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Object) ($IsAlloc refType this@@19 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@9 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@9) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@9) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1120|
)) (= (_module.Object.localInv2 $prevHeap@@8 $h0@@6 this@@19) (_module.Object.localInv2 $prevHeap@@8 $h1@@6 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1121|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.localInv2 $prevHeap@@8 $h1@@6 this@@19))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@10 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@10) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@10) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1128|
)) (= (_module.Object.sequenceInv2 $prevHeap@@9 $h0@@7 this@@20) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@7 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1129|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@7 this@@20))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Object) ($IsAlloc refType this@@21 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@11 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@11) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@11) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1132|
)) (= (_module.Object.inv2 $prevHeap@@10 $h0@@8 this@@21) (_module.Object.inv2 $prevHeap@@10 $h1@@8 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1133|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.inv2 $prevHeap@@10 $h1@@8 this@@21))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@12 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@12) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@12) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1225|
)) (= (_module.Thread.localInv2 $prevHeap@@11 $h0@@9 this@@22) (_module.Thread.localInv2 $prevHeap@@11 $h1@@9 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1226|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.localInv2 $prevHeap@@11 $h1@@9 this@@22))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@13 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@13) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@13) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@12 $h0@@10 this@@23) (_module.Thread.sequenceInv2 $prevHeap@@12 $h1@@10 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.sequenceInv2 $prevHeap@@12 $h1@@10 this@@23))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Thread) ($IsAlloc refType this@@24 Tclass._module.Thread $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@14 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@14) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@14) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1239|
)) (= (_module.Thread.inv2 $prevHeap@@13 $h0@@11 this@@24) (_module.Thread.inv2 $prevHeap@@13 $h1@@11 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1240|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Thread.inv2 $prevHeap@@13 $h1@@11 this@@24))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.OwnedObject) ($IsAlloc refType this@@25 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@15 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@15) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@15) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1482|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@14 $h0@@12 this@@25) (_module.OwnedObject.localInv2 $prevHeap@@14 $h1@@12 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1483|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.localInv2 $prevHeap@@14 $h1@@12 this@@25))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@16 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@16) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@16) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1490|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@15 $h0@@13 this@@26) (_module.OwnedObject.sequenceInv2 $prevHeap@@15 $h1@@13 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1491|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.sequenceInv2 $prevHeap@@15 $h1@@13 this@@26))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@17 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@17) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@17) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1498|
)) (= (_module.OwnedObject.inv2 $prevHeap@@16 $h0@@14 this@@27) (_module.OwnedObject.inv2 $prevHeap@@16 $h1@@14 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1499|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.inv2 $prevHeap@@16 $h1@@14 this@@27))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@18 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@18) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@18) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1543|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@17 $h0@@15 this@@28) (_module.OwnedObject.localUserInv2 $prevHeap@@17 $h1@@15 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1544|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.localUserInv2 $prevHeap@@17 $h1@@15 this@@28))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.OwnedObject) ($IsAlloc refType this@@29 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@19 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@19) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@19) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1551|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@18 $h0@@16 this@@29) (_module.OwnedObject.userInv2 $prevHeap@@18 $h1@@16 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1552|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.userInv2 $prevHeap@@18 $h1@@16 this@@29))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.ConstantInteger) ($IsAlloc refType this@@30 Tclass._module.ConstantInteger $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@20 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@20) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@20) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |2020|
)) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h0@@17 this@@30) (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h1@@17 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2021|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.ConstantInteger.localUserInv2 $prevHeap@@19 $h1@@17 this@@30))
)))
(assert (forall (($prevHeap@@20 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.ConstantInteger) ($IsAlloc refType this@@31 Tclass._module.ConstantInteger $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@21 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@21) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@21) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |2027|
)) (= (_module.ConstantInteger.userInv2 $prevHeap@@20 $h0@@18 this@@31) (_module.ConstantInteger.userInv2 $prevHeap@@20 $h1@@18 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2028|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.ConstantInteger.userInv2 $prevHeap@@20 $h1@@18 this@@31))
)))
(assert (forall (($o@@22 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@22 Tclass._module.Universe? $h@@8)  (or (= $o@@22 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Universe? $h@@8))
)))
(assert (forall (($o@@23 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@23 Tclass._module.Object? $h@@9)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Object? $h@@9))
)))
(assert (forall (($o@@24 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.Thread? $h@@10)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1180|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.Thread? $h@@10))
)))
(assert (forall (($o@@25 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@25 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@25 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@25) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( ($IsAlloc refType $o@@25 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@26 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@26 Tclass._module.ConstantInteger? $h@@12)  (or (= $o@@26 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@26) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsAlloc refType $o@@26 Tclass._module.ConstantInteger? $h@@12))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@12 this@@32) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Object) ($IsAlloc refType this@@32 Tclass._module.Object $Heap@@12)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 (_module.Object.universe this@@32)) _module.Universe.content)) ($Box refType this@@32)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@12 this@@32) (=> (_module.Object.baseFieldsInv $Heap@@12 this@@32) (|_module.Universe.globalBaseInv#canCall| $Heap@@12 (_module.Object.universe this@@32))))) (= (_module.Object.objectGlobalBaseInv $Heap@@12 this@@32)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 (_module.Object.universe this@@32)) _module.Universe.content)) ($Box refType this@@32)) (_module.Object.baseFieldsInv $Heap@@12 this@@32)) (_module.Universe.globalBaseInv $Heap@@12 (_module.Object.universe this@@32))))))
 :qid |_10SequenceInvariantdfy.196:19|
 :skolemid |1046|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@12 this@@32) ($IsGoodHeap $Heap@@12))
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
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@13 T@U) (this@@33 T@U) (|running#0@@1| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@21 $Heap@@13 this@@33 |running#0@@1|) (and (< 12 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@21 $Heap@@13)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Universe) ($IsAlloc refType this@@33 Tclass._module.Universe $prevHeap@@21)))) ($Is refType |running#0@@1| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@21 $Heap@@13 this@@33 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@13 this@@33 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@21 this@@33) (=> (_module.Universe.globalInv $prevHeap@@21 this@@33) (and (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@2|)) (and (=> (not (forall (($o@@27 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@27) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@27) $f@@19))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |699|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@27) $f@@19))
))) (|_module.Object.inv#canCall| $Heap@@13 |o#0@@2|)) (=> (or (forall (($o@@28 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@28) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@28) $f@@20))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |701|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@28) $f@@20))
)) (_module.Object.inv $Heap@@13 |o#0@@2|)) (=> (not (forall (($o@@29 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@29) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@29) $f@@21))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |700|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@29) $f@@21))
))) (|_module.Object.inv2#canCall| $prevHeap@@21 $Heap@@13 |o#0@@2|))))))
 :qid |_10SequenceInvariantdfy.71:16|
 :skolemid |702|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@13 |o#0@@2|))
 :pattern ( (_module.Object.inv $Heap@@13 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (=> (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (or (forall (($o@@30 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@30) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@30) $f@@22))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |704|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@30) $f@@22))
)) (_module.Object.inv $Heap@@13 |o#0@@3|)) (or (forall (($o@@31 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@31) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@31) $f@@23))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |705|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@31) $f@@23))
)) (_module.Object.inv2 $prevHeap@@21 $Heap@@13 |o#0@@3|))))
 :qid |_10SequenceInvariantdfy.71:16|
 :skolemid |706|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@13 |o#0@@3|))
 :pattern ( (_module.Object.inv $Heap@@13 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@33) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@13 |o#1|)))
 :qid |_10SequenceInvariantdfy.73:16|
 :skolemid |703|
 :pattern ( (_module.Object.inv $Heap@@13 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@33) _module.Universe.content)) ($Box refType |o#1|)))
)))))))) (= (_module.Universe.legalTransition $prevHeap@@21 $Heap@@13 this@@33 |running#0@@1|)  (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@13 this@@33 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (_module.Universe.globalInv $prevHeap@@21 this@@33)) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (or (forall (($o@@32 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@32 null)) (not true)) (=> (= $o@@32 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@32) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@32) $f@@24))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |695|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@32) $f@@24))
)) (_module.Object.inv $Heap@@13 |o#0@@4|)) (or (forall (($o@@33 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@33) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@33) $f@@25))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |696|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 $o@@33) $f@@25))
)) (_module.Object.inv2 $prevHeap@@21 $Heap@@13 |o#0@@4|))))
 :qid |_10SequenceInvariantdfy.71:16|
 :skolemid |697|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@13 |o#0@@4|))
 :pattern ( (_module.Object.inv $Heap@@13 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#0@@4|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@33) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@13 |o#1@@0|))
 :qid |_10SequenceInvariantdfy.73:16|
 :skolemid |698|
 :pattern ( (_module.Object.inv $Heap@@13 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@33) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@33) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_10SequenceInvariantdfy.67:22|
 :skolemid |707|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@21 $Heap@@13 this@@33 |running#0@@1|) ($IsGoodHeap $Heap@@13))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@14 this@@34) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Thread) ($IsAlloc refType this@@34 Tclass._module.Thread $Heap@@14)))))) (= (_module.Thread.baseFieldsInv $Heap@@14 this@@34) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.254:19|
 :skolemid |1191|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@14 this@@34) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserFieldsInv#canCall| $Heap@@15 this@@35) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.ConstantInteger) ($IsAlloc refType this@@35 Tclass._module.ConstantInteger $Heap@@15)))))) (= (_module.ConstantInteger.baseUserFieldsInv $Heap@@15 this@@35) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.505:19|
 :skolemid |1988|
 :pattern ( (_module.ConstantInteger.baseUserFieldsInv $Heap@@15 this@@35) ($IsGoodHeap $Heap@@15))
))))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@16 this@@36) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.ConstantInteger) ($IsAlloc refType this@@36 Tclass._module.ConstantInteger $Heap@@16)))))) (= (_module.ConstantInteger.localUserInv $Heap@@16 this@@36) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.512:19|
 :skolemid |2009|
 :pattern ( (_module.ConstantInteger.localUserInv $Heap@@16 this@@36) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@17 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@22 $Heap@@17 this@@37) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@22 $Heap@@17)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Thread) ($IsAlloc refType this@@37 Tclass._module.Thread $prevHeap@@22)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@22 $Heap@@17 this@@37) (=> (_module.Thread.localInv2 $prevHeap@@22 $Heap@@17 this@@37) (|_module.Thread.sequenceInv2#canCall| $prevHeap@@22 $Heap@@17 this@@37))) (= (_module.Thread.inv2 $prevHeap@@22 $Heap@@17 this@@37)  (and (_module.Thread.localInv2 $prevHeap@@22 $Heap@@17 this@@37) (_module.Thread.sequenceInv2 $prevHeap@@22 $Heap@@17 this@@37)))))
 :qid |_10SequenceInvariantdfy.272:22|
 :skolemid |1243|
 :pattern ( (_module.Thread.inv2 $prevHeap@@22 $Heap@@17 this@@37) ($IsGoodHeap $Heap@@17))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@18 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@23 $Heap@@18 this@@38) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@18)) ($HeapSucc $prevHeap@@23 $Heap@@18)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Thread) ($IsAlloc refType this@@38 Tclass._module.Thread $prevHeap@@23)))))) (=> (_module.Thread.inv2 $prevHeap@@23 $Heap@@18 this@@38) (and (_module.Thread.localInv2 $prevHeap@@23 $Heap@@18 this@@38) (_module.Thread.sequenceInv2 $prevHeap@@23 $Heap@@18 this@@38))))
 :qid |_10SequenceInvariantdfy.272:22|
 :skolemid |1241|
 :pattern ( (_module.Thread.inv2 $prevHeap@@23 $Heap@@18 this@@38))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@19 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@24 $Heap@@19 this@@39) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@19)) ($HeapSucc $prevHeap@@24 $Heap@@19)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.OwnedObject) ($IsAlloc refType this@@39 Tclass._module.OwnedObject $prevHeap@@24)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@24 $Heap@@19 this@@39) (and (_module.OwnedObject.localInv2 $prevHeap@@24 $Heap@@19 this@@39) (_module.OwnedObject.sequenceInv2 $prevHeap@@24 $Heap@@19 this@@39))))
 :qid |_10SequenceInvariantdfy.360:22|
 :skolemid |1500|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@24 $Heap@@19 this@@39))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@20 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@25 $Heap@@20 this@@40) (and (< 11 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@20)) ($HeapSucc $prevHeap@@25 $Heap@@20)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Object) ($IsAlloc refType this@@40 Tclass._module.Object $prevHeap@@25)))))) (=> (_module.Object.inv2 $prevHeap@@25 $Heap@@20 this@@40) (and (_module.Object.localInv2 $prevHeap@@25 $Heap@@20 this@@40) (_module.Object.sequenceInv2 $prevHeap@@25 $Heap@@20 this@@40))))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1134|
 :pattern ( (_module.Object.inv2 $prevHeap@@25 $Heap@@20 this@@40))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@21 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@26 $Heap@@21 this@@41) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@26) ($IsGoodHeap $Heap@@21)) ($HeapSucc $prevHeap@@26 $Heap@@21)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.ConstantInteger) ($IsAlloc refType this@@41 Tclass._module.ConstantInteger $prevHeap@@26)))))) (= (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@26 $Heap@@21 this@@41) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@41) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 this@@41) _module.ConstantInteger.value))))))
 :qid |_10SequenceInvariantdfy.508:22|
 :skolemid |2002|
 :pattern ( (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@26 $Heap@@21 this@@41) ($IsGoodHeap $Heap@@21))
))))
(assert (forall (($h@@13 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.ConstantInteger?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@34) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@34) _module.ConstantInteger.value)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1983|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@34) _module.ConstantInteger.value)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@22 this@@42) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.OwnedObject) ($IsAlloc refType this@@42 Tclass._module.OwnedObject $Heap@@22)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@22 this@@42) (=> (_module.Object.objectGlobalBaseInv $Heap@@22 this@@42) (|_module.OwnedObject.localUserInv#canCall| $Heap@@22 this@@42))) (= (_module.OwnedObject.localInv $Heap@@22 this@@42)  (and (_module.Object.objectGlobalBaseInv $Heap@@22 this@@42) (_module.OwnedObject.localUserInv $Heap@@22 this@@42)))))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.localInv $Heap@@22 this@@42) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@23 this@@43) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@23)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@23 this@@43) (=> (_module.OwnedObject.localInv $Heap@@23 this@@43) (|_module.OwnedObject.userInv#canCall| $Heap@@23 this@@43))) (= (_module.OwnedObject.inv $Heap@@23 this@@43)  (and (_module.OwnedObject.localInv $Heap@@23 this@@43) (_module.OwnedObject.userInv $Heap@@23 this@@43)))))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1473|
 :pattern ( (_module.OwnedObject.inv $Heap@@23 this@@43) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@24 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@27 $Heap@@24 this@@44) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@27) ($IsGoodHeap $Heap@@24)) ($HeapSucc $prevHeap@@27 $Heap@@24)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.ConstantInteger) ($IsAlloc refType this@@44 Tclass._module.ConstantInteger $prevHeap@@27)))))) (= (_module.ConstantInteger.localUserInv2 $prevHeap@@27 $Heap@@24 this@@44)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@27 this@@44) _module.ConstantInteger.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@44) _module.ConstantInteger.value)))))))
 :qid |_10SequenceInvariantdfy.519:22|
 :skolemid |2024|
 :pattern ( (_module.ConstantInteger.localUserInv2 $prevHeap@@27 $Heap@@24 this@@44) ($IsGoodHeap $Heap@@24))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@14 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@35 null)) (not true)) ($Is refType $o@@35 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@35) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@35) Tclass._module.Universe $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1041|
 :pattern ( (_module.Object.universe $o@@35) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@35) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@36 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) ($Is refType $o@@36 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@36) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_module.Object.universe $o@@36))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@37 T@U) ($f@@26 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@37 $f@@26))  (=> (and (or (not (= $o@@37 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@37) |l#2|)))) (= $o@@37 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2431|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#57| |l#0| |l#1| |l#2| |l#3|) $o@@37 $f@@26))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@25 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@28 $Heap@@25 this@@45) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@45 null)) (not true)) ($Is refType this@@45 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@28 $Heap@@25 this@@45) (_module.Thread.localInv2 $prevHeap@@28 $Heap@@25 this@@45)))
 :qid |_10SequenceInvariantdfy.242:22|
 :skolemid |1230|
 :pattern ( (_module.Object.localInv2 $prevHeap@@28 $Heap@@25 this@@45) ($Is refType this@@45 Tclass._module.Thread) ($IsGoodHeap $Heap@@25))
 :pattern ( (_module.Object.localInv2 $prevHeap@@28 $Heap@@25 this@@45) (_module.Thread.localInv2 $prevHeap@@28 $Heap@@25 this@@45) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@26 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@29 $Heap@@26 this@@46) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@26 this@@46) (_module.Thread.sequenceInv2 $prevHeap@@29 $Heap@@26 this@@46)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1237|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@26 this@@46) ($Is refType this@@46 Tclass._module.Thread) ($IsGoodHeap $Heap@@26))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@29 $Heap@@26 this@@46) (_module.Thread.sequenceInv2 $prevHeap@@29 $Heap@@26 this@@46) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@27 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.ConstantInteger.unchangedNonvolatileUserFields#canCall| $prevHeap@@30 $Heap@@27 this@@47) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@27 this@@47) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@27 this@@47)))
 :qid |_10SequenceInvariantdfy.394:22|
 :skolemid |2003|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@27 this@@47) ($Is refType this@@47 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@27))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@27 this@@47) (_module.ConstantInteger.unchangedNonvolatileUserFields $prevHeap@@30 $Heap@@27 this@@47) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@28 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@31 $Heap@@28 this@@48) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@31 $Heap@@28 this@@48) (_module.ConstantInteger.localUserInv2 $prevHeap@@31 $Heap@@28 this@@48)))
 :qid |_10SequenceInvariantdfy.396:22|
 :skolemid |2025|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@31 $Heap@@28 this@@48) ($Is refType this@@48 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@28))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@31 $Heap@@28 this@@48) (_module.ConstantInteger.localUserInv2 $prevHeap@@31 $Heap@@28 this@@48) ($IsGoodHeap $Heap@@28))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@29 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@32 $Heap@@29 this@@49) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@32 $Heap@@29 this@@49) (_module.Thread.inv2 $prevHeap@@32 $Heap@@29 this@@49)))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1244|
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@29 this@@49) ($Is refType this@@49 Tclass._module.Thread) ($IsGoodHeap $Heap@@29))
 :pattern ( (_module.Object.inv2 $prevHeap@@32 $Heap@@29 this@@49) (_module.Thread.inv2 $prevHeap@@32 $Heap@@29 this@@49) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@30 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@33 $Heap@@30 this@@50) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@30 this@@50) (_module.ConstantInteger.userInv2 $prevHeap@@33 $Heap@@30 this@@50)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |2032|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@30 this@@50) ($Is refType this@@50 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@33 $Heap@@30 this@@50) (_module.ConstantInteger.userInv2 $prevHeap@@33 $Heap@@30 this@@50) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@31 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@34 $Heap@@31 this@@51) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@34 $Heap@@31 this@@51) (_module.OwnedObject.localInv2 $prevHeap@@34 $Heap@@31 this@@51)))
 :qid |_10SequenceInvariantdfy.242:22|
 :skolemid |1487|
 :pattern ( (_module.Object.localInv2 $prevHeap@@34 $Heap@@31 this@@51) ($Is refType this@@51 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.Object.localInv2 $prevHeap@@34 $Heap@@31 this@@51) (_module.OwnedObject.localInv2 $prevHeap@@34 $Heap@@31 this@@51) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@32 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@35 $Heap@@32 this@@52) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@52 null)) (not true)) ($Is refType this@@52 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@35 $Heap@@32 this@@52) (_module.OwnedObject.sequenceInv2 $prevHeap@@35 $Heap@@32 this@@52)))
 :qid |_10SequenceInvariantdfy.244:22|
 :skolemid |1495|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@35 $Heap@@32 this@@52) ($Is refType this@@52 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@32))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@35 $Heap@@32 this@@52) (_module.OwnedObject.sequenceInv2 $prevHeap@@35 $Heap@@32 this@@52) ($IsGoodHeap $Heap@@32))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@33 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@36 $Heap@@33 this@@53) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@53 null)) (not true)) ($Is refType this@@53 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@36 $Heap@@33 this@@53) (_module.OwnedObject.inv2 $prevHeap@@36 $Heap@@33 this@@53)))
 :qid |_10SequenceInvariantdfy.245:22|
 :skolemid |1503|
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@33 this@@53) ($Is refType this@@53 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@33))
 :pattern ( (_module.Object.inv2 $prevHeap@@36 $Heap@@33 this@@53) (_module.OwnedObject.inv2 $prevHeap@@36 $Heap@@33 this@@53) ($IsGoodHeap $Heap@@33))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ConstantInteger) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ConstantInteger)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@8 Tclass._module.ConstantInteger))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@11 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsBox bx@@12 Tclass._module.Thread?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ConstantInteger?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@13 Tclass._module.ConstantInteger?))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@34 this@@54) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Universe) ($IsAlloc refType this@@54 Tclass._module.Universe $Heap@@34)))))) (and (forall ((|o#0@@5| T@U) ) (!  (=> ($Is refType |o#0@@5| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@54) _module.Universe.content)) ($Box refType |o#0@@5|)) (=> (= (_module.Object.universe |o#0@@5|) this@@54) (=> (or (not (= |o#0@@5| this@@54)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@34 |o#0@@5|) (=> (_module.Object.baseFieldsInv $Heap@@34 |o#0@@5|) (|_module.Object.triggerAxioms#canCall| $Heap@@34 |o#0@@5|)))))))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |613|
 :pattern ( (_module.Object.triggerAxioms $Heap@@34 |o#0@@5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@34 |o#0@@5|))
 :pattern ( (_module.Object.universe |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@54) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (= (_module.Universe.globalBaseInv $Heap@@34 this@@54) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@54) _module.Universe.content)) ($Box refType |o#0@@6|))) (and (and (and (= (_module.Object.universe |o#0@@6|) this@@54) (or (not (= |o#0@@6| this@@54)) (not true))) (_module.Object.baseFieldsInv $Heap@@34 |o#0@@6|)) (_module.Object.triggerAxioms $Heap@@34 |o#0@@6|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |612|
 :pattern ( (_module.Object.triggerAxioms $Heap@@34 |o#0@@6|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@34 |o#0@@6|))
 :pattern ( (_module.Object.universe |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@54) _module.Universe.content)) ($Box refType |o#0@@6|)))
)))))
 :qid |_10SequenceInvariantdfy.16:19|
 :skolemid |614|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@34 this@@54) ($IsGoodHeap $Heap@@34))
))))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Thread)  (and ($Is refType |c#0@@6| Tclass._module.Thread?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.ConstantInteger)  (and ($Is refType |c#0@@8| Tclass._module.ConstantInteger?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2188|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.ConstantInteger))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.ConstantInteger?))
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
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@35 this@@55) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Object) ($IsAlloc refType this@@55 Tclass._module.Object $Heap@@35)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@55)) _module.Universe.content)) ($Box refType this@@55)) (|_module.Universe.globalInv#canCall| $Heap@@35 (_module.Object.universe this@@55))) (= (_module.Object.objectGlobalInv $Heap@@35 this@@55)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@55)) _module.Universe.content)) ($Box refType this@@55)) (_module.Universe.globalInv $Heap@@35 (_module.Object.universe this@@55))))))
 :qid |_10SequenceInvariantdfy.199:19|
 :skolemid |1053|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@35 this@@55) ($IsGoodHeap $Heap@@35))
))))
(assert (forall (($o@@38 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@38 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@38 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2406|
 :pattern ( ($IsAlloc refType $o@@38 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@39 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@39 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@39 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2410|
 :pattern ( ($IsAlloc refType $o@@39 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@40 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@40 Tclass._module.ConstantInteger? $heap@@1) ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2422|
 :pattern ( ($IsAlloc refType $o@@40 Tclass._module.ConstantInteger? $heap@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@36 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@37 $Heap@@36 this@@56) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@36)) ($HeapSucc $prevHeap@@37 $Heap@@36)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.Thread) ($IsAlloc refType this@@56 Tclass._module.Thread $prevHeap@@37)))))) (= (_module.Thread.localInv2 $prevHeap@@37 $Heap@@36 this@@56) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.266:22|
 :skolemid |1229|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@37 $Heap@@36 this@@56) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@37 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@38 $Heap@@37 this@@57) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@38) ($IsGoodHeap $Heap@@37)) ($HeapSucc $prevHeap@@38 $Heap@@37)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.Thread) ($IsAlloc refType this@@57 Tclass._module.Thread $prevHeap@@38)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@38 $Heap@@37 this@@57) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.269:22|
 :skolemid |1236|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@38 $Heap@@37 this@@57) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@38 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@39 $Heap@@38 this@@58) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@39) ($IsGoodHeap $Heap@@38)) ($HeapSucc $prevHeap@@39 $Heap@@38)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.ConstantInteger) ($IsAlloc refType this@@58 Tclass._module.ConstantInteger $prevHeap@@39)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv2#canCall| $prevHeap@@39 $Heap@@38 this@@58)) (= (_module.ConstantInteger.userInv2 $prevHeap@@39 $Heap@@38 this@@58)  (and true (_module.ConstantInteger.localUserInv2 $prevHeap@@39 $Heap@@38 this@@58)))))
 :qid |_10SequenceInvariantdfy.522:22|
 :skolemid |2031|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@39 $Heap@@38 this@@58) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@39 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@40 $Heap@@39 this@@59) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@40) ($IsGoodHeap $Heap@@39)) ($HeapSucc $prevHeap@@40 $Heap@@39)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.OwnedObject) ($IsAlloc refType this@@59 Tclass._module.OwnedObject $prevHeap@@40)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@40 $Heap@@39 this@@59)) (= (_module.OwnedObject.localInv2 $prevHeap@@40 $Heap@@39 this@@59)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@40 $Heap@@39 this@@59)))))
 :qid |_10SequenceInvariantdfy.334:22|
 :skolemid |1486|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@40 $Heap@@39 this@@59) ($IsGoodHeap $Heap@@39))
))))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@41 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (or (= $o@@41 this@@60) (= $o@@41 (_module.Object.universe this@@60)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@41) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@41) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1108|
)) (= (_module.Object.baseFieldsInv $h0@@19 this@@60) (_module.Object.baseFieldsInv $h1@@19 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1109|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Object.baseFieldsInv $h1@@19 this@@60))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@42 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (or (= $o@@42 this@@61) (= $o@@42 (_module.Object.universe this@@61)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@42) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@42) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1187|
)) (= (_module.Thread.baseFieldsInv $h0@@20 this@@61) (_module.Thread.baseFieldsInv $h1@@20 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1188|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Thread.baseFieldsInv $h1@@20 this@@61))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@43 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (or (= $o@@43 this@@62) (= $o@@43 (_module.Object.universe this@@62)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@43) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@43) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@21 this@@62) (_module.OwnedObject.baseFieldsInv $h1@@21 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.baseFieldsInv $h1@@21 this@@62))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@44 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (or (= $o@@44 this@@63) (= $o@@44 (_module.Object.universe this@@63)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@44) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@44) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1529|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@22 this@@63) (_module.OwnedObject.baseUserFieldsInv $h1@@22 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1530|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.OwnedObject.baseUserFieldsInv $h1@@22 this@@63))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@64 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.ConstantInteger))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@45 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (or (= $o@@45 this@@64) (= $o@@45 (_module.Object.universe this@@64)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@45) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@45) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1984|
)) (= (_module.ConstantInteger.baseUserFieldsInv $h0@@23 this@@64) (_module.ConstantInteger.baseUserFieldsInv $h1@@23 this@@64))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1985|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.ConstantInteger.baseUserFieldsInv $h1@@23 this@@64))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@40 this@@65) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Object) ($IsAlloc refType this@@65 Tclass._module.Object $Heap@@40)))))) (_module.Object.triggerAxioms $Heap@@40 this@@65))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1064|
 :pattern ( (_module.Object.triggerAxioms $Heap@@40 this@@65))
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
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 TInt) (and (= ($Box intType ($Unbox intType bx@@14)) bx@@14) ($Is intType ($Unbox intType bx@@14) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@14 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@41 this@@66) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.ConstantInteger) ($IsAlloc refType this@@66 Tclass._module.ConstantInteger $Heap@@41)))))) (=> (_module.ConstantInteger.userInv $Heap@@41 this@@66) (_module.ConstantInteger.localUserInv $Heap@@41 this@@66)))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2014|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@41 this@@66))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@42 this@@67) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.OwnedObject) ($IsAlloc refType this@@67 Tclass._module.OwnedObject $Heap@@42)))))) (=> (_module.OwnedObject.userInv $Heap@@42 this@@67) (_module.OwnedObject.localUserInv $Heap@@42 this@@67)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1549|
 :pattern ( (_module.OwnedObject.userInv $Heap@@42 this@@67))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@43 this@@68) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Thread) ($IsAlloc refType this@@68 Tclass._module.Thread $Heap@@43)))))) (=> (_module.Thread.localInv $Heap@@43 this@@68) (_module.Object.objectGlobalBaseInv $Heap@@43 this@@68)))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1203|
 :pattern ( (_module.Thread.localInv $Heap@@43 this@@68))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@44 this@@69) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.OwnedObject) ($IsAlloc refType this@@69 Tclass._module.OwnedObject $Heap@@44)))))) (=> (_module.OwnedObject.localInv $Heap@@44 this@@69) (_module.Object.objectGlobalBaseInv $Heap@@44 this@@69)))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1458|
 :pattern ( (_module.OwnedObject.localInv $Heap@@44 this@@69))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@45 this@@70) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.Object) ($IsAlloc refType this@@70 Tclass._module.Object $Heap@@45)))))) (=> (_module.Object.localInv $Heap@@45 this@@70) (_module.Object.objectGlobalBaseInv $Heap@@45 this@@70)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1116|
 :pattern ( (_module.Object.localInv $Heap@@45 this@@70))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@46 this@@71) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Thread) ($IsAlloc refType this@@71 Tclass._module.Thread $Heap@@46)))))) (=> (_module.Thread.inv $Heap@@46 this@@71) (_module.Thread.localInv $Heap@@46 this@@71)))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1215|
 :pattern ( (_module.Thread.inv $Heap@@46 this@@71))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@47 this@@72) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.OwnedObject) ($IsAlloc refType this@@72 Tclass._module.OwnedObject $Heap@@47)))))) (=> (_module.OwnedObject.inv $Heap@@47 this@@72) (_module.OwnedObject.localInv $Heap@@47 this@@72)))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1471|
 :pattern ( (_module.OwnedObject.inv $Heap@@47 this@@72))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@48 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@48 this@@73) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.Object) ($IsAlloc refType this@@73 Tclass._module.Object $Heap@@48)))))) (=> (_module.Object.inv $Heap@@48 this@@73) (_module.Object.localInv $Heap@@48 this@@73)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1126|
 :pattern ( (_module.Object.inv $Heap@@48 this@@73))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@49 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@41 $Heap@@49 this@@74) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@41) ($IsGoodHeap $Heap@@49)) ($HeapSucc $prevHeap@@41 $Heap@@49)) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.OwnedObject) ($IsAlloc refType this@@74 Tclass._module.OwnedObject $prevHeap@@41)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@41 this@@74) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@49 this@@74) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@41 $Heap@@49 this@@74)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@41 $Heap@@49 this@@74)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@41 this@@74) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@49 this@@74) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@41 $Heap@@49 this@@74)))))
 :qid |_10SequenceInvariantdfy.312:22|
 :skolemid |1438|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@41 $Heap@@49 this@@74) ($IsGoodHeap $Heap@@49))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@15) ($IsAllocBox bx@@15 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@15))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@15 T@U) ($o@@46 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@46 null)) (not true)) ($Is refType $o@@46 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@46) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@46) _module.OwnedObject.nonvolatileVersion)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1425|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@46) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@75 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@75 null)) (not true)) ($Is refType this@@75 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@47 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (= $o@@47 this@@75)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@47) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@47) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |1062|
)) (= (_module.Object.triggerAxioms $h0@@24 this@@75) (_module.Object.triggerAxioms $h1@@24 this@@75))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1063|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Object.triggerAxioms $h1@@24 this@@75))
)))
(assert (forall (($h@@16 T@U) ($o@@48 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@48 null)) (not true)) (= (dtype $o@@48) Tclass._module.ConstantInteger?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@48) _module.ConstantInteger.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1982|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@48) _module.ConstantInteger.value)))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@76 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@76 null)) (not true)) ($Is refType this@@76 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@49 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (or (= $o@@49 this@@76) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 this@@76) _module.Universe.content)) ($Box refType $o@@49)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@49) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@49) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |608|
)) (= (_module.Universe.globalBaseInv $h0@@25 this@@76) (_module.Universe.globalBaseInv $h1@@25 this@@76))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |609|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Universe.globalBaseInv $h1@@25 this@@76))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@50 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@42 $Heap@@50 this@@77) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@42) ($IsGoodHeap $Heap@@50)) ($HeapSucc $prevHeap@@42 $Heap@@50)) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.OwnedObject) ($IsAlloc refType this@@77 Tclass._module.OwnedObject $prevHeap@@42)))))) (and (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@77) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@77) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@42 $Heap@@50 this@@77)))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@42 $Heap@@50 this@@77)  (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@77) _module.OwnedObject.nonvolatileVersion)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@77) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@42 $Heap@@50 this@@77)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@77) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@77) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_10SequenceInvariantdfy.338:22|
 :skolemid |1494|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@42 $Heap@@50 this@@77) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@51 T@U) (this@@78 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@43 $Heap@@51 this@@78 |running#0@@2|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@43) ($IsGoodHeap $Heap@@51)) ($HeapSucc $prevHeap@@43 $Heap@@51)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.Universe) ($IsAlloc refType this@@78 Tclass._module.Universe $prevHeap@@43)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@43 $Heap@@51 this@@78) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@43 $Heap@@51 this@@78) (forall ((|o#0@@7| T@U) ) (!  (=> ($Is refType |o#0@@7| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#0@@7|)) (=> (not (forall (($o@@50 T@U) ($f@@34 T@U) ) (!  (=> (or (not (= $o@@50 null)) (not true)) (=> (= $o@@50 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@50) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 $o@@50) $f@@34))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |670|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@50) $f@@34))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@43 $Heap@@51 |o#0@@7|))))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |671|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@51 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#0@@7|)))
)))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@43 $Heap@@51 this@@78 |running#0@@2|)  (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@43 $Heap@@51 this@@78) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#0@@8|))) (or (forall (($o@@51 T@U) ($f@@35 T@U) ) (!  (=> (or (not (= $o@@51 null)) (not true)) (=> (= $o@@51 |o#0@@8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@51) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 $o@@51) $f@@35))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |667|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@51) $f@@35))
)) (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@51 |o#0@@8|)))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |668|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@43 $Heap@@51 |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#0@@8|)))
))) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#1@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@43)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 |o#1@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_10SequenceInvariantdfy.58:16|
 :skolemid |669|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 |o#1@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@78) _module.Universe.content)) ($Box refType |o#1@@1|)))
))))))
 :qid |_10SequenceInvariantdfy.51:22|
 :skolemid |674|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@43 $Heap@@51 this@@78 |running#0@@2|) ($IsGoodHeap $Heap@@51))
))))
(assert (forall (($h@@17 T@U) ($o@@52 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@52 null)) (not true)) ($Is refType $o@@52 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@52) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@52) _module.OwnedObject.owner)) Tclass._module.Object $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@52) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@79 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Universe) ($IsAlloc refType this@@79 Tclass._module.Universe $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@53 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@53) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@53) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@53) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.Universe.globalInv $h0@@26 this@@79) (_module.Universe.globalInv $h1@@26 this@@79))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Universe.globalInv $h1@@26 this@@79))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@80 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.Object) ($IsAlloc refType this@@80 Tclass._module.Object $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@54 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@54) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@54) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@54) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1042|
)) (= (_module.Object.objectGlobalBaseInv $h0@@27 this@@80) (_module.Object.objectGlobalBaseInv $h1@@27 this@@80))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1043|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.Object.objectGlobalBaseInv $h1@@27 this@@80))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.Object) ($IsAlloc refType this@@81 Tclass._module.Object $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@55 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@55) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@55) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@55) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1049|
)) (= (_module.Object.objectGlobalInv $h0@@28 this@@81) (_module.Object.objectGlobalInv $h1@@28 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1050|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Object.objectGlobalInv $h1@@28 this@@81))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Object) ($IsAlloc refType this@@82 Tclass._module.Object $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@56 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@56) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@56) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@56) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1114|
)) (= (_module.Object.localInv $h0@@29 this@@82) (_module.Object.localInv $h1@@29 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1115|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.Object.localInv $h1@@29 this@@82))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.Object) ($IsAlloc refType this@@83 Tclass._module.Object $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@57 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@57 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@57) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@57) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@57) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1124|
)) (= (_module.Object.inv $h0@@30 this@@83) (_module.Object.inv $h1@@30 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Object.inv $h1@@30 this@@83))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@84 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Thread) ($IsAlloc refType this@@84 Tclass._module.Thread $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@58 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@58) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@58) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@58) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1201|
)) (= (_module.Thread.localInv $h0@@31 this@@84) (_module.Thread.localInv $h1@@31 this@@84))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1202|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Thread.localInv $h1@@31 this@@84))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@85 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.Thread) ($IsAlloc refType this@@85 Tclass._module.Thread $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@59 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@59) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@59) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@59) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1213|
)) (= (_module.Thread.inv $h0@@32 this@@85) (_module.Thread.inv $h1@@32 this@@85))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1214|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Thread.inv $h1@@32 this@@85))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.OwnedObject) ($IsAlloc refType this@@86 Tclass._module.OwnedObject $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@60 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@60) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@60) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1456|
)) (= (_module.OwnedObject.localInv $h0@@33 this@@86) (_module.OwnedObject.localInv $h1@@33 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1457|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.OwnedObject.localInv $h1@@33 this@@86))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@87 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.OwnedObject) ($IsAlloc refType this@@87 Tclass._module.OwnedObject $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@61 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@61) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@61) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.OwnedObject.inv $h0@@34 this@@87) (_module.OwnedObject.inv $h1@@34 this@@87))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.OwnedObject.inv $h1@@34 this@@87))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@88 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.OwnedObject) ($IsAlloc refType this@@88 Tclass._module.OwnedObject $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@62 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@62) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@62) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.localUserInv $h0@@35 this@@88) (_module.OwnedObject.localUserInv $h1@@35 this@@88))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.OwnedObject.localUserInv $h1@@35 this@@88))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@89 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.OwnedObject) ($IsAlloc refType this@@89 Tclass._module.OwnedObject $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@63 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@63) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@63) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.OwnedObject.userInv $h0@@36 this@@89) (_module.OwnedObject.userInv $h1@@36 this@@89))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.OwnedObject.userInv $h1@@36 this@@89))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@90 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.ConstantInteger) ($IsAlloc refType this@@90 Tclass._module.ConstantInteger $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@64 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@64) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@64) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |2005|
)) (= (_module.ConstantInteger.localUserInv $h0@@37 this@@90) (_module.ConstantInteger.localUserInv $h1@@37 this@@90))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2006|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.ConstantInteger.localUserInv $h1@@37 this@@90))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.ConstantInteger) ($IsAlloc refType this@@91 Tclass._module.ConstantInteger $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@65 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@65) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@65) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@65) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |2012|
)) (= (_module.ConstantInteger.userInv $h0@@38 this@@91) (_module.ConstantInteger.userInv $h1@@38 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2013|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.ConstantInteger.userInv $h1@@38 this@@91))
)))
(assert (forall ((bx@@16 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@16 (TSet t@@5)))
)))
(assert (forall (($o@@66 T@U) ) (!  (=> ($Is refType $o@@66 Tclass._module.Thread?) ($Is refType $o@@66 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2405|
 :pattern ( ($Is refType $o@@66 Tclass._module.Thread?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Thread?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2403|
 :pattern ( ($IsBox bx@@17 Tclass._module.Thread?))
)))
(assert (forall (($o@@67 T@U) ) (!  (=> ($Is refType $o@@67 Tclass._module.OwnedObject?) ($Is refType $o@@67 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($Is refType $o@@67 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2407|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@68 T@U) ) (!  (=> ($Is refType $o@@68 Tclass._module.ConstantInteger?) ($Is refType $o@@68 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2421|
 :pattern ( ($Is refType $o@@68 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.ConstantInteger?) ($IsBox bx@@19 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2419|
 :pattern ( ($IsBox bx@@19 Tclass._module.ConstantInteger?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8)))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.ConstantInteger) Tagclass._module.ConstantInteger))
(assert (= (TagFamily Tclass._module.ConstantInteger) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.ConstantInteger?) Tagclass._module.ConstantInteger?))
(assert (= (TagFamily Tclass._module.ConstantInteger?) tytagFamily$ConstantInteger))
(assert (forall (($h@@18 T@U) ($o@@69 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@69 null)) (not true)) ($Is refType $o@@69 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@69) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1426|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@69) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@70 T@U) ) (! (= ($Is refType $o@@70 Tclass._module.Universe?)  (or (= $o@@70 null) (implements$_module.Universe (dtype $o@@70))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType $o@@70 Tclass._module.Universe?))
)))
(assert (forall (($o@@71 T@U) ) (! (= ($Is refType $o@@71 Tclass._module.Object?)  (or (= $o@@71 null) (implements$_module.Object (dtype $o@@71))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Is refType $o@@71 Tclass._module.Object?))
)))
(assert (forall (($o@@72 T@U) ) (! (= ($Is refType $o@@72 Tclass._module.OwnedObject?)  (or (= $o@@72 null) (implements$_module.OwnedObject (dtype $o@@72))))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( ($Is refType $o@@72 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@19 T@U) ($o@@73 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@73 null)) (not true)) ($Is refType $o@@73 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@73) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@73) _module.Universe.content)) (TSet Tclass._module.Object) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |607|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@73) _module.Universe.content)))
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
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@52 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@44 $Heap@@52 this@@92) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@44) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@44 $Heap@@52)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.Universe) ($IsAlloc refType this@@92 Tclass._module.Universe $prevHeap@@44)))))) (and (forall ((|o#0@@9| T@U) ) (!  (=> ($Is refType |o#0@@9| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@92) _module.Universe.content)) ($Box refType |o#0@@9|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@92) _module.Universe.content)) ($Box refType |o#0@@9|)) (|_module.Object.inv2#canCall| $prevHeap@@44 $Heap@@52 |o#0@@9|))))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |648|
 :pattern ( (_module.Object.inv2 $prevHeap@@44 $Heap@@52 |o#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@92) _module.Universe.content)) ($Box refType |o#0@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@92) _module.Universe.content)) ($Box refType |o#0@@9|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@44 $Heap@@52 this@@92) (forall ((|o#0@@10| T@U) ) (!  (=> (and ($Is refType |o#0@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@92) _module.Universe.content)) ($Box refType |o#0@@10|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@92) _module.Universe.content)) ($Box refType |o#0@@10|)) (_module.Object.inv2 $prevHeap@@44 $Heap@@52 |o#0@@10|)))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |647|
 :pattern ( (_module.Object.inv2 $prevHeap@@44 $Heap@@52 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@92) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@44 this@@92) _module.Universe.content)) ($Box refType |o#0@@10|)))
)))))
 :qid |_10SequenceInvariantdfy.31:22|
 :skolemid |649|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@44 $Heap@@52 this@@92) ($IsGoodHeap $Heap@@52))
))))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@53 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv2#canCall| $prevHeap@@45 $Heap@@53 this@@93) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@45) ($IsGoodHeap $Heap@@53)) ($HeapSucc $prevHeap@@45 $Heap@@53)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.ConstantInteger) ($IsAlloc refType this@@93 Tclass._module.ConstantInteger $prevHeap@@45)))))) (=> (_module.ConstantInteger.userInv2 $prevHeap@@45 $Heap@@53 this@@93) (_module.ConstantInteger.localUserInv2 $prevHeap@@45 $Heap@@53 this@@93)))
 :qid |_10SequenceInvariantdfy.522:22|
 :skolemid |2029|
 :pattern ( (_module.ConstantInteger.userInv2 $prevHeap@@45 $Heap@@53 this@@93))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@54 T@U) (this@@94 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@46 $Heap@@54 this@@94) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@46) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@46 $Heap@@54)) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.OwnedObject) ($IsAlloc refType this@@94 Tclass._module.OwnedObject $prevHeap@@46)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@46 $Heap@@54 this@@94) (_module.OwnedObject.localUserInv2 $prevHeap@@46 $Heap@@54 this@@94)))
 :qid |_10SequenceInvariantdfy.398:22|
 :skolemid |1553|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@46 $Heap@@54 this@@94))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@95 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@55 this@@95) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.ConstantInteger) ($IsAlloc refType this@@95 Tclass._module.ConstantInteger $Heap@@55)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv#canCall| $Heap@@55 this@@95)) (= (_module.ConstantInteger.userInv $Heap@@55 this@@95)  (and true (_module.ConstantInteger.localUserInv $Heap@@55 this@@95)))))
 :qid |_10SequenceInvariantdfy.515:19|
 :skolemid |2016|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@55 this@@95) ($IsGoodHeap $Heap@@55))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@56 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@56 this@@96) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.Thread) ($IsAlloc refType this@@96 Tclass._module.Thread $Heap@@56)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@56 this@@96)) (= (_module.Thread.localInv $Heap@@56 this@@96)  (and true (_module.Object.objectGlobalBaseInv $Heap@@56 this@@96)))))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1205|
 :pattern ( (_module.Thread.localInv $Heap@@56 this@@96) ($IsGoodHeap $Heap@@56))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@57 this@@97) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.Thread) ($IsAlloc refType this@@97 Tclass._module.Thread $Heap@@57)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@57 this@@97)) (= (_module.Thread.inv $Heap@@57 this@@97)  (and true (_module.Thread.localInv $Heap@@57 this@@97)))))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1217|
 :pattern ( (_module.Thread.inv $Heap@@57 this@@97) ($IsGoodHeap $Heap@@57))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@98 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@58 this@@98) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.Object) ($IsAlloc refType this@@98 Tclass._module.Object $Heap@@58)))))) (= (_module.Object.triggerAxioms $Heap@@58 this@@98)  (and (or ($Is refType this@@98 Tclass._module.OwnedObject) ($Is refType this@@98 Tclass._module.Thread)) (not (and ($Is refType this@@98 Tclass._module.OwnedObject) ($Is refType this@@98 Tclass._module.Thread))))))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1066|
 :pattern ( (_module.Object.triggerAxioms $Heap@@58 this@@98) ($IsGoodHeap $Heap@@58))
))))
(assert (forall (($h@@20 T@U) ($o@@74 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@74 null)) (not true)) ($Is refType $o@@74 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@74) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@74) _module.Universe.content)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@59 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun this@@99 () T@U)
(declare-fun this.nonvolatileVersion () Int)
(declare-fun |running#0@@3| () T@U)
(declare-fun |value#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.ConstantInteger.__ctor)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#57| null $Heap@@59 alloc |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 29)) true) (and (=> (= (ControlFlow 0 2) (- 0 28)) true) (=> (and (or (not (= this@@99 null)) (not true)) ($Is refType this@@99 Tclass._module.ConstantInteger?)) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) alloc)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) _module.OwnedObject.nonvolatileVersion))) this.nonvolatileVersion)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) _module.OwnedObject.owner)) |running#0@@3|) (= (_module.Object.universe this@@99) |universe#0|))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) _module.ConstantInteger.value))) |value#0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 this@@99) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (forall (($o@@75 T@U) ($f@@49 T@U) ) (!  (=> (and (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@75) alloc)))) (= $o@@75 (_module.Object.universe this@@99))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@75 $f@@49)))
 :qid |_10SequenceInvariantdfy.541:9|
 :skolemid |2186|
))) (=> (forall (($o@@76 T@U) ($f@@50 T@U) ) (!  (=> (and (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@76) alloc)))) (= $o@@76 (_module.Object.universe this@@99))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@76 $f@@50)))
 :qid |_10SequenceInvariantdfy.541:9|
 :skolemid |2186|
)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 (_module.Object.universe this@@99)) (or (_module.Universe.globalBaseInv $Heap@0 (_module.Object.universe this@@99)) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#0@@11|))) (and (and (and (= (_module.Object.universe |o#0@@11|) (_module.Object.universe this@@99)) (or (not (= |o#0@@11| (_module.Object.universe this@@99))) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#0@@11|)) (_module.Object.triggerAxioms $Heap@0 |o#0@@11|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |1068|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#0@@11|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#0@@11|))
 :pattern ( (_module.Object.universe |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#0@@11|)))
))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 (_module.Object.universe this@@99)) (or (_module.Universe.globalBaseInv $Heap@0 (_module.Object.universe this@@99)) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (and (and (= (_module.Object.universe |o#0@@12|) (_module.Object.universe this@@99)) (or (not (= |o#0@@12| (_module.Object.universe this@@99))) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#0@@12|)) (_module.Object.triggerAxioms $Heap@0 |o#0@@12|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |1068|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#0@@12|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#0@@12|))
 :pattern ( (_module.Object.universe |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#0@@12|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (_module.Object.baseFieldsInv $Heap@0 this@@99)) (=> (_module.Object.baseFieldsInv $Heap@0 this@@99) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (not (= this@@99 (_module.Object.universe this@@99))) (not true))) (=> (or (not (= this@@99 (_module.Object.universe this@@99))) (not true)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@1 this@@99)) (=> (and (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@1 this@@99) (and (_module.Object.objectGlobalBaseInv $Heap@1 this@@99) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType this@@99)) (_module.Object.baseFieldsInv $Heap@1 this@@99)) (_module.Universe.globalBaseInv $Heap@1 (_module.Object.universe this@@99))))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@99)) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@99)) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@99))))) (and (forall (($o@@77 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@77) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@77) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@77)) (= $o@@77 (_module.Object.universe this@@99))))
 :qid |_10SequenceInvariantdfy.211:10|
 :skolemid |1072|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@77))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 22)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@59)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@59) (and (=> (= (ControlFlow 0 2) (- 0 21)) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@59)) (=> ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@59) (=> (= call0formal@previous$Heap@0 $Heap@@59) (and (=> (= (ControlFlow 0 2) (- 0 20)) ($IsAlloc refType |running#0@@3| Tclass._module.Thread call0formal@previous$Heap@0)) (=> ($IsAlloc refType |running#0@@3| Tclass._module.Thread call0formal@previous$Heap@0) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (and (and (= (_module.Object.universe |o#0@@13|) |universe#0|) (or (not (= |o#0@@13| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@13|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@13|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |763|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@13|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|)))
))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (and (and (= (_module.Object.universe |o#0@@14|) |universe#0|) (or (not (= |o#0@@14| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@14|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@14|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |763|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@14|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@14|))
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@2|))) (and (and (and (= (_module.Object.universe |o#1@@2|) |universe#0|) (or (not (= |o#1@@2| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#1@@2|)) (_module.Object.triggerAxioms $Heap@1 |o#1@@2|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |765|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#1@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#1@@2|))
 :pattern ( (_module.Object.universe |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@2|)))
))))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@3|))) (and (and (and (= (_module.Object.universe |o#1@@3|) |universe#0|) (or (not (= |o#1@@3| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#1@@3|)) (_module.Object.triggerAxioms $Heap@1 |o#1@@3|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |765|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#1@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#1@@3|))
 :pattern ( (_module.Object.universe |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@3|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content))))))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))) (not ($IsAllocBox ($Box refType |o#2|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_10SequenceInvariantdfy.43:16|
 :skolemid |767|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))) (not ($IsAllocBox ($Box refType |o#2@@0|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_10SequenceInvariantdfy.43:16|
 :skolemid |767|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (or (forall (($o@@78 T@U) ($f@@51 T@U) ) (!  (=> (or (not (= $o@@78 null)) (not true)) (=> (= $o@@78 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@78) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@78) $f@@51))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |769|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@78) $f@@51))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3|)))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |770|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|))) (or (forall (($o@@79 T@U) ($f@@52 T@U) ) (!  (=> (or (not (= $o@@79 null)) (not true)) (=> (= $o@@79 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@79) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@79) $f@@52))))
 :qid |_10SequenceInvariantdfy.55:49|
 :skolemid |769|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@79) $f@@52))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|)))
 :qid |_10SequenceInvariantdfy.55:16|
 :skolemid |770|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_10SequenceInvariantdfy.58:16|
 :skolemid |771|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner) Tclass._module.Object call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_10SequenceInvariantdfy.58:16|
 :skolemid |771|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|))) (and (and (and (= (_module.Object.universe |o#5|) |universe#0|) (or (not (= |o#5| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#5|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#5|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |775|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#5|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#5|))
 :pattern ( (_module.Object.universe |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|))) (and (and (and (= (_module.Object.universe |o#5@@0|) |universe#0|) (or (not (= |o#5@@0| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#5@@0|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#5@@0|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |775|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#5@@0|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#5@@0|))
 :pattern ( (_module.Object.universe |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.inv call0formal@previous$Heap@0 |o#6|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |777|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|))) (_module.Object.inv call0formal@previous$Heap@0 |o#6@@0|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |777|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|))) (and (or (forall (($o@@80 T@U) ($f@@53 T@U) ) (!  (=> (or (not (= $o@@80 null)) (not true)) (=> (= $o@@80 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@80) $f@@53) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@80) $f@@53))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |779|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@80) $f@@53))
)) (_module.Object.inv $Heap@1 |o#7|)) (or (forall (($o@@81 T@U) ($f@@54 T@U) ) (!  (=> (or (not (= $o@@81 null)) (not true)) (=> (= $o@@81 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@81) $f@@54) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@81) $f@@54))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |780|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@81) $f@@54))
)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#7|))))
 :qid |_10SequenceInvariantdfy.71:16|
 :skolemid |781|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#7|))
 :pattern ( (_module.Object.inv $Heap@1 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|))) (and (or (forall (($o@@82 T@U) ($f@@55 T@U) ) (!  (=> (or (not (= $o@@82 null)) (not true)) (=> (= $o@@82 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@82) $f@@55) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@82) $f@@55))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |779|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@82) $f@@55))
)) (_module.Object.inv $Heap@1 |o#7@@0|)) (or (forall (($o@@83 T@U) ($f@@56 T@U) ) (!  (=> (or (not (= $o@@83 null)) (not true)) (=> (= $o@@83 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@83) $f@@56) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@83) $f@@56))))
 :qid |_10SequenceInvariantdfy.71:49|
 :skolemid |780|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@83) $f@@56))
)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#7@@0|))))
 :qid |_10SequenceInvariantdfy.71:16|
 :skolemid |781|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#7@@0|))
 :pattern ( (_module.Object.inv $Heap@1 |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8|))))) (_module.Object.inv $Heap@1 |o#8|))
 :qid |_10SequenceInvariantdfy.73:16|
 :skolemid |782|
 :pattern ( (_module.Object.inv $Heap@1 |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@1 |universe#0| |running#0@@3|) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|))))) (_module.Object.inv $Heap@1 |o#8@@0|))
 :qid |_10SequenceInvariantdfy.73:16|
 :skolemid |782|
 :pattern ( (_module.Object.inv $Heap@1 |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.Universe.globalInv#canCall| $Heap@1 |universe#0|) (=> (_module.Universe.globalInv $Heap@1 |universe#0|) (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@1 |universe#0|) (and (_module.Universe.globalInv $Heap@1 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.inv $Heap@1 |o#10|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |790|
 :pattern ( (_module.Object.inv $Heap@1 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#10|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (and (_module.Universe.globalInv2 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#11|)))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |792|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@1 |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
)))) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType this@@99))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType this@@99)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (=> (|_module.Universe.globalInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalInv $Heap@2 (_module.Object.universe this@@99)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalBaseInv $Heap@2 (_module.Object.universe this@@99)) (forall ((|o#7@@1| T@U) ) (!  (=> (and ($Is refType |o#7@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#7@@1|))) (and (and (and (= (_module.Object.universe |o#7@@1|) (_module.Object.universe this@@99)) (or (not (= |o#7@@1| (_module.Object.universe this@@99))) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#7@@1|)) (_module.Object.triggerAxioms $Heap@2 |o#7@@1|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |2179|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#7@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#7@@1|))
 :pattern ( (_module.Object.universe |o#7@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#7@@1|)))
))))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (=> (|_module.Universe.globalInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalInv $Heap@2 (_module.Object.universe this@@99)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalBaseInv $Heap@2 (_module.Object.universe this@@99)) (forall ((|o#7@@2| T@U) ) (!  (=> (and ($Is refType |o#7@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#7@@2|))) (and (and (and (= (_module.Object.universe |o#7@@2|) (_module.Object.universe this@@99)) (or (not (= |o#7@@2| (_module.Object.universe this@@99))) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#7@@2|)) (_module.Object.triggerAxioms $Heap@2 |o#7@@2|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |2179|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#7@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#7@@2|))
 :pattern ( (_module.Object.universe |o#7@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#7@@2|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (=> (|_module.Universe.globalInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalInv $Heap@2 (_module.Object.universe this@@99)) (forall ((|o#8@@1| T@U) ) (!  (=> (and ($Is refType |o#8@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#8@@1|))) (_module.Object.inv $Heap@2 |o#8@@1|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |2181|
 :pattern ( (_module.Object.inv $Heap@2 |o#8@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#8@@1|)))
))))))) (=> (=> (|_module.Object.objectGlobalInv#canCall| $Heap@2 this@@99) (or (_module.Object.objectGlobalInv $Heap@2 this@@99) (=> (|_module.Universe.globalInv#canCall| $Heap@2 (_module.Object.universe this@@99)) (or (_module.Universe.globalInv $Heap@2 (_module.Object.universe this@@99)) (forall ((|o#8@@2| T@U) ) (!  (=> (and ($Is refType |o#8@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#8@@2|))) (_module.Object.inv $Heap@2 |o#8@@2|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |2181|
 :pattern ( (_module.Object.inv $Heap@2 |o#8@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 (_module.Object.universe this@@99)) _module.Universe.content)) ($Box refType |o#8@@2|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.globalInv2#canCall| $Heap@@59 $Heap@2 |universe#0|) (or (_module.Universe.globalInv2 $Heap@@59 $Heap@2 |universe#0|) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#9|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)) (_module.Object.inv2 $Heap@@59 $Heap@2 |o#9|)))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |2183|
 :pattern ( (_module.Object.inv2 $Heap@@59 $Heap@2 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
))))) (=> (=> (|_module.Universe.globalInv2#canCall| $Heap@@59 $Heap@2 |universe#0|) (or (_module.Universe.globalInv2 $Heap@@59 $Heap@2 |universe#0|) (forall ((|o#9@@0| T@U) ) (!  (=> (and ($Is refType |o#9@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)) (_module.Object.inv2 $Heap@@59 $Heap@2 |o#9@@0|)))
 :qid |_10SequenceInvariantdfy.32:12|
 :skolemid |2183|
 :pattern ( (_module.Object.inv2 $Heap@@59 $Heap@2 |o#9@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (_module.Object.universe this@@99) |universe#0|)) (=> (= (_module.Object.universe this@@99) |universe#0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@99) _module.OwnedObject.owner)) |running#0@@3|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@99) _module.OwnedObject.owner)) |running#0@@3|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@99) _module.ConstantInteger.value))) |value#0|)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@99) _module.ConstantInteger.value))) |value#0|) (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@99)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@59) ($IsHeapAnchor $Heap@@59)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@59))) (=> (and (and (and ($Is refType |running#0@@3| Tclass._module.Thread) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@59)) (= 17 $FunctionContextHeight)) (and (and (|_module.Universe.globalInv#canCall| $Heap@@59 |universe#0|) (and (_module.Universe.globalInv $Heap@@59 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@59 |universe#0|) (forall ((|o#6@@1| T@U) ) (!  (=> (and ($Is refType |o#6@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|))) (_module.Object.inv $Heap@@59 |o#6@@1|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |2178|
 :pattern ( (_module.Object.inv $Heap@@59 |o#6@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|)))
))))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@59 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)) (= (ControlFlow 0 30) 2)))) anon0_correct))))
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
