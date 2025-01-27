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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.objectGlobalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject Tagclass._module.Object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object field$content field$nonvolatileVersion field$owner)
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
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (= (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this@@0) (or (not (= |o#0| this@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_07CounterThreadOwnershipdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1371|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h0 this@@1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1372|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@0 $h1 this@@1))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1381|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@0 this@@2) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1382|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@0 this@@2))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@3) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@3) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@3) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0@@0|)))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@3)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@3) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@1 |o#0@@1|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_07CounterThreadOwnershipdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@3))
)))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@2 this@@4) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@2 this@@4) (_module.OwnedObject.localInv $Heap@@2 this@@4)))
 :qid |_07CounterThreadOwnershipdfy.271:19|
 :skolemid |1304|
 :pattern ( (_module.Object.localInv $Heap@@2 this@@4) ($Is refType this@@4 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.localInv $Heap@@2 this@@4) (_module.OwnedObject.localInv $Heap@@2 this@@4) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@3 this@@5) (and (< 7 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@3 this@@5) (_module.OwnedObject.inv $Heap@@3 this@@5)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1314|
 :pattern ( (_module.Object.inv $Heap@@3 this@@5) ($Is refType this@@5 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.inv $Heap@@3 this@@5) (_module.OwnedObject.inv $Heap@@3 this@@5) ($IsGoodHeap $Heap@@3))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap@@2 $h0@@1 this@@6) (_module.Universe.globalInv2 $prevHeap@@2 $h1@@1 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.globalInv2 $prevHeap@@2 $h1@@1 this@@6))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |530|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@3 $h0@@2 this@@7) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@3 $h1@@2 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |531|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@3 $h1@@2 this@@7))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1008|
)) (= (_module.Object.objectGlobalInv2 $prevHeap@@4 $h0@@3 this@@8) (_module.Object.objectGlobalInv2 $prevHeap@@4 $h1@@3 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1009|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.objectGlobalInv2 $prevHeap@@4 $h1@@3 this@@8))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Object) ($IsAlloc refType this@@9 Tclass._module.Object $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@5 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@5) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1021|
)) (= (_module.Object.localInv2 $prevHeap@@5 $h0@@4 this@@9) (_module.Object.localInv2 $prevHeap@@5 $h1@@4 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1022|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.localInv2 $prevHeap@@5 $h1@@4 this@@9))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Object) ($IsAlloc refType this@@10 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@6 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@6) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@6) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1029|
)) (= (_module.Object.transitiveInv2 $prevHeap@@6 $h0@@5 this@@10) (_module.Object.transitiveInv2 $prevHeap@@6 $h1@@5 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1030|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.transitiveInv2 $prevHeap@@6 $h1@@5 this@@10))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@11 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Object) ($IsAlloc refType this@@11 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@7 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@7) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@7) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1033|
)) (= (_module.Object.inv2 $prevHeap@@7 $h0@@6 this@@11) (_module.Object.inv2 $prevHeap@@7 $h1@@6 this@@11))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1034|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.inv2 $prevHeap@@7 $h1@@6 this@@11))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.OwnedObject) ($IsAlloc refType this@@12 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@8 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@8) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@8) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1322|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@8 $h0@@7 this@@12) (_module.OwnedObject.localInv2 $prevHeap@@8 $h1@@7 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1323|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.localInv2 $prevHeap@@8 $h1@@7 this@@12))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.OwnedObject) ($IsAlloc refType this@@13 Tclass._module.OwnedObject $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@9 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@9) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@9) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@9 $h0@@8 this@@13) (_module.OwnedObject.transitiveInv2 $prevHeap@@9 $h1@@8 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.OwnedObject.transitiveInv2 $prevHeap@@9 $h1@@8 this@@13))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.OwnedObject) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@10 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@10) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@10) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1344|
)) (= (_module.OwnedObject.inv2 $prevHeap@@10 $h0@@9 this@@14) (_module.OwnedObject.inv2 $prevHeap@@10 $h1@@9 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1345|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.inv2 $prevHeap@@10 $h1@@9 this@@14))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.OwnedObject) ($IsAlloc refType this@@15 Tclass._module.OwnedObject $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@11 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@11) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@11) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1393|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@11 $h0@@10 this@@15) (_module.OwnedObject.localUserInv2 $prevHeap@@11 $h1@@10 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1394|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.localUserInv2 $prevHeap@@11 $h1@@10 this@@15))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.OwnedObject) ($IsAlloc refType this@@16 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@12 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@12) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@12) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1401|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@12 $h0@@11 this@@16) (_module.OwnedObject.userInv2 $prevHeap@@12 $h1@@11 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1402|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.userInv2 $prevHeap@@12 $h1@@11 this@@16))
)))
(assert (forall (($o@@13 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass._module.Universe? $h@@4)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Universe? $h@@4))
)))
(assert (forall (($o@@14 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.Object? $h@@5)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Object? $h@@5))
)))
(assert (forall (($o@@15 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $h@@6)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $h@@6))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@16 T@U) ($f@@12 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@16 $f@@12))  (=> (and (or (not (= $o@@16 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@16) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@16) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3542|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@16 $f@@12))
)))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@4 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv2#canCall| $prevHeap@@13 $Heap@@4 this@@17) (and (< 11 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@13 $Heap@@4)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object $prevHeap@@13)))) (_module.Object.objectGlobalInv $prevHeap@@13 this@@17)))) (and (and (|_module.Object.baseInv#canCall| $Heap@@4 this@@17) (=> (_module.Object.baseInv $Heap@@4 this@@17) (|_module.Universe.globalInv2#canCall| $prevHeap@@13 $Heap@@4 (_module.Object.universe this@@17)))) (= (_module.Object.objectGlobalInv2 $prevHeap@@13 $Heap@@4 this@@17)  (and (_module.Object.baseInv $Heap@@4 this@@17) (_module.Universe.globalInv2 $prevHeap@@13 $Heap@@4 (_module.Object.universe this@@17))))))
 :qid |_07CounterThreadOwnershipdfy.267:22|
 :skolemid |1012|
 :pattern ( (_module.Object.objectGlobalInv2 $prevHeap@@13 $Heap@@4 this@@17) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@5 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@14 $Heap@@5 this@@18) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@14) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@14 $Heap@@5)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.OwnedObject) ($IsAlloc refType this@@18 Tclass._module.OwnedObject $prevHeap@@14)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@14 $Heap@@5 this@@18) (and (_module.OwnedObject.localInv2 $prevHeap@@14 $Heap@@5 this@@18) (_module.OwnedObject.transitiveInv2 $prevHeap@@14 $Heap@@5 this@@18))))
 :qid |_07CounterThreadOwnershipdfy.357:22|
 :skolemid |1346|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@14 $Heap@@5 this@@18))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@6 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@15 $Heap@@6 this@@19) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@15) ($IsGoodHeap $Heap@@6)) ($HeapSucc $prevHeap@@15 $Heap@@6)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Object) ($IsAlloc refType this@@19 Tclass._module.Object $prevHeap@@15)))))) (=> (_module.Object.inv2 $prevHeap@@15 $Heap@@6 this@@19) (and (_module.Object.localInv2 $prevHeap@@15 $Heap@@6 this@@19) (_module.Object.transitiveInv2 $prevHeap@@15 $Heap@@6 this@@19))))
 :qid |_07CounterThreadOwnershipdfy.275:22|
 :skolemid |1035|
 :pattern ( (_module.Object.inv2 $prevHeap@@15 $Heap@@6 this@@19))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@7 this@@20) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $Heap@@7)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@7 this@@20) (=> (_module.OwnedObject.localInv $Heap@@7 this@@20) (|_module.OwnedObject.userInv#canCall| $Heap@@7 this@@20))) (= (_module.OwnedObject.inv $Heap@@7 this@@20)  (and (_module.OwnedObject.localInv $Heap@@7 this@@20) (_module.OwnedObject.userInv $Heap@@7 this@@20)))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1313|
 :pattern ( (_module.OwnedObject.inv $Heap@@7 this@@20) ($IsGoodHeap $Heap@@7))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@7 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@17) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@17) Tclass._module.Universe $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |966|
 :pattern ( (_module.Object.universe $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@17) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@18) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (_module.Object.universe $o@@18))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@8 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@16 $Heap@@8 this@@21) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@16 $Heap@@8 this@@21) (_module.OwnedObject.localInv2 $prevHeap@@16 $Heap@@8 this@@21)))
 :qid |_07CounterThreadOwnershipdfy.272:22|
 :skolemid |1327|
 :pattern ( (_module.Object.localInv2 $prevHeap@@16 $Heap@@8 this@@21) ($Is refType this@@21 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.localInv2 $prevHeap@@16 $Heap@@8 this@@21) (_module.OwnedObject.localInv2 $prevHeap@@16 $Heap@@8 this@@21) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@9 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@17 $Heap@@9 this@@22) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@17 $Heap@@9 this@@22) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $Heap@@9 this@@22)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1337|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@17 $Heap@@9 this@@22) ($Is refType this@@22 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@17 $Heap@@9 this@@22) (_module.OwnedObject.transitiveInv2 $prevHeap@@17 $Heap@@9 this@@22) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@10 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@18 $Heap@@10 this@@23) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@18 $Heap@@10 this@@23) (_module.OwnedObject.inv2 $prevHeap@@18 $Heap@@10 this@@23)))
 :qid |_07CounterThreadOwnershipdfy.275:22|
 :skolemid |1349|
 :pattern ( (_module.Object.inv2 $prevHeap@@18 $Heap@@10 this@@23) ($Is refType this@@23 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.inv2 $prevHeap@@18 $Heap@@10 this@@23) (_module.OwnedObject.inv2 $prevHeap@@18 $Heap@@10 this@@23) ($IsGoodHeap $Heap@@10))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Universe)  (and ($Is refType |c#0@@2| Tclass._module.Universe?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Object)  (and ($Is refType |c#0@@3| Tclass._module.Object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@4| Tclass._module.OwnedObject?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@11 this@@24) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@11)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (|_module.Universe.globalBaseInv#canCall| $Heap@@11 (_module.Object.universe this@@24))) (= (_module.Object.baseInv $Heap@@11 this@@24)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (_module.Universe.globalBaseInv $Heap@@11 (_module.Object.universe this@@24))))))
 :qid |_07CounterThreadOwnershipdfy.243:19|
 :skolemid |971|
 :pattern ( (_module.Object.baseInv $Heap@@11 this@@24) ($IsGoodHeap $Heap@@11))
))))
(assert (forall (($o@@19 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@19 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.OwnedObject? $heap))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@12 this@@25) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Object) ($IsAlloc refType this@@25 Tclass._module.Object $Heap@@12)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@12 this@@25) (=> (_module.Object.baseInv $Heap@@12 this@@25) (|_module.Universe.globalInv#canCall| $Heap@@12 (_module.Object.universe this@@25)))) (= (_module.Object.objectGlobalInv $Heap@@12 this@@25)  (and (_module.Object.baseInv $Heap@@12 this@@25) (_module.Universe.globalInv $Heap@@12 (_module.Object.universe this@@25))))))
 :qid |_07CounterThreadOwnershipdfy.264:19|
 :skolemid |1005|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@12 this@@25) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@13 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@19 $Heap@@13 this@@26) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@19 $Heap@@13)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $prevHeap@@19)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@19 $Heap@@13 this@@26)) (= (_module.OwnedObject.localInv2 $prevHeap@@19 $Heap@@13 this@@26)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@19 $Heap@@13 this@@26)))))
 :qid |_07CounterThreadOwnershipdfy.338:22|
 :skolemid |1326|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@19 $Heap@@13 this@@26) ($IsGoodHeap $Heap@@13))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@14 this@@27) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $Heap@@14)))))) (=> (_module.OwnedObject.userInv $Heap@@14 this@@27) (_module.OwnedObject.localUserInv $Heap@@14 this@@27)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1399|
 :pattern ( (_module.OwnedObject.userInv $Heap@@14 this@@27))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@15 this@@28) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $Heap@@15)))))) (=> (_module.OwnedObject.inv $Heap@@15 this@@28) (_module.OwnedObject.localInv $Heap@@15 this@@28)))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1311|
 :pattern ( (_module.OwnedObject.inv $Heap@@15 this@@28))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@16 this@@29) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Object) ($IsAlloc refType this@@29 Tclass._module.Object $Heap@@16)))))) (=> (_module.Object.inv $Heap@@16 this@@29) (_module.Object.localInv $Heap@@16 this@@29)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1027|
 :pattern ( (_module.Object.inv $Heap@@16 this@@29))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@17 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@20 $Heap@@17 this@@30) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@17)) ($HeapSucc $prevHeap@@20 $Heap@@17)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.OwnedObject) ($IsAlloc refType this@@30 Tclass._module.OwnedObject $prevHeap@@20)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@30) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@20 $Heap@@17 this@@30)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@20 $Heap@@17 this@@30)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@20 this@@30) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@30) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@20 $Heap@@17 this@@30)))))
 :qid |_07CounterThreadOwnershipdfy.375:22|
 :skolemid |1375|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@20 $Heap@@17 this@@30) ($IsGoodHeap $Heap@@17))
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
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@18 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@21 $Heap@@18 this@@31) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@18)) ($HeapSucc $prevHeap@@21 $Heap@@18)) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Universe) ($IsAlloc refType this@@31 Tclass._module.Universe $prevHeap@@21)))))) (and (and (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@2|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv2#canCall| $prevHeap@@21 $Heap@@18 |o#0@@2|))))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@18 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (=> (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@3|)) (_module.Object.inv2 $prevHeap@@21 $Heap@@18 |o#0@@3|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |521|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@18 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@21 $Heap@@18 this@@31))) (= (_module.Universe.globalInv2 $prevHeap@@21 $Heap@@18 this@@31)  (and (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@4|)) (_module.Object.inv2 $prevHeap@@21 $Heap@@18 |o#0@@4|)))
 :qid |_07CounterThreadOwnershipdfy.44:16|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@18 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@31) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@31) _module.Universe.content)) ($Box refType |o#0@@4|)))
)) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@21 $Heap@@18 this@@31)))))
 :qid |_07CounterThreadOwnershipdfy.43:22|
 :skolemid |522|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@21 $Heap@@18 this@@31) ($IsGoodHeap $Heap@@18))
))))
(assert (forall (($h@@8 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@20 null)) (not true)) ($Is refType $o@@20 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@20) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@20) _module.OwnedObject.nonvolatileVersion)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@20) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@32 null)) (not true)) ($Is refType this@@32 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@21 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (or (= $o@@21 this@@32) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 this@@32) _module.Universe.content)) ($Box refType $o@@21)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@21) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@21) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@12 this@@32) (_module.Universe.globalBaseInv $h1@@12 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Universe.globalBaseInv $h1@@12 this@@32))
)))
(assert (forall (($h@@9 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@22 null)) (not true)) ($Is refType $o@@22 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@22) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@22) _module.OwnedObject.owner)) Tclass._module.Object $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@22) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@19 this@@33) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $Heap@@19)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@19 this@@33) (=> (_module.Object.baseInv $Heap@@19 this@@33) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 (_module.Object.universe this@@33)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 this@@33) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@19 this@@33) (=> (_module.OwnedObject.baseUserInv $Heap@@19 this@@33) (|_module.OwnedObject.localUserInv#canCall| $Heap@@19 this@@33)))))) (= (_module.OwnedObject.localInv $Heap@@19 this@@33)  (and (and (and (_module.Object.baseInv $Heap@@19 this@@33) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 (_module.Object.universe this@@33)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 this@@33) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@19 this@@33)) (_module.OwnedObject.localUserInv $Heap@@19 this@@33)))))
 :qid |_07CounterThreadOwnershipdfy.327:19|
 :skolemid |1303|
 :pattern ( (_module.OwnedObject.localInv $Heap@@19 this@@33) ($IsGoodHeap $Heap@@19))
))))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Universe) ($IsAlloc refType this@@34 Tclass._module.Universe $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@23 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@23) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@23) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@13 this@@34) (_module.Universe.globalInv $h1@@13 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Universe.globalInv $h1@@13 this@@34))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Object) ($IsAlloc refType this@@35 Tclass._module.Object $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@24 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@24) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@24) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |967|
)) (= (_module.Object.baseInv $h0@@14 this@@35) (_module.Object.baseInv $h1@@14 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |968|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Object.baseInv $h1@@14 this@@35))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Object) ($IsAlloc refType this@@36 Tclass._module.Object $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@25 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@25) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@25) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1001|
)) (= (_module.Object.objectGlobalInv $h0@@15 this@@36) (_module.Object.objectGlobalInv $h1@@15 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1002|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.objectGlobalInv $h1@@15 this@@36))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Object) ($IsAlloc refType this@@37 Tclass._module.Object $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@26 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@26) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@26) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1017|
)) (= (_module.Object.localInv $h0@@16 this@@37) (_module.Object.localInv $h1@@16 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1018|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Object.localInv $h1@@16 this@@37))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Object) ($IsAlloc refType this@@38 Tclass._module.Object $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@27 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@27) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@27) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1025|
)) (= (_module.Object.inv $h0@@17 this@@38) (_module.Object.inv $h1@@17 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1026|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Object.inv $h1@@17 this@@38))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.OwnedObject) ($IsAlloc refType this@@39 Tclass._module.OwnedObject $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@28 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@28) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@28) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1299|
)) (= (_module.OwnedObject.localInv $h0@@18 this@@39) (_module.OwnedObject.localInv $h1@@18 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1300|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedObject.localInv $h1@@18 this@@39))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.OwnedObject) ($IsAlloc refType this@@40 Tclass._module.OwnedObject $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@29 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@29) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@29) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1309|
)) (= (_module.OwnedObject.inv $h0@@19 this@@40) (_module.OwnedObject.inv $h1@@19 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1310|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.inv $h1@@19 this@@40))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.OwnedObject) ($IsAlloc refType this@@41 Tclass._module.OwnedObject $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@30 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@30) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@30) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1385|
)) (= (_module.OwnedObject.baseUserInv $h0@@20 this@@41) (_module.OwnedObject.baseUserInv $h1@@20 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1386|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.baseUserInv $h1@@20 this@@41))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.OwnedObject) ($IsAlloc refType this@@42 Tclass._module.OwnedObject $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@31 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@31) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@31) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1389|
)) (= (_module.OwnedObject.localUserInv $h0@@21 this@@42) (_module.OwnedObject.localUserInv $h1@@21 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1390|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.localUserInv $h1@@21 this@@42))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@32 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@32) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@32) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.OwnedObject.userInv $h0@@22 this@@43) (_module.OwnedObject.userInv $h1@@22 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1398|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.OwnedObject.userInv $h1@@22 this@@43))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass._module.OwnedObject?) ($Is refType $o@@33 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@33 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject?) ($IsBox bx@@12 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@10 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@34 null)) (not true)) ($Is refType $o@@34 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@34) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@34) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@35 T@U) ) (! (= ($Is refType $o@@35 Tclass._module.Universe?)  (or (= $o@@35 null) (implements$_module.Universe (dtype $o@@35))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@35 Tclass._module.Universe?))
)))
(assert (forall (($o@@36 T@U) ) (! (= ($Is refType $o@@36 Tclass._module.Object?)  (or (= $o@@36 null) (implements$_module.Object (dtype $o@@36))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@36 Tclass._module.Object?))
)))
(assert (forall (($o@@37 T@U) ) (! (= ($Is refType $o@@37 Tclass._module.OwnedObject?)  (or (= $o@@37 null) (implements$_module.OwnedObject (dtype $o@@37))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@37 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@11 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@38) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@38) _module.Universe.content)) (TSet Tclass._module.Object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@38) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@20 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@22 $Heap@@20 this@@44) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@20)) ($HeapSucc $prevHeap@@22 $Heap@@20)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.OwnedObject) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $prevHeap@@22)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@44) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@44) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@22 $Heap@@20 this@@44)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@22 $Heap@@20 this@@44)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@44) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@44) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@22 $Heap@@20 this@@44) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 (_module.Object.universe this@@44)) _module.Universe.content)) ($Box refType |o#0@@5|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 |o#0@@5|) _module.OwnedObject.owner)) this@@44))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 |o#0@@5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 |o#0@@5|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 |o#0@@5|) _module.OwnedObject.owner)) this@@44)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |1334|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 |o#0@@5|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 |o#0@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 |o#0@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 |o#0@@5|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 (_module.Object.universe this@@44)) _module.Universe.content)) ($Box refType |o#0@@5|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@44) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@44) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@22 this@@44) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@44) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_07CounterThreadOwnershipdfy.343:22|
 :skolemid |1336|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@22 $Heap@@20 this@@44) ($IsGoodHeap $Heap@@20))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@21 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@23 $Heap@@21 this@@45) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@21)) ($HeapSucc $prevHeap@@23 $Heap@@21)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $prevHeap@@23)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@23 $Heap@@21 this@@45) (_module.OwnedObject.localUserInv2 $prevHeap@@23 $Heap@@21 this@@45)))
 :qid |_07CounterThreadOwnershipdfy.388:22|
 :skolemid |1403|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@23 $Heap@@21 this@@45))
))))
(assert (forall (($h@@12 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@39 null)) (not true)) ($Is refType $o@@39 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@39) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@39) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@22 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@24 $Heap@@22 this@@46) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@22)) ($HeapSucc $prevHeap@@24 $Heap@@22)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Universe) ($IsAlloc refType this@@46 Tclass._module.Universe $prevHeap@@24)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@24 $Heap@@22 this@@46)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@46) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@46) _module.Universe.content))) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@46) _module.Universe.content)) ($Box refType |o#0@@6|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@46) _module.Universe.content)) ($Box refType |o#0@@6|)))) (not ($IsAllocBox ($Box refType |o#0@@6|) Tclass._module.Object $prevHeap@@24)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |534|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@46) _module.Universe.content)) ($Box refType |o#0@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@46) _module.Universe.content)) ($Box refType |o#0@@6|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@46) _module.Universe.content)) ($Box refType |o#1|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 |o#1|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |535|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@46) _module.Universe.content)) ($Box refType |o#1|)))
)))))
 :qid |_07CounterThreadOwnershipdfy.51:22|
 :skolemid |537|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@24 $Heap@@22 this@@46) ($IsGoodHeap $Heap@@22))
))))
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
(declare-fun $Heap@@23 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@47 () T@U)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon5_correct  (=> (= (_module.Object.objectGlobalInv2 $Heap@@23 current$Heap this@@47)  (and (_module.Object.baseInv current$Heap this@@47) (_module.Universe.globalInv2 $Heap@@23 current$Heap (_module.Object.universe this@@47)))) (=> (and (and (|_module.Object.baseInv#canCall| current$Heap this@@47) (=> (_module.Object.baseInv current$Heap this@@47) (|_module.Universe.globalInv2#canCall| $Heap@@23 current$Heap (_module.Object.universe this@@47)))) ($Is boolType (bool_2_U (_module.Object.objectGlobalInv2 $Heap@@23 current$Heap this@@47)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@1|)))))))
(let ((anon8_Else_correct  (=> (not (_module.Object.baseInv current$Heap this@@47)) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 8) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (_module.Object.baseInv current$Heap this@@47) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= (_module.Object.universe this@@47) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@47) null)) (not true)) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@47)) Tclass._module.Universe? current$Heap) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType (_module.Object.universe this@@47) Tclass._module.Universe $Heap@@23)) (=> ($IsAlloc refType (_module.Object.universe this@@47) Tclass._module.Universe $Heap@@23) (=> (and (and (= |b$reqreads#1@0| (forall (($o@@40 T@U) ($f@@24 T@U) ) (!  (=> (and (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@40) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@40) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@40 $f@@24)))
 :qid |_07CounterThreadOwnershipdfy.267:105|
 :skolemid |1014|
))) (|_module.Universe.globalInv2#canCall| $Heap@@23 current$Heap (_module.Object.universe this@@47))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 5) 3))) anon5_correct)))))))))
(let ((anon7_Else_correct  (=> ($IsAllocBox ($Box refType this@@47) Tclass._module.Object? current$Heap) (=> (and (= |b$reqreads#0@0| (forall (($o@@41 T@U) ($f@@25 T@U) ) (!  (=> (and (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@41) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@41) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@41 $f@@25)))
 :qid |_07CounterThreadOwnershipdfy.267:83|
 :skolemid |1013|
))) (|_module.Object.baseInv#canCall| current$Heap this@@47)) (and (=> (= (ControlFlow 0 9) 5) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType this@@47 Tclass._module.Object $Heap@@23)) (=> ($IsAlloc refType this@@47 Tclass._module.Object $Heap@@23) (=> (and (|_module.Object.objectGlobalInv#canCall| $Heap@@23 this@@47) (_module.Object.objectGlobalInv $Heap@@23 this@@47)) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@23) ($IsHeapAnchor $Heap@@23)) (=> (and (and (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Object) ($IsAlloc refType this@@47 Tclass._module.Object previous$Heap))) (= 11 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@23) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 12) 10))) anon0_correct))))
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
