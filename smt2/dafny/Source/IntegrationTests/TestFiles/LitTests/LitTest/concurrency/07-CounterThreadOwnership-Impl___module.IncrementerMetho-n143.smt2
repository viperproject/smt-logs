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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.IncrementerMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.IncrementerMethod () T@U)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.AtomicCounter.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun _module.Remaining.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun _module.IncrementerMethod.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
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
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun _module.Object.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.transitiveInv2 (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Remaining.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject Tagclass._module.Object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object? class._module.OwnedObject? Tagclass._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.Remaining? Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$content field$nonvolatileVersion field$owner field$value field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (= (_module.Universe.globalBaseInv $Heap this) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|))) (and (= (_module.Object.universe |o#0|) this) (or (not (= |o#0| this)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_07CounterThreadOwnershipdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@0 this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@0 Tclass._module.IncrementerMethod $Heap@@0)))))) (= (_module.IncrementerMethod.baseUserInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.IncrementerMethod.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.IncrementerMethod.remaining)))))
 :qid |_07CounterThreadOwnershipdfy.650:19|
 :skolemid |2155|
 :pattern ( (_module.IncrementerMethod.baseUserInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1371|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this@@1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1372|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@1))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1381|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@2) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1382|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.AtomicCounter))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1650|
)) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h0@@1 this@@3) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@1 $h1@@1 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Remaining))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1888|
)) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@2 this@@4) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1890|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@2 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.IncrementerMethod))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |2136|
)) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h0@@3 this@@5) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2138|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@3 $h1@@3 this@@5))
)))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@6) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@6) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@6) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@6) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0@@0|)))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@6) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@6)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@6) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@6) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@1 |o#0@@1|))
 :qid |_07CounterThreadOwnershipdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@6) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_07CounterThreadOwnershipdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@6) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.AtomicCounter?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1646|
 :pattern ( ($Is refType $o@@4 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Remaining?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($Is refType $o@@5 Tclass._module.Remaining?))
)))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.IncrementerMethod?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($Is refType $o@@6 Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@7) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@7) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3529|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3533|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3537|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@3))
)))
(assert (forall ((|c#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@7) ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@7))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@8) ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@8))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@9) ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@9))
 :qid |unknown.0:0|
 :skolemid |3515|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@9))
)))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@2 this@@7) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@2 this@@7) (_module.AtomicCounter.baseUserInv $Heap@@2 this@@7)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |1670|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@7) ($Is refType this@@7 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@7) (_module.AtomicCounter.baseUserInv $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@3 this@@8) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.AtomicCounter.localUserInv $Heap@@3 this@@8)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |1677|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) ($Is refType this@@8 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@8) (_module.AtomicCounter.localUserInv $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@4 this@@9) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Remaining)))) (= (_module.OwnedObject.baseUserInv $Heap@@4 this@@9) (_module.Remaining.baseUserInv $Heap@@4 this@@9)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |1908|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@4 this@@9) ($Is refType this@@9 Tclass._module.Remaining) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@4 this@@9) (_module.Remaining.baseUserInv $Heap@@4 this@@9) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@5 this@@10) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.Remaining.localUserInv $Heap@@5 this@@10)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |1915|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) ($Is refType this@@10 Tclass._module.Remaining) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@10) (_module.Remaining.localUserInv $Heap@@5 this@@10) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@6 this@@11) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv $Heap@@6 this@@11) (_module.IncrementerMethod.localUserInv $Heap@@6 this@@11)))
 :qid |_07CounterThreadOwnershipdfy.385:19|
 :skolemid |2163|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@11) ($Is refType this@@11 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@11) (_module.IncrementerMethod.localUserInv $Heap@@6 this@@11) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@7 this@@12) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.AtomicCounter.userInv $Heap@@7 this@@12)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1684|
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) ($Is refType this@@12 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@12) (_module.AtomicCounter.userInv $Heap@@7 this@@12) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@8 this@@13) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Remaining)))) (= (_module.OwnedObject.userInv $Heap@@8 this@@13) (_module.Remaining.userInv $Heap@@8 this@@13)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1922|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@13) ($Is refType this@@13 Tclass._module.Remaining) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@13) (_module.Remaining.userInv $Heap@@8 this@@13) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@9 this@@14) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.baseUserInv $Heap@@9 this@@14) (_module.IncrementerMethod.baseUserInv $Heap@@9 this@@14)))
 :qid |_07CounterThreadOwnershipdfy.384:19|
 :skolemid |2156|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@9 this@@14) ($Is refType this@@14 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@9 this@@14) (_module.IncrementerMethod.baseUserInv $Heap@@9 this@@14) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@10 this@@15) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@10 this@@15) (_module.OwnedObject.localInv $Heap@@10 this@@15)))
 :qid |_07CounterThreadOwnershipdfy.271:19|
 :skolemid |1304|
 :pattern ( (_module.Object.localInv $Heap@@10 this@@15) ($Is refType this@@15 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.localInv $Heap@@10 this@@15) (_module.OwnedObject.localInv $Heap@@10 this@@15) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@11 this@@16) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.userInv $Heap@@11 this@@16) (_module.IncrementerMethod.userInv $Heap@@11 this@@16)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |2170|
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@16) ($Is refType this@@16 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@16) (_module.IncrementerMethod.userInv $Heap@@11 this@@16) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@12 this@@17) (and (< 7 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@12 this@@17) (_module.OwnedObject.inv $Heap@@12 this@@17)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1314|
 :pattern ( (_module.Object.inv $Heap@@12 this@@17) ($Is refType this@@17 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.Object.inv $Heap@@12 this@@17) (_module.OwnedObject.inv $Heap@@12 this@@17) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@13 this@@18) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@18 Tclass._module.IncrementerMethod $Heap@@13)))))) (and (and (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@13 this@@18) (=> (_module.IncrementerMethod.localUserInv $Heap@@13 this@@18) (and (|_module.OwnedObject.localInv#canCall| $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@18) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@18) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv#canCall| $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@18) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv $Heap@@13 this@@18)  (and (and (_module.IncrementerMethod.localUserInv $Heap@@13 this@@18) (_module.OwnedObject.localInv $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@18) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@18) _module.IncrementerMethod.remaining)))))))
 :qid |_07CounterThreadOwnershipdfy.670:19|
 :skolemid |2169|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@13 this@@18) ($IsGoodHeap $Heap@@13))
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
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Universe) ($IsAlloc refType this@@19 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@8 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@8) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@8) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |530|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@4 $h0@@4 this@@19) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@4 $h1@@4 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |531|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@4 $h1@@4 this@@19))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@9) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@9) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1029|
)) (= (_module.Object.transitiveInv2 $prevHeap@@5 $h0@@5 this@@20) (_module.Object.transitiveInv2 $prevHeap@@5 $h1@@5 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1030|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.transitiveInv2 $prevHeap@@5 $h1@@5 this@@20))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@10 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@10) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@10) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1330|
)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@6 $h0@@6 this@@21) (_module.OwnedObject.transitiveInv2 $prevHeap@@6 $h1@@6 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1331|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.transitiveInv2 $prevHeap@@6 $h1@@6 this@@21))
)))
(assert (forall (($o@@11 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@10)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@10))
)))
(assert (forall (($o@@12 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@11)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@11))
)))
(assert (forall (($o@@13 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $h@@12)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.OwnedObject? $h@@12))
)))
(assert (forall (($o@@14 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.AtomicCounter? $h@@13)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.AtomicCounter? $h@@13))
)))
(assert (forall (($o@@15 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._module.Remaining? $h@@14)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Remaining? $h@@14))
)))
(assert (forall (($o@@16 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.IncrementerMethod? $h@@15)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.IncrementerMethod? $h@@15))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@14 this@@22) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.AtomicCounter) ($IsAlloc refType this@@22 Tclass._module.AtomicCounter $Heap@@14)))))) (= (_module.AtomicCounter.baseUserInv $Heap@@14 this@@22) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.490:19|
 :skolemid |1669|
 :pattern ( (_module.AtomicCounter.baseUserInv $Heap@@14 this@@22) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@15 this@@23) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.AtomicCounter) ($IsAlloc refType this@@23 Tclass._module.AtomicCounter $Heap@@15)))))) (= (_module.AtomicCounter.localUserInv $Heap@@15 this@@23) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.494:19|
 :skolemid |1676|
 :pattern ( (_module.AtomicCounter.localUserInv $Heap@@15 this@@23) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@16 this@@24) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Remaining) ($IsAlloc refType this@@24 Tclass._module.Remaining $Heap@@16)))))) (= (_module.Remaining.baseUserInv $Heap@@16 this@@24) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.551:19|
 :skolemid |1907|
 :pattern ( (_module.Remaining.baseUserInv $Heap@@16 this@@24) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@17 this@@25) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Remaining) ($IsAlloc refType this@@25 Tclass._module.Remaining $Heap@@17)))))) (= (_module.Remaining.localUserInv $Heap@@17 this@@25) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_07CounterThreadOwnershipdfy.555:19|
 :skolemid |1914|
 :pattern ( (_module.Remaining.localUserInv $Heap@@17 this@@25) ($IsGoodHeap $Heap@@17))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@17 T@U) ($f@@7 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@17 $f@@7))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) (or (= $o@@17 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@17)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3541|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@17 $f@@7))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@16 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.AtomicCounter.value)) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@17 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Remaining?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.Remaining.value)) TInt $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1887|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.Remaining.value)))
)))
(assert (forall (($h@@18 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.IncrementerMethod.programCounter)) TInt $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2125|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.IncrementerMethod.initial__value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2131|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.IncrementerMethod.final__value)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2133|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.IncrementerMethod.i)) TInt $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2135|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.IncrementerMethod.i)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@18 this@@26) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $Heap@@18)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@18 this@@26) (=> (_module.OwnedObject.localInv $Heap@@18 this@@26) (|_module.OwnedObject.userInv#canCall| $Heap@@18 this@@26))) (= (_module.OwnedObject.inv $Heap@@18 this@@26)  (and (_module.OwnedObject.localInv $Heap@@18 this@@26) (_module.OwnedObject.userInv $Heap@@18 this@@26)))))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1313|
 :pattern ( (_module.OwnedObject.inv $Heap@@18 this@@26) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@19 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@7 $Heap@@19 this@@27) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@19)) ($HeapSucc $prevHeap@@7 $Heap@@19)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Remaining) ($IsAlloc refType this@@27 Tclass._module.Remaining $prevHeap@@7)))))) (= (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@7 $Heap@@19 this@@27)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@27) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 this@@27) _module.Remaining.value)))))))
 :qid |_07CounterThreadOwnershipdfy.546:22|
 :skolemid |1893|
 :pattern ( (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@7 $Heap@@19 this@@27) ($IsGoodHeap $Heap@@19))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@1) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@4 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@22 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@24) Tclass._module.Universe $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |966|
 :pattern ( (_module.Object.universe $o@@24) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) ($Is refType $o@@25 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@25) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (_module.Object.universe $o@@25))
))))
(assert (forall (($h@@23 T@U) ($o@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@26) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2126|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@26) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@24 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2128|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@20 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@8 $Heap@@20 this@@28) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@20 this@@28) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@20 this@@28)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |1656|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@20 this@@28) ($Is refType this@@28 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@20 this@@28) (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@8 $Heap@@20 this@@28) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@21 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Remaining.unchangedNonvolatileUserFields#canCall| $prevHeap@@9 $Heap@@21 this@@29) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Remaining)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@9 $Heap@@21 this@@29) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@9 $Heap@@21 this@@29)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |1894|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@9 $Heap@@21 this@@29) ($Is refType this@@29 Tclass._module.Remaining) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@9 $Heap@@21 this@@29) (_module.Remaining.unchangedNonvolatileUserFields $prevHeap@@9 $Heap@@21 this@@29) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@22 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@10 $Heap@@22 this@@30) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@10 $Heap@@22 this@@30) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@10 $Heap@@22 this@@30)))
 :qid |_07CounterThreadOwnershipdfy.383:22|
 :skolemid |2142|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@10 $Heap@@22 this@@30) ($Is refType this@@30 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@10 $Heap@@22 this@@30) (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@10 $Heap@@22 this@@30) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@23 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@11 $Heap@@23 this@@31) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.OwnedObject)))) (= (_module.Object.transitiveInv2 $prevHeap@@11 $Heap@@23 this@@31) (_module.OwnedObject.transitiveInv2 $prevHeap@@11 $Heap@@23 this@@31)))
 :qid |_07CounterThreadOwnershipdfy.274:22|
 :skolemid |1337|
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@11 $Heap@@23 this@@31) ($Is refType this@@31 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@23))
 :pattern ( (_module.Object.transitiveInv2 $prevHeap@@11 $Heap@@23 this@@31) (_module.OwnedObject.transitiveInv2 $prevHeap@@11 $Heap@@23 this@@31) ($IsGoodHeap $Heap@@23))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@6 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsBox bx@@11 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1651|
 :pattern ( ($IsBox bx@@12 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Remaining?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1883|
 :pattern ( ($IsBox bx@@13 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Remaining) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Remaining)))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( ($IsBox bx@@14 Tclass._module.Remaining))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.IncrementerMethod?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |2121|
 :pattern ( ($IsBox bx@@15 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.IncrementerMethod) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.IncrementerMethod)))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( ($IsBox bx@@16 Tclass._module.IncrementerMethod))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@8| Tclass._module.AtomicCounter?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Remaining)  (and ($Is refType |c#0@@9| Tclass._module.Remaining?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3514|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@25 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@28) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@28) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2127|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@28) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@26 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@29) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@29) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2129|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@29) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@24 this@@32) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Object) ($IsAlloc refType this@@32 Tclass._module.Object $Heap@@24)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@32)) _module.Universe.content)) ($Box refType this@@32)) (|_module.Universe.globalBaseInv#canCall| $Heap@@24 (_module.Object.universe this@@32))) (= (_module.Object.baseInv $Heap@@24 this@@32)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@32)) _module.Universe.content)) ($Box refType this@@32)) (_module.Universe.globalBaseInv $Heap@@24 (_module.Object.universe this@@32))))))
 :qid |_07CounterThreadOwnershipdfy.243:19|
 :skolemid |971|
 :pattern ( (_module.Object.baseInv $Heap@@24 this@@32) ($IsGoodHeap $Heap@@24))
))))
(assert (forall (($o@@30 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@30 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@30 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3523|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@31 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@31 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@31 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3531|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@32 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@32 Tclass._module.Remaining? $heap@@1) ($IsAlloc refType $o@@32 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3535|
 :pattern ( ($IsAlloc refType $o@@32 Tclass._module.Remaining? $heap@@1))
)))
(assert (forall (($o@@33 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@33 Tclass._module.IncrementerMethod? $heap@@2) ($IsAlloc refType $o@@33 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3539|
 :pattern ( ($IsAlloc refType $o@@33 Tclass._module.IncrementerMethod? $heap@@2))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@25 this@@33) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Object) ($IsAlloc refType this@@33 Tclass._module.Object $Heap@@25)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@25 this@@33) (=> (_module.Object.baseInv $Heap@@25 this@@33) (|_module.Universe.globalInv#canCall| $Heap@@25 (_module.Object.universe this@@33)))) (= (_module.Object.objectGlobalInv $Heap@@25 this@@33)  (and (_module.Object.baseInv $Heap@@25 this@@33) (_module.Universe.globalInv $Heap@@25 (_module.Object.universe this@@33))))))
 :qid |_07CounterThreadOwnershipdfy.264:19|
 :skolemid |1005|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@25 this@@33) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@26 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.AtomicCounter.unchangedNonvolatileUserFields#canCall| $prevHeap@@12 $Heap@@26 this@@34) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@12 $Heap@@26)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.AtomicCounter) ($IsAlloc refType this@@34 Tclass._module.AtomicCounter $prevHeap@@12)))))) (= (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@26 this@@34) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_07CounterThreadOwnershipdfy.485:22|
 :skolemid |1655|
 :pattern ( (_module.AtomicCounter.unchangedNonvolatileUserFields $prevHeap@@12 $Heap@@26 this@@34) ($IsGoodHeap $Heap@@26))
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
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 TInt) (and (= ($Box intType ($Unbox intType bx@@17)) bx@@17) ($Is intType ($Unbox intType bx@@17) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@17 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@27 this@@35) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.AtomicCounter) ($IsAlloc refType this@@35 Tclass._module.AtomicCounter $Heap@@27)))))) (=> (_module.AtomicCounter.userInv $Heap@@27 this@@35) (_module.AtomicCounter.localUserInv $Heap@@27 this@@35)))
 :qid |_07CounterThreadOwnershipdfy.497:19|
 :skolemid |1681|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@27 this@@35))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@28 this@@36) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Remaining) ($IsAlloc refType this@@36 Tclass._module.Remaining $Heap@@28)))))) (=> (_module.Remaining.userInv $Heap@@28 this@@36) (_module.Remaining.localUserInv $Heap@@28 this@@36)))
 :qid |_07CounterThreadOwnershipdfy.558:19|
 :skolemid |1919|
 :pattern ( (_module.Remaining.userInv $Heap@@28 this@@36))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@29 this@@37) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@37 Tclass._module.IncrementerMethod $Heap@@29)))))) (=> (_module.IncrementerMethod.userInv $Heap@@29 this@@37) (_module.IncrementerMethod.localUserInv $Heap@@29 this@@37)))
 :qid |_07CounterThreadOwnershipdfy.670:19|
 :skolemid |2167|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@29 this@@37))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@30 this@@38) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $Heap@@30)))))) (=> (_module.OwnedObject.userInv $Heap@@30 this@@38) (_module.OwnedObject.localUserInv $Heap@@30 this@@38)))
 :qid |_07CounterThreadOwnershipdfy.387:19|
 :skolemid |1399|
 :pattern ( (_module.OwnedObject.userInv $Heap@@30 this@@38))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@31 this@@39) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.OwnedObject) ($IsAlloc refType this@@39 Tclass._module.OwnedObject $Heap@@31)))))) (=> (_module.OwnedObject.inv $Heap@@31 this@@39) (_module.OwnedObject.localInv $Heap@@31 this@@39)))
 :qid |_07CounterThreadOwnershipdfy.333:19|
 :skolemid |1311|
 :pattern ( (_module.OwnedObject.inv $Heap@@31 this@@39))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@32 this@@40) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Object) ($IsAlloc refType this@@40 Tclass._module.Object $Heap@@32)))))) (=> (_module.Object.inv $Heap@@32 this@@40) (_module.Object.localInv $Heap@@32 this@@40)))
 :qid |_07CounterThreadOwnershipdfy.273:19|
 :skolemid |1027|
 :pattern ( (_module.Object.inv $Heap@@32 this@@40))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@33 this@@41) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@41 Tclass._module.IncrementerMethod $Heap@@33)))))) (= (_module.IncrementerMethod.localUserInv $Heap@@33 this@@41)  (and (and (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@41) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 1)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 0))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 2)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 3)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 4)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 5)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 9)))) (and (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 6)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 7)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 11)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 8)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 9)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.i))) (LitInt 10))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.programCounter))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@41) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0))))))
 :qid |_07CounterThreadOwnershipdfy.655:19|
 :skolemid |2162|
 :pattern ( (_module.IncrementerMethod.localUserInv $Heap@@33 this@@41) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@34 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@13 $Heap@@34 this@@42) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@34)) ($HeapSucc $prevHeap@@13 $Heap@@34)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.OwnedObject) ($IsAlloc refType this@@42 Tclass._module.OwnedObject $prevHeap@@13)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@42) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@42) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@13 $Heap@@34 this@@42)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@13 $Heap@@34 this@@42)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@42) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@42) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@13 $Heap@@34 this@@42)))))
 :qid |_07CounterThreadOwnershipdfy.375:22|
 :skolemid |1375|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@13 $Heap@@34 this@@42) ($IsGoodHeap $Heap@@34))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@18 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@18) ($IsAllocBox bx@@18 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@18))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@27 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@34 null)) (not true)) ($Is refType $o@@34 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@34) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@34) _module.OwnedObject.nonvolatileVersion)) TInt $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1290|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@34) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h@@28 T@U) ($o@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@35) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@35) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@29 T@U) ($o@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.Remaining?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@36) _module.Remaining.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1886|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@36) _module.Remaining.value)))
)))
(assert (forall (($h@@30 T@U) ($o@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@37) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2124|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@37) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@31 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@38) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2130|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@38) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@32 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@39) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2132|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@39) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@33 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@40) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2134|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@40) _module.IncrementerMethod.i)))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@41 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (or (= $o@@41 this@@43) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 this@@43) _module.Universe.content)) ($Box refType $o@@41)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@41) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@41) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@7 this@@43) (_module.Universe.globalBaseInv $h1@@7 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalBaseInv $h1@@7 this@@43))
)))
(assert (forall (($h@@34 T@U) ($o@@42 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@42 null)) (not true)) ($Is refType $o@@42 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) _module.OwnedObject.owner)) Tclass._module.Object $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1292|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@35 this@@44) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.OwnedObject) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $Heap@@35)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@35 this@@44) (=> (_module.Object.baseInv $Heap@@35 this@@44) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@44)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@44) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@35 this@@44) (=> (_module.OwnedObject.baseUserInv $Heap@@35 this@@44) (|_module.OwnedObject.localUserInv#canCall| $Heap@@35 this@@44)))))) (= (_module.OwnedObject.localInv $Heap@@35 this@@44)  (and (and (and (_module.Object.baseInv $Heap@@35 this@@44) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@44)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@44) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@35 this@@44)) (_module.OwnedObject.localUserInv $Heap@@35 this@@44)))))
 :qid |_07CounterThreadOwnershipdfy.327:19|
 :skolemid |1303|
 :pattern ( (_module.OwnedObject.localInv $Heap@@35 this@@44) ($IsGoodHeap $Heap@@35))
))))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Universe) ($IsAlloc refType this@@45 Tclass._module.Universe $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@43 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@43) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@43) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@8 this@@45) (_module.Universe.globalInv $h1@@8 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Universe.globalInv $h1@@8 this@@45))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Object) ($IsAlloc refType this@@46 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@44 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@44) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@44) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@44) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |967|
)) (= (_module.Object.baseInv $h0@@9 this@@46) (_module.Object.baseInv $h1@@9 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |968|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.baseInv $h1@@9 this@@46))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Object) ($IsAlloc refType this@@47 Tclass._module.Object $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@45 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@45) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@45) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@45) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1001|
)) (= (_module.Object.objectGlobalInv $h0@@10 this@@47) (_module.Object.objectGlobalInv $h1@@10 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1002|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.objectGlobalInv $h1@@10 this@@47))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.Object) ($IsAlloc refType this@@48 Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@46 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@46) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@46) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@46) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1017|
)) (= (_module.Object.localInv $h0@@11 this@@48) (_module.Object.localInv $h1@@11 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1018|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.localInv $h1@@11 this@@48))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Object) ($IsAlloc refType this@@49 Tclass._module.Object $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@47 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@47) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@47) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@47) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1025|
)) (= (_module.Object.inv $h0@@12 this@@49) (_module.Object.inv $h1@@12 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1026|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Object.inv $h1@@12 this@@49))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.OwnedObject) ($IsAlloc refType this@@50 Tclass._module.OwnedObject $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@48 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@48) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@48) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@48) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1299|
)) (= (_module.OwnedObject.localInv $h0@@13 this@@50) (_module.OwnedObject.localInv $h1@@13 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1300|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.localInv $h1@@13 this@@50))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.OwnedObject) ($IsAlloc refType this@@51 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@49 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@49) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@49) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@49) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1309|
)) (= (_module.OwnedObject.inv $h0@@14 this@@51) (_module.OwnedObject.inv $h1@@14 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1310|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.inv $h1@@14 this@@51))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.OwnedObject) ($IsAlloc refType this@@52 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@50 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@50) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@50) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@50) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1385|
)) (= (_module.OwnedObject.baseUserInv $h0@@15 this@@52) (_module.OwnedObject.baseUserInv $h1@@15 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1386|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.baseUserInv $h1@@15 this@@52))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.OwnedObject) ($IsAlloc refType this@@53 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@51 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@51) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@51) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@51) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1389|
)) (= (_module.OwnedObject.localUserInv $h0@@16 this@@53) (_module.OwnedObject.localUserInv $h1@@16 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1390|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.localUserInv $h1@@16 this@@53))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@52 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@52) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@52) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@52) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1397|
)) (= (_module.OwnedObject.userInv $h0@@17 this@@54) (_module.OwnedObject.userInv $h1@@17 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1398|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.userInv $h1@@17 this@@54))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.AtomicCounter) ($IsAlloc refType this@@55 Tclass._module.AtomicCounter $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@53 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@53) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@53) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@53) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1665|
)) (= (_module.AtomicCounter.baseUserInv $h0@@18 this@@55) (_module.AtomicCounter.baseUserInv $h1@@18 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1666|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.AtomicCounter.baseUserInv $h1@@18 this@@55))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.AtomicCounter) ($IsAlloc refType this@@56 Tclass._module.AtomicCounter $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@54 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@54) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@54) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@54) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1672|
)) (= (_module.AtomicCounter.localUserInv $h0@@19 this@@56) (_module.AtomicCounter.localUserInv $h1@@19 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1673|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.AtomicCounter.localUserInv $h1@@19 this@@56))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.AtomicCounter) ($IsAlloc refType this@@57 Tclass._module.AtomicCounter $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@55 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@55) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@55) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@55) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1679|
)) (= (_module.AtomicCounter.userInv $h0@@20 this@@57) (_module.AtomicCounter.userInv $h1@@20 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1680|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.AtomicCounter.userInv $h1@@20 this@@57))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Remaining) ($IsAlloc refType this@@58 Tclass._module.Remaining $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@56 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@56) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@56) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@56) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1903|
)) (= (_module.Remaining.baseUserInv $h0@@21 this@@58) (_module.Remaining.baseUserInv $h1@@21 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Remaining.baseUserInv $h1@@21 this@@58))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Remaining) ($IsAlloc refType this@@59 Tclass._module.Remaining $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@57 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@57 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@57) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@57) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@57) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1910|
)) (= (_module.Remaining.localUserInv $h0@@22 this@@59) (_module.Remaining.localUserInv $h1@@22 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1911|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Remaining.localUserInv $h1@@22 this@@59))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Remaining) ($IsAlloc refType this@@60 Tclass._module.Remaining $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@58 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@58) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@58) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@58) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1917|
)) (= (_module.Remaining.userInv $h0@@23 this@@60) (_module.Remaining.userInv $h1@@23 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1918|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Remaining.userInv $h1@@23 this@@60))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@61 Tclass._module.IncrementerMethod $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@59 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@59) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@59) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@59) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |2151|
)) (= (_module.IncrementerMethod.baseUserInv $h0@@24 this@@61) (_module.IncrementerMethod.baseUserInv $h1@@24 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2152|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.IncrementerMethod.baseUserInv $h1@@24 this@@61))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@62 Tclass._module.IncrementerMethod $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@60 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@60) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@60) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |2158|
)) (= (_module.IncrementerMethod.localUserInv $h0@@25 this@@62) (_module.IncrementerMethod.localUserInv $h1@@25 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2159|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.IncrementerMethod.localUserInv $h1@@25 this@@62))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@63 Tclass._module.IncrementerMethod $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@61 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@61) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@61) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |2165|
)) (= (_module.IncrementerMethod.userInv $h0@@26 this@@63) (_module.IncrementerMethod.userInv $h1@@26 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2166|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.IncrementerMethod.userInv $h1@@26 this@@63))
)))
(assert (forall ((bx@@19 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@19 (TSet t@@5)))
)))
(assert (forall (($o@@62 T@U) ) (!  (=> ($Is refType $o@@62 Tclass._module.OwnedObject?) ($Is refType $o@@62 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3522|
 :pattern ( ($Is refType $o@@62 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedObject?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3520|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@63 T@U) ) (!  (=> ($Is refType $o@@63 Tclass._module.AtomicCounter?) ($Is refType $o@@63 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($Is refType $o@@63 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.AtomicCounter?) ($IsBox bx@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3528|
 :pattern ( ($IsBox bx@@21 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@64 T@U) ) (!  (=> ($Is refType $o@@64 Tclass._module.Remaining?) ($Is refType $o@@64 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3534|
 :pattern ( ($Is refType $o@@64 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Remaining?) ($IsBox bx@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3532|
 :pattern ( ($IsBox bx@@22 Tclass._module.Remaining?))
)))
(assert (forall (($o@@65 T@U) ) (!  (=> ($Is refType $o@@65 Tclass._module.IncrementerMethod?) ($Is refType $o@@65 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3538|
 :pattern ( ($Is refType $o@@65 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.IncrementerMethod?) ($IsBox bx@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3536|
 :pattern ( ($IsBox bx@@23 Tclass._module.IncrementerMethod?))
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
(assert (forall (($h@@35 T@U) ($o@@66 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@66 null)) (not true)) ($Is refType $o@@66 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@66) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@66) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@36 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.IncrementerMethod.unchangedNonvolatileUserFields#canCall| $prevHeap@@14 $Heap@@36 this@@64) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@14) ($IsGoodHeap $Heap@@36)) ($HeapSucc $prevHeap@@14 $Heap@@36)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@64 Tclass._module.IncrementerMethod $prevHeap@@14)))))) (= (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@14 $Heap@@36 this@@64)  (and (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.programCounter))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.programCounter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.counter)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.counter)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.remaining)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.remaining)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.initial__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.final__value))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@64) _module.IncrementerMethod.i))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@64) _module.IncrementerMethod.i)))))))
 :qid |_07CounterThreadOwnershipdfy.640:22|
 :skolemid |2141|
 :pattern ( (_module.IncrementerMethod.unchangedNonvolatileUserFields $prevHeap@@14 $Heap@@36 this@@64) ($IsGoodHeap $Heap@@36))
))))
(assert (forall (($o@@67 T@U) ) (! (= ($Is refType $o@@67 Tclass._module.Universe?)  (or (= $o@@67 null) (implements$_module.Universe (dtype $o@@67))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@67 Tclass._module.Universe?))
)))
(assert (forall (($o@@68 T@U) ) (! (= ($Is refType $o@@68 Tclass._module.Object?)  (or (= $o@@68 null) (implements$_module.Object (dtype $o@@68))))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is refType $o@@68 Tclass._module.Object?))
)))
(assert (forall (($o@@69 T@U) ) (! (= ($Is refType $o@@69 Tclass._module.OwnedObject?)  (or (= $o@@69 null) (implements$_module.OwnedObject (dtype $o@@69))))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( ($Is refType $o@@69 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@36 T@U) ($o@@70 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@70 null)) (not true)) ($Is refType $o@@70 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@70) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@70) _module.Universe.content)) (TSet Tclass._module.Object) $h@@36))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@70) _module.Universe.content)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@37 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.OwnedObject.transitiveInv2#canCall| $prevHeap@@15 $Heap@@37 this@@65) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@15) ($IsGoodHeap $Heap@@37)) ($HeapSucc $prevHeap@@15 $Heap@@37)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.OwnedObject) ($IsAlloc refType this@@65 Tclass._module.OwnedObject $prevHeap@@15)))))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@65) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@65) _module.OwnedObject.nonvolatileVersion)))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@15 $Heap@@37 this@@65)) (= (_module.OwnedObject.transitiveInv2 $prevHeap@@15 $Heap@@37 this@@65)  (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@65) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@65) _module.OwnedObject.nonvolatileVersion)))) (and (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@15 $Heap@@37 this@@65) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 (_module.Object.universe this@@65)) _module.Universe.content)) ($Box refType |o#0@@2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#0@@2|) _module.OwnedObject.owner)) this@@65))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#0@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#0@@2|) _module.OwnedObject.owner)) this@@65)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |1334|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#0@@2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#0@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#0@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 (_module.Object.universe this@@65)) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@65) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@65) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 |oldOwner#0|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@65) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 this@@65) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_07CounterThreadOwnershipdfy.343:22|
 :skolemid |1336|
 :pattern ( (_module.OwnedObject.transitiveInv2 $prevHeap@@15 $Heap@@37 this@@65) ($IsGoodHeap $Heap@@37))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.AtomicCounter.userInv#canCall| $Heap@@38 this@@66) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.AtomicCounter) ($IsAlloc refType this@@66 Tclass._module.AtomicCounter $Heap@@38)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.AtomicCounter.localUserInv#canCall| $Heap@@38 this@@66)) (= (_module.AtomicCounter.userInv $Heap@@38 this@@66)  (and true (_module.AtomicCounter.localUserInv $Heap@@38 this@@66)))))
 :qid |_07CounterThreadOwnershipdfy.497:19|
 :skolemid |1683|
 :pattern ( (_module.AtomicCounter.userInv $Heap@@38 this@@66) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.Remaining.userInv#canCall| $Heap@@39 this@@67) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Remaining) ($IsAlloc refType this@@67 Tclass._module.Remaining $Heap@@39)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Remaining.localUserInv#canCall| $Heap@@39 this@@67)) (= (_module.Remaining.userInv $Heap@@39 this@@67)  (and true (_module.Remaining.localUserInv $Heap@@39 this@@67)))))
 :qid |_07CounterThreadOwnershipdfy.558:19|
 :skolemid |1921|
 :pattern ( (_module.Remaining.userInv $Heap@@39 this@@67) ($IsGoodHeap $Heap@@39))
))))
(assert (forall (($h@@37 T@U) ($o@@71 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@71 null)) (not true)) ($Is refType $o@@71 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@71) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@71) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@40 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@16 $Heap@@40 this@@68) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@16) ($IsGoodHeap $Heap@@40)) ($HeapSucc $prevHeap@@16 $Heap@@40)) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Universe) ($IsAlloc refType this@@68 Tclass._module.Universe $prevHeap@@16)))))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@16 $Heap@@40 this@@68)  (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 this@@68) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@68) _module.Universe.content))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 this@@68) _module.Universe.content)) ($Box refType |o#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@68) _module.Universe.content)) ($Box refType |o#0@@3|)))) (not ($IsAllocBox ($Box refType |o#0@@3|) Tclass._module.Object $prevHeap@@16)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |534|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@68) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 this@@68) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 this@@68) _module.Universe.content)) ($Box refType |o#1|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 |o#1|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |535|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@16 this@@68) _module.Universe.content)) ($Box refType |o#1|)))
)))))
 :qid |_07CounterThreadOwnershipdfy.51:22|
 :skolemid |537|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@16 $Heap@@40 this@@68) ($IsGoodHeap $Heap@@40))
))))
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
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun this@@69 () T@U)
(declare-fun $Heap@@41 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |_module.Object.transitiveInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun call0formal@this@0 () T@U)
(declare-fun call0formal@this@0@@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.IncrementerMethod.CheckTransitiveInv2)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon4_correct  (=> (and (and (|_module.OwnedObject.transitiveInv2#canCall| $Heap@0 $Heap@1 this@@69) (=> (_module.OwnedObject.transitiveInv2 $Heap@0 $Heap@1 this@@69) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 (_module.Object.universe this@@69)))) (and (_module.OwnedObject.transitiveInv2 $Heap@0 $Heap@1 this@@69) (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 (_module.Object.universe this@@69)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= (_module.Object.universe this@@69) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@69) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@@41)) (=> ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@@41) (=> (and (= call0formal@previous$Heap@0 $Heap@@41) (= call2formal@this@0 (_module.Object.universe this@@69))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@0|)) (=> (=> ($Is refType |o#1@@0| Tclass._module.OwnedObject) (and (forall (($o@@72 T@U) ($f@@28 T@U) ) (!  (=> (or (not (= $o@@72 null)) (not true)) (=> (= $o@@72 |o#1@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@72) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@72) $f@@28))))
 :qid |_07CounterThreadOwnershipdfy.153:12|
 :skolemid |785|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@72) $f@@28))
)) (forall ((|x#2| T@U) ) (!  (=> (and ($Is refType |x#2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@0|)) _module.Universe.content)) ($Box refType |x#2|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.owner)) |o#1@@0|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2|) _module.OwnedObject.owner)) |o#1@@0|)))
 :qid |_07CounterThreadOwnershipdfy.154:20|
 :skolemid |786|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@0|)) _module.Universe.content)) ($Box refType |x#2|)))
)))) (|_module.Object.transitiveInv2#canCall| call0formal@previous$Heap@0 $Heap@1 |o#1@@0|))))
 :qid |_07CounterThreadOwnershipdfy.151:20|
 :skolemid |787|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@1 |o#1@@0|))
 :pattern ( (_module.Object.universe |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@0|)))
))) (and (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@1|))) (=> (=> ($Is refType |o#1@@1| Tclass._module.OwnedObject) (and (forall (($o@@73 T@U) ($f@@29 T@U) ) (!  (=> (or (not (= $o@@73 null)) (not true)) (=> (= $o@@73 |o#1@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@73) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@73) $f@@29))))
 :qid |_07CounterThreadOwnershipdfy.153:12|
 :skolemid |788|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@73) $f@@29))
)) (forall ((|x#2@@0| T@U) ) (!  (=> (and ($Is refType |x#2@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@1|)) _module.Universe.content)) ($Box refType |x#2@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@1|))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2@@0|) _module.OwnedObject.owner)) |o#1@@1|)))
 :qid |_07CounterThreadOwnershipdfy.154:20|
 :skolemid |789|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |x#2@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#1@@1|)) _module.Universe.content)) ($Box refType |x#2@@0|)))
)))) (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@1 |o#1@@1|)))
 :qid |_07CounterThreadOwnershipdfy.151:20|
 :skolemid |790|
 :pattern ( (_module.Object.transitiveInv2 call0formal@previous$Heap@0 $Heap@1 |o#1@@1|))
 :pattern ( (_module.Object.universe |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.unchangedNonvolatileFields $Heap@@41 $Heap@2 this@@69) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.owner))))))))) (=> (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.unchangedNonvolatileFields $Heap@@41 $Heap@2 this@@69) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.owner)))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.unchangedNonvolatileFields $Heap@@41 $Heap@2 this@@69) (_module.OwnedObject.unchangedNonvolatileUserFields $Heap@@41 $Heap@2 this@@69))))))) (=> (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (=> (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.unchangedNonvolatileFields $Heap@@41 $Heap@2 this@@69) (_module.OwnedObject.unchangedNonvolatileUserFields $Heap@@41 $Heap@2 this@@69)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType |o#7|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7|) _module.OwnedObject.owner)) this@@69))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7|) _module.OwnedObject.owner)) this@@69)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |2324|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType |o#7|)))
)))))) (=> (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType |o#7@@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7@@0|) _module.OwnedObject.owner)) this@@69))) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7@@0|) _module.OwnedObject.nonvolatileVersion)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7@@0|) _module.OwnedObject.owner)) this@@69)))
 :qid |_07CounterThreadOwnershipdfy.349:18|
 :skolemid |2324|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7@@0|) _module.OwnedObject.owner)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#7@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#7@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType |o#7@@0|)))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@2 this@@69) (or (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@2 this@@69) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.owner))))
 (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |oldOwner#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |oldOwner#1|) _module.OwnedObject.nonvolatileVersion)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@69) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@69) _module.OwnedObject.nonvolatileVersion)))))))))))))))))))))))))
(let ((anon6_Else_correct  (=> (and (not (_module.OwnedObject.transitiveInv2 $Heap@0 $Heap@1 this@@69)) (= (ControlFlow 0 11) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (_module.OwnedObject.transitiveInv2 $Heap@0 $Heap@1 this@@69) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (not (= (_module.Object.universe this@@69) null)) (not true))) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@69)) Tclass._module.Universe? $Heap@1) (and (=> (= (ControlFlow 0 8) (- 0 9)) ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@0)) (=> ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@0) (=> (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 (_module.Object.universe this@@69)) (= (ControlFlow 0 8) 2)) anon4_correct))))))))
(let ((anon2_correct  (=> (and (and (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@0 this@@69) (=> (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@0 this@@69) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@41 $Heap@0 (_module.Object.universe this@@69)))) (and (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@0 this@@69) (_module.Universe.baseLegalTransitionsSequence $Heap@@41 $Heap@0 (_module.Object.universe this@@69)))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (not (= (_module.Object.universe this@@69) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@69) null)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (forall (($o@@74 T@U) ($f@@30 T@U) ) (!  (=> (and (and (or (not (= $o@@74 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@74) alloc)))) (or (= $o@@74 (_module.Object.universe this@@69)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType $o@@74)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@74 $f@@30)))
 :qid |_07CounterThreadOwnershipdfy.704:19|
 :skolemid |2328|
))) (=> (forall (($o@@75 T@U) ($f@@31 T@U) ) (!  (=> (and (and (or (not (= $o@@75 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@75) alloc)))) (or (= $o@@75 (_module.Object.universe this@@69)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType $o@@75)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@75 $f@@31)))
 :qid |_07CounterThreadOwnershipdfy.704:19|
 :skolemid |2328|
)) (=> (= call0formal@this@0 (_module.Object.universe this@@69)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 call0formal@this@0) (or (_module.Universe.globalBaseInv $Heap@0 call0formal@this@0) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#0@@4|))) (and (= (_module.Object.universe |o#0@@4|) call0formal@this@0) (or (not (= |o#0@@4| call0formal@this@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |681|
 :pattern ( (_module.Object.universe |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#0@@4|)))
))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 call0formal@this@0) (or (_module.Universe.globalBaseInv $Heap@0 call0formal@this@0) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#0@@5|))) (and (= (_module.Object.universe |o#0@@5|) call0formal@this@0) (or (not (= |o#0@@5| call0formal@this@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |681|
 :pattern ( (_module.Object.universe |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#0@@5|)))
)))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@1 call0formal@this@0) (=> (_module.Universe.globalBaseInv $Heap@1 call0formal@this@0) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 call0formal@this@0))) (and (|_module.Universe.globalBaseInv#canCall| $Heap@1 call0formal@this@0) (and (_module.Universe.globalBaseInv $Heap@1 call0formal@this@0) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Universe.content)) ($Box refType |o#1@@2|))) (and (= (_module.Object.universe |o#1@@2|) call0formal@this@0) (or (not (= |o#1@@2| call0formal@this@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |684|
 :pattern ( (_module.Object.universe |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Universe.content)) ($Box refType |o#1@@2|)))
))))) (=> (and (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@1 call0formal@this@0) (and (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 call0formal@this@0) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Universe.content))) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Universe.content)) ($Box refType |o#2|)))) (not ($IsAllocBox ($Box refType |o#2|) Tclass._module.Object $Heap@0)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |687|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#2|)))
))) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#3|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#3|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType |o#3|)))
))))) (forall (($o@@76 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@76) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@76) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@76)) (or (= $o@@76 call0formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0) _module.Universe.content)) ($Box refType $o@@76)))))
 :qid |_07CounterThreadOwnershipdfy.104:10|
 :skolemid |689|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@76))
))) (and ($HeapSucc $Heap@0 $Heap@1) ($IsAllocBox ($Box refType this@@69) Tclass._module.OwnedObject? $Heap@1))) (and (=> (= (ControlFlow 0 12) (- 0 13)) ($IsAlloc refType this@@69 Tclass._module.IncrementerMethod $Heap@0)) (=> ($IsAlloc refType this@@69 Tclass._module.IncrementerMethod $Heap@0) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@0 $Heap@1 this@@69) (and (=> (= (ControlFlow 0 12) 8) anon6_Then_correct) (=> (= (ControlFlow 0 12) 11) anon6_Else_correct))))))))))))))))))
(let ((anon5_Else_correct  (=> (and (not (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@0 this@@69)) (= (ControlFlow 0 20) 12)) anon2_correct)))
(let ((anon5_Then_correct  (=> (_module.OwnedObject.transitiveInv2 $Heap@@41 $Heap@0 this@@69) (and (=> (= (ControlFlow 0 17) (- 0 19)) (or (not (= (_module.Object.universe this@@69) null)) (not true))) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@69)) Tclass._module.Universe? $Heap@0) (and (=> (= (ControlFlow 0 17) (- 0 18)) ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@@41)) (=> ($IsAlloc refType (_module.Object.universe this@@69) Tclass._module.Universe $Heap@@41) (=> (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@41 $Heap@0 (_module.Object.universe this@@69)) (= (ControlFlow 0 17) 12)) anon2_correct))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@41 alloc (_module.Object.universe this@@69) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)))) (and (=> (= (ControlFlow 0 21) (- 0 25)) (or (not (= (_module.Object.universe this@@69) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@69) null)) (not true)) (and (=> (= (ControlFlow 0 21) (- 0 24)) (forall (($o@@77 T@U) ($f@@32 T@U) ) (!  (=> (and (and (or (not (= $o@@77 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 $o@@77) alloc)))) (or (= $o@@77 (_module.Object.universe this@@69)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType $o@@77)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@77 $f@@32)))
 :qid |_07CounterThreadOwnershipdfy.701:19|
 :skolemid |2327|
))) (=> (forall (($o@@78 T@U) ($f@@33 T@U) ) (!  (=> (and (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 $o@@78) alloc)))) (or (= $o@@78 (_module.Object.universe this@@69)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 (_module.Object.universe this@@69)) _module.Universe.content)) ($Box refType $o@@78)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@78 $f@@33)))
 :qid |_07CounterThreadOwnershipdfy.701:19|
 :skolemid |2327|
)) (=> (= call0formal@this@0@@0 (_module.Object.universe this@@69)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@41 call0formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@@41 call0formal@this@0@@0) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@6|))) (and (= (_module.Object.universe |o#0@@6|) call0formal@this@0@@0) (or (not (= |o#0@@6| call0formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |681|
 :pattern ( (_module.Object.universe |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@6|)))
))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@41 call0formal@this@0@@0) (or (_module.Universe.globalBaseInv $Heap@@41 call0formal@this@0@@0) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (= (_module.Object.universe |o#0@@7|) call0formal@this@0@@0) (or (not (= |o#0@@7| call0formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |681|
 :pattern ( (_module.Object.universe |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#0@@7|)))
)))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@0 call0formal@this@0@@0) (=> (_module.Universe.globalBaseInv $Heap@0 call0formal@this@0@@0) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@41 $Heap@0 call0formal@this@0@@0))) (and (|_module.Universe.globalBaseInv#canCall| $Heap@0 call0formal@this@0@@0) (and (_module.Universe.globalBaseInv $Heap@0 call0formal@this@0@@0) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@3|))) (and (= (_module.Object.universe |o#1@@3|) call0formal@this@0@@0) (or (not (= |o#1@@3| call0formal@this@0@@0)) (not true))))
 :qid |_07CounterThreadOwnershipdfy.34:12|
 :skolemid |684|
 :pattern ( (_module.Object.universe |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#1@@3|)))
))))) (=> (and (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@41 $Heap@0 call0formal@this@0@@0) (and (_module.Universe.baseLegalTransitionsSequence $Heap@@41 $Heap@0 call0formal@this@0@@0) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Universe.content))) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|)))) (not ($IsAllocBox ($Box refType |o#2@@0|) Tclass._module.Object $Heap@@41)))
 :qid |_07CounterThreadOwnershipdfy.57:16|
 :skolemid |687|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#2@@0|)))
))) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3@@0|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#3@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#3@@0|) _module.OwnedObject.nonvolatileVersion)))))
 :qid |_07CounterThreadOwnershipdfy.59:16|
 :skolemid |688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#3@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |o#3@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType |o#3@@0|)))
))))) (forall (($o@@79 T@U) ) (!  (=> (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 $o@@79) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@79) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 $o@@79)) (or (= $o@@79 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 call0formal@this@0@@0) _module.Universe.content)) ($Box refType $o@@79)))))
 :qid |_07CounterThreadOwnershipdfy.104:10|
 :skolemid |689|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@79))
))) (and ($HeapSucc $Heap@@41 $Heap@0) ($IsAllocBox ($Box refType this@@69) Tclass._module.OwnedObject? $Heap@0))) (and (=> (= (ControlFlow 0 21) (- 0 22)) ($IsAlloc refType this@@69 Tclass._module.IncrementerMethod $Heap@@41)) (=> ($IsAlloc refType this@@69 Tclass._module.IncrementerMethod $Heap@@41) (=> (|_module.OwnedObject.transitiveInv2#canCall| $Heap@@41 $Heap@0 this@@69) (and (=> (= (ControlFlow 0 21) 17) anon5_Then_correct) (=> (= (ControlFlow 0 21) 20) anon5_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@41) ($IsHeapAnchor $Heap@@41)) (=> (and (and (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@69 Tclass._module.IncrementerMethod $Heap@@41))) (= 11 $FunctionContextHeight)) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@@41 this@@69) (and (_module.Object.objectGlobalInv $Heap@@41 this@@69) (and (_module.Object.baseInv $Heap@@41 this@@69) (_module.Universe.globalInv $Heap@@41 (_module.Object.universe this@@69))))) (= (ControlFlow 0 26) 21))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
