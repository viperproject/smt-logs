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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
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
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun _module.Universe.content () T@U)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Universe.legalTransition (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransition#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Object.goodPreAndLegalChanges (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Object.goodPreAndLegalChanges#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? tytagFamily$Universe tytagFamily$Thread tytagFamily$Object tytagFamily$OwnedObject field$content field$owner field$nonvolatileVersion)
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
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1698|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1699|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@1))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1814|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@2) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1815|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@2))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@3) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@3) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@3) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Universe.content)) ($Box refType |o#0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0|)))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |670|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Universe.content)) ($Box refType |o#0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@3)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@3) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|))) (_module.Object.inv $Heap@@0 |o#0@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |669|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@3) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.39:19|
 :skolemid |671|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@3) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Thread?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1389|
 :pattern ( ($Is refType $o@@2 Tclass._module.Thread?))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@4 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Universe) ($IsAlloc refType this@@4 Tclass._module.Universe $h0@@2)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@3 $h0@@2 this@@4 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Universe.legalTransition $prevHeap@@3 $h0@@2 this@@4 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@3 $h1@@2 this@@4 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.legalTransition $prevHeap@@3 $h1@@2 this@@4 |running#0@@0|))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@5 T@U) (|running#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Object) ($IsAlloc refType this@@5 Tclass._module.Object $h0@@3)))) (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@4 $h0@@3 this@@5 |running#0@@1|) (and ($Is refType |running#0@@1| Tclass._module.Thread) ($IsAlloc refType |running#0@@1| Tclass._module.Thread $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1279|
)) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@4 $h0@@3 this@@5 |running#0@@1|) (_module.Object.goodPreAndLegalChanges $prevHeap@@4 $h1@@3 this@@5 |running#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1280|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.goodPreAndLegalChanges $prevHeap@@4 $h1@@3 this@@5 |running#0@@1|))
)))
(assert (forall (($h T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@5))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@1 this@@6) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@1 this@@6) (_module.Thread.localInv $Heap@@1 this@@6)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1402|
 :pattern ( (_module.Object.localInv $Heap@@1 this@@6) ($Is refType this@@6 Tclass._module.Thread) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.localInv $Heap@@1 this@@6) (_module.Thread.localInv $Heap@@1 this@@6) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@2 this@@7) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@2 this@@7) (_module.OwnedObject.localInv $Heap@@2 this@@7)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1709|
 :pattern ( (_module.Object.localInv $Heap@@2 this@@7) ($Is refType this@@7 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.localInv $Heap@@2 this@@7) (_module.OwnedObject.localInv $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@3 this@@8) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@3 this@@8) (_module.Thread.inv $Heap@@3 this@@8)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1410|
 :pattern ( (_module.Object.inv $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.Thread) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.inv $Heap@@3 this@@8) (_module.Thread.inv $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@4 this@@9) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@4 this@@9) (_module.OwnedObject.inv $Heap@@4 this@@9)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1719|
 :pattern ( (_module.Object.inv $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.inv $Heap@@4 this@@9) (_module.OwnedObject.inv $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Universe) ($IsAlloc refType this@@10 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@6) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |688|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h0@@4 this@@10) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h1@@4 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |689|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@5 $h1@@4 this@@10))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@11 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Object) ($IsAlloc refType this@@11 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1318|
)) (= (_module.Object.localInv2 $prevHeap@@6 $h0@@5 this@@11) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@11))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1319|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.localInv2 $prevHeap@@6 $h1@@5 this@@11))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1326|
)) (= (_module.Object.transitiveInv2 $prevHeap@@7 $h0@@6 this@@12) (_module.Object.transitiveInv2 $prevHeap@@7 $h1@@6 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1327|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.transitiveInv2 $prevHeap@@7 $h1@@6 this@@12))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.Object.inv2 $prevHeap@@8 $h0@@7 this@@13) (_module.Object.inv2 $prevHeap@@8 $h1@@7 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.inv2 $prevHeap@@8 $h1@@7 this@@13))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Thread) ($IsAlloc refType this@@14 Tclass._module.Thread $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1421|
)) (= (_module.Thread.localInv2 $prevHeap@@9 $h0@@8 this@@14) (_module.Thread.localInv2 $prevHeap@@9 $h1@@8 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1422|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.localInv2 $prevHeap@@9 $h1@@8 this@@14))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Thread) ($IsAlloc refType this@@15 Tclass._module.Thread $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@11) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1428|
)) (= (_module.Thread.transitiveInv2 $prevHeap@@10 $h0@@9 this@@15) (_module.Thread.transitiveInv2 $prevHeap@@10 $h1@@9 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1429|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Thread.transitiveInv2 $prevHeap@@10 $h1@@9 this@@15))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Thread) ($IsAlloc refType this@@16 Tclass._module.Thread $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@12) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1435|
)) (= (_module.Thread.inv2 $prevHeap@@11 $h0@@10 this@@16) (_module.Thread.inv2 $prevHeap@@11 $h1@@10 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1436|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Thread.inv2 $prevHeap@@11 $h1@@10 this@@16))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.OwnedObject) ($IsAlloc refType this@@17 Tclass._module.OwnedObject $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@13) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@13) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1731|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@12 $h0@@11 this@@17) (_module.OwnedObject.localInv2 $prevHeap@@12 $h1@@11 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1732|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.localInv2 $prevHeap@@12 $h1@@11 this@@17))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.OwnedObject) ($IsAlloc refType this@@18 Tclass._module.OwnedObject $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@14) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@14) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1739|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@13 $h0@@12 this@@18) (_module.OwnedObject.transitiveInv2 $prevHeap@@13 $h1@@12 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1740|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.transitiveInv2 $prevHeap@@13 $h1@@12 this@@18))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@15 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@15) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@15) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1753|
)) (= (_module.OwnedObject.inv2 $prevHeap@@14 $h0@@13 this@@19) (_module.OwnedObject.inv2 $prevHeap@@14 $h1@@13 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1754|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.inv2 $prevHeap@@14 $h1@@13 this@@19))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@16 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@16) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@16) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1826|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h0@@14 this@@20) (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h1@@14 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1827|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.localUserInv2 $prevHeap@@15 $h1@@14 this@@20))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@17 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@17) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@17) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1834|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@16 $h0@@15 this@@21) (_module.OwnedObject.userInv2 $prevHeap@@16 $h1@@15 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1835|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.userInv2 $prevHeap@@16 $h1@@15 this@@21))
)))
(assert (forall (($o@@18 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.Universe? $h@@6)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Universe? $h@@6))
)))
(assert (forall (($o@@19 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.Object? $h@@7)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1248|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Object? $h@@7))
)))
(assert (forall (($o@@20 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@20 Tclass._module.Thread? $h@@8)  (or (= $o@@20 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@20) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1390|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.Thread? $h@@8))
)))
(assert (forall (($o@@21 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $h@@9)  (or (= $o@@21 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@21) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $h@@9))
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
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@5 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@17 $Heap@@5 this@@22) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@17) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@17 $Heap@@5)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $prevHeap@@17)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@17 $Heap@@5 this@@22) (=> (_module.Thread.localInv2 $prevHeap@@17 $Heap@@5 this@@22) (|_module.Thread.transitiveInv2#canCall| $prevHeap@@17 $Heap@@5 this@@22))) (= (_module.Thread.inv2 $prevHeap@@17 $Heap@@5 this@@22)  (and (_module.Thread.localInv2 $prevHeap@@17 $Heap@@5 this@@22) (_module.Thread.transitiveInv2 $prevHeap@@17 $Heap@@5 this@@22)))))
 :qid |_09CounterNoStateMachinedfy.303:22|
 :skolemid |1439|
 :pattern ( (_module.Thread.inv2 $prevHeap@@17 $Heap@@5 this@@22) ($IsGoodHeap $Heap@@5))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@6 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@18 $Heap@@6 this@@23) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@18) ($IsGoodHeap $Heap@@6)) ($HeapSucc $prevHeap@@18 $Heap@@6)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $prevHeap@@18)))))) (=> (_module.Thread.inv2 $prevHeap@@18 $Heap@@6 this@@23) (and (_module.Thread.localInv2 $prevHeap@@18 $Heap@@6 this@@23) (_module.Thread.transitiveInv2 $prevHeap@@18 $Heap@@6 this@@23))))
 :qid |_09CounterNoStateMachinedfy.303:22|
 :skolemid |1437|
 :pattern ( (_module.Thread.inv2 $prevHeap@@18 $Heap@@6 this@@23))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@7 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@19 $Heap@@7 this@@24) (and (< 6 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@19 $Heap@@7)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.OwnedObject) ($IsAlloc refType this@@24 Tclass._module.OwnedObject $prevHeap@@19)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@19 $Heap@@7 this@@24) (and (_module.OwnedObject.localInv2 $prevHeap@@19 $Heap@@7 this@@24) (_module.OwnedObject.transitiveInv2 $prevHeap@@19 $Heap@@7 this@@24))))
 :qid |_09CounterNoStateMachinedfy.388:22|
 :skolemid |1755|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@19 $Heap@@7 this@@24))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@8 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@20 $Heap@@8 this@@25) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@20) ($IsGoodHeap $Heap@@8)) ($HeapSucc $prevHeap@@20 $Heap@@8)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Object) ($IsAlloc refType this@@25 Tclass._module.Object $prevHeap@@20)))))) (=> (_module.Object.inv2 $prevHeap@@20 $Heap@@8 this@@25) (and (_module.Object.localInv2 $prevHeap@@20 $Heap@@8 this@@25) (_module.Object.transitiveInv2 $prevHeap@@20 $Heap@@8 this@@25))))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1332|
 :pattern ( (_module.Object.inv2 $prevHeap@@20 $Heap@@8 this@@25))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@9 T@U) (this@@26 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@21 $Heap@@9 this@@26 |running#0@@2|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@21 $Heap@@9)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Universe) ($IsAlloc refType this@@26 Tclass._module.Universe $prevHeap@@21)))) ($Is refType |running#0@@2| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@21 $Heap@@9 this@@26 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@9 this@@26 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@21 this@@26) (=> (_module.Universe.globalInv $prevHeap@@21 this@@26) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@9 this@@26) (=> (_module.Universe.globalBaseInv $Heap@@9 this@@26) (and (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@1|)) (and (=> (not (forall (($o@@22 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@22 null)) (not true)) (=> (= $o@@22 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@22) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@22) $f@@16))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |736|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@22) $f@@16))
))) (|_module.Object.inv#canCall| $Heap@@9 |o#0@@1|)) (=> (or (forall (($o@@23 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@23 null)) (not true)) (=> (= $o@@23 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@23) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@23) $f@@17))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |738|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@23) $f@@17))
)) (_module.Object.inv $Heap@@9 |o#0@@1|)) (=> (not (forall (($o@@24 T@U) ($f@@18 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@24) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@24) $f@@18))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |737|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@24) $f@@18))
))) (|_module.Object.inv2#canCall| $prevHeap@@21 $Heap@@9 |o#0@@1|))))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |739|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@9 |o#0@@1|))
 :pattern ( (_module.Object.inv $Heap@@9 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@1|)))
)) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|))) (and (or (forall (($o@@25 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@25) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@25) $f@@19))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |741|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@25) $f@@19))
)) (_module.Object.inv $Heap@@9 |o#0@@2|)) (or (forall (($o@@26 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@26) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@26) $f@@20))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |742|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@26) $f@@20))
)) (_module.Object.inv2 $prevHeap@@21 $Heap@@9 |o#0@@2|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |743|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@9 |o#0@@2|))
 :pattern ( (_module.Object.inv $Heap@@9 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@26) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@9 |o#1|)))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |740|
 :pattern ( (_module.Object.inv $Heap@@9 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@26) _module.Universe.content)) ($Box refType |o#1|)))
)))))))))) (= (_module.Universe.legalTransition $prevHeap@@21 $Heap@@9 this@@26 |running#0@@2|)  (and (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@9 this@@26 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@2|))) (_module.Universe.globalInv $prevHeap@@21 this@@26)) (_module.Universe.globalBaseInv $Heap@@9 this@@26)) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (or (forall (($o@@27 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@27) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@27) $f@@21))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |732|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@27) $f@@21))
)) (_module.Object.inv $Heap@@9 |o#0@@3|)) (or (forall (($o@@28 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@28) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@28) $f@@22))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |733|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@28) $f@@22))
)) (_module.Object.inv2 $prevHeap@@21 $Heap@@9 |o#0@@3|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |734|
 :pattern ( (_module.Object.inv2 $prevHeap@@21 $Heap@@9 |o#0@@3|))
 :pattern ( (_module.Object.inv $Heap@@9 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@9 |o#1@@0|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |735|
 :pattern ( (_module.Object.inv $Heap@@9 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@26) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.86:22|
 :skolemid |744|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@21 $Heap@@9 this@@26 |running#0@@2|) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@10 this@@27) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $Heap@@10)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@10 this@@27) (=> (_module.OwnedObject.localInv $Heap@@10 this@@27) (|_module.OwnedObject.userInv#canCall| $Heap@@10 this@@27))) (= (_module.OwnedObject.inv $Heap@@10 this@@27)  (and (_module.OwnedObject.localInv $Heap@@10 this@@27) (_module.OwnedObject.userInv $Heap@@10 this@@27)))))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1718|
 :pattern ( (_module.OwnedObject.inv $Heap@@10 this@@27) ($IsGoodHeap $Heap@@10))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@10 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@29) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@29) Tclass._module.Universe $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1250|
 :pattern ( (_module.Object.universe $o@@29) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@29) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@30) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1249|
 :pattern ( (_module.Object.universe $o@@30))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@11 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@22 $Heap@@11 this@@28) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@22 $Heap@@11 this@@28) (_module.Thread.localInv2 $prevHeap@@22 $Heap@@11 this@@28)))
 :qid |_09CounterNoStateMachinedfy.278:22|
 :skolemid |1426|
 :pattern ( (_module.Object.localInv2 $prevHeap@@22 $Heap@@11 this@@28) ($Is refType this@@28 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.localInv2 $prevHeap@@22 $Heap@@11 this@@28) (_module.Thread.localInv2 $prevHeap@@22 $Heap@@11 this@@28) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@12 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@23 $Heap@@12 this@@29) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Thread)))) (= (_module.Object.transitiveInv2 $prevHeap@@23 $Heap@@12 this@@29) (_module.Thread.transitiveInv2 $prevHeap@@23 $Heap@@12 this@@29)))
 :qid |_09CounterNoStateMachinedfy.280:22|
 :skolemid |1433|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@23 $Heap@@12 this@@29) ($Is refType this@@29 Tclass._module.Thread) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@23 $Heap@@12 this@@29) (_module.Thread.transitiveInv2 $prevHeap@@23 $Heap@@12 this@@29) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@13 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@24 $Heap@@13 this@@30) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@24 $Heap@@13 this@@30) (_module.Thread.inv2 $prevHeap@@24 $Heap@@13 this@@30)))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1440|
 :pattern ( (_module.Object.inv2 $prevHeap@@24 $Heap@@13 this@@30) ($Is refType this@@30 Tclass._module.Thread) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.inv2 $prevHeap@@24 $Heap@@13 this@@30) (_module.Thread.inv2 $prevHeap@@24 $Heap@@13 this@@30) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@14 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@25 $Heap@@14 this@@31) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@25 $Heap@@14 this@@31) (_module.OwnedObject.localInv2 $prevHeap@@25 $Heap@@14 this@@31)))
 :qid |_09CounterNoStateMachinedfy.278:22|
 :skolemid |1736|
 :pattern ( (_module.Object.localInv2 $prevHeap@@25 $Heap@@14 this@@31) ($Is refType this@@31 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.localInv2 $prevHeap@@25 $Heap@@14 this@@31) (_module.OwnedObject.localInv2 $prevHeap@@25 $Heap@@14 this@@31) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@15 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@26 $Heap@@15 this@@32) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@32 null)) (not true)) ($Is refType this@@32 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@26 $Heap@@15 this@@32) (_module.OwnedObject.transitiveInv2 $prevHeap@@26 $Heap@@15 this@@32)))
 :qid |_09CounterNoStateMachinedfy.280:22|
 :skolemid |1746|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@26 $Heap@@15 this@@32) ($Is refType this@@32 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@26 $Heap@@15 this@@32) (_module.OwnedObject.transitiveInv2 $prevHeap@@26 $Heap@@15 this@@32) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($prevHeap@@27 T@U) ($Heap@@16 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@27 $Heap@@16 this@@33) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@27 $Heap@@16 this@@33) (_module.OwnedObject.inv2 $prevHeap@@27 $Heap@@16 this@@33)))
 :qid |_09CounterNoStateMachinedfy.281:22|
 :skolemid |1758|
 :pattern ( (_module.Object.inv2 $prevHeap@@27 $Heap@@16 this@@33) ($Is refType this@@33 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.inv2 $prevHeap@@27 $Heap@@16 this@@33) (_module.OwnedObject.inv2 $prevHeap@@27 $Heap@@16 this@@33) ($IsGoodHeap $Heap@@16))
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
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Thread)  (and ($Is refType |c#0@@5| Tclass._module.Thread?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.OwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@17 this@@34) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Object) ($IsAlloc refType this@@34 Tclass._module.Object $Heap@@17)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 (_module.Object.universe this@@34)) _module.Universe.content)) ($Box refType this@@34)) (|_module.Universe.globalBaseInv#canCall| $Heap@@17 (_module.Object.universe this@@34))) (= (_module.Object.baseInv $Heap@@17 this@@34)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 (_module.Object.universe this@@34)) _module.Universe.content)) ($Box refType this@@34)) (_module.Universe.globalBaseInv $Heap@@17 (_module.Object.universe this@@34))))))
 :qid |_09CounterNoStateMachinedfy.243:19|
 :skolemid |1255|
 :pattern ( (_module.Object.baseInv $Heap@@17 this@@34) ($IsGoodHeap $Heap@@17))
))))
(assert (forall (($o@@31 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@31 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@31 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@32 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@32 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@32 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@32 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@18 this@@35) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Universe) ($IsAlloc refType this@@35 Tclass._module.Universe $Heap@@18)))))) (and (=> (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (= (_module.Object.universe |o#0@@4|) this@@35) (or (not (= |o#0@@4| this@@35)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |655|
 :pattern ( (_module.Object.universe |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#0@@4|)))
)) (forall ((|o#1@@1| T@U) ) (!  (=> ($Is refType |o#1@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#1@@1|)) (|_module.Object.triggerAxioms#canCall| $Heap@@18 |o#1@@1|)))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |654|
 :pattern ( (_module.Object.triggerAxioms $Heap@@18 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#1@@1|)))
))) (= (_module.Universe.globalBaseInv $Heap@@18 this@@35)  (and (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#0@@5|))) (and (= (_module.Object.universe |o#0@@5|) this@@35) (or (not (= |o#0@@5| this@@35)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |652|
 :pattern ( (_module.Object.universe |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#1@@2|))) (_module.Object.triggerAxioms $Heap@@18 |o#1@@2|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |653|
 :pattern ( (_module.Object.triggerAxioms $Heap@@18 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 this@@35) _module.Universe.content)) ($Box refType |o#1@@2|)))
))))))
 :qid |_09CounterNoStateMachinedfy.33:19|
 :skolemid |656|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@18 this@@35) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@28 T@U) ($Heap@@19 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@28 $Heap@@19 this@@36) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@28) ($IsGoodHeap $Heap@@19)) ($HeapSucc $prevHeap@@28 $Heap@@19)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Thread) ($IsAlloc refType this@@36 Tclass._module.Thread $prevHeap@@28)))))) (= (_module.Thread.localInv2 $prevHeap@@28 $Heap@@19 this@@36) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_09CounterNoStateMachinedfy.297:22|
 :skolemid |1425|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@28 $Heap@@19 this@@36) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@29 T@U) ($Heap@@20 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Thread.transitiveInv2#canCall| $prevHeap@@29 $Heap@@20 this@@37) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@29) ($IsGoodHeap $Heap@@20)) ($HeapSucc $prevHeap@@29 $Heap@@20)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Thread) ($IsAlloc refType this@@37 Tclass._module.Thread $prevHeap@@29)))))) (= (_module.Thread.transitiveInv2 $prevHeap@@29 $Heap@@20 this@@37) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_09CounterNoStateMachinedfy.300:22|
 :skolemid |1432|
 :pattern ( (_module.Thread.transitiveInv2 $prevHeap@@29 $Heap@@20 this@@37) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@30 T@U) ($Heap@@21 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@30 $Heap@@21 this@@38) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@30) ($IsGoodHeap $Heap@@21)) ($HeapSucc $prevHeap@@30 $Heap@@21)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $prevHeap@@30)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@30 $Heap@@21 this@@38)) (= (_module.OwnedObject.localInv2 $prevHeap@@30 $Heap@@21 this@@38)  (and true (_module.OwnedObject.localUserInv2 $prevHeap@@30 $Heap@@21 this@@38)))))
 :qid |_09CounterNoStateMachinedfy.361:22|
 :skolemid |1735|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@30 $Heap@@21 this@@38) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@22 this@@39) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Object) ($IsAlloc refType this@@39 Tclass._module.Object $Heap@@22)))))) (_module.Object.triggerAxioms $Heap@@22 this@@39))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1309|
 :pattern ( (_module.Object.triggerAxioms $Heap@@22 this@@39))
))))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@31 T@U) ($Heap@@23 T@U) (this@@40 T@U) (|running#0@@3| T@U) ) (!  (=> (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@31 $Heap@@23 this@@40 |running#0@@3|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@31) ($IsGoodHeap $Heap@@23)) ($HeapSucc $prevHeap@@31 $Heap@@23)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Object) ($IsAlloc refType this@@40 Tclass._module.Object $prevHeap@@31)))) ($Is refType |running#0@@3| Tclass._module.Thread)))) (and (and (and (|_module.Object.baseInv#canCall| $prevHeap@@31 this@@40) (=> (_module.Object.baseInv $prevHeap@@31 this@@40) (|_module.Universe.globalInv#canCall| $prevHeap@@31 (_module.Object.universe this@@40)))) (=> (and (_module.Object.baseInv $prevHeap@@31 this@@40) (_module.Universe.globalInv $prevHeap@@31 (_module.Object.universe this@@40))) (and (|_module.Object.baseInv#canCall| $Heap@@23 this@@40) (=> (_module.Object.baseInv $Heap@@23 this@@40) (=> (forall (($o@@33 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 this@@40) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@23 $o@@33) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 $o@@33) $f@@23))))
 :qid |_09CounterNoStateMachinedfy.259:8|
 :skolemid |1284|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@23 $o@@33) $f@@23))
)) (|_module.Universe.legalTransition#canCall| $prevHeap@@31 $Heap@@23 (_module.Object.universe this@@40) |running#0@@3|)))))) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@31 $Heap@@23 this@@40 |running#0@@3|)  (and (and (and (and (_module.Object.baseInv $prevHeap@@31 this@@40) (_module.Universe.globalInv $prevHeap@@31 (_module.Object.universe this@@40))) (_module.Object.baseInv $Heap@@23 this@@40)) (forall (($o@@34 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@34 null)) (not true)) (=> (= $o@@34 this@@40) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@23 $o@@34) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@31 $o@@34) $f@@24))))
 :qid |_09CounterNoStateMachinedfy.259:8|
 :skolemid |1283|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@23 $o@@34) $f@@24))
))) (_module.Universe.legalTransition $prevHeap@@31 $Heap@@23 (_module.Object.universe this@@40) |running#0@@3|)))))
 :qid |_09CounterNoStateMachinedfy.257:22|
 :skolemid |1285|
 :pattern ( (_module.Object.goodPreAndLegalChanges $prevHeap@@31 $Heap@@23 this@@40 |running#0@@3|) ($IsGoodHeap $Heap@@23))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@24 this@@41) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.OwnedObject) ($IsAlloc refType this@@41 Tclass._module.OwnedObject $Heap@@24)))))) (=> (_module.OwnedObject.userInv $Heap@@24 this@@41) (_module.OwnedObject.localUserInv $Heap@@24 this@@41)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |1832|
 :pattern ( (_module.OwnedObject.userInv $Heap@@24 this@@41))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@25 this@@42) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Thread) ($IsAlloc refType this@@42 Tclass._module.Thread $Heap@@25)))))) (=> (_module.Thread.inv $Heap@@25 this@@42) (_module.Thread.localInv $Heap@@25 this@@42)))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1407|
 :pattern ( (_module.Thread.inv $Heap@@25 this@@42))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@26 this@@43) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@26)))))) (=> (_module.OwnedObject.inv $Heap@@26 this@@43) (_module.OwnedObject.localInv $Heap@@26 this@@43)))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1716|
 :pattern ( (_module.OwnedObject.inv $Heap@@26 this@@43))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@27 this@@44) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Object) ($IsAlloc refType this@@44 Tclass._module.Object $Heap@@27)))))) (=> (_module.Object.inv $Heap@@27 this@@44) (_module.Object.localInv $Heap@@27 this@@44)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1324|
 :pattern ( (_module.Object.inv $Heap@@27 this@@44))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@32 T@U) ($Heap@@28 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@32 $Heap@@28 this@@45) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@32) ($IsGoodHeap $Heap@@28)) ($HeapSucc $prevHeap@@32 $Heap@@28)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $prevHeap@@32)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@45) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@45) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@32 $Heap@@28 this@@45)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@32 $Heap@@28 this@@45)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@32 this@@45) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@45) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@32 $Heap@@28 this@@45)))))
 :qid |_09CounterNoStateMachinedfy.346:22|
 :skolemid |1702|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@32 $Heap@@28 this@@45) ($IsGoodHeap $Heap@@28))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($h@@11 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@35 null)) (not true)) ($Is refType $o@@35 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@35) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@35) _module.OwnedObject.nonvolatileVersion)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1689|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@35) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@46 null)) (not true)) ($Is refType this@@46 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@36 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (= $o@@36 this@@46)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@36) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@36) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1307|
)) (= (_module.Object.triggerAxioms $h0@@16 this@@46) (_module.Object.triggerAxioms $h1@@16 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1308|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Object.triggerAxioms $h1@@16 this@@46))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@37 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (or (= $o@@37 this@@47) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 this@@47) _module.Universe.content)) ($Box refType $o@@37)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@37) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@37) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |648|
)) (= (_module.Universe.globalBaseInv $h0@@17 this@@47) (_module.Universe.globalBaseInv $h1@@17 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |649|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Universe.globalBaseInv $h1@@17 this@@47))
)))
(assert (forall (($h@@12 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@38) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@38) _module.OwnedObject.owner)) Tclass._module.Object $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1691|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@38) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@29 this@@48) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $Heap@@29)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@29 this@@48) (=> (_module.Object.baseInv $Heap@@29 this@@48) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 (_module.Object.universe this@@48)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@48) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@29 this@@48) (=> (_module.OwnedObject.baseUserInv $Heap@@29 this@@48) (|_module.OwnedObject.localUserInv#canCall| $Heap@@29 this@@48)))))) (= (_module.OwnedObject.localInv $Heap@@29 this@@48)  (and (and (and (_module.Object.baseInv $Heap@@29 this@@48) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 (_module.Object.universe this@@48)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@48) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@29 this@@48)) (_module.OwnedObject.localUserInv $Heap@@29 this@@48)))))
 :qid |_09CounterNoStateMachinedfy.350:19|
 :skolemid |1708|
 :pattern ( (_module.OwnedObject.localInv $Heap@@29 this@@48) ($IsGoodHeap $Heap@@29))
))))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Universe) ($IsAlloc refType this@@49 Tclass._module.Universe $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@39 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@39) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@39) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.Universe.globalInv $h0@@18 this@@49) (_module.Universe.globalInv $h1@@18 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Universe.globalInv $h1@@18 this@@49))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Object) ($IsAlloc refType this@@50 Tclass._module.Object $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@40 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@40) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@40) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |1251|
)) (= (_module.Object.baseInv $h0@@19 this@@50) (_module.Object.baseInv $h1@@19 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1252|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Object.baseInv $h1@@19 this@@50))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Object) ($IsAlloc refType this@@51 Tclass._module.Object $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@41 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@41) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@41) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@41) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1314|
)) (= (_module.Object.localInv $h0@@20 this@@51) (_module.Object.localInv $h1@@20 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1315|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Object.localInv $h1@@20 this@@51))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Object) ($IsAlloc refType this@@52 Tclass._module.Object $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@42 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@42) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@42) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@42) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1322|
)) (= (_module.Object.inv $h0@@21 this@@52) (_module.Object.inv $h1@@21 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1323|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Object.inv $h1@@21 this@@52))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Thread) ($IsAlloc refType this@@53 Tclass._module.Thread $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@43 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@43) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@43) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.Thread.localInv $h0@@22 this@@53) (_module.Thread.localInv $h1@@22 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1398|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Thread.localInv $h1@@22 this@@53))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Thread) ($IsAlloc refType this@@54 Tclass._module.Thread $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@44 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@44) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@44) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@44) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |1405|
)) (= (_module.Thread.inv $h0@@23 this@@54) (_module.Thread.inv $h1@@23 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1406|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Thread.inv $h1@@23 this@@54))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.OwnedObject) ($IsAlloc refType this@@55 Tclass._module.OwnedObject $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@45 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@45) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@45) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@45) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |1704|
)) (= (_module.OwnedObject.localInv $h0@@24 this@@55) (_module.OwnedObject.localInv $h1@@24 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1705|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.OwnedObject.localInv $h1@@24 this@@55))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.OwnedObject) ($IsAlloc refType this@@56 Tclass._module.OwnedObject $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@46 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@46) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@46) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@46) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1714|
)) (= (_module.OwnedObject.inv $h0@@25 this@@56) (_module.OwnedObject.inv $h1@@25 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1715|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.OwnedObject.inv $h1@@25 this@@56))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.OwnedObject) ($IsAlloc refType this@@57 Tclass._module.OwnedObject $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@47 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@47) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@47) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@47) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1818|
)) (= (_module.OwnedObject.baseUserInv $h0@@26 this@@57) (_module.OwnedObject.baseUserInv $h1@@26 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1819|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.OwnedObject.baseUserInv $h1@@26 this@@57))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.OwnedObject) ($IsAlloc refType this@@58 Tclass._module.OwnedObject $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@48 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@48) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@48) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@48) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1822|
)) (= (_module.OwnedObject.localUserInv $h0@@27 this@@58) (_module.OwnedObject.localUserInv $h1@@27 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1823|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedObject.localUserInv $h1@@27 this@@58))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.OwnedObject) ($IsAlloc refType this@@59 Tclass._module.OwnedObject $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@49 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@49) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@49) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@49) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1830|
)) (= (_module.OwnedObject.userInv $h0@@28 this@@59) (_module.OwnedObject.userInv $h1@@28 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1831|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.OwnedObject.userInv $h1@@28 this@@59))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall (($o@@50 T@U) ) (!  (=> ($Is refType $o@@50 Tclass._module.Thread?) ($Is refType $o@@50 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3195|
 :pattern ( ($Is refType $o@@50 Tclass._module.Thread?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) ($IsBox bx@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3193|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (forall (($o@@51 T@U) ) (!  (=> ($Is refType $o@@51 Tclass._module.OwnedObject?) ($Is refType $o@@51 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@51 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.OwnedObject?) ($IsBox bx@@15 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsBox bx@@15 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (forall (($h@@13 T@U) ($o@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@52 null)) (not true)) ($Is refType $o@@52 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@52) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1690|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@52) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@53 T@U) ) (! (= ($Is refType $o@@53 Tclass._module.Universe?)  (or (= $o@@53 null) (implements$_module.Universe (dtype $o@@53))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($Is refType $o@@53 Tclass._module.Universe?))
)))
(assert (forall (($o@@54 T@U) ) (! (= ($Is refType $o@@54 Tclass._module.Object?)  (or (= $o@@54 null) (implements$_module.Object (dtype $o@@54))))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($Is refType $o@@54 Tclass._module.Object?))
)))
(assert (forall (($o@@55 T@U) ) (! (= ($Is refType $o@@55 Tclass._module.OwnedObject?)  (or (= $o@@55 null) (implements$_module.OwnedObject (dtype $o@@55))))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($Is refType $o@@55 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@14 T@U) ($o@@56 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@56 null)) (not true)) ($Is refType $o@@56 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@56) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@56) _module.Universe.content)) (TSet Tclass._module.Object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |647|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@56) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@30 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@33 $Heap@@30 this@@60) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@30)) ($HeapSucc $prevHeap@@33 $Heap@@30)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.OwnedObject) ($IsAlloc refType this@@60 Tclass._module.OwnedObject $prevHeap@@33)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@60) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@60) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@33 $Heap@@30 this@@60)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@33 $Heap@@30 this@@60)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@60) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@60) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@33 $Heap@@30 this@@60) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 (_module.Object.universe this@@60)) _module.Universe.content)) ($Box refType |o#0@@6|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 |o#0@@6|) _module.OwnedObject.owner)) this@@60))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 |o#0@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 |o#0@@6|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 |o#0@@6|) _module.OwnedObject.owner)) this@@60)))
 :qid |_09CounterNoStateMachinedfy.373:18|
 :skolemid |1743|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 |o#0@@6|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 |o#0@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 |o#0@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 |o#0@@6|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 (_module.Object.universe this@@60)) _module.Universe.content)) ($Box refType |o#0@@6|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@60) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@60) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@60) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@60) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_09CounterNoStateMachinedfy.366:22|
 :skolemid |1745|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@33 $Heap@@30 this@@60) ($IsGoodHeap $Heap@@30))
))))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@31 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@34 $Heap@@31 this@@61) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@34) ($IsGoodHeap $Heap@@31)) ($HeapSucc $prevHeap@@34 $Heap@@31)) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.OwnedObject) ($IsAlloc refType this@@61 Tclass._module.OwnedObject $prevHeap@@34)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@34 $Heap@@31 this@@61) (_module.OwnedObject.localUserInv2 $prevHeap@@34 $Heap@@31 this@@61)))
 :qid |_09CounterNoStateMachinedfy.434:22|
 :skolemid |1836|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@34 $Heap@@31 this@@61))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@32 this@@62) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Thread) ($IsAlloc refType this@@62 Tclass._module.Thread $Heap@@32)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@32 this@@62)) (= (_module.Thread.localInv $Heap@@32 this@@62)  (and true (_module.Object.baseInv $Heap@@32 this@@62)))))
 :qid |_09CounterNoStateMachinedfy.290:19|
 :skolemid |1401|
 :pattern ( (_module.Thread.localInv $Heap@@32 this@@62) ($IsGoodHeap $Heap@@32))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@33 this@@63) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Thread) ($IsAlloc refType this@@63 Tclass._module.Thread $Heap@@33)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@33 this@@63)) (= (_module.Thread.inv $Heap@@33 this@@63)  (and true (_module.Thread.localInv $Heap@@33 this@@63)))))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1409|
 :pattern ( (_module.Thread.inv $Heap@@33 this@@63) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@34 this@@64) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.Object) ($IsAlloc refType this@@64 Tclass._module.Object $Heap@@34)))))) (= (_module.Object.triggerAxioms $Heap@@34 this@@64)  (and (or ($Is refType this@@64 Tclass._module.OwnedObject) ($Is refType this@@64 Tclass._module.Thread)) (not (and ($Is refType this@@64 Tclass._module.OwnedObject) ($Is refType this@@64 Tclass._module.Thread))))))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1311|
 :pattern ( (_module.Object.triggerAxioms $Heap@@34 this@@64) ($IsGoodHeap $Heap@@34))
))))
(assert (forall (($h@@15 T@U) ($o@@57 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@57 null)) (not true)) ($Is refType $o@@57 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@57) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@57) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@35 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@35 $Heap@@35 this@@65) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@35)) ($HeapSucc $prevHeap@@35 $Heap@@35)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Universe) ($IsAlloc refType this@@65 Tclass._module.Universe $prevHeap@@35)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@35 $Heap@@35 this@@65)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@65) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@65) _module.Universe.content))) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@65) _module.Universe.content)) ($Box refType |o#0@@7|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@65) _module.Universe.content)) ($Box refType |o#0@@7|)))) (not ($IsAllocBox ($Box refType |o#0@@7|) Tclass._module.Object $prevHeap@@35)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |692|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@65) _module.Universe.content)) ($Box refType |o#0@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@65) _module.Universe.content)) ($Box refType |o#0@@7|)))
))) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@65) _module.Universe.content)) ($Box refType |o#1@@3|))) (or (forall (($o@@58 T@U) ($f@@38 T@U) ) (!  (=> (or (not (= $o@@58 null)) (not true)) (=> (= $o@@58 |o#1@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 $o@@58) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 $o@@58) $f@@38))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |693|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 $o@@58) $f@@38))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#1@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |o#1@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |694|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |o#1@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 |o#1@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@35 this@@65) _module.Universe.content)) ($Box refType |o#1@@3|)))
)))))
 :qid |_09CounterNoStateMachinedfy.52:22|
 :skolemid |697|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@35 $Heap@@35 this@@65) ($IsGoodHeap $Heap@@35))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@36 T@U) (this@@66 T@U) (|running#0@@4| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@36 $Heap@@36 this@@66 |running#0@@4|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@36)) ($HeapSucc $prevHeap@@36 $Heap@@36)) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.Universe) ($IsAlloc refType this@@66 Tclass._module.Universe $prevHeap@@36)))) ($Is SetType |running#0@@4| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@36 $Heap@@36 this@@66) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@36 $Heap@@36 this@@66) (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@36 this@@66) (=> (_module.Universe.globalBaseInv $prevHeap@@36 this@@66) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@36 this@@66) (=> (_module.Universe.globalBaseInv $Heap@@36 this@@66) (forall ((|o#0@@8| T@U) ) (!  (=> ($Is refType |o#0@@8| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#0@@8|)) (|_module.Object.transitiveInv2#canCall| $prevHeap@@36 $Heap@@36 |o#0@@8|)))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |715|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@36 $Heap@@36 |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#0@@8|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@36 $Heap@@36 this@@66 |running#0@@4|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@36 $Heap@@36 this@@66) (_module.Universe.globalBaseInv $prevHeap@@36 this@@66)) (_module.Universe.globalBaseInv $Heap@@36 this@@66)) (forall ((|o#0@@9| T@U) ) (!  (=> (and ($Is refType |o#0@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#0@@9|))) (_module.Object.transitiveInv2 $prevHeap@@36 $Heap@@36 |o#0@@9|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |713|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@36 $Heap@@36 |o#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#0@@9|)))
))) (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#1@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.owner) Tclass._module.Object $prevHeap@@36)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 |o#1@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |714|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 |o#1@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 |o#1@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@66) _module.Universe.content)) ($Box refType |o#1@@4|)))
))))))
 :qid |_09CounterNoStateMachinedfy.68:22|
 :skolemid |717|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@36 $Heap@@36 this@@66 |running#0@@4|) ($IsGoodHeap $Heap@@36))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@37 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@67 () T@U)
(declare-fun |running#0@@5| () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id OverrideCheck$$_module.Thread.admissibility)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon0_correct  (=> (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (and (=> (= (ControlFlow 0 2) (- 0 37)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67)))))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#0@@10| T@U) ) (!  (=> (and ($Is refType |o#0@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#0@@10|))) (and (= (_module.Object.universe |o#0@@10|) (_module.Object.universe this@@67)) (or (not (= |o#0@@10| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1446|
 :pattern ( (_module.Object.universe |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#0@@10|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#0@@11|))) (and (= (_module.Object.universe |o#0@@11|) (_module.Object.universe this@@67)) (or (not (= |o#0@@11| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1446|
 :pattern ( (_module.Object.universe |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#0@@11|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#1@@5|))) (_module.Object.triggerAxioms $Heap@@37 |o#1@@5|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1447|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#1@@5|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| $Heap@@37 this@@67) (or (_module.Object.baseInv $Heap@@37 this@@67) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#1@@6| T@U) ) (!  (=> (and ($Is refType |o#1@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#1@@6|))) (_module.Object.triggerAxioms $Heap@@37 |o#1@@6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1447|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#1@@6|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#2|))) (and (= (_module.Object.universe |o#2|) (_module.Object.universe this@@67)) (or (not (= |o#2| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1450|
 :pattern ( (_module.Object.universe |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#2|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#2@@0|))) (and (= (_module.Object.universe |o#2@@0|) (_module.Object.universe this@@67)) (or (not (= |o#2@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1450|
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#3|))) (_module.Object.triggerAxioms $Heap@@37 |o#3|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1451|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#3|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#3@@0|))) (_module.Object.triggerAxioms $Heap@@37 |o#3@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1451|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#4|))) (_module.Object.inv $Heap@@37 |o#4|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |1454|
 :pattern ( (_module.Object.inv $Heap@@37 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#4|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#4@@0|))) (_module.Object.inv $Heap@@37 |o#4@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |1454|
 :pattern ( (_module.Object.inv $Heap@@37 |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67)))))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#5|))) (and (= (_module.Object.universe |o#5|) (_module.Object.universe this@@67)) (or (not (= |o#5| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1456|
 :pattern ( (_module.Object.universe |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#5|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#5@@0|))) (and (= (_module.Object.universe |o#5@@0|) (_module.Object.universe this@@67)) (or (not (= |o#5@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1456|
 :pattern ( (_module.Object.universe |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.triggerAxioms current$Heap |o#6|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1457|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#6|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#6@@0|))) (_module.Object.triggerAxioms current$Heap |o#6@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1457|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (forall (($o@@59 T@U) ($f@@39 T@U) ) (!  (=> (or (not (= $o@@59 null)) (not true)) (=> (= $o@@59 this@@67) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@59) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@59) $f@@39))))
 :qid |_09CounterNoStateMachinedfy.259:8|
 :skolemid |1460|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@59) $f@@39))
))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (forall (($o@@60 T@U) ($f@@40 T@U) ) (!  (=> (or (not (= $o@@60 null)) (not true)) (=> (= $o@@60 this@@67) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@60) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@60) $f@@40))))
 :qid |_09CounterNoStateMachinedfy.259:8|
 :skolemid |1460|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@60) $f@@40))
)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content))))))))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7|)))) (not ($IsAllocBox ($Box refType |o#7|) Tclass._module.Object $Heap@@37)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |1461|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7@@0|)))) (not ($IsAllocBox ($Box refType |o#7@@0|) Tclass._module.Object $Heap@@37)))
 :qid |_09CounterNoStateMachinedfy.58:16|
 :skolemid |1461|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#8|))) (or (forall (($o@@61 T@U) ($f@@41 T@U) ) (!  (=> (or (not (= $o@@61 null)) (not true)) (=> (= $o@@61 |o#8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@61) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@61) $f@@41))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |1462|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@61) $f@@41))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |1463|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#8|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67)) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#8@@0|))) (or (forall (($o@@62 T@U) ($f@@42 T@U) ) (!  (=> (or (not (= $o@@62 null)) (not true)) (=> (= $o@@62 |o#8@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@62) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@62) $f@@42))))
 :qid |_09CounterNoStateMachinedfy.60:54|
 :skolemid |1462|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@62) $f@@42))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#8@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#8@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.60:16|
 :skolemid |1463|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#8@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#8@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#9|))) (and (= (_module.Object.universe |o#9|) (_module.Object.universe this@@67)) (or (not (= |o#9| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1467|
 :pattern ( (_module.Object.universe |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#9|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#9@@0| T@U) ) (!  (=> (and ($Is refType |o#9@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#9@@0|))) (and (= (_module.Object.universe |o#9@@0|) (_module.Object.universe this@@67)) (or (not (= |o#9@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1467|
 :pattern ( (_module.Object.universe |o#9@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#9@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.triggerAxioms $Heap@@37 |o#10|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1468|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#10|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#10@@0| T@U) ) (!  (=> (and ($Is refType |o#10@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#10@@0|))) (_module.Object.triggerAxioms $Heap@@37 |o#10@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1468|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#10@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#10@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#11|))) (and (= (_module.Object.universe |o#11|) (_module.Object.universe this@@67)) (or (not (= |o#11| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1471|
 :pattern ( (_module.Object.universe |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#11|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#11@@0| T@U) ) (!  (=> (and ($Is refType |o#11@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#11@@0|))) (and (= (_module.Object.universe |o#11@@0|) (_module.Object.universe this@@67)) (or (not (= |o#11@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1471|
 :pattern ( (_module.Object.universe |o#11@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#11@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#12|))) (_module.Object.triggerAxioms current$Heap |o#12|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1472|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#12|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#12@@0| T@U) ) (!  (=> (and ($Is refType |o#12@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#12@@0|))) (_module.Object.triggerAxioms current$Heap |o#12@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1472|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#12@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#12@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#13|))) (_module.Object.transitiveInv2 $Heap@@37 current$Heap |o#13|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |1475|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@37 current$Heap |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#13|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#13@@0|))) (_module.Object.transitiveInv2 $Heap@@37 current$Heap |o#13@@0|))
 :qid |_09CounterNoStateMachinedfy.74:16|
 :skolemid |1475|
 :pattern ( (_module.Object.transitiveInv2 $Heap@@37 current$Heap |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#14|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@37)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#14|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |1476|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#14|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (or (_module.Universe.legalTransitionsSequence $Heap@@37 current$Heap (_module.Object.universe this@@67) (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|))) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#14@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@5|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.owner) Tclass._module.Object $Heap@@37)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#14@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_09CounterNoStateMachinedfy.77:16|
 :skolemid |1476|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |o#14@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#14@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#14@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#15| T@U) ) (!  (=> (and ($Is refType |o#15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#15|))) (and (= (_module.Object.universe |o#15|) (_module.Object.universe this@@67)) (or (not (= |o#15| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1479|
 :pattern ( (_module.Object.universe |o#15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#15|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#15@@0| T@U) ) (!  (=> (and ($Is refType |o#15@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#15@@0|))) (and (= (_module.Object.universe |o#15@@0|) (_module.Object.universe this@@67)) (or (not (= |o#15@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1479|
 :pattern ( (_module.Object.universe |o#15@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#15@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#16| T@U) ) (!  (=> (and ($Is refType |o#16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#16|))) (_module.Object.triggerAxioms $Heap@@37 |o#16|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1480|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#16|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#16@@0| T@U) ) (!  (=> (and ($Is refType |o#16@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#16@@0|))) (_module.Object.triggerAxioms $Heap@@37 |o#16@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1480|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 |o#16@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#16@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#17| T@U) ) (!  (=> (and ($Is refType |o#17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#17|))) (_module.Object.inv $Heap@@37 |o#17|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |1483|
 :pattern ( (_module.Object.inv $Heap@@37 |o#17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#17|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalInv#canCall| $Heap@@37 (_module.Object.universe this@@67)) (or (_module.Universe.globalInv $Heap@@37 (_module.Object.universe this@@67)) (forall ((|o#17@@0| T@U) ) (!  (=> (and ($Is refType |o#17@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#17@@0|))) (_module.Object.inv $Heap@@37 |o#17@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |1483|
 :pattern ( (_module.Object.inv $Heap@@37 |o#17@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#17@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#18| T@U) ) (!  (=> (and ($Is refType |o#18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#18|))) (and (= (_module.Object.universe |o#18|) (_module.Object.universe this@@67)) (or (not (= |o#18| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1485|
 :pattern ( (_module.Object.universe |o#18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#18|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#18@@0| T@U) ) (!  (=> (and ($Is refType |o#18@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#18@@0|))) (and (= (_module.Object.universe |o#18@@0|) (_module.Object.universe this@@67)) (or (not (= |o#18@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1485|
 :pattern ( (_module.Object.universe |o#18@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#18@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#19| T@U) ) (!  (=> (and ($Is refType |o#19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#19|))) (_module.Object.triggerAxioms current$Heap |o#19|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1486|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#19|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#19@@0| T@U) ) (!  (=> (and ($Is refType |o#19@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#19@@0|))) (_module.Object.triggerAxioms current$Heap |o#19@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1486|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#19@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#19@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (forall ((|o#20| T@U) ) (!  (=> (and ($Is refType |o#20| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#20|))) (and (or (forall (($o@@63 T@U) ($f@@43 T@U) ) (!  (=> (or (not (= $o@@63 null)) (not true)) (=> (= $o@@63 |o#20|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@63) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@63) $f@@43))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |1489|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@63) $f@@43))
)) (_module.Object.inv current$Heap |o#20|)) (or (forall (($o@@64 T@U) ($f@@44 T@U) ) (!  (=> (or (not (= $o@@64 null)) (not true)) (=> (= $o@@64 |o#20|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@64) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@64) $f@@44))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |1490|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@64) $f@@44))
)) (_module.Object.inv2 $Heap@@37 current$Heap |o#20|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |1491|
 :pattern ( (_module.Object.inv2 $Heap@@37 current$Heap |o#20|))
 :pattern ( (_module.Object.inv current$Heap |o#20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#20|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (forall ((|o#20@@0| T@U) ) (!  (=> (and ($Is refType |o#20@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#20@@0|))) (and (or (forall (($o@@65 T@U) ($f@@45 T@U) ) (!  (=> (or (not (= $o@@65 null)) (not true)) (=> (= $o@@65 |o#20@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@65) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@65) $f@@45))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |1489|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@65) $f@@45))
)) (_module.Object.inv current$Heap |o#20@@0|)) (or (forall (($o@@66 T@U) ($f@@46 T@U) ) (!  (=> (or (not (= $o@@66 null)) (not true)) (=> (= $o@@66 |o#20@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@66) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 $o@@66) $f@@46))))
 :qid |_09CounterNoStateMachinedfy.91:49|
 :skolemid |1490|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@66) $f@@46))
)) (_module.Object.inv2 $Heap@@37 current$Heap |o#20@@0|))))
 :qid |_09CounterNoStateMachinedfy.91:16|
 :skolemid |1491|
 :pattern ( (_module.Object.inv2 $Heap@@37 current$Heap |o#20@@0|))
 :pattern ( (_module.Object.inv current$Heap |o#20@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#20@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (forall ((|o#21| T@U) ) (!  (=> (and ($Is refType |o#21| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21|))))) (_module.Object.inv current$Heap |o#21|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |1492|
 :pattern ( (_module.Object.inv current$Heap |o#21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@37 current$Heap this@@67 |running#0@@5|) (or (_module.Object.goodPreAndLegalChanges $Heap@@37 current$Heap this@@67 |running#0@@5|) (=> (|_module.Universe.legalTransition#canCall| $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (or (_module.Universe.legalTransition $Heap@@37 current$Heap (_module.Object.universe this@@67) |running#0@@5|) (forall ((|o#21@@0| T@U) ) (!  (=> (and ($Is refType |o#21@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21@@0|))))) (_module.Object.inv current$Heap |o#21@@0|))
 :qid |_09CounterNoStateMachinedfy.93:16|
 :skolemid |1492|
 :pattern ( (_module.Object.inv current$Heap |o#21@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#21@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (or (not (= |running#0@@5| null)) (not true)) (or (not (= |running#0@@5| null)) (not true)))) (=> (=> (or (not (= |running#0@@5| null)) (not true)) (or (not (= |running#0@@5| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (forall (($o@@67 T@U) ($f@@47 T@U) ) (! true
 :qid |_09CounterNoStateMachinedfy.309:18|
 :skolemid |1498|
))) (=> (forall (($o@@68 T@U) ($f@@48 T@U) ) (! true
 :qid |_09CounterNoStateMachinedfy.309:18|
 :skolemid |1498|
)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (forall (($o@@69 T@U) ($f@@49 T@U) ) (! true
 :qid |_09CounterNoStateMachinedfy.309:18|
 :skolemid |1499|
))) (=> (forall (($o@@70 T@U) ($f@@50 T@U) ) (! true
 :qid |_09CounterNoStateMachinedfy.309:18|
 :skolemid |1499|
)) (=> (and (_module.Thread.inv2 $Heap@@37 current$Heap this@@67) (_module.Thread.inv current$Heap this@@67)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Thread.inv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.inv2 $Heap@@37 current$Heap this@@67) (=> (|_module.Thread.localInv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.localInv2 $Heap@@37 current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Thread.inv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.inv2 $Heap@@37 current$Heap this@@67) (=> (|_module.Thread.localInv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.localInv2 $Heap@@37 current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Thread.inv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.inv2 $Heap@@37 current$Heap this@@67) (=> (|_module.Thread.transitiveInv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.transitiveInv2 $Heap@@37 current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Thread.inv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.inv2 $Heap@@37 current$Heap this@@67) (=> (|_module.Thread.transitiveInv2#canCall| $Heap@@37 current$Heap this@@67) (or (_module.Thread.transitiveInv2 $Heap@@37 current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67))))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType this@@67)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#22| T@U) ) (!  (=> (and ($Is refType |o#22| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#22|))) (and (= (_module.Object.universe |o#22|) (_module.Object.universe this@@67)) (or (not (= |o#22| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1500|
 :pattern ( (_module.Object.universe |o#22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#22|)))
))))))))))) (=> (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#22@@0| T@U) ) (!  (=> (and ($Is refType |o#22@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#22@@0|))) (and (= (_module.Object.universe |o#22@@0|) (_module.Object.universe this@@67)) (or (not (= |o#22@@0| (_module.Object.universe this@@67))) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |1500|
 :pattern ( (_module.Object.universe |o#22@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#22@@0|)))
)))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Thread.inv#canCall| current$Heap this@@67) (or (_module.Thread.inv current$Heap this@@67) (=> (|_module.Thread.localInv#canCall| current$Heap this@@67) (or (_module.Thread.localInv current$Heap this@@67) (=> (|_module.Object.baseInv#canCall| current$Heap this@@67) (or (_module.Object.baseInv current$Heap this@@67) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe this@@67)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe this@@67)) (forall ((|o#23| T@U) ) (!  (=> (and ($Is refType |o#23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#23|))) (_module.Object.triggerAxioms current$Heap |o#23|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |1501|
 :pattern ( (_module.Object.triggerAxioms current$Heap |o#23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe this@@67)) _module.Universe.content)) ($Box refType |o#23|)))
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@37) ($IsHeapAnchor $Heap@@37)) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Thread) ($IsAlloc refType this@@67 Tclass._module.Thread previous$Heap)))) (=> (and (and (and ($Is refType |running#0@@5| Tclass._module.Thread) ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap)) (= 10 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@37) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (and ($IsAlloc refType |running#0@@5| Tclass._module.Thread previous$Heap) (= (ControlFlow 0 38) 2)))) anon0_correct))))
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
