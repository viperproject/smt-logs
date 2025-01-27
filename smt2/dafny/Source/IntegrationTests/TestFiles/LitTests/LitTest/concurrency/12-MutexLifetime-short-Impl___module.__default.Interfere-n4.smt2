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
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.Lifetime () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun |##_module.ObjectClassKind.Thread| () T@U)
(declare-fun Tagclass._module.ObjectClassKind () T@U)
(declare-fun |##_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |##_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun tytagFamily$ObjectClassKind () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
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
(declare-fun _module.Universe.outlives (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |lambda#55| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun _module.Universe.outlivesThrough (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Universe.outlivesThrough_h (T@U T@U T@U Int T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Universe.outlivesThrough#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun |_module.Universe.outlives#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.ObjectClassKind.Thread| () T@U)
(declare-fun |#_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |#_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun |_module.Lifetime.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.owner () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.Lifetime.elements () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.localInv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.inv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.outlives_h (T@U T@U T@U Int T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ObjectClassKind () T@U)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Universe.globalSequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |_module.Lifetime.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.alive#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.alive (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.alive (T@U T@U) Bool)
(declare-fun |$IsA#_module.ObjectClassKind| (T@U) Bool)
(declare-fun _module.Object.objectClassKind (T@U) T@U)
(declare-fun |_module.Object.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Thread.objectClassKind (T@U) T@U)
(declare-fun |_module.Thread.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.objectClassKind (T@U) T@U)
(declare-fun |_module.OwnedObject.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Lifetime.objectClassKind (T@U) T@U)
(declare-fun |_module.Lifetime.objectClassKind#canCall| (T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.alive#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun |_module.Universe.globalSequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.volatileOwns (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? class._module.Universe? Tagclass._module.Lifetime? |##_module.ObjectClassKind.Thread| Tagclass._module.ObjectClassKind |##_module.ObjectClassKind.OwnedObject| |##_module.ObjectClassKind.Lifetime| class._module.OwnedObject? Tagclass._module.OwnedObject? class._module.Lifetime? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$ObjectClassKind field$content field$owner field$nonvolatileVersion field$mightPointTo field$mightPointFrom field$elements)
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
 :skolemid |873|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap $h0 this |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |874|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly T@U) ($Heap T@U) (this@@0 T@U) (|a#0| T@U) (|b#0| T@U) ) (! (= (_module.Universe.outlives ($LS $ly) $Heap this@@0 |a#0| |b#0|) (_module.Universe.outlives $ly $Heap this@@0 |a#0| |b#0|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1213|
 :pattern ( (_module.Universe.outlives ($LS $ly) $Heap this@@0 |a#0| |b#0|))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@0 $Heap@@0 this@@1) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@0 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $prevHeap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@0 this@@1) (=> (_module.Universe.globalBaseInv $prevHeap@@0 this@@1) (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap@@0 this@@1)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@0 this@@1) (_module.Universe.globalBaseInv $Heap@@0 this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@0)))
 :qid |_12MutexLifetimeshortdfy.44:16|
 :skolemid |868|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.36:22|
 :skolemid |869|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#23| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#55| |l#0| |l#1|) |$y#23|))  (and ($IsBox |$y#23| |l#0|) (|Set#IsMember| |l#1| |$y#23|)))
 :qid |_12MutexLifetimeshortdfy.359:7|
 :skolemid |3519|
 :pattern ( (MapType0Select BoxType boolType (|lambda#55| |l#0| |l#1|) |$y#23|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@2) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)) (=> (= (_module.Object.universe |o#0@@0|) this@@2) (=> (or (not (= |o#0@@0| this@@2)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@1 |o#0@@0|) (=> (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|) (|_module.Object.triggerAxioms#canCall| $Heap@@1 |o#0@@0|)))))))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |823|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@1 this@@2)  (and true (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (and (and (= (_module.Object.universe |o#0@@1|) this@@2) (or (not (= |o#0@@1| this@@2)) (not true))) (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|)) (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |822|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_12MutexLifetimeshortdfy.16:19|
 :skolemid |824|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1791|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1792|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1879|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1880|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1961|
)) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h0@@2 this@@5) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1962|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@2 T@U) (this@@6 T@U) (|a#0@@0| T@U) (|x#0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@6 |a#0@@0| |x#0| |b#0@@0|)) (exists ((|_k#0| Int) ) (!  (and (<= (LitInt 0) |_k#0|) (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@6 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1246|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@6 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
)))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1247|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@6 |a#0@@0| |x#0| |b#0@@0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 16 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@3 this@@7) (and (< 16 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Universe) ($IsAlloc refType this@@7 Tclass._module.Universe $Heap@@3)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@3 this@@7) (=> (_module.Universe.globalBaseInv $Heap@@3 this@@7) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv#canCall| $Heap@@3 |o#0@@2|)))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |835|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (= (_module.Universe.globalInv $Heap@@3 this@@7)  (and (_module.Universe.globalBaseInv $Heap@@3 this@@7) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) _module.Universe.content)) ($Box refType |o#0@@3|))) (_module.Object.inv $Heap@@3 |o#0@@3|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |834|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@7) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_12MutexLifetimeshortdfy.22:19|
 :skolemid |836|
 :pattern ( (_module.Universe.globalInv $Heap@@3 this@@7) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@4 T@U) (this@@8 T@U) (|a#0@@1| T@U) (|x#0@@0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough#canCall| $Heap@@4 this@@8 |a#0@@1| |x#0@@0| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $Heap@@4)))) ($Is refType |a#0@@1| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0@@1| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) _module.Universe.content)) ($Box refType |a#0@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@8) _module.Universe.content)) ($Box refType |b#0@@1|)))))) (and (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives#canCall| $Heap@@4 this@@8 |a#0@@1| |x#0@@0|) (=> (_module.Universe.outlives $ly@@1 $Heap@@4 this@@8 |a#0@@1| |x#0@@0|) (|_module.Universe.outlives#canCall| $Heap@@4 this@@8 |x#0@@0| |b#0@@1|)))) (= (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@4 this@@8 |a#0@@1| |x#0@@0| |b#0@@1|)  (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives $ly@@1 $Heap@@4 this@@8 |a#0@@1| |x#0@@0|)) (_module.Universe.outlives $ly@@1 $Heap@@4 this@@8 |x#0@@0| |b#0@@1|)))))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1245|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@4 this@@8 |a#0@@1| |x#0@@0| |b#0@@1|) ($IsGoodHeap $Heap@@4))
))))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Thread?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($Is refType $o@@3 Tclass._module.Thread?))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.Lifetime?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($Is refType $o@@4 Tclass._module.Lifetime?))
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
(assert (forall (($h T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1752|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@5) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3490|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3494|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3498|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@5 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@4 $Heap@@5 this@@9) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@4 $Heap@@5)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Lifetime) ($IsAlloc refType this@@9 Tclass._module.Lifetime $prevHeap@@4)))))) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@4 $Heap@@5 this@@9)  (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@9) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@9) _module.Lifetime.owner))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@9) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@9) _module.Lifetime.elements)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@9) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@9) _module.Lifetime.mightPointTo)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@9) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@9) _module.Lifetime.mightPointFrom))))))
 :qid |_12MutexLifetimeshortdfy.571:22|
 :skolemid |1965|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@4 $Heap@@5 this@@9) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1325|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1748|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2357|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@7))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.OwnedObject.nonvolatileVersion) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$nonvolatileVersion) _module.OwnedObject.nonvolatileVersion))
(assert ($IsGhostField _module.OwnedObject.nonvolatileVersion))
(assert (= (FDim _module.Lifetime.owner) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$owner) _module.Lifetime.owner))
(assert ($IsGhostField _module.Lifetime.owner))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert (= (FDim _module.Lifetime.elements) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$elements) _module.Lifetime.elements))
(assert ($IsGhostField _module.Lifetime.elements))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@6 this@@10) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@6 this@@10) (_module.Thread.baseFieldsInv $Heap@@6 this@@10)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1507|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@10) ($Is refType this@@10 Tclass._module.Thread) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@10) (_module.Thread.baseFieldsInv $Heap@@6 this@@10) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@7 this@@11) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@7 this@@11) (_module.Lifetime.baseFieldsInv $Heap@@7 this@@11)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1952|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@7 this@@11) ($Is refType this@@11 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@7 this@@11) (_module.Lifetime.baseFieldsInv $Heap@@7 this@@11) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@8 this@@12) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@8 this@@12) (_module.OwnedObject.baseFieldsInv $Heap@@8 this@@12)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1781|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@8 this@@12) ($Is refType this@@12 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@8 this@@12) (_module.OwnedObject.baseFieldsInv $Heap@@8 this@@12) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@9 this@@13) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@9 this@@13) (_module.Thread.localInv $Heap@@9 this@@13)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1521|
 :pattern ( (_module.Object.localInv $Heap@@9 this@@13) ($Is refType this@@13 Tclass._module.Thread) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.localInv $Heap@@9 this@@13) (_module.Thread.localInv $Heap@@9 this@@13) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@10 this@@14) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Lifetime)))) (= (_module.Object.localInv $Heap@@10 this@@14) (_module.Lifetime.localInv $Heap@@10 this@@14)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1985|
 :pattern ( (_module.Object.localInv $Heap@@10 this@@14) ($Is refType this@@14 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.localInv $Heap@@10 this@@14) (_module.Lifetime.localInv $Heap@@10 this@@14) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@11 this@@15) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@11 this@@15) (_module.Thread.inv $Heap@@11 this@@15)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1533|
 :pattern ( (_module.Object.inv $Heap@@11 this@@15) ($Is refType this@@15 Tclass._module.Thread) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.inv $Heap@@11 this@@15) (_module.Thread.inv $Heap@@11 this@@15) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@12 this@@16) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Lifetime)))) (= (_module.Object.inv $Heap@@12 this@@16) (_module.Lifetime.inv $Heap@@12 this@@16)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |2038|
 :pattern ( (_module.Object.inv $Heap@@12 this@@16) ($Is refType this@@16 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.Object.inv $Heap@@12 this@@16) (_module.Lifetime.inv $Heap@@12 this@@16) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@13 this@@17) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@13 this@@17) (_module.OwnedObject.localInv $Heap@@13 this@@17)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1802|
 :pattern ( (_module.Object.localInv $Heap@@13 this@@17) ($Is refType this@@17 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.localInv $Heap@@13 this@@17) (_module.OwnedObject.localInv $Heap@@13 this@@17) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@14 this@@18) (and (< 14 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@14 this@@18) (_module.OwnedObject.inv $Heap@@14 this@@18)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1816|
 :pattern ( (_module.Object.inv $Heap@@14 this@@18) ($Is refType this@@18 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.inv $Heap@@14 this@@18) (_module.OwnedObject.inv $Heap@@14 this@@18) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@15 T@U) (this@@19 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Universe))) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)) (_module.Universe.outlives ($LS $ly@@2) $Heap@@15 this@@19 |a#0@@2| |b#0@@2|)) (exists ((|_k#0@@0| Int) ) (!  (and (<= (LitInt 0) |_k#0@@0|) (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@15 this@@19 |_k#0@@0| |a#0@@2| |b#0@@2|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1222|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@15 this@@19 |_k#0@@0| |a#0@@2| |b#0@@2|))
)))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1223|
 :pattern ( (_module.Universe.outlives ($LS $ly@@2) $Heap@@15 this@@19 |a#0@@2| |b#0@@2|))
))))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Thread| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.OwnedObject| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Lifetime| Tclass._module.ObjectClassKind))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@16 T@U) (this@@20 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives#canCall| $Heap@@16 this@@20 |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Universe) ($IsAlloc refType this@@20 Tclass._module.Universe $Heap@@16)))) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#0@@1| T@U) ) (!  (=> ($Is refType |x#0@@1| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |x#0@@1|)) (|_module.Universe.outlivesThrough#canCall| $Heap@@16 this@@20 |a#0@@3| |x#0@@1| |b#0@@3|)))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1220|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@16 this@@20 |a#0@@3| |x#0@@1| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |x#0@@1|)))
))) (= (_module.Universe.outlives ($LS $ly@@3) $Heap@@16 this@@20 |a#0@@3| |b#0@@3|)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#0@@2| T@U) ) (!  (and (and ($Is refType |x#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |x#0@@2|))) (_module.Universe.outlivesThrough $ly@@3 $Heap@@16 this@@20 |a#0@@3| |x#0@@2| |b#0@@3|))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1219|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@16 this@@20 |a#0@@3| |x#0@@2| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@20) _module.Universe.content)) ($Box refType |x#0@@2|)))
))))))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1221|
 :pattern ( (_module.Universe.outlives ($LS $ly@@3) $Heap@@16 this@@20 |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@17 T@U) (this@@21 T@U) (|_k#0@@1| Int) (|a#0@@4| T@U) (|x#0@@3| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap@@17 this@@21 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Universe) ($IsAlloc refType this@@21 Tclass._module.Universe $Heap@@17)))) (<= (LitInt 0) |_k#0@@1|)) ($Is refType |a#0@@4| Tclass._module.Lifetime)) ($Is refType |x#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@4| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@21) _module.Universe.content)) ($Box refType |a#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@21) _module.Universe.content)) ($Box refType |x#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@21) _module.Universe.content)) ($Box refType |b#0@@4|)))))) (and (=> (< 0 |_k#0@@1|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@17 this@@21 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap@@17 this@@21 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (|_module.Universe.outlives_h#canCall| $Heap@@17 this@@21 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@17 this@@21 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|)  (and (< 0 |_k#0@@1|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@17 this@@21 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|)) (_module.Universe.outlives_h ($LS $LZ) $Heap@@17 this@@21 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1258|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@17 this@@21 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) ($IsGoodHeap $Heap@@17))
))))
(assert (forall (($prevHeap@@5 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Universe) ($IsAlloc refType this@@22 Tclass._module.Universe $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@6 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@6) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@6) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |842|
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@5 $h0@@3 this@@22) (_module.Universe.globalSequenceInv2 $prevHeap@@5 $h1@@3 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |843|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.globalSequenceInv2 $prevHeap@@5 $h1@@3 this@@22))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Universe) ($IsAlloc refType this@@23 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@7 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@7) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@7) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |864|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@6 $h0@@4 this@@23) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@6 $h1@@4 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |865|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@6 $h1@@4 this@@23))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@8 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@8) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@8) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.Object.sequenceInv2 $prevHeap@@7 $h0@@5 this@@24) (_module.Object.sequenceInv2 $prevHeap@@7 $h1@@5 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.sequenceInv2 $prevHeap@@7 $h1@@5 this@@24))
)))
(assert (forall (($prevHeap@@8 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Thread) ($IsAlloc refType this@@25 Tclass._module.Thread $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@9 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@9) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@9) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@8 $h0@@6 this@@25) (_module.Thread.sequenceInv2 $prevHeap@@8 $h1@@6 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Thread.sequenceInv2 $prevHeap@@8 $h1@@6 this@@25))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@10 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@10) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@10) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1832|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@9 $h0@@7 this@@26) (_module.OwnedObject.sequenceInv2 $prevHeap@@9 $h1@@7 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1833|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.OwnedObject.sequenceInv2 $prevHeap@@9 $h1@@7 this@@26))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Lifetime) ($IsAlloc refType this@@27 Tclass._module.Lifetime $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@11 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@11) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@11) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |2069|
)) (= (_module.Lifetime.sequenceInv2 $prevHeap@@10 $h0@@8 this@@27) (_module.Lifetime.sequenceInv2 $prevHeap@@10 $h1@@8 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2070|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Lifetime.sequenceInv2 $prevHeap@@10 $h1@@8 this@@27))
)))
(assert (forall (($o@@12 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Universe? $h@@8)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Universe? $h@@8))
)))
(assert (forall (($o@@13 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass._module.Object? $h@@9)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Object? $h@@9))
)))
(assert (forall (($o@@14 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@14 Tclass._module.Thread? $h@@10)  (or (= $o@@14 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@14) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Thread? $h@@10))
)))
(assert (forall (($o@@15 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@16 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.Lifetime? $h@@12)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.Lifetime? $h@@12))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@18 this@@28) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Object) ($IsAlloc refType this@@28 Tclass._module.Object $Heap@@18)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@28)) _module.Universe.content)) ($Box refType this@@28)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@18 this@@28) (=> (_module.Object.baseFieldsInv $Heap@@18 this@@28) (|_module.Universe.globalBaseInv#canCall| $Heap@@18 (_module.Object.universe this@@28))))) (= (_module.Object.objectGlobalBaseInv $Heap@@18 this@@28)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@28)) _module.Universe.content)) ($Box refType this@@28)) (_module.Object.baseFieldsInv $Heap@@18 this@@28)) (_module.Universe.globalBaseInv $Heap@@18 (_module.Object.universe this@@28))))))
 :qid |_12MutexLifetimeshortdfy.301:19|
 :skolemid |1348|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@18 this@@28) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@19 T@U) (this@@29 T@U) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) (|_k#0@@2| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Universe))) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)) (= |_k#0@@2| 0)) (not (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@19 this@@29 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|)))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1249|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@19 this@@29 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.ObjectClassKind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1339|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@7 b@@4))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@20 T@U) (this@@30 T@U) (|a#0@@6| T@U) (|x#0@@5| T@U) (|b#0@@6| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |x#0@@5| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (exists ((|_k#0@@3| Int) ) (!  (and (<= (LitInt 0) |_k#0@@3|) (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@20 this@@30 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1246|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@20 this@@30 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
))) (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@20 this@@30 |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1248|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@20 this@@30 |a#0@@6| |x#0@@5| |b#0@@6|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@3) (|Set#IsMember| b@@5 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@21 this@@31) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.OwnedObject) ($IsAlloc refType this@@31 Tclass._module.OwnedObject $Heap@@21)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@21 this@@31) (=> (_module.OwnedObject.localInv $Heap@@21 this@@31) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 this@@31) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.userInv#canCall| $Heap@@21 this@@31)))) (= (_module.OwnedObject.inv $Heap@@21 this@@31)  (and (_module.OwnedObject.localInv $Heap@@21 this@@31) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 this@@31) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv $Heap@@21 this@@31))))))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1815|
 :pattern ( (_module.OwnedObject.inv $Heap@@21 this@@31) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@22 this@@32) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Thread) ($IsAlloc refType this@@32 Tclass._module.Thread $Heap@@22)))))) (= (_module.Thread.baseFieldsInv $Heap@@22 this@@32) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.363:19|
 :skolemid |1506|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@22 this@@32) ($IsGoodHeap $Heap@@22))
))))
(assert (forall ((d T@U) ) (! (= (_module.ObjectClassKind.Thread_q d) (= (DatatypeCtorId d) |##_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1326|
 :pattern ( (_module.ObjectClassKind.Thread_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.ObjectClassKind.OwnedObject_q d@@0) (= (DatatypeCtorId d@@0) |##_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1329|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.ObjectClassKind.Lifetime_q d@@1) (= (DatatypeCtorId d@@1) |##_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1331|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@23 T@U) (this@@33 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.Universe))) ($Is refType |a#0@@7| Tclass._module.Lifetime)) ($Is refType |b#0@@7| Tclass._module.Lifetime)) (exists ((|_k#0@@4| Int) ) (!  (and (<= (LitInt 0) |_k#0@@4|) (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@23 this@@33 |_k#0@@4| |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1222|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@23 this@@33 |_k#0@@4| |a#0@@7| |b#0@@7|))
))) (_module.Universe.outlives ($LS $ly@@7) $Heap@@23 this@@33 |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1224|
 :pattern ( (_module.Universe.outlives ($LS $ly@@7) $Heap@@23 this@@33 |a#0@@7| |b#0@@7|))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@24 this@@34) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Object) ($IsAlloc refType this@@34 Tclass._module.Object $Heap@@24)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@24 this@@34) (= (_module.Object.triggerAxioms $Heap@@24 this@@34) (_module.Object.nonAliasing $Heap@@24 this@@34))))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1376|
 :pattern ( (_module.Object.triggerAxioms $Heap@@24 this@@34) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@25 this@@35) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Lifetime) ($IsAlloc refType this@@35 Tclass._module.Lifetime $Heap@@25)))))) (and (|_module.Lifetime.localInv#canCall| $Heap@@25 this@@35) (= (_module.Lifetime.inv $Heap@@25 this@@35) (_module.Lifetime.localInv $Heap@@25 this@@35))))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2037|
 :pattern ( (_module.Lifetime.inv $Heap@@25 this@@35) ($IsGoodHeap $Heap@@25))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@4)) (not (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@4))
 :pattern ( (|Set#IsMember| b@@6 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@26 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@11 $Heap@@26 this@@36) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@26)) ($HeapSucc $prevHeap@@11 $Heap@@26)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Lifetime) ($IsAlloc refType this@@36 Tclass._module.Lifetime $prevHeap@@11)))))) (and (and (|_module.Lifetime.alive#canCall| $prevHeap@@11 this@@36) (=> (not (_module.Lifetime.alive $prevHeap@@11 this@@36)) (|_module.Lifetime.alive#canCall| $Heap@@26 this@@36))) (= (_module.Lifetime.sequenceInv2 $prevHeap@@11 $Heap@@26 this@@36)  (and (and (and (and (=> (not (_module.Lifetime.alive $prevHeap@@11 this@@36)) (not (_module.Lifetime.alive $Heap@@26 this@@36))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@36) _module.Lifetime.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@36) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@36) _module.Lifetime.owner))))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@36) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@36) _module.Lifetime.elements)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@36) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@36) _module.Lifetime.mightPointTo)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@36) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@36) _module.Lifetime.mightPointFrom)))))))
 :qid |_12MutexLifetimeshortdfy.590:22|
 :skolemid |2073|
 :pattern ( (_module.Lifetime.sequenceInv2 $prevHeap@@11 $Heap@@26 this@@36) ($IsGoodHeap $Heap@@26))
))))
(assert (forall ((m@@1 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@2))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_12MutexLifetimeshortdfy.359:7|
 :skolemid |3518|
 :pattern ( (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2|) |$y#1|))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@27 T@U) (this@@37 T@U) (|_k#0@@5| Int) (|a#0@@8| T@U) (|x#0@@6| T@U) (|b#0@@8| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@27 this@@37 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|) (_module.Universe.outlivesThrough_h $ly@@8 $Heap@@27 this@@37 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1252|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@27 this@@37 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.ObjectClassKind.Thread_q d@@2) (= d@@2 |#_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1327|
 :pattern ( (_module.ObjectClassKind.Thread_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.ObjectClassKind.OwnedObject_q d@@3) (= d@@3 |#_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1330|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.ObjectClassKind.Lifetime_q d@@4) (= d@@4 |#_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1332|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@17 T@U) ($f@@9 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3| |l#4|) $o@@17 $f@@9))  (=> (and (or (not (= $o@@17 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@17) |l#2@@0|)))) (or (= $o@@17 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@17)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3517|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3| |l#4|) $o@@17 $f@@9))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@28 this@@38) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $Heap@@28)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@28 this@@38) (= (_module.OwnedObject.objectFields $Heap@@28 this@@38) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@28 this@@38) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@38)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@38) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@38) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1774|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@28 this@@38) ($IsGoodHeap $Heap@@28))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@18 null)) (not true)) ($Is refType $o@@18 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@18) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1343|
 :pattern ( (_module.Object.universe $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@18) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@14 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@19 null)) (not true)) ($Is refType $o@@19 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@19) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@19) Tclass._module.Lifetime $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1757|
 :pattern ( (_module.OwnedObject.lifetime $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@19) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) ($Is refType $o@@20 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@20) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (_module.Object.universe $o@@20))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) ($Is refType $o@@21 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@21) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( (_module.OwnedObject.lifetime $o@@21))
))))
(assert (forall (($ly@@9 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@39 T@U) (|_k#0@@6| Int) (|a#0@@9| T@U) (|b#0@@9| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.Universe))) (or (|_module.Universe.outlives_h#canCall| $h0@@9 this@@39 |_k#0@@6| |a#0@@9| |b#0@@9|) (and (and (<= (LitInt 0) |_k#0@@6|) ($Is refType |a#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@9| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@22 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (or (or (= $o@@22 this@@39) (and (and ($Is refType $o@@22 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 this@@39) _module.Universe.content)) ($Box refType $o@@22))) (= $f@@10 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@22 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 this@@39) _module.Universe.content)) ($Box refType $o@@22))) (= $f@@10 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@22) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@22) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Universe.outlives_h $ly@@9 $h0@@9 this@@39 |_k#0@@6| |a#0@@9| |b#0@@9|) (_module.Universe.outlives_h $ly@@9 $h1@@9 this@@39 |_k#0@@6| |a#0@@9| |b#0@@9|))))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Universe.outlives_h $ly@@9 $h1@@9 this@@39 |_k#0@@6| |a#0@@9| |b#0@@9|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($Heap@@29 T@U) (this@@40 T@U) (|_k#0@@7| Int) (|a#0@@10| T@U) (|b#0@@10| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@29 this@@40 |_k#0@@7| |a#0@@10| |b#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Universe) ($IsAlloc refType this@@40 Tclass._module.Universe $Heap@@29)))) (<= (LitInt 0) |_k#0@@7|)) ($Is refType |a#0@@10| Tclass._module.Lifetime)) ($Is refType |b#0@@10| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |a#0@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |b#0@@10|)))))) (and (=> (< 0 |_k#0@@7|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@29 this@@40 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|)))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1237|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@29 this@@40 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@29 this@@40 |_k#0@@7| |a#0@@10| |b#0@@10|)  (and (< 0 |_k#0@@7|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@29 this@@40 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1236|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@29 this@@40 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@40) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1238|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@29 this@@40 |_k#0@@7| |a#0@@10| |b#0@@10|) ($IsGoodHeap $Heap@@29))
))))
(assert (forall (($h@@15 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@23) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1903|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@23) _module.Lifetime.owner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@30 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@12 $Heap@@30 this@@41) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@12 $Heap@@30 this@@41) (_module.Thread.sequenceInv2 $prevHeap@@12 $Heap@@30 this@@41)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |1552|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@12 $Heap@@30 this@@41) ($Is refType this@@41 Tclass._module.Thread) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@12 $Heap@@30 this@@41) (_module.Thread.sequenceInv2 $prevHeap@@12 $Heap@@30 this@@41) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@31 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@13 $Heap@@31 this@@42) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@42 null)) (not true)) ($Is refType this@@42 Tclass._module.Lifetime)))) (= (_module.Object.sequenceInv2 $prevHeap@@13 $Heap@@31 this@@42) (_module.Lifetime.sequenceInv2 $prevHeap@@13 $Heap@@31 this@@42)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |2074|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@13 $Heap@@31 this@@42) ($Is refType this@@42 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@13 $Heap@@31 this@@42) (_module.Lifetime.sequenceInv2 $prevHeap@@13 $Heap@@31 this@@42) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@32 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@14 $Heap@@32 this@@43) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@32 this@@43) (_module.OwnedObject.sequenceInv2 $prevHeap@@14 $Heap@@32 this@@43)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |1837|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@32 this@@43) ($Is refType this@@43 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@32))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@14 $Heap@@32 this@@43) (_module.OwnedObject.sequenceInv2 $prevHeap@@14 $Heap@@32 this@@43) ($IsGoodHeap $Heap@@32))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@8 Tclass._module.Thread))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@11 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@12 Tclass._module.Thread?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@13 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1328|
 :pattern ( ($IsBox bx@@14 Tclass._module.ObjectClassKind))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( ($IsBox bx@@15 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Thread)  (and ($Is refType |c#0@@6| Tclass._module.Thread?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1747|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Lifetime)  (and ($Is refType |c#0@@8| Tclass._module.Lifetime?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2356|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Lifetime?))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@33 T@U) (this@@44 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@15 $Heap@@33 this@@44 |running#0@@0|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@15) ($IsGoodHeap $Heap@@33)) ($HeapSucc $prevHeap@@15 $Heap@@33)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Universe) ($IsAlloc refType this@@44 Tclass._module.Universe $prevHeap@@15)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@15 $Heap@@33 this@@44) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@15 $Heap@@33 this@@44) (=> (|Set#Subset| |running#0@@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content))) (and (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@4|))) (=> (not (forall (($o@@24 T@U) ($f@@11 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@24) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 $o@@24) $f@@11))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |881|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@24) $f@@11))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@15 $Heap@@33 |o#0@@4|))))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |882|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@33 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@4|)))
)) (=> (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@5|)))) (or (forall (($o@@25 T@U) ($f@@12 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@25) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 $o@@25) $f@@12))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |885|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@25) $f@@12))
)) (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@33 |o#0@@5|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |886|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@33 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (=> (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@15)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |884|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#1|)))
)) (forall ((|l#0@@2| T@U) ) (!  (=> ($Is refType |l#0@@2| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |l#0@@2|)) (=> (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@2|) _module.Lifetime.owner))) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@2|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@15) (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@15 $Heap@@33 |l#0@@2|)))))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |883|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@15 $Heap@@33 |l#0@@2|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@2|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |l#0@@2|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@15 $Heap@@33 this@@44 |running#0@@0|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@15 $Heap@@33 this@@44) (|Set#Subset| |running#0@@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)))) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@6|)))) (or (forall (($o@@26 T@U) ($f@@13 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@26) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 $o@@26) $f@@13))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |877|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@26) $f@@13))
)) (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@33 |o#0@@6|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |878|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@33 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@44) _module.Universe.content)) ($Box refType |o#0@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#0@@6|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#1@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@15)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 |o#1@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |879|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 |o#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |o#1@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |o#1@@0|)))
))) (forall ((|l#0@@3| T@U) ) (!  (=> (and ($Is refType |l#0@@3| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |l#0@@3|))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@3|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@3|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@15)) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@15 $Heap@@33 |l#0@@3|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |880|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@15 $Heap@@33 |l#0@@3|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 |l#0@@3|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@15 this@@44) _module.Universe.content)) ($Box refType |l#0@@3|)))
))))))
 :qid |_12MutexLifetimeshortdfy.52:22|
 :skolemid |887|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@15 $Heap@@33 this@@44 |running#0@@0|) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@34 this@@45) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $Heap@@34)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@34 this@@45) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1876|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@34 this@@45))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@35 this@@46) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedObject) ($IsAlloc refType this@@46 Tclass._module.OwnedObject $Heap@@35)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@35 this@@46) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1771|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@35 this@@46))
))))
(assert (forall (($h@@16 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@27) _module.Lifetime.owner)) Tclass._module.Thread? $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@27) _module.Lifetime.owner)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5)  (or (|Set#IsMember| a@@10 o@@5) (|Set#IsMember| b@@7 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($o@@28 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@28 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@28 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3492|
 :pattern ( ($IsAlloc refType $o@@28 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@29 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@29 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@29 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@29 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@30 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@30 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@30 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($h@@17 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@31) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1905|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@31) _module.Lifetime.elements)))
)))
(assert (forall (($h@@18 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@32) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@32) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@19 T@U) ($o@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@33) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1909|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@33) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@20 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@34) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@34) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1906|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@34) _module.Lifetime.elements)))
)))
(assert (forall (($h@@21 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@35) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@35) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@35) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@22 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@36) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@36) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@36) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@37 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (and (= $o@@37 this@@47) (= $f@@14 _module.OwnedObject.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@37) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@37) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1758|
)) (= (_module.OwnedObject.alive $h0@@10 this@@47) (_module.OwnedObject.alive $h1@@10 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1759|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.OwnedObject.alive $h1@@10 this@@47))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@38 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (and (= $o@@38 this@@48) (= $f@@15 _module.Lifetime.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@38) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@38) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1916|
)) (= (_module.Lifetime.alive $h0@@11 this@@48) (_module.Lifetime.alive $h1@@11 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1917|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Lifetime.alive $h1@@11 this@@48))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@36 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@16 $Heap@@36 this@@49) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@16) ($IsGoodHeap $Heap@@36)) ($HeapSucc $prevHeap@@16 $Heap@@36)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Thread) ($IsAlloc refType this@@49 Tclass._module.Thread $prevHeap@@16)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@16 $Heap@@36 this@@49) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.378:22|
 :skolemid |1551|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@16 $Heap@@36 this@@49) ($IsGoodHeap $Heap@@36))
))))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@39 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (or (= $o@@39 this@@50) (= $o@@39 (_module.Object.universe this@@50)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@39) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@39) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1420|
)) (= (_module.Object.baseFieldsInv $h0@@12 this@@50) (_module.Object.baseFieldsInv $h1@@12 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1421|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Object.baseFieldsInv $h1@@12 this@@50))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@40 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (or (= $o@@40 this@@51) (= $o@@40 (_module.Object.universe this@@51)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@40) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@40) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1502|
)) (= (_module.Thread.baseFieldsInv $h0@@13 this@@51) (_module.Thread.baseFieldsInv $h1@@13 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1503|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Thread.baseFieldsInv $h1@@13 this@@51))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@52 null)) (not true)) ($Is refType this@@52 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@41 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (or (= $o@@41 this@@52) (= $o@@41 (_module.Object.universe this@@52)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@41) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@41) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1776|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@14 this@@52) (_module.OwnedObject.baseFieldsInv $h1@@14 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1777|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.baseFieldsInv $h1@@14 this@@52))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@53 null)) (not true)) ($Is refType this@@53 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@42 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (or (= $o@@42 this@@53) (= $o@@42 (_module.Object.universe this@@53)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@42) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@42) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1947|
)) (= (_module.Lifetime.baseFieldsInv $h0@@15 this@@53) (_module.Lifetime.baseFieldsInv $h1@@15 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1948|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Lifetime.baseFieldsInv $h1@@15 this@@53))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@37 this@@54) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedObject) ($IsAlloc refType this@@54 Tclass._module.OwnedObject $Heap@@37)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@37 this@@54) (= (_module.OwnedObject.baseFieldsInv $Heap@@37 this@@54) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@37 this@@54) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@37 (_module.Object.universe this@@54)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.432:19|
 :skolemid |1780|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@37 this@@54) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@38 this@@55) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Object) ($IsAlloc refType this@@55 Tclass._module.Object $Heap@@38)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@55)) (|_module.Object.objectClassKind#canCall| this@@55)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@55) |#_module.ObjectClassKind.Thread|) ($Is refType this@@55 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@55)) (|_module.Object.objectClassKind#canCall| this@@55)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@55) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@55 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@55)) (|_module.Object.objectClassKind#canCall| this@@55)))))) (= (_module.Object.nonAliasing $Heap@@38 this@@55)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@55) |#_module.ObjectClassKind.Thread|) ($Is refType this@@55 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@55) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@55 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@55) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@55 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimeshortdfy.309:19|
 :skolemid |1368|
 :pattern ( (_module.Object.nonAliasing $Heap@@38 this@@55) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@56 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@56) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@56) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1498|
 :pattern ( (_module.Thread.objectClassKind this@@56))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@57 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@57) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@57) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1765|
 :pattern ( (_module.OwnedObject.objectClassKind this@@57))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@58 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@58) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@58) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1943|
 :pattern ( (_module.Lifetime.objectClassKind this@@58))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@39 this@@59) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@39) (or (not (= this@@59 null)) (not true))) ($IsAlloc refType this@@59 Tclass._module.OwnedObject $Heap@@39)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@39 this@@59) (TSet Tclass._module.Object) $Heap@@39))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1877|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@39 this@@59) (TSet Tclass._module.Object) $Heap@@39))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@40 this@@60) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@40) (or (not (= this@@60 null)) (not true))) ($IsAlloc refType this@@60 Tclass._module.OwnedObject $Heap@@40)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@40 this@@60) (TSet Tclass._module.Object) $Heap@@40))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1772|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@40 this@@60) (TSet Tclass._module.Object) $Heap@@40))
))))
(assert (forall (($ly@@11 T@U) ($Heap@@41 T@U) (this@@61 T@U) (|_k#0@@8| Int) (|a#0@@11| T@U) (|b#0@@11| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@41 this@@61 |_k#0@@8| |a#0@@11| |b#0@@11|) (_module.Universe.outlives_h $ly@@11 $Heap@@41 this@@61 |_k#0@@8| |a#0@@11| |b#0@@11|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1230|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@41 this@@61 |_k#0@@8| |a#0@@11| |b#0@@11|))
)))
(assert (forall (($ly@@12 T@U) ($Heap@@42 T@U) (this@@62 T@U) (|a#0@@12| T@U) (|x#0@@7| T@U) (|b#0@@12| T@U) ) (! (= (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@42 this@@62 |a#0@@12| |x#0@@7| |b#0@@12|) (_module.Universe.outlivesThrough $ly@@12 $Heap@@42 this@@62 |a#0@@12| |x#0@@7| |b#0@@12|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1239|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@42 this@@62 |a#0@@12| |x#0@@7| |b#0@@12|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@43 this@@63) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Object) ($IsAlloc refType this@@63 Tclass._module.Object $Heap@@43)))))) (_module.Object.triggerAxioms $Heap@@43 this@@63))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1374|
 :pattern ( (_module.Object.triggerAxioms $Heap@@43 this@@63))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@44 this@@64) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.OwnedObject) ($IsAlloc refType this@@64 Tclass._module.OwnedObject $Heap@@44)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@44 this@@64) (=> (_module.Object.objectGlobalBaseInv $Heap@@44 this@@64) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 (_module.OwnedObject.lifetime this@@64)) _module.Lifetime.elements)) ($Box refType this@@64)) (and (|_module.Lifetime.alive#canCall| $Heap@@44 (_module.OwnedObject.lifetime this@@64)) (=> (=> (_module.Lifetime.alive $Heap@@44 (_module.OwnedObject.lifetime this@@64)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@64) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@64) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv#canCall| $Heap@@44 this@@64))))))) (= (_module.OwnedObject.localInv $Heap@@44 this@@64)  (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@44 this@@64) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 (_module.OwnedObject.lifetime this@@64)) _module.Lifetime.elements)) ($Box refType this@@64))) (=> (_module.Lifetime.alive $Heap@@44 (_module.OwnedObject.lifetime this@@64)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@64) _module.OwnedObject.owner)) null)) (not true)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@64) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv $Heap@@44 this@@64))))))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1801|
 :pattern ( (_module.OwnedObject.localInv $Heap@@44 this@@64) ($IsGoodHeap $Heap@@44))
))))
(assert (forall (($ly@@13 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@65 T@U) (|a#0@@13| T@U) (|x#0@@8| T@U) (|b#0@@13| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@65 null)) (not true)) ($Is refType this@@65 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough#canCall| $h0@@16 this@@65 |a#0@@13| |x#0@@8| |b#0@@13|) (and (and ($Is refType |a#0@@13| Tclass._module.Lifetime) ($Is refType |x#0@@8| Tclass._module.Lifetime)) ($Is refType |b#0@@13| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@43 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (or (or (= $o@@43 this@@65) (and (and ($Is refType $o@@43 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 this@@65) _module.Universe.content)) ($Box refType $o@@43))) (= $f@@20 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@43 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 this@@65) _module.Universe.content)) ($Box refType $o@@43))) (= $f@@20 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@43) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@43) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1241|
)) (= (_module.Universe.outlivesThrough $ly@@13 $h0@@16 this@@65 |a#0@@13| |x#0@@8| |b#0@@13|) (_module.Universe.outlivesThrough $ly@@13 $h1@@16 this@@65 |a#0@@13| |x#0@@8| |b#0@@13|))))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Universe.outlivesThrough $ly@@13 $h1@@16 this@@65 |a#0@@13| |x#0@@8| |b#0@@13|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 TInt) (and (= ($Box intType ($Unbox intType bx@@16)) bx@@16) ($Is intType ($Unbox intType bx@@16) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@16 TInt))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@45 this@@66) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.Thread) ($IsAlloc refType this@@66 Tclass._module.Thread $Heap@@45)))))) (=> (_module.Thread.localInv $Heap@@45 this@@66) (_module.Object.objectGlobalBaseInv $Heap@@45 this@@66)))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1518|
 :pattern ( (_module.Thread.localInv $Heap@@45 this@@66))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@46 this@@67) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Lifetime) ($IsAlloc refType this@@67 Tclass._module.Lifetime $Heap@@46)))))) (=> (_module.Lifetime.localInv $Heap@@46 this@@67) (_module.Object.objectGlobalBaseInv $Heap@@46 this@@67)))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1968|
 :pattern ( (_module.Lifetime.localInv $Heap@@46 this@@67))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@47 this@@68) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Thread) ($IsAlloc refType this@@68 Tclass._module.Thread $Heap@@47)))))) (=> (_module.Thread.inv $Heap@@47 this@@68) (_module.Thread.localInv $Heap@@47 this@@68)))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1530|
 :pattern ( (_module.Thread.inv $Heap@@47 this@@68))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@48 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@48 this@@69) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.Lifetime) ($IsAlloc refType this@@69 Tclass._module.Lifetime $Heap@@48)))))) (=> (_module.Lifetime.inv $Heap@@48 this@@69) (_module.Lifetime.localInv $Heap@@48 this@@69)))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2035|
 :pattern ( (_module.Lifetime.inv $Heap@@48 this@@69))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@49 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@49 this@@70) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@49) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.OwnedObject) ($IsAlloc refType this@@70 Tclass._module.OwnedObject $Heap@@49)))))) (=> (_module.OwnedObject.localInv $Heap@@49 this@@70) (_module.Object.objectGlobalBaseInv $Heap@@49 this@@70)))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1799|
 :pattern ( (_module.OwnedObject.localInv $Heap@@49 this@@70))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@50 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@50 this@@71) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@50) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Object) ($IsAlloc refType this@@71 Tclass._module.Object $Heap@@50)))))) (=> (_module.Object.localInv $Heap@@50 this@@71) (_module.Object.objectGlobalBaseInv $Heap@@50 this@@71)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1428|
 :pattern ( (_module.Object.localInv $Heap@@50 this@@71))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@51 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@51 this@@72) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@51) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.OwnedObject) ($IsAlloc refType this@@72 Tclass._module.OwnedObject $Heap@@51)))))) (=> (_module.OwnedObject.userInv $Heap@@51 this@@72) (_module.OwnedObject.localUserInv $Heap@@51 this@@72)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |1893|
 :pattern ( (_module.OwnedObject.userInv $Heap@@51 this@@72))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@52 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@52 this@@73) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@52) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.OwnedObject) ($IsAlloc refType this@@73 Tclass._module.OwnedObject $Heap@@52)))))) (=> (_module.OwnedObject.inv $Heap@@52 this@@73) (_module.OwnedObject.localInv $Heap@@52 this@@73)))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1813|
 :pattern ( (_module.OwnedObject.inv $Heap@@52 this@@73))
))))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($Heap@@53 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@53 this@@74) (and (< 15 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@53) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Object) ($IsAlloc refType this@@74 Tclass._module.Object $Heap@@53)))))) (=> (_module.Object.inv $Heap@@53 this@@74) (_module.Object.localInv $Heap@@53 this@@74)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1438|
 :pattern ( (_module.Object.inv $Heap@@53 this@@74))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall (($ly@@14 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@75 T@U) (|_k#0@@9| Int) (|a#0@@14| T@U) (|x#0@@9| T@U) (|b#0@@14| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@75 null)) (not true)) ($Is refType this@@75 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough_h#canCall| $h0@@17 this@@75 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (and (and (and (<= (LitInt 0) |_k#0@@9|) ($Is refType |a#0@@14| Tclass._module.Lifetime)) ($Is refType |x#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@14| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@44 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (or (or (= $o@@44 this@@75) (and (and ($Is refType $o@@44 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 this@@75) _module.Universe.content)) ($Box refType $o@@44))) (= $f@@21 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@44 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 this@@75) _module.Universe.content)) ($Box refType $o@@44))) (= $f@@21 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@44) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@44) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1254|
)) (= (_module.Universe.outlivesThrough_h $ly@@14 $h0@@17 this@@75 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@17 this@@75 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@17 this@@75 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@54 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@17 $Heap@@54 this@@76) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@17) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@17 $Heap@@54)) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.OwnedObject) ($IsAlloc refType this@@76 Tclass._module.OwnedObject $prevHeap@@17)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@76) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@76) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@17 $Heap@@54 this@@76)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@17 $Heap@@54 this@@76)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@17 this@@76) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@76) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@54 this@@76)))))
 :qid |_12MutexLifetimeshortdfy.437:22|
 :skolemid |1795|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@17 $Heap@@54 this@@76) ($IsGoodHeap $Heap@@54))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.ObjectClassKind.Thread_q a@@14) (_module.ObjectClassKind.Thread_q b@@11)) (|_module.ObjectClassKind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1336|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Thread_q a@@14))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Thread_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (_module.ObjectClassKind.OwnedObject_q a@@15) (_module.ObjectClassKind.OwnedObject_q b@@12)) (|_module.ObjectClassKind#Equal| a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |1337|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.OwnedObject_q a@@15))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.OwnedObject_q b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (and (_module.ObjectClassKind.Lifetime_q a@@16) (_module.ObjectClassKind.Lifetime_q b@@13)) (|_module.ObjectClassKind#Equal| a@@16 b@@13))
 :qid |unknown.0:0|
 :skolemid |1338|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@16 b@@13) (_module.ObjectClassKind.Lifetime_q a@@16))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@16 b@@13) (_module.ObjectClassKind.Lifetime_q b@@13))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@17) ($IsAllocBox bx@@17 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@17))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($ly@@15 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@77 T@U) (|a#0@@15| T@U) (|b#0@@15| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@77 null)) (not true)) ($Is refType this@@77 Tclass._module.Universe))) (or (|_module.Universe.outlives#canCall| $h0@@18 this@@77 |a#0@@15| |b#0@@15|) (and ($Is refType |a#0@@15| Tclass._module.Lifetime) ($Is refType |b#0@@15| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@45 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (or (or (= $o@@45 this@@77) (and (and ($Is refType $o@@45 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 this@@77) _module.Universe.content)) ($Box refType $o@@45))) (= $f@@22 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@45 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 this@@77) _module.Universe.content)) ($Box refType $o@@45))) (= $f@@22 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@45) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@45) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1215|
)) (= (_module.Universe.outlives $ly@@15 $h0@@18 this@@77 |a#0@@15| |b#0@@15|) (_module.Universe.outlives $ly@@15 $h1@@18 this@@77 |a#0@@15| |b#0@@15|))))
 :qid |unknown.0:0|
 :skolemid |1216|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Universe.outlives $ly@@15 $h1@@18 this@@77 |a#0@@15| |b#0@@15|))
)))
(assert (forall (($h@@23 T@U) ($o@@46 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@46 null)) (not true)) ($Is refType $o@@46 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@46) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@46) _module.OwnedObject.nonvolatileVersion)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1753|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@46) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.ObjectClassKind| d@@5) (or (or (_module.ObjectClassKind.Thread_q d@@5) (_module.ObjectClassKind.OwnedObject_q d@@5)) (_module.ObjectClassKind.Lifetime_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1334|
 :pattern ( (|$IsA#_module.ObjectClassKind| d@@5))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@78 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@78 null)) (not true)) ($Is refType this@@78 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@47 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (= $o@@47 this@@78)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@47) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@47) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1364|
)) (= (_module.Object.nonAliasing $h0@@19 this@@78) (_module.Object.nonAliasing $h1@@19 this@@78))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1365|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Object.nonAliasing $h1@@19 this@@78))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@79 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@79 null)) (not true)) ($Is refType this@@79 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@48 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (= $o@@48 this@@79)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@48) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@48) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1372|
)) (= (_module.Object.triggerAxioms $h0@@20 this@@79) (_module.Object.triggerAxioms $h1@@20 this@@79))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1373|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Object.triggerAxioms $h1@@20 this@@79))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@80 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@80)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@80 null)) (not true)) ($Is refType this@@80 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@80)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :weight 3
 :skolemid |1499|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@80)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@81 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@81)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@81 null)) (not true)) ($Is refType this@@81 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@81)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :weight 3
 :skolemid |1766|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@81)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@82 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@82)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@82 null)) (not true)) ($Is refType this@@82 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@82)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :weight 3
 :skolemid |1944|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@82)))
))))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@83 null)) (not true)) ($Is refType this@@83 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@49 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (or (= $o@@49 this@@83) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 this@@83) _module.Universe.content)) ($Box refType $o@@49)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@49) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@49) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |818|
)) (= (_module.Universe.globalBaseInv $h0@@21 this@@83) (_module.Universe.globalBaseInv $h1@@21 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Universe.globalBaseInv $h1@@21 this@@83))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@84 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@55 this@@84) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Lifetime) ($IsAlloc refType this@@84 Tclass._module.Lifetime $Heap@@55)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@55 this@@84) (=> (_module.Object.objectGlobalBaseInv $Heap@@55 this@@84) (=> (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#0@@7|))) (= (_module.OwnedObject.lifetime |o#0@@7|) this@@84))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1983|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#0@@7|)))
)) (and (forall ((|o#1@@1| T@U) ) (!  (=> ($Is refType |o#1@@1| Tclass._module.OwnedObject) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@1|)) (and (|_module.OwnedObject.alive#canCall| $Heap@@55 |o#1@@1|) (|_module.Lifetime.alive#canCall| $Heap@@55 this@@84))))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1976|
 :pattern ( (_module.OwnedObject.alive $Heap@@55 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@1|)))
)) (=> (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@2|))) (= (_module.OwnedObject.alive $Heap@@55 |o#1@@2|) (_module.Lifetime.alive $Heap@@55 this@@84)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1982|
 :pattern ( (_module.OwnedObject.alive $Heap@@55 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@2|)))
)) (and (and (|_module.Lifetime.alive#canCall| $Heap@@55 this@@84) (=> (_module.Lifetime.alive $Heap@@55 this@@84) (forall ((|l#0@@4| T@U) ) (!  (=> ($Is refType |l#0@@4| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@4|)) (|_module.Lifetime.alive#canCall| $Heap@@55 |l#0@@4|)))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1977|
 :pattern ( (_module.Lifetime.alive $Heap@@55 |l#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@4|)))
)))) (=> (=> (_module.Lifetime.alive $Heap@@55 this@@84) (forall ((|l#0@@5| T@U) ) (!  (=> (and ($Is refType |l#0@@5| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@5|))) (_module.Lifetime.alive $Heap@@55 |l#0@@5|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1981|
 :pattern ( (_module.Lifetime.alive $Heap@@55 |l#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@5|)))
))) (and (|_module.Lifetime.alive#canCall| $Heap@@55 this@@84) (=> (not (_module.Lifetime.alive $Heap@@55 this@@84)) (forall ((|l#1@@2| T@U) ) (!  (=> ($Is refType |l#1@@2| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@2|)) (|_module.Lifetime.alive#canCall| $Heap@@55 |l#1@@2|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1978|
 :pattern ( (_module.Lifetime.alive $Heap@@55 |l#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@2|)))
))))))))))) (= (_module.Lifetime.localInv $Heap@@55 this@@84)  (and (and (and (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@55 this@@84) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#0@@8|))) (= (_module.OwnedObject.lifetime |o#0@@8|) this@@84))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1970|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#0@@8|)))
))) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@3|))) (= (_module.OwnedObject.alive $Heap@@55 |o#1@@3|) (_module.Lifetime.alive $Heap@@55 this@@84)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1971|
 :pattern ( (_module.OwnedObject.alive $Heap@@55 |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.elements)) ($Box refType |o#1@@3|)))
))) (=> (_module.Lifetime.alive $Heap@@55 this@@84) (forall ((|l#0@@6| T@U) ) (!  (=> (and ($Is refType |l#0@@6| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@6|))) (_module.Lifetime.alive $Heap@@55 |l#0@@6|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1972|
 :pattern ( (_module.Lifetime.alive $Heap@@55 |l#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@6|)))
)))) (=> (not (_module.Lifetime.alive $Heap@@55 this@@84)) (forall ((|l#1@@3| T@U) ) (!  (=> (and ($Is refType |l#1@@3| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@3|))) (not (_module.Lifetime.alive $Heap@@55 |l#1@@3|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1973|
 :pattern ( (_module.Lifetime.alive $Heap@@55 |l#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@3|)))
)))) (forall ((|l#2@@1| T@U) ) (!  (=> (and ($Is refType |l#2@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 |l#2@@1|) _module.Lifetime.mightPointFrom)) ($Box refType this@@84)))
 :qid |_12MutexLifetimeshortdfy.585:16|
 :skolemid |1974|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 |l#2@@1|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@1|)))
))) (forall ((|l#3@@0| T@U) ) (!  (=> (and ($Is refType |l#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 |l#3@@0|) _module.Lifetime.mightPointTo)) ($Box refType this@@84)))
 :qid |_12MutexLifetimeshortdfy.586:16|
 :skolemid |1975|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 |l#3@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@84) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1984|
 :pattern ( (_module.Lifetime.localInv $Heap@@55 this@@84) ($IsGoodHeap $Heap@@55))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) ($Heap@@56 T@U) (this@@85 T@U) (|a#0@@16| T@U) (|b#0@@16| T@U) (|_k#0@@10| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@85 null)) (not true)) ($Is refType this@@85 Tclass._module.Universe))) ($Is refType |a#0@@16| Tclass._module.Lifetime)) ($Is refType |b#0@@16| Tclass._module.Lifetime)) (= |_k#0@@10| 0)) (not (_module.Universe.outlives_h $ly@@16 $Heap@@56 this@@85 |_k#0@@10| |a#0@@16| |b#0@@16|)))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1225|
 :pattern ( (_module.Universe.outlives_h $ly@@16 $Heap@@56 this@@85 |_k#0@@10| |a#0@@16| |b#0@@16|))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1335|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@86 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@86 null)) (not true)) ($Is refType this@@86 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@50 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (= $o@@50 this@@86)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@50) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@50) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |1769|
)) (= (_module.OwnedObject.objectFields $h0@@22 this@@86) (_module.OwnedObject.objectFields $h1@@22 this@@86))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1770|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.OwnedObject.objectFields $h1@@22 this@@86))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@87 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@87 null)) (not true)) ($Is refType this@@87 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@51 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (= $o@@51 this@@87)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@51) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@51) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1874|
)) (= (_module.OwnedObject.objectUserFields $h0@@23 this@@87) (_module.OwnedObject.objectUserFields $h1@@23 this@@87))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1875|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.OwnedObject.objectUserFields $h1@@23 this@@87))
)))
(assert (forall (($h@@24 T@U) ($o@@52 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@52 null)) (not true)) ($Is refType $o@@52 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) _module.OwnedObject.owner)) Tclass._module.Object? $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1755|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@52) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@88 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@88 null)) (not true)) (and ($Is refType this@@88 Tclass._module.Universe) ($IsAlloc refType this@@88 Tclass._module.Universe $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@53 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@53) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@53) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@53) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |830|
)) (= (_module.Universe.globalInv $h0@@24 this@@88) (_module.Universe.globalInv $h1@@24 this@@88))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |831|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Universe.globalInv $h1@@24 this@@88))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@89 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.Object) ($IsAlloc refType this@@89 Tclass._module.Object $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@54 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@54) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@54) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@54) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1344|
)) (= (_module.Object.objectGlobalBaseInv $h0@@25 this@@89) (_module.Object.objectGlobalBaseInv $h1@@25 this@@89))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1345|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Object.objectGlobalBaseInv $h1@@25 this@@89))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@90 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.Object) ($IsAlloc refType this@@90 Tclass._module.Object $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@55 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@55) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@55) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@55) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1426|
)) (= (_module.Object.localInv $h0@@26 this@@90) (_module.Object.localInv $h1@@26 this@@90))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.Object.localInv $h1@@26 this@@90))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@91 null)) (not true)) (and ($Is refType this@@91 Tclass._module.Object) ($IsAlloc refType this@@91 Tclass._module.Object $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@56 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@56) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@56) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@56) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |1436|
)) (= (_module.Object.inv $h0@@27 this@@91) (_module.Object.inv $h1@@27 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1437|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.Object.inv $h1@@27 this@@91))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@92 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@92 null)) (not true)) (and ($Is refType this@@92 Tclass._module.Thread) ($IsAlloc refType this@@92 Tclass._module.Thread $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@57 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@57 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@57) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@57) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@57) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |1516|
)) (= (_module.Thread.localInv $h0@@28 this@@92) (_module.Thread.localInv $h1@@28 this@@92))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1517|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Thread.localInv $h1@@28 this@@92))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@93 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@93 null)) (not true)) (and ($Is refType this@@93 Tclass._module.Thread) ($IsAlloc refType this@@93 Tclass._module.Thread $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@58 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@58) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@58) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@58) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |1528|
)) (= (_module.Thread.inv $h0@@29 this@@93) (_module.Thread.inv $h1@@29 this@@93))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1529|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.Thread.inv $h1@@29 this@@93))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@94 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@94 null)) (not true)) (and ($Is refType this@@94 Tclass._module.OwnedObject) ($IsAlloc refType this@@94 Tclass._module.OwnedObject $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@59 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@59) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@59) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@59) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |1797|
)) (= (_module.OwnedObject.localInv $h0@@30 this@@94) (_module.OwnedObject.localInv $h1@@30 this@@94))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1798|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.OwnedObject.localInv $h1@@30 this@@94))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@95 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@95 null)) (not true)) (and ($Is refType this@@95 Tclass._module.OwnedObject) ($IsAlloc refType this@@95 Tclass._module.OwnedObject $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@60 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@60) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@60) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@60) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1811|
)) (= (_module.OwnedObject.inv $h0@@31 this@@95) (_module.OwnedObject.inv $h1@@31 this@@95))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1812|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.OwnedObject.inv $h1@@31 this@@95))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@96 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.OwnedObject) ($IsAlloc refType this@@96 Tclass._module.OwnedObject $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@61 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@61) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@61) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@61) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1883|
)) (= (_module.OwnedObject.localUserInv $h0@@32 this@@96) (_module.OwnedObject.localUserInv $h1@@32 this@@96))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1884|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.OwnedObject.localUserInv $h1@@32 this@@96))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@97 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.OwnedObject) ($IsAlloc refType this@@97 Tclass._module.OwnedObject $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@62 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@62) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@62) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@62) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1891|
)) (= (_module.OwnedObject.userInv $h0@@33 this@@97) (_module.OwnedObject.userInv $h1@@33 this@@97))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1892|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.OwnedObject.userInv $h1@@33 this@@97))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@98 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@98 null)) (not true)) (and ($Is refType this@@98 Tclass._module.Lifetime) ($IsAlloc refType this@@98 Tclass._module.Lifetime $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@63 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@63) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@63) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@63) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1966|
)) (= (_module.Lifetime.localInv $h0@@34 this@@98) (_module.Lifetime.localInv $h1@@34 this@@98))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1967|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Lifetime.localInv $h1@@34 this@@98))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@99 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.Lifetime) ($IsAlloc refType this@@99 Tclass._module.Lifetime $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@64 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@64) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@64) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@64) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |2033|
)) (= (_module.Lifetime.inv $h0@@35 this@@99) (_module.Lifetime.inv $h1@@35 this@@99))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2034|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Lifetime.inv $h1@@35 this@@99))
)))
(assert (forall ((bx@@18 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@18 (TSet t@@5)))
)))
(assert (forall (($o@@65 T@U) ) (!  (=> ($Is refType $o@@65 Tclass._module.Thread?) ($Is refType $o@@65 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3491|
 :pattern ( ($Is refType $o@@65 Tclass._module.Thread?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Thread?) ($IsBox bx@@19 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3489|
 :pattern ( ($IsBox bx@@19 Tclass._module.Thread?))
)))
(assert (forall (($o@@66 T@U) ) (!  (=> ($Is refType $o@@66 Tclass._module.OwnedObject?) ($Is refType $o@@66 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@66 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedObject?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3493|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@67 T@U) ) (!  (=> ($Is refType $o@@67 Tclass._module.Lifetime?) ($Is refType $o@@67 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@67 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.Lifetime?) ($IsBox bx@@21 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3497|
 :pattern ( ($IsBox bx@@21 Tclass._module.Lifetime?))
)))
(assert (forall ((d@@7 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) ($Is DatatypeTypeType d@@7 Tclass._module.ObjectClassKind)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@25))
 :qid |unknown.0:0|
 :skolemid |1333|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@25))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.Lifetime) Tagclass._module.Lifetime))
(assert (= (TagFamily Tclass._module.Lifetime) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.ObjectClassKind) Tagclass._module.ObjectClassKind))
(assert (= (TagFamily Tclass._module.ObjectClassKind) tytagFamily$ObjectClassKind))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@26 T@U) ($o@@68 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@68 null)) (not true)) ($Is refType $o@@68 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@68) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1754|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@68) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@69 T@U) ) (! (= ($Is refType $o@@69 Tclass._module.Universe?)  (or (= $o@@69 null) (implements$_module.Universe (dtype $o@@69))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@69 Tclass._module.Universe?))
)))
(assert (forall (($o@@70 T@U) ) (! (= ($Is refType $o@@70 Tclass._module.Object?)  (or (= $o@@70 null) (implements$_module.Object (dtype $o@@70))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@70 Tclass._module.Object?))
)))
(assert (forall (($o@@71 T@U) ) (! (= ($Is refType $o@@71 Tclass._module.OwnedObject?)  (or (= $o@@71 null) (implements$_module.OwnedObject (dtype $o@@71))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@71 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@27 T@U) ($o@@72 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@72 null)) (not true)) ($Is refType $o@@72 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@72) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@72) _module.Universe.content)) (TSet Tclass._module.Object) $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@72) _module.Universe.content)))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Equal| a@@18 b@@15) (forall ((o@@6 T@U) ) (! (= (|Set#IsMember| a@@18 o@@6) (|Set#IsMember| b@@15 o@@6))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@18 o@@6))
 :pattern ( (|Set#IsMember| b@@15 o@@6))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@18 b@@15))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@100 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@100) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@100 null)) (not true)) ($Is refType this@@100 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@100) (_module.Thread.objectClassKind this@@100)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1500|
 :pattern ( (_module.Object.objectClassKind this@@100) ($Is refType this@@100 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@100) (_module.Thread.objectClassKind this@@100))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@101 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@101) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@101 null)) (not true)) ($Is refType this@@101 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@101) (_module.OwnedObject.objectClassKind this@@101)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1767|
 :pattern ( (_module.Object.objectClassKind this@@101) ($Is refType this@@101 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@101) (_module.OwnedObject.objectClassKind this@@101))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@102 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@102) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@102 null)) (not true)) ($Is refType this@@102 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@102) (_module.Lifetime.objectClassKind this@@102)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1945|
 :pattern ( (_module.Object.objectClassKind this@@102) ($Is refType this@@102 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@102) (_module.Lifetime.objectClassKind this@@102))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@57 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.Universe.globalSequenceInv2#canCall| $prevHeap@@18 $Heap@@57 this@@103) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@18) ($IsGoodHeap $Heap@@57)) ($HeapSucc $prevHeap@@18 $Heap@@57)) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.Universe) ($IsAlloc refType this@@103 Tclass._module.Universe $prevHeap@@18)))))) (and (forall ((|o#0@@9| T@U) ) (!  (=> ($Is refType |o#0@@9| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 this@@103) _module.Universe.content)) ($Box refType |o#0@@9|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@103) _module.Universe.content)) ($Box refType |o#0@@9|)) (|_module.Object.sequenceInv2#canCall| $prevHeap@@18 $Heap@@57 |o#0@@9|))))
 :qid |_12MutexLifetimeshortdfy.28:12|
 :skolemid |847|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@18 $Heap@@57 |o#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@103) _module.Universe.content)) ($Box refType |o#0@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 this@@103) _module.Universe.content)) ($Box refType |o#0@@9|)))
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@18 $Heap@@57 this@@103) (forall ((|o#0@@10| T@U) ) (!  (=> (and ($Is refType |o#0@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 this@@103) _module.Universe.content)) ($Box refType |o#0@@10|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@103) _module.Universe.content)) ($Box refType |o#0@@10|)) (_module.Object.sequenceInv2 $prevHeap@@18 $Heap@@57 |o#0@@10|)))
 :qid |_12MutexLifetimeshortdfy.28:12|
 :skolemid |846|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@18 $Heap@@57 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@103) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@18 this@@103) _module.Universe.content)) ($Box refType |o#0@@10|)))
)))))
 :qid |_12MutexLifetimeshortdfy.27:22|
 :skolemid |848|
 :pattern ( (_module.Universe.globalSequenceInv2 $prevHeap@@18 $Heap@@57 this@@103) ($IsGoodHeap $Heap@@57))
))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@104 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@104) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@104 null)) (not true)) ($Is refType this@@104 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@104) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1496|
 :pattern ( (_module.Thread.objectClassKind this@@104))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@105 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@105) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@105 null)) (not true)) ($Is refType this@@105 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@105) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1763|
 :pattern ( (_module.OwnedObject.objectClassKind this@@105))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@106 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@106) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@106 null)) (not true)) ($Is refType this@@106 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@106) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1941|
 :pattern ( (_module.Lifetime.objectClassKind this@@106))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@107 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@107) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@107 null)) (not true)) ($Is refType this@@107 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@107) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1418|
 :pattern ( (_module.Object.objectClassKind this@@107))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@108 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@58 this@@108) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.Thread) ($IsAlloc refType this@@108 Tclass._module.Thread $Heap@@58)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@58 this@@108)) (= (_module.Thread.localInv $Heap@@58 this@@108)  (and true (_module.Object.objectGlobalBaseInv $Heap@@58 this@@108)))))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1520|
 :pattern ( (_module.Thread.localInv $Heap@@58 this@@108) ($IsGoodHeap $Heap@@58))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@59 T@U) (this@@109 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@59 this@@109) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@59) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.Thread) ($IsAlloc refType this@@109 Tclass._module.Thread $Heap@@59)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@59 this@@109)) (= (_module.Thread.inv $Heap@@59 this@@109)  (and true (_module.Thread.localInv $Heap@@59 this@@109)))))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1532|
 :pattern ( (_module.Thread.inv $Heap@@59 this@@109) ($IsGoodHeap $Heap@@59))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@60 T@U) (this@@110 T@U) ) (!  (=> (or (|_module.OwnedObject.alive#canCall| $Heap@@60 this@@110) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@60) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.OwnedObject) ($IsAlloc refType this@@110 Tclass._module.OwnedObject $Heap@@60)))))) (= (_module.OwnedObject.alive $Heap@@60 this@@110)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@60 this@@110) _module.OwnedObject.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.421:19|
 :skolemid |1762|
 :pattern ( (_module.OwnedObject.alive $Heap@@60 this@@110) ($IsGoodHeap $Heap@@60))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@61 T@U) (this@@111 T@U) ) (!  (=> (or (|_module.Lifetime.alive#canCall| $Heap@@61 this@@111) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@61) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.Lifetime) ($IsAlloc refType this@@111 Tclass._module.Lifetime $Heap@@61)))))) (= (_module.Lifetime.alive $Heap@@61 this@@111)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@61 this@@111) _module.Lifetime.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.551:19|
 :skolemid |1920|
 :pattern ( (_module.Lifetime.alive $Heap@@61 this@@111) ($IsGoodHeap $Heap@@61))
))))
(assert (forall (($h@@28 T@U) ($o@@73 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@73 null)) (not true)) ($Is refType $o@@73 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@73) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@73) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@62 T@U) (this@@112 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@62 this@@112) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@62) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.Lifetime) ($IsAlloc refType this@@112 Tclass._module.Lifetime $Heap@@62)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@62 this@@112)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@112) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 (_module.Object.universe this@@112)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@112) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@112) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 (_module.Object.universe this@@112)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@112) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 (_module.Object.universe this@@112)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 this@@112) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@62 (_module.Object.universe this@@112)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.563:19|
 :skolemid |1951|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@62 this@@112) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@63 T@U) (this@@113 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@19 $Heap@@63 this@@113) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@19) ($IsGoodHeap $Heap@@63)) ($HeapSucc $prevHeap@@19 $Heap@@63)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.OwnedObject) ($IsAlloc refType this@@113 Tclass._module.OwnedObject $prevHeap@@19)))))) (and (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.owner)) null)) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@19 $Heap@@63 this@@113))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@19 $Heap@@63 this@@113))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|))))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@19 $Heap@@63 this@@113)  (and (and (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.owner)) null)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@19 $Heap@@63 this@@113)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@19 this@@113) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@63 this@@113) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_12MutexLifetimeshortdfy.457:22|
 :skolemid |1836|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@19 $Heap@@63 this@@113) ($IsGoodHeap $Heap@@63))
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
(declare-fun |running##0@0| () T@U)
(declare-fun $Heap@@64 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |preempting#0| () T@U)
(declare-fun |t#2@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call0formal@previous$Heap@0@@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.InterferenceWithFraming)
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
 (=> (= (ControlFlow 0 0) 47) (let ((anon3_correct  (=> (= |running##0@0| (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 29)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64) (and (=> (= (ControlFlow 0 2) (- 0 28)) ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)))) (TSet Tclass._module.Thread) $Heap@@64)) (=> ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)))) (TSet Tclass._module.Thread) $Heap@@64) (=> (= call0formal@previous$Heap@0 $Heap@@64) (and (=> (= (ControlFlow 0 2) (- 0 27)) ($IsAlloc SetType |running##0@0| (TSet Tclass._module.Thread) call0formal@previous$Heap@0)) (=> ($IsAlloc SetType |running##0@0| (TSet Tclass._module.Thread) call0formal@previous$Heap@0) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@11|))) (and (and (and (= (_module.Object.universe |o#0@@11|) |universe#0|) (or (not (= |o#0@@11| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@11|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@11|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |961|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@11|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@11|))
 :pattern ( (_module.Object.universe |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@11|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (and (and (= (_module.Object.universe |o#0@@12|) |universe#0|) (or (not (= |o#0@@12| |universe#0|)) (not true))) (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@12|)) (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@12|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |961|
 :pattern ( (_module.Object.triggerAxioms call0formal@previous$Heap@0 |o#0@@12|))
 :pattern ( (_module.Object.baseFieldsInv call0formal@previous$Heap@0 |o#0@@12|))
 :pattern ( (_module.Object.universe |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@12|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@4|))) (and (and (and (= (_module.Object.universe |o#1@@4|) |universe#0|) (or (not (= |o#1@@4| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#1@@4|)) (_module.Object.triggerAxioms $Heap@1 |o#1@@4|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |963|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#1@@4|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#1@@4|))
 :pattern ( (_module.Object.universe |o#1@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@4|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@1 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@1 |universe#0|) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@5|))) (and (and (and (= (_module.Object.universe |o#1@@5|) |universe#0|) (or (not (= |o#1@@5| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@1 |o#1@@5|)) (_module.Object.triggerAxioms $Heap@1 |o#1@@5|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |963|
 :pattern ( (_module.Object.triggerAxioms $Heap@1 |o#1@@5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@1 |o#1@@5|))
 :pattern ( (_module.Object.universe |o#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@5|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))) (not ($IsAllocBox ($Box refType |o#2|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_12MutexLifetimeshortdfy.44:16|
 :skolemid |965|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))) (not ($IsAllocBox ($Box refType |o#2@@0|) Tclass._module.Object call0formal@previous$Heap@0)))
 :qid |_12MutexLifetimeshortdfy.44:16|
 :skolemid |965|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (|Set#Subset| |running##0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (|Set#Subset| |running##0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))) (or (forall (($o@@74 T@U) ($f@@40 T@U) ) (!  (=> (or (not (= $o@@74 null)) (not true)) (=> (= $o@@74 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@74) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@74) $f@@40))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |967|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@74) $f@@40))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |968|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))) (or (forall (($o@@75 T@U) ($f@@41 T@U) ) (!  (=> (or (not (= $o@@75 null)) (not true)) (=> (= $o@@75 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@75) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@75) $f@@41))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |967|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@75) $f@@41))
)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |968|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner) Tclass._module.Object? call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |969|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner) Tclass._module.Object? call0formal@previous$Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |969|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |o#4@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|l#0@@7| T@U) ) (!  (=> (and ($Is refType |l#0@@7| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@7|))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@7|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@7|) _module.Lifetime.owner) Tclass._module.Thread? call0formal@previous$Heap@0)) (_module.Lifetime.unchangedNonvolatileFields call0formal@previous$Heap@0 $Heap@1 |l#0@@7|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |970|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields call0formal@previous$Heap@0 $Heap@1 |l#0@@7|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@7|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@7|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (or (_module.Universe.legalTransitionsSequence call0formal@previous$Heap@0 $Heap@1 |universe#0| |running##0@0|) (forall ((|l#0@@8| T@U) ) (!  (=> (and ($Is refType |l#0@@8| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@8|))) (=> (and (not (|Set#IsMember| |running##0@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@8|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@8|) _module.Lifetime.owner) Tclass._module.Thread? call0formal@previous$Heap@0)) (_module.Lifetime.unchangedNonvolatileFields call0formal@previous$Heap@0 $Heap@1 |l#0@@8|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |970|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields call0formal@previous$Heap@0 $Heap@1 |l#0@@8|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |l#0@@8|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@8|)))
)))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.Universe.globalSequenceInv2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (and (_module.Universe.globalSequenceInv2 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)) (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#5|)))
 :qid |_12MutexLifetimeshortdfy.28:12|
 :skolemid |976|
 :pattern ( (_module.Object.sequenceInv2 call0formal@previous$Heap@0 $Heap@1 |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
)))) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12|))) (and (and (and (= (_module.Object.universe |o#12|) |universe#0|) (or (not (= |o#12| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#12|)) (_module.Object.triggerAxioms $Heap@2 |o#12|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |785|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#12|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#12|))
 :pattern ( (_module.Object.universe |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#12@@0| T@U) ) (!  (=> (and ($Is refType |o#12@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|))) (and (and (and (= (_module.Object.universe |o#12@@0|) |universe#0|) (or (not (= |o#12@@0| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#12@@0|)) (_module.Object.triggerAxioms $Heap@2 |o#12@@0|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |785|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#12@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#12@@0|))
 :pattern ( (_module.Object.universe |o#12@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13|))) (_module.Object.inv $Heap@2 |o#13|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |787|
 :pattern ( (_module.Object.inv $Heap@2 |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13|)))
))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalInv $Heap@2 |universe#0|) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@0|))) (_module.Object.inv $Heap@2 |o#13@@0|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |787|
 :pattern ( (_module.Object.inv $Heap@2 |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.globalSequenceInv2 $Heap@@64 $Heap@2 |universe#0|) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#14|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)) (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#14|)))
 :qid |_12MutexLifetimeshortdfy.28:12|
 :skolemid |789|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)))
))))) (=> (=> (|_module.Universe.globalSequenceInv2#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.globalSequenceInv2 $Heap@@64 $Heap@2 |universe#0|) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)) (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#14@@0|)))
 :qid |_12MutexLifetimeshortdfy.28:12|
 :skolemid |789|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#14@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (forall ((|o#15| T@U) ) (!  (=> (and ($Is refType |o#15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#15|))) (and (and (and (= (_module.Object.universe |o#15|) |universe#0|) (or (not (= |o#15| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@64 |o#15|)) (_module.Object.triggerAxioms $Heap@@64 |o#15|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |791|
 :pattern ( (_module.Object.triggerAxioms $Heap@@64 |o#15|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@64 |o#15|))
 :pattern ( (_module.Object.universe |o#15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#15|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (forall ((|o#15@@0| T@U) ) (!  (=> (and ($Is refType |o#15@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#15@@0|))) (and (and (and (= (_module.Object.universe |o#15@@0|) |universe#0|) (or (not (= |o#15@@0| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@64 |o#15@@0|)) (_module.Object.triggerAxioms $Heap@@64 |o#15@@0|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |791|
 :pattern ( (_module.Object.triggerAxioms $Heap@@64 |o#15@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@64 |o#15@@0|))
 :pattern ( (_module.Object.universe |o#15@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#15@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#16| T@U) ) (!  (=> (and ($Is refType |o#16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#16|))) (and (and (and (= (_module.Object.universe |o#16|) |universe#0|) (or (not (= |o#16| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#16|)) (_module.Object.triggerAxioms $Heap@2 |o#16|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |793|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#16|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#16|))
 :pattern ( (_module.Object.universe |o#16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#16|)))
))))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#16@@0| T@U) ) (!  (=> (and ($Is refType |o#16@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#16@@0|))) (and (and (and (= (_module.Object.universe |o#16@@0|) |universe#0|) (or (not (= |o#16@@0| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#16@@0|)) (_module.Object.triggerAxioms $Heap@2 |o#16@@0|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |793|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#16@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#16@@0|))
 :pattern ( (_module.Object.universe |o#16@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#16@@0|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (forall ((|o#17| T@U) ) (!  (=> (and ($Is refType |o#17| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#17|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#17|)))) (not ($IsAllocBox ($Box refType |o#17|) Tclass._module.Object $Heap@@64)))
 :qid |_12MutexLifetimeshortdfy.44:16|
 :skolemid |795|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#17|)))
))))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@2 |universe#0|) (forall ((|o#17@@0| T@U) ) (!  (=> (and ($Is refType |o#17@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|)))) (not ($IsAllocBox ($Box refType |o#17@@0|) Tclass._module.Object $Heap@@64)))
 :qid |_12MutexLifetimeshortdfy.44:16|
 :skolemid |795|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#17@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|o#18| T@U) ) (!  (=> (and ($Is refType |o#18| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)))) (or (forall (($o@@76 T@U) ($f@@42 T@U) ) (!  (=> (or (not (= $o@@76 null)) (not true)) (=> (= $o@@76 |o#18|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@76) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@76) $f@@42))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |797|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@76) $f@@42))
)) (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#18|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |798|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#18|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|o#18@@0| T@U) ) (!  (=> (and ($Is refType |o#18@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|)))) (or (forall (($o@@77 T@U) ($f@@43 T@U) ) (!  (=> (or (not (= $o@@77 null)) (not true)) (=> (= $o@@77 |o#18@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@77) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@77) $f@@43))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |797|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@77) $f@@43))
)) (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#18@@0|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |798|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@64 $Heap@2 |o#18@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#18@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|o#19| T@U) ) (!  (=> (and ($Is refType |o#19| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#19|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@@64)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#19|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#19|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#19|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|o#19@@0| T@U) ) (!  (=> (and ($Is refType |o#19@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@@64)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#19@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#19@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#19@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#19@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|l#1@@4| T@U) ) (!  (=> (and ($Is refType |l#1@@4| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@4|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@4|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@4|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@@64)) (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@2 |l#1@@4|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |800|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@2 |l#1@@4|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@4|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@4|)))
))))) (=> (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (or (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@2 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (forall ((|l#1@@5| T@U) ) (!  (=> (and ($Is refType |l#1@@5| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@5|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@5|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@5|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@@64)) (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@2 |l#1@@5|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |800|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@2 |l#1@@5|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#1@@5|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@5|)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|a#1| T@U) (|b#1| T@U) ) (!  (=> (and (and ($Is refType |a#1| Tclass._module.Lifetime) ($Is refType |b#1| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |a#1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |b#1|)))) (=> (_module.Universe.outlives ($LS ($LS $LZ)) $Heap@@64 |universe#0| |a#1| |b#1|) (_module.Universe.outlives ($LS ($LS $LZ)) $Heap@2 |universe#0| |a#1| |b#1|)))
 :qid |_12MutexLifetimeshortdfy.284:18|
 :skolemid |806|
 :pattern ( (_module.Universe.outlives ($LS ($LS $LZ)) $Heap@2 |universe#0| |a#1| |b#1|))
 :pattern ( (_module.Universe.outlives ($LS ($LS $LZ)) $Heap@@64 |universe#0| |a#1| |b#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |b#1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |a#1|)))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon5_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |t#2@0|))) (= (ControlFlow 0 32) 2)) anon3_correct)))
(let ((anon5_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |t#2@0|)) (= (ControlFlow 0 31) 2)) anon3_correct)))
(let ((anon4_Then_correct  (=> (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@1)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 34)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64) (and (=> (= (ControlFlow 0 33) 31) anon5_Then_correct) (=> (= (ControlFlow 0 33) 32) anon5_Else_correct)))))))))
(let ((anon4_Else_correct  (=> (and (not (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@1))) (= (ControlFlow 0 30) 2)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@64 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)))) (and (=> (= (ControlFlow 0 36) (- 0 46)) (forall (($o@@78 T@U) ($f@@44 T@U) ) (!  (=> (and (and (or (not (= $o@@78 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@78) alloc)))) (or (= $o@@78 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType $o@@78)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@78 $f@@44)))
 :qid |_12MutexLifetimeshortdfy.286:15|
 :skolemid |809|
))) (=> (forall (($o@@79 T@U) ($f@@45 T@U) ) (!  (=> (and (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@79) alloc)))) (or (= $o@@79 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType $o@@79)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@79 $f@@45)))
 :qid |_12MutexLifetimeshortdfy.286:15|
 :skolemid |809|
)) (and (=> (= (ControlFlow 0 36) (- 0 45)) (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 36) (- 0 44)) (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (and (and (= (_module.Object.universe |o#0@@13|) |universe#0|) (or (not (= |o#0@@13| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@64 |o#0@@13|)) (_module.Object.triggerAxioms $Heap@@64 |o#0@@13|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |666|
 :pattern ( (_module.Object.triggerAxioms $Heap@@64 |o#0@@13|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@64 |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@13|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (and (and (= (_module.Object.universe |o#0@@14|) |universe#0|) (or (not (= |o#0@@14| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@64 |o#0@@14|)) (_module.Object.triggerAxioms $Heap@@64 |o#0@@14|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |666|
 :pattern ( (_module.Object.triggerAxioms $Heap@@64 |o#0@@14|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@64 |o#0@@14|))
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|)))
)))))) (and (=> (= (ControlFlow 0 36) (- 0 43)) (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (forall ((|o#1@@6| T@U) ) (!  (=> (and ($Is refType |o#1@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|))) (_module.Object.inv $Heap@@64 |o#1@@6|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |668|
 :pattern ( (_module.Object.inv $Heap@@64 |o#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|)))
))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (or (_module.Universe.globalInv $Heap@@64 |universe#0|) (forall ((|o#1@@7| T@U) ) (!  (=> (and ($Is refType |o#1@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|))) (_module.Object.inv $Heap@@64 |o#1@@7|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |668|
 :pattern ( (_module.Object.inv $Heap@@64 |o#1@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|)))
)))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |preempting#0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |preempting#0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|)) (=> (and (and (and (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (and (_module.Universe.globalInv $Heap@0 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#3@@1| T@U) ) (!  (=> (and ($Is refType |o#3@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|))) (_module.Object.inv $Heap@0 |o#3@@1|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |673|
 :pattern ( (_module.Object.inv $Heap@0 |o#3@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|)))
))))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@64 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (and (_module.Universe.legalTransitionsSequence $Heap@@64 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@@64 $Heap@0 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)))) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))) (or (forall (($o@@80 T@U) ($f@@46 T@U) ) (!  (=> (or (not (= $o@@80 null)) (not true)) (=> (= $o@@80 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@80) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@80) $f@@46))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |688|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@80) $f@@46))
)) (_module.Object.sequenceInv2 $Heap@@64 $Heap@0 |o#7|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |689|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@64 $Heap@0 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
))) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@@64)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |690|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |o#8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
))) (forall ((|l#0@@9| T@U) ) (!  (=> (and ($Is refType |l#0@@9| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@9|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) |preempting#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#0@@9|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#0@@9|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@@64)) (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@0 |l#0@@9|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |691|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@@64 $Heap@0 |l#0@@9|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |l#0@@9|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@9|)))
))))) (and (forall (($o@@81 T@U) ) (!  (=> (and (or (not (= $o@@81 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@81) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@81) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 $o@@81)) (or (= $o@@81 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType $o@@81)))))
 :qid |_12MutexLifetimeshortdfy.241:8|
 :skolemid |692|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@81))
)) ($HeapSucc $Heap@@64 $Heap@0)))) (and (=> (= (ControlFlow 0 36) (- 0 41)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 40)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64) (=> (= call0formal@previous$Heap@0@@0 $Heap@@64) (and (=> (= (ControlFlow 0 36) (- 0 39)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (forall ((|l#1@@6| T@U) ) (!  (=> (and ($Is refType |l#1@@6| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@6|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@6|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@6|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@6|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@6|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimeshortdfy.200:21|
 :skolemid |1295|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@6|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@6|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@6|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@6|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@6|)))
))) (=> (forall ((|l#1@@7| T@U) ) (!  (=> (and ($Is refType |l#1@@7| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@7|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@7|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@7|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@7|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@7|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimeshortdfy.200:21|
 :skolemid |1295|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@7|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@7|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@7|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |l#1@@7|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@7|)))
)) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall ((|a#1@@0| T@U) (|b#1@@0| T@U) ) (!  (=> (and ($Is refType |a#1@@0| Tclass._module.Lifetime) ($Is refType |b#1@@0| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@0|))) (and (|_module.Universe.outlives#canCall| call0formal@previous$Heap@0@@0 |universe#0| |a#1@@0| |b#1@@0|) (=> (_module.Universe.outlives ($LS $LZ) call0formal@previous$Heap@0@@0 |universe#0| |a#1@@0| |b#1@@0|) (|_module.Universe.outlives#canCall| $Heap@0 |universe#0| |a#1@@0| |b#1@@0|)))))
 :qid |_12MutexLifetimeshortdfy.201:20|
 :skolemid |1296|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@0| |b#1@@0|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) call0formal@previous$Heap@0@@0 |universe#0| |a#1@@0| |b#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@0|)))
))) (and (forall ((|a#1@@1| T@U) (|b#1@@1| T@U) ) (!  (=> (and (and ($Is refType |a#1@@1| Tclass._module.Lifetime) ($Is refType |b#1@@1| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@1|)))) (=> (_module.Universe.outlives ($LS $LZ) call0formal@previous$Heap@0@@0 |universe#0| |a#1@@1| |b#1@@1|) (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@1| |b#1@@1|)))
 :qid |_12MutexLifetimeshortdfy.201:20|
 :skolemid |1298|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@1| |b#1@@1|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) call0formal@previous$Heap@0@@0 |universe#0| |a#1@@1| |b#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0@@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@1|)))
)) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 36) 33) anon4_Then_correct) (=> (= (ControlFlow 0 36) 30) anon4_Else_correct)))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@64) ($IsHeapAnchor $Heap@@64)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@64))) (=> (and (and (and ($Is refType |preempting#0| Tclass._module.Thread) ($IsAlloc refType |preempting#0| Tclass._module.Thread $Heap@@64)) (= 23 $FunctionContextHeight)) (and (and (|_module.Universe.globalInv#canCall| $Heap@@64 |universe#0|) (and (_module.Universe.globalInv $Heap@@64 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@64 |universe#0|) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#11|))) (_module.Object.inv $Heap@@64 |o#11|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |784|
 :pattern ( (_module.Object.inv $Heap@@64 |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
))))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 |universe#0|) _module.Universe.content)) ($Box refType |preempting#0|)) (= (ControlFlow 0 47) 36)))) anon0_correct))))
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
