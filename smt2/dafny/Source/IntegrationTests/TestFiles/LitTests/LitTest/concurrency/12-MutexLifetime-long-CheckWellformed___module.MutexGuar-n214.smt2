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
(declare-fun TagBool () T@U)
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
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.Lifetime? () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun |##_module.ObjectClassKind.Thread| () T@U)
(declare-fun Tagclass._module.ObjectClassKind () T@U)
(declare-fun |##_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |##_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.Lifetime? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun class._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$ObjectClassKind () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$mutex () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$locked () T@U)
(declare-fun field$data () T@U)
(declare-fun field$guards () T@U)
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
(declare-fun _module.Universe.outlives (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
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
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
(declare-fun _module.Universe.outlivesThrough (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._module.Lifetime () T@U)
(declare-fun _module.Universe.outlivesThrough_h (T@U T@U T@U Int T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.OwnedU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.OwnedU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun |_module.Universe.outlivesThrough#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.mightPointFrom () T@U)
(declare-fun _module.Lifetime.mightPointTo () T@U)
(declare-fun |_module.Universe.outlives#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.ObjectClassKind.Thread| () T@U)
(declare-fun |#_module.ObjectClassKind.OwnedObject| () T@U)
(declare-fun |#_module.ObjectClassKind.Lifetime| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun _module.Lifetime.owner () T@U)
(declare-fun _module.Lifetime.elements () T@U)
(declare-fun _module.Mutex.guards () T@U)
(declare-fun _module.MutexGuardU32.data () T@U)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.OwnedU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Mutex.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.outlives_h (T@U T@U T@U Int T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ObjectClassKind () T@U)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun _module.Mutex.locked () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.MutexGuardU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun _module.Mutex.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.Mutex.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#96| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |$IsA#_module.ObjectClassKind| (T@U) Bool)
(declare-fun _module.Object.objectClassKind (T@U) T@U)
(declare-fun |_module.Object.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Thread.objectClassKind (T@U) T@U)
(declare-fun |_module.Thread.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.objectClassKind (T@U) T@U)
(declare-fun |_module.OwnedObject.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.Lifetime.objectClassKind (T@U) T@U)
(declare-fun |_module.Lifetime.objectClassKind#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Lifetime.alive#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.alive (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.userInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.userInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.Lifetime? Tagclass._module.MutexGuardU32? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32 class._module.Universe? |##_module.ObjectClassKind.Thread| Tagclass._module.ObjectClassKind |##_module.ObjectClassKind.OwnedObject| |##_module.ObjectClassKind.Lifetime| class._module.OwnedObject? class._module.Lifetime? Tagclass._module.OwnedU32? class._module.Mutex? Tagclass._module.Mutex? class._module.MutexGuardU32? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$OwnedU32 tytagFamily$ObjectClassKind field$content field$owner field$mutex field$mightPointFrom field$elements field$mightPointTo field$locked field$data field$guards)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) (|a#0| T@U) (|b#0| T@U) ) (! (= (_module.Universe.outlives ($LS $ly) $Heap this |a#0| |b#0|) (_module.Universe.outlives $ly $Heap this |a#0| |b#0|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1568|
 :pattern ( (_module.Universe.outlives ($LS $ly) $Heap this |a#0| |b#0|))
)))
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
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this@@0) (=> (or (not (= |o#0| this@@0)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@0 |o#0|) (=> (_module.Object.baseFieldsInv $Heap@@0 |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap@@0 |o#0|)))))))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1179|
 :pattern ( (_module.Object.triggerAxioms $Heap@@0 |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@0 this@@0)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this@@0) (or (not (= |o#0@@0| this@@0)) (not true))) (_module.Object.baseFieldsInv $Heap@@0 |o#0@@0|)) (_module.Object.triggerAxioms $Heap@@0 |o#0@@0|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1178|
 :pattern ( (_module.Object.triggerAxioms $Heap@@0 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_12MutexLifetimelongdfy.17:19|
 :skolemid |1180|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@1 T@U) (this@@1 T@U) (|a#0@@0| T@U) (|x#0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@1 this@@1 |a#0@@0| |x#0| |b#0@@0|)) (exists ((|_k#0| Int) ) (!  (and (<= (LitInt 0) |_k#0|) (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@1 this@@1 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@1 this@@1 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1602|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@1 this@@1 |a#0@@0| |x#0| |b#0@@0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@2 this@@2) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.OwnedU32) ($IsAlloc refType this@@2 Tclass._module.OwnedU32 $Heap@@2)))))) (= (_module.OwnedU32.objectUserFields $Heap@@2 this@@2) (Lit SetType |Set#Empty|)))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2724|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@3 T@U) (this@@3 T@U) (|a#0@@1| T@U) (|x#0@@0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough#canCall| $Heap@@3 this@@3 |a#0@@1| |x#0@@0| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@3)))) ($Is refType |a#0@@1| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0@@1| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |a#0@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |b#0@@1|)))))) (and (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives#canCall| $Heap@@3 this@@3 |a#0@@1| |x#0@@0|) (=> (_module.Universe.outlives $ly@@1 $Heap@@3 this@@3 |a#0@@1| |x#0@@0|) (|_module.Universe.outlives#canCall| $Heap@@3 this@@3 |x#0@@0| |b#0@@1|)))) (= (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@3 this@@3 |a#0@@1| |x#0@@0| |b#0@@1|)  (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives $ly@@1 $Heap@@3 this@@3 |a#0@@1| |x#0@@0|)) (_module.Universe.outlives $ly@@1 $Heap@@3 this@@3 |x#0@@0| |b#0@@1|)))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1600|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@3 this@@3 |a#0@@1| |x#0@@0| |b#0@@1|) ($IsGoodHeap $Heap@@3))
))))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Lifetime?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o@@0 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.OwnedU32?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2709|
 :pattern ( ($Is refType $o@@1 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Mutex?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($Is refType $o@@2 Tclass._module.Mutex?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.MutexGuardU32?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3545|
 :pattern ( ($Is refType $o@@3 Tclass._module.MutexGuardU32?))
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
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3836|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3848|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@2))
)))
(assert (forall ((bx@@3 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3856|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@3))
)))
(assert (forall ((bx@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3860|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@9) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@10) ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2958|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@10))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@11) ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@11))
 :qid |unknown.0:0|
 :skolemid |3544|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@11))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32 $h@@12) ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3834|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32 $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32? $h@@12))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.Lifetime.owner) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$owner) _module.Lifetime.owner))
(assert ($IsGhostField _module.Lifetime.owner))
(assert (= (FDim _module.Lifetime.mightPointFrom) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointFrom) _module.Lifetime.mightPointFrom))
(assert ($IsGhostField _module.Lifetime.mightPointFrom))
(assert (= (FDim _module.Lifetime.elements) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$elements) _module.Lifetime.elements))
(assert ($IsGhostField _module.Lifetime.elements))
(assert (= (FDim _module.Lifetime.mightPointTo) 0))
(assert (= (FieldOfDecl class._module.Lifetime? field$mightPointTo) _module.Lifetime.mightPointTo))
(assert ($IsGhostField _module.Lifetime.mightPointTo))
(assert (= (FDim _module.Mutex.guards) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$guards) _module.Mutex.guards))
(assert ($IsGhostField _module.Mutex.guards))
(assert (= (FDim _module.MutexGuardU32.data) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$data) _module.MutexGuardU32.data))
(assert ($IsGhostField _module.MutexGuardU32.data))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@4 this@@4) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.OwnedU32.localUserInv $Heap@@4 this@@4)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |2739|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) ($Is refType this@@4 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.OwnedU32.localUserInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@5 this@@5) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@5 this@@5) (_module.Thread.baseFieldsInv $Heap@@5 this@@5)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |1862|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@5) ($Is refType this@@5 Tclass._module.Thread) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@5 this@@5) (_module.Thread.baseFieldsInv $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@6 this@@6) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@6 this@@6) (_module.Lifetime.baseFieldsInv $Heap@@6 this@@6)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2302|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@6) ($Is refType this@@6 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@6) (_module.Lifetime.baseFieldsInv $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@7 this@@7) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv $Heap@@7 this@@7) (_module.Mutex.localUserInv $Heap@@7 this@@7)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |3286|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@7) ($Is refType this@@7 Tclass._module.Mutex) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@7) (_module.Mutex.localUserInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@8 this@@8) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv $Heap@@8 this@@8) (_module.MutexGuardU32.localUserInv $Heap@@8 this@@8)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |3577|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@8) ($Is refType this@@8 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@8) (_module.MutexGuardU32.localUserInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@9 this@@9) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@9 this@@9)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2133|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@10 T@U) (this@@10 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Universe))) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)) (_module.Universe.outlives ($LS $ly@@2) $Heap@@10 this@@10 |a#0@@2| |b#0@@2|)) (exists ((|_k#0@@0| Int) ) (!  (and (<= (LitInt 0) |_k#0@@0|) (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@10 this@@10 |_k#0@@0| |a#0@@2| |b#0@@2|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@10 this@@10 |_k#0@@0| |a#0@@2| |b#0@@2|))
)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1578|
 :pattern ( (_module.Universe.outlives ($LS $ly@@2) $Heap@@10 this@@10 |a#0@@2| |b#0@@2|))
))))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Thread| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.OwnedObject| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Lifetime| Tclass._module.ObjectClassKind))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
(assert (= (FDim _module.Mutex.locked) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$locked) _module.Mutex.locked))
(assert  (not ($IsGhostField _module.Mutex.locked)))
(assert (= (FDim _module.Mutex.data) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$data) _module.Mutex.data))
(assert  (not ($IsGhostField _module.Mutex.data)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@11 T@U) (this@@11 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives#canCall| $Heap@@11 this@@11 |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Universe) ($IsAlloc refType this@@11 Tclass._module.Universe $Heap@@11)))) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#0@@1| T@U) ) (!  (=> ($Is refType |x#0@@1| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |x#0@@1|)) (|_module.Universe.outlivesThrough#canCall| $Heap@@11 this@@11 |a#0@@3| |x#0@@1| |b#0@@3|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1575|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@11 this@@11 |a#0@@3| |x#0@@1| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |x#0@@1|)))
))) (= (_module.Universe.outlives ($LS $ly@@3) $Heap@@11 this@@11 |a#0@@3| |b#0@@3|)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#0@@2| T@U) ) (!  (and (and ($Is refType |x#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |x#0@@2|))) (_module.Universe.outlivesThrough $ly@@3 $Heap@@11 this@@11 |a#0@@3| |x#0@@2| |b#0@@3|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1574|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@11 this@@11 |a#0@@3| |x#0@@2| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@11) _module.Universe.content)) ($Box refType |x#0@@2|)))
))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1576|
 :pattern ( (_module.Universe.outlives ($LS $ly@@3) $Heap@@11 this@@11 |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@12 T@U) (this@@12 T@U) (|_k#0@@1| Int) (|a#0@@4| T@U) (|x#0@@3| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap@@12 this@@12 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Universe) ($IsAlloc refType this@@12 Tclass._module.Universe $Heap@@12)))) (<= (LitInt 0) |_k#0@@1|)) ($Is refType |a#0@@4| Tclass._module.Lifetime)) ($Is refType |x#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@4| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@12) _module.Universe.content)) ($Box refType |a#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@12) _module.Universe.content)) ($Box refType |x#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@12) _module.Universe.content)) ($Box refType |b#0@@4|)))))) (and (=> (< 0 |_k#0@@1|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@12 this@@12 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap@@12 this@@12 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (|_module.Universe.outlives_h#canCall| $Heap@@12 this@@12 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@12 this@@12 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|)  (and (< 0 |_k#0@@1|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@12 this@@12 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|)) (_module.Universe.outlives_h ($LS $LZ) $Heap@@12 this@@12 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1613|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@12 this@@12 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) ($IsGoodHeap $Heap@@12))
))))
(assert (forall (($o@@4 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@13)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@13))
)))
(assert (forall (($o@@5 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@14)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@14))
)))
(assert (forall (($o@@6 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@15)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@15))
)))
(assert (forall (($o@@7 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.OwnedObject? $h@@16)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.OwnedObject? $h@@16))
)))
(assert (forall (($o@@8 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Lifetime? $h@@17)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Lifetime? $h@@17))
)))
(assert (forall (($o@@9 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.OwnedU32? $h@@18)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.OwnedU32? $h@@18))
)))
(assert (forall (($o@@10 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._module.Mutex? $h@@19)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.Mutex? $h@@19))
)))
(assert (forall (($o@@11 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.MutexGuardU32? $h@@20)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3546|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.MutexGuardU32? $h@@20))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@13 this@@13) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $Heap@@13)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@13 this@@13) (=> (_module.Object.baseFieldsInv $Heap@@13 this@@13) (|_module.Universe.globalBaseInv#canCall| $Heap@@13 (_module.Object.universe this@@13))))) (= (_module.Object.objectGlobalBaseInv $Heap@@13 this@@13)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (_module.Object.baseFieldsInv $Heap@@13 this@@13)) (_module.Universe.globalBaseInv $Heap@@13 (_module.Object.universe this@@13))))))
 :qid |_12MutexLifetimelongdfy.302:19|
 :skolemid |1703|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@13 this@@13) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@14 this@@14) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@14 Tclass._module.MutexGuardU32 $Heap@@14)))))) (= (_module.MutexGuardU32.objectUserFields $Heap@@14 this@@14) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@14) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@14) _module.MutexGuardU32.data))))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3562|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@14 this@@14) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@15 T@U) (this@@15 T@U) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) (|_k#0@@2| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Universe))) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)) (= |_k#0@@2| 0)) (not (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@15 this@@15 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1604|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@15 this@@15 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.ObjectClassKind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1694|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@7 b@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@16 this@@16) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Mutex) ($IsAlloc refType this@@16 Tclass._module.Mutex $Heap@@16)))))) (= (_module.Mutex.objectUserFields $Heap@@16 this@@16) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.Mutex.data)))))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3271|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@16 this@@16) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@17 this@@17) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@17 this@@17) (_module.OwnedU32.objectUserFields $Heap@@17 this@@17)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2725|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@17 this@@17) ($Is refType this@@17 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@17 this@@17) (_module.OwnedU32.objectUserFields $Heap@@17 this@@17) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@18 this@@18) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Mutex)))) (= (_module.OwnedObject.objectUserFields $Heap@@18 this@@18) (_module.Mutex.objectUserFields $Heap@@18 this@@18)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |3272|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@18 this@@18) ($Is refType this@@18 Tclass._module.Mutex) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@18 this@@18) (_module.Mutex.objectUserFields $Heap@@18 this@@18) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@19 this@@19) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@19 this@@19) (_module.MutexGuardU32.objectUserFields $Heap@@19 this@@19)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |3563|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@19 this@@19) ($Is refType this@@19 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@19 this@@19) (_module.MutexGuardU32.objectUserFields $Heap@@19 this@@19) ($IsGoodHeap $Heap@@19))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@20 T@U) (this@@20 T@U) (|a#0@@6| T@U) (|x#0@@5| T@U) (|b#0@@6| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |x#0@@5| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (exists ((|_k#0@@3| Int) ) (!  (and (<= (LitInt 0) |_k#0@@3|) (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@20 this@@20 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@20 this@@20 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
))) (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@20 this@@20 |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1603|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@20 this@@20 |a#0@@6| |x#0@@5| |b#0@@6|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@21 this@@21) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedU32) ($IsAlloc refType this@@21 Tclass._module.OwnedU32 $Heap@@21)))))) (= (_module.OwnedU32.localUserInv $Heap@@21 this@@21) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.645:19|
 :skolemid |2738|
 :pattern ( (_module.OwnedU32.localUserInv $Heap@@21 this@@21) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@22 this@@22) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.Thread) ($IsAlloc refType this@@22 Tclass._module.Thread $Heap@@22)))))) (= (_module.Thread.baseFieldsInv $Heap@@22 this@@22) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.364:19|
 :skolemid |1861|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@22 this@@22) ($IsGoodHeap $Heap@@22))
))))
(assert (forall ((d T@U) ) (! (= (_module.ObjectClassKind.Thread_q d) (= (DatatypeCtorId d) |##_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1681|
 :pattern ( (_module.ObjectClassKind.Thread_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.ObjectClassKind.OwnedObject_q d@@0) (= (DatatypeCtorId d@@0) |##_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.ObjectClassKind.Lifetime_q d@@1) (= (DatatypeCtorId d@@1) |##_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@23 T@U) (this@@23 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.Universe))) ($Is refType |a#0@@7| Tclass._module.Lifetime)) ($Is refType |b#0@@7| Tclass._module.Lifetime)) (exists ((|_k#0@@4| Int) ) (!  (and (<= (LitInt 0) |_k#0@@4|) (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@23 this@@23 |_k#0@@4| |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@23 this@@23 |_k#0@@4| |a#0@@7| |b#0@@7|))
))) (_module.Universe.outlives ($LS $ly@@7) $Heap@@23 this@@23 |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1579|
 :pattern ( (_module.Universe.outlives ($LS $ly@@7) $Heap@@23 this@@23 |a#0@@7| |b#0@@7|))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@24 this@@24) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@24)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@24 this@@24) (= (_module.Object.triggerAxioms $Heap@@24 this@@24) (_module.Object.nonAliasing $Heap@@24 this@@24))))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1731|
 :pattern ( (_module.Object.triggerAxioms $Heap@@24 this@@24) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@25 T@U) (this@@25 T@U) (|_k#0@@5| Int) (|a#0@@8| T@U) (|x#0@@6| T@U) (|b#0@@8| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@25 this@@25 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|) (_module.Universe.outlivesThrough_h $ly@@8 $Heap@@25 this@@25 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1607|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@25 this@@25 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.ObjectClassKind.Thread_q d@@2) (= d@@2 |#_module.ObjectClassKind.Thread|))
 :qid |unknown.0:0|
 :skolemid |1682|
 :pattern ( (_module.ObjectClassKind.Thread_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.ObjectClassKind.OwnedObject_q d@@3) (= d@@3 |#_module.ObjectClassKind.OwnedObject|))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.ObjectClassKind.Lifetime_q d@@4) (= d@@4 |#_module.ObjectClassKind.Lifetime|))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#96| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@12) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3867|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#96| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@21 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) _module.Mutex.locked)) TBool $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3257|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) _module.Mutex.locked)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@26 this@@26) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $Heap@@26)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@26 this@@26) (= (_module.OwnedObject.objectFields $Heap@@26 this@@26) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@26 this@@26) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@26)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@26) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 this@@26) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2126|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@26 this@@26) ($IsGoodHeap $Heap@@26))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@22 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@14) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@14) Tclass._module.Universe $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1698|
 :pattern ( (_module.Object.universe $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@14) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@23 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@15) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@15) Tclass._module.Lifetime $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2109|
 :pattern ( (_module.OwnedObject.lifetime $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@15) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@16) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (_module.Object.universe $o@@16))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@17) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |2108|
 :pattern ( (_module.OwnedObject.lifetime $o@@17))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@9 T@U) ($Heap@@27 T@U) (this@@27 T@U) (|_k#0@@6| Int) (|a#0@@9| T@U) (|b#0@@9| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@27 this@@27 |_k#0@@6| |a#0@@9| |b#0@@9|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Universe) ($IsAlloc refType this@@27 Tclass._module.Universe $Heap@@27)))) (<= (LitInt 0) |_k#0@@6|)) ($Is refType |a#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@9| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |a#0@@9|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |b#0@@9|)))))) (and (=> (< 0 |_k#0@@6|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 |b#0@@9|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@9|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@27 this@@27 (- |_k#0@@6| 1) |a#0@@9| |x#3| |b#0@@9|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1592|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@27 this@@27 (- |_k#0@@6| 1) |a#0@@9| |x#3| |b#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@9) $Heap@@27 this@@27 |_k#0@@6| |a#0@@9| |b#0@@9|)  (and (< 0 |_k#0@@6|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 |b#0@@9|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@9|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@27 this@@27 (- |_k#0@@6| 1) |a#0@@9| |x#3@@0| |b#0@@9|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1591|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@27 this@@27 (- |_k#0@@6| 1) |a#0@@9| |x#3@@0| |b#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@27) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1593|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@9) $Heap@@27 this@@27 |_k#0@@6| |a#0@@9| |b#0@@9|) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@28 this@@28) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@28 Tclass._module.MutexGuardU32 $Heap@@28)))))) (and (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@28))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 (_module.Object.universe this@@28)) _module.Universe.content))) (|_module.Universe.outlives#canCall| $Heap@@28 (_module.Object.universe this@@28) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@28))) (= (_module.MutexGuardU32.localUserInv $Heap@@28 this@@28)  (and (and (and (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@28))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 (_module.Object.universe this@@28)) _module.Universe.content))) (_module.Universe.outlives ($LS $LZ) $Heap@@28 (_module.Object.universe this@@28) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@28))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.OwnedObject.owner)) null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.locked)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@28)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@28)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.data)))))))
 :qid |_12MutexLifetimelongdfy.858:19|
 :skolemid |3576|
 :pattern ( (_module.MutexGuardU32.localUserInv $Heap@@28 this@@28) ($IsGoodHeap $Heap@@28))
))))
(assert (forall (($h@@24 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@18) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2253|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@18) _module.Lifetime.owner)))
)))
(assert (forall (($h@@25 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@19) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3254|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@19) _module.Mutex.data)))
)))
(assert (forall (($h@@26 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@20) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@20) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@27 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@21) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3549|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@21) _module.MutexGuardU32.data)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@29 this@@29) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.Mutex) ($IsAlloc refType this@@29 Tclass._module.Mutex $Heap@@29)))))) (= (_module.Mutex.localUserInv $Heap@@29 this@@29)  (and (and (= (_module.OwnedObject.lifetime this@@29) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.data)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.locked))) (and ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.data))) _module.OwnedObject.owner)) Tclass._module.MutexGuardU32) (let ((|mutexGuard#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.data))) _module.OwnedObject.owner))))
 (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 |mutexGuard#0|) _module.OwnedObject.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 |mutexGuard#0|) _module.MutexGuardU32.mutex)) this@@29)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType |mutexGuard#0|)))))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.locked)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.data))) _module.OwnedObject.owner)) this@@29) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@29) _module.Mutex.guards)) |Set#Empty|))))))
 :qid |_12MutexLifetimelongdfy.770:19|
 :skolemid |3285|
 :pattern ( (_module.Mutex.localUserInv $Heap@@29 this@@29) ($IsGoodHeap $Heap@@29))
))))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@9 Tclass._module.Thread))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@10 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@12 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@13 Tclass._module.Thread?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsBox bx@@14 Tclass._module.Mutex))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsBox bx@@15 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsBox bx@@16 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@17 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( ($IsBox bx@@19 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@20)) bx@@20) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@20) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( ($IsBox bx@@20 Tclass._module.ObjectClassKind))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2708|
 :pattern ( ($IsBox bx@@21 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( ($IsBox bx@@22 Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1679|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Thread)  (and ($Is refType |c#0@@9| Tclass._module.Thread?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2100|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@10| Tclass._module.OwnedObject?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2249|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.Lifetime)  (and ($Is refType |c#0@@11| Tclass._module.Lifetime?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2706|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Lifetime?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@12| Tclass._module.OwnedU32?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2957|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.Mutex)  (and ($Is refType |c#0@@13| Tclass._module.Mutex?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3543|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@14| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3833|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.MutexGuardU32?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@30 this@@30) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.OwnedU32) ($IsAlloc refType this@@30 Tclass._module.OwnedU32 $Heap@@30)))))) ($Is SetType (_module.OwnedU32.objectUserFields $Heap@@30 this@@30) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2721|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@30 this@@30))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@31 this@@31) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Mutex) ($IsAlloc refType this@@31 Tclass._module.Mutex $Heap@@31)))))) ($Is SetType (_module.Mutex.objectUserFields $Heap@@31 this@@31) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3268|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@31 this@@31))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@32 this@@32) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@32 Tclass._module.MutexGuardU32 $Heap@@32)))))) ($Is SetType (_module.MutexGuardU32.objectUserFields $Heap@@32 this@@32) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3559|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@32 this@@32))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@33 this@@33) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $Heap@@33)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@33 this@@33) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2226|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@33 this@@33))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@34 this@@34) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.OwnedObject) ($IsAlloc refType this@@34 Tclass._module.OwnedObject $Heap@@34)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@34 this@@34) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2123|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@34 this@@34))
))))
(assert (forall (($h@@28 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@22) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@22) _module.Lifetime.owner)) Tclass._module.Thread? $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2254|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@22) _module.Lifetime.owner)))
)))
(assert (forall (($h@@29 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@23) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@23) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3255|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@23) _module.Mutex.data)))
)))
(assert (forall (($h@@30 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@24) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@24) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@24) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@31 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@25) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@25) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@25) _module.MutexGuardU32.data)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($o@@26 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@26 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@26 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3838|
 :pattern ( ($IsAlloc refType $o@@26 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@27 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@27 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@27 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsAlloc refType $o@@27 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@28 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@28 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@28 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( ($IsAlloc refType $o@@28 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($o@@29 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@29 Tclass._module.OwnedU32? $heap@@2) ($IsAlloc refType $o@@29 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3850|
 :pattern ( ($IsAlloc refType $o@@29 Tclass._module.OwnedU32? $heap@@2))
)))
(assert (forall (($o@@30 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@30 Tclass._module.Mutex? $heap@@3) ($IsAlloc refType $o@@30 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3858|
 :pattern ( ($IsAlloc refType $o@@30 Tclass._module.Mutex? $heap@@3))
)))
(assert (forall (($o@@31 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@31 Tclass._module.MutexGuardU32? $heap@@4) ($IsAlloc refType $o@@31 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3862|
 :pattern ( ($IsAlloc refType $o@@31 Tclass._module.MutexGuardU32? $heap@@4))
)))
(assert (forall (($h@@32 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@32) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2255|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@32) _module.Lifetime.elements)))
)))
(assert (forall (($h@@33 T@U) ($o@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@33) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@33) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@34 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@34) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@34) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@35 T@U) ($o@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.Mutex?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@35) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@35) _module.Mutex.guards)))
)))
(assert (forall (($h@@36 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@36) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@36) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@36))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2256|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@36) _module.Lifetime.elements)))
)))
(assert (forall (($h@@37 T@U) ($o@@37 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@37) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@37) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@37))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@37) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@38 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@38) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@38) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2260|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@38) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@39 T@U) ($o@@39 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@39) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@39) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32) $h@@39))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@39) _module.Mutex.guards)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@35 this@@35) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $Heap@@35)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@35 this@@35) (= (_module.OwnedObject.baseFieldsInv $Heap@@35 this@@35) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@35 this@@35) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@35)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.433:19|
 :skolemid |2132|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@35 this@@35) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@36 this@@36) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Object) ($IsAlloc refType this@@36 Tclass._module.Object $Heap@@36)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@36)) (|_module.Object.objectClassKind#canCall| this@@36)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@36) |#_module.ObjectClassKind.Thread|) ($Is refType this@@36 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@36)) (|_module.Object.objectClassKind#canCall| this@@36)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@36) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@36 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@36)) (|_module.Object.objectClassKind#canCall| this@@36)))))) (= (_module.Object.nonAliasing $Heap@@36 this@@36)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@36) |#_module.ObjectClassKind.Thread|) ($Is refType this@@36 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@36) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@36 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@36) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@36 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimelongdfy.310:19|
 :skolemid |1723|
 :pattern ( (_module.Object.nonAliasing $Heap@@36 this@@36) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@37 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@37) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@37 null)) (not true)) ($Is refType this@@37 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@37) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1853|
 :pattern ( (_module.Thread.objectClassKind this@@37))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@38) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@38 null)) (not true)) ($Is refType this@@38 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@38) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2117|
 :pattern ( (_module.OwnedObject.objectClassKind this@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@39 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@39) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@39 null)) (not true)) ($Is refType this@@39 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@39) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2293|
 :pattern ( (_module.Lifetime.objectClassKind this@@39))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@37 this@@40) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@37) (or (not (= this@@40 null)) (not true))) ($IsAlloc refType this@@40 Tclass._module.OwnedU32 $Heap@@37)))) ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@37 this@@40) (TSet Tclass._module.Object) $Heap@@37))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2722|
 :pattern ( ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@37 this@@40) (TSet Tclass._module.Object) $Heap@@37))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@38 this@@41) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@38) (or (not (= this@@41 null)) (not true))) ($IsAlloc refType this@@41 Tclass._module.Mutex $Heap@@38)))) ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@38 this@@41) (TSet Tclass._module.Object) $Heap@@38))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3269|
 :pattern ( ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@38 this@@41) (TSet Tclass._module.Object) $Heap@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@39 this@@42) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@39) (or (not (= this@@42 null)) (not true))) ($IsAlloc refType this@@42 Tclass._module.MutexGuardU32 $Heap@@39)))) ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@39 this@@42) (TSet Tclass._module.Object) $Heap@@39))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3560|
 :pattern ( ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@39 this@@42) (TSet Tclass._module.Object) $Heap@@39))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@40 this@@43) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@40) (or (not (= this@@43 null)) (not true))) ($IsAlloc refType this@@43 Tclass._module.OwnedObject $Heap@@40)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@40 this@@43) (TSet Tclass._module.Object) $Heap@@40))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2227|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@40 this@@43) (TSet Tclass._module.Object) $Heap@@40))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@41 this@@44) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@41) (or (not (= this@@44 null)) (not true))) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $Heap@@41)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@41 this@@44) (TSet Tclass._module.Object) $Heap@@41))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2124|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@41 this@@44) (TSet Tclass._module.Object) $Heap@@41))
))))
(assert (forall (($ly@@10 T@U) ($Heap@@42 T@U) (this@@45 T@U) (|_k#0@@7| Int) (|a#0@@10| T@U) (|b#0@@10| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@42 this@@45 |_k#0@@7| |a#0@@10| |b#0@@10|) (_module.Universe.outlives_h $ly@@10 $Heap@@42 this@@45 |_k#0@@7| |a#0@@10| |b#0@@10|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1585|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@42 this@@45 |_k#0@@7| |a#0@@10| |b#0@@10|))
)))
(assert (forall (($ly@@11 T@U) ($Heap@@43 T@U) (this@@46 T@U) (|a#0@@11| T@U) (|x#0@@7| T@U) (|b#0@@11| T@U) ) (! (= (_module.Universe.outlivesThrough ($LS $ly@@11) $Heap@@43 this@@46 |a#0@@11| |x#0@@7| |b#0@@11|) (_module.Universe.outlivesThrough $ly@@11 $Heap@@43 this@@46 |a#0@@11| |x#0@@7| |b#0@@11|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1594|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@11) $Heap@@43 this@@46 |a#0@@11| |x#0@@7| |b#0@@11|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@44 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@44 this@@47) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Object) ($IsAlloc refType this@@47 Tclass._module.Object $Heap@@44)))))) (_module.Object.triggerAxioms $Heap@@44 this@@47))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1729|
 :pattern ( (_module.Object.triggerAxioms $Heap@@44 this@@47))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@48 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@45 this@@48) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $Heap@@45)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@45 this@@48) (=> (_module.Object.objectGlobalBaseInv $Heap@@45 this@@48) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.OwnedObject.lifetime this@@48)) _module.Lifetime.elements)) ($Box refType this@@48)) (and (|_module.Lifetime.alive#canCall| $Heap@@45 (_module.OwnedObject.lifetime this@@48)) (=> (=> (_module.Lifetime.alive $Heap@@45 (_module.OwnedObject.lifetime this@@48)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@48) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@48) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv#canCall| $Heap@@45 this@@48))))))) (= (_module.OwnedObject.localInv $Heap@@45 this@@48)  (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@45 this@@48) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.OwnedObject.lifetime this@@48)) _module.Lifetime.elements)) ($Box refType this@@48))) (=> (_module.Lifetime.alive $Heap@@45 (_module.OwnedObject.lifetime this@@48)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@48) _module.OwnedObject.owner)) null)) (not true)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@48) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv $Heap@@45 this@@48))))))
 :qid |_12MutexLifetimelongdfy.443:19|
 :skolemid |2153|
 :pattern ( (_module.OwnedObject.localInv $Heap@@45 this@@48) ($IsGoodHeap $Heap@@45))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@46 this@@49) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@49 Tclass._module.MutexGuardU32 $Heap@@46)))))) (and (and (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@46 this@@49) (=> (_module.MutexGuardU32.localUserInv $Heap@@46 this@@49) (|_module.OwnedObject.localInv#canCall| $Heap@@46 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@49) _module.MutexGuardU32.mutex))))) (= (_module.MutexGuardU32.userInv $Heap@@46 this@@49)  (and (_module.MutexGuardU32.localUserInv $Heap@@46 this@@49) (_module.OwnedObject.localInv $Heap@@46 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@49) _module.MutexGuardU32.mutex)))))))
 :qid |_12MutexLifetimelongdfy.870:19|
 :skolemid |3584|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@46 this@@49) ($IsGoodHeap $Heap@@46))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 TBool) (and (= ($Box boolType ($Unbox boolType bx@@23)) bx@@23) ($Is boolType ($Unbox boolType bx@@23) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@23 TBool))
)))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@47 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@47 this@@50) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@47) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@50 Tclass._module.MutexGuardU32 $Heap@@47)))))) (=> (_module.MutexGuardU32.userInv $Heap@@47 this@@50) (_module.MutexGuardU32.localUserInv $Heap@@47 this@@50)))
 :qid |_12MutexLifetimelongdfy.870:19|
 :skolemid |3582|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@47 this@@50))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (_module.ObjectClassKind.Thread_q a@@13) (_module.ObjectClassKind.Thread_q b@@10)) (|_module.ObjectClassKind#Equal| a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.Thread_q a@@13))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@13 b@@10) (_module.ObjectClassKind.Thread_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.ObjectClassKind.OwnedObject_q a@@14) (_module.ObjectClassKind.OwnedObject_q b@@11)) (|_module.ObjectClassKind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.OwnedObject_q a@@14))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.OwnedObject_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (_module.ObjectClassKind.Lifetime_q a@@15) (_module.ObjectClassKind.Lifetime_q b@@12)) (|_module.ObjectClassKind#Equal| a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.Lifetime_q a@@15))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.Lifetime_q b@@12))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@24 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@24) ($IsAllocBox bx@@24 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@24))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.ObjectClassKind| d@@5) (or (or (_module.ObjectClassKind.Thread_q d@@5) (_module.ObjectClassKind.OwnedObject_q d@@5)) (_module.ObjectClassKind.Lifetime_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1689|
 :pattern ( (|$IsA#_module.ObjectClassKind| d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@51 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@51)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@51 null)) (not true)) ($Is refType this@@51 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@51)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :weight 3
 :skolemid |1854|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@51)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@52 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@52)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@52 null)) (not true)) ($Is refType this@@52 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@52)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :weight 3
 :skolemid |2118|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@52)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@53 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@53)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@53 null)) (not true)) ($Is refType this@@53 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@53)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :weight 3
 :skolemid |2294|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@53)))
))))
(assert (forall (($h@@40 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass._module.Mutex?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@40) _module.Mutex.locked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3256|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@40) _module.Mutex.locked)))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)) (|Set#Union| a@@16 b@@13))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@16 (|Set#Union| a@@16 b@@13)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@12 T@U) ($Heap@@48 T@U) (this@@54 T@U) (|a#0@@12| T@U) (|b#0@@12| T@U) (|_k#0@@8| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@48) (and (or (not (= this@@54 null)) (not true)) ($Is refType this@@54 Tclass._module.Universe))) ($Is refType |a#0@@12| Tclass._module.Lifetime)) ($Is refType |b#0@@12| Tclass._module.Lifetime)) (= |_k#0@@8| 0)) (not (_module.Universe.outlives_h $ly@@12 $Heap@@48 this@@54 |_k#0@@8| |a#0@@12| |b#0@@12|)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1580|
 :pattern ( (_module.Universe.outlives_h $ly@@12 $Heap@@48 this@@54 |_k#0@@8| |a#0@@12| |b#0@@12|))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h@@41 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@41 null)) (not true)) ($Is refType $o@@41 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@41) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@41) _module.OwnedObject.owner)) Tclass._module.Object? $h@@41))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2107|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@41) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@25 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@25 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@25)) bx@@25) ($Is SetType ($Unbox SetType bx@@25) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@25 (TSet t@@3)))
)))
(assert (forall (($o@@42 T@U) ) (!  (=> ($Is refType $o@@42 Tclass._module.Thread?) ($Is refType $o@@42 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3837|
 :pattern ( ($Is refType $o@@42 Tclass._module.Thread?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.Thread?) ($IsBox bx@@26 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3835|
 :pattern ( ($IsBox bx@@26 Tclass._module.Thread?))
)))
(assert (forall (($o@@43 T@U) ) (!  (=> ($Is refType $o@@43 Tclass._module.OwnedObject?) ($Is refType $o@@43 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( ($Is refType $o@@43 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.OwnedObject?) ($IsBox bx@@27 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3839|
 :pattern ( ($IsBox bx@@27 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@44 T@U) ) (!  (=> ($Is refType $o@@44 Tclass._module.Lifetime?) ($Is refType $o@@44 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3845|
 :pattern ( ($Is refType $o@@44 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.Lifetime?) ($IsBox bx@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3843|
 :pattern ( ($IsBox bx@@28 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@45 T@U) ) (!  (=> ($Is refType $o@@45 Tclass._module.OwnedU32?) ($Is refType $o@@45 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3849|
 :pattern ( ($Is refType $o@@45 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.OwnedU32?) ($IsBox bx@@29 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3847|
 :pattern ( ($IsBox bx@@29 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@46 T@U) ) (!  (=> ($Is refType $o@@46 Tclass._module.Mutex?) ($Is refType $o@@46 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3857|
 :pattern ( ($Is refType $o@@46 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.Mutex?) ($IsBox bx@@30 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3855|
 :pattern ( ($IsBox bx@@30 Tclass._module.Mutex?))
)))
(assert (forall (($o@@47 T@U) ) (!  (=> ($Is refType $o@@47 Tclass._module.MutexGuardU32?) ($Is refType $o@@47 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3861|
 :pattern ( ($Is refType $o@@47 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.MutexGuardU32?) ($IsBox bx@@31 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3859|
 :pattern ( ($IsBox bx@@31 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((d@@7 T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) ($Is DatatypeTypeType d@@7 Tclass._module.ObjectClassKind)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@42))
 :qid |unknown.0:0|
 :skolemid |1688|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@42))
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
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.Lifetime?) Tagclass._module.Lifetime?))
(assert (= (TagFamily Tclass._module.Lifetime?) tytagFamily$Lifetime))
(assert (= (Tag Tclass._module.MutexGuardU32?) Tagclass._module.MutexGuardU32?))
(assert (= (TagFamily Tclass._module.MutexGuardU32?) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.ObjectClassKind) Tagclass._module.ObjectClassKind))
(assert (= (TagFamily Tclass._module.ObjectClassKind) tytagFamily$ObjectClassKind))
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (forall (($h@@43 T@U) ($o@@48 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@48 null)) (not true)) ($Is refType $o@@48 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@48) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2106|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@48) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@49 T@U) ) (! (= ($Is refType $o@@49 Tclass._module.Universe?)  (or (= $o@@49 null) (implements$_module.Universe (dtype $o@@49))))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( ($Is refType $o@@49 Tclass._module.Universe?))
)))
(assert (forall (($o@@50 T@U) ) (! (= ($Is refType $o@@50 Tclass._module.Object?)  (or (= $o@@50 null) (implements$_module.Object (dtype $o@@50))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@50 Tclass._module.Object?))
)))
(assert (forall (($o@@51 T@U) ) (! (= ($Is refType $o@@51 Tclass._module.OwnedObject?)  (or (= $o@@51 null) (implements$_module.OwnedObject (dtype $o@@51))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($Is refType $o@@51 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@44 T@U) ($o@@52 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@44) (and (or (not (= $o@@52 null)) (not true)) ($Is refType $o@@52 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@52) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@52) _module.Universe.content)) (TSet Tclass._module.Object) $h@@44))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1173|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@52) _module.Universe.content)))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Equal| a@@17 b@@14) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@17 o@@5) (|Set#IsMember| b@@14 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@17 o@@5))
 :pattern ( (|Set#IsMember| b@@14 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@17 b@@14))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@55 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@55) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@55 null)) (not true)) ($Is refType this@@55 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@55) (_module.Thread.objectClassKind this@@55)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1855|
 :pattern ( (_module.Object.objectClassKind this@@55) ($Is refType this@@55 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@55) (_module.Thread.objectClassKind this@@55))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@56 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@56) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@56) (_module.OwnedObject.objectClassKind this@@56)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2119|
 :pattern ( (_module.Object.objectClassKind this@@56) ($Is refType this@@56 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@56) (_module.OwnedObject.objectClassKind this@@56))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@57 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@57) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@57 null)) (not true)) ($Is refType this@@57 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@57) (_module.Lifetime.objectClassKind this@@57)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2295|
 :pattern ( (_module.Object.objectClassKind this@@57) ($Is refType this@@57 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@57) (_module.Lifetime.objectClassKind this@@57))
))))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@58 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@58) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@58 null)) (not true)) ($Is refType this@@58 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@58) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1851|
 :pattern ( (_module.Thread.objectClassKind this@@58))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@59 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@59) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@59 null)) (not true)) ($Is refType this@@59 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@59) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2115|
 :pattern ( (_module.OwnedObject.objectClassKind this@@59))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@60 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@60) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@60) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2291|
 :pattern ( (_module.Lifetime.objectClassKind this@@60))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@61 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@61) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@61) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1773|
 :pattern ( (_module.Object.objectClassKind this@@61))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@49 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.Lifetime.alive#canCall| $Heap@@49 this@@62) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@49) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Lifetime) ($IsAlloc refType this@@62 Tclass._module.Lifetime $Heap@@49)))))) (= (_module.Lifetime.alive $Heap@@49 this@@62)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@49 this@@62) _module.Lifetime.owner)) null)) (not true))))
 :qid |_12MutexLifetimelongdfy.552:19|
 :skolemid |2270|
 :pattern ( (_module.Lifetime.alive $Heap@@49 this@@62) ($IsGoodHeap $Heap@@49))
))))
(assert (forall (($h@@45 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@45) (and (or (not (= $o@@53 null)) (not true)) ($Is refType $o@@53 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@53) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1172|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@53) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@50 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@50 this@@63) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@50) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Lifetime) ($IsAlloc refType this@@63 Tclass._module.Lifetime $Heap@@50)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@50 this@@63)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@63) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 (_module.Object.universe this@@63)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@63) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@63) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 (_module.Object.universe this@@63)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@63) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 (_module.Object.universe this@@63)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@63) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 (_module.Object.universe this@@63)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.564:19|
 :skolemid |2301|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@50 this@@63) ($IsGoodHeap $Heap@@50))
))))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@51 () T@U)
(declare-fun this@@64 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.MutexGuardU32.userInv)
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
 (=> (= (ControlFlow 0 0) 22) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 12)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@64))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content))))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@64))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content)))))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (=> (|_module.Universe.outlives#canCall| $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@64)) (or (_module.Universe.outlives ($LS $LZ) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@64)) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.OwnedObject.lifetime this@@64)) _module.Lifetime.mightPointTo)) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) (exists ((|x#0@@8| T@U) ) (!  (and (and ($Is refType |x#0@@8| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content)) ($Box refType |x#0@@8|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) |x#0@@8| (_module.OwnedObject.lifetime this@@64)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |3586|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) |x#0@@8| (_module.OwnedObject.lifetime this@@64)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content)) ($Box refType |x#0@@8|)))
))))))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (=> (|_module.Universe.outlives#canCall| $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@64)) (or (_module.Universe.outlives ($LS $LZ) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@64)) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.OwnedObject.lifetime this@@64)) _module.Lifetime.mightPointTo)) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) (exists ((|x#0@@9| T@U) ) (!  (and (and ($Is refType |x#0@@9| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content)) ($Box refType |x#0@@9|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) |x#0@@9| (_module.OwnedObject.lifetime this@@64)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |3586|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@@51 (_module.Object.universe this@@64) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) |x#0@@9| (_module.OwnedObject.lifetime this@@64)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 (_module.Object.universe this@@64)) _module.Universe.content)) ($Box refType |x#0@@9|)))
)))))))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.OwnedObject.owner)) null)) (not true)))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.OwnedObject.owner)) null)) (not true))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.locked))))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.locked)))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@64))))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@64)))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@64))))) (=> (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@64)))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (=> (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (or (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.data)))))))))))))))))))))
(let ((anon8_correct  (=> (= (_module.MutexGuardU32.userInv $Heap@@51 this@@64)  (and (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (_module.OwnedObject.localInv $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) (=> (and (and (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64) (=> (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (|_module.OwnedObject.localInv#canCall| $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))))) ($Is boolType (bool_2_U (_module.MutexGuardU32.userInv $Heap@@51 this@@64)) TBool)) (and (=> (= (ControlFlow 0 13) (- 0 16)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 13) (- 0 15)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 13) (- 0 14)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (=> (= (ControlFlow 0 13) 6) GeneratedUnifiedExit_correct)))))))))))
(let ((anon12_Else_correct  (=> (and (and (not (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64)) (= |b$reqreads#1@1| true)) (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 19) 13))) anon8_correct)))
(let ((anon12_Then_correct  (=> (and (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@64 _module.MutexGuardU32.mutex)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex) Tclass._module.OwnedObject? $Heap@@51) (= |b$reqreads#2@0| (forall (($o@@54 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@54) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@54) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@54 $f@@0)))
 :qid |_12MutexLifetimelongdfy.872:14|
 :skolemid |3589|
)))) (=> (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@51 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@64) _module.MutexGuardU32.mutex))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 17) 13))) anon8_correct)))))))
(let ((anon10_Else_correct  (=> ($IsAllocBox ($Box refType this@@64) Tclass._module.MutexGuardU32? $Heap@@51) (=> (and (= |b$reqreads#0@0| (forall (($o@@55 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@55) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 $o@@55) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@55 $f@@1)))
 :qid |_12MutexLifetimelongdfy.871:8|
 :skolemid |3588|
))) (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64)) (and (=> (= (ControlFlow 0 20) 17) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct))))))
(let ((anon5_correct true))
(let ((anon11_Else_correct  (=> (and (=> (_module.MutexGuardU32.userInv $Heap@@51 this@@64) (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64)) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon11_Then_correct  (=> ($IsAllocBox ($Box refType this@@64) Tclass._module.MutexGuardU32? $Heap@@51) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@64 this@@64) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@64 this@@64) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (and (or (= this@@64 this@@64) (|_module.MutexGuardU32.userInv#canCall| $Heap@@51 this@@64)) (_module.MutexGuardU32.userInv $Heap@@51 this@@64)) (=> (and (and ($IsAllocBox ($Box refType this@@64) Tclass._module.MutexGuardU32? $Heap@@51) (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@51 this@@64)) (and (_module.MutexGuardU32.localUserInv $Heap@@51 this@@64) (= (ControlFlow 0 2) 1))) anon5_correct)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#96| null $Heap@@51 alloc $Heap@@51 alloc)) (and (and (=> (= (ControlFlow 0 21) 20) anon10_Else_correct) (=> (= (ControlFlow 0 21) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 21) 4) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@51) ($IsHeapAnchor $Heap@@51)) (=> (and (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@64 Tclass._module.MutexGuardU32 $Heap@@51))) (and (= 12 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
