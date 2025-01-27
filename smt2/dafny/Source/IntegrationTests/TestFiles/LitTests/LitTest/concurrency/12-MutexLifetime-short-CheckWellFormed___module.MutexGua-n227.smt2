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
(declare-fun class._module.OwnedU32? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun class._module.MutexGuardU32? () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$Lifetime () T@U)
(declare-fun tytagFamily$ObjectClassKind () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
(declare-fun field$value () T@U)
(declare-fun field$data () T@U)
(declare-fun field$locked () T@U)
(declare-fun field$guards () T@U)
(declare-fun field$mutex () T@U)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#250| (T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(declare-fun Tclass._module.Object () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
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
(declare-fun _module.OwnedU32.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun _module.Mutex.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun _module.MutexGuardU32.unchangedNonvolatileUserFields (T@U T@U T@U) Bool)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun Tclass._module.Lifetime? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
(declare-fun _module.Universe.outlivesThrough (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Universe.outlivesThrough_h (T@U T@U T@U Int T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.OwnedU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.OwnedU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.Mutex.userInv (T@U T@U) Bool)
(declare-fun |_module.Mutex.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Mutex.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun _module.Mutex.guards () T@U)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.MutexGuardU32.data () T@U)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.OwnedU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.OwnedU32.userInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Lifetime.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.localUserInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.MutexGuardU32.userInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.outlives_h (T@U T@U T@U Int T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ObjectClassKind () T@U)
(declare-fun _module.OwnedU32.value () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun _module.Mutex.locked () T@U)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.MutexGuardU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun _module.Mutex.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.Mutex.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |_module.Lifetime.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.alive#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.alive (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun _module.Lifetime.unused (T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Mutex.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.unused#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
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
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.alive#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedU32.volatileOwns (T@U) Bool)
(declare-fun |_module.OwnedU32.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.MutexGuardU32.volatileOwns (T@U) Bool)
(declare-fun |_module.MutexGuardU32.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.volatileOwns (T@U) Bool)
(declare-fun _module.Mutex.volatileOwns (T@U) Bool)
(declare-fun |_module.Mutex.volatileOwns#canCall| (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun |_module.OwnedObject.volatileOwns#canCall| (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? class._module.Universe? Tagclass._module.Lifetime? |##_module.ObjectClassKind.Thread| Tagclass._module.ObjectClassKind |##_module.ObjectClassKind.OwnedObject| |##_module.ObjectClassKind.Lifetime| class._module.OwnedObject? Tagclass._module.OwnedObject? class._module.Lifetime? class._module.OwnedU32? Tagclass._module.OwnedU32? Tagclass._module.OwnedU32 class._module.Mutex? Tagclass._module.Mutex? Tagclass._module.MutexGuardU32 Tagclass._module.Mutex class._module.MutexGuardU32? Tagclass._module.MutexGuardU32? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$ObjectClassKind tytagFamily$OwnedU32 tytagFamily$Mutex tytagFamily$MutexGuardU32 field$content field$owner field$nonvolatileVersion field$mightPointTo field$mightPointFrom field$elements field$value field$data field$locked field$guards field$mutex)
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
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|l#7| T@U) (|l#8| T@U) (|l#9| T@U) (|l#10| T@U) (|l#11| T@U) ($o@@0 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#250| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) $o@@0 $f@@0))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (or (= $o@@0 |l#3|) (or (and (|Set#IsMember| |l#4| ($Box refType $o@@0)) (not (and ($Is refType $o@@0 |l#5|) (and (|Set#IsMember| |l#6| ($Box refType $o@@0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#7| $o@@0) |l#8|)) |l#9|))))) (or (= $o@@0 |l#10|) (= $o@@0 |l#11|))))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3531|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#250| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7| |l#8| |l#9| |l#10| |l#11|) $o@@0 $f@@0))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1791|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1792|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1879|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1880|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1961|
)) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h0@@2 this@@5) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1962|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.OwnedU32))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |2378|
)) (= (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@6) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2379|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= $o@@5 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@5) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |2927|
)) (= (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h0@@4 this@@7) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2928|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@6 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (= $o@@6 this@@8)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@6) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@6) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |3219|
)) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h0@@5 this@@8) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3220|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@2 T@U) (this@@9 T@U) (|a#0@@0| T@U) (|x#0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@9 |a#0@@0| |x#0| |b#0@@0|)) (exists ((|_k#0| Int) ) (!  (and (<= (LitInt 0) |_k#0|) (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@9 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1246|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@9 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
)))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1247|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@9 |a#0@@0| |x#0| |b#0@@0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@3 this@@10) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedU32) ($IsAlloc refType this@@10 Tclass._module.OwnedU32 $Heap@@3)))))) (= (_module.OwnedU32.objectUserFields $Heap@@3 this@@10) (Lit SetType |Set#Empty|)))
 :qid |_12MutexLifetimeshortdfy.638:18|
 :skolemid |2375|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@4 this@@11) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Mutex) ($IsAlloc refType this@@11 Tclass._module.Mutex $Heap@@4)))))) (and (and (|_module.Mutex.localUserInv#canCall| $Heap@@4 this@@11) (=> (_module.Mutex.localUserInv $Heap@@4 this@@11) (forall ((|g#0| T@U) ) (!  (=> ($Is refType |g#0| Tclass._module.MutexGuardU32) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0|)) (|_module.OwnedObject.localInv#canCall| $Heap@@4 |g#0|)))
 :qid |_12MutexLifetimeshortdfy.787:16|
 :skolemid |2946|
 :pattern ( (_module.OwnedObject.localInv $Heap@@4 |g#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0|)))
)))) (= (_module.Mutex.userInv $Heap@@4 this@@11)  (and (_module.Mutex.localUserInv $Heap@@4 this@@11) (forall ((|g#0@@0| T@U) ) (!  (=> (and ($Is refType |g#0@@0| Tclass._module.MutexGuardU32) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0@@0|))) (_module.OwnedObject.localInv $Heap@@4 |g#0@@0|))
 :qid |_12MutexLifetimeshortdfy.787:16|
 :skolemid |2945|
 :pattern ( (_module.OwnedObject.localInv $Heap@@4 |g#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0@@0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.785:19|
 :skolemid |2947|
 :pattern ( (_module.Mutex.userInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 16 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@5 this@@12) (and (< 16 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Universe) ($IsAlloc refType this@@12 Tclass._module.Universe $Heap@@5)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@5 this@@12) (=> (_module.Universe.globalBaseInv $Heap@@5 this@@12) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv#canCall| $Heap@@5 |o#0@@2|)))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |835|
 :pattern ( (_module.Object.inv $Heap@@5 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (= (_module.Universe.globalInv $Heap@@5 this@@12)  (and (_module.Universe.globalBaseInv $Heap@@5 this@@12) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@3|))) (_module.Object.inv $Heap@@5 |o#0@@3|))
 :qid |_12MutexLifetimeshortdfy.23:32|
 :skolemid |834|
 :pattern ( (_module.Object.inv $Heap@@5 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_12MutexLifetimeshortdfy.22:19|
 :skolemid |836|
 :pattern ( (_module.Universe.globalInv $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@6 T@U) (this@@13 T@U) (|a#0@@1| T@U) (|x#0@@0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough#canCall| $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Universe) ($IsAlloc refType this@@13 Tclass._module.Universe $Heap@@6)))) ($Is refType |a#0@@1| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0@@1| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |a#0@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |b#0@@1|)))))) (and (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives#canCall| $Heap@@6 this@@13 |a#0@@1| |x#0@@0|) (=> (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |a#0@@1| |x#0@@0|) (|_module.Universe.outlives#canCall| $Heap@@6 this@@13 |x#0@@0| |b#0@@1|)))) (= (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|)  (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |a#0@@1| |x#0@@0|)) (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |x#0@@0| |b#0@@1|)))))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1245|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|) ($IsGoodHeap $Heap@@6))
))))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Thread?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( ($Is refType $o@@7 Tclass._module.Thread?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Lifetime?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( ($Is refType $o@@8 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.OwnedU32?)  (or (= $o@@9 null) (= (dtype $o@@9) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2359|
 :pattern ( ($Is refType $o@@9 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.Mutex?)  (or (= $o@@10 null) (= (dtype $o@@10) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |2903|
 :pattern ( ($Is refType $o@@10 Tclass._module.Mutex?))
)))
(assert (forall (($o@@11 T@U) ) (! (= ($Is refType $o@@11 Tclass._module.MutexGuardU32?)  (or (= $o@@11 null) (= (dtype $o@@11) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@11 Tclass._module.MutexGuardU32?))
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
(assert (forall (($h T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1752|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3502|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3510|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@4))
)))
(assert (forall ((bx@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3514|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@7 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@7 $Heap@@7 this@@14) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@7 $Heap@@7)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Lifetime) ($IsAlloc refType this@@14 Tclass._module.Lifetime $prevHeap@@7)))))) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@7 $Heap@@7 this@@14)  (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@14) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@14) _module.Lifetime.owner))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@14) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@14) _module.Lifetime.elements)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@14) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@14) _module.Lifetime.mightPointTo)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@14) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@14) _module.Lifetime.mightPointFrom))))))
 :qid |_12MutexLifetimeshortdfy.571:22|
 :skolemid |1965|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@7 $Heap@@7 this@@14) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1325|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1748|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@10) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2357|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@11) ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2609|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@12) ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@12))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32 $h@@13) ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32? $h@@13))
 :qid |unknown.0:0|
 :skolemid |3488|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32 $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32? $h@@13))
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
(assert (= (FDim _module.Mutex.guards) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$guards) _module.Mutex.guards))
(assert ($IsGhostField _module.Mutex.guards))
(assert (= (FDim _module.MutexGuardU32.data) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$data) _module.MutexGuardU32.data))
(assert ($IsGhostField _module.MutexGuardU32.data))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@8 this@@15) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv $Heap@@8 this@@15) (_module.OwnedU32.localUserInv $Heap@@8 this@@15)))
 :qid |_12MutexLifetimeshortdfy.520:19|
 :skolemid |2390|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@15) ($Is refType this@@15 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@15) (_module.OwnedU32.localUserInv $Heap@@8 this@@15) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@9 this@@16) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.OwnedU32.userInv $Heap@@9 this@@16)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |2397|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) ($Is refType this@@16 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@16) (_module.OwnedU32.userInv $Heap@@9 this@@16) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@10 this@@17) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@10 this@@17) (_module.Thread.baseFieldsInv $Heap@@10 this@@17)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1507|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@10 this@@17) ($Is refType this@@17 Tclass._module.Thread) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@10 this@@17) (_module.Thread.baseFieldsInv $Heap@@10 this@@17) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@11 this@@18) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@11 this@@18) (_module.Lifetime.baseFieldsInv $Heap@@11 this@@18)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1952|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@18) ($Is refType this@@18 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@18) (_module.Lifetime.baseFieldsInv $Heap@@11 this@@18) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@12 this@@19) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv $Heap@@12 this@@19) (_module.Mutex.localUserInv $Heap@@12 this@@19)))
 :qid |_12MutexLifetimeshortdfy.520:19|
 :skolemid |2939|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@12 this@@19) ($Is refType this@@19 Tclass._module.Mutex) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@12 this@@19) (_module.Mutex.localUserInv $Heap@@12 this@@19) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@13 this@@20) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv $Heap@@13 this@@20) (_module.MutexGuardU32.localUserInv $Heap@@13 this@@20)))
 :qid |_12MutexLifetimeshortdfy.520:19|
 :skolemid |3231|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@13 this@@20) ($Is refType this@@20 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@13 this@@20) (_module.MutexGuardU32.localUserInv $Heap@@13 this@@20) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@14 this@@21) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@14 this@@21) (_module.OwnedObject.baseFieldsInv $Heap@@14 this@@21)))
 :qid |_12MutexLifetimeshortdfy.348:19|
 :skolemid |1781|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 this@@21) ($Is refType this@@21 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 this@@21) (_module.OwnedObject.baseFieldsInv $Heap@@14 this@@21) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@15 this@@22) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@15 this@@22) (_module.Thread.localInv $Heap@@15 this@@22)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1521|
 :pattern ( (_module.Object.localInv $Heap@@15 this@@22) ($Is refType this@@22 Tclass._module.Thread) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.localInv $Heap@@15 this@@22) (_module.Thread.localInv $Heap@@15 this@@22) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@16 this@@23) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.Lifetime)))) (= (_module.Object.localInv $Heap@@16 this@@23) (_module.Lifetime.localInv $Heap@@16 this@@23)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1985|
 :pattern ( (_module.Object.localInv $Heap@@16 this@@23) ($Is refType this@@23 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.localInv $Heap@@16 this@@23) (_module.Lifetime.localInv $Heap@@16 this@@23) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@17 this@@24) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@17 this@@24) (_module.Thread.inv $Heap@@17 this@@24)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1533|
 :pattern ( (_module.Object.inv $Heap@@17 this@@24) ($Is refType this@@24 Tclass._module.Thread) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.Object.inv $Heap@@17 this@@24) (_module.Thread.inv $Heap@@17 this@@24) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@18 this@@25) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Lifetime)))) (= (_module.Object.inv $Heap@@18 this@@25) (_module.Lifetime.inv $Heap@@18 this@@25)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |2038|
 :pattern ( (_module.Object.inv $Heap@@18 this@@25) ($Is refType this@@25 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.Object.inv $Heap@@18 this@@25) (_module.Lifetime.inv $Heap@@18 this@@25) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@19 this@@26) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@19 this@@26) (_module.OwnedObject.localInv $Heap@@19 this@@26)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1802|
 :pattern ( (_module.Object.localInv $Heap@@19 this@@26) ($Is refType this@@26 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.localInv $Heap@@19 this@@26) (_module.OwnedObject.localInv $Heap@@19 this@@26) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@20 this@@27) (and (< 12 $FunctionContextHeight) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.Mutex)))) (= (_module.OwnedObject.userInv $Heap@@20 this@@27) (_module.Mutex.userInv $Heap@@20 this@@27)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |2948|
 :pattern ( (_module.OwnedObject.userInv $Heap@@20 this@@27) ($Is refType this@@27 Tclass._module.Mutex) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.OwnedObject.userInv $Heap@@20 this@@27) (_module.Mutex.userInv $Heap@@20 this@@27) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@21 this@@28) (and (< 12 $FunctionContextHeight) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.userInv $Heap@@21 this@@28) (_module.MutexGuardU32.userInv $Heap@@21 this@@28)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |3239|
 :pattern ( (_module.OwnedObject.userInv $Heap@@21 this@@28) ($Is refType this@@28 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.OwnedObject.userInv $Heap@@21 this@@28) (_module.MutexGuardU32.userInv $Heap@@21 this@@28) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@22 this@@29) (and (< 14 $FunctionContextHeight) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@22 this@@29) (_module.OwnedObject.inv $Heap@@22 this@@29)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1816|
 :pattern ( (_module.Object.inv $Heap@@22 this@@29) ($Is refType this@@29 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.Object.inv $Heap@@22 this@@29) (_module.OwnedObject.inv $Heap@@22 this@@29) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@23 T@U) (this@@30 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Universe))) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)) (_module.Universe.outlives ($LS $ly@@2) $Heap@@23 this@@30 |a#0@@2| |b#0@@2|)) (exists ((|_k#0@@0| Int) ) (!  (and (<= (LitInt 0) |_k#0@@0|) (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@23 this@@30 |_k#0@@0| |a#0@@2| |b#0@@2|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1222|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@23 this@@30 |_k#0@@0| |a#0@@2| |b#0@@2|))
)))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1223|
 :pattern ( (_module.Universe.outlives ($LS $ly@@2) $Heap@@23 this@@30 |a#0@@2| |b#0@@2|))
))))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Thread| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.OwnedObject| Tclass._module.ObjectClassKind))
(assert ($Is DatatypeTypeType |#_module.ObjectClassKind.Lifetime| Tclass._module.ObjectClassKind))
(assert (= (FDim _module.OwnedU32.value) 0))
(assert (= (FieldOfDecl class._module.OwnedU32? field$value) _module.OwnedU32.value))
(assert  (not ($IsGhostField _module.OwnedU32.value)))
(assert (= (FDim _module.Mutex.data) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$data) _module.Mutex.data))
(assert  (not ($IsGhostField _module.Mutex.data)))
(assert (= (FDim _module.Mutex.locked) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$locked) _module.Mutex.locked))
(assert  (not ($IsGhostField _module.Mutex.locked)))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@24 T@U) (this@@31 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives#canCall| $Heap@@24 this@@31 |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Universe) ($IsAlloc refType this@@31 Tclass._module.Universe $Heap@@24)))) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#0@@1| T@U) ) (!  (=> ($Is refType |x#0@@1| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |x#0@@1|)) (|_module.Universe.outlivesThrough#canCall| $Heap@@24 this@@31 |a#0@@3| |x#0@@1| |b#0@@3|)))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1220|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@31 |a#0@@3| |x#0@@1| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |x#0@@1|)))
))) (= (_module.Universe.outlives ($LS $ly@@3) $Heap@@24 this@@31 |a#0@@3| |b#0@@3|)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#0@@2| T@U) ) (!  (and (and ($Is refType |x#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |x#0@@2|))) (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@31 |a#0@@3| |x#0@@2| |b#0@@3|))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1219|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@31 |a#0@@3| |x#0@@2| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@31) _module.Universe.content)) ($Box refType |x#0@@2|)))
))))))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1221|
 :pattern ( (_module.Universe.outlives ($LS $ly@@3) $Heap@@24 this@@31 |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@25 T@U) (this@@32 T@U) (|_k#0@@1| Int) (|a#0@@4| T@U) (|x#0@@3| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap@@25 this@@32 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Universe) ($IsAlloc refType this@@32 Tclass._module.Universe $Heap@@25)))) (<= (LitInt 0) |_k#0@@1|)) ($Is refType |a#0@@4| Tclass._module.Lifetime)) ($Is refType |x#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@4| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@32) _module.Universe.content)) ($Box refType |a#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@32) _module.Universe.content)) ($Box refType |x#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@32) _module.Universe.content)) ($Box refType |b#0@@4|)))))) (and (=> (< 0 |_k#0@@1|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@25 this@@32 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@32 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (|_module.Universe.outlives_h#canCall| $Heap@@25 this@@32 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@25 this@@32 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|)  (and (< 0 |_k#0@@1|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@32 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|)) (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@32 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1258|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@25 this@@32 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) ($IsGoodHeap $Heap@@25))
))))
(assert (forall (($prevHeap@@8 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Universe) ($IsAlloc refType this@@33 Tclass._module.Universe $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@13) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |864|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h0@@6 this@@33) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@6 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |865|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@8 $h1@@6 this@@33))
)))
(assert (forall (($prevHeap@@9 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Object) ($IsAlloc refType this@@34 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@14 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@14) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@14) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.Object.sequenceInv2 $prevHeap@@9 $h0@@7 this@@34) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@7 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.sequenceInv2 $prevHeap@@9 $h1@@7 this@@34))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Thread) ($IsAlloc refType this@@35 Tclass._module.Thread $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@15 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@15) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@15) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@10 $h0@@8 this@@35) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@8 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Thread.sequenceInv2 $prevHeap@@10 $h1@@8 this@@35))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.OwnedObject) ($IsAlloc refType this@@36 Tclass._module.OwnedObject $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@16) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1832|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h0@@9 this@@36) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@9 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1833|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.OwnedObject.sequenceInv2 $prevHeap@@11 $h1@@9 this@@36))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Lifetime) ($IsAlloc refType this@@37 Tclass._module.Lifetime $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@17 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@17) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@17) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |2069|
)) (= (_module.Lifetime.sequenceInv2 $prevHeap@@12 $h0@@10 this@@37) (_module.Lifetime.sequenceInv2 $prevHeap@@12 $h1@@10 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2070|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Lifetime.sequenceInv2 $prevHeap@@12 $h1@@10 this@@37))
)))
(assert (forall (($o@@18 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.Universe? $h@@14)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.Universe? $h@@14))
)))
(assert (forall (($o@@19 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.Object? $h@@15)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Object? $h@@15))
)))
(assert (forall (($o@@20 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@20 Tclass._module.Thread? $h@@16)  (or (= $o@@20 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@20) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.Thread? $h@@16))
)))
(assert (forall (($o@@21 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $h@@17)  (or (= $o@@21 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@21) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $h@@17))
)))
(assert (forall (($o@@22 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@22 Tclass._module.Lifetime? $h@@18)  (or (= $o@@22 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@22) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Lifetime? $h@@18))
)))
(assert (forall (($o@@23 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@23 Tclass._module.OwnedU32? $h@@19)  (or (= $o@@23 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@23) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2360|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.OwnedU32? $h@@19))
)))
(assert (forall (($o@@24 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@24 Tclass._module.Mutex? $h@@20)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2904|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.Mutex? $h@@20))
)))
(assert (forall (($o@@25 T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType $o@@25 Tclass._module.MutexGuardU32? $h@@21)  (or (= $o@@25 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@25 Tclass._module.MutexGuardU32? $h@@21))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@26 this@@38) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Object) ($IsAlloc refType this@@38 Tclass._module.Object $Heap@@26)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 (_module.Object.universe this@@38)) _module.Universe.content)) ($Box refType this@@38)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@26 this@@38) (=> (_module.Object.baseFieldsInv $Heap@@26 this@@38) (|_module.Universe.globalBaseInv#canCall| $Heap@@26 (_module.Object.universe this@@38))))) (= (_module.Object.objectGlobalBaseInv $Heap@@26 this@@38)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 (_module.Object.universe this@@38)) _module.Universe.content)) ($Box refType this@@38)) (_module.Object.baseFieldsInv $Heap@@26 this@@38)) (_module.Universe.globalBaseInv $Heap@@26 (_module.Object.universe this@@38))))))
 :qid |_12MutexLifetimeshortdfy.301:19|
 :skolemid |1348|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@26 this@@38) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@27 this@@39) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@39 Tclass._module.MutexGuardU32 $Heap@@27)))))) (= (_module.MutexGuardU32.objectUserFields $Heap@@27 this@@39) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@39) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@39) _module.MutexGuardU32.data))))
 :qid |_12MutexLifetimeshortdfy.848:18|
 :skolemid |3216|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@27 this@@39) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@28 T@U) (this@@40 T@U) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) (|_k#0@@2| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@40 null)) (not true)) ($Is refType this@@40 Tclass._module.Universe))) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)) (= |_k#0@@2| 0)) (not (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@28 this@@40 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|)))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1249|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@28 this@@40 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@29 this@@41) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@29 this@@41) (_module.OwnedU32.objectUserFields $Heap@@29 this@@41)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |2376|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@29 this@@41) ($Is refType this@@41 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@29))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@29 this@@41) (_module.OwnedU32.objectUserFields $Heap@@29 this@@41) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@30 this@@42) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@42 null)) (not true)) ($Is refType this@@42 Tclass._module.Mutex)))) (= (_module.OwnedObject.objectUserFields $Heap@@30 this@@42) (_module.Mutex.objectUserFields $Heap@@30 this@@42)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |2925|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@30 this@@42) ($Is refType this@@42 Tclass._module.Mutex) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@30 this@@42) (_module.Mutex.objectUserFields $Heap@@30 this@@42) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@31 this@@43) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@43 null)) (not true)) ($Is refType this@@43 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@31 this@@43) (_module.MutexGuardU32.objectUserFields $Heap@@31 this@@43)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |3217|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@31 this@@43) ($Is refType this@@43 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@31 this@@43) (_module.MutexGuardU32.objectUserFields $Heap@@31 this@@43) ($IsGoodHeap $Heap@@31))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@32 T@U) (this@@44 T@U) (|a#0@@6| T@U) (|x#0@@5| T@U) (|b#0@@6| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@44 null)) (not true)) ($Is refType this@@44 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |x#0@@5| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (exists ((|_k#0@@3| Int) ) (!  (and (<= (LitInt 0) |_k#0@@3|) (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@32 this@@44 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1246|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@32 this@@44 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
))) (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@32 this@@44 |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1248|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@32 this@@44 |a#0@@6| |x#0@@5| |b#0@@6|))
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
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@33 this@@45) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $Heap@@33)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@33 this@@45) (=> (_module.OwnedObject.localInv $Heap@@33 this@@45) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@45) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.userInv#canCall| $Heap@@33 this@@45)))) (= (_module.OwnedObject.inv $Heap@@33 this@@45)  (and (_module.OwnedObject.localInv $Heap@@33 this@@45) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@45) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv $Heap@@33 this@@45))))))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1815|
 :pattern ( (_module.OwnedObject.inv $Heap@@33 this@@45) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@34 this@@46) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedU32) ($IsAlloc refType this@@46 Tclass._module.OwnedU32 $Heap@@34)))))) (= (_module.OwnedU32.localUserInv $Heap@@34 this@@46) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.644:19|
 :skolemid |2389|
 :pattern ( (_module.OwnedU32.localUserInv $Heap@@34 this@@46) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@35 this@@47) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Thread) ($IsAlloc refType this@@47 Tclass._module.Thread $Heap@@35)))))) (= (_module.Thread.baseFieldsInv $Heap@@35 this@@47) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.363:19|
 :skolemid |1506|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@35 this@@47) ($IsGoodHeap $Heap@@35))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@36 T@U) (this@@48 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Universe))) ($Is refType |a#0@@7| Tclass._module.Lifetime)) ($Is refType |b#0@@7| Tclass._module.Lifetime)) (exists ((|_k#0@@4| Int) ) (!  (and (<= (LitInt 0) |_k#0@@4|) (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@36 this@@48 |_k#0@@4| |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1222|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@36 this@@48 |_k#0@@4| |a#0@@7| |b#0@@7|))
))) (_module.Universe.outlives ($LS $ly@@7) $Heap@@36 this@@48 |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1224|
 :pattern ( (_module.Universe.outlives ($LS $ly@@7) $Heap@@36 this@@48 |a#0@@7| |b#0@@7|))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@49 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@37 this@@49) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.OwnedU32) ($IsAlloc refType this@@49 Tclass._module.OwnedU32 $Heap@@37)))))) (and (|_module.OwnedU32.localUserInv#canCall| $Heap@@37 this@@49) (= (_module.OwnedU32.userInv $Heap@@37 this@@49) (_module.OwnedU32.localUserInv $Heap@@37 this@@49))))
 :qid |_12MutexLifetimeshortdfy.645:19|
 :skolemid |2396|
 :pattern ( (_module.OwnedU32.userInv $Heap@@37 this@@49) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@50 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@38 this@@50) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Object) ($IsAlloc refType this@@50 Tclass._module.Object $Heap@@38)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@38 this@@50) (= (_module.Object.triggerAxioms $Heap@@38 this@@50) (_module.Object.nonAliasing $Heap@@38 this@@50))))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1376|
 :pattern ( (_module.Object.triggerAxioms $Heap@@38 this@@50) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@51 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@39 this@@51) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Lifetime) ($IsAlloc refType this@@51 Tclass._module.Lifetime $Heap@@39)))))) (and (|_module.Lifetime.localInv#canCall| $Heap@@39 this@@51) (= (_module.Lifetime.inv $Heap@@39 this@@51) (_module.Lifetime.localInv $Heap@@39 this@@51))))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2037|
 :pattern ( (_module.Lifetime.inv $Heap@@39 this@@51) ($IsGoodHeap $Heap@@39))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@40 T@U) (this@@52 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@13 $Heap@@40 this@@52) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@40)) ($HeapSucc $prevHeap@@13 $Heap@@40)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Lifetime) ($IsAlloc refType this@@52 Tclass._module.Lifetime $prevHeap@@13)))))) (and (and (|_module.Lifetime.alive#canCall| $prevHeap@@13 this@@52) (=> (not (_module.Lifetime.alive $prevHeap@@13 this@@52)) (|_module.Lifetime.alive#canCall| $Heap@@40 this@@52))) (= (_module.Lifetime.sequenceInv2 $prevHeap@@13 $Heap@@40 this@@52)  (and (and (and (and (=> (not (_module.Lifetime.alive $prevHeap@@13 this@@52)) (not (_module.Lifetime.alive $Heap@@40 this@@52))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Lifetime.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@52) _module.Lifetime.owner))))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@52) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Lifetime.elements)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@52) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Lifetime.mightPointTo)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@52) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@40 this@@52) _module.Lifetime.mightPointFrom)))))))
 :qid |_12MutexLifetimeshortdfy.590:22|
 :skolemid |2073|
 :pattern ( (_module.Lifetime.sequenceInv2 $prevHeap@@13 $Heap@@40 this@@52) ($IsGoodHeap $Heap@@40))
))))
(assert (forall (($ly@@8 T@U) ($Heap@@41 T@U) (this@@53 T@U) (|_k#0@@5| Int) (|a#0@@8| T@U) (|x#0@@6| T@U) (|b#0@@8| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@41 this@@53 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|) (_module.Universe.outlivesThrough_h $ly@@8 $Heap@@41 this@@53 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1252|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@41 this@@53 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
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
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v bx@@5) ($IsBox bx@@5 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@5))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@22 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.OwnedU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.OwnedU32.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2362|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.OwnedU32.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Mutex.locked)) TBool $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2908|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Mutex.locked)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@14 T@U) ($Heap@@42 T@U) (this@@54 T@U) ) (!  (=> (or (|_module.OwnedU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@14 $Heap@@42 this@@54) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@14) ($IsGoodHeap $Heap@@42)) ($HeapSucc $prevHeap@@14 $Heap@@42)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.OwnedU32) ($IsAlloc refType this@@54 Tclass._module.OwnedU32 $prevHeap@@14)))))) (= (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@14 $Heap@@42 this@@54)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@14 this@@54) _module.OwnedU32.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@42 this@@54) _module.OwnedU32.value)))))))
 :qid |_12MutexLifetimeshortdfy.640:22|
 :skolemid |2382|
 :pattern ( (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@14 $Heap@@42 this@@54) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@55 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@43 this@@55) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.OwnedObject) ($IsAlloc refType this@@55 Tclass._module.OwnedObject $Heap@@43)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@43 this@@55) (= (_module.OwnedObject.objectFields $Heap@@43 this@@55) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@43 this@@55) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@55)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@43 this@@55) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@43 this@@55) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1774|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@43 this@@55) ($IsGoodHeap $Heap@@43))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@6 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@6 t@@0 h@@1) ($IsAllocBox bx@@6 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@6 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@24 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@28) Tclass._module.Universe $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1343|
 :pattern ( (_module.Object.universe $o@@28) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@25 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@29) Tclass._module.Lifetime $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1757|
 :pattern ( (_module.OwnedObject.lifetime $o@@29) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@30) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (_module.Object.universe $o@@30))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@31) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |1756|
 :pattern ( (_module.OwnedObject.lifetime $o@@31))
))))
(assert (forall (($ly@@9 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@56 T@U) (|_k#0@@6| Int) (|a#0@@9| T@U) (|b#0@@9| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@56 null)) (not true)) ($Is refType this@@56 Tclass._module.Universe))) (or (|_module.Universe.outlives_h#canCall| $h0@@11 this@@56 |_k#0@@6| |a#0@@9| |b#0@@9|) (and (and (<= (LitInt 0) |_k#0@@6|) ($Is refType |a#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@9| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@32 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (or (or (= $o@@32 this@@56) (and (and ($Is refType $o@@32 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 this@@56) _module.Universe.content)) ($Box refType $o@@32))) (= $f@@12 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@32 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 this@@56) _module.Universe.content)) ($Box refType $o@@32))) (= $f@@12 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@32) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@32) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1232|
)) (= (_module.Universe.outlives_h $ly@@9 $h0@@11 this@@56 |_k#0@@6| |a#0@@9| |b#0@@9|) (_module.Universe.outlives_h $ly@@9 $h1@@11 this@@56 |_k#0@@6| |a#0@@9| |b#0@@9|))))
 :qid |unknown.0:0|
 :skolemid |1233|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Universe.outlives_h $ly@@9 $h1@@11 this@@56 |_k#0@@6| |a#0@@9| |b#0@@9|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($Heap@@44 T@U) (this@@57 T@U) (|_k#0@@7| Int) (|a#0@@10| T@U) (|b#0@@10| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@44 this@@57 |_k#0@@7| |a#0@@10| |b#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@44) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.Universe) ($IsAlloc refType this@@57 Tclass._module.Universe $Heap@@44)))) (<= (LitInt 0) |_k#0@@7|)) ($Is refType |a#0@@10| Tclass._module.Lifetime)) ($Is refType |b#0@@10| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |a#0@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |b#0@@10|)))))) (and (=> (< 0 |_k#0@@7|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@44 this@@57 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|)))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1237|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@44 this@@57 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@44 this@@57 |_k#0@@7| |a#0@@10| |b#0@@10|)  (and (< 0 |_k#0@@7|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@44 this@@57 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :qid |_12MutexLifetimeshortdfy.162:36|
 :skolemid |1236|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@44 this@@57 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@57) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1238|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@44 this@@57 |_k#0@@7| |a#0@@10| |b#0@@10|) ($IsGoodHeap $Heap@@44))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@45 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@45 this@@58) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@45) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@58 Tclass._module.MutexGuardU32 $Heap@@45)))))) (and (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@58))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.Object.universe this@@58)) _module.Universe.content))) (|_module.Universe.outlives#canCall| $Heap@@45 (_module.Object.universe this@@58) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@58))) (= (_module.MutexGuardU32.localUserInv $Heap@@45 this@@58)  (and (and (and (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@58))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 (_module.Object.universe this@@58)) _module.Universe.content))) (_module.Universe.outlives ($LS $LZ) $Heap@@45 (_module.Object.universe this@@58) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@58))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) _module.OwnedObject.owner)) null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) _module.Mutex.locked)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@58)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@58)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.mutex))) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@45 this@@58) _module.MutexGuardU32.data)))))))
 :qid |_12MutexLifetimeshortdfy.857:19|
 :skolemid |3230|
 :pattern ( (_module.MutexGuardU32.localUserInv $Heap@@45 this@@58) ($IsGoodHeap $Heap@@45))
))))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@59 null)) (not true)) ($Is refType this@@59 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@33 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (or (and (= $o@@33 this@@59) (= $f@@13 _module.Lifetime.mightPointFrom)) (and (= $o@@33 this@@59) (= $f@@13 _module.Lifetime.elements)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@33) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@33) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1911|
)) (= (_module.Lifetime.unused $h0@@12 this@@59) (_module.Lifetime.unused $h1@@12 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1912|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Lifetime.unused $h1@@12 this@@59))
)))
(assert (forall (($h@@26 T@U) ($o@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@34) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1903|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@34) _module.Lifetime.owner)))
)))
(assert (forall (($h@@27 T@U) ($o@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@35) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2905|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@35) _module.Mutex.data)))
)))
(assert (forall (($h@@28 T@U) ($o@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@36) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3201|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@36) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@29 T@U) ($o@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@37) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3203|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@37) _module.MutexGuardU32.data)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@46 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@46 this@@60) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@46) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Mutex) ($IsAlloc refType this@@60 Tclass._module.Mutex $Heap@@46)))))) (= (_module.Mutex.objectUserFields $Heap@@46 this@@60) (let ((|r#0| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@60) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@46 this@@60) _module.Mutex.data)))))
|r#0|)))
 :qid |_12MutexLifetimeshortdfy.763:18|
 :skolemid |2924|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@46 this@@60) ($IsGoodHeap $Heap@@46))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@15 T@U) ($Heap@@47 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@15 $Heap@@47 this@@61) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@61 null)) (not true)) ($Is refType this@@61 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@47 this@@61) (_module.Thread.sequenceInv2 $prevHeap@@15 $Heap@@47 this@@61)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |1552|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@47 this@@61) ($Is refType this@@61 Tclass._module.Thread) ($IsGoodHeap $Heap@@47))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@15 $Heap@@47 this@@61) (_module.Thread.sequenceInv2 $prevHeap@@15 $Heap@@47 this@@61) ($IsGoodHeap $Heap@@47))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@16 T@U) ($Heap@@48 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.OwnedU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@16 $Heap@@48 this@@62) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@48 this@@62) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@48 this@@62)))
 :qid |_12MutexLifetimeshortdfy.519:22|
 :skolemid |2383|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@48 this@@62) ($Is refType this@@62 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@48))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@48 this@@62) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@16 $Heap@@48 this@@62) ($IsGoodHeap $Heap@@48))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@17 T@U) ($Heap@@49 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Mutex.unchangedNonvolatileUserFields#canCall| $prevHeap@@17 $Heap@@49 this@@63) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.Mutex)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@49 this@@63) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@49 this@@63)))
 :qid |_12MutexLifetimeshortdfy.519:22|
 :skolemid |2932|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@49 this@@63) ($Is refType this@@63 Tclass._module.Mutex) ($IsGoodHeap $Heap@@49))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@49 this@@63) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@17 $Heap@@49 this@@63) ($IsGoodHeap $Heap@@49))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@18 T@U) ($Heap@@50 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@18 $Heap@@50 this@@64) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@50 this@@64) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@50 this@@64)))
 :qid |_12MutexLifetimeshortdfy.519:22|
 :skolemid |3224|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@50 this@@64) ($Is refType this@@64 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@50))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@50 this@@64) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@18 $Heap@@50 this@@64) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@19 T@U) ($Heap@@51 T@U) (this@@65 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@19 $Heap@@51 this@@65) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@65 null)) (not true)) ($Is refType this@@65 Tclass._module.Lifetime)))) (= (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@51 this@@65) (_module.Lifetime.sequenceInv2 $prevHeap@@19 $Heap@@51 this@@65)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |2074|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@51 this@@65) ($Is refType this@@65 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@51))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@19 $Heap@@51 this@@65) (_module.Lifetime.sequenceInv2 $prevHeap@@19 $Heap@@51 this@@65) ($IsGoodHeap $Heap@@51))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@20 T@U) ($Heap@@52 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@20 $Heap@@52 this@@66) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@66 null)) (not true)) ($Is refType this@@66 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@52 this@@66) (_module.OwnedObject.sequenceInv2 $prevHeap@@20 $Heap@@52 this@@66)))
 :qid |_12MutexLifetimeshortdfy.353:22|
 :skolemid |1837|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@52 this@@66) ($Is refType this@@66 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@52))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@20 $Heap@@52 this@@66) (_module.OwnedObject.sequenceInv2 $prevHeap@@20 $Heap@@52 this@@66) ($IsGoodHeap $Heap@@52))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@53 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@53 this@@67) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@53) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Mutex) ($IsAlloc refType this@@67 Tclass._module.Mutex $Heap@@53)))))) (= (_module.Mutex.localUserInv $Heap@@53 this@@67)  (and (and (= (_module.OwnedObject.lifetime this@@67) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.data)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.locked))) (and ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.data))) _module.OwnedObject.owner)) Tclass._module.MutexGuardU32) (let ((|mutexGuard#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.data))) _module.OwnedObject.owner))))
 (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 |mutexGuard#0|) _module.OwnedObject.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 |mutexGuard#0|) _module.MutexGuardU32.mutex)) this@@67)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType |mutexGuard#0|)))))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.locked)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.data))) _module.OwnedObject.owner)) this@@67) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@67) _module.Mutex.guards)) |Set#Empty|))))))
 :qid |_12MutexLifetimeshortdfy.769:19|
 :skolemid |2938|
 :pattern ( (_module.Mutex.localUserInv $Heap@@53 this@@67) ($IsGoodHeap $Heap@@53))
))))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@9 Tclass._module.Object))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thread))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@11 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@12 Tclass._module.Object?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@13 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($IsBox bx@@15 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1328|
 :pattern ( ($IsBox bx@@16 Tclass._module.ObjectClassKind))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1749|
 :pattern ( ($IsBox bx@@17 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2358|
 :pattern ( ($IsBox bx@@18 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |2363|
 :pattern ( ($IsBox bx@@19 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |2902|
 :pattern ( ($IsBox bx@@20 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |2909|
 :pattern ( ($IsBox bx@@21 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@22)) bx@@22) ($Is refType ($Unbox refType bx@@22) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |2912|
 :pattern ( ($IsBox bx@@22 Tclass._module.Mutex))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@23)) bx@@23) ($Is refType ($Unbox refType bx@@23) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsBox bx@@23 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Thread)  (and ($Is refType |c#0@@9| Tclass._module.Thread?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1747|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@10| Tclass._module.OwnedObject?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.Lifetime)  (and ($Is refType |c#0@@11| Tclass._module.Lifetime?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2356|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Lifetime))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Lifetime?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@12| Tclass._module.OwnedU32?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2608|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.Mutex)  (and ($Is refType |c#0@@13| Tclass._module.Mutex?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@14| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3487|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.MutexGuardU32?))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@21 T@U) ($Heap@@54 T@U) (this@@68 T@U) (|running#0@@0| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@21 $Heap@@54 this@@68 |running#0@@0|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@21) ($IsGoodHeap $Heap@@54)) ($HeapSucc $prevHeap@@21 $Heap@@54)) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Universe) ($IsAlloc refType this@@68 Tclass._module.Universe $prevHeap@@21)))) ($Is SetType |running#0@@0| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@21 $Heap@@54 this@@68) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@21 $Heap@@54 this@@68) (=> (|Set#Subset| |running#0@@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content))) (and (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@4|))) (=> (not (forall (($o@@38 T@U) ($f@@14 T@U) ) (!  (=> (or (not (= $o@@38 null)) (not true)) (=> (= $o@@38 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@38) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@38) $f@@14))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |881|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@38) $f@@14))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@21 $Heap@@54 |o#0@@4|))))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |882|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@54 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@4|)))
)) (=> (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@5|)))) (or (forall (($o@@39 T@U) ($f@@15 T@U) ) (!  (=> (or (not (= $o@@39 null)) (not true)) (=> (= $o@@39 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@39) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@39) $f@@15))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |885|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@39) $f@@15))
)) (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@54 |o#0@@5|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |886|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@54 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (=> (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@21)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 |o#1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |884|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#1|)))
)) (forall ((|l#0@@0| T@U) ) (!  (=> ($Is refType |l#0@@0| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |l#0@@0|)) (=> (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@0|) _module.Lifetime.owner))) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@0|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@21) (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@21 $Heap@@54 |l#0@@0|)))))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |883|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@21 $Heap@@54 |l#0@@0|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@0|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |l#0@@0|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@54 this@@68 |running#0@@0|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@21 $Heap@@54 this@@68) (|Set#Subset| |running#0@@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)))) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@6|)))) (or (forall (($o@@40 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@40 null)) (not true)) (=> (= $o@@40 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@40) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 $o@@40) $f@@16))))
 :qid |_12MutexLifetimeshortdfy.59:65|
 :skolemid |877|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 $o@@40) $f@@16))
)) (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@54 |o#0@@6|)))
 :qid |_12MutexLifetimeshortdfy.59:16|
 :skolemid |878|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@21 $Heap@@54 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@68) _module.Universe.content)) ($Box refType |o#0@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#0@@6|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#1@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@21)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 |o#1@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimeshortdfy.62:16|
 :skolemid |879|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 |o#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |o#1@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |o#1@@0|)))
))) (forall ((|l#0@@1| T@U) ) (!  (=> (and ($Is refType |l#0@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |l#0@@1|))) (=> (and (not (|Set#IsMember| |running#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@1|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@1|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@21)) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@21 $Heap@@54 |l#0@@1|)))
 :qid |_12MutexLifetimeshortdfy.68:16|
 :skolemid |880|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@21 $Heap@@54 |l#0@@1|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 |l#0@@1|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@21 this@@68) _module.Universe.content)) ($Box refType |l#0@@1|)))
))))))
 :qid |_12MutexLifetimeshortdfy.52:22|
 :skolemid |887|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@21 $Heap@@54 this@@68 |running#0@@0|) ($IsGoodHeap $Heap@@54))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@55 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@55 this@@69) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@55) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.OwnedU32) ($IsAlloc refType this@@69 Tclass._module.OwnedU32 $Heap@@55)))))) ($Is SetType (_module.OwnedU32.objectUserFields $Heap@@55 this@@69) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.638:18|
 :skolemid |2372|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@55 this@@69))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@56 T@U) (this@@70 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@56 this@@70) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@70 null)) (not true)) (and ($Is refType this@@70 Tclass._module.Mutex) ($IsAlloc refType this@@70 Tclass._module.Mutex $Heap@@56)))))) ($Is SetType (_module.Mutex.objectUserFields $Heap@@56 this@@70) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.763:18|
 :skolemid |2921|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@56 this@@70))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@57 this@@71) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@71 Tclass._module.MutexGuardU32 $Heap@@57)))))) ($Is SetType (_module.MutexGuardU32.objectUserFields $Heap@@57 this@@71) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.848:18|
 :skolemid |3213|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@57 this@@71))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@58 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@58 this@@72) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@58) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.OwnedObject) ($IsAlloc refType this@@72 Tclass._module.OwnedObject $Heap@@58)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@58 this@@72) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1876|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@58 this@@72))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@59 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@59 this@@73) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@59) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.OwnedObject) ($IsAlloc refType this@@73 Tclass._module.OwnedObject $Heap@@59)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@59 this@@73) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1771|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@59 this@@73))
))))
(assert (forall (($h@@30 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@41) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@41) _module.Lifetime.owner)) Tclass._module.Thread? $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1904|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@41) _module.Lifetime.owner)))
)))
(assert (forall (($h@@31 T@U) ($o@@42 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@42) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@42) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2906|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@42) _module.Mutex.data)))
)))
(assert (forall (($h@@32 T@U) ($o@@43 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@43) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@43) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3202|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@43) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@33 T@U) ($o@@44 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@44) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@44) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3204|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@44) _module.MutexGuardU32.data)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@60 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Lifetime.unused#canCall| $Heap@@60 this@@74) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@60) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Lifetime) ($IsAlloc refType this@@74 Tclass._module.Lifetime $Heap@@60)))))) (= (_module.Lifetime.unused $Heap@@60 this@@74)  (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@60 this@@74) _module.Lifetime.mightPointFrom)) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@60 this@@74) _module.Lifetime.elements)) |Set#Empty|))))
 :qid |_12MutexLifetimeshortdfy.547:19|
 :skolemid |1915|
 :pattern ( (_module.Lifetime.unused $Heap@@60 this@@74) ($IsGoodHeap $Heap@@60))
))))
(assert  (=> (<= 17 $FunctionContextHeight) (forall (($Heap@@61 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@61 this@@75) (and (< 17 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@61) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.Object) ($IsAlloc refType this@@75 Tclass._module.Object $Heap@@61)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@61 (_module.Object.universe this@@75)) _module.Universe.content)) ($Box refType this@@75)) (|_module.Universe.globalInv#canCall| $Heap@@61 (_module.Object.universe this@@75))) (= (_module.Object.objectGlobalInv $Heap@@61 this@@75)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@61 (_module.Object.universe this@@75)) _module.Universe.content)) ($Box refType this@@75)) (_module.Universe.globalInv $Heap@@61 (_module.Object.universe this@@75))))))
 :qid |_12MutexLifetimeshortdfy.304:19|
 :skolemid |1355|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@61 this@@75) ($IsGoodHeap $Heap@@61))
))))
(assert (forall (($o@@45 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@45 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@45 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3492|
 :pattern ( ($IsAlloc refType $o@@45 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@46 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@46 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@46 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsAlloc refType $o@@46 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@47 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@47 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@47 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsAlloc refType $o@@47 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($o@@48 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@48 Tclass._module.OwnedU32? $heap@@2) ($IsAlloc refType $o@@48 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3504|
 :pattern ( ($IsAlloc refType $o@@48 Tclass._module.OwnedU32? $heap@@2))
)))
(assert (forall (($o@@49 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@49 Tclass._module.Mutex? $heap@@3) ($IsAlloc refType $o@@49 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3512|
 :pattern ( ($IsAlloc refType $o@@49 Tclass._module.Mutex? $heap@@3))
)))
(assert (forall (($o@@50 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@50 Tclass._module.MutexGuardU32? $heap@@4) ($IsAlloc refType $o@@50 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3516|
 :pattern ( ($IsAlloc refType $o@@50 Tclass._module.MutexGuardU32? $heap@@4))
)))
(assert (forall (($h@@34 T@U) ($o@@51 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@51 null)) (not true)) (= (dtype $o@@51) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@51) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1905|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@51) _module.Lifetime.elements)))
)))
(assert (forall (($h@@35 T@U) ($o@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@52) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@52) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@36 T@U) ($o@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@53) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1909|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@53) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@37 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.Mutex?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@54) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@54) _module.Mutex.guards)))
)))
(assert (forall (($h@@38 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@55 null)) (not true)) (= (dtype $o@@55) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@55) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@55) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1906|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@55) _module.Lifetime.elements)))
)))
(assert (forall (($h@@39 T@U) ($o@@56 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@56 null)) (not true)) (= (dtype $o@@56) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@56) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@56) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@39))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@56) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@40 T@U) ($o@@57 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@57 null)) (not true)) (= (dtype $o@@57) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@57) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@57) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@40))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1910|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@57) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@41 T@U) ($o@@58 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@58 null)) (not true)) (= (dtype $o@@58) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@58) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@58) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32) $h@@41))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2911|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@58) _module.Mutex.guards)))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@76 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@76 null)) (not true)) ($Is refType this@@76 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@59 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (and (= $o@@59 this@@76) (= $f@@17 _module.OwnedObject.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@59) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@59) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1758|
)) (= (_module.OwnedObject.alive $h0@@13 this@@76) (_module.OwnedObject.alive $h1@@13 this@@76))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1759|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.OwnedObject.alive $h1@@13 this@@76))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@77 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@77 null)) (not true)) ($Is refType this@@77 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@60 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (and (= $o@@60 this@@77) (= $f@@18 _module.Lifetime.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@60) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@60) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1916|
)) (= (_module.Lifetime.alive $h0@@14 this@@77) (_module.Lifetime.alive $h1@@14 this@@77))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1917|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Lifetime.alive $h1@@14 this@@77))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@22 T@U) ($Heap@@62 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@22 $Heap@@62 this@@78) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@22) ($IsGoodHeap $Heap@@62)) ($HeapSucc $prevHeap@@22 $Heap@@62)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.Thread) ($IsAlloc refType this@@78 Tclass._module.Thread $prevHeap@@22)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@22 $Heap@@62 this@@78) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.378:22|
 :skolemid |1551|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@22 $Heap@@62 this@@78) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@23 T@U) ($Heap@@63 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.Mutex.unchangedNonvolatileUserFields#canCall| $prevHeap@@23 $Heap@@63 this@@79) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@23) ($IsGoodHeap $Heap@@63)) ($HeapSucc $prevHeap@@23 $Heap@@63)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Mutex) ($IsAlloc refType this@@79 Tclass._module.Mutex $prevHeap@@23)))))) (= (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@63 this@@79) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.767:22|
 :skolemid |2931|
 :pattern ( (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@23 $Heap@@63 this@@79) ($IsGoodHeap $Heap@@63))
))))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@80 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@80 null)) (not true)) ($Is refType this@@80 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@61 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@61 null)) (not true)) (or (= $o@@61 this@@80) (= $o@@61 (_module.Object.universe this@@80)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@61) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@61) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1420|
)) (= (_module.Object.baseFieldsInv $h0@@15 this@@80) (_module.Object.baseFieldsInv $h1@@15 this@@80))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1421|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Object.baseFieldsInv $h1@@15 this@@80))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@81 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@81 null)) (not true)) ($Is refType this@@81 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@62 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@62 null)) (not true)) (or (= $o@@62 this@@81) (= $o@@62 (_module.Object.universe this@@81)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@62) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@62) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1502|
)) (= (_module.Thread.baseFieldsInv $h0@@16 this@@81) (_module.Thread.baseFieldsInv $h1@@16 this@@81))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1503|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Thread.baseFieldsInv $h1@@16 this@@81))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@82 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@82 null)) (not true)) ($Is refType this@@82 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@63 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@63 null)) (not true)) (or (= $o@@63 this@@82) (= $o@@63 (_module.Object.universe this@@82)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@63) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@63) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1776|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@17 this@@82) (_module.OwnedObject.baseFieldsInv $h1@@17 this@@82))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1777|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.baseFieldsInv $h1@@17 this@@82))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@83 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@83 null)) (not true)) ($Is refType this@@83 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@64 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (or (= $o@@64 this@@83) (= $o@@64 (_module.Object.universe this@@83)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@64) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@64) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1947|
)) (= (_module.Lifetime.baseFieldsInv $h0@@18 this@@83) (_module.Lifetime.baseFieldsInv $h1@@18 this@@83))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1948|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.Lifetime.baseFieldsInv $h1@@18 this@@83))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@64 T@U) (this@@84 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@64 this@@84) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@64) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.OwnedObject) ($IsAlloc refType this@@84 Tclass._module.OwnedObject $Heap@@64)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@64 this@@84) (= (_module.OwnedObject.baseFieldsInv $Heap@@64 this@@84) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@64 this@@84) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@64 (_module.Object.universe this@@84)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.432:19|
 :skolemid |1780|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@64 this@@84) ($IsGoodHeap $Heap@@64))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@65 T@U) (this@@85 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@65 this@@85) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@65) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.Object) ($IsAlloc refType this@@85 Tclass._module.Object $Heap@@65)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@85)) (|_module.Object.objectClassKind#canCall| this@@85)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@85) |#_module.ObjectClassKind.Thread|) ($Is refType this@@85 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@85)) (|_module.Object.objectClassKind#canCall| this@@85)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@85) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@85 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@85)) (|_module.Object.objectClassKind#canCall| this@@85)))))) (= (_module.Object.nonAliasing $Heap@@65 this@@85)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@85) |#_module.ObjectClassKind.Thread|) ($Is refType this@@85 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@85) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@85 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@85) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@85 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimeshortdfy.309:19|
 :skolemid |1368|
 :pattern ( (_module.Object.nonAliasing $Heap@@65 this@@85) ($IsGoodHeap $Heap@@65))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@86 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@86) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@86 null)) (not true)) ($Is refType this@@86 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@86) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1498|
 :pattern ( (_module.Thread.objectClassKind this@@86))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@87 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@87) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@87 null)) (not true)) ($Is refType this@@87 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@87) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1765|
 :pattern ( (_module.OwnedObject.objectClassKind this@@87))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@88 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@88) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@88 null)) (not true)) ($Is refType this@@88 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@88) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1943|
 :pattern ( (_module.Lifetime.objectClassKind this@@88))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@66 T@U) (this@@89 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@66 this@@89) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@66) (or (not (= this@@89 null)) (not true))) ($IsAlloc refType this@@89 Tclass._module.OwnedU32 $Heap@@66)))) ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@66 this@@89) (TSet Tclass._module.Object) $Heap@@66))
 :qid |_12MutexLifetimeshortdfy.638:18|
 :skolemid |2373|
 :pattern ( ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@66 this@@89) (TSet Tclass._module.Object) $Heap@@66))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@67 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@67 this@@90) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@67) (or (not (= this@@90 null)) (not true))) ($IsAlloc refType this@@90 Tclass._module.Mutex $Heap@@67)))) ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@67 this@@90) (TSet Tclass._module.Object) $Heap@@67))
 :qid |_12MutexLifetimeshortdfy.763:18|
 :skolemid |2922|
 :pattern ( ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@67 this@@90) (TSet Tclass._module.Object) $Heap@@67))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@68 T@U) (this@@91 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@68 this@@91) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@68) (or (not (= this@@91 null)) (not true))) ($IsAlloc refType this@@91 Tclass._module.MutexGuardU32 $Heap@@68)))) ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@68 this@@91) (TSet Tclass._module.Object) $Heap@@68))
 :qid |_12MutexLifetimeshortdfy.848:18|
 :skolemid |3214|
 :pattern ( ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@68 this@@91) (TSet Tclass._module.Object) $Heap@@68))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@69 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@69 this@@92) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@69) (or (not (= this@@92 null)) (not true))) ($IsAlloc refType this@@92 Tclass._module.OwnedObject $Heap@@69)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@69 this@@92) (TSet Tclass._module.Object) $Heap@@69))
 :qid |_12MutexLifetimeshortdfy.518:18|
 :skolemid |1877|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@69 this@@92) (TSet Tclass._module.Object) $Heap@@69))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@70 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@70 this@@93) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@70) (or (not (= this@@93 null)) (not true))) ($IsAlloc refType this@@93 Tclass._module.OwnedObject $Heap@@70)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@70 this@@93) (TSet Tclass._module.Object) $Heap@@70))
 :qid |_12MutexLifetimeshortdfy.426:18|
 :skolemid |1772|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@70 this@@93) (TSet Tclass._module.Object) $Heap@@70))
))))
(assert (forall (($ly@@11 T@U) ($Heap@@71 T@U) (this@@94 T@U) (|_k#0@@8| Int) (|a#0@@11| T@U) (|b#0@@11| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@71 this@@94 |_k#0@@8| |a#0@@11| |b#0@@11|) (_module.Universe.outlives_h $ly@@11 $Heap@@71 this@@94 |_k#0@@8| |a#0@@11| |b#0@@11|))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1230|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@71 this@@94 |_k#0@@8| |a#0@@11| |b#0@@11|))
)))
(assert (forall (($ly@@12 T@U) ($Heap@@72 T@U) (this@@95 T@U) (|a#0@@12| T@U) (|x#0@@7| T@U) (|b#0@@12| T@U) ) (! (= (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@72 this@@95 |a#0@@12| |x#0@@7| |b#0@@12|) (_module.Universe.outlivesThrough $ly@@12 $Heap@@72 this@@95 |a#0@@12| |x#0@@7| |b#0@@12|))
 :qid |_12MutexLifetimeshortdfy.165:19|
 :skolemid |1239|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@72 this@@95 |a#0@@12| |x#0@@7| |b#0@@12|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@73 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@73 this@@96) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@73) (and (or (not (= this@@96 null)) (not true)) (and ($Is refType this@@96 Tclass._module.Object) ($IsAlloc refType this@@96 Tclass._module.Object $Heap@@73)))))) (_module.Object.triggerAxioms $Heap@@73 this@@96))
 :qid |_12MutexLifetimeshortdfy.314:19|
 :skolemid |1374|
 :pattern ( (_module.Object.triggerAxioms $Heap@@73 this@@96))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@74 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@74 this@@97) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@74) (and (or (not (= this@@97 null)) (not true)) (and ($Is refType this@@97 Tclass._module.OwnedObject) ($IsAlloc refType this@@97 Tclass._module.OwnedObject $Heap@@74)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@74 this@@97) (=> (_module.Object.objectGlobalBaseInv $Heap@@74 this@@97) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 (_module.OwnedObject.lifetime this@@97)) _module.Lifetime.elements)) ($Box refType this@@97)) (and (|_module.Lifetime.alive#canCall| $Heap@@74 (_module.OwnedObject.lifetime this@@97)) (=> (=> (_module.Lifetime.alive $Heap@@74 (_module.OwnedObject.lifetime this@@97)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@97) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@97) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv#canCall| $Heap@@74 this@@97))))))) (= (_module.OwnedObject.localInv $Heap@@74 this@@97)  (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@74 this@@97) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 (_module.OwnedObject.lifetime this@@97)) _module.Lifetime.elements)) ($Box refType this@@97))) (=> (_module.Lifetime.alive $Heap@@74 (_module.OwnedObject.lifetime this@@97)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@97) _module.OwnedObject.owner)) null)) (not true)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@74 this@@97) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv $Heap@@74 this@@97))))))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1801|
 :pattern ( (_module.OwnedObject.localInv $Heap@@74 this@@97) ($IsGoodHeap $Heap@@74))
))))
(assert (forall (($ly@@13 T@U) ($h0@@19 T@U) ($h1@@19 T@U) (this@@98 T@U) (|a#0@@13| T@U) (|x#0@@8| T@U) (|b#0@@13| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@98 null)) (not true)) ($Is refType this@@98 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough#canCall| $h0@@19 this@@98 |a#0@@13| |x#0@@8| |b#0@@13|) (and (and ($Is refType |a#0@@13| Tclass._module.Lifetime) ($Is refType |x#0@@8| Tclass._module.Lifetime)) ($Is refType |b#0@@13| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@65 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (or (or (= $o@@65 this@@98) (and (and ($Is refType $o@@65 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 this@@98) _module.Universe.content)) ($Box refType $o@@65))) (= $f@@23 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@65 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 this@@98) _module.Universe.content)) ($Box refType $o@@65))) (= $f@@23 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@65) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@65) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |1241|
)) (= (_module.Universe.outlivesThrough $ly@@13 $h0@@19 this@@98 |a#0@@13| |x#0@@8| |b#0@@13|) (_module.Universe.outlivesThrough $ly@@13 $h1@@19 this@@98 |a#0@@13| |x#0@@8| |b#0@@13|))))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.Universe.outlivesThrough $ly@@13 $h1@@19 this@@98 |a#0@@13| |x#0@@8| |b#0@@13|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c))
)))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@75 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@75 this@@99) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@75) (and (or (not (= this@@99 null)) (not true)) (and ($Is refType this@@99 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@99 Tclass._module.MutexGuardU32 $Heap@@75)))))) (and (and (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@75 this@@99) (=> (_module.MutexGuardU32.localUserInv $Heap@@75 this@@99) (|_module.OwnedObject.localInv#canCall| $Heap@@75 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@75 this@@99) _module.MutexGuardU32.mutex))))) (= (_module.MutexGuardU32.userInv $Heap@@75 this@@99)  (and (_module.MutexGuardU32.localUserInv $Heap@@75 this@@99) (_module.OwnedObject.localInv $Heap@@75 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@75 this@@99) _module.MutexGuardU32.mutex)))))))
 :qid |_12MutexLifetimeshortdfy.869:19|
 :skolemid |3238|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@75 this@@99) ($IsGoodHeap $Heap@@75))
))))
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
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 TBool) (and (= ($Box boolType ($Unbox boolType bx@@25)) bx@@25) ($Is boolType ($Unbox boolType bx@@25) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@25 TBool))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@76 T@U) (this@@100 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@76 this@@100) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@76) (and (or (not (= this@@100 null)) (not true)) (and ($Is refType this@@100 Tclass._module.OwnedU32) ($IsAlloc refType this@@100 Tclass._module.OwnedU32 $Heap@@76)))))) (=> (_module.OwnedU32.userInv $Heap@@76 this@@100) (_module.OwnedU32.localUserInv $Heap@@76 this@@100)))
 :qid |_12MutexLifetimeshortdfy.645:19|
 :skolemid |2394|
 :pattern ( (_module.OwnedU32.userInv $Heap@@76 this@@100))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@77 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@77 this@@101) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@77) (and (or (not (= this@@101 null)) (not true)) (and ($Is refType this@@101 Tclass._module.Thread) ($IsAlloc refType this@@101 Tclass._module.Thread $Heap@@77)))))) (=> (_module.Thread.localInv $Heap@@77 this@@101) (_module.Object.objectGlobalBaseInv $Heap@@77 this@@101)))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1518|
 :pattern ( (_module.Thread.localInv $Heap@@77 this@@101))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@78 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@78 this@@102) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@78) (and (or (not (= this@@102 null)) (not true)) (and ($Is refType this@@102 Tclass._module.Lifetime) ($IsAlloc refType this@@102 Tclass._module.Lifetime $Heap@@78)))))) (=> (_module.Lifetime.localInv $Heap@@78 this@@102) (_module.Object.objectGlobalBaseInv $Heap@@78 this@@102)))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1968|
 :pattern ( (_module.Lifetime.localInv $Heap@@78 this@@102))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@79 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@79 this@@103) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@79) (and (or (not (= this@@103 null)) (not true)) (and ($Is refType this@@103 Tclass._module.Thread) ($IsAlloc refType this@@103 Tclass._module.Thread $Heap@@79)))))) (=> (_module.Thread.inv $Heap@@79 this@@103) (_module.Thread.localInv $Heap@@79 this@@103)))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1530|
 :pattern ( (_module.Thread.inv $Heap@@79 this@@103))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@80 T@U) (this@@104 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@80 this@@104) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@80) (and (or (not (= this@@104 null)) (not true)) (and ($Is refType this@@104 Tclass._module.Lifetime) ($IsAlloc refType this@@104 Tclass._module.Lifetime $Heap@@80)))))) (=> (_module.Lifetime.inv $Heap@@80 this@@104) (_module.Lifetime.localInv $Heap@@80 this@@104)))
 :qid |_12MutexLifetimeshortdfy.588:19|
 :skolemid |2035|
 :pattern ( (_module.Lifetime.inv $Heap@@80 this@@104))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@81 T@U) (this@@105 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@81 this@@105) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@81) (and (or (not (= this@@105 null)) (not true)) (and ($Is refType this@@105 Tclass._module.OwnedObject) ($IsAlloc refType this@@105 Tclass._module.OwnedObject $Heap@@81)))))) (=> (_module.OwnedObject.localInv $Heap@@81 this@@105) (_module.Object.objectGlobalBaseInv $Heap@@81 this@@105)))
 :qid |_12MutexLifetimeshortdfy.442:19|
 :skolemid |1799|
 :pattern ( (_module.OwnedObject.localInv $Heap@@81 this@@105))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@82 T@U) (this@@106 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@82 this@@106) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@82) (and (or (not (= this@@106 null)) (not true)) (and ($Is refType this@@106 Tclass._module.Object) ($IsAlloc refType this@@106 Tclass._module.Object $Heap@@82)))))) (=> (_module.Object.localInv $Heap@@82 this@@106) (_module.Object.objectGlobalBaseInv $Heap@@82 this@@106)))
 :qid |_12MutexLifetimeshortdfy.350:19|
 :skolemid |1428|
 :pattern ( (_module.Object.localInv $Heap@@82 this@@106))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@83 T@U) (this@@107 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@83 this@@107) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@83) (and (or (not (= this@@107 null)) (not true)) (and ($Is refType this@@107 Tclass._module.Mutex) ($IsAlloc refType this@@107 Tclass._module.Mutex $Heap@@83)))))) (=> (_module.Mutex.userInv $Heap@@83 this@@107) (_module.Mutex.localUserInv $Heap@@83 this@@107)))
 :qid |_12MutexLifetimeshortdfy.785:19|
 :skolemid |2943|
 :pattern ( (_module.Mutex.userInv $Heap@@83 this@@107))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@84 T@U) (this@@108 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@84 this@@108) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@84) (and (or (not (= this@@108 null)) (not true)) (and ($Is refType this@@108 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@108 Tclass._module.MutexGuardU32 $Heap@@84)))))) (=> (_module.MutexGuardU32.userInv $Heap@@84 this@@108) (_module.MutexGuardU32.localUserInv $Heap@@84 this@@108)))
 :qid |_12MutexLifetimeshortdfy.869:19|
 :skolemid |3236|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@84 this@@108))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@85 T@U) (this@@109 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@85 this@@109) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@85) (and (or (not (= this@@109 null)) (not true)) (and ($Is refType this@@109 Tclass._module.OwnedObject) ($IsAlloc refType this@@109 Tclass._module.OwnedObject $Heap@@85)))))) (=> (_module.OwnedObject.userInv $Heap@@85 this@@109) (_module.OwnedObject.localUserInv $Heap@@85 this@@109)))
 :qid |_12MutexLifetimeshortdfy.522:19|
 :skolemid |1893|
 :pattern ( (_module.OwnedObject.userInv $Heap@@85 this@@109))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@86 T@U) (this@@110 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@86 this@@110) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@86) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.OwnedObject) ($IsAlloc refType this@@110 Tclass._module.OwnedObject $Heap@@86)))))) (=> (_module.OwnedObject.inv $Heap@@86 this@@110) (_module.OwnedObject.localInv $Heap@@86 this@@110)))
 :qid |_12MutexLifetimeshortdfy.448:19|
 :skolemid |1813|
 :pattern ( (_module.OwnedObject.inv $Heap@@86 this@@110))
))))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($Heap@@87 T@U) (this@@111 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@87 this@@111) (and (< 15 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@87) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.Object) ($IsAlloc refType this@@111 Tclass._module.Object $Heap@@87)))))) (=> (_module.Object.inv $Heap@@87 this@@111) (_module.Object.localInv $Heap@@87 this@@111)))
 :qid |_12MutexLifetimeshortdfy.352:19|
 :skolemid |1438|
 :pattern ( (_module.Object.inv $Heap@@87 this@@111))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall (($ly@@14 T@U) ($h0@@20 T@U) ($h1@@20 T@U) (this@@112 T@U) (|_k#0@@9| Int) (|a#0@@14| T@U) (|x#0@@9| T@U) (|b#0@@14| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@112 null)) (not true)) ($Is refType this@@112 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough_h#canCall| $h0@@20 this@@112 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (and (and (and (<= (LitInt 0) |_k#0@@9|) ($Is refType |a#0@@14| Tclass._module.Lifetime)) ($Is refType |x#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@14| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@66 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@66 null)) (not true)) (or (or (= $o@@66 this@@112) (and (and ($Is refType $o@@66 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 this@@112) _module.Universe.content)) ($Box refType $o@@66))) (= $f@@24 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@66 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 this@@112) _module.Universe.content)) ($Box refType $o@@66))) (= $f@@24 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@66) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@66) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |1254|
)) (= (_module.Universe.outlivesThrough_h $ly@@14 $h0@@20 this@@112 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@20 this@@112 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@20 this@@112 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@24 T@U) ($Heap@@88 T@U) (this@@113 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@24 $Heap@@88 this@@113) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@24) ($IsGoodHeap $Heap@@88)) ($HeapSucc $prevHeap@@24 $Heap@@88)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.OwnedObject) ($IsAlloc refType this@@113 Tclass._module.OwnedObject $prevHeap@@24)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@113) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@88 this@@113) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@24 $Heap@@88 this@@113)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@24 $Heap@@88 this@@113)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@24 this@@113) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@88 this@@113) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@24 $Heap@@88 this@@113)))))
 :qid |_12MutexLifetimeshortdfy.437:22|
 :skolemid |1795|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@24 $Heap@@88 this@@113) ($IsGoodHeap $Heap@@88))
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
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@26 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@26) ($IsAllocBox bx@@26 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@26))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($ly@@15 T@U) ($h0@@21 T@U) ($h1@@21 T@U) (this@@114 T@U) (|a#0@@15| T@U) (|b#0@@15| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@114 null)) (not true)) ($Is refType this@@114 Tclass._module.Universe))) (or (|_module.Universe.outlives#canCall| $h0@@21 this@@114 |a#0@@15| |b#0@@15|) (and ($Is refType |a#0@@15| Tclass._module.Lifetime) ($Is refType |b#0@@15| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@67 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (or (or (= $o@@67 this@@114) (and (and ($Is refType $o@@67 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 this@@114) _module.Universe.content)) ($Box refType $o@@67))) (= $f@@25 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@67 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 this@@114) _module.Universe.content)) ($Box refType $o@@67))) (= $f@@25 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@67) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@67) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |1215|
)) (= (_module.Universe.outlives $ly@@15 $h0@@21 this@@114 |a#0@@15| |b#0@@15|) (_module.Universe.outlives $ly@@15 $h1@@21 this@@114 |a#0@@15| |b#0@@15|))))
 :qid |unknown.0:0|
 :skolemid |1216|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Universe.outlives $ly@@15 $h1@@21 this@@114 |a#0@@15| |b#0@@15|))
)))
(assert (forall (($h@@42 T@U) ($o@@68 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@68 null)) (not true)) ($Is refType $o@@68 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@68) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@68) _module.OwnedObject.nonvolatileVersion)) TInt $h@@42))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1753|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@68) _module.OwnedObject.nonvolatileVersion)))
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
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@115 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@115 null)) (not true)) ($Is refType this@@115 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@69 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@69 null)) (not true)) (= $o@@69 this@@115)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@69) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@69) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |1364|
)) (= (_module.Object.nonAliasing $h0@@22 this@@115) (_module.Object.nonAliasing $h1@@22 this@@115))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1365|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Object.nonAliasing $h1@@22 this@@115))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@116 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@116 null)) (not true)) ($Is refType this@@116 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@70 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (= $o@@70 this@@116)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@70) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@70) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |1372|
)) (= (_module.Object.triggerAxioms $h0@@23 this@@116) (_module.Object.triggerAxioms $h1@@23 this@@116))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1373|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Object.triggerAxioms $h1@@23 this@@116))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@117 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@117)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@117 null)) (not true)) ($Is refType this@@117 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@117)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :weight 3
 :skolemid |1499|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@117)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@118 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@118)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@118 null)) (not true)) ($Is refType this@@118 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@118)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :weight 3
 :skolemid |1766|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@118)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@119 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@119)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@119 null)) (not true)) ($Is refType this@@119 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@119)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :weight 3
 :skolemid |1944|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@119)))
))))
(assert (forall (($h@@43 T@U) ($o@@71 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@71 null)) (not true)) (= (dtype $o@@71) Tclass._module.OwnedU32?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@71) _module.OwnedU32.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2361|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@71) _module.OwnedU32.value)))
)))
(assert (forall (($h@@44 T@U) ($o@@72 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (or (not (= $o@@72 null)) (not true)) (= (dtype $o@@72) Tclass._module.Mutex?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@72) _module.Mutex.locked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2907|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@72) _module.Mutex.locked)))
)))
(assert (forall (($h0@@24 T@U) ($h1@@24 T@U) (this@@120 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@120 null)) (not true)) ($Is refType this@@120 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@73 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@73 null)) (not true)) (or (= $o@@73 this@@120) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 this@@120) _module.Universe.content)) ($Box refType $o@@73)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@73) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@73) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |818|
)) (= (_module.Universe.globalBaseInv $h0@@24 this@@120) (_module.Universe.globalBaseInv $h1@@24 this@@120))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Universe.globalBaseInv $h1@@24 this@@120))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@89 T@U) (this@@121 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@89 this@@121) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@89) (and (or (not (= this@@121 null)) (not true)) (and ($Is refType this@@121 Tclass._module.Lifetime) ($IsAlloc refType this@@121 Tclass._module.Lifetime $Heap@@89)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@89 this@@121) (=> (_module.Object.objectGlobalBaseInv $Heap@@89 this@@121) (=> (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#0@@7|))) (= (_module.OwnedObject.lifetime |o#0@@7|) this@@121))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1983|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#0@@7|)))
)) (and (forall ((|o#1@@1| T@U) ) (!  (=> ($Is refType |o#1@@1| Tclass._module.OwnedObject) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@1|)) (and (|_module.OwnedObject.alive#canCall| $Heap@@89 |o#1@@1|) (|_module.Lifetime.alive#canCall| $Heap@@89 this@@121))))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1976|
 :pattern ( (_module.OwnedObject.alive $Heap@@89 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@1|)))
)) (=> (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@2|))) (= (_module.OwnedObject.alive $Heap@@89 |o#1@@2|) (_module.Lifetime.alive $Heap@@89 this@@121)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1982|
 :pattern ( (_module.OwnedObject.alive $Heap@@89 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@2|)))
)) (and (and (|_module.Lifetime.alive#canCall| $Heap@@89 this@@121) (=> (_module.Lifetime.alive $Heap@@89 this@@121) (forall ((|l#0@@2| T@U) ) (!  (=> ($Is refType |l#0@@2| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@2|)) (|_module.Lifetime.alive#canCall| $Heap@@89 |l#0@@2|)))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1977|
 :pattern ( (_module.Lifetime.alive $Heap@@89 |l#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@2|)))
)))) (=> (=> (_module.Lifetime.alive $Heap@@89 this@@121) (forall ((|l#0@@3| T@U) ) (!  (=> (and ($Is refType |l#0@@3| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@3|))) (_module.Lifetime.alive $Heap@@89 |l#0@@3|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1981|
 :pattern ( (_module.Lifetime.alive $Heap@@89 |l#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@3|)))
))) (and (|_module.Lifetime.alive#canCall| $Heap@@89 this@@121) (=> (not (_module.Lifetime.alive $Heap@@89 this@@121)) (forall ((|l#1@@0| T@U) ) (!  (=> ($Is refType |l#1@@0| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@0|)) (|_module.Lifetime.alive#canCall| $Heap@@89 |l#1@@0|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1978|
 :pattern ( (_module.Lifetime.alive $Heap@@89 |l#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@0|)))
))))))))))) (= (_module.Lifetime.localInv $Heap@@89 this@@121)  (and (and (and (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@89 this@@121) (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#0@@8|))) (= (_module.OwnedObject.lifetime |o#0@@8|) this@@121))
 :qid |_12MutexLifetimeshortdfy.580:16|
 :skolemid |1970|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#0@@8|)))
))) (forall ((|o#1@@3| T@U) ) (!  (=> (and ($Is refType |o#1@@3| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@3|))) (= (_module.OwnedObject.alive $Heap@@89 |o#1@@3|) (_module.Lifetime.alive $Heap@@89 this@@121)))
 :qid |_12MutexLifetimeshortdfy.582:16|
 :skolemid |1971|
 :pattern ( (_module.OwnedObject.alive $Heap@@89 |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.elements)) ($Box refType |o#1@@3|)))
))) (=> (_module.Lifetime.alive $Heap@@89 this@@121) (forall ((|l#0@@4| T@U) ) (!  (=> (and ($Is refType |l#0@@4| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@4|))) (_module.Lifetime.alive $Heap@@89 |l#0@@4|))
 :qid |_12MutexLifetimeshortdfy.583:28|
 :skolemid |1972|
 :pattern ( (_module.Lifetime.alive $Heap@@89 |l#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@4|)))
)))) (=> (not (_module.Lifetime.alive $Heap@@89 this@@121)) (forall ((|l#1@@1| T@U) ) (!  (=> (and ($Is refType |l#1@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@1|))) (not (_module.Lifetime.alive $Heap@@89 |l#1@@1|)))
 :qid |_12MutexLifetimeshortdfy.584:29|
 :skolemid |1973|
 :pattern ( (_module.Lifetime.alive $Heap@@89 |l#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@1|)))
)))) (forall ((|l#2@@0| T@U) ) (!  (=> (and ($Is refType |l#2@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 |l#2@@0|) _module.Lifetime.mightPointFrom)) ($Box refType this@@121)))
 :qid |_12MutexLifetimeshortdfy.585:16|
 :skolemid |1974|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 |l#2@@0|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@0|)))
))) (forall ((|l#3@@0| T@U) ) (!  (=> (and ($Is refType |l#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 |l#3@@0|) _module.Lifetime.mightPointTo)) ($Box refType this@@121)))
 :qid |_12MutexLifetimeshortdfy.586:16|
 :skolemid |1975|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 |l#3@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@89 this@@121) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|)))
))))))
 :qid |_12MutexLifetimeshortdfy.578:19|
 :skolemid |1984|
 :pattern ( (_module.Lifetime.localInv $Heap@@89 this@@121) ($IsGoodHeap $Heap@@89))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) ($Heap@@90 T@U) (this@@122 T@U) (|a#0@@16| T@U) (|b#0@@16| T@U) (|_k#0@@10| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@90) (and (or (not (= this@@122 null)) (not true)) ($Is refType this@@122 Tclass._module.Universe))) ($Is refType |a#0@@16| Tclass._module.Lifetime)) ($Is refType |b#0@@16| Tclass._module.Lifetime)) (= |_k#0@@10| 0)) (not (_module.Universe.outlives_h $ly@@16 $Heap@@90 this@@122 |_k#0@@10| |a#0@@16| |b#0@@16|)))
 :qid |_12MutexLifetimeshortdfy.158:19|
 :skolemid |1225|
 :pattern ( (_module.Universe.outlives_h $ly@@16 $Heap@@90 this@@122 |_k#0@@10| |a#0@@16| |b#0@@16|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@25 T@U) ($Heap@@91 T@U) (this@@123 T@U) ) (!  (=> (or (|_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@25 $Heap@@91 this@@123) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@25) ($IsGoodHeap $Heap@@91)) ($HeapSucc $prevHeap@@25 $Heap@@91)) (and (or (not (= this@@123 null)) (not true)) (and ($Is refType this@@123 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@123 Tclass._module.MutexGuardU32 $prevHeap@@25)))))) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@91 this@@123)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@123) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@91 this@@123) _module.MutexGuardU32.mutex))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@25 this@@123) _module.MutexGuardU32.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@91 this@@123) _module.MutexGuardU32.data))))))
 :qid |_12MutexLifetimeshortdfy.852:22|
 :skolemid |3223|
 :pattern ( (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@25 $Heap@@91 this@@123) ($IsGoodHeap $Heap@@91))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1335|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h0@@25 T@U) ($h1@@25 T@U) (this@@124 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@124 null)) (not true)) ($Is refType this@@124 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@74 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@74 null)) (not true)) (= $o@@74 this@@124)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@74) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@74) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |1769|
)) (= (_module.OwnedObject.objectFields $h0@@25 this@@124) (_module.OwnedObject.objectFields $h1@@25 this@@124))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1770|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.OwnedObject.objectFields $h1@@25 this@@124))
)))
(assert (forall (($h0@@26 T@U) ($h1@@26 T@U) (this@@125 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@125 null)) (not true)) ($Is refType this@@125 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@75 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@75 null)) (not true)) (= $o@@75 this@@125)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@75) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@75) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |1874|
)) (= (_module.OwnedObject.objectUserFields $h0@@26 this@@125) (_module.OwnedObject.objectUserFields $h1@@26 this@@125))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1875|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.OwnedObject.objectUserFields $h1@@26 this@@125))
)))
(assert (forall (($h0@@27 T@U) ($h1@@27 T@U) (this@@126 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@126 null)) (not true)) ($Is refType this@@126 Tclass._module.OwnedU32))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@76 T@U) ($f@@31 T@U) ) (!  (=> (and (or (not (= $o@@76 null)) (not true)) (= $o@@76 this@@126)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@76) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@76) $f@@31)))
 :qid |unknown.0:0|
 :skolemid |2370|
)) (= (_module.OwnedU32.objectUserFields $h0@@27 this@@126) (_module.OwnedU32.objectUserFields $h1@@27 this@@126))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2371|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.OwnedU32.objectUserFields $h1@@27 this@@126))
)))
(assert (forall (($h0@@28 T@U) ($h1@@28 T@U) (this@@127 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@127 null)) (not true)) ($Is refType this@@127 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@77 T@U) ($f@@32 T@U) ) (!  (=> (and (or (not (= $o@@77 null)) (not true)) (= $o@@77 this@@127)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@77) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@77) $f@@32)))
 :qid |unknown.0:0|
 :skolemid |2919|
)) (= (_module.Mutex.objectUserFields $h0@@28 this@@127) (_module.Mutex.objectUserFields $h1@@28 this@@127))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2920|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Mutex.objectUserFields $h1@@28 this@@127))
)))
(assert (forall (($h0@@29 T@U) ($h1@@29 T@U) (this@@128 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@128 null)) (not true)) ($Is refType this@@128 Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@78 T@U) ($f@@33 T@U) ) (!  (=> (and (or (not (= $o@@78 null)) (not true)) (= $o@@78 this@@128)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@78) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@78) $f@@33)))
 :qid |unknown.0:0|
 :skolemid |3211|
)) (= (_module.MutexGuardU32.objectUserFields $h0@@29 this@@128) (_module.MutexGuardU32.objectUserFields $h1@@29 this@@128))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3212|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.MutexGuardU32.objectUserFields $h1@@29 this@@128))
)))
(assert (forall (($h@@45 T@U) ($o@@79 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@45) (and (or (not (= $o@@79 null)) (not true)) ($Is refType $o@@79 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@79) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@79) _module.OwnedObject.owner)) Tclass._module.Object? $h@@45))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1755|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@79) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@30 T@U) ($h1@@30 T@U) (this@@129 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@129 null)) (not true)) (and ($Is refType this@@129 Tclass._module.Universe) ($IsAlloc refType this@@129 Tclass._module.Universe $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@80 T@U) ($f@@34 T@U) ) (!  (=> (and (or (not (= $o@@80 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@80) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@80) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@80) $f@@34)))
 :qid |unknown.0:0|
 :skolemid |830|
)) (= (_module.Universe.globalInv $h0@@30 this@@129) (_module.Universe.globalInv $h1@@30 this@@129))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |831|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.Universe.globalInv $h1@@30 this@@129))
)))
(assert (forall (($h0@@31 T@U) ($h1@@31 T@U) (this@@130 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@130 null)) (not true)) (and ($Is refType this@@130 Tclass._module.Object) ($IsAlloc refType this@@130 Tclass._module.Object $h0@@31)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@81 T@U) ($f@@35 T@U) ) (!  (=> (and (or (not (= $o@@81 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@81) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@81) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@81) $f@@35)))
 :qid |unknown.0:0|
 :skolemid |1344|
)) (= (_module.Object.objectGlobalBaseInv $h0@@31 this@@130) (_module.Object.objectGlobalBaseInv $h1@@31 this@@130))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1345|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Object.objectGlobalBaseInv $h1@@31 this@@130))
)))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@131 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@131 null)) (not true)) (and ($Is refType this@@131 Tclass._module.Object) ($IsAlloc refType this@@131 Tclass._module.Object $h0@@32)))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@82 T@U) ($f@@36 T@U) ) (!  (=> (and (or (not (= $o@@82 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@82) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@82) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@82) $f@@36)))
 :qid |unknown.0:0|
 :skolemid |1351|
)) (= (_module.Object.objectGlobalInv $h0@@32 this@@131) (_module.Object.objectGlobalInv $h1@@32 this@@131))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1352|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Object.objectGlobalInv $h1@@32 this@@131))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@132 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@132 null)) (not true)) (and ($Is refType this@@132 Tclass._module.Object) ($IsAlloc refType this@@132 Tclass._module.Object $h0@@33)))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@83 T@U) ($f@@37 T@U) ) (!  (=> (and (or (not (= $o@@83 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@83) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@83) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@83) $f@@37)))
 :qid |unknown.0:0|
 :skolemid |1426|
)) (= (_module.Object.localInv $h0@@33 this@@132) (_module.Object.localInv $h1@@33 this@@132))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.Object.localInv $h1@@33 this@@132))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@133 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@133 null)) (not true)) (and ($Is refType this@@133 Tclass._module.Object) ($IsAlloc refType this@@133 Tclass._module.Object $h0@@34)))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@84 T@U) ($f@@38 T@U) ) (!  (=> (and (or (not (= $o@@84 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@84) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@84) $f@@38) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@84) $f@@38)))
 :qid |unknown.0:0|
 :skolemid |1436|
)) (= (_module.Object.inv $h0@@34 this@@133) (_module.Object.inv $h1@@34 this@@133))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1437|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Object.inv $h1@@34 this@@133))
)))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@134 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@134 null)) (not true)) (and ($Is refType this@@134 Tclass._module.Thread) ($IsAlloc refType this@@134 Tclass._module.Thread $h0@@35)))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@85 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@85 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@85) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@85) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@85) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1516|
)) (= (_module.Thread.localInv $h0@@35 this@@134) (_module.Thread.localInv $h1@@35 this@@134))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1517|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Thread.localInv $h1@@35 this@@134))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@135 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@135 null)) (not true)) (and ($Is refType this@@135 Tclass._module.Thread) ($IsAlloc refType this@@135 Tclass._module.Thread $h0@@36)))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@86 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@86 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@86) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@86) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@86) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |1528|
)) (= (_module.Thread.inv $h0@@36 this@@135) (_module.Thread.inv $h1@@36 this@@135))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1529|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.Thread.inv $h1@@36 this@@135))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@136 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@136 null)) (not true)) (and ($Is refType this@@136 Tclass._module.OwnedObject) ($IsAlloc refType this@@136 Tclass._module.OwnedObject $h0@@37)))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@87 T@U) ($f@@41 T@U) ) (!  (=> (and (or (not (= $o@@87 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@87) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@87) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@87) $f@@41)))
 :qid |unknown.0:0|
 :skolemid |1797|
)) (= (_module.OwnedObject.localInv $h0@@37 this@@136) (_module.OwnedObject.localInv $h1@@37 this@@136))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1798|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.OwnedObject.localInv $h1@@37 this@@136))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@137 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@137 null)) (not true)) (and ($Is refType this@@137 Tclass._module.OwnedObject) ($IsAlloc refType this@@137 Tclass._module.OwnedObject $h0@@38)))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@88 T@U) ($f@@42 T@U) ) (!  (=> (and (or (not (= $o@@88 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@88) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@88) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@88) $f@@42)))
 :qid |unknown.0:0|
 :skolemid |1811|
)) (= (_module.OwnedObject.inv $h0@@38 this@@137) (_module.OwnedObject.inv $h1@@38 this@@137))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1812|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.OwnedObject.inv $h1@@38 this@@137))
)))
(assert (forall (($h0@@39 T@U) ($h1@@39 T@U) (this@@138 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@138 null)) (not true)) (and ($Is refType this@@138 Tclass._module.OwnedObject) ($IsAlloc refType this@@138 Tclass._module.OwnedObject $h0@@39)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@89 T@U) ($f@@43 T@U) ) (!  (=> (and (or (not (= $o@@89 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@89) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@89) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@89) $f@@43)))
 :qid |unknown.0:0|
 :skolemid |1883|
)) (= (_module.OwnedObject.localUserInv $h0@@39 this@@138) (_module.OwnedObject.localUserInv $h1@@39 this@@138))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1884|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.OwnedObject.localUserInv $h1@@39 this@@138))
)))
(assert (forall (($h0@@40 T@U) ($h1@@40 T@U) (this@@139 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@139 null)) (not true)) (and ($Is refType this@@139 Tclass._module.OwnedObject) ($IsAlloc refType this@@139 Tclass._module.OwnedObject $h0@@40)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@90 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@90 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@90) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@90) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@90) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |1891|
)) (= (_module.OwnedObject.userInv $h0@@40 this@@139) (_module.OwnedObject.userInv $h1@@40 this@@139))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1892|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.OwnedObject.userInv $h1@@40 this@@139))
)))
(assert (forall (($h0@@41 T@U) ($h1@@41 T@U) (this@@140 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@41) ($IsGoodHeap $h1@@41)) (and (or (not (= this@@140 null)) (not true)) (and ($Is refType this@@140 Tclass._module.Lifetime) ($IsAlloc refType this@@140 Tclass._module.Lifetime $h0@@41)))) (and ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41))) (=> (forall (($o@@91 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@91 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@91) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@91) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@41 $o@@91) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |1966|
)) (= (_module.Lifetime.localInv $h0@@41 this@@140) (_module.Lifetime.localInv $h1@@41 this@@140))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1967|
 :pattern ( ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41) (_module.Lifetime.localInv $h1@@41 this@@140))
)))
(assert (forall (($h0@@42 T@U) ($h1@@42 T@U) (this@@141 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@42) ($IsGoodHeap $h1@@42)) (and (or (not (= this@@141 null)) (not true)) (and ($Is refType this@@141 Tclass._module.Lifetime) ($IsAlloc refType this@@141 Tclass._module.Lifetime $h0@@42)))) (and ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42))) (=> (forall (($o@@92 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@92 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@92) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@92) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@42 $o@@92) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |2033|
)) (= (_module.Lifetime.inv $h0@@42 this@@141) (_module.Lifetime.inv $h1@@42 this@@141))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2034|
 :pattern ( ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42) (_module.Lifetime.inv $h1@@42 this@@141))
)))
(assert (forall (($h0@@43 T@U) ($h1@@43 T@U) (this@@142 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@43) ($IsGoodHeap $h1@@43)) (and (or (not (= this@@142 null)) (not true)) (and ($Is refType this@@142 Tclass._module.OwnedU32) ($IsAlloc refType this@@142 Tclass._module.OwnedU32 $h0@@43)))) (and ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43))) (=> (forall (($o@@93 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@93 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@93) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@93) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@43 $o@@93) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |2385|
)) (= (_module.OwnedU32.localUserInv $h0@@43 this@@142) (_module.OwnedU32.localUserInv $h1@@43 this@@142))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2386|
 :pattern ( ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43) (_module.OwnedU32.localUserInv $h1@@43 this@@142))
)))
(assert (forall (($h0@@44 T@U) ($h1@@44 T@U) (this@@143 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@44) ($IsGoodHeap $h1@@44)) (and (or (not (= this@@143 null)) (not true)) (and ($Is refType this@@143 Tclass._module.OwnedU32) ($IsAlloc refType this@@143 Tclass._module.OwnedU32 $h0@@44)))) (and ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44))) (=> (forall (($o@@94 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@94 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@94) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@94) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@44 $o@@94) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |2392|
)) (= (_module.OwnedU32.userInv $h0@@44 this@@143) (_module.OwnedU32.userInv $h1@@44 this@@143))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2393|
 :pattern ( ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44) (_module.OwnedU32.userInv $h1@@44 this@@143))
)))
(assert (forall (($h0@@45 T@U) ($h1@@45 T@U) (this@@144 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@45) ($IsGoodHeap $h1@@45)) (and (or (not (= this@@144 null)) (not true)) (and ($Is refType this@@144 Tclass._module.Mutex) ($IsAlloc refType this@@144 Tclass._module.Mutex $h0@@45)))) (and ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45))) (=> (forall (($o@@95 T@U) ($f@@49 T@U) ) (!  (=> (and (or (not (= $o@@95 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@95) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@95) $f@@49) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@45 $o@@95) $f@@49)))
 :qid |unknown.0:0|
 :skolemid |2934|
)) (= (_module.Mutex.localUserInv $h0@@45 this@@144) (_module.Mutex.localUserInv $h1@@45 this@@144))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2935|
 :pattern ( ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45) (_module.Mutex.localUserInv $h1@@45 this@@144))
)))
(assert (forall (($h0@@46 T@U) ($h1@@46 T@U) (this@@145 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@46) ($IsGoodHeap $h1@@46)) (and (or (not (= this@@145 null)) (not true)) (and ($Is refType this@@145 Tclass._module.Mutex) ($IsAlloc refType this@@145 Tclass._module.Mutex $h0@@46)))) (and ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46))) (=> (forall (($o@@96 T@U) ($f@@50 T@U) ) (!  (=> (and (or (not (= $o@@96 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@96) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@96) $f@@50) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@46 $o@@96) $f@@50)))
 :qid |unknown.0:0|
 :skolemid |2941|
)) (= (_module.Mutex.userInv $h0@@46 this@@145) (_module.Mutex.userInv $h1@@46 this@@145))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2942|
 :pattern ( ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46) (_module.Mutex.userInv $h1@@46 this@@145))
)))
(assert (forall (($h0@@47 T@U) ($h1@@47 T@U) (this@@146 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@47) ($IsGoodHeap $h1@@47)) (and (or (not (= this@@146 null)) (not true)) (and ($Is refType this@@146 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@146 Tclass._module.MutexGuardU32 $h0@@47)))) (and ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47))) (=> (forall (($o@@97 T@U) ($f@@51 T@U) ) (!  (=> (and (or (not (= $o@@97 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@97) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@97) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@47 $o@@97) $f@@51)))
 :qid |unknown.0:0|
 :skolemid |3226|
)) (= (_module.MutexGuardU32.localUserInv $h0@@47 this@@146) (_module.MutexGuardU32.localUserInv $h1@@47 this@@146))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3227|
 :pattern ( ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47) (_module.MutexGuardU32.localUserInv $h1@@47 this@@146))
)))
(assert (forall (($h0@@48 T@U) ($h1@@48 T@U) (this@@147 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@48) ($IsGoodHeap $h1@@48)) (and (or (not (= this@@147 null)) (not true)) (and ($Is refType this@@147 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@147 Tclass._module.MutexGuardU32 $h0@@48)))) (and ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48))) (=> (forall (($o@@98 T@U) ($f@@52 T@U) ) (!  (=> (and (or (not (= $o@@98 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@48 $o@@98) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@48 $o@@98) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@48 $o@@98) $f@@52)))
 :qid |unknown.0:0|
 :skolemid |3234|
)) (= (_module.MutexGuardU32.userInv $h0@@48 this@@147) (_module.MutexGuardU32.userInv $h1@@48 this@@147))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3235|
 :pattern ( ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48) (_module.MutexGuardU32.userInv $h1@@48 this@@147))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@148 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| this@@148) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@148 null)) (not true)) ($Is refType this@@148 Tclass._module.OwnedU32)))) (= (_module.OwnedU32.volatileOwns this@@148) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimeshortdfy.637:19|
 :skolemid |2366|
 :pattern ( (_module.OwnedU32.volatileOwns this@@148))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@149 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| this@@149) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@149 null)) (not true)) ($Is refType this@@149 Tclass._module.MutexGuardU32)))) (= (_module.MutexGuardU32.volatileOwns this@@149) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimeshortdfy.847:19|
 :skolemid |3207|
 :pattern ( (_module.MutexGuardU32.volatileOwns this@@149))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@150 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| this@@150) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@150 null)) (not true)) ($Is refType this@@150 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.volatileOwns this@@150) (_module.OwnedU32.volatileOwns this@@150)))
 :qid |_12MutexLifetimeshortdfy.517:19|
 :skolemid |2368|
 :pattern ( (_module.OwnedObject.volatileOwns this@@150) ($Is refType this@@150 Tclass._module.OwnedU32))
 :pattern ( (_module.OwnedObject.volatileOwns this@@150) (_module.OwnedU32.volatileOwns this@@150))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@151 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| this@@151) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@151 null)) (not true)) ($Is refType this@@151 Tclass._module.Mutex)))) (= (_module.Mutex.volatileOwns this@@151) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.762:19|
 :skolemid |2915|
 :pattern ( (_module.Mutex.volatileOwns this@@151))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@152 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| this@@152) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@152 null)) (not true)) ($Is refType this@@152 Tclass._module.Mutex)))) (= (_module.OwnedObject.volatileOwns this@@152) (_module.Mutex.volatileOwns this@@152)))
 :qid |_12MutexLifetimeshortdfy.517:19|
 :skolemid |2917|
 :pattern ( (_module.OwnedObject.volatileOwns this@@152) ($Is refType this@@152 Tclass._module.Mutex))
 :pattern ( (_module.OwnedObject.volatileOwns this@@152) (_module.Mutex.volatileOwns this@@152))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@153 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| this@@153) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@153 null)) (not true)) ($Is refType this@@153 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.volatileOwns this@@153) (_module.MutexGuardU32.volatileOwns this@@153)))
 :qid |_12MutexLifetimeshortdfy.517:19|
 :skolemid |3209|
 :pattern ( (_module.OwnedObject.volatileOwns this@@153) ($Is refType this@@153 Tclass._module.MutexGuardU32))
 :pattern ( (_module.OwnedObject.volatileOwns this@@153) (_module.MutexGuardU32.volatileOwns this@@153))
))))
(assert (forall ((bx@@27 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@27 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@27)) bx@@27) ($Is SetType ($Unbox SetType bx@@27) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@27 (TSet t@@5)))
)))
(assert (forall (($o@@99 T@U) ) (!  (=> ($Is refType $o@@99 Tclass._module.Thread?) ($Is refType $o@@99 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3491|
 :pattern ( ($Is refType $o@@99 Tclass._module.Thread?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.Thread?) ($IsBox bx@@28 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3489|
 :pattern ( ($IsBox bx@@28 Tclass._module.Thread?))
)))
(assert (forall (($o@@100 T@U) ) (!  (=> ($Is refType $o@@100 Tclass._module.OwnedObject?) ($Is refType $o@@100 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3495|
 :pattern ( ($Is refType $o@@100 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.OwnedObject?) ($IsBox bx@@29 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3493|
 :pattern ( ($IsBox bx@@29 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@101 T@U) ) (!  (=> ($Is refType $o@@101 Tclass._module.Lifetime?) ($Is refType $o@@101 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($Is refType $o@@101 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.Lifetime?) ($IsBox bx@@30 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3497|
 :pattern ( ($IsBox bx@@30 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@102 T@U) ) (!  (=> ($Is refType $o@@102 Tclass._module.OwnedU32?) ($Is refType $o@@102 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($Is refType $o@@102 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.OwnedU32?) ($IsBox bx@@31 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3501|
 :pattern ( ($IsBox bx@@31 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@103 T@U) ) (!  (=> ($Is refType $o@@103 Tclass._module.Mutex?) ($Is refType $o@@103 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3511|
 :pattern ( ($Is refType $o@@103 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass._module.Mutex?) ($IsBox bx@@32 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3509|
 :pattern ( ($IsBox bx@@32 Tclass._module.Mutex?))
)))
(assert (forall (($o@@104 T@U) ) (!  (=> ($Is refType $o@@104 Tclass._module.MutexGuardU32?) ($Is refType $o@@104 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3515|
 :pattern ( ($Is refType $o@@104 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 Tclass._module.MutexGuardU32?) ($IsBox bx@@33 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3513|
 :pattern ( ($IsBox bx@@33 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((d@@7 T@U) ($h@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@46) ($Is DatatypeTypeType d@@7 Tclass._module.ObjectClassKind)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@46))
 :qid |unknown.0:0|
 :skolemid |1333|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@46))
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
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32?) Tagclass._module.MutexGuardU32?))
(assert (= (TagFamily Tclass._module.MutexGuardU32?) tytagFamily$MutexGuardU32))
(assert (forall (($h@@47 T@U) ($o@@105 T@U) ) (!  (=> (and ($IsGoodHeap $h@@47) (and (or (not (= $o@@105 null)) (not true)) ($Is refType $o@@105 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@47 $o@@105) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1754|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@47 $o@@105) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@106 T@U) ) (! (= ($Is refType $o@@106 Tclass._module.Universe?)  (or (= $o@@106 null) (implements$_module.Universe (dtype $o@@106))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@106 Tclass._module.Universe?))
)))
(assert (forall (($o@@107 T@U) ) (! (= ($Is refType $o@@107 Tclass._module.Object?)  (or (= $o@@107 null) (implements$_module.Object (dtype $o@@107))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($Is refType $o@@107 Tclass._module.Object?))
)))
(assert (forall (($o@@108 T@U) ) (! (= ($Is refType $o@@108 Tclass._module.OwnedObject?)  (or (= $o@@108 null) (implements$_module.OwnedObject (dtype $o@@108))))
 :qid |unknown.0:0|
 :skolemid |1750|
 :pattern ( ($Is refType $o@@108 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@48 T@U) ($o@@109 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@48) (and (or (not (= $o@@109 null)) (not true)) ($Is refType $o@@109 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@109) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@109) _module.Universe.content)) (TSet Tclass._module.Object) $h@@48))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@109) _module.Universe.content)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@154 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@154) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@154 null)) (not true)) ($Is refType this@@154 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@154) (_module.Thread.objectClassKind this@@154)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1500|
 :pattern ( (_module.Object.objectClassKind this@@154) ($Is refType this@@154 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@154) (_module.Thread.objectClassKind this@@154))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@155 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@155) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@155 null)) (not true)) ($Is refType this@@155 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@155) (_module.OwnedObject.objectClassKind this@@155)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1767|
 :pattern ( (_module.Object.objectClassKind this@@155) ($Is refType this@@155 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@155) (_module.OwnedObject.objectClassKind this@@155))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@156 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@156) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@156 null)) (not true)) ($Is refType this@@156 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@156) (_module.Lifetime.objectClassKind this@@156)))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1945|
 :pattern ( (_module.Object.objectClassKind this@@156) ($Is refType this@@156 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@156) (_module.Lifetime.objectClassKind this@@156))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@157 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@157) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@157 null)) (not true)) ($Is refType this@@157 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@157) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.361:18|
 :skolemid |1496|
 :pattern ( (_module.Thread.objectClassKind this@@157))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@158 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@158) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@158 null)) (not true)) ($Is refType this@@158 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@158) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.424:18|
 :skolemid |1763|
 :pattern ( (_module.OwnedObject.objectClassKind this@@158))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@159 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@159) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@159 null)) (not true)) ($Is refType this@@159 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@159) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.561:18|
 :skolemid |1941|
 :pattern ( (_module.Lifetime.objectClassKind this@@159))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@160 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@160) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@160 null)) (not true)) ($Is refType this@@160 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@160) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimeshortdfy.347:18|
 :skolemid |1418|
 :pattern ( (_module.Object.objectClassKind this@@160))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@92 T@U) (this@@161 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@92 this@@161) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@92) (and (or (not (= this@@161 null)) (not true)) (and ($Is refType this@@161 Tclass._module.Thread) ($IsAlloc refType this@@161 Tclass._module.Thread $Heap@@92)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@92 this@@161)) (= (_module.Thread.localInv $Heap@@92 this@@161)  (and true (_module.Object.objectGlobalBaseInv $Heap@@92 this@@161)))))
 :qid |_12MutexLifetimeshortdfy.368:19|
 :skolemid |1520|
 :pattern ( (_module.Thread.localInv $Heap@@92 this@@161) ($IsGoodHeap $Heap@@92))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@93 T@U) (this@@162 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@93 this@@162) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@93) (and (or (not (= this@@162 null)) (not true)) (and ($Is refType this@@162 Tclass._module.Thread) ($IsAlloc refType this@@162 Tclass._module.Thread $Heap@@93)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@93 this@@162)) (= (_module.Thread.inv $Heap@@93 this@@162)  (and true (_module.Thread.localInv $Heap@@93 this@@162)))))
 :qid |_12MutexLifetimeshortdfy.371:19|
 :skolemid |1532|
 :pattern ( (_module.Thread.inv $Heap@@93 this@@162) ($IsGoodHeap $Heap@@93))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@163 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| (Lit refType this@@163)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@163 null)) (not true)) ($Is refType this@@163 Tclass._module.OwnedU32)))) (= (_module.OwnedU32.volatileOwns (Lit refType this@@163)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimeshortdfy.637:19|
 :weight 3
 :skolemid |2367|
 :pattern ( (_module.OwnedU32.volatileOwns (Lit refType this@@163)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@164 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| (Lit refType this@@164)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@164 null)) (not true)) ($Is refType this@@164 Tclass._module.MutexGuardU32)))) (= (_module.MutexGuardU32.volatileOwns (Lit refType this@@164)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimeshortdfy.847:19|
 :weight 3
 :skolemid |3208|
 :pattern ( (_module.MutexGuardU32.volatileOwns (Lit refType this@@164)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@165 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| (Lit refType this@@165)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@165 null)) (not true)) ($Is refType this@@165 Tclass._module.Mutex)))) (= (_module.Mutex.volatileOwns (Lit refType this@@165)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimeshortdfy.762:19|
 :weight 3
 :skolemid |2916|
 :pattern ( (_module.Mutex.volatileOwns (Lit refType this@@165)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@94 T@U) (this@@166 T@U) ) (!  (=> (or (|_module.OwnedObject.alive#canCall| $Heap@@94 this@@166) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@94) (and (or (not (= this@@166 null)) (not true)) (and ($Is refType this@@166 Tclass._module.OwnedObject) ($IsAlloc refType this@@166 Tclass._module.OwnedObject $Heap@@94)))))) (= (_module.OwnedObject.alive $Heap@@94 this@@166)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@94 this@@166) _module.OwnedObject.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.421:19|
 :skolemid |1762|
 :pattern ( (_module.OwnedObject.alive $Heap@@94 this@@166) ($IsGoodHeap $Heap@@94))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@95 T@U) (this@@167 T@U) ) (!  (=> (or (|_module.Lifetime.alive#canCall| $Heap@@95 this@@167) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@95) (and (or (not (= this@@167 null)) (not true)) (and ($Is refType this@@167 Tclass._module.Lifetime) ($IsAlloc refType this@@167 Tclass._module.Lifetime $Heap@@95)))))) (= (_module.Lifetime.alive $Heap@@95 this@@167)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@95 this@@167) _module.Lifetime.owner)) null)) (not true))))
 :qid |_12MutexLifetimeshortdfy.551:19|
 :skolemid |1920|
 :pattern ( (_module.Lifetime.alive $Heap@@95 this@@167) ($IsGoodHeap $Heap@@95))
))))
(assert (forall (($h@@49 T@U) ($o@@110 T@U) ) (!  (=> (and ($IsGoodHeap $h@@49) (and (or (not (= $o@@110 null)) (not true)) ($Is refType $o@@110 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@49 $o@@110) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@49 $o@@110) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@96 T@U) (this@@168 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@96 this@@168) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@96) (and (or (not (= this@@168 null)) (not true)) (and ($Is refType this@@168 Tclass._module.Lifetime) ($IsAlloc refType this@@168 Tclass._module.Lifetime $Heap@@96)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@96 this@@168)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 this@@168) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 (_module.Object.universe this@@168)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 this@@168) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 this@@168) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 (_module.Object.universe this@@168)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 this@@168) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 (_module.Object.universe this@@168)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 this@@168) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@96 (_module.Object.universe this@@168)) _module.Universe.content))))))
 :qid |_12MutexLifetimeshortdfy.563:19|
 :skolemid |1951|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@96 this@@168) ($IsGoodHeap $Heap@@96))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@26 T@U) ($Heap@@97 T@U) (this@@169 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@26 $Heap@@97 this@@169) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@26) ($IsGoodHeap $Heap@@97)) ($HeapSucc $prevHeap@@26 $Heap@@97)) (and (or (not (= this@@169 null)) (not true)) (and ($Is refType this@@169 Tclass._module.OwnedObject) ($IsAlloc refType this@@169 Tclass._module.OwnedObject $prevHeap@@26)))))) (and (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.owner)) null)) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@26 $Heap@@97 this@@169))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@26 $Heap@@97 this@@169))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|))))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@26 $Heap@@97 this@@169)  (and (and (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.owner)) null)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@26 $Heap@@97 this@@169)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@26 this@@169) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@97 this@@169) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_12MutexLifetimeshortdfy.457:22|
 :skolemid |1836|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@26 $Heap@@97 this@@169) ($IsGoodHeap $Heap@@97))
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
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@@98 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0@@1| () T@U)
(declare-fun |scope#0| () T@U)
(declare-fun |mutexScope#0| () T@U)
(declare-fun this@0 () T@U)
(declare-fun |##running#0@0| () T@U)
(declare-fun |mutex#0| () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##a#0@0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.MutexGuardU32.__ctor_split27)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@111 T@U) ) (!  (=> (and (or (not (= $o@@111 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 $o@@111) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@111) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 $o@@111)) (or (= $o@@111 |universe#0|) (or (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType $o@@111)) (not (and ($Is refType $o@@111 Tclass._module.Lifetime) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType $o@@111)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 $o@@111) _module.Lifetime.owner)) |running#0@@1|))))) (or (= $o@@111 |scope#0|) (= $o@@111 |mutexScope#0|))))))
 :qid |_12MutexLifetimeshortdfy.889:3|
 :skolemid |3405|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@111))
)) ($HeapSucc $Heap@@98 $Heap@0)) (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 Tclass._module.MutexGuardU32) ($IsAlloc refType this@0 Tclass._module.MutexGuardU32 $Heap@0)))) (=> (and (and (and (and (and ($IsAllocBox ($Box refType this@0) Tclass._module.Object? $Heap@0) (|_module.Object.objectGlobalInv#canCall| $Heap@0 this@0)) (and (_module.Object.objectGlobalInv $Heap@0 this@0) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0) (= |##running#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|)))) (and ($IsAlloc SetType |##running#0@0| (TSet Tclass._module.Thread) $Heap@0) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@98)))) (and (and (and ($IsAlloc SetType (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|)) (TSet Tclass._module.Thread) $Heap@@98) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@98 $Heap@0 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|)))) (and (_module.Universe.legalTransitionsSequence $Heap@@98 $Heap@0 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (= (_module.Object.universe this@0) |universe#0|))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.OwnedObject.owner)) |running#0@@1|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex)) |mutex#0|)) (and (or (not (= |mutex#0| null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |mutex#0|) _module.Mutex.data))))))) (and (and (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex)) null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex))) _module.Mutex.locked)))) (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex))) _module.Mutex.data)) null)) (not true)))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@0) (or (not (= (_module.OwnedObject.lifetime this@0) null)) (not true))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.OwnedObject.lifetime this@0)) _module.Lifetime.mightPointFrom)) |Set#Empty|) (or (not (= (_module.OwnedObject.lifetime this@0) null)) (not true))))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.OwnedObject.lifetime this@0)) _module.Lifetime.elements)) (|Set#UnionOne| |Set#Empty| ($Box refType this@0))) (or (not (= (_module.OwnedObject.lifetime this@0) null)) (not true))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.OwnedObject.lifetime this@0)) _module.Lifetime.owner)) |running#0@@1|) (or (not (= |mutexScope#0| null)) (not true)))) (and (and (or (not (= |mutexScope#0| null)) (not true)) ($IsAlloc refType |mutexScope#0| Tclass._module.Lifetime $Heap@@98)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |mutexScope#0|) _module.Lifetime.mightPointFrom)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |mutexScope#0|) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@0))))) (= (ControlFlow 0 2) (- 0 1))))))) (or (not (= |universe#0| null)) (not true)))))))
(let ((anon9_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |l#0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |l#0@0|) _module.Lifetime.owner)) |running#0@@1|))) (= (ControlFlow 0 5) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |l#0@0|)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |l#0@0|) _module.Lifetime.owner)) |running#0@@1|)) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon8_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |l#0@0|))) (and (=> (= (ControlFlow 0 7) 4) anon9_Then_correct) (=> (= (ControlFlow 0 7) 5) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |l#0@0|)) (or (not (= |l#0@0| null)) (not true))) (and (=> (= (ControlFlow 0 6) 4) anon9_Then_correct) (=> (= (ControlFlow 0 6) 5) anon9_Else_correct)))))
(let ((anon7_Then_correct  (=> (and (and ($Is refType |l#0@0| Tclass._module.Lifetime) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@98)) (or (not (= |universe#0| null)) (not true))) (and (=> (= (ControlFlow 0 8) 6) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (not (and ($Is refType |l#0@0| Tclass._module.Lifetime) ($IsAlloc refType |l#0@0| Tclass._module.Lifetime $Heap@@98))) (= (ControlFlow 0 3) 2)) anon6_correct)))
(let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@98) ($IsHeapAnchor $Heap@@98)) (=> (and (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@98)) (and ($Is refType |running#0@@1| Tclass._module.Thread) ($IsAlloc refType |running#0@@1| Tclass._module.Thread $Heap@@98))) (and (and ($Is refType |scope#0| Tclass._module.Lifetime) ($IsAlloc refType |scope#0| Tclass._module.Lifetime $Heap@@98)) (and ($Is refType |mutex#0| Tclass._module.Mutex) ($IsAlloc refType |mutex#0| Tclass._module.Mutex $Heap@@98)))) (=> (and (and (and (and ($Is refType |mutexScope#0| Tclass._module.Lifetime) ($IsAlloc refType |mutexScope#0| Tclass._module.Lifetime $Heap@@98)) (= 23 $FunctionContextHeight)) (and (= $_ModifiesFrame@0 (|lambda#250| null $Heap@@98 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) Tclass._module.Lifetime ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) $Heap@@98 _module.Lifetime.owner |running#0@@1| |scope#0| |mutexScope#0|)) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@98) (|_module.Universe.globalInv#canCall| $Heap@@98 |universe#0|)) (and (_module.Universe.globalInv $Heap@@98 |universe#0|) (or (not (= |universe#0| null)) (not true))))) (=> (and (and (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|)) ($Box refType |scope#0|)) ($Box refType |mutex#0|)) ($Box refType |mutexScope#0|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content))) (or (not (= |scope#0| null)) (not true))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |scope#0|) _module.Lifetime.owner)) |running#0@@1|) (or (not (= |mutexScope#0| null)) (not true)))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |mutexScope#0|) _module.Lifetime.owner)) |running#0@@1|) (or (not (= |scope#0| |mutexScope#0|)) (not true))) (and (or (not (= |universe#0| null)) (not true)) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@98)))) (and (and (and (or (not (= |mutex#0| null)) (not true)) (= |##a#0@0| (_module.OwnedObject.lifetime |mutex#0|))) (and ($IsAlloc refType |##a#0@0| Tclass._module.Lifetime $Heap@@98) ($IsAlloc refType |mutexScope#0| Tclass._module.Lifetime $Heap@@98))) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |##a#0@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |mutexScope#0|))) (and (|_module.Universe.outlives#canCall| $Heap@@98 |universe#0| (_module.OwnedObject.lifetime |mutex#0|) |mutexScope#0|) (_module.Universe.outlives ($LS $LZ) $Heap@@98 |universe#0| (_module.OwnedObject.lifetime |mutex#0|) |mutexScope#0|))))) (and (and (and (and (or (not (= |universe#0| null)) (not true)) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@98)) (and ($IsAlloc refType |mutexScope#0| Tclass._module.Lifetime $Heap@@98) ($IsAlloc refType |scope#0| Tclass._module.Lifetime $Heap@@98))) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |mutexScope#0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |universe#0|) _module.Universe.content)) ($Box refType |scope#0|))) (|_module.Universe.outlives#canCall| $Heap@@98 |universe#0| |mutexScope#0| |scope#0|))) (and (and (and (_module.Universe.outlives ($LS $LZ) $Heap@@98 |universe#0| |mutexScope#0| |scope#0|) (or (not (= |scope#0| null)) (not true))) (and ($IsAllocBox ($Box refType |scope#0|) Tclass._module.Lifetime? $Heap@@98) (|_module.Lifetime.unused#canCall| $Heap@@98 |scope#0|))) (and (and (_module.Lifetime.unused $Heap@@98 |scope#0|) (or (not (= |mutex#0| null)) (not true))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@98 |mutex#0|) _module.Mutex.locked)))) (or (not (= |universe#0| null)) (not true))))))) (and (=> (= (ControlFlow 0 9) 8) anon7_Then_correct) (=> (= (ControlFlow 0 9) 3) anon7_Else_correct))))))))
anon0_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
