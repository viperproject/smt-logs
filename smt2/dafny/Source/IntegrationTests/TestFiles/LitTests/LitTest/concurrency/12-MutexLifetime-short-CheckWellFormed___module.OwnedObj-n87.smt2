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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.OwnedObject.unchangedNonvolatileFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.OwnedObject.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.ObjectClassKind.Thread| () T@U)
(declare-fun |#_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |#_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.OwnedObject.nonvolatileVersion () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Lifetime.owner () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.elements () T@U)
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
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ObjectClassKind () T@U)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.alive (T@U T@U) Bool)
(declare-fun _module.Lifetime.alive (T@U T@U) Bool)
(declare-fun |$IsA#_module.ObjectClassKind| (T@U) Bool)
(declare-fun _module.Object.objectClassKind (T@U) T@U)
(declare-fun |_module.Object.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Thread.objectClassKind (T@U) T@U)
(declare-fun |_module.Thread.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.objectClassKind (T@U) T@U)
(declare-fun |_module.OwnedObject.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Lifetime.objectClassKind (T@U) T@U)
(declare-fun |_module.Lifetime.objectClassKind#canCall| (T@U) Bool)
(declare-fun |_module.Lifetime.alive#canCall| (T@U T@U) Bool)
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
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
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
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (=> (or (not (= |o#0| this)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap |o#0|) (=> (_module.Object.baseFieldsInv $Heap |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap |o#0|)))))))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |823|
 :pattern ( (_module.Object.triggerAxioms $Heap |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap this)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= |o#0@@0| this)) (not true))) (_module.Object.baseFieldsInv $Heap |o#0@@0|)) (_module.Object.triggerAxioms $Heap |o#0@@0|)))
 :qid |_12MutexLifetimeshortdfy.17:16|
 :skolemid |822|
 :pattern ( (_module.Object.triggerAxioms $Heap |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.16:19|
 :skolemid |824|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1791|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h0 this@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1792|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap $h1 this@@0))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1879|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h0@@0 this@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1880|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@0 $h1@@0 this@@1))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 16 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@2) (and (< 16 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@2) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@2) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@1|)))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |835|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@2)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@2) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Universe.content)) ($Box refType |o#0@@2|))) (_module.Object.inv $Heap@@0 |o#0@@2|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |834|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))))
 :qid |_12MutexLifetimeshortdfy.22:19|
 :skolemid |836|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Thread?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($Is refType $o@@1 Tclass._module.Thread?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Lifetime?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($Is refType $o@@2 Tclass._module.Lifetime?))
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
(assert (forall (($h T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@3 null)) (not true)) ($Is refType $o@@3 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1752|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@3) _module.OwnedObject.nonvolatileVersion)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@1 this@@3) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@1 this@@3) (_module.Thread.baseFieldsInv $Heap@@1 this@@3)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1507|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@3) ($Is refType this@@3 Tclass._module.Thread) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@3) (_module.Thread.baseFieldsInv $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@2 this@@4) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@2 this@@4) (_module.Lifetime.baseFieldsInv $Heap@@2 this@@4)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1952|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@4) ($Is refType this@@4 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@4) (_module.Lifetime.baseFieldsInv $Heap@@2 this@@4) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@3 this@@5) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@3 this@@5) (_module.OwnedObject.baseFieldsInv $Heap@@3 this@@5)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1781|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@5) ($Is refType this@@5 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@3 this@@5) (_module.OwnedObject.baseFieldsInv $Heap@@3 this@@5) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@4 this@@6) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@4 this@@6) (_module.Thread.localInv $Heap@@4 this@@6)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1521|
 :pattern ( (_module.Object.localInv $Heap@@4 this@@6) ($Is refType this@@6 Tclass._module.Thread) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.Object.localInv $Heap@@4 this@@6) (_module.Thread.localInv $Heap@@4 this@@6) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@5 this@@7) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Lifetime)))) (= (_module.Object.localInv $Heap@@5 this@@7) (_module.Lifetime.localInv $Heap@@5 this@@7)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1985|
 :pattern ( (_module.Object.localInv $Heap@@5 this@@7) ($Is refType this@@7 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.localInv $Heap@@5 this@@7) (_module.Lifetime.localInv $Heap@@5 this@@7) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@6 this@@8) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@6 this@@8) (_module.Thread.inv $Heap@@6 this@@8)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1533|
 :pattern ( (_module.Object.inv $Heap@@6 this@@8) ($Is refType this@@8 Tclass._module.Thread) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.inv $Heap@@6 this@@8) (_module.Thread.inv $Heap@@6 this@@8) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@7 this@@9) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Lifetime)))) (= (_module.Object.inv $Heap@@7 this@@9) (_module.Lifetime.inv $Heap@@7 this@@9)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |2038|
 :pattern ( (_module.Object.inv $Heap@@7 this@@9) ($Is refType this@@9 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.inv $Heap@@7 this@@9) (_module.Lifetime.inv $Heap@@7 this@@9) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@8 this@@10) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@8 this@@10) (_module.OwnedObject.localInv $Heap@@8 this@@10)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1802|
 :pattern ( (_module.Object.localInv $Heap@@8 this@@10) ($Is refType this@@10 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.Object.localInv $Heap@@8 this@@10) (_module.OwnedObject.localInv $Heap@@8 this@@10) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@9 this@@11) (and (< 14 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@9 this@@11) (_module.OwnedObject.inv $Heap@@9 this@@11)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1816|
 :pattern ( (_module.Object.inv $Heap@@9 this@@11) ($Is refType this@@11 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.inv $Heap@@9 this@@11) (_module.OwnedObject.inv $Heap@@9 this@@11) ($IsGoodHeap $Heap@@9))
))))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Thread| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.OwnedObject| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Lifetime| Tclass._module.ObjectClassKind))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.OwnedObject) ($IsAlloc refType this@@12 Tclass._module.OwnedObject $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@4 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@4) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@4) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1832|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h0@@1 this@@12) (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h1@@1 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1833|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.sequenceInv2 $prevHeap@@1 $h1@@1 this@@12))
)))
(assert (forall (($o@@5 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Universe? $h@@8)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Universe? $h@@8))
)))
(assert (forall (($o@@6 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@9)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Object? $h@@9))
)))
(assert (forall (($o@@7 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Thread? $h@@10)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Thread? $h@@10))
)))
(assert (forall (($o@@8 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@9 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.Lifetime? $h@@12)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.Lifetime? $h@@12))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@10 this@@13) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $Heap@@10)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@10 this@@13) (=> (_module.Object.baseFieldsInv $Heap@@10 this@@13) (|_module.Universe.globalBaseInv#canCall| $Heap@@10 (_module.Object.universe this@@13))))) (= (_module.Object.objectGlobalBaseInv $Heap@@10 this@@13)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (_module.Object.baseFieldsInv $Heap@@10 this@@13)) (_module.Universe.globalBaseInv $Heap@@10 (_module.Object.universe this@@13))))))
 :qid |_12MutexLifetimeshortdfy.301:19|
 :skolemid |1348|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@10 this@@13) ($IsGoodHeap $Heap@@10))
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
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
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
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@11 this@@14) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.OwnedObject) ($IsAlloc refType this@@14 Tclass._module.OwnedObject $Heap@@11)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@11 this@@14) (=> (_module.OwnedObject.localInv $Heap@@11 this@@14) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@14) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.userInv#canCall| $Heap@@11 this@@14)))) (= (_module.OwnedObject.inv $Heap@@11 this@@14)  (and (_module.OwnedObject.localInv $Heap@@11 this@@14) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@14) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv $Heap@@11 this@@14))))))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1815|
 :pattern ( (_module.OwnedObject.inv $Heap@@11 this@@14) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@12 this@@15) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Thread) ($IsAlloc refType this@@15 Tclass._module.Thread $Heap@@12)))))) (= (_module.Thread.baseFieldsInv $Heap@@12 this@@15) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.363:19|
 :skolemid |1506|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@12 this@@15) ($IsGoodHeap $Heap@@12))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@13 this@@16) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $Heap@@13)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@13 this@@16) (= (_module.Object.triggerAxioms $Heap@@13 this@@16) (_module.Object.nonAliasing $Heap@@13 this@@16))))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1376|
 :pattern ( (_module.Object.triggerAxioms $Heap@@13 this@@16) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@14 this@@17) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Lifetime) ($IsAlloc refType this@@17 Tclass._module.Lifetime $Heap@@14)))))) (and (|_module.Lifetime.localInv#canCall| $Heap@@14 this@@17) (= (_module.Lifetime.inv $Heap@@14 this@@17) (_module.Lifetime.localInv $Heap@@14 this@@17))))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2037|
 :pattern ( (_module.Lifetime.inv $Heap@@14 this@@17) ($IsGoodHeap $Heap@@14))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@10 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f@@2))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (or (= $o@@10 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@10)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3517|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f@@2))
)))
(assert ($IsGhostField alloc))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@15 this@@18) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.OwnedObject) ($IsAlloc refType this@@18 Tclass._module.OwnedObject $Heap@@15)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@15 this@@18) (= (_module.OwnedObject.objectFields $Heap@@15 this@@18) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@15 this@@18) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@18)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@18) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@18) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1774|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@15 this@@18) ($IsGoodHeap $Heap@@15))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@11) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1343|
 :pattern ( (_module.Object.universe $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@12) Tclass._module.Lifetime $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1757|
 :pattern ( (_module.OwnedObject.lifetime $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@13) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (_module.Object.universe $o@@13))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@14) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( (_module.OwnedObject.lifetime $o@@14))
))))
(assert (forall (($h@@15 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1903|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.Lifetime.owner)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@7 Tclass._module.Thread))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@8 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@10 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@11 Tclass._module.Thread?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@12 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1328|
 :pattern ( ($IsBox bx@@13 Tclass._module.ObjectClassKind))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject?))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@16 this@@19) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.OwnedObject) ($IsAlloc refType this@@19 Tclass._module.OwnedObject $Heap@@16)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@16 this@@19) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1876|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@16 this@@19))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@17 this@@20) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.OwnedObject) ($IsAlloc refType this@@20 Tclass._module.OwnedObject $Heap@@17)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@17 this@@20) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1771|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@17 this@@20))
))))
(assert (forall (($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Lifetime.owner)) Tclass._module.Thread? $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Lifetime.owner)))
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
(assert  (=> (<= 17 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@18 this@@21) (and (< 17 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Object) ($IsAlloc refType this@@21 Tclass._module.Object $Heap@@18)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType this@@21)) (|_module.Universe.globalInv#canCall| $Heap@@18 (_module.Object.universe this@@21))) (= (_module.Object.objectGlobalInv $Heap@@18 this@@21)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@18 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType this@@21)) (_module.Universe.globalInv $Heap@@18 (_module.Object.universe this@@21))))))
 :qid |_12MutexLifetimeshortdfy.304:19|
 :skolemid |1355|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@18 this@@21) ($IsGoodHeap $Heap@@18))
))))
(assert (forall (($o@@17 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@17 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@17 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3492|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@18 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@18 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@19 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@19 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1905|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Lifetime.elements)))
)))
(assert (forall (($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@19 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1909|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@20 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1906|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) _module.Lifetime.elements)))
)))
(assert (forall (($h@@21 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@22 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@26 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (and (= $o@@26 this@@22) (= $f@@3 _module.OwnedObject.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@26) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@26) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1758|
)) (= (_module.OwnedObject.alive $h0@@2 this@@22) (_module.OwnedObject.alive $h1@@2 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1759|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.OwnedObject.alive $h1@@2 this@@22))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@27 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (and (= $o@@27 this@@23) (= $f@@4 _module.Lifetime.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@27) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@27) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1916|
)) (= (_module.Lifetime.alive $h0@@3 this@@23) (_module.Lifetime.alive $h1@@3 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1917|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Lifetime.alive $h1@@3 this@@23))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@28 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (or (= $o@@28 this@@24) (= $o@@28 (_module.Object.universe this@@24)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@28) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@28) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1420|
)) (= (_module.Object.baseFieldsInv $h0@@4 this@@24) (_module.Object.baseFieldsInv $h1@@4 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1421|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Object.baseFieldsInv $h1@@4 this@@24))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@29 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (or (= $o@@29 this@@25) (= $o@@29 (_module.Object.universe this@@25)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@29) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@29) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1502|
)) (= (_module.Thread.baseFieldsInv $h0@@5 this@@25) (_module.Thread.baseFieldsInv $h1@@5 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1503|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Thread.baseFieldsInv $h1@@5 this@@25))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@30 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (or (= $o@@30 this@@26) (= $o@@30 (_module.Object.universe this@@26)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@30) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@30) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1776|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@6 this@@26) (_module.OwnedObject.baseFieldsInv $h1@@6 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1777|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.OwnedObject.baseFieldsInv $h1@@6 this@@26))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@31 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (or (= $o@@31 this@@27) (= $o@@31 (_module.Object.universe this@@27)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@31) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@31) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1947|
)) (= (_module.Lifetime.baseFieldsInv $h0@@7 this@@27) (_module.Lifetime.baseFieldsInv $h1@@7 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1948|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Lifetime.baseFieldsInv $h1@@7 this@@27))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@19 this@@28) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.OwnedObject) ($IsAlloc refType this@@28 Tclass._module.OwnedObject $Heap@@19)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@19 this@@28) (= (_module.OwnedObject.baseFieldsInv $Heap@@19 this@@28) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@19 this@@28) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@19 (_module.Object.universe this@@28)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.432:19|
 :skolemid |1780|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@19 this@@28) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@20 this@@29) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Object) ($IsAlloc refType this@@29 Tclass._module.Object $Heap@@20)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@29)) (|_module.Object.objectClassKind#canCall| this@@29)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@29) |#_module.ObjectClassKind.Thread|) ($Is refType this@@29 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@29)) (|_module.Object.objectClassKind#canCall| this@@29)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@29) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@29 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@29)) (|_module.Object.objectClassKind#canCall| this@@29)))))) (= (_module.Object.nonAliasing $Heap@@20 this@@29)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@29) |#_module.ObjectClassKind.Thread|) ($Is refType this@@29 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@29) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@29 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@29) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@29 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimeshortdfy.309:19|
 :skolemid |1368|
 :pattern ( (_module.Object.nonAliasing $Heap@@20 this@@29) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@30 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@30) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@30) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1498|
 :pattern ( (_module.Thread.objectClassKind this@@30))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@31) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@31) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1765|
 :pattern ( (_module.OwnedObject.objectClassKind this@@31))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@32 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@32) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@32 null)) (not true)) ($Is refType this@@32 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@32) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1943|
 :pattern ( (_module.Lifetime.objectClassKind this@@32))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@21 this@@33) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@21) (or (not (= this@@33 null)) (not true))) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $Heap@@21)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@21 this@@33) (TSet Tclass._module.Object) $Heap@@21))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1877|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@21 this@@33) (TSet Tclass._module.Object) $Heap@@21))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@22 this@@34) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@22) (or (not (= this@@34 null)) (not true))) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $Heap@@22)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@22 this@@34) (TSet Tclass._module.Object) $Heap@@22))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1772|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@22 this@@34) (TSet Tclass._module.Object) $Heap@@22))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@23 this@@35) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Object) ($IsAlloc refType this@@35 Tclass._module.Object $Heap@@23)))))) (_module.Object.triggerAxioms $Heap@@23 this@@35))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1374|
 :pattern ( (_module.Object.triggerAxioms $Heap@@23 this@@35))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@24 this@@36) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $Heap@@24)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@24 this@@36) (=> (_module.Object.objectGlobalBaseInv $Heap@@24 this@@36) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.OwnedObject.lifetime this@@36)) _module.Lifetime.elements)) ($Box refType this@@36)) (and (|_module.Lifetime.alive#canCall| $Heap@@24 (_module.OwnedObject.lifetime this@@36)) (=> (=> (_module.Lifetime.alive $Heap@@24 (_module.OwnedObject.lifetime this@@36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@36) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@36) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv#canCall| $Heap@@24 this@@36))))))) (= (_module.OwnedObject.localInv $Heap@@24 this@@36)  (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@24 this@@36) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.OwnedObject.lifetime this@@36)) _module.Lifetime.elements)) ($Box refType this@@36))) (=> (_module.Lifetime.alive $Heap@@24 (_module.OwnedObject.lifetime this@@36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@36) _module.OwnedObject.owner)) null)) (not true)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@36) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv $Heap@@24 this@@36))))))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1801|
 :pattern ( (_module.OwnedObject.localInv $Heap@@24 this@@36) ($IsGoodHeap $Heap@@24))
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
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 TInt) (and (= ($Box intType ($Unbox intType bx@@15)) bx@@15) ($Is intType ($Unbox intType bx@@15) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@15 TInt))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@25 this@@37) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Thread) ($IsAlloc refType this@@37 Tclass._module.Thread $Heap@@25)))))) (=> (_module.Thread.localInv $Heap@@25 this@@37) (_module.Object.objectGlobalBaseInv $Heap@@25 this@@37)))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1518|
 :pattern ( (_module.Thread.localInv $Heap@@25 this@@37))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@26 this@@38) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Lifetime) ($IsAlloc refType this@@38 Tclass._module.Lifetime $Heap@@26)))))) (=> (_module.Lifetime.localInv $Heap@@26 this@@38) (_module.Object.objectGlobalBaseInv $Heap@@26 this@@38)))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1968|
 :pattern ( (_module.Lifetime.localInv $Heap@@26 this@@38))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@27 this@@39) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Thread) ($IsAlloc refType this@@39 Tclass._module.Thread $Heap@@27)))))) (=> (_module.Thread.inv $Heap@@27 this@@39) (_module.Thread.localInv $Heap@@27 this@@39)))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1530|
 :pattern ( (_module.Thread.inv $Heap@@27 this@@39))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@28 this@@40) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Lifetime) ($IsAlloc refType this@@40 Tclass._module.Lifetime $Heap@@28)))))) (=> (_module.Lifetime.inv $Heap@@28 this@@40) (_module.Lifetime.localInv $Heap@@28 this@@40)))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2035|
 :pattern ( (_module.Lifetime.inv $Heap@@28 this@@40))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@29 this@@41) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.OwnedObject) ($IsAlloc refType this@@41 Tclass._module.OwnedObject $Heap@@29)))))) (=> (_module.OwnedObject.localInv $Heap@@29 this@@41) (_module.Object.objectGlobalBaseInv $Heap@@29 this@@41)))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1799|
 :pattern ( (_module.OwnedObject.localInv $Heap@@29 this@@41))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@30 this@@42) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Object) ($IsAlloc refType this@@42 Tclass._module.Object $Heap@@30)))))) (=> (_module.Object.localInv $Heap@@30 this@@42) (_module.Object.objectGlobalBaseInv $Heap@@30 this@@42)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1428|
 :pattern ( (_module.Object.localInv $Heap@@30 this@@42))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@31 this@@43) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.OwnedObject) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@31)))))) (=> (_module.OwnedObject.userInv $Heap@@31 this@@43) (_module.OwnedObject.localUserInv $Heap@@31 this@@43)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |1893|
 :pattern ( (_module.OwnedObject.userInv $Heap@@31 this@@43))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@32 this@@44) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.OwnedObject) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $Heap@@32)))))) (=> (_module.OwnedObject.inv $Heap@@32 this@@44) (_module.OwnedObject.localInv $Heap@@32 this@@44)))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1813|
 :pattern ( (_module.OwnedObject.inv $Heap@@32 this@@44))
))))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@33 this@@45) (and (< 15 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Object) ($IsAlloc refType this@@45 Tclass._module.Object $Heap@@33)))))) (=> (_module.Object.inv $Heap@@33 this@@45) (_module.Object.localInv $Heap@@33 this@@45)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1438|
 :pattern ( (_module.Object.inv $Heap@@33 this@@45))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@2 T@U) ($Heap@@34 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@2 $Heap@@34 this@@46) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@2) ($IsGoodHeap $Heap@@34)) ($HeapSucc $prevHeap@@2 $Heap@@34)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedObject) ($IsAlloc refType this@@46 Tclass._module.OwnedObject $prevHeap@@2)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 this@@46) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@46) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@2 $Heap@@34 this@@46)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $Heap@@34 this@@46)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 this@@46) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@34 this@@46) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $Heap@@34 this@@46)))))
 :qid |_12MutexLifetimeshortdfy.437:22|
 :skolemid |1795|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@2 $Heap@@34 this@@46) ($IsGoodHeap $Heap@@34))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (_module.ObjectClassKind.Thread_q a@@13) (_module.ObjectClassKind.Thread_q b@@10)) (|_module.ObjectClassKind#Equal| a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |1336|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.Thread_q a@@13))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.Thread_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.ObjectClassKind.OwnedObject_q a@@14) (_module.ObjectClassKind.OwnedObject_q b@@11)) (|_module.ObjectClassKind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1337|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.OwnedObject_q a@@14))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.OwnedObject_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (_module.ObjectClassKind.Lifetime_q a@@15) (_module.ObjectClassKind.Lifetime_q b@@12)) (|_module.ObjectClassKind#Equal| a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |1338|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.Lifetime_q a@@15))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.Lifetime_q b@@12))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@16) ($IsAllocBox bx@@16 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@16))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($h@@23 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@32 null)) (not true)) ($Is refType $o@@32 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@32) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@32) _module.OwnedObject.nonvolatileVersion)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1753|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@32) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.ObjectClassKind| d@@5) (or (or (_module.ObjectClassKind.Thread_q d@@5) (_module.ObjectClassKind.OwnedObject_q d@@5)) (_module.ObjectClassKind.Lifetime_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1334|
 :pattern ( (|$IsA#_module.ObjectClassKind| d@@5))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@47 null)) (not true)) ($Is refType this@@47 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@33 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (= $o@@33 this@@47)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@33) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@33) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1364|
)) (= (_module.Object.nonAliasing $h0@@8 this@@47) (_module.Object.nonAliasing $h1@@8 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1365|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.nonAliasing $h1@@8 this@@47))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@34 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (= $o@@34 this@@48)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@34) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@34) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1372|
)) (= (_module.Object.triggerAxioms $h0@@9 this@@48) (_module.Object.triggerAxioms $h1@@9 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1373|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.triggerAxioms $h1@@9 this@@48))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@49 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@49)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@49)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :weight 3
 :skolemid |1499|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@49)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@50 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@50)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@50 null)) (not true)) ($Is refType this@@50 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@50)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :weight 3
 :skolemid |1766|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@50)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@51 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@51)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@51)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :weight 3
 :skolemid |1944|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@51)))
))))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@52 null)) (not true)) ($Is refType this@@52 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@35 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (or (= $o@@35 this@@52) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 this@@52) _module.Universe.content)) ($Box refType $o@@35)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@35) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@35) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |818|
)) (= (_module.Universe.globalBaseInv $h0@@10 this@@52) (_module.Universe.globalBaseInv $h1@@10 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Universe.globalBaseInv $h1@@10 this@@52))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)) (|Set#Union| a@@16 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@53 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@35 this@@53) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Lifetime) ($IsAlloc refType this@@53 Tclass._module.Lifetime $Heap@@35)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@35 this@@53) (=> (_module.Object.objectGlobalBaseInv $Heap@@35 this@@53) (=> (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#0@@3|))) (= (_module.OwnedObject.lifetime |o#0@@3|) this@@53))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1983|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#0@@3|)))
)) (and (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.OwnedObject) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1|)) (and (|_module.OwnedObject.alive#canCall| $Heap@@35 |o#1|) (|_module.Lifetime.alive#canCall| $Heap@@35 this@@53))))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1976|
 :pattern ( (_module.OwnedObject.alive $Heap@@35 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1|)))
)) (=> (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1@@0|))) (= (_module.OwnedObject.alive $Heap@@35 |o#1@@0|) (_module.Lifetime.alive $Heap@@35 this@@53)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1982|
 :pattern ( (_module.OwnedObject.alive $Heap@@35 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1@@0|)))
)) (and (and (|_module.Lifetime.alive#canCall| $Heap@@35 this@@53) (=> (_module.Lifetime.alive $Heap@@35 this@@53) (forall ((|l#0@@0| T@U) ) (!  (=> ($Is refType |l#0@@0| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@0|)) (|_module.Lifetime.alive#canCall| $Heap@@35 |l#0@@0|)))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1977|
 :pattern ( (_module.Lifetime.alive $Heap@@35 |l#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@0|)))
)))) (=> (=> (_module.Lifetime.alive $Heap@@35 this@@53) (forall ((|l#0@@1| T@U) ) (!  (=> (and ($Is refType |l#0@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@1|))) (_module.Lifetime.alive $Heap@@35 |l#0@@1|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1981|
 :pattern ( (_module.Lifetime.alive $Heap@@35 |l#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@1|)))
))) (and (|_module.Lifetime.alive#canCall| $Heap@@35 this@@53) (=> (not (_module.Lifetime.alive $Heap@@35 this@@53)) (forall ((|l#1@@0| T@U) ) (!  (=> ($Is refType |l#1@@0| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@0|)) (|_module.Lifetime.alive#canCall| $Heap@@35 |l#1@@0|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1978|
 :pattern ( (_module.Lifetime.alive $Heap@@35 |l#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@0|)))
))))))))))) (= (_module.Lifetime.localInv $Heap@@35 this@@53)  (and (and (and (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@35 this@@53) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#0@@4|))) (= (_module.OwnedObject.lifetime |o#0@@4|) this@@53))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1970|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#0@@4|)))
))) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1@@1|))) (= (_module.OwnedObject.alive $Heap@@35 |o#1@@1|) (_module.Lifetime.alive $Heap@@35 this@@53)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1971|
 :pattern ( (_module.OwnedObject.alive $Heap@@35 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.elements)) ($Box refType |o#1@@1|)))
))) (=> (_module.Lifetime.alive $Heap@@35 this@@53) (forall ((|l#0@@2| T@U) ) (!  (=> (and ($Is refType |l#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@2|))) (_module.Lifetime.alive $Heap@@35 |l#0@@2|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1972|
 :pattern ( (_module.Lifetime.alive $Heap@@35 |l#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@2|)))
)))) (=> (not (_module.Lifetime.alive $Heap@@35 this@@53)) (forall ((|l#1@@1| T@U) ) (!  (=> (and ($Is refType |l#1@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@1|))) (not (_module.Lifetime.alive $Heap@@35 |l#1@@1|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1973|
 :pattern ( (_module.Lifetime.alive $Heap@@35 |l#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@1|)))
)))) (forall ((|l#2@@0| T@U) ) (!  (=> (and ($Is refType |l#2@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |l#2@@0|) _module.Lifetime.mightPointFrom)) ($Box refType this@@53)))
 :qid |_12MutexLifetimeshortdfy.585:16|
 :skolemid |1974|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |l#2@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@0|)))
))) (forall ((|l#3@@0| T@U) ) (!  (=> (and ($Is refType |l#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |l#3@@0|) _module.Lifetime.mightPointTo)) ($Box refType this@@53)))
 :qid |_12MutexLifetimeshortdfy.586:16|
 :skolemid |1975|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 |l#3@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@53) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1984|
 :pattern ( (_module.Lifetime.localInv $Heap@@35 this@@53) ($IsGoodHeap $Heap@@35))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1335|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@54 null)) (not true)) ($Is refType this@@54 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@36 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (= $o@@36 this@@54)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@36) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@36) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1769|
)) (= (_module.OwnedObject.objectFields $h0@@11 this@@54) (_module.OwnedObject.objectFields $h1@@11 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1770|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.OwnedObject.objectFields $h1@@11 this@@54))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@55 null)) (not true)) ($Is refType this@@55 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@37 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (= $o@@37 this@@55)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@37) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@37) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1874|
)) (= (_module.OwnedObject.objectUserFields $h0@@12 this@@55) (_module.OwnedObject.objectUserFields $h1@@12 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1875|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.OwnedObject.objectUserFields $h1@@12 this@@55))
)))
(assert (forall (($h@@24 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@38) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@38) _module.OwnedObject.owner)) Tclass._module.Object? $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1755|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@38) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.Universe) ($IsAlloc refType this@@56 Tclass._module.Universe $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@39 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@39) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@39) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |830|
)) (= (_module.Universe.globalInv $h0@@13 this@@56) (_module.Universe.globalInv $h1@@13 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |831|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Universe.globalInv $h1@@13 this@@56))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.Object) ($IsAlloc refType this@@57 Tclass._module.Object $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@40 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@40) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@40) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1344|
)) (= (_module.Object.objectGlobalBaseInv $h0@@14 this@@57) (_module.Object.objectGlobalBaseInv $h1@@14 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1345|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Object.objectGlobalBaseInv $h1@@14 this@@57))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Object) ($IsAlloc refType this@@58 Tclass._module.Object $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@41 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@41) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@41) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@41) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1351|
)) (= (_module.Object.objectGlobalInv $h0@@15 this@@58) (_module.Object.objectGlobalInv $h1@@15 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1352|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.objectGlobalInv $h1@@15 this@@58))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Object) ($IsAlloc refType this@@59 Tclass._module.Object $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@42 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@42) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@42) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@42) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1426|
)) (= (_module.Object.localInv $h0@@16 this@@59) (_module.Object.localInv $h1@@16 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Object.localInv $h1@@16 this@@59))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Object) ($IsAlloc refType this@@60 Tclass._module.Object $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@43 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@43) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@43) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1436|
)) (= (_module.Object.inv $h0@@17 this@@60) (_module.Object.inv $h1@@17 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1437|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.Object.inv $h1@@17 this@@60))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.Thread) ($IsAlloc refType this@@61 Tclass._module.Thread $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@44 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@44) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@44) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@44) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1516|
)) (= (_module.Thread.localInv $h0@@18 this@@61) (_module.Thread.localInv $h1@@18 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1517|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Thread.localInv $h1@@18 this@@61))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Thread) ($IsAlloc refType this@@62 Tclass._module.Thread $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@45 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@45) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@45) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@45) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1528|
)) (= (_module.Thread.inv $h0@@19 this@@62) (_module.Thread.inv $h1@@19 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1529|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Thread.inv $h1@@19 this@@62))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.OwnedObject) ($IsAlloc refType this@@63 Tclass._module.OwnedObject $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@46 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@46) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@46) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@46) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1797|
)) (= (_module.OwnedObject.localInv $h0@@20 this@@63) (_module.OwnedObject.localInv $h1@@20 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1798|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.localInv $h1@@20 this@@63))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@64 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.OwnedObject) ($IsAlloc refType this@@64 Tclass._module.OwnedObject $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@47 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@47) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@47) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@47) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1811|
)) (= (_module.OwnedObject.inv $h0@@21 this@@64) (_module.OwnedObject.inv $h1@@21 this@@64))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1812|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.inv $h1@@21 this@@64))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@65 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.OwnedObject) ($IsAlloc refType this@@65 Tclass._module.OwnedObject $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@48 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@48) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@48) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@48) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1883|
)) (= (_module.OwnedObject.localUserInv $h0@@22 this@@65) (_module.OwnedObject.localUserInv $h1@@22 this@@65))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1884|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.OwnedObject.localUserInv $h1@@22 this@@65))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@66 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.OwnedObject) ($IsAlloc refType this@@66 Tclass._module.OwnedObject $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@49 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@49) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@49) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@49) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1891|
)) (= (_module.OwnedObject.userInv $h0@@23 this@@66) (_module.OwnedObject.userInv $h1@@23 this@@66))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1892|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.OwnedObject.userInv $h1@@23 this@@66))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@67 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Lifetime) ($IsAlloc refType this@@67 Tclass._module.Lifetime $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@50 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@50) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@50) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@50) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1966|
)) (= (_module.Lifetime.localInv $h0@@24 this@@67) (_module.Lifetime.localInv $h1@@24 this@@67))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1967|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Lifetime.localInv $h1@@24 this@@67))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@68 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Lifetime) ($IsAlloc refType this@@68 Tclass._module.Lifetime $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@51 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@51) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@51) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@51) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |2033|
)) (= (_module.Lifetime.inv $h0@@25 this@@68) (_module.Lifetime.inv $h1@@25 this@@68))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2034|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.Lifetime.inv $h1@@25 this@@68))
)))
(assert (forall ((bx@@17 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@5)))
)))
(assert (forall (($o@@52 T@U) ) (!  (=> ($Is refType $o@@52 Tclass._module.Thread?) ($Is refType $o@@52 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3491|
 :pattern ( ($Is refType $o@@52 Tclass._module.Thread?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Thread?) ($IsBox bx@@18 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3489|
 :pattern ( ($IsBox bx@@18 Tclass._module.Thread?))
)))
(assert (forall (($o@@53 T@U) ) (!  (=> ($Is refType $o@@53 Tclass._module.OwnedObject?) ($Is refType $o@@53 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@53 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.OwnedObject?) ($IsBox bx@@19 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3493|
 :pattern ( ($IsBox bx@@19 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@54 T@U) ) (!  (=> ($Is refType $o@@54 Tclass._module.Lifetime?) ($Is refType $o@@54 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@54 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Lifetime?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3497|
 :pattern ( ($IsBox bx@@20 Tclass._module.Lifetime?))
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
(assert (forall (($h@@26 T@U) ($o@@55 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@55 null)) (not true)) ($Is refType $o@@55 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1754|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@55) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@56 T@U) ) (! (= ($Is refType $o@@56 Tclass._module.Universe?)  (or (= $o@@56 null) (implements$_module.Universe (dtype $o@@56))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@56 Tclass._module.Universe?))
)))
(assert (forall (($o@@57 T@U) ) (! (= ($Is refType $o@@57 Tclass._module.Object?)  (or (= $o@@57 null) (implements$_module.Object (dtype $o@@57))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@57 Tclass._module.Object?))
)))
(assert (forall (($o@@58 T@U) ) (! (= ($Is refType $o@@58 Tclass._module.OwnedObject?)  (or (= $o@@58 null) (implements$_module.OwnedObject (dtype $o@@58))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@58 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@27 T@U) ($o@@59 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@59 null)) (not true)) ($Is refType $o@@59 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@59) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@59) _module.Universe.content)) (TSet Tclass._module.Object) $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@59) _module.Universe.content)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@69 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@69) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@69 null)) (not true)) ($Is refType this@@69 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@69) (_module.Thread.objectClassKind this@@69)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1500|
 :pattern ( (_module.Object.objectClassKind this@@69) ($Is refType this@@69 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@69) (_module.Thread.objectClassKind this@@69))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@70 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@70) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@70 null)) (not true)) ($Is refType this@@70 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@70) (_module.OwnedObject.objectClassKind this@@70)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1767|
 :pattern ( (_module.Object.objectClassKind this@@70) ($Is refType this@@70 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@70) (_module.OwnedObject.objectClassKind this@@70))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@71 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@71) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@71 null)) (not true)) ($Is refType this@@71 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@71) (_module.Lifetime.objectClassKind this@@71)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1945|
 :pattern ( (_module.Object.objectClassKind this@@71) ($Is refType this@@71 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@71) (_module.Lifetime.objectClassKind this@@71))
))))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@72 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@72) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@72 null)) (not true)) ($Is refType this@@72 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@72) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1496|
 :pattern ( (_module.Thread.objectClassKind this@@72))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@73 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@73) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@73 null)) (not true)) ($Is refType this@@73 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@73) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1763|
 :pattern ( (_module.OwnedObject.objectClassKind this@@73))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@74 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@74) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@74 null)) (not true)) ($Is refType this@@74 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@74) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1941|
 :pattern ( (_module.Lifetime.objectClassKind this@@74))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@75 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@75) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@75 null)) (not true)) ($Is refType this@@75 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@75) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1418|
 :pattern ( (_module.Object.objectClassKind this@@75))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@36 this@@76) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.Thread) ($IsAlloc refType this@@76 Tclass._module.Thread $Heap@@36)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@36 this@@76)) (= (_module.Thread.localInv $Heap@@36 this@@76)  (and true (_module.Object.objectGlobalBaseInv $Heap@@36 this@@76)))))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1520|
 :pattern ( (_module.Thread.localInv $Heap@@36 this@@76) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@77 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@37 this@@77) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@77 null)) (not true)) (and ($Is refType this@@77 Tclass._module.Thread) ($IsAlloc refType this@@77 Tclass._module.Thread $Heap@@37)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@37 this@@77)) (= (_module.Thread.inv $Heap@@37 this@@77)  (and true (_module.Thread.localInv $Heap@@37 this@@77)))))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1532|
 :pattern ( (_module.Thread.inv $Heap@@37 this@@77) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.OwnedObject.alive#canCall| $Heap@@38 this@@78) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.OwnedObject) ($IsAlloc refType this@@78 Tclass._module.OwnedObject $Heap@@38)))))) (= (_module.OwnedObject.alive $Heap@@38 this@@78)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 this@@78) _module.OwnedObject.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.421:19|
 :skolemid |1762|
 :pattern ( (_module.OwnedObject.alive $Heap@@38 this@@78) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.Lifetime.alive#canCall| $Heap@@39 this@@79) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Lifetime) ($IsAlloc refType this@@79 Tclass._module.Lifetime $Heap@@39)))))) (= (_module.Lifetime.alive $Heap@@39 this@@79)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@39 this@@79) _module.Lifetime.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.551:19|
 :skolemid |1920|
 :pattern ( (_module.Lifetime.alive $Heap@@39 this@@79) ($IsGoodHeap $Heap@@39))
))))
(assert (forall (($h@@28 T@U) ($o@@60 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@60 null)) (not true)) ($Is refType $o@@60 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@60) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@60) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@80 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@40 this@@80) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.Lifetime) ($IsAlloc refType this@@80 Tclass._module.Lifetime $Heap@@40)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@40 this@@80)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@80) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@80)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@80) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@80) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@80)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@80) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@80)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@80) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 (_module.Object.universe this@@80)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.563:19|
 :skolemid |1951|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@40 this@@80) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@41 T@U) (this@@81 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@3 $Heap@@41 this@@81) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@41)) ($HeapSucc $prevHeap@@3 $Heap@@41)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.OwnedObject) ($IsAlloc refType this@@81 Tclass._module.OwnedObject $prevHeap@@3)))))) (and (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.owner)) null)) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@3 $Heap@@41 this@@81))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@3 $Heap@@41 this@@81))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|))))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@3 $Heap@@41 this@@81)  (and (and (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.owner)) null)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@3 $Heap@@41 this@@81)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@81) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@41 this@@81) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_12MutexLifetimeshortdfy.457:22|
 :skolemid |1836|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@3 $Heap@@41 this@@81) ($IsGoodHeap $Heap@@41))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@42 () T@U)
(declare-fun this@@82 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.OwnedObject.CheckSequenceInv2)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@42 alloc (_module.Object.universe this@@82) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@42 (_module.Object.universe this@@82)) _module.Universe.content)))) ($IsAllocBox ($Box refType this@@82) Tclass._module.Object? $Heap@@42)) (and (|_module.Object.objectGlobalInv#canCall| $Heap@@42 this@@82) (_module.Object.objectGlobalInv $Heap@@42 this@@82))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= (_module.Object.universe this@@82) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@82) null)) (not true)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@61 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@42 $o@@61) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@61) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@42 $o@@61)) (or (= $o@@61 (_module.Object.universe this@@82)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@42 (_module.Object.universe this@@82)) _module.Universe.content)) ($Box refType $o@@61)))))
 :qid |_12MutexLifetimeshortdfy.500:10|
 :skolemid |1855|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@61))
)) ($HeapSucc $Heap@@42 $Heap@0)) (and ($IsAllocBox ($Box refType this@@82) Tclass._module.OwnedObject? $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) ($IsAlloc refType this@@82 Tclass._module.OwnedObject $Heap@@42))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@42) ($IsHeapAnchor $Heap@@42)) (=> (and (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.OwnedObject) ($IsAlloc refType this@@82 Tclass._module.OwnedObject $Heap@@42))) (and (= 18 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
