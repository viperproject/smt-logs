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
(declare-fun class._module.OwnedU32? () T@U)
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
(declare-fun field$nonvolatileVersion () T@U)
(declare-fun field$mutex () T@U)
(declare-fun field$mightPointFrom () T@U)
(declare-fun field$elements () T@U)
(declare-fun field$mightPointTo () T@U)
(declare-fun field$locked () T@U)
(declare-fun field$data () T@U)
(declare-fun field$value () T@U)
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
(declare-fun _module.Universe.legalTransition (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransition#canCall| (T@U T@U T@U T@U) Bool)
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
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun _module.Mutex.locked () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun _module.OwnedU32.value () T@U)
(declare-fun |_module.Universe.outlivesThrough_h#canCall| (T@U T@U Int T@U T@U T@U) Bool)
(declare-fun |_module.Universe.outlives_h#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun _module.Universe.globalSequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.legalTransitionsSequenceAnyThread (T@U T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Thread.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.sequenceInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedU32.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.OwnedU32.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Mutex.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.localUserInv2 (T@U T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.userInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.MutexGuardU32.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.ObjectClassKind#Equal| (T@U T@U) Bool)
(declare-fun _module.Mutex.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.Mutex.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectUserFields (T@U T@U) T@U)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ObjectClassKind.Thread_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.OwnedObject_q (T@U) Bool)
(declare-fun _module.ObjectClassKind.Lifetime_q (T@U) Bool)
(declare-fun |_module.Thread.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Thread.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.nonAliasing#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.nonAliasing (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |_module.Lifetime.alive#canCall| (T@U T@U) Bool)
(declare-fun _module.Lifetime.alive (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.Lifetime.deallocable (T@U T@U) Bool)
(declare-fun |_module.Lifetime.deallocable#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.alive (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.alive#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Mutex.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.OwnedObject.objectFields (T@U T@U) T@U)
(declare-fun |_module.OwnedObject.objectFields#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.objectUserFields#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.lifetime (T@U) T@U)
(declare-fun |_module.MutexGuardU32.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Lifetime.unused (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Mutex.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedU32.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Mutex.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.sequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Lifetime.unused#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.Bump (Int) Int)
(declare-fun |_module.__default.Bump#canCall| (Int) Bool)
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
(declare-fun |_module.OwnedObject.unchangedNonvolatileFields#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.unchangedNonvolatileUserFields#canCall| (T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun _module.OwnedU32.volatileOwns (T@U) Bool)
(declare-fun |_module.OwnedU32.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.MutexGuardU32.volatileOwns (T@U) Bool)
(declare-fun |_module.MutexGuardU32.volatileOwns#canCall| (T@U) Bool)
(declare-fun _module.OwnedObject.volatileOwns (T@U) Bool)
(declare-fun _module.Mutex.volatileOwns (T@U) Bool)
(declare-fun |_module.Mutex.volatileOwns#canCall| (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun |_module.Universe.globalSequenceInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.OwnedObject.volatileOwns#canCall| (T@U) Bool)
(declare-fun |_module.Universe.legalTransitionsSequenceAnyThread#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Thread Tagclass._module.OwnedObject Tagclass._module.Object? Tagclass._module.Lifetime Tagclass._module.Thread? Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.Lifetime? Tagclass._module.MutexGuardU32? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32 class._module.Universe? |##_module.ObjectClassKind.Thread| Tagclass._module.ObjectClassKind |##_module.ObjectClassKind.OwnedObject| |##_module.ObjectClassKind.Lifetime| class._module.OwnedObject? class._module.Lifetime? class._module.OwnedU32? Tagclass._module.OwnedU32? class._module.Mutex? Tagclass._module.Mutex? class._module.MutexGuardU32? tytagFamily$Universe tytagFamily$Object tytagFamily$Thread tytagFamily$OwnedObject tytagFamily$Lifetime tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$OwnedU32 tytagFamily$ObjectClassKind field$content field$owner field$nonvolatileVersion field$mutex field$mightPointFrom field$elements field$mightPointTo field$locked field$data field$value field$guards)
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
 :skolemid |1229|
)) (= (_module.Universe.legalTransitionsSequence $prevHeap $h0 this |running#0|) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1230|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.legalTransitionsSequence $prevHeap $h1 this |running#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly T@U) ($Heap T@U) (this@@0 T@U) (|a#0| T@U) (|b#0| T@U) ) (! (= (_module.Universe.outlives ($LS $ly) $Heap this@@0 |a#0| |b#0|) (_module.Universe.outlives $ly $Heap this@@0 |a#0| |b#0|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1568|
 :pattern ( (_module.Universe.outlives ($LS $ly) $Heap this@@0 |a#0| |b#0|))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@0 $Heap@@0 this@@1) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@0 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $prevHeap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap@@0 this@@1) (=> (_module.Universe.globalBaseInv $prevHeap@@0 this@@1) (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@1))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $Heap@@0 this@@1)  (and (and (and (_module.Universe.globalBaseInv $prevHeap@@0 this@@1) (_module.Universe.globalBaseInv $Heap@@0 this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap@@0)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1224|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_12MutexLifetimelongdfy.37:22|
 :skolemid |1225|
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
 :qid |_12MutexLifetimelongdfy.360:7|
 :skolemid |3865|
 :pattern ( (MapType0Select BoxType boolType (|lambda#55| |l#0| |l#1|) |$y#23|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@2) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)) (=> (= (_module.Object.universe |o#0@@0|) this@@2) (=> (or (not (= |o#0@@0| this@@2)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@1 |o#0@@0|) (=> (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|) (|_module.Object.triggerAxioms#canCall| $Heap@@1 |o#0@@0|)))))))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1179|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@1 this@@2)  (and true (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (and (and (= (_module.Object.universe |o#0@@1|) this@@2) (or (not (= |o#0@@1| this@@2)) (not true))) (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|)) (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1178|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_12MutexLifetimelongdfy.17:19|
 :skolemid |1180|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@1 this@@2) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |2143|
)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h0@@0 this@@3) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2144|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@4)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |2229|
)) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h0@@1 this@@4) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2230|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 this@@5)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |2311|
)) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h0@@2 this@@5) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2312|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.OwnedU32))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@6)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |2727|
)) (= (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h0@@3 this@@6) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2728|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@7)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |3274|
)) (= (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h0@@4 this@@7) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3275|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@5 $h1@@4 this@@7))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= $o@@5 this@@8)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@5) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |3565|
)) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h0@@5 this@@8) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3566|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@6 $h1@@5 this@@8))
)))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.Object Tclass._module.Lifetime?))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@2 T@U) (this@@9 T@U) (|a#0@@0| T@U) (|x#0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Universe))) ($Is refType |a#0@@0| Tclass._module.Lifetime)) ($Is refType |x#0| Tclass._module.Lifetime)) ($Is refType |b#0@@0| Tclass._module.Lifetime)) (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@9 |a#0@@0| |x#0| |b#0@@0|)) (exists ((|_k#0| Int) ) (!  (and (<= (LitInt 0) |_k#0|) (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@9 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@0) $Heap@@2 this@@9 |_k#0| |a#0@@0| |x#0| |b#0@@0|))
)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1602|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@0) $Heap@@2 this@@9 |a#0@@0| |x#0| |b#0@@0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@3 this@@10) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.OwnedU32) ($IsAlloc refType this@@10 Tclass._module.OwnedU32 $Heap@@3)))))) (= (_module.OwnedU32.objectUserFields $Heap@@3 this@@10) (Lit SetType |Set#Empty|)))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2724|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@4 this@@11) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Mutex) ($IsAlloc refType this@@11 Tclass._module.Mutex $Heap@@4)))))) (and (and (|_module.Mutex.localUserInv#canCall| $Heap@@4 this@@11) (=> (_module.Mutex.localUserInv $Heap@@4 this@@11) (forall ((|g#0| T@U) ) (!  (=> ($Is refType |g#0| Tclass._module.MutexGuardU32) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0|)) (|_module.OwnedObject.localInv#canCall| $Heap@@4 |g#0|)))
 :qid |_12MutexLifetimelongdfy.788:16|
 :skolemid |3293|
 :pattern ( (_module.OwnedObject.localInv $Heap@@4 |g#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0|)))
)))) (= (_module.Mutex.userInv $Heap@@4 this@@11)  (and (_module.Mutex.localUserInv $Heap@@4 this@@11) (forall ((|g#0@@0| T@U) ) (!  (=> (and ($Is refType |g#0@@0| Tclass._module.MutexGuardU32) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0@@0|))) (_module.OwnedObject.localInv $Heap@@4 |g#0@@0|))
 :qid |_12MutexLifetimelongdfy.788:16|
 :skolemid |3292|
 :pattern ( (_module.OwnedObject.localInv $Heap@@4 |g#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Mutex.guards)) ($Box refType |g#0@@0|)))
))))))
 :qid |_12MutexLifetimelongdfy.786:19|
 :skolemid |3294|
 :pattern ( (_module.Mutex.userInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 16 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@5 this@@12) (and (< 16 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Universe) ($IsAlloc refType this@@12 Tclass._module.Universe $Heap@@5)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@5 this@@12) (=> (_module.Universe.globalBaseInv $Heap@@5 this@@12) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv#canCall| $Heap@@5 |o#0@@2|)))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1191|
 :pattern ( (_module.Object.inv $Heap@@5 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@2|)))
)))) (= (_module.Universe.globalInv $Heap@@5 this@@12)  (and (_module.Universe.globalBaseInv $Heap@@5 this@@12) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@3|))) (_module.Object.inv $Heap@@5 |o#0@@3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1190|
 :pattern ( (_module.Object.inv $Heap@@5 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_12MutexLifetimelongdfy.23:19|
 :skolemid |1192|
 :pattern ( (_module.Universe.globalInv $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@6 T@U) (this@@13 T@U) (|a#0@@1| T@U) (|x#0@@0| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough#canCall| $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Universe) ($IsAlloc refType this@@13 Tclass._module.Universe $Heap@@6)))) ($Is refType |a#0@@1| Tclass._module.Lifetime)) ($Is refType |x#0@@0| Tclass._module.Lifetime)) ($Is refType |b#0@@1| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |a#0@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |x#0@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |b#0@@1|)))))) (and (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (and (|_module.Universe.outlives#canCall| $Heap@@6 this@@13 |a#0@@1| |x#0@@0|) (=> (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |a#0@@1| |x#0@@0|) (|_module.Universe.outlives#canCall| $Heap@@6 this@@13 |x#0@@0| |b#0@@1|)))) (= (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|)  (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |a#0@@1|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |b#0@@1|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@0|))) (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |a#0@@1| |x#0@@0|)) (_module.Universe.outlives $ly@@1 $Heap@@6 this@@13 |x#0@@0| |b#0@@1|)))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1600|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@1) $Heap@@6 this@@13 |a#0@@1| |x#0@@0| |b#0@@1|) ($IsGoodHeap $Heap@@6))
))))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Thread|) |##_module.ObjectClassKind.Thread|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.OwnedObject|) |##_module.ObjectClassKind.OwnedObject|))
(assert (= (DatatypeCtorId |#_module.ObjectClassKind.Lifetime|) |##_module.ObjectClassKind.Lifetime|))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.Thread?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($Is refType $o@@6 Tclass._module.Thread?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Lifetime?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |2251|
 :pattern ( ($Is refType $o@@7 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.OwnedU32?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2709|
 :pattern ( ($Is refType $o@@8 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Mutex?)  (or (= $o@@9 null) (= (dtype $o@@9) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($Is refType $o@@9 Tclass._module.Mutex?))
)))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass._module.MutexGuardU32?)  (or (= $o@@10 null) (= (dtype $o@@10) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |3545|
 :pattern ( ($Is refType $o@@10 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall (($prevHeap@@7 T@U) ($h0@@6 T@U) ($h1@@6 T@U) (this@@14 T@U) (|running#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Universe) ($IsAlloc refType this@@14 Tclass._module.Universe $h0@@6)))) (or (|_module.Universe.legalTransition#canCall| $prevHeap@@7 $h0@@6 this@@14 |running#0@@0|) (and ($Is refType |running#0@@0| Tclass._module.Thread) ($IsAlloc refType |running#0@@0| Tclass._module.Thread $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1274|
)) (= (_module.Universe.legalTransition $prevHeap@@7 $h0@@6 this@@14 |running#0@@0|) (_module.Universe.legalTransition $prevHeap@@7 $h1@@6 this@@14 |running#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1275|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.legalTransition $prevHeap@@7 $h1@@6 this@@14 |running#0@@0|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall (($h T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2104|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@12) _module.OwnedObject.nonvolatileVersion)))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3836|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h@@0))
)))
(assert (forall ((bx@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3840|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@1))
)))
(assert (forall ((bx@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@1 Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3844|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Lifetime? $h@@2))
)))
(assert (forall ((bx@@2 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3848|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.OwnedU32? $h@@3))
)))
(assert (forall ((bx@@3 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3856|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.Mutex? $h@@4))
)))
(assert (forall ((bx@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |3860|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.MutexGuardU32? $h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@7 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@8 $Heap@@7 this@@15) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@8 $Heap@@7)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Lifetime) ($IsAlloc refType this@@15 Tclass._module.Lifetime $prevHeap@@8)))))) (= (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@8 $Heap@@7 this@@15)  (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@15) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@15) _module.Lifetime.owner))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@15) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@15) _module.Lifetime.elements)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@15) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@15) _module.Lifetime.mightPointTo)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@15) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@15) _module.Lifetime.mightPointFrom))))))
 :qid |_12MutexLifetimelongdfy.572:22|
 :skolemid |2315|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@8 $Heap@@7 this@@15) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1680|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@7))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@8))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2250|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@9))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@10) ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Lifetime? $h@@10))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@11) ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2958|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32 $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.OwnedU32? $h@@11))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@12) ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3544|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.Mutex? $h@@12))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32 $h@@13) ($IsAlloc refType |c#0@@6| Tclass._module.MutexGuardU32? $h@@13))
 :qid |unknown.0:0|
 :skolemid |3834|
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@8 this@@16) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv $Heap@@8 this@@16) (_module.OwnedU32.localUserInv $Heap@@8 this@@16)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |2739|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@16) ($Is refType this@@16 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@16) (_module.OwnedU32.localUserInv $Heap@@8 this@@16) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@9 this@@17) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@17) (_module.OwnedU32.userInv $Heap@@9 this@@17)))
 :qid |_12MutexLifetimelongdfy.523:19|
 :skolemid |2746|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@17) ($Is refType this@@17 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@17) (_module.OwnedU32.userInv $Heap@@9 this@@17) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@10 this@@18) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@10 this@@18) (_module.Thread.baseFieldsInv $Heap@@10 this@@18)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |1862|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@10 this@@18) ($Is refType this@@18 Tclass._module.Thread) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@10 this@@18) (_module.Thread.baseFieldsInv $Heap@@10 this@@18) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@11 this@@19) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.Lifetime)))) (= (_module.Object.baseFieldsInv $Heap@@11 this@@19) (_module.Lifetime.baseFieldsInv $Heap@@11 this@@19)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2302|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@19) ($Is refType this@@19 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@11 this@@19) (_module.Lifetime.baseFieldsInv $Heap@@11 this@@19) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@12 this@@20) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv $Heap@@12 this@@20) (_module.Mutex.localUserInv $Heap@@12 this@@20)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |3286|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@12 this@@20) ($Is refType this@@20 Tclass._module.Mutex) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@12 this@@20) (_module.Mutex.localUserInv $Heap@@12 this@@20) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@13 this@@21) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv $Heap@@13 this@@21) (_module.MutexGuardU32.localUserInv $Heap@@13 this@@21)))
 :qid |_12MutexLifetimelongdfy.521:19|
 :skolemid |3577|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@13 this@@21) ($Is refType this@@21 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@13 this@@21) (_module.MutexGuardU32.localUserInv $Heap@@13 this@@21) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@14 this@@22) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@22 null)) (not true)) ($Is refType this@@22 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@14 this@@22) (_module.OwnedObject.baseFieldsInv $Heap@@14 this@@22)))
 :qid |_12MutexLifetimelongdfy.349:19|
 :skolemid |2133|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 this@@22) ($Is refType this@@22 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@14 this@@22) (_module.OwnedObject.baseFieldsInv $Heap@@14 this@@22) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@15 this@@23) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@23 null)) (not true)) ($Is refType this@@23 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@15 this@@23) (_module.Thread.localInv $Heap@@15 this@@23)))
 :qid |_12MutexLifetimelongdfy.351:19|
 :skolemid |1876|
 :pattern ( (_module.Object.localInv $Heap@@15 this@@23) ($Is refType this@@23 Tclass._module.Thread) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.localInv $Heap@@15 this@@23) (_module.Thread.localInv $Heap@@15 this@@23) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@16 this@@24) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Lifetime)))) (= (_module.Object.localInv $Heap@@16 this@@24) (_module.Lifetime.localInv $Heap@@16 this@@24)))
 :qid |_12MutexLifetimelongdfy.351:19|
 :skolemid |2335|
 :pattern ( (_module.Object.localInv $Heap@@16 this@@24) ($Is refType this@@24 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.localInv $Heap@@16 this@@24) (_module.Lifetime.localInv $Heap@@16 this@@24) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@17 this@@25) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@17 this@@25) (_module.Thread.inv $Heap@@17 this@@25)))
 :qid |_12MutexLifetimelongdfy.353:19|
 :skolemid |1886|
 :pattern ( (_module.Object.inv $Heap@@17 this@@25) ($Is refType this@@25 Tclass._module.Thread) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.Object.inv $Heap@@17 this@@25) (_module.Thread.inv $Heap@@17 this@@25) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@18 this@@26) (and (< 10 $FunctionContextHeight) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.Lifetime)))) (= (_module.Object.inv $Heap@@18 this@@26) (_module.Lifetime.inv $Heap@@18 this@@26)))
 :qid |_12MutexLifetimelongdfy.353:19|
 :skolemid |2388|
 :pattern ( (_module.Object.inv $Heap@@18 this@@26) ($Is refType this@@26 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.Object.inv $Heap@@18 this@@26) (_module.Lifetime.inv $Heap@@18 this@@26) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@19 this@@27) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@19 this@@27) (_module.OwnedObject.localInv $Heap@@19 this@@27)))
 :qid |_12MutexLifetimelongdfy.351:19|
 :skolemid |2154|
 :pattern ( (_module.Object.localInv $Heap@@19 this@@27) ($Is refType this@@27 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.localInv $Heap@@19 this@@27) (_module.OwnedObject.localInv $Heap@@19 this@@27) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@20 this@@28) (and (< 12 $FunctionContextHeight) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.Mutex)))) (= (_module.OwnedObject.userInv $Heap@@20 this@@28) (_module.Mutex.userInv $Heap@@20 this@@28)))
 :qid |_12MutexLifetimelongdfy.523:19|
 :skolemid |3295|
 :pattern ( (_module.OwnedObject.userInv $Heap@@20 this@@28) ($Is refType this@@28 Tclass._module.Mutex) ($IsGoodHeap $Heap@@20))
 :pattern ( (_module.OwnedObject.userInv $Heap@@20 this@@28) (_module.Mutex.userInv $Heap@@20 this@@28) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@21 this@@29) (and (< 12 $FunctionContextHeight) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.userInv $Heap@@21 this@@29) (_module.MutexGuardU32.userInv $Heap@@21 this@@29)))
 :qid |_12MutexLifetimelongdfy.523:19|
 :skolemid |3585|
 :pattern ( (_module.OwnedObject.userInv $Heap@@21 this@@29) ($Is refType this@@29 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@21))
 :pattern ( (_module.OwnedObject.userInv $Heap@@21 this@@29) (_module.MutexGuardU32.userInv $Heap@@21 this@@29) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@22 this@@30) (and (< 14 $FunctionContextHeight) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@22 this@@30) (_module.OwnedObject.inv $Heap@@22 this@@30)))
 :qid |_12MutexLifetimelongdfy.353:19|
 :skolemid |2166|
 :pattern ( (_module.Object.inv $Heap@@22 this@@30) ($Is refType this@@30 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@22))
 :pattern ( (_module.Object.inv $Heap@@22 this@@30) (_module.OwnedObject.inv $Heap@@22 this@@30) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@23 T@U) (this@@31 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.Universe))) ($Is refType |a#0@@2| Tclass._module.Lifetime)) ($Is refType |b#0@@2| Tclass._module.Lifetime)) (_module.Universe.outlives ($LS $ly@@2) $Heap@@23 this@@31 |a#0@@2| |b#0@@2|)) (exists ((|_k#0@@0| Int) ) (!  (and (<= (LitInt 0) |_k#0@@0|) (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@23 this@@31 |_k#0@@0| |a#0@@2| |b#0@@2|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@2) $Heap@@23 this@@31 |_k#0@@0| |a#0@@2| |b#0@@2|))
)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1578|
 :pattern ( (_module.Universe.outlives ($LS $ly@@2) $Heap@@23 this@@31 |a#0@@2| |b#0@@2|))
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
(assert (= (FDim _module.OwnedU32.value) 0))
(assert (= (FieldOfDecl class._module.OwnedU32? field$value) _module.OwnedU32.value))
(assert  (not ($IsGhostField _module.OwnedU32.value)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@24 T@U) (this@@32 T@U) (|a#0@@3| T@U) (|b#0@@3| T@U) ) (!  (=> (or (|_module.Universe.outlives#canCall| $Heap@@24 this@@32 |a#0@@3| |b#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Universe) ($IsAlloc refType this@@32 Tclass._module.Universe $Heap@@24)))) ($Is refType |a#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@3| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |a#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |b#0@@3|)))))) (and (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|))) (forall ((|x#0@@1| T@U) ) (!  (=> ($Is refType |x#0@@1| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |x#0@@1|)) (|_module.Universe.outlivesThrough#canCall| $Heap@@24 this@@32 |a#0@@3| |x#0@@1| |b#0@@3|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1575|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@32 |a#0@@3| |x#0@@1| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |x#0@@1|)))
))) (= (_module.Universe.outlives ($LS $ly@@3) $Heap@@24 this@@32 |a#0@@3| |b#0@@3|)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 |b#0@@3|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@3|)) (exists ((|x#0@@2| T@U) ) (!  (and (and ($Is refType |x#0@@2| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |x#0@@2|))) (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@32 |a#0@@3| |x#0@@2| |b#0@@3|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1574|
 :pattern ( (_module.Universe.outlivesThrough $ly@@3 $Heap@@24 this@@32 |a#0@@3| |x#0@@2| |b#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 this@@32) _module.Universe.content)) ($Box refType |x#0@@2|)))
))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1576|
 :pattern ( (_module.Universe.outlives ($LS $ly@@3) $Heap@@24 this@@32 |a#0@@3| |b#0@@3|) ($IsGoodHeap $Heap@@24))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@25 T@U) (this@@33 T@U) (|_k#0@@1| Int) (|a#0@@4| T@U) (|x#0@@3| T@U) (|b#0@@4| T@U) ) (!  (=> (or (|_module.Universe.outlivesThrough_h#canCall| $Heap@@25 this@@33 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.Universe) ($IsAlloc refType this@@33 Tclass._module.Universe $Heap@@25)))) (<= (LitInt 0) |_k#0@@1|)) ($Is refType |a#0@@4| Tclass._module.Lifetime)) ($Is refType |x#0@@3| Tclass._module.Lifetime)) ($Is refType |b#0@@4| Tclass._module.Lifetime)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@33) _module.Universe.content)) ($Box refType |a#0@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@33) _module.Universe.content)) ($Box refType |x#0@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@33) _module.Universe.content)) ($Box refType |b#0@@4|)))))) (and (=> (< 0 |_k#0@@1|) (=> (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (and (|_module.Universe.outlives_h#canCall| $Heap@@25 this@@33 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (=> (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@33 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|) (|_module.Universe.outlives_h#canCall| $Heap@@25 this@@33 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))) (= (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@25 this@@33 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|)  (and (< 0 |_k#0@@1|) (and (and (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |a#0@@4|) _module.Lifetime.mightPointFrom)) ($Box refType |x#0@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 |b#0@@4|) _module.Lifetime.mightPointTo)) ($Box refType |x#0@@3|))) (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@33 (- |_k#0@@1| 1) |a#0@@4| |x#0@@3|)) (_module.Universe.outlives_h ($LS $LZ) $Heap@@25 this@@33 (- |_k#0@@1| 1) |x#0@@3| |b#0@@4|))))))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1613|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@4) $Heap@@25 this@@33 |_k#0@@1| |a#0@@4| |x#0@@3| |b#0@@4|) ($IsGoodHeap $Heap@@25))
))))
(assert (forall (($prevHeap@@9 T@U) ($h0@@7 T@U) ($h1@@7 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Universe) ($IsAlloc refType this@@34 Tclass._module.Universe $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@13 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@13) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@13) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1198|
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@9 $h0@@7 this@@34) (_module.Universe.globalSequenceInv2 $prevHeap@@9 $h1@@7 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1199|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalSequenceInv2 $prevHeap@@9 $h1@@7 this@@34))
)))
(assert (forall (($prevHeap@@10 T@U) ($h0@@8 T@U) ($h1@@8 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.Universe) ($IsAlloc refType this@@35 Tclass._module.Universe $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@14 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@14) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@14) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |1209|
)) (= (_module.Universe.globalInv2 $prevHeap@@10 $h0@@8 this@@35) (_module.Universe.globalInv2 $prevHeap@@10 $h1@@8 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1210|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Universe.globalInv2 $prevHeap@@10 $h1@@8 this@@35))
)))
(assert (forall (($prevHeap@@11 T@U) ($h0@@9 T@U) ($h1@@9 T@U) (this@@36 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Universe) ($IsAlloc refType this@@36 Tclass._module.Universe $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@15 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@15) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@15) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |1220|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@11 $h0@@9 this@@36) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@11 $h1@@9 this@@36))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1221|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@11 $h1@@9 this@@36))
)))
(assert (forall (($prevHeap@@12 T@U) ($h0@@10 T@U) ($h1@@10 T@U) (this@@37 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Universe) ($IsAlloc refType this@@37 Tclass._module.Universe $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@16) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1268|
)) (= (_module.Universe.legalTransitionsSequenceAnyThread $prevHeap@@12 $h0@@10 this@@37) (_module.Universe.legalTransitionsSequenceAnyThread $prevHeap@@12 $h1@@10 this@@37))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1269|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Universe.legalTransitionsSequenceAnyThread $prevHeap@@12 $h1@@10 this@@37))
)))
(assert (forall (($prevHeap@@13 T@U) ($h0@@11 T@U) ($h1@@11 T@U) (this@@38 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Object) ($IsAlloc refType this@@38 Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@17 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@17) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@17) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@17) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1787|
)) (= (_module.Object.localInv2 $prevHeap@@13 $h0@@11 this@@38) (_module.Object.localInv2 $prevHeap@@13 $h1@@11 this@@38))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1788|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.localInv2 $prevHeap@@13 $h1@@11 this@@38))
)))
(assert (forall (($prevHeap@@14 T@U) ($h0@@12 T@U) ($h1@@12 T@U) (this@@39 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Object) ($IsAlloc refType this@@39 Tclass._module.Object $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@18 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@18) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@18) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1795|
)) (= (_module.Object.sequenceInv2 $prevHeap@@14 $h0@@12 this@@39) (_module.Object.sequenceInv2 $prevHeap@@14 $h1@@12 this@@39))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1796|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Object.sequenceInv2 $prevHeap@@14 $h1@@12 this@@39))
)))
(assert (forall (($prevHeap@@15 T@U) ($h0@@13 T@U) ($h1@@13 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.Object) ($IsAlloc refType this@@40 Tclass._module.Object $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@19 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@19) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@19) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1799|
)) (= (_module.Object.inv2 $prevHeap@@15 $h0@@13 this@@40) (_module.Object.inv2 $prevHeap@@15 $h1@@13 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1800|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Object.inv2 $prevHeap@@15 $h1@@13 this@@40))
)))
(assert (forall (($prevHeap@@16 T@U) ($h0@@14 T@U) ($h1@@14 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Thread) ($IsAlloc refType this@@41 Tclass._module.Thread $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@20 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@20) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@20) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1893|
)) (= (_module.Thread.localInv2 $prevHeap@@16 $h0@@14 this@@41) (_module.Thread.localInv2 $prevHeap@@16 $h1@@14 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1894|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.Thread.localInv2 $prevHeap@@16 $h1@@14 this@@41))
)))
(assert (forall (($prevHeap@@17 T@U) ($h0@@15 T@U) ($h1@@15 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Thread) ($IsAlloc refType this@@42 Tclass._module.Thread $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@21 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@21) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@21) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1900|
)) (= (_module.Thread.sequenceInv2 $prevHeap@@17 $h0@@15 this@@42) (_module.Thread.sequenceInv2 $prevHeap@@17 $h1@@15 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1901|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.Thread.sequenceInv2 $prevHeap@@17 $h1@@15 this@@42))
)))
(assert (forall (($prevHeap@@18 T@U) ($h0@@16 T@U) ($h1@@16 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Thread) ($IsAlloc refType this@@43 Tclass._module.Thread $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@22 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@22) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@22) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@22) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1907|
)) (= (_module.Thread.inv2 $prevHeap@@18 $h0@@16 this@@43) (_module.Thread.inv2 $prevHeap@@18 $h1@@16 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1908|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.Thread.inv2 $prevHeap@@18 $h1@@16 this@@43))
)))
(assert (forall (($prevHeap@@19 T@U) ($h0@@17 T@U) ($h1@@17 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.OwnedObject) ($IsAlloc refType this@@44 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@23 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@23) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@23) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |2174|
)) (= (_module.OwnedObject.localInv2 $prevHeap@@19 $h0@@17 this@@44) (_module.OwnedObject.localInv2 $prevHeap@@19 $h1@@17 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2175|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.localInv2 $prevHeap@@19 $h1@@17 this@@44))
)))
(assert (forall (($prevHeap@@20 T@U) ($h0@@18 T@U) ($h1@@18 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@24 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@24) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@24) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |2182|
)) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@20 $h0@@18 this@@45) (_module.OwnedObject.sequenceInv2 $prevHeap@@20 $h1@@18 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2183|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedObject.sequenceInv2 $prevHeap@@20 $h1@@18 this@@45))
)))
(assert (forall (($prevHeap@@21 T@U) ($h0@@19 T@U) ($h1@@19 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedObject) ($IsAlloc refType this@@46 Tclass._module.OwnedObject $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@25 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@25) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@25) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |2191|
)) (= (_module.OwnedObject.inv2 $prevHeap@@21 $h0@@19 this@@46) (_module.OwnedObject.inv2 $prevHeap@@21 $h1@@19 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2192|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedObject.inv2 $prevHeap@@21 $h1@@19 this@@46))
)))
(assert (forall (($prevHeap@@22 T@U) ($h0@@20 T@U) ($h1@@20 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.OwnedObject) ($IsAlloc refType this@@47 Tclass._module.OwnedObject $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@26 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@26) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@26) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |2237|
)) (= (_module.OwnedObject.localUserInv2 $prevHeap@@22 $h0@@20 this@@47) (_module.OwnedObject.localUserInv2 $prevHeap@@22 $h1@@20 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2238|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.OwnedObject.localUserInv2 $prevHeap@@22 $h1@@20 this@@47))
)))
(assert (forall (($prevHeap@@23 T@U) ($h0@@21 T@U) ($h1@@21 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@27 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@27) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@27) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |2245|
)) (= (_module.OwnedObject.userInv2 $prevHeap@@23 $h0@@21 this@@48) (_module.OwnedObject.userInv2 $prevHeap@@23 $h1@@21 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2246|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.OwnedObject.userInv2 $prevHeap@@23 $h1@@21 this@@48))
)))
(assert (forall (($prevHeap@@24 T@U) ($h0@@22 T@U) ($h1@@22 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.Lifetime) ($IsAlloc refType this@@49 Tclass._module.Lifetime $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@28 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@28) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@28) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |2419|
)) (= (_module.Lifetime.sequenceInv2 $prevHeap@@24 $h0@@22 this@@49) (_module.Lifetime.sequenceInv2 $prevHeap@@24 $h1@@22 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2420|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.Lifetime.sequenceInv2 $prevHeap@@24 $h1@@22 this@@49))
)))
(assert (forall (($prevHeap@@25 T@U) ($h0@@23 T@U) ($h1@@23 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Lifetime) ($IsAlloc refType this@@50 Tclass._module.Lifetime $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@29 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@29) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@29) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |2427|
)) (= (_module.Lifetime.localInv2 $prevHeap@@25 $h0@@23 this@@50) (_module.Lifetime.localInv2 $prevHeap@@25 $h1@@23 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2428|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.Lifetime.localInv2 $prevHeap@@25 $h1@@23 this@@50))
)))
(assert (forall (($prevHeap@@26 T@U) ($h0@@24 T@U) ($h1@@24 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@24) ($IsGoodHeap $h1@@24)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Lifetime) ($IsAlloc refType this@@51 Tclass._module.Lifetime $h0@@24)))) (and ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24))) (=> (forall (($o@@30 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@24 $o@@30) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@24 $o@@30) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |2434|
)) (= (_module.Lifetime.inv2 $prevHeap@@26 $h0@@24 this@@51) (_module.Lifetime.inv2 $prevHeap@@26 $h1@@24 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2435|
 :pattern ( ($IsHeapAnchor $h0@@24) ($HeapSucc $h0@@24 $h1@@24) (_module.Lifetime.inv2 $prevHeap@@26 $h1@@24 this@@51))
)))
(assert (forall (($prevHeap@@27 T@U) ($h0@@25 T@U) ($h1@@25 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@25) ($IsGoodHeap $h1@@25)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.OwnedU32) ($IsAlloc refType this@@52 Tclass._module.OwnedU32 $h0@@25)))) (and ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25))) (=> (forall (($o@@31 T@U) ($f@@25 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@25 $o@@31) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@25 $o@@31) $f@@25)))
 :qid |unknown.0:0|
 :skolemid |2749|
)) (= (_module.OwnedU32.localUserInv2 $prevHeap@@27 $h0@@25 this@@52) (_module.OwnedU32.localUserInv2 $prevHeap@@27 $h1@@25 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2750|
 :pattern ( ($IsHeapAnchor $h0@@25) ($HeapSucc $h0@@25 $h1@@25) (_module.OwnedU32.localUserInv2 $prevHeap@@27 $h1@@25 this@@52))
)))
(assert (forall (($prevHeap@@28 T@U) ($h0@@26 T@U) ($h1@@26 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@26) ($IsGoodHeap $h1@@26)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.OwnedU32) ($IsAlloc refType this@@53 Tclass._module.OwnedU32 $h0@@26)))) (and ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26))) (=> (forall (($o@@32 T@U) ($f@@26 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@26 $o@@32) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@26 $o@@32) $f@@26)))
 :qid |unknown.0:0|
 :skolemid |2756|
)) (= (_module.OwnedU32.userInv2 $prevHeap@@28 $h0@@26 this@@53) (_module.OwnedU32.userInv2 $prevHeap@@28 $h1@@26 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2757|
 :pattern ( ($IsHeapAnchor $h0@@26) ($HeapSucc $h0@@26 $h1@@26) (_module.OwnedU32.userInv2 $prevHeap@@28 $h1@@26 this@@53))
)))
(assert (forall (($prevHeap@@29 T@U) ($h0@@27 T@U) ($h1@@27 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@27) ($IsGoodHeap $h1@@27)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Mutex) ($IsAlloc refType this@@54 Tclass._module.Mutex $h0@@27)))) (and ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27))) (=> (forall (($o@@33 T@U) ($f@@27 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@27 $o@@33) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@27 $o@@33) $f@@27)))
 :qid |unknown.0:0|
 :skolemid |3302|
)) (= (_module.Mutex.localUserInv2 $prevHeap@@29 $h0@@27 this@@54) (_module.Mutex.localUserInv2 $prevHeap@@29 $h1@@27 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3303|
 :pattern ( ($IsHeapAnchor $h0@@27) ($HeapSucc $h0@@27 $h1@@27) (_module.Mutex.localUserInv2 $prevHeap@@29 $h1@@27 this@@54))
)))
(assert (forall (($prevHeap@@30 T@U) ($h0@@28 T@U) ($h1@@28 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@28) ($IsGoodHeap $h1@@28)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Mutex) ($IsAlloc refType this@@55 Tclass._module.Mutex $h0@@28)))) (and ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28))) (=> (forall (($o@@34 T@U) ($f@@28 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@28 $o@@34) $f@@28) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@28 $o@@34) $f@@28)))
 :qid |unknown.0:0|
 :skolemid |3309|
)) (= (_module.Mutex.userInv2 $prevHeap@@30 $h0@@28 this@@55) (_module.Mutex.userInv2 $prevHeap@@30 $h1@@28 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3310|
 :pattern ( ($IsHeapAnchor $h0@@28) ($HeapSucc $h0@@28 $h1@@28) (_module.Mutex.userInv2 $prevHeap@@30 $h1@@28 this@@55))
)))
(assert (forall (($prevHeap@@31 T@U) ($h0@@29 T@U) ($h1@@29 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@29) ($IsGoodHeap $h1@@29)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@56 Tclass._module.MutexGuardU32 $h0@@29)))) (and ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29))) (=> (forall (($o@@35 T@U) ($f@@29 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@29 $o@@35) $f@@29) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@29 $o@@35) $f@@29)))
 :qid |unknown.0:0|
 :skolemid |3593|
)) (= (_module.MutexGuardU32.localUserInv2 $prevHeap@@31 $h0@@29 this@@56) (_module.MutexGuardU32.localUserInv2 $prevHeap@@31 $h1@@29 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3594|
 :pattern ( ($IsHeapAnchor $h0@@29) ($HeapSucc $h0@@29 $h1@@29) (_module.MutexGuardU32.localUserInv2 $prevHeap@@31 $h1@@29 this@@56))
)))
(assert (forall (($prevHeap@@32 T@U) ($h0@@30 T@U) ($h1@@30 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@30) ($IsGoodHeap $h1@@30)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@57 Tclass._module.MutexGuardU32 $h0@@30)))) (and ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30))) (=> (forall (($o@@36 T@U) ($f@@30 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@30 $o@@36) $f@@30) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@30 $o@@36) $f@@30)))
 :qid |unknown.0:0|
 :skolemid |3600|
)) (= (_module.MutexGuardU32.userInv2 $prevHeap@@32 $h0@@30 this@@57) (_module.MutexGuardU32.userInv2 $prevHeap@@32 $h1@@30 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3601|
 :pattern ( ($IsHeapAnchor $h0@@30) ($HeapSucc $h0@@30 $h1@@30) (_module.MutexGuardU32.userInv2 $prevHeap@@32 $h1@@30 this@@57))
)))
(assert (forall (($o@@37 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@37 Tclass._module.Universe? $h@@14)  (or (= $o@@37 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@37) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsAlloc refType $o@@37 Tclass._module.Universe? $h@@14))
)))
(assert (forall (($o@@38 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@38 Tclass._module.Object? $h@@15)  (or (= $o@@38 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@38) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1696|
 :pattern ( ($IsAlloc refType $o@@38 Tclass._module.Object? $h@@15))
)))
(assert (forall (($o@@39 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@39 Tclass._module.Thread? $h@@16)  (or (= $o@@39 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@39) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc refType $o@@39 Tclass._module.Thread? $h@@16))
)))
(assert (forall (($o@@40 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $h@@17)  (or (= $o@@40 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@40) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2103|
 :pattern ( ($IsAlloc refType $o@@40 Tclass._module.OwnedObject? $h@@17))
)))
(assert (forall (($o@@41 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@41 Tclass._module.Lifetime? $h@@18)  (or (= $o@@41 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@41) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2252|
 :pattern ( ($IsAlloc refType $o@@41 Tclass._module.Lifetime? $h@@18))
)))
(assert (forall (($o@@42 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@42 Tclass._module.OwnedU32? $h@@19)  (or (= $o@@42 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@42) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( ($IsAlloc refType $o@@42 Tclass._module.OwnedU32? $h@@19))
)))
(assert (forall (($o@@43 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@43 Tclass._module.Mutex? $h@@20)  (or (= $o@@43 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@43) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($IsAlloc refType $o@@43 Tclass._module.Mutex? $h@@20))
)))
(assert (forall (($o@@44 T@U) ($h@@21 T@U) ) (! (= ($IsAlloc refType $o@@44 Tclass._module.MutexGuardU32? $h@@21)  (or (= $o@@44 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@44) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3546|
 :pattern ( ($IsAlloc refType $o@@44 Tclass._module.MutexGuardU32? $h@@21))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@26 this@@58) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Object) ($IsAlloc refType this@@58 Tclass._module.Object $Heap@@26)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 (_module.Object.universe this@@58)) _module.Universe.content)) ($Box refType this@@58)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@26 this@@58) (=> (_module.Object.baseFieldsInv $Heap@@26 this@@58) (|_module.Universe.globalBaseInv#canCall| $Heap@@26 (_module.Object.universe this@@58))))) (= (_module.Object.objectGlobalBaseInv $Heap@@26 this@@58)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@26 (_module.Object.universe this@@58)) _module.Universe.content)) ($Box refType this@@58)) (_module.Object.baseFieldsInv $Heap@@26 this@@58)) (_module.Universe.globalBaseInv $Heap@@26 (_module.Object.universe this@@58))))))
 :qid |_12MutexLifetimelongdfy.302:19|
 :skolemid |1703|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@26 this@@58) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@27 this@@59) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@59 Tclass._module.MutexGuardU32 $Heap@@27)))))) (= (_module.MutexGuardU32.objectUserFields $Heap@@27 this@@59) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@59) _module.MutexGuardU32.mutex)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@27 this@@59) _module.MutexGuardU32.data))))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3562|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@27 this@@59) ($IsGoodHeap $Heap@@27))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@5 T@U) ($Heap@@28 T@U) (this@@60 T@U) (|a#0@@5| T@U) (|x#0@@4| T@U) (|b#0@@5| T@U) (|_k#0@@2| Int) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@60 null)) (not true)) ($Is refType this@@60 Tclass._module.Universe))) ($Is refType |a#0@@5| Tclass._module.Lifetime)) ($Is refType |x#0@@4| Tclass._module.Lifetime)) ($Is refType |b#0@@5| Tclass._module.Lifetime)) (= |_k#0@@2| 0)) (not (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@28 this@@60 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|)))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1604|
 :pattern ( (_module.Universe.outlivesThrough_h $ly@@5 $Heap@@28 this@@60 |_k#0@@2| |a#0@@5| |x#0@@4| |b#0@@5|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.ObjectClassKind#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |1694|
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@61 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@29 this@@61) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.Mutex) ($IsAlloc refType this@@61 Tclass._module.Mutex $Heap@@29)))))) (= (_module.Mutex.objectUserFields $Heap@@29 this@@61) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@61) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@29 this@@61) _module.Mutex.data)))))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3271|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@29 this@@61) ($IsGoodHeap $Heap@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@62 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@30 this@@62) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@62 null)) (not true)) ($Is refType this@@62 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@30 this@@62) (_module.OwnedU32.objectUserFields $Heap@@30 this@@62)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2725|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@30 this@@62) ($Is refType this@@62 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@30))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@30 this@@62) (_module.OwnedU32.objectUserFields $Heap@@30 this@@62) ($IsGoodHeap $Heap@@30))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@63 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@31 this@@63) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@63 null)) (not true)) ($Is refType this@@63 Tclass._module.Mutex)))) (= (_module.OwnedObject.objectUserFields $Heap@@31 this@@63) (_module.Mutex.objectUserFields $Heap@@31 this@@63)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |3272|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@31 this@@63) ($Is refType this@@63 Tclass._module.Mutex) ($IsGoodHeap $Heap@@31))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@31 this@@63) (_module.Mutex.objectUserFields $Heap@@31 this@@63) ($IsGoodHeap $Heap@@31))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@64 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@32 this@@64) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@64 null)) (not true)) ($Is refType this@@64 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.objectUserFields $Heap@@32 this@@64) (_module.MutexGuardU32.objectUserFields $Heap@@32 this@@64)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |3563|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@32 this@@64) ($Is refType this@@64 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@32))
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@32 this@@64) (_module.MutexGuardU32.objectUserFields $Heap@@32 this@@64) ($IsGoodHeap $Heap@@32))
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
(assert  (=> (<= 17 $FunctionContextHeight) (forall (($prevHeap@@33 T@U) ($Heap@@33 T@U) (this@@65 T@U) (|running#0@@1| T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap@@33 $Heap@@33 this@@65 |running#0@@1|) (and (< 17 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@33) ($IsGoodHeap $Heap@@33)) ($HeapSucc $prevHeap@@33 $Heap@@33)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.Universe) ($IsAlloc refType this@@65 Tclass._module.Universe $prevHeap@@33)))) ($Is refType |running#0@@1| Tclass._module.Thread)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@33 $Heap@@33 this@@65 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (=> (_module.Universe.legalTransitionsSequence $prevHeap@@33 $Heap@@33 this@@65 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (and (|_module.Universe.globalInv#canCall| $prevHeap@@33 this@@65) (=> (_module.Universe.globalInv $prevHeap@@33 this@@65) (and (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@4|)) (and (=> (not (forall (($o@@45 T@U) ($f@@31 T@U) ) (!  (=> (or (not (= $o@@45 null)) (not true)) (=> (= $o@@45 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@45) $f@@31) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@45) $f@@31))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1282|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@45) $f@@31))
))) (|_module.Object.inv#canCall| $Heap@@33 |o#0@@4|)) (=> (or (forall (($o@@46 T@U) ($f@@32 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@46) $f@@32) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@46) $f@@32))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1284|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@46) $f@@32))
)) (_module.Object.inv $Heap@@33 |o#0@@4|)) (=> (not (forall (($o@@47 T@U) ($f@@33 T@U) ) (!  (=> (or (not (= $o@@47 null)) (not true)) (=> (= $o@@47 |o#0@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@47) $f@@33) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@47) $f@@33))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1283|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@47) $f@@33))
))) (|_module.Object.inv2#canCall| $prevHeap@@33 $Heap@@33 |o#0@@4|))))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1285|
 :pattern ( (_module.Object.inv2 $prevHeap@@33 $Heap@@33 |o#0@@4|))
 :pattern ( (_module.Object.inv $Heap@@33 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@4|)))
)) (=> (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@5|))) (and (or (forall (($o@@48 T@U) ($f@@34 T@U) ) (!  (=> (or (not (= $o@@48 null)) (not true)) (=> (= $o@@48 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@48) $f@@34) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@48) $f@@34))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1287|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@48) $f@@34))
)) (_module.Object.inv $Heap@@33 |o#0@@5|)) (or (forall (($o@@49 T@U) ($f@@35 T@U) ) (!  (=> (or (not (= $o@@49 null)) (not true)) (=> (= $o@@49 |o#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@49) $f@@35) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@49) $f@@35))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1288|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@49) $f@@35))
)) (_module.Object.inv2 $prevHeap@@33 $Heap@@33 |o#0@@5|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1289|
 :pattern ( (_module.Object.inv2 $prevHeap@@33 $Heap@@33 |o#0@@5|))
 :pattern ( (_module.Object.inv $Heap@@33 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@5|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@33 |o#1|)))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1286|
 :pattern ( (_module.Object.inv $Heap@@33 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1|)))
)))))))) (= (_module.Universe.legalTransition $prevHeap@@33 $Heap@@33 this@@65 |running#0@@1|)  (and (and (and (_module.Universe.legalTransitionsSequence $prevHeap@@33 $Heap@@33 this@@65 (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@1|))) (_module.Universe.globalInv $prevHeap@@33 this@@65)) (forall ((|o#0@@6| T@U) ) (!  (=> (and ($Is refType |o#0@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@6|))) (and (or (forall (($o@@50 T@U) ($f@@36 T@U) ) (!  (=> (or (not (= $o@@50 null)) (not true)) (=> (= $o@@50 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@50) $f@@36) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@50) $f@@36))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1278|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@50) $f@@36))
)) (_module.Object.inv $Heap@@33 |o#0@@6|)) (or (forall (($o@@51 T@U) ($f@@37 T@U) ) (!  (=> (or (not (= $o@@51 null)) (not true)) (=> (= $o@@51 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@51) $f@@37) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 $o@@51) $f@@37))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1279|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 $o@@51) $f@@37))
)) (_module.Object.inv2 $prevHeap@@33 $Heap@@33 |o#0@@6|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1280|
 :pattern ( (_module.Object.inv2 $prevHeap@@33 $Heap@@33 |o#0@@6|))
 :pattern ( (_module.Object.inv $Heap@@33 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#0@@6|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@33 |o#1@@0|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1281|
 :pattern ( (_module.Object.inv $Heap@@33 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@33 this@@65) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_12MutexLifetimelongdfy.79:22|
 :skolemid |1290|
 :pattern ( (_module.Universe.legalTransition $prevHeap@@33 $Heap@@33 this@@65 |running#0@@1|) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) ($Heap@@34 T@U) (this@@66 T@U) (|a#0@@6| T@U) (|x#0@@5| T@U) (|b#0@@6| T@U) ) (!  (=> (and (and (and (and (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@66 null)) (not true)) ($Is refType this@@66 Tclass._module.Universe))) ($Is refType |a#0@@6| Tclass._module.Lifetime)) ($Is refType |x#0@@5| Tclass._module.Lifetime)) ($Is refType |b#0@@6| Tclass._module.Lifetime)) (exists ((|_k#0@@3| Int) ) (!  (and (<= (LitInt 0) |_k#0@@3|) (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@34 this@@66 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1601|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@6) $Heap@@34 this@@66 |_k#0@@3| |a#0@@6| |x#0@@5| |b#0@@6|))
))) (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@34 this@@66 |a#0@@6| |x#0@@5| |b#0@@6|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1603|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@6) $Heap@@34 this@@66 |a#0@@6| |x#0@@5| |b#0@@6|))
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
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@35 this@@67) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.OwnedObject) ($IsAlloc refType this@@67 Tclass._module.OwnedObject $Heap@@35)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@35 this@@67) (=> (_module.OwnedObject.localInv $Heap@@35 this@@67) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@67) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.userInv#canCall| $Heap@@35 this@@67)))) (= (_module.OwnedObject.inv $Heap@@35 this@@67)  (and (_module.OwnedObject.localInv $Heap@@35 this@@67) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@67) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv $Heap@@35 this@@67))))))
 :qid |_12MutexLifetimelongdfy.449:19|
 :skolemid |2165|
 :pattern ( (_module.OwnedObject.inv $Heap@@35 this@@67) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@36 this@@68) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.OwnedU32) ($IsAlloc refType this@@68 Tclass._module.OwnedU32 $Heap@@36)))))) (= (_module.OwnedU32.localUserInv $Heap@@36 this@@68) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.645:19|
 :skolemid |2738|
 :pattern ( (_module.OwnedU32.localUserInv $Heap@@36 this@@68) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@69 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@37 this@@69) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@69 null)) (not true)) (and ($Is refType this@@69 Tclass._module.Thread) ($IsAlloc refType this@@69 Tclass._module.Thread $Heap@@37)))))) (= (_module.Thread.baseFieldsInv $Heap@@37 this@@69) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.364:19|
 :skolemid |1861|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@37 this@@69) ($IsGoodHeap $Heap@@37))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@7 T@U) ($Heap@@38 T@U) (this@@70 T@U) (|a#0@@7| T@U) (|b#0@@7| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@70 null)) (not true)) ($Is refType this@@70 Tclass._module.Universe))) ($Is refType |a#0@@7| Tclass._module.Lifetime)) ($Is refType |b#0@@7| Tclass._module.Lifetime)) (exists ((|_k#0@@4| Int) ) (!  (and (<= (LitInt 0) |_k#0@@4|) (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@38 this@@70 |_k#0@@4| |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1577|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@7) $Heap@@38 this@@70 |_k#0@@4| |a#0@@7| |b#0@@7|))
))) (_module.Universe.outlives ($LS $ly@@7) $Heap@@38 this@@70 |a#0@@7| |b#0@@7|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1579|
 :pattern ( (_module.Universe.outlives ($LS $ly@@7) $Heap@@38 this@@70 |a#0@@7| |b#0@@7|))
))))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@34 T@U) ($Heap@@39 T@U) (this@@71 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@34 $Heap@@39 this@@71) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@34) ($IsGoodHeap $Heap@@39)) ($HeapSucc $prevHeap@@34 $Heap@@39)) (and (or (not (= this@@71 null)) (not true)) (and ($Is refType this@@71 Tclass._module.Thread) ($IsAlloc refType this@@71 Tclass._module.Thread $prevHeap@@34)))))) (and (and (|_module.Thread.localInv2#canCall| $prevHeap@@34 $Heap@@39 this@@71) (=> (_module.Thread.localInv2 $prevHeap@@34 $Heap@@39 this@@71) (|_module.Thread.sequenceInv2#canCall| $prevHeap@@34 $Heap@@39 this@@71))) (= (_module.Thread.inv2 $prevHeap@@34 $Heap@@39 this@@71)  (and (_module.Thread.localInv2 $prevHeap@@34 $Heap@@39 this@@71) (_module.Thread.sequenceInv2 $prevHeap@@34 $Heap@@39 this@@71)))))
 :qid |_12MutexLifetimelongdfy.382:22|
 :skolemid |1911|
 :pattern ( (_module.Thread.inv2 $prevHeap@@34 $Heap@@39 this@@71) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@35 T@U) ($Heap@@40 T@U) (this@@72 T@U) ) (!  (=> (or (|_module.Lifetime.inv2#canCall| $prevHeap@@35 $Heap@@40 this@@72) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@35) ($IsGoodHeap $Heap@@40)) ($HeapSucc $prevHeap@@35 $Heap@@40)) (and (or (not (= this@@72 null)) (not true)) (and ($Is refType this@@72 Tclass._module.Lifetime) ($IsAlloc refType this@@72 Tclass._module.Lifetime $prevHeap@@35)))))) (and (and (|_module.Lifetime.localInv2#canCall| $prevHeap@@35 $Heap@@40 this@@72) (=> (_module.Lifetime.localInv2 $prevHeap@@35 $Heap@@40 this@@72) (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@35 $Heap@@40 this@@72))) (= (_module.Lifetime.inv2 $prevHeap@@35 $Heap@@40 this@@72)  (and (_module.Lifetime.localInv2 $prevHeap@@35 $Heap@@40 this@@72) (_module.Lifetime.sequenceInv2 $prevHeap@@35 $Heap@@40 this@@72)))))
 :qid |_12MutexLifetimelongdfy.604:22|
 :skolemid |2438|
 :pattern ( (_module.Lifetime.inv2 $prevHeap@@35 $Heap@@40 this@@72) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@73 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@41 this@@73) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@73 null)) (not true)) (and ($Is refType this@@73 Tclass._module.OwnedU32) ($IsAlloc refType this@@73 Tclass._module.OwnedU32 $Heap@@41)))))) (and (|_module.OwnedU32.localUserInv#canCall| $Heap@@41 this@@73) (= (_module.OwnedU32.userInv $Heap@@41 this@@73) (_module.OwnedU32.localUserInv $Heap@@41 this@@73))))
 :qid |_12MutexLifetimelongdfy.646:19|
 :skolemid |2745|
 :pattern ( (_module.OwnedU32.userInv $Heap@@41 this@@73) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@74 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@42 this@@74) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@74 null)) (not true)) (and ($Is refType this@@74 Tclass._module.Object) ($IsAlloc refType this@@74 Tclass._module.Object $Heap@@42)))))) (and (|_module.Object.nonAliasing#canCall| $Heap@@42 this@@74) (= (_module.Object.triggerAxioms $Heap@@42 this@@74) (_module.Object.nonAliasing $Heap@@42 this@@74))))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1731|
 :pattern ( (_module.Object.triggerAxioms $Heap@@42 this@@74) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@75 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@43 this@@75) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@75 null)) (not true)) (and ($Is refType this@@75 Tclass._module.Lifetime) ($IsAlloc refType this@@75 Tclass._module.Lifetime $Heap@@43)))))) (and (|_module.Lifetime.localInv#canCall| $Heap@@43 this@@75) (= (_module.Lifetime.inv $Heap@@43 this@@75) (_module.Lifetime.localInv $Heap@@43 this@@75))))
 :qid |_12MutexLifetimelongdfy.589:19|
 :skolemid |2387|
 :pattern ( (_module.Lifetime.inv $Heap@@43 this@@75) ($IsGoodHeap $Heap@@43))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@36 T@U) ($Heap@@44 T@U) (this@@76 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@36 $Heap@@44 this@@76) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@36) ($IsGoodHeap $Heap@@44)) ($HeapSucc $prevHeap@@36 $Heap@@44)) (and (or (not (= this@@76 null)) (not true)) (and ($Is refType this@@76 Tclass._module.Lifetime) ($IsAlloc refType this@@76 Tclass._module.Lifetime $prevHeap@@36)))))) (and (and (|_module.Lifetime.alive#canCall| $prevHeap@@36 this@@76) (=> (not (_module.Lifetime.alive $prevHeap@@36 this@@76)) (|_module.Lifetime.alive#canCall| $Heap@@44 this@@76))) (= (_module.Lifetime.sequenceInv2 $prevHeap@@36 $Heap@@44 this@@76)  (and (and (and (and (=> (not (_module.Lifetime.alive $prevHeap@@36 this@@76)) (not (_module.Lifetime.alive $Heap@@44 this@@76))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@76) _module.Lifetime.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@76) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@76) _module.Lifetime.owner))))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@76) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@76) _module.Lifetime.elements)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@76) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@76) _module.Lifetime.mightPointTo)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@36 this@@76) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 this@@76) _module.Lifetime.mightPointFrom)))))))
 :qid |_12MutexLifetimelongdfy.591:22|
 :skolemid |2423|
 :pattern ( (_module.Lifetime.sequenceInv2 $prevHeap@@36 $Heap@@44 this@@76) ($IsGoodHeap $Heap@@44))
))))
(assert (forall ((m@@1 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@5)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@5))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2|) |$y#1|))  (and ($IsBox |$y#1| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#1|) (or (not (= ($Unbox refType |$y#1|) |l#2|)) (not true)))))
 :qid |_12MutexLifetimelongdfy.360:7|
 :skolemid |3864|
 :pattern ( (MapType0Select BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0| |l#2|) |$y#1|))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@45 T@U) (this@@77 T@U) (|_k#0@@5| Int) (|a#0@@8| T@U) (|x#0@@6| T@U) (|b#0@@8| T@U) ) (! (= (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@45 this@@77 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|) (_module.Universe.outlivesThrough_h $ly@@8 $Heap@@45 this@@77 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1607|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $ly@@8) $Heap@@45 this@@77 |_k#0@@5| |a#0@@8| |x#0@@6| |b#0@@8|))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v bx@@6) ($IsBox bx@@6 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@6))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@37 T@U) ($Heap@@46 T@U) (this@@78 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@37 $Heap@@46 this@@78) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@37) ($IsGoodHeap $Heap@@46)) ($HeapSucc $prevHeap@@37 $Heap@@46)) (and (or (not (= this@@78 null)) (not true)) (and ($Is refType this@@78 Tclass._module.Thread) ($IsAlloc refType this@@78 Tclass._module.Thread $prevHeap@@37)))))) (=> (_module.Thread.inv2 $prevHeap@@37 $Heap@@46 this@@78) (and (_module.Thread.localInv2 $prevHeap@@37 $Heap@@46 this@@78) (_module.Thread.sequenceInv2 $prevHeap@@37 $Heap@@46 this@@78))))
 :qid |_12MutexLifetimelongdfy.382:22|
 :skolemid |1909|
 :pattern ( (_module.Thread.inv2 $prevHeap@@37 $Heap@@46 this@@78))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@38 T@U) ($Heap@@47 T@U) (this@@79 T@U) ) (!  (=> (or (|_module.Lifetime.inv2#canCall| $prevHeap@@38 $Heap@@47 this@@79) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@38) ($IsGoodHeap $Heap@@47)) ($HeapSucc $prevHeap@@38 $Heap@@47)) (and (or (not (= this@@79 null)) (not true)) (and ($Is refType this@@79 Tclass._module.Lifetime) ($IsAlloc refType this@@79 Tclass._module.Lifetime $prevHeap@@38)))))) (=> (_module.Lifetime.inv2 $prevHeap@@38 $Heap@@47 this@@79) (and (_module.Lifetime.localInv2 $prevHeap@@38 $Heap@@47 this@@79) (_module.Lifetime.sequenceInv2 $prevHeap@@38 $Heap@@47 this@@79))))
 :qid |_12MutexLifetimelongdfy.604:22|
 :skolemid |2436|
 :pattern ( (_module.Lifetime.inv2 $prevHeap@@38 $Heap@@47 this@@79))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($prevHeap@@39 T@U) ($Heap@@48 T@U) (this@@80 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@39 $Heap@@48 this@@80) (and (< 14 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@39) ($IsGoodHeap $Heap@@48)) ($HeapSucc $prevHeap@@39 $Heap@@48)) (and (or (not (= this@@80 null)) (not true)) (and ($Is refType this@@80 Tclass._module.OwnedObject) ($IsAlloc refType this@@80 Tclass._module.OwnedObject $prevHeap@@39)))))) (=> (_module.OwnedObject.inv2 $prevHeap@@39 $Heap@@48 this@@80) (and (_module.OwnedObject.localInv2 $prevHeap@@39 $Heap@@48 this@@80) (_module.OwnedObject.sequenceInv2 $prevHeap@@39 $Heap@@48 this@@80))))
 :qid |_12MutexLifetimelongdfy.484:22|
 :skolemid |2193|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@39 $Heap@@48 this@@80))
))))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($prevHeap@@40 T@U) ($Heap@@49 T@U) (this@@81 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@40 $Heap@@49 this@@81) (and (< 15 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@40) ($IsGoodHeap $Heap@@49)) ($HeapSucc $prevHeap@@40 $Heap@@49)) (and (or (not (= this@@81 null)) (not true)) (and ($Is refType this@@81 Tclass._module.Object) ($IsAlloc refType this@@81 Tclass._module.Object $prevHeap@@40)))))) (=> (_module.Object.inv2 $prevHeap@@40 $Heap@@49 this@@81) (and (_module.Object.localInv2 $prevHeap@@40 $Heap@@49 this@@81) (_module.Object.sequenceInv2 $prevHeap@@40 $Heap@@49 this@@81))))
 :qid |_12MutexLifetimelongdfy.355:22|
 :skolemid |1801|
 :pattern ( (_module.Object.inv2 $prevHeap@@40 $Heap@@49 this@@81))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@52 T@U) ($f@@38 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3| |l#4|) $o@@52 $f@@38))  (=> (and (or (not (= $o@@52 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@52) |l#2@@0|)))) (or (= $o@@52 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@52)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3863|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@0| |l#3| |l#4|) $o@@52 $f@@38))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@22 T@U) ($o@@53 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.OwnedU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@53) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@53) _module.OwnedU32.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2712|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@53) _module.OwnedU32.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@54 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@54) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@54) _module.Mutex.locked)) TBool $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3257|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@54) _module.Mutex.locked)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@50 T@U) (this@@82 T@U) ) (!  (=> (or (|_module.Lifetime.deallocable#canCall| $Heap@@50 this@@82) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@50) (and (or (not (= this@@82 null)) (not true)) (and ($Is refType this@@82 Tclass._module.Lifetime) ($IsAlloc refType this@@82 Tclass._module.Lifetime $Heap@@50)))))) (and (and (forall ((|o#0@@7| T@U) ) (!  (=> ($Is refType |o#0@@7| Tclass._module.OwnedObject) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@7|)) (|_module.OwnedObject.alive#canCall| $Heap@@50 |o#0@@7|)))
 :qid |_12MutexLifetimelongdfy.557:16|
 :skolemid |2277|
 :pattern ( (_module.OwnedObject.alive $Heap@@50 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@7|)))
)) (=> (forall ((|o#0@@8| T@U) ) (!  (=> (and ($Is refType |o#0@@8| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@8|))) (not (_module.OwnedObject.alive $Heap@@50 |o#0@@8|)))
 :qid |_12MutexLifetimelongdfy.557:16|
 :skolemid |2279|
 :pattern ( (_module.OwnedObject.alive $Heap@@50 |o#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@8|)))
)) (forall ((|l#0@@2| T@U) ) (!  (=> ($Is refType |l#0@@2| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.mightPointFrom)) ($Box refType |l#0@@2|)) (|_module.Lifetime.alive#canCall| $Heap@@50 |l#0@@2|)))
 :qid |_12MutexLifetimelongdfy.558:16|
 :skolemid |2278|
 :pattern ( (_module.Lifetime.alive $Heap@@50 |l#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.mightPointFrom)) ($Box refType |l#0@@2|)))
)))) (= (_module.Lifetime.deallocable $Heap@@50 this@@82)  (and (forall ((|o#0@@9| T@U) ) (!  (=> (and ($Is refType |o#0@@9| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@9|))) (not (_module.OwnedObject.alive $Heap@@50 |o#0@@9|)))
 :qid |_12MutexLifetimelongdfy.557:16|
 :skolemid |2275|
 :pattern ( (_module.OwnedObject.alive $Heap@@50 |o#0@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.elements)) ($Box refType |o#0@@9|)))
)) (forall ((|l#0@@3| T@U) ) (!  (=> (and ($Is refType |l#0@@3| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.mightPointFrom)) ($Box refType |l#0@@3|))) (not (_module.Lifetime.alive $Heap@@50 |l#0@@3|)))
 :qid |_12MutexLifetimelongdfy.558:16|
 :skolemid |2276|
 :pattern ( (_module.Lifetime.alive $Heap@@50 |l#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@50 this@@82) _module.Lifetime.mightPointFrom)) ($Box refType |l#0@@3|)))
))))))
 :qid |_12MutexLifetimelongdfy.556:19|
 :skolemid |2280|
 :pattern ( (_module.Lifetime.deallocable $Heap@@50 this@@82) ($IsGoodHeap $Heap@@50))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@41 T@U) ($Heap@@51 T@U) (this@@83 T@U) ) (!  (=> (or (|_module.OwnedU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@41 $Heap@@51 this@@83) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@41) ($IsGoodHeap $Heap@@51)) ($HeapSucc $prevHeap@@41 $Heap@@51)) (and (or (not (= this@@83 null)) (not true)) (and ($Is refType this@@83 Tclass._module.OwnedU32) ($IsAlloc refType this@@83 Tclass._module.OwnedU32 $prevHeap@@41)))))) (= (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@41 $Heap@@51 this@@83)  (and true (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@41 this@@83) _module.OwnedU32.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@51 this@@83) _module.OwnedU32.value)))))))
 :qid |_12MutexLifetimelongdfy.641:22|
 :skolemid |2731|
 :pattern ( (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@41 $Heap@@51 this@@83) ($IsGoodHeap $Heap@@51))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@42 T@U) ($Heap@@52 T@U) (this@@84 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv2#canCall| $prevHeap@@42 $Heap@@52 this@@84) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@42) ($IsGoodHeap $Heap@@52)) ($HeapSucc $prevHeap@@42 $Heap@@52)) (and (or (not (= this@@84 null)) (not true)) (and ($Is refType this@@84 Tclass._module.Mutex) ($IsAlloc refType this@@84 Tclass._module.Mutex $prevHeap@@42)))))) (= (_module.Mutex.localUserInv2 $prevHeap@@42 $Heap@@52 this@@84)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@42 this@@84) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@52 this@@84) _module.Mutex.data))))))
 :qid |_12MutexLifetimelongdfy.790:22|
 :skolemid |3306|
 :pattern ( (_module.Mutex.localUserInv2 $prevHeap@@42 $Heap@@52 this@@84) ($IsGoodHeap $Heap@@52))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@43 T@U) ($Heap@@53 T@U) (this@@85 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@43 $Heap@@53 this@@85) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@43) ($IsGoodHeap $Heap@@53)) ($HeapSucc $prevHeap@@43 $Heap@@53)) (and (or (not (= this@@85 null)) (not true)) (and ($Is refType this@@85 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@85 Tclass._module.MutexGuardU32 $prevHeap@@43)))))) (= (_module.MutexGuardU32.localUserInv2 $prevHeap@@43 $Heap@@53 this@@85)  (and true (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@43 this@@85) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@53 this@@85) _module.MutexGuardU32.mutex))))))
 :qid |_12MutexLifetimelongdfy.874:22|
 :skolemid |3597|
 :pattern ( (_module.MutexGuardU32.localUserInv2 $prevHeap@@43 $Heap@@53 this@@85) ($IsGoodHeap $Heap@@53))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@54 T@U) (this@@86 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@54 this@@86) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@54) (and (or (not (= this@@86 null)) (not true)) (and ($Is refType this@@86 Tclass._module.OwnedObject) ($IsAlloc refType this@@86 Tclass._module.OwnedObject $Heap@@54)))))) (and (|_module.OwnedObject.objectUserFields#canCall| $Heap@@54 this@@86) (= (_module.OwnedObject.objectFields $Heap@@54 this@@86) (|Set#Union| (|Set#Union| (_module.OwnedObject.objectUserFields $Heap@@54 this@@86) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@86)))) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@86) _module.OwnedObject.owner)) null) |Set#Empty| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@54 this@@86) _module.OwnedObject.owner)))))))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2126|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@54 this@@86) ($IsGoodHeap $Heap@@54))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@24 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@55 null)) (not true)) ($Is refType $o@@55 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@55) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@55) Tclass._module.Universe $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1698|
 :pattern ( (_module.Object.universe $o@@55) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@55) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@25 T@U) ($o@@56 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@56 null)) (not true)) ($Is refType $o@@56 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@56) alloc)))) ($IsAlloc refType (_module.OwnedObject.lifetime $o@@56) Tclass._module.Lifetime $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2109|
 :pattern ( (_module.OwnedObject.lifetime $o@@56) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@56) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@57 T@U) ) (!  (=> (and (or (not (= $o@@57 null)) (not true)) ($Is refType $o@@57 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@57) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1697|
 :pattern ( (_module.Object.universe $o@@57))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@58 T@U) ) (!  (=> (and (or (not (= $o@@58 null)) (not true)) ($Is refType $o@@58 Tclass._module.OwnedObject?)) ($Is refType (_module.OwnedObject.lifetime $o@@58) Tclass._module.Lifetime))
 :qid |unknown.0:0|
 :skolemid |2108|
 :pattern ( (_module.OwnedObject.lifetime $o@@58))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@44 T@U) ($Heap@@55 T@U) (this@@87 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv2#canCall| $prevHeap@@44 $Heap@@55 this@@87) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@44) ($IsGoodHeap $Heap@@55)) ($HeapSucc $prevHeap@@44 $Heap@@55)) (and (or (not (= this@@87 null)) (not true)) (and ($Is refType this@@87 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@87 Tclass._module.MutexGuardU32 $prevHeap@@44)))))) (and (and (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@44 $Heap@@55 this@@87) (=> (_module.MutexGuardU32.localUserInv2 $prevHeap@@44 $Heap@@55 this@@87) (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@44 $Heap@@55 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.MutexGuardU32.mutex))) (=> (_module.OwnedObject.localInv2 $prevHeap@@44 $Heap@@55 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.MutexGuardU32.mutex))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.OwnedObject.owner)) null) (|_module.OwnedObject.localInv#canCall| $Heap@@55 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.MutexGuardU32.mutex)))))))) (= (_module.MutexGuardU32.userInv2 $prevHeap@@44 $Heap@@55 this@@87)  (and (and (_module.MutexGuardU32.localUserInv2 $prevHeap@@44 $Heap@@55 this@@87) (_module.OwnedObject.localInv2 $prevHeap@@44 $Heap@@55 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.MutexGuardU32.mutex)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.OwnedObject.owner)) null) (_module.OwnedObject.localInv $Heap@@55 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@55 this@@87) _module.MutexGuardU32.mutex))))))))
 :qid |_12MutexLifetimelongdfy.877:22|
 :skolemid |3604|
 :pattern ( (_module.MutexGuardU32.userInv2 $prevHeap@@44 $Heap@@55 this@@87) ($IsGoodHeap $Heap@@55))
))))
(assert (forall (($ly@@9 T@U) ($h0@@31 T@U) ($h1@@31 T@U) (this@@88 T@U) (|_k#0@@6| Int) (|a#0@@9| T@U) (|b#0@@9| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@31) ($IsGoodHeap $h1@@31)) (and (or (not (= this@@88 null)) (not true)) ($Is refType this@@88 Tclass._module.Universe))) (or (|_module.Universe.outlives_h#canCall| $h0@@31 this@@88 |_k#0@@6| |a#0@@9| |b#0@@9|) (and (and (<= (LitInt 0) |_k#0@@6|) ($Is refType |a#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@9| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31))) (=> (forall (($o@@59 T@U) ($f@@39 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (or (or (= $o@@59 this@@88) (and (and ($Is refType $o@@59 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 this@@88) _module.Universe.content)) ($Box refType $o@@59))) (= $f@@39 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@59 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 this@@88) _module.Universe.content)) ($Box refType $o@@59))) (= $f@@39 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@31 $o@@59) $f@@39) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@31 $o@@59) $f@@39)))
 :qid |unknown.0:0|
 :skolemid |1587|
)) (= (_module.Universe.outlives_h $ly@@9 $h0@@31 this@@88 |_k#0@@6| |a#0@@9| |b#0@@9|) (_module.Universe.outlives_h $ly@@9 $h1@@31 this@@88 |_k#0@@6| |a#0@@9| |b#0@@9|))))
 :qid |unknown.0:0|
 :skolemid |1588|
 :pattern ( ($IsHeapAnchor $h0@@31) ($HeapSucc $h0@@31 $h1@@31) (_module.Universe.outlives_h $ly@@9 $h1@@31 this@@88 |_k#0@@6| |a#0@@9| |b#0@@9|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) ($Heap@@56 T@U) (this@@89 T@U) (|_k#0@@7| Int) (|a#0@@10| T@U) (|b#0@@10| T@U) ) (!  (=> (or (|_module.Universe.outlives_h#canCall| $Heap@@56 this@@89 |_k#0@@7| |a#0@@10| |b#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($IsGoodHeap $Heap@@56) (and (or (not (= this@@89 null)) (not true)) (and ($Is refType this@@89 Tclass._module.Universe) ($IsAlloc refType this@@89 Tclass._module.Universe $Heap@@56)))) (<= (LitInt 0) |_k#0@@7|)) ($Is refType |a#0@@10| Tclass._module.Lifetime)) ($Is refType |b#0@@10| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |a#0@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |b#0@@10|)))))) (and (=> (< 0 |_k#0@@7|) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|))) (forall ((|x#3| T@U) ) (!  (=> ($Is refType |x#3| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |x#3|)) (|_module.Universe.outlivesThrough_h#canCall| $Heap@@56 this@@89 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|)))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1592|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@56 this@@89 (- |_k#0@@7| 1) |a#0@@10| |x#3| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |x#3|)))
)))) (= (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@56 this@@89 |_k#0@@7| |a#0@@10| |b#0@@10|)  (and (< 0 |_k#0@@7|) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 |b#0@@10|) _module.Lifetime.mightPointTo)) ($Box refType |a#0@@10|)) (exists ((|x#3@@0| T@U) ) (!  (and (and ($Is refType |x#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |x#3@@0|))) (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@56 this@@89 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |1591|
 :pattern ( (_module.Universe.outlivesThrough_h ($LS $LZ) $Heap@@56 this@@89 (- |_k#0@@7| 1) |a#0@@10| |x#3@@0| |b#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@56 this@@89) _module.Universe.content)) ($Box refType |x#3@@0|)))
)))))))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1593|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@10) $Heap@@56 this@@89 |_k#0@@7| |a#0@@10| |b#0@@10|) ($IsGoodHeap $Heap@@56))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@57 T@U) (this@@90 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@57 this@@90) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@57) (and (or (not (= this@@90 null)) (not true)) (and ($Is refType this@@90 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@90 Tclass._module.MutexGuardU32 $Heap@@57)))))) (and (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@90))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 (_module.Object.universe this@@90)) _module.Universe.content))) (|_module.Universe.outlives#canCall| $Heap@@57 (_module.Object.universe this@@90) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@90))) (= (_module.MutexGuardU32.localUserInv $Heap@@57 this@@90)  (and (and (and (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime this@@90))) ($Box refType (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 (_module.Object.universe this@@90)) _module.Universe.content))) (_module.Universe.outlives ($LS $LZ) $Heap@@57 (_module.Object.universe this@@90) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) (_module.OwnedObject.lifetime this@@90))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) _module.OwnedObject.owner)) null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) _module.Mutex.locked)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@90)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@90)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.mutex))) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@57 this@@90) _module.MutexGuardU32.data)))))))
 :qid |_12MutexLifetimelongdfy.858:19|
 :skolemid |3576|
 :pattern ( (_module.MutexGuardU32.localUserInv $Heap@@57 this@@90) ($IsGoodHeap $Heap@@57))
))))
(assert (forall (($h0@@32 T@U) ($h1@@32 T@U) (this@@91 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@32) ($IsGoodHeap $h1@@32)) (and (or (not (= this@@91 null)) (not true)) ($Is refType this@@91 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32))) (=> (forall (($o@@60 T@U) ($f@@40 T@U) ) (!  (=> (and (or (not (= $o@@60 null)) (not true)) (or (and (= $o@@60 this@@91) (= $f@@40 _module.Lifetime.mightPointFrom)) (and (= $o@@60 this@@91) (= $f@@40 _module.Lifetime.elements)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@32 $o@@60) $f@@40) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@32 $o@@60) $f@@40)))
 :qid |unknown.0:0|
 :skolemid |2261|
)) (= (_module.Lifetime.unused $h0@@32 this@@91) (_module.Lifetime.unused $h1@@32 this@@91))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2262|
 :pattern ( ($IsHeapAnchor $h0@@32) ($HeapSucc $h0@@32 $h1@@32) (_module.Lifetime.unused $h1@@32 this@@91))
)))
(assert (forall (($h@@26 T@U) ($o@@61 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@61 null)) (not true)) (= (dtype $o@@61) Tclass._module.Lifetime?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@61) _module.Lifetime.owner)) Tclass._module.Thread?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2253|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@61) _module.Lifetime.owner)))
)))
(assert (forall (($h@@27 T@U) ($o@@62 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@62 null)) (not true)) (= (dtype $o@@62) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@62) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3254|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@62) _module.Mutex.data)))
)))
(assert (forall (($h@@28 T@U) ($o@@63 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@63 null)) (not true)) (= (dtype $o@@63) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@63) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3547|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@63) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@29 T@U) ($o@@64 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@64 null)) (not true)) (= (dtype $o@@64) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@64) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3549|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@64) _module.MutexGuardU32.data)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@45 T@U) ($Heap@@58 T@U) (this@@92 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@45 $Heap@@58 this@@92) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@92 null)) (not true)) ($Is refType this@@92 Tclass._module.Thread)))) (= (_module.Object.localInv2 $prevHeap@@45 $Heap@@58 this@@92) (_module.Thread.localInv2 $prevHeap@@45 $Heap@@58 this@@92)))
 :qid |_12MutexLifetimelongdfy.352:22|
 :skolemid |1898|
 :pattern ( (_module.Object.localInv2 $prevHeap@@45 $Heap@@58 this@@92) ($Is refType this@@92 Tclass._module.Thread) ($IsGoodHeap $Heap@@58))
 :pattern ( (_module.Object.localInv2 $prevHeap@@45 $Heap@@58 this@@92) (_module.Thread.localInv2 $prevHeap@@45 $Heap@@58 this@@92) ($IsGoodHeap $Heap@@58))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@46 T@U) ($Heap@@59 T@U) (this@@93 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@46 $Heap@@59 this@@93) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@93 null)) (not true)) ($Is refType this@@93 Tclass._module.Thread)))) (= (_module.Object.sequenceInv2 $prevHeap@@46 $Heap@@59 this@@93) (_module.Thread.sequenceInv2 $prevHeap@@46 $Heap@@59 this@@93)))
 :qid |_12MutexLifetimelongdfy.354:22|
 :skolemid |1905|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@46 $Heap@@59 this@@93) ($Is refType this@@93 Tclass._module.Thread) ($IsGoodHeap $Heap@@59))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@46 $Heap@@59 this@@93) (_module.Thread.sequenceInv2 $prevHeap@@46 $Heap@@59 this@@93) ($IsGoodHeap $Heap@@59))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@47 T@U) ($Heap@@60 T@U) (this@@94 T@U) ) (!  (=> (or (|_module.Lifetime.localInv2#canCall| $prevHeap@@47 $Heap@@60 this@@94) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@94 null)) (not true)) ($Is refType this@@94 Tclass._module.Lifetime)))) (= (_module.Object.localInv2 $prevHeap@@47 $Heap@@60 this@@94) (_module.Lifetime.localInv2 $prevHeap@@47 $Heap@@60 this@@94)))
 :qid |_12MutexLifetimelongdfy.352:22|
 :skolemid |2432|
 :pattern ( (_module.Object.localInv2 $prevHeap@@47 $Heap@@60 this@@94) ($Is refType this@@94 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@60))
 :pattern ( (_module.Object.localInv2 $prevHeap@@47 $Heap@@60 this@@94) (_module.Lifetime.localInv2 $prevHeap@@47 $Heap@@60 this@@94) ($IsGoodHeap $Heap@@60))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@48 T@U) ($Heap@@61 T@U) (this@@95 T@U) ) (!  (=> (or (|_module.OwnedU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@48 $Heap@@61 this@@95) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@95 null)) (not true)) ($Is refType this@@95 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@48 $Heap@@61 this@@95) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@48 $Heap@@61 this@@95)))
 :qid |_12MutexLifetimelongdfy.520:22|
 :skolemid |2732|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@48 $Heap@@61 this@@95) ($Is refType this@@95 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@61))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@48 $Heap@@61 this@@95) (_module.OwnedU32.unchangedNonvolatileUserFields $prevHeap@@48 $Heap@@61 this@@95) ($IsGoodHeap $Heap@@61))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@49 T@U) ($Heap@@62 T@U) (this@@96 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv2#canCall| $prevHeap@@49 $Heap@@62 this@@96) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@96 null)) (not true)) ($Is refType this@@96 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@49 $Heap@@62 this@@96) (_module.OwnedU32.localUserInv2 $prevHeap@@49 $Heap@@62 this@@96)))
 :qid |_12MutexLifetimelongdfy.522:22|
 :skolemid |2754|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@49 $Heap@@62 this@@96) ($Is refType this@@96 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@62))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@49 $Heap@@62 this@@96) (_module.OwnedU32.localUserInv2 $prevHeap@@49 $Heap@@62 this@@96) ($IsGoodHeap $Heap@@62))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@50 T@U) ($Heap@@63 T@U) (this@@97 T@U) ) (!  (=> (or (|_module.Mutex.unchangedNonvolatileUserFields#canCall| $prevHeap@@50 $Heap@@63 this@@97) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@97 null)) (not true)) ($Is refType this@@97 Tclass._module.Mutex)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@50 $Heap@@63 this@@97) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@50 $Heap@@63 this@@97)))
 :qid |_12MutexLifetimelongdfy.520:22|
 :skolemid |3279|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@50 $Heap@@63 this@@97) ($Is refType this@@97 Tclass._module.Mutex) ($IsGoodHeap $Heap@@63))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@50 $Heap@@63 this@@97) (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@50 $Heap@@63 this@@97) ($IsGoodHeap $Heap@@63))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@51 T@U) ($Heap@@64 T@U) (this@@98 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv2#canCall| $prevHeap@@51 $Heap@@64 this@@98) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@98 null)) (not true)) ($Is refType this@@98 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@51 $Heap@@64 this@@98) (_module.Mutex.localUserInv2 $prevHeap@@51 $Heap@@64 this@@98)))
 :qid |_12MutexLifetimelongdfy.522:22|
 :skolemid |3307|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@51 $Heap@@64 this@@98) ($Is refType this@@98 Tclass._module.Mutex) ($IsGoodHeap $Heap@@64))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@51 $Heap@@64 this@@98) (_module.Mutex.localUserInv2 $prevHeap@@51 $Heap@@64 this@@98) ($IsGoodHeap $Heap@@64))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@52 T@U) ($Heap@@65 T@U) (this@@99 T@U) ) (!  (=> (or (|_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@52 $Heap@@65 this@@99) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@99 null)) (not true)) ($Is refType this@@99 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@65 this@@99) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@65 this@@99)))
 :qid |_12MutexLifetimelongdfy.520:22|
 :skolemid |3570|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@65 this@@99) ($Is refType this@@99 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@65))
 :pattern ( (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@65 this@@99) (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@52 $Heap@@65 this@@99) ($IsGoodHeap $Heap@@65))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@53 T@U) ($Heap@@66 T@U) (this@@100 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv2#canCall| $prevHeap@@53 $Heap@@66 this@@100) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@100 null)) (not true)) ($Is refType this@@100 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv2 $prevHeap@@53 $Heap@@66 this@@100) (_module.MutexGuardU32.localUserInv2 $prevHeap@@53 $Heap@@66 this@@100)))
 :qid |_12MutexLifetimelongdfy.522:22|
 :skolemid |3598|
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@53 $Heap@@66 this@@100) ($Is refType this@@100 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@66))
 :pattern ( (_module.OwnedObject.localUserInv2 $prevHeap@@53 $Heap@@66 this@@100) (_module.MutexGuardU32.localUserInv2 $prevHeap@@53 $Heap@@66 this@@100) ($IsGoodHeap $Heap@@66))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@54 T@U) ($Heap@@67 T@U) (this@@101 T@U) ) (!  (=> (or (|_module.Thread.inv2#canCall| $prevHeap@@54 $Heap@@67 this@@101) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@101 null)) (not true)) ($Is refType this@@101 Tclass._module.Thread)))) (= (_module.Object.inv2 $prevHeap@@54 $Heap@@67 this@@101) (_module.Thread.inv2 $prevHeap@@54 $Heap@@67 this@@101)))
 :qid |_12MutexLifetimelongdfy.355:22|
 :skolemid |1912|
 :pattern ( (_module.Object.inv2 $prevHeap@@54 $Heap@@67 this@@101) ($Is refType this@@101 Tclass._module.Thread) ($IsGoodHeap $Heap@@67))
 :pattern ( (_module.Object.inv2 $prevHeap@@54 $Heap@@67 this@@101) (_module.Thread.inv2 $prevHeap@@54 $Heap@@67 this@@101) ($IsGoodHeap $Heap@@67))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@55 T@U) ($Heap@@68 T@U) (this@@102 T@U) ) (!  (=> (or (|_module.Lifetime.sequenceInv2#canCall| $prevHeap@@55 $Heap@@68 this@@102) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@102 null)) (not true)) ($Is refType this@@102 Tclass._module.Lifetime)))) (= (_module.Object.sequenceInv2 $prevHeap@@55 $Heap@@68 this@@102) (_module.Lifetime.sequenceInv2 $prevHeap@@55 $Heap@@68 this@@102)))
 :qid |_12MutexLifetimelongdfy.354:22|
 :skolemid |2424|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@55 $Heap@@68 this@@102) ($Is refType this@@102 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@68))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@55 $Heap@@68 this@@102) (_module.Lifetime.sequenceInv2 $prevHeap@@55 $Heap@@68 this@@102) ($IsGoodHeap $Heap@@68))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@56 T@U) ($Heap@@69 T@U) (this@@103 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv2#canCall| $prevHeap@@56 $Heap@@69 this@@103) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@103 null)) (not true)) ($Is refType this@@103 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.userInv2 $prevHeap@@56 $Heap@@69 this@@103) (_module.OwnedU32.userInv2 $prevHeap@@56 $Heap@@69 this@@103)))
 :qid |_12MutexLifetimelongdfy.524:22|
 :skolemid |2761|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@56 $Heap@@69 this@@103) ($Is refType this@@103 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@69))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@56 $Heap@@69 this@@103) (_module.OwnedU32.userInv2 $prevHeap@@56 $Heap@@69 this@@103) ($IsGoodHeap $Heap@@69))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@57 T@U) ($Heap@@70 T@U) (this@@104 T@U) ) (!  (=> (or (|_module.Mutex.userInv2#canCall| $prevHeap@@57 $Heap@@70 this@@104) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@104 null)) (not true)) ($Is refType this@@104 Tclass._module.Mutex)))) (= (_module.OwnedObject.userInv2 $prevHeap@@57 $Heap@@70 this@@104) (_module.Mutex.userInv2 $prevHeap@@57 $Heap@@70 this@@104)))
 :qid |_12MutexLifetimelongdfy.524:22|
 :skolemid |3314|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@57 $Heap@@70 this@@104) ($Is refType this@@104 Tclass._module.Mutex) ($IsGoodHeap $Heap@@70))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@57 $Heap@@70 this@@104) (_module.Mutex.userInv2 $prevHeap@@57 $Heap@@70 this@@104) ($IsGoodHeap $Heap@@70))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@58 T@U) ($Heap@@71 T@U) (this@@105 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@58 $Heap@@71 this@@105) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@105 null)) (not true)) ($Is refType this@@105 Tclass._module.OwnedObject)))) (= (_module.Object.localInv2 $prevHeap@@58 $Heap@@71 this@@105) (_module.OwnedObject.localInv2 $prevHeap@@58 $Heap@@71 this@@105)))
 :qid |_12MutexLifetimelongdfy.352:22|
 :skolemid |2179|
 :pattern ( (_module.Object.localInv2 $prevHeap@@58 $Heap@@71 this@@105) ($Is refType this@@105 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@71))
 :pattern ( (_module.Object.localInv2 $prevHeap@@58 $Heap@@71 this@@105) (_module.OwnedObject.localInv2 $prevHeap@@58 $Heap@@71 this@@105) ($IsGoodHeap $Heap@@71))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@59 T@U) ($Heap@@72 T@U) (this@@106 T@U) ) (!  (=> (or (|_module.Lifetime.inv2#canCall| $prevHeap@@59 $Heap@@72 this@@106) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@106 null)) (not true)) ($Is refType this@@106 Tclass._module.Lifetime)))) (= (_module.Object.inv2 $prevHeap@@59 $Heap@@72 this@@106) (_module.Lifetime.inv2 $prevHeap@@59 $Heap@@72 this@@106)))
 :qid |_12MutexLifetimelongdfy.355:22|
 :skolemid |2439|
 :pattern ( (_module.Object.inv2 $prevHeap@@59 $Heap@@72 this@@106) ($Is refType this@@106 Tclass._module.Lifetime) ($IsGoodHeap $Heap@@72))
 :pattern ( (_module.Object.inv2 $prevHeap@@59 $Heap@@72 this@@106) (_module.Lifetime.inv2 $prevHeap@@59 $Heap@@72 this@@106) ($IsGoodHeap $Heap@@72))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@60 T@U) ($Heap@@73 T@U) (this@@107 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@60 $Heap@@73 this@@107) (and (< 3 $FunctionContextHeight) (and (or (not (= this@@107 null)) (not true)) ($Is refType this@@107 Tclass._module.OwnedObject)))) (= (_module.Object.sequenceInv2 $prevHeap@@60 $Heap@@73 this@@107) (_module.OwnedObject.sequenceInv2 $prevHeap@@60 $Heap@@73 this@@107)))
 :qid |_12MutexLifetimelongdfy.354:22|
 :skolemid |2187|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@60 $Heap@@73 this@@107) ($Is refType this@@107 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@73))
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@60 $Heap@@73 this@@107) (_module.OwnedObject.sequenceInv2 $prevHeap@@60 $Heap@@73 this@@107) ($IsGoodHeap $Heap@@73))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@61 T@U) ($Heap@@74 T@U) (this@@108 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv2#canCall| $prevHeap@@61 $Heap@@74 this@@108) (and (< 12 $FunctionContextHeight) (and (or (not (= this@@108 null)) (not true)) ($Is refType this@@108 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.userInv2 $prevHeap@@61 $Heap@@74 this@@108) (_module.MutexGuardU32.userInv2 $prevHeap@@61 $Heap@@74 this@@108)))
 :qid |_12MutexLifetimelongdfy.524:22|
 :skolemid |3605|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@61 $Heap@@74 this@@108) ($Is refType this@@108 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@74))
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@61 $Heap@@74 this@@108) (_module.MutexGuardU32.userInv2 $prevHeap@@61 $Heap@@74 this@@108) ($IsGoodHeap $Heap@@74))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($prevHeap@@62 T@U) ($Heap@@75 T@U) (this@@109 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@62 $Heap@@75 this@@109) (and (< 14 $FunctionContextHeight) (and (or (not (= this@@109 null)) (not true)) ($Is refType this@@109 Tclass._module.OwnedObject)))) (= (_module.Object.inv2 $prevHeap@@62 $Heap@@75 this@@109) (_module.OwnedObject.inv2 $prevHeap@@62 $Heap@@75 this@@109)))
 :qid |_12MutexLifetimelongdfy.355:22|
 :skolemid |2196|
 :pattern ( (_module.Object.inv2 $prevHeap@@62 $Heap@@75 this@@109) ($Is refType this@@109 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@75))
 :pattern ( (_module.Object.inv2 $prevHeap@@62 $Heap@@75 this@@109) (_module.OwnedObject.inv2 $prevHeap@@62 $Heap@@75 this@@109) ($IsGoodHeap $Heap@@75))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@76 T@U) (this@@110 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@76 this@@110) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@76) (and (or (not (= this@@110 null)) (not true)) (and ($Is refType this@@110 Tclass._module.Mutex) ($IsAlloc refType this@@110 Tclass._module.Mutex $Heap@@76)))))) (= (_module.Mutex.localUserInv $Heap@@76 this@@110)  (and (and (= (_module.OwnedObject.lifetime this@@110) (_module.OwnedObject.lifetime ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.data)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.locked))) (and ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.data))) _module.OwnedObject.owner)) Tclass._module.MutexGuardU32) (let ((|mutexGuard#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.data))) _module.OwnedObject.owner))))
 (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 |mutexGuard#0|) _module.OwnedObject.owner)) null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 |mutexGuard#0|) _module.MutexGuardU32.mutex)) this@@110)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType |mutexGuard#0|)))))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.locked)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.data))) _module.OwnedObject.owner)) this@@110) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@76 this@@110) _module.Mutex.guards)) |Set#Empty|))))))
 :qid |_12MutexLifetimelongdfy.770:19|
 :skolemid |3285|
 :pattern ( (_module.Mutex.localUserInv $Heap@@76 this@@110) ($IsGoodHeap $Heap@@76))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@63 T@U) ($Heap@@77 T@U) (this@@111 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv2#canCall| $prevHeap@@63 $Heap@@77 this@@111) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@63) ($IsGoodHeap $Heap@@77)) ($HeapSucc $prevHeap@@63 $Heap@@77)) (and (or (not (= this@@111 null)) (not true)) (and ($Is refType this@@111 Tclass._module.OwnedObject) ($IsAlloc refType this@@111 Tclass._module.OwnedObject $prevHeap@@63)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 this@@111) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv2#canCall| $prevHeap@@63 $Heap@@77 this@@111))) (= (_module.OwnedObject.localInv2 $prevHeap@@63 $Heap@@77 this@@111)  (and true (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@77 this@@111) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv2 $prevHeap@@63 $Heap@@77 this@@111))))))
 :qid |_12MutexLifetimelongdfy.454:22|
 :skolemid |2178|
 :pattern ( (_module.OwnedObject.localInv2 $prevHeap@@63 $Heap@@77 this@@111) ($IsGoodHeap $Heap@@77))
))))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@8 Tclass._module.Universe))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsBox bx@@9 Tclass._module.Universe?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@11 Tclass._module.Thread))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsBox bx@@13 Tclass._module.Object?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Lifetime) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Lifetime)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@14 Tclass._module.Lifetime))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsBox bx@@16 Tclass._module.Mutex))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsBox bx@@17 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Lifetime?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.Lifetime?)))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsBox bx@@18 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@19 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( ($IsBox bx@@21 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.ObjectClassKind) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) Tclass._module.ObjectClassKind)))
 :qid |unknown.0:0|
 :skolemid |1683|
 :pattern ( ($IsBox bx@@22 Tclass._module.ObjectClassKind))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@23)) bx@@23) ($Is refType ($Unbox refType bx@@23) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |2708|
 :pattern ( ($IsBox bx@@23 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@24)) bx@@24) ($Is refType ($Unbox refType bx@@24) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( ($IsBox bx@@24 Tclass._module.Mutex?))
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
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($prevHeap@@64 T@U) ($Heap@@78 T@U) (this@@112 T@U) ) (!  (=> (or (|_module.OwnedObject.inv2#canCall| $prevHeap@@64 $Heap@@78 this@@112) (and (< 14 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@64) ($IsGoodHeap $Heap@@78)) ($HeapSucc $prevHeap@@64 $Heap@@78)) (and (or (not (= this@@112 null)) (not true)) (and ($Is refType this@@112 Tclass._module.OwnedObject) ($IsAlloc refType this@@112 Tclass._module.OwnedObject $prevHeap@@64)))))) (and (and (|_module.OwnedObject.localInv2#canCall| $prevHeap@@64 $Heap@@78 this@@112) (=> (_module.OwnedObject.localInv2 $prevHeap@@64 $Heap@@78 this@@112) (and (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@64 $Heap@@78 this@@112) (=> (_module.OwnedObject.sequenceInv2 $prevHeap@@64 $Heap@@78 this@@112) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.userInv2#canCall| $prevHeap@@64 $Heap@@78 this@@112)) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv2 $prevHeap@@64 $Heap@@78 this@@112)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner)))) (not true)) (and (|_module.Object.localInv#canCall| $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner))) (and (|_module.Object.localInv2#canCall| $prevHeap@@64 $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner))) (=> (_module.Object.localInv2 $prevHeap@@64 $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner)) null)) (not true)) (and (|_module.Object.localInv#canCall| $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))) (=> (_module.Object.localInv $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))) (let ((|currOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0|) Tclass._module.Object? $prevHeap@@64) (|_module.Object.localInv2#canCall| $prevHeap@@64 $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))))))))))))))))))) (= (_module.OwnedObject.inv2 $prevHeap@@64 $Heap@@78 this@@112)  (and (and (and (_module.OwnedObject.localInv2 $prevHeap@@64 $Heap@@78 this@@112) (_module.OwnedObject.sequenceInv2 $prevHeap@@64 $Heap@@78 this@@112)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.userInv2 $prevHeap@@64 $Heap@@78 this@@112))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner)))) (not true)) (and (and (_module.Object.localInv $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner))) (_module.Object.localInv2 $prevHeap@@64 $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@64 this@@112) _module.OwnedObject.owner)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner)) null)) (not true)) (and (_module.Object.localInv $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))) (let ((|currOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner))))
 (=> ($IsAllocBox ($Box refType |currOwner#0@@0|) Tclass._module.Object? $prevHeap@@64) (_module.Object.localInv2 $prevHeap@@64 $Heap@@78 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@78 this@@112) _module.OwnedObject.owner)))))))))))))
 :qid |_12MutexLifetimelongdfy.484:22|
 :skolemid |2195|
 :pattern ( (_module.OwnedObject.inv2 $prevHeap@@64 $Heap@@78 this@@112) ($IsGoodHeap $Heap@@78))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap@@65 T@U) ($Heap@@79 T@U) (this@@113 T@U) (|running#0@@2| T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@65 $Heap@@79 this@@113 |running#0@@2|) (and (< 9 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@65) ($IsGoodHeap $Heap@@79)) ($HeapSucc $prevHeap@@65 $Heap@@79)) (and (or (not (= this@@113 null)) (not true)) (and ($Is refType this@@113 Tclass._module.Universe) ($IsAlloc refType this@@113 Tclass._module.Universe $prevHeap@@65)))) ($Is SetType |running#0@@2| (TSet Tclass._module.Thread))))) (and (and (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap@@65 $Heap@@79 this@@113) (=> (_module.Universe.baseLegalTransitionsSequence $prevHeap@@65 $Heap@@79 this@@113) (=> (|Set#Subset| |running#0@@2| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content))) (and (forall ((|o#0@@10| T@U) ) (!  (=> ($Is refType |o#0@@10| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@10|))) (=> (not (forall (($o@@65 T@U) ($f@@41 T@U) ) (!  (=> (or (not (= $o@@65 null)) (not true)) (=> (= $o@@65 |o#0@@10|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@65) $f@@41) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 $o@@65) $f@@41))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1237|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@65) $f@@41))
))) (|_module.Object.sequenceInv2#canCall| $prevHeap@@65 $Heap@@79 |o#0@@10|))))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1238|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@65 $Heap@@79 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@10|)))
)) (=> (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@11|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@11|)))) (or (forall (($o@@66 T@U) ($f@@42 T@U) ) (!  (=> (or (not (= $o@@66 null)) (not true)) (=> (= $o@@66 |o#0@@11|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@66) $f@@42) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 $o@@66) $f@@42))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1241|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@66) $f@@42))
)) (_module.Object.sequenceInv2 $prevHeap@@65 $Heap@@79 |o#0@@11|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1242|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@65 $Heap@@79 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@11|)))
)) (=> (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#1@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@65)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 |o#1@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1240|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#1@@1|)))
)) (forall ((|l#0@@4| T@U) ) (!  (=> ($Is refType |l#0@@4| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |l#0@@4|)) (=> (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@4|) _module.Lifetime.owner))) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@4|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@65) (|_module.Lifetime.unchangedNonvolatileFields#canCall| $prevHeap@@65 $Heap@@79 |l#0@@4|)))))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1239|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@65 $Heap@@79 |l#0@@4|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@4|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |l#0@@4|)))
)))))))) (= (_module.Universe.legalTransitionsSequence $prevHeap@@65 $Heap@@79 this@@113 |running#0@@2|)  (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $prevHeap@@65 $Heap@@79 this@@113) (|Set#Subset| |running#0@@2| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)))) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@12|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@12|)))) (or (forall (($o@@67 T@U) ($f@@43 T@U) ) (!  (=> (or (not (= $o@@67 null)) (not true)) (=> (= $o@@67 |o#0@@12|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@67) $f@@43) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 $o@@67) $f@@43))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1233|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 $o@@67) $f@@43))
)) (_module.Object.sequenceInv2 $prevHeap@@65 $Heap@@79 |o#0@@12|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1234|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@65 $Heap@@79 |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 this@@113) _module.Universe.content)) ($Box refType |o#0@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#0@@12|)))
))) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#1@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.owner) Tclass._module.Object? $prevHeap@@65)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 |o#1@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1235|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@79 |o#1@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |o#1@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |o#1@@2|)))
))) (forall ((|l#0@@5| T@U) ) (!  (=> (and ($Is refType |l#0@@5| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |l#0@@5|))) (=> (and (not (|Set#IsMember| |running#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@5|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@5|) _module.Lifetime.owner) Tclass._module.Thread? $prevHeap@@65)) (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@65 $Heap@@79 |l#0@@5|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1236|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $prevHeap@@65 $Heap@@79 |l#0@@5|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 |l#0@@5|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@65 this@@113) _module.Universe.content)) ($Box refType |l#0@@5|)))
))))))
 :qid |_12MutexLifetimelongdfy.53:22|
 :skolemid |1243|
 :pattern ( (_module.Universe.legalTransitionsSequence $prevHeap@@65 $Heap@@79 this@@113 |running#0@@2|) ($IsGoodHeap $Heap@@79))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@80 T@U) (this@@114 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@80 this@@114) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@80) (and (or (not (= this@@114 null)) (not true)) (and ($Is refType this@@114 Tclass._module.OwnedU32) ($IsAlloc refType this@@114 Tclass._module.OwnedU32 $Heap@@80)))))) ($Is SetType (_module.OwnedU32.objectUserFields $Heap@@80 this@@114) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2721|
 :pattern ( (_module.OwnedU32.objectUserFields $Heap@@80 this@@114))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@81 T@U) (this@@115 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@81 this@@115) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@81) (and (or (not (= this@@115 null)) (not true)) (and ($Is refType this@@115 Tclass._module.Mutex) ($IsAlloc refType this@@115 Tclass._module.Mutex $Heap@@81)))))) ($Is SetType (_module.Mutex.objectUserFields $Heap@@81 this@@115) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3268|
 :pattern ( (_module.Mutex.objectUserFields $Heap@@81 this@@115))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@82 T@U) (this@@116 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@82 this@@116) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@82) (and (or (not (= this@@116 null)) (not true)) (and ($Is refType this@@116 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@116 Tclass._module.MutexGuardU32 $Heap@@82)))))) ($Is SetType (_module.MutexGuardU32.objectUserFields $Heap@@82 this@@116) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3559|
 :pattern ( (_module.MutexGuardU32.objectUserFields $Heap@@82 this@@116))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@83 T@U) (this@@117 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@83 this@@117) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@83) (and (or (not (= this@@117 null)) (not true)) (and ($Is refType this@@117 Tclass._module.OwnedObject) ($IsAlloc refType this@@117 Tclass._module.OwnedObject $Heap@@83)))))) ($Is SetType (_module.OwnedObject.objectUserFields $Heap@@83 this@@117) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2226|
 :pattern ( (_module.OwnedObject.objectUserFields $Heap@@83 this@@117))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@84 T@U) (this@@118 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@84 this@@118) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@84) (and (or (not (= this@@118 null)) (not true)) (and ($Is refType this@@118 Tclass._module.OwnedObject) ($IsAlloc refType this@@118 Tclass._module.OwnedObject $Heap@@84)))))) ($Is SetType (_module.OwnedObject.objectFields $Heap@@84 this@@118) (TSet Tclass._module.Object)))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2123|
 :pattern ( (_module.OwnedObject.objectFields $Heap@@84 this@@118))
))))
(assert (forall (($h@@30 T@U) ($o@@68 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@68 null)) (not true)) (= (dtype $o@@68) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@68) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@68) _module.Lifetime.owner)) Tclass._module.Thread? $h@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2254|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@68) _module.Lifetime.owner)))
)))
(assert (forall (($h@@31 T@U) ($o@@69 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@69 null)) (not true)) (= (dtype $o@@69) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@69) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@69) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3255|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@69) _module.Mutex.data)))
)))
(assert (forall (($h@@32 T@U) ($o@@70 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@70 null)) (not true)) (= (dtype $o@@70) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@70) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@70) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3548|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@70) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@33 T@U) ($o@@71 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@71 null)) (not true)) (= (dtype $o@@71) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@71) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@71) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@71) _module.MutexGuardU32.data)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@85 T@U) (this@@119 T@U) ) (!  (=> (or (|_module.Lifetime.unused#canCall| $Heap@@85 this@@119) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@85) (and (or (not (= this@@119 null)) (not true)) (and ($Is refType this@@119 Tclass._module.Lifetime) ($IsAlloc refType this@@119 Tclass._module.Lifetime $Heap@@85)))))) (= (_module.Lifetime.unused $Heap@@85 this@@119)  (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@85 this@@119) _module.Lifetime.mightPointFrom)) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@85 this@@119) _module.Lifetime.elements)) |Set#Empty|))))
 :qid |_12MutexLifetimelongdfy.548:19|
 :skolemid |2265|
 :pattern ( (_module.Lifetime.unused $Heap@@85 this@@119) ($IsGoodHeap $Heap@@85))
))))
(assert  (=> (<= 17 $FunctionContextHeight) (forall (($Heap@@86 T@U) (this@@120 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@86 this@@120) (and (< 17 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@86) (and (or (not (= this@@120 null)) (not true)) (and ($Is refType this@@120 Tclass._module.Object) ($IsAlloc refType this@@120 Tclass._module.Object $Heap@@86)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@86 (_module.Object.universe this@@120)) _module.Universe.content)) ($Box refType this@@120)) (|_module.Universe.globalInv#canCall| $Heap@@86 (_module.Object.universe this@@120))) (= (_module.Object.objectGlobalInv $Heap@@86 this@@120)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@86 (_module.Object.universe this@@120)) _module.Universe.content)) ($Box refType this@@120)) (_module.Universe.globalInv $Heap@@86 (_module.Object.universe this@@120))))))
 :qid |_12MutexLifetimelongdfy.305:19|
 :skolemid |1710|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@86 this@@120) ($IsGoodHeap $Heap@@86))
))))
(assert (forall (($o@@72 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@72 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@72 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3838|
 :pattern ( ($IsAlloc refType $o@@72 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@73 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@73 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@73 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3842|
 :pattern ( ($IsAlloc refType $o@@73 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@74 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@74 Tclass._module.Lifetime? $heap@@1) ($IsAlloc refType $o@@74 Tclass._module.Object? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3846|
 :pattern ( ($IsAlloc refType $o@@74 Tclass._module.Lifetime? $heap@@1))
)))
(assert (forall (($o@@75 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@75 Tclass._module.OwnedU32? $heap@@2) ($IsAlloc refType $o@@75 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3850|
 :pattern ( ($IsAlloc refType $o@@75 Tclass._module.OwnedU32? $heap@@2))
)))
(assert (forall (($o@@76 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@76 Tclass._module.Mutex? $heap@@3) ($IsAlloc refType $o@@76 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3858|
 :pattern ( ($IsAlloc refType $o@@76 Tclass._module.Mutex? $heap@@3))
)))
(assert (forall (($o@@77 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@77 Tclass._module.MutexGuardU32? $heap@@4) ($IsAlloc refType $o@@77 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3862|
 :pattern ( ($IsAlloc refType $o@@77 Tclass._module.MutexGuardU32? $heap@@4))
)))
(assert (forall (($h@@34 T@U) ($o@@78 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@78 null)) (not true)) (= (dtype $o@@78) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@78) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2255|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@78) _module.Lifetime.elements)))
)))
(assert (forall (($h@@35 T@U) ($o@@79 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@79 null)) (not true)) (= (dtype $o@@79) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@79) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@79) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@36 T@U) ($o@@80 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@80 null)) (not true)) (= (dtype $o@@80) Tclass._module.Lifetime?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@80) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@80) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@37 T@U) ($o@@81 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@81 null)) (not true)) (= (dtype $o@@81) Tclass._module.Mutex?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@81) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@81) _module.Mutex.guards)))
)))
(assert (forall (($h@@38 T@U) ($o@@82 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@82 null)) (not true)) (= (dtype $o@@82) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@82) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@82) _module.Lifetime.elements)) (TSet Tclass._module.OwnedObject) $h@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2256|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@82) _module.Lifetime.elements)))
)))
(assert (forall (($h@@39 T@U) ($o@@83 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@83 null)) (not true)) (= (dtype $o@@83) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@83) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@83) _module.Lifetime.mightPointTo)) (TSet Tclass._module.Lifetime) $h@@39))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2258|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@83) _module.Lifetime.mightPointTo)))
)))
(assert (forall (($h@@40 T@U) ($o@@84 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@84 null)) (not true)) (= (dtype $o@@84) Tclass._module.Lifetime?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@84) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@84) _module.Lifetime.mightPointFrom)) (TSet Tclass._module.Lifetime) $h@@40))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2260|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@84) _module.Lifetime.mightPointFrom)))
)))
(assert (forall (($h@@41 T@U) ($o@@85 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@85 null)) (not true)) (= (dtype $o@@85) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@85) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@85) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32) $h@@41))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3259|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@85) _module.Mutex.guards)))
)))
(assert (forall (($h0@@33 T@U) ($h1@@33 T@U) (this@@121 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@33) ($IsGoodHeap $h1@@33)) (and (or (not (= this@@121 null)) (not true)) ($Is refType this@@121 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33))) (=> (forall (($o@@86 T@U) ($f@@44 T@U) ) (!  (=> (and (or (not (= $o@@86 null)) (not true)) (and (= $o@@86 this@@121) (= $f@@44 _module.OwnedObject.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@33 $o@@86) $f@@44) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@33 $o@@86) $f@@44)))
 :qid |unknown.0:0|
 :skolemid |2110|
)) (= (_module.OwnedObject.alive $h0@@33 this@@121) (_module.OwnedObject.alive $h1@@33 this@@121))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2111|
 :pattern ( ($IsHeapAnchor $h0@@33) ($HeapSucc $h0@@33 $h1@@33) (_module.OwnedObject.alive $h1@@33 this@@121))
)))
(assert (forall (($h0@@34 T@U) ($h1@@34 T@U) (this@@122 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@34) ($IsGoodHeap $h1@@34)) (and (or (not (= this@@122 null)) (not true)) ($Is refType this@@122 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34))) (=> (forall (($o@@87 T@U) ($f@@45 T@U) ) (!  (=> (and (or (not (= $o@@87 null)) (not true)) (and (= $o@@87 this@@122) (= $f@@45 _module.Lifetime.owner))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@34 $o@@87) $f@@45) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@34 $o@@87) $f@@45)))
 :qid |unknown.0:0|
 :skolemid |2266|
)) (= (_module.Lifetime.alive $h0@@34 this@@122) (_module.Lifetime.alive $h1@@34 this@@122))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2267|
 :pattern ( ($IsHeapAnchor $h0@@34) ($HeapSucc $h0@@34 $h1@@34) (_module.Lifetime.alive $h1@@34 this@@122))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@66 T@U) ($Heap@@87 T@U) (this@@123 T@U) ) (!  (=> (or (|_module.Thread.localInv2#canCall| $prevHeap@@66 $Heap@@87 this@@123) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@66) ($IsGoodHeap $Heap@@87)) ($HeapSucc $prevHeap@@66 $Heap@@87)) (and (or (not (= this@@123 null)) (not true)) (and ($Is refType this@@123 Tclass._module.Thread) ($IsAlloc refType this@@123 Tclass._module.Thread $prevHeap@@66)))))) (= (_module.Thread.localInv2 $prevHeap@@66 $Heap@@87 this@@123) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.376:22|
 :skolemid |1897|
 :pattern ( (_module.Thread.localInv2 $prevHeap@@66 $Heap@@87 this@@123) ($IsGoodHeap $Heap@@87))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@67 T@U) ($Heap@@88 T@U) (this@@124 T@U) ) (!  (=> (or (|_module.Thread.sequenceInv2#canCall| $prevHeap@@67 $Heap@@88 this@@124) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@67) ($IsGoodHeap $Heap@@88)) ($HeapSucc $prevHeap@@67 $Heap@@88)) (and (or (not (= this@@124 null)) (not true)) (and ($Is refType this@@124 Tclass._module.Thread) ($IsAlloc refType this@@124 Tclass._module.Thread $prevHeap@@67)))))) (= (_module.Thread.sequenceInv2 $prevHeap@@67 $Heap@@88 this@@124) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.379:22|
 :skolemid |1904|
 :pattern ( (_module.Thread.sequenceInv2 $prevHeap@@67 $Heap@@88 this@@124) ($IsGoodHeap $Heap@@88))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@68 T@U) ($Heap@@89 T@U) (this@@125 T@U) ) (!  (=> (or (|_module.Lifetime.localInv2#canCall| $prevHeap@@68 $Heap@@89 this@@125) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@68) ($IsGoodHeap $Heap@@89)) ($HeapSucc $prevHeap@@68 $Heap@@89)) (and (or (not (= this@@125 null)) (not true)) (and ($Is refType this@@125 Tclass._module.Lifetime) ($IsAlloc refType this@@125 Tclass._module.Lifetime $prevHeap@@68)))))) (= (_module.Lifetime.localInv2 $prevHeap@@68 $Heap@@89 this@@125) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.603:22|
 :skolemid |2431|
 :pattern ( (_module.Lifetime.localInv2 $prevHeap@@68 $Heap@@89 this@@125) ($IsGoodHeap $Heap@@89))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@69 T@U) ($Heap@@90 T@U) (this@@126 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv2#canCall| $prevHeap@@69 $Heap@@90 this@@126) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@69) ($IsGoodHeap $Heap@@90)) ($HeapSucc $prevHeap@@69 $Heap@@90)) (and (or (not (= this@@126 null)) (not true)) (and ($Is refType this@@126 Tclass._module.OwnedU32) ($IsAlloc refType this@@126 Tclass._module.OwnedU32 $prevHeap@@69)))))) (= (_module.OwnedU32.localUserInv2 $prevHeap@@69 $Heap@@90 this@@126) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.647:22|
 :skolemid |2753|
 :pattern ( (_module.OwnedU32.localUserInv2 $prevHeap@@69 $Heap@@90 this@@126) ($IsGoodHeap $Heap@@90))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@70 T@U) ($Heap@@91 T@U) (this@@127 T@U) ) (!  (=> (or (|_module.Mutex.unchangedNonvolatileUserFields#canCall| $prevHeap@@70 $Heap@@91 this@@127) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@70) ($IsGoodHeap $Heap@@91)) ($HeapSucc $prevHeap@@70 $Heap@@91)) (and (or (not (= this@@127 null)) (not true)) (and ($Is refType this@@127 Tclass._module.Mutex) ($IsAlloc refType this@@127 Tclass._module.Mutex $prevHeap@@70)))))) (= (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@70 $Heap@@91 this@@127) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.768:22|
 :skolemid |3278|
 :pattern ( (_module.Mutex.unchangedNonvolatileUserFields $prevHeap@@70 $Heap@@91 this@@127) ($IsGoodHeap $Heap@@91))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@71 T@U) ($Heap@@92 T@U) (this@@128 T@U) ) (!  (=> (or (|_module.Mutex.userInv2#canCall| $prevHeap@@71 $Heap@@92 this@@128) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@71) ($IsGoodHeap $Heap@@92)) ($HeapSucc $prevHeap@@71 $Heap@@92)) (and (or (not (= this@@128 null)) (not true)) (and ($Is refType this@@128 Tclass._module.Mutex) ($IsAlloc refType this@@128 Tclass._module.Mutex $prevHeap@@71)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Mutex.localUserInv2#canCall| $prevHeap@@71 $Heap@@92 this@@128)) (= (_module.Mutex.userInv2 $prevHeap@@71 $Heap@@92 this@@128)  (and true (_module.Mutex.localUserInv2 $prevHeap@@71 $Heap@@92 this@@128)))))
 :qid |_12MutexLifetimelongdfy.793:22|
 :skolemid |3313|
 :pattern ( (_module.Mutex.userInv2 $prevHeap@@71 $Heap@@92 this@@128) ($IsGoodHeap $Heap@@92))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|last#0| Int) ) (!  (=> (or (|_module.__default.Bump#canCall| |last#0|) (< 0 $FunctionContextHeight)) (> (_module.__default.Bump |last#0|) |last#0|))
 :qid |_12MutexLifetimelongdfy.539:21|
 :skolemid |812|
 :pattern ( (_module.__default.Bump |last#0|))
))))
(assert (forall (($h0@@35 T@U) ($h1@@35 T@U) (this@@129 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@35) ($IsGoodHeap $h1@@35)) (and (or (not (= this@@129 null)) (not true)) ($Is refType this@@129 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35))) (=> (forall (($o@@88 T@U) ($f@@46 T@U) ) (!  (=> (and (or (not (= $o@@88 null)) (not true)) (or (= $o@@88 this@@129) (= $o@@88 (_module.Object.universe this@@129)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@35 $o@@88) $f@@46) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@35 $o@@88) $f@@46)))
 :qid |unknown.0:0|
 :skolemid |1775|
)) (= (_module.Object.baseFieldsInv $h0@@35 this@@129) (_module.Object.baseFieldsInv $h1@@35 this@@129))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1776|
 :pattern ( ($IsHeapAnchor $h0@@35) ($HeapSucc $h0@@35 $h1@@35) (_module.Object.baseFieldsInv $h1@@35 this@@129))
)))
(assert (forall (($h0@@36 T@U) ($h1@@36 T@U) (this@@130 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@36) ($IsGoodHeap $h1@@36)) (and (or (not (= this@@130 null)) (not true)) ($Is refType this@@130 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36))) (=> (forall (($o@@89 T@U) ($f@@47 T@U) ) (!  (=> (and (or (not (= $o@@89 null)) (not true)) (or (= $o@@89 this@@130) (= $o@@89 (_module.Object.universe this@@130)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@36 $o@@89) $f@@47) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@36 $o@@89) $f@@47)))
 :qid |unknown.0:0|
 :skolemid |1857|
)) (= (_module.Thread.baseFieldsInv $h0@@36 this@@130) (_module.Thread.baseFieldsInv $h1@@36 this@@130))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1858|
 :pattern ( ($IsHeapAnchor $h0@@36) ($HeapSucc $h0@@36 $h1@@36) (_module.Thread.baseFieldsInv $h1@@36 this@@130))
)))
(assert (forall (($h0@@37 T@U) ($h1@@37 T@U) (this@@131 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@37) ($IsGoodHeap $h1@@37)) (and (or (not (= this@@131 null)) (not true)) ($Is refType this@@131 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37))) (=> (forall (($o@@90 T@U) ($f@@48 T@U) ) (!  (=> (and (or (not (= $o@@90 null)) (not true)) (or (= $o@@90 this@@131) (= $o@@90 (_module.Object.universe this@@131)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@37 $o@@90) $f@@48) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@37 $o@@90) $f@@48)))
 :qid |unknown.0:0|
 :skolemid |2128|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@37 this@@131) (_module.OwnedObject.baseFieldsInv $h1@@37 this@@131))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2129|
 :pattern ( ($IsHeapAnchor $h0@@37) ($HeapSucc $h0@@37 $h1@@37) (_module.OwnedObject.baseFieldsInv $h1@@37 this@@131))
)))
(assert (forall (($h0@@38 T@U) ($h1@@38 T@U) (this@@132 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@38) ($IsGoodHeap $h1@@38)) (and (or (not (= this@@132 null)) (not true)) ($Is refType this@@132 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38))) (=> (forall (($o@@91 T@U) ($f@@49 T@U) ) (!  (=> (and (or (not (= $o@@91 null)) (not true)) (or (= $o@@91 this@@132) (= $o@@91 (_module.Object.universe this@@132)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@38 $o@@91) $f@@49) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@38 $o@@91) $f@@49)))
 :qid |unknown.0:0|
 :skolemid |2297|
)) (= (_module.Lifetime.baseFieldsInv $h0@@38 this@@132) (_module.Lifetime.baseFieldsInv $h1@@38 this@@132))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2298|
 :pattern ( ($IsHeapAnchor $h0@@38) ($HeapSucc $h0@@38 $h1@@38) (_module.Lifetime.baseFieldsInv $h1@@38 this@@132))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@93 T@U) (this@@133 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@93 this@@133) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@93) (and (or (not (= this@@133 null)) (not true)) (and ($Is refType this@@133 Tclass._module.OwnedObject) ($IsAlloc refType this@@133 Tclass._module.OwnedObject $Heap@@93)))))) (and (|_module.OwnedObject.objectFields#canCall| $Heap@@93 this@@133) (= (_module.OwnedObject.baseFieldsInv $Heap@@93 this@@133) (|Set#Subset| (_module.OwnedObject.objectFields $Heap@@93 this@@133) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@93 (_module.Object.universe this@@133)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.433:19|
 :skolemid |2132|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@93 this@@133) ($IsGoodHeap $Heap@@93))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@94 T@U) (this@@134 T@U) ) (!  (=> (or (|_module.Object.nonAliasing#canCall| $Heap@@94 this@@134) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@94) (and (or (not (= this@@134 null)) (not true)) (and ($Is refType this@@134 Tclass._module.Object) ($IsAlloc refType this@@134 Tclass._module.Object $Heap@@94)))))) (and (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@134)) (|_module.Object.objectClassKind#canCall| this@@134)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@134) |#_module.ObjectClassKind.Thread|) ($Is refType this@@134 Tclass._module.Thread)) (and (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@134)) (|_module.Object.objectClassKind#canCall| this@@134)) (=> (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@134) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@134 Tclass._module.OwnedObject)) (and (|$IsA#_module.ObjectClassKind| (_module.Object.objectClassKind this@@134)) (|_module.Object.objectClassKind#canCall| this@@134)))))) (= (_module.Object.nonAliasing $Heap@@94 this@@134)  (and (and (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@134) |#_module.ObjectClassKind.Thread|) ($Is refType this@@134 Tclass._module.Thread)) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@134) |#_module.ObjectClassKind.OwnedObject|) ($Is refType this@@134 Tclass._module.OwnedObject))) (= (|_module.ObjectClassKind#Equal| (_module.Object.objectClassKind this@@134) |#_module.ObjectClassKind.Lifetime|) ($Is refType this@@134 Tclass._module.Lifetime))))))
 :qid |_12MutexLifetimelongdfy.310:19|
 :skolemid |1723|
 :pattern ( (_module.Object.nonAliasing $Heap@@94 this@@134) ($IsGoodHeap $Heap@@94))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@135 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@135) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@135 null)) (not true)) ($Is refType this@@135 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind this@@135) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1853|
 :pattern ( (_module.Thread.objectClassKind this@@135))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@136 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@136) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@136 null)) (not true)) ($Is refType this@@136 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind this@@136) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2117|
 :pattern ( (_module.OwnedObject.objectClassKind this@@136))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@137 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@137) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@137 null)) (not true)) ($Is refType this@@137 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind this@@137) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2293|
 :pattern ( (_module.Lifetime.objectClassKind this@@137))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@95 T@U) (this@@138 T@U) ) (!  (=> (or (|_module.OwnedU32.objectUserFields#canCall| $Heap@@95 this@@138) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@95) (or (not (= this@@138 null)) (not true))) ($IsAlloc refType this@@138 Tclass._module.OwnedU32 $Heap@@95)))) ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@95 this@@138) (TSet Tclass._module.Object) $Heap@@95))
 :qid |_12MutexLifetimelongdfy.639:18|
 :skolemid |2722|
 :pattern ( ($IsAlloc SetType (_module.OwnedU32.objectUserFields $Heap@@95 this@@138) (TSet Tclass._module.Object) $Heap@@95))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@96 T@U) (this@@139 T@U) ) (!  (=> (or (|_module.Mutex.objectUserFields#canCall| $Heap@@96 this@@139) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@96) (or (not (= this@@139 null)) (not true))) ($IsAlloc refType this@@139 Tclass._module.Mutex $Heap@@96)))) ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@96 this@@139) (TSet Tclass._module.Object) $Heap@@96))
 :qid |_12MutexLifetimelongdfy.764:18|
 :skolemid |3269|
 :pattern ( ($IsAlloc SetType (_module.Mutex.objectUserFields $Heap@@96 this@@139) (TSet Tclass._module.Object) $Heap@@96))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@97 T@U) (this@@140 T@U) ) (!  (=> (or (|_module.MutexGuardU32.objectUserFields#canCall| $Heap@@97 this@@140) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@97) (or (not (= this@@140 null)) (not true))) ($IsAlloc refType this@@140 Tclass._module.MutexGuardU32 $Heap@@97)))) ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@97 this@@140) (TSet Tclass._module.Object) $Heap@@97))
 :qid |_12MutexLifetimelongdfy.849:18|
 :skolemid |3560|
 :pattern ( ($IsAlloc SetType (_module.MutexGuardU32.objectUserFields $Heap@@97 this@@140) (TSet Tclass._module.Object) $Heap@@97))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@98 T@U) (this@@141 T@U) ) (!  (=> (or (|_module.OwnedObject.objectUserFields#canCall| $Heap@@98 this@@141) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@98) (or (not (= this@@141 null)) (not true))) ($IsAlloc refType this@@141 Tclass._module.OwnedObject $Heap@@98)))) ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@98 this@@141) (TSet Tclass._module.Object) $Heap@@98))
 :qid |_12MutexLifetimelongdfy.519:18|
 :skolemid |2227|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectUserFields $Heap@@98 this@@141) (TSet Tclass._module.Object) $Heap@@98))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@99 T@U) (this@@142 T@U) ) (!  (=> (or (|_module.OwnedObject.objectFields#canCall| $Heap@@99 this@@142) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@99) (or (not (= this@@142 null)) (not true))) ($IsAlloc refType this@@142 Tclass._module.OwnedObject $Heap@@99)))) ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@99 this@@142) (TSet Tclass._module.Object) $Heap@@99))
 :qid |_12MutexLifetimelongdfy.427:18|
 :skolemid |2124|
 :pattern ( ($IsAlloc SetType (_module.OwnedObject.objectFields $Heap@@99 this@@142) (TSet Tclass._module.Object) $Heap@@99))
))))
(assert (forall (($ly@@11 T@U) ($Heap@@100 T@U) (this@@143 T@U) (|_k#0@@8| Int) (|a#0@@11| T@U) (|b#0@@11| T@U) ) (! (= (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@100 this@@143 |_k#0@@8| |a#0@@11| |b#0@@11|) (_module.Universe.outlives_h $ly@@11 $Heap@@100 this@@143 |_k#0@@8| |a#0@@11| |b#0@@11|))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1585|
 :pattern ( (_module.Universe.outlives_h ($LS $ly@@11) $Heap@@100 this@@143 |_k#0@@8| |a#0@@11| |b#0@@11|))
)))
(assert (forall (($ly@@12 T@U) ($Heap@@101 T@U) (this@@144 T@U) (|a#0@@12| T@U) (|x#0@@7| T@U) (|b#0@@12| T@U) ) (! (= (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@101 this@@144 |a#0@@12| |x#0@@7| |b#0@@12|) (_module.Universe.outlivesThrough $ly@@12 $Heap@@101 this@@144 |a#0@@12| |x#0@@7| |b#0@@12|))
 :qid |_12MutexLifetimelongdfy.166:19|
 :skolemid |1594|
 :pattern ( (_module.Universe.outlivesThrough ($LS $ly@@12) $Heap@@101 this@@144 |a#0@@12| |x#0@@7| |b#0@@12|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@102 T@U) (this@@145 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@102 this@@145) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@102) (and (or (not (= this@@145 null)) (not true)) (and ($Is refType this@@145 Tclass._module.Object) ($IsAlloc refType this@@145 Tclass._module.Object $Heap@@102)))))) (_module.Object.triggerAxioms $Heap@@102 this@@145))
 :qid |_12MutexLifetimelongdfy.315:19|
 :skolemid |1729|
 :pattern ( (_module.Object.triggerAxioms $Heap@@102 this@@145))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@103 T@U) (this@@146 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@103 this@@146) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@103) (and (or (not (= this@@146 null)) (not true)) (and ($Is refType this@@146 Tclass._module.OwnedObject) ($IsAlloc refType this@@146 Tclass._module.OwnedObject $Heap@@103)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@103 this@@146) (=> (_module.Object.objectGlobalBaseInv $Heap@@103 this@@146) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 (_module.OwnedObject.lifetime this@@146)) _module.Lifetime.elements)) ($Box refType this@@146)) (and (|_module.Lifetime.alive#canCall| $Heap@@103 (_module.OwnedObject.lifetime this@@146)) (=> (=> (_module.Lifetime.alive $Heap@@103 (_module.OwnedObject.lifetime this@@146)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 this@@146) _module.OwnedObject.owner)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 this@@146) _module.OwnedObject.owner)) null)) (not true)) (|_module.OwnedObject.localUserInv#canCall| $Heap@@103 this@@146))))))) (= (_module.OwnedObject.localInv $Heap@@103 this@@146)  (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@103 this@@146) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 (_module.OwnedObject.lifetime this@@146)) _module.Lifetime.elements)) ($Box refType this@@146))) (=> (_module.Lifetime.alive $Heap@@103 (_module.OwnedObject.lifetime this@@146)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 this@@146) _module.OwnedObject.owner)) null)) (not true)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@103 this@@146) _module.OwnedObject.owner)) null)) (not true)) (_module.OwnedObject.localUserInv $Heap@@103 this@@146))))))
 :qid |_12MutexLifetimelongdfy.443:19|
 :skolemid |2153|
 :pattern ( (_module.OwnedObject.localInv $Heap@@103 this@@146) ($IsGoodHeap $Heap@@103))
))))
(assert (forall (($ly@@13 T@U) ($h0@@39 T@U) ($h1@@39 T@U) (this@@147 T@U) (|a#0@@13| T@U) (|x#0@@8| T@U) (|b#0@@13| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@39) ($IsGoodHeap $h1@@39)) (and (or (not (= this@@147 null)) (not true)) ($Is refType this@@147 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough#canCall| $h0@@39 this@@147 |a#0@@13| |x#0@@8| |b#0@@13|) (and (and ($Is refType |a#0@@13| Tclass._module.Lifetime) ($Is refType |x#0@@8| Tclass._module.Lifetime)) ($Is refType |b#0@@13| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39))) (=> (forall (($o@@92 T@U) ($f@@50 T@U) ) (!  (=> (and (or (not (= $o@@92 null)) (not true)) (or (or (= $o@@92 this@@147) (and (and ($Is refType $o@@92 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 this@@147) _module.Universe.content)) ($Box refType $o@@92))) (= $f@@50 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@92 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 this@@147) _module.Universe.content)) ($Box refType $o@@92))) (= $f@@50 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@39 $o@@92) $f@@50) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@39 $o@@92) $f@@50)))
 :qid |unknown.0:0|
 :skolemid |1596|
)) (= (_module.Universe.outlivesThrough $ly@@13 $h0@@39 this@@147 |a#0@@13| |x#0@@8| |b#0@@13|) (_module.Universe.outlivesThrough $ly@@13 $h1@@39 this@@147 |a#0@@13| |x#0@@8| |b#0@@13|))))
 :qid |unknown.0:0|
 :skolemid |1597|
 :pattern ( ($IsHeapAnchor $h0@@39) ($HeapSucc $h0@@39 $h1@@39) (_module.Universe.outlivesThrough $ly@@13 $h1@@39 this@@147 |a#0@@13| |x#0@@8| |b#0@@13|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@13 b@@10) ($HeapSucc b@@10 c))
)))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@104 T@U) (this@@148 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@104 this@@148) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@104) (and (or (not (= this@@148 null)) (not true)) (and ($Is refType this@@148 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@148 Tclass._module.MutexGuardU32 $Heap@@104)))))) (and (and (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@104 this@@148) (=> (_module.MutexGuardU32.localUserInv $Heap@@104 this@@148) (|_module.OwnedObject.localInv#canCall| $Heap@@104 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@104 this@@148) _module.MutexGuardU32.mutex))))) (= (_module.MutexGuardU32.userInv $Heap@@104 this@@148)  (and (_module.MutexGuardU32.localUserInv $Heap@@104 this@@148) (_module.OwnedObject.localInv $Heap@@104 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@104 this@@148) _module.MutexGuardU32.mutex)))))))
 :qid |_12MutexLifetimelongdfy.870:19|
 :skolemid |3584|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@104 this@@148) ($IsGoodHeap $Heap@@104))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 TInt) (and (= ($Box intType ($Unbox intType bx@@25)) bx@@25) ($Is intType ($Unbox intType bx@@25) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@25 TInt))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 TBool) (and (= ($Box boolType ($Unbox boolType bx@@26)) bx@@26) ($Is boolType ($Unbox boolType bx@@26) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@26 TBool))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@105 T@U) (this@@149 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@105 this@@149) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@105) (and (or (not (= this@@149 null)) (not true)) (and ($Is refType this@@149 Tclass._module.OwnedU32) ($IsAlloc refType this@@149 Tclass._module.OwnedU32 $Heap@@105)))))) (=> (_module.OwnedU32.userInv $Heap@@105 this@@149) (_module.OwnedU32.localUserInv $Heap@@105 this@@149)))
 :qid |_12MutexLifetimelongdfy.646:19|
 :skolemid |2743|
 :pattern ( (_module.OwnedU32.userInv $Heap@@105 this@@149))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@106 T@U) (this@@150 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@106 this@@150) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@106) (and (or (not (= this@@150 null)) (not true)) (and ($Is refType this@@150 Tclass._module.Lifetime) ($IsAlloc refType this@@150 Tclass._module.Lifetime $Heap@@106)))))) (=> (_module.Lifetime.localInv $Heap@@106 this@@150) (_module.Object.objectGlobalBaseInv $Heap@@106 this@@150)))
 :qid |_12MutexLifetimelongdfy.579:19|
 :skolemid |2318|
 :pattern ( (_module.Lifetime.localInv $Heap@@106 this@@150))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@107 T@U) (this@@151 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@107 this@@151) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@107) (and (or (not (= this@@151 null)) (not true)) (and ($Is refType this@@151 Tclass._module.Thread) ($IsAlloc refType this@@151 Tclass._module.Thread $Heap@@107)))))) (=> (_module.Thread.inv $Heap@@107 this@@151) (_module.Thread.localInv $Heap@@107 this@@151)))
 :qid |_12MutexLifetimelongdfy.372:19|
 :skolemid |1883|
 :pattern ( (_module.Thread.inv $Heap@@107 this@@151))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@108 T@U) (this@@152 T@U) ) (!  (=> (or (|_module.Lifetime.inv#canCall| $Heap@@108 this@@152) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@108) (and (or (not (= this@@152 null)) (not true)) (and ($Is refType this@@152 Tclass._module.Lifetime) ($IsAlloc refType this@@152 Tclass._module.Lifetime $Heap@@108)))))) (=> (_module.Lifetime.inv $Heap@@108 this@@152) (_module.Lifetime.localInv $Heap@@108 this@@152)))
 :qid |_12MutexLifetimelongdfy.589:19|
 :skolemid |2385|
 :pattern ( (_module.Lifetime.inv $Heap@@108 this@@152))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@109 T@U) (this@@153 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@109 this@@153) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@109) (and (or (not (= this@@153 null)) (not true)) (and ($Is refType this@@153 Tclass._module.Object) ($IsAlloc refType this@@153 Tclass._module.Object $Heap@@109)))))) (=> (_module.Object.localInv $Heap@@109 this@@153) (_module.Object.objectGlobalBaseInv $Heap@@109 this@@153)))
 :qid |_12MutexLifetimelongdfy.351:19|
 :skolemid |1783|
 :pattern ( (_module.Object.localInv $Heap@@109 this@@153))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@110 T@U) (this@@154 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@110 this@@154) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@110) (and (or (not (= this@@154 null)) (not true)) (and ($Is refType this@@154 Tclass._module.Mutex) ($IsAlloc refType this@@154 Tclass._module.Mutex $Heap@@110)))))) (=> (_module.Mutex.userInv $Heap@@110 this@@154) (_module.Mutex.localUserInv $Heap@@110 this@@154)))
 :qid |_12MutexLifetimelongdfy.786:19|
 :skolemid |3290|
 :pattern ( (_module.Mutex.userInv $Heap@@110 this@@154))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@111 T@U) (this@@155 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@111 this@@155) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@111) (and (or (not (= this@@155 null)) (not true)) (and ($Is refType this@@155 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@155 Tclass._module.MutexGuardU32 $Heap@@111)))))) (=> (_module.MutexGuardU32.userInv $Heap@@111 this@@155) (_module.MutexGuardU32.localUserInv $Heap@@111 this@@155)))
 :qid |_12MutexLifetimelongdfy.870:19|
 :skolemid |3582|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@111 this@@155))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@112 T@U) (this@@156 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@112 this@@156) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@112) (and (or (not (= this@@156 null)) (not true)) (and ($Is refType this@@156 Tclass._module.OwnedObject) ($IsAlloc refType this@@156 Tclass._module.OwnedObject $Heap@@112)))))) (=> (_module.OwnedObject.userInv $Heap@@112 this@@156) (_module.OwnedObject.localUserInv $Heap@@112 this@@156)))
 :qid |_12MutexLifetimelongdfy.523:19|
 :skolemid |2243|
 :pattern ( (_module.OwnedObject.userInv $Heap@@112 this@@156))
))))
(assert  (=> (<= 14 $FunctionContextHeight) (forall (($Heap@@113 T@U) (this@@157 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@113 this@@157) (and (< 14 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@113) (and (or (not (= this@@157 null)) (not true)) (and ($Is refType this@@157 Tclass._module.OwnedObject) ($IsAlloc refType this@@157 Tclass._module.OwnedObject $Heap@@113)))))) (=> (_module.OwnedObject.inv $Heap@@113 this@@157) (_module.OwnedObject.localInv $Heap@@113 this@@157)))
 :qid |_12MutexLifetimelongdfy.449:19|
 :skolemid |2163|
 :pattern ( (_module.OwnedObject.inv $Heap@@113 this@@157))
))))
(assert  (=> (<= 15 $FunctionContextHeight) (forall (($Heap@@114 T@U) (this@@158 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@114 this@@158) (and (< 15 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@114) (and (or (not (= this@@158 null)) (not true)) (and ($Is refType this@@158 Tclass._module.Object) ($IsAlloc refType this@@158 Tclass._module.Object $Heap@@114)))))) (=> (_module.Object.inv $Heap@@114 this@@158) (_module.Object.localInv $Heap@@114 this@@158)))
 :qid |_12MutexLifetimelongdfy.353:19|
 :skolemid |1793|
 :pattern ( (_module.Object.inv $Heap@@114 this@@158))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall (($ly@@14 T@U) ($h0@@40 T@U) ($h1@@40 T@U) (this@@159 T@U) (|_k#0@@9| Int) (|a#0@@14| T@U) (|x#0@@9| T@U) (|b#0@@14| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@40) ($IsGoodHeap $h1@@40)) (and (or (not (= this@@159 null)) (not true)) ($Is refType this@@159 Tclass._module.Universe))) (or (|_module.Universe.outlivesThrough_h#canCall| $h0@@40 this@@159 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (and (and (and (<= (LitInt 0) |_k#0@@9|) ($Is refType |a#0@@14| Tclass._module.Lifetime)) ($Is refType |x#0@@9| Tclass._module.Lifetime)) ($Is refType |b#0@@14| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40))) (=> (forall (($o@@93 T@U) ($f@@51 T@U) ) (!  (=> (and (or (not (= $o@@93 null)) (not true)) (or (or (= $o@@93 this@@159) (and (and ($Is refType $o@@93 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 this@@159) _module.Universe.content)) ($Box refType $o@@93))) (= $f@@51 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@93 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 this@@159) _module.Universe.content)) ($Box refType $o@@93))) (= $f@@51 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@40 $o@@93) $f@@51) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@40 $o@@93) $f@@51)))
 :qid |unknown.0:0|
 :skolemid |1609|
)) (= (_module.Universe.outlivesThrough_h $ly@@14 $h0@@40 this@@159 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@40 this@@159 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))))
 :qid |unknown.0:0|
 :skolemid |1610|
 :pattern ( ($IsHeapAnchor $h0@@40) ($HeapSucc $h0@@40 $h1@@40) (_module.Universe.outlivesThrough_h $ly@@14 $h1@@40 this@@159 |_k#0@@9| |a#0@@14| |x#0@@9| |b#0@@14|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@72 T@U) ($Heap@@115 T@U) (this@@160 T@U) ) (!  (=> (or (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@72 $Heap@@115 this@@160) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@72) ($IsGoodHeap $Heap@@115)) ($HeapSucc $prevHeap@@72 $Heap@@115)) (and (or (not (= this@@160 null)) (not true)) (and ($Is refType this@@160 Tclass._module.OwnedObject) ($IsAlloc refType this@@160 Tclass._module.OwnedObject $prevHeap@@72)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@72 this@@160) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@115 this@@160) _module.OwnedObject.owner))) (|_module.OwnedObject.unchangedNonvolatileUserFields#canCall| $prevHeap@@72 $Heap@@115 this@@160)) (= (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@72 $Heap@@115 this@@160)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@72 this@@160) _module.OwnedObject.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@115 this@@160) _module.OwnedObject.owner))) (_module.OwnedObject.unchangedNonvolatileUserFields $prevHeap@@72 $Heap@@115 this@@160)))))
 :qid |_12MutexLifetimelongdfy.438:22|
 :skolemid |2147|
 :pattern ( (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@72 $Heap@@115 this@@160) ($IsGoodHeap $Heap@@115))
))))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.ObjectClassKind.Thread_q a@@14) (_module.ObjectClassKind.Thread_q b@@11)) (|_module.ObjectClassKind#Equal| a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1691|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Thread_q a@@14))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@14 b@@11) (_module.ObjectClassKind.Thread_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (_module.ObjectClassKind.OwnedObject_q a@@15) (_module.ObjectClassKind.OwnedObject_q b@@12)) (|_module.ObjectClassKind#Equal| a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |1692|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.OwnedObject_q a@@15))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@15 b@@12) (_module.ObjectClassKind.OwnedObject_q b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (and (_module.ObjectClassKind.Lifetime_q a@@16) (_module.ObjectClassKind.Lifetime_q b@@13)) (|_module.ObjectClassKind#Equal| a@@16 b@@13))
 :qid |unknown.0:0|
 :skolemid |1693|
 :pattern ( (|_module.ObjectClassKind#Equal| a@@16 b@@13) (_module.ObjectClassKind.Lifetime_q a@@16))
 :pattern ( (|_module.ObjectClassKind#Equal| a@@16 b@@13) (_module.ObjectClassKind.Lifetime_q b@@13))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@27 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@27) ($IsAllocBox bx@@27 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@27))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($ly@@15 T@U) ($h0@@41 T@U) ($h1@@41 T@U) (this@@161 T@U) (|a#0@@15| T@U) (|b#0@@15| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@41) ($IsGoodHeap $h1@@41)) (and (or (not (= this@@161 null)) (not true)) ($Is refType this@@161 Tclass._module.Universe))) (or (|_module.Universe.outlives#canCall| $h0@@41 this@@161 |a#0@@15| |b#0@@15|) (and ($Is refType |a#0@@15| Tclass._module.Lifetime) ($Is refType |b#0@@15| Tclass._module.Lifetime)))) (and ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41))) (=> (forall (($o@@94 T@U) ($f@@52 T@U) ) (!  (=> (and (or (not (= $o@@94 null)) (not true)) (or (or (= $o@@94 this@@161) (and (and ($Is refType $o@@94 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 this@@161) _module.Universe.content)) ($Box refType $o@@94))) (= $f@@52 _module.Lifetime.mightPointTo))) (and (and ($Is refType $o@@94 Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 this@@161) _module.Universe.content)) ($Box refType $o@@94))) (= $f@@52 _module.Lifetime.mightPointFrom)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@41 $o@@94) $f@@52) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@41 $o@@94) $f@@52)))
 :qid |unknown.0:0|
 :skolemid |1570|
)) (= (_module.Universe.outlives $ly@@15 $h0@@41 this@@161 |a#0@@15| |b#0@@15|) (_module.Universe.outlives $ly@@15 $h1@@41 this@@161 |a#0@@15| |b#0@@15|))))
 :qid |unknown.0:0|
 :skolemid |1571|
 :pattern ( ($IsHeapAnchor $h0@@41) ($HeapSucc $h0@@41 $h1@@41) (_module.Universe.outlives $ly@@15 $h1@@41 this@@161 |a#0@@15| |b#0@@15|))
)))
(assert (forall (($h@@42 T@U) ($o@@95 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@95 null)) (not true)) ($Is refType $o@@95 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@95) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@95) _module.OwnedObject.nonvolatileVersion)) TInt $h@@42))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2105|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@95) _module.OwnedObject.nonvolatileVersion)))
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
 :skolemid |1689|
 :pattern ( (|$IsA#_module.ObjectClassKind| d@@5))
)))
(assert (forall (($h0@@42 T@U) ($h1@@42 T@U) (this@@162 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@42) ($IsGoodHeap $h1@@42)) (and (or (not (= this@@162 null)) (not true)) ($Is refType this@@162 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42))) (=> (forall (($o@@96 T@U) ($f@@53 T@U) ) (!  (=> (and (or (not (= $o@@96 null)) (not true)) (= $o@@96 this@@162)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@42 $o@@96) $f@@53) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@42 $o@@96) $f@@53)))
 :qid |unknown.0:0|
 :skolemid |1719|
)) (= (_module.Object.nonAliasing $h0@@42 this@@162) (_module.Object.nonAliasing $h1@@42 this@@162))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1720|
 :pattern ( ($IsHeapAnchor $h0@@42) ($HeapSucc $h0@@42 $h1@@42) (_module.Object.nonAliasing $h1@@42 this@@162))
)))
(assert (forall (($h0@@43 T@U) ($h1@@43 T@U) (this@@163 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@43) ($IsGoodHeap $h1@@43)) (and (or (not (= this@@163 null)) (not true)) ($Is refType this@@163 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43))) (=> (forall (($o@@97 T@U) ($f@@54 T@U) ) (!  (=> (and (or (not (= $o@@97 null)) (not true)) (= $o@@97 this@@163)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@43 $o@@97) $f@@54) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@43 $o@@97) $f@@54)))
 :qid |unknown.0:0|
 :skolemid |1727|
)) (= (_module.Object.triggerAxioms $h0@@43 this@@163) (_module.Object.triggerAxioms $h1@@43 this@@163))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1728|
 :pattern ( ($IsHeapAnchor $h0@@43) ($HeapSucc $h0@@43 $h1@@43) (_module.Object.triggerAxioms $h1@@43 this@@163))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@164 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| (Lit refType this@@164)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@164 null)) (not true)) ($Is refType this@@164 Tclass._module.Thread)))) (= (_module.Thread.objectClassKind (Lit refType this@@164)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
 :qid |_12MutexLifetimelongdfy.362:18|
 :weight 3
 :skolemid |1854|
 :pattern ( (_module.Thread.objectClassKind (Lit refType this@@164)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@165 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| (Lit refType this@@165)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@165 null)) (not true)) ($Is refType this@@165 Tclass._module.OwnedObject)))) (= (_module.OwnedObject.objectClassKind (Lit refType this@@165)) (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
 :qid |_12MutexLifetimelongdfy.425:18|
 :weight 3
 :skolemid |2118|
 :pattern ( (_module.OwnedObject.objectClassKind (Lit refType this@@165)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@166 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| (Lit refType this@@166)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@166 null)) (not true)) ($Is refType this@@166 Tclass._module.Lifetime)))) (= (_module.Lifetime.objectClassKind (Lit refType this@@166)) (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
 :qid |_12MutexLifetimelongdfy.562:18|
 :weight 3
 :skolemid |2294|
 :pattern ( (_module.Lifetime.objectClassKind (Lit refType this@@166)))
))))
(assert (forall (($h@@43 T@U) ($o@@98 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@98 null)) (not true)) (= (dtype $o@@98) Tclass._module.OwnedU32?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@98) _module.OwnedU32.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2711|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@98) _module.OwnedU32.value)))
)))
(assert (forall (($h@@44 T@U) ($o@@99 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (or (not (= $o@@99 null)) (not true)) (= (dtype $o@@99) Tclass._module.Mutex?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@99) _module.Mutex.locked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3256|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@99) _module.Mutex.locked)))
)))
(assert (forall (($h0@@44 T@U) ($h1@@44 T@U) (this@@167 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@44) ($IsGoodHeap $h1@@44)) (and (or (not (= this@@167 null)) (not true)) ($Is refType this@@167 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44))) (=> (forall (($o@@100 T@U) ($f@@55 T@U) ) (!  (=> (and (or (not (= $o@@100 null)) (not true)) (or (= $o@@100 this@@167) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 this@@167) _module.Universe.content)) ($Box refType $o@@100)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@44 $o@@100) $f@@55) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@44 $o@@100) $f@@55)))
 :qid |unknown.0:0|
 :skolemid |1174|
)) (= (_module.Universe.globalBaseInv $h0@@44 this@@167) (_module.Universe.globalBaseInv $h1@@44 this@@167))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1175|
 :pattern ( ($IsHeapAnchor $h0@@44) ($HeapSucc $h0@@44 $h1@@44) (_module.Universe.globalBaseInv $h1@@44 this@@167))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@116 T@U) (this@@168 T@U) ) (!  (=> (or (|_module.Lifetime.localInv#canCall| $Heap@@116 this@@168) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@116) (and (or (not (= this@@168 null)) (not true)) (and ($Is refType this@@168 Tclass._module.Lifetime) ($IsAlloc refType this@@168 Tclass._module.Lifetime $Heap@@116)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@116 this@@168) (=> (_module.Object.objectGlobalBaseInv $Heap@@116 this@@168) (=> (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#0@@13|))) (= (_module.OwnedObject.lifetime |o#0@@13|) this@@168))
 :qid |_12MutexLifetimelongdfy.581:16|
 :skolemid |2333|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#0@@13|)))
)) (and (forall ((|o#1@@3| T@U) ) (!  (=> ($Is refType |o#1@@3| Tclass._module.OwnedObject) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@3|)) (and (|_module.OwnedObject.alive#canCall| $Heap@@116 |o#1@@3|) (|_module.Lifetime.alive#canCall| $Heap@@116 this@@168))))
 :qid |_12MutexLifetimelongdfy.583:16|
 :skolemid |2326|
 :pattern ( (_module.OwnedObject.alive $Heap@@116 |o#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@3|)))
)) (=> (forall ((|o#1@@4| T@U) ) (!  (=> (and ($Is refType |o#1@@4| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@4|))) (= (_module.OwnedObject.alive $Heap@@116 |o#1@@4|) (_module.Lifetime.alive $Heap@@116 this@@168)))
 :qid |_12MutexLifetimelongdfy.583:16|
 :skolemid |2332|
 :pattern ( (_module.OwnedObject.alive $Heap@@116 |o#1@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@4|)))
)) (and (and (|_module.Lifetime.alive#canCall| $Heap@@116 this@@168) (=> (_module.Lifetime.alive $Heap@@116 this@@168) (forall ((|l#0@@6| T@U) ) (!  (=> ($Is refType |l#0@@6| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@6|)) (|_module.Lifetime.alive#canCall| $Heap@@116 |l#0@@6|)))
 :qid |_12MutexLifetimelongdfy.584:28|
 :skolemid |2327|
 :pattern ( (_module.Lifetime.alive $Heap@@116 |l#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@6|)))
)))) (=> (=> (_module.Lifetime.alive $Heap@@116 this@@168) (forall ((|l#0@@7| T@U) ) (!  (=> (and ($Is refType |l#0@@7| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@7|))) (_module.Lifetime.alive $Heap@@116 |l#0@@7|))
 :qid |_12MutexLifetimelongdfy.584:28|
 :skolemid |2331|
 :pattern ( (_module.Lifetime.alive $Heap@@116 |l#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@7|)))
))) (and (|_module.Lifetime.alive#canCall| $Heap@@116 this@@168) (=> (not (_module.Lifetime.alive $Heap@@116 this@@168)) (forall ((|l#1@@2| T@U) ) (!  (=> ($Is refType |l#1@@2| Tclass._module.Lifetime) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@2|)) (|_module.Lifetime.alive#canCall| $Heap@@116 |l#1@@2|)))
 :qid |_12MutexLifetimelongdfy.585:29|
 :skolemid |2328|
 :pattern ( (_module.Lifetime.alive $Heap@@116 |l#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@2|)))
))))))))))) (= (_module.Lifetime.localInv $Heap@@116 this@@168)  (and (and (and (and (and (and (_module.Object.objectGlobalBaseInv $Heap@@116 this@@168) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#0@@14|))) (= (_module.OwnedObject.lifetime |o#0@@14|) this@@168))
 :qid |_12MutexLifetimelongdfy.581:16|
 :skolemid |2320|
 :pattern ( (_module.OwnedObject.lifetime |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#0@@14|)))
))) (forall ((|o#1@@5| T@U) ) (!  (=> (and ($Is refType |o#1@@5| Tclass._module.OwnedObject) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@5|))) (= (_module.OwnedObject.alive $Heap@@116 |o#1@@5|) (_module.Lifetime.alive $Heap@@116 this@@168)))
 :qid |_12MutexLifetimelongdfy.583:16|
 :skolemid |2321|
 :pattern ( (_module.OwnedObject.alive $Heap@@116 |o#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.elements)) ($Box refType |o#1@@5|)))
))) (=> (_module.Lifetime.alive $Heap@@116 this@@168) (forall ((|l#0@@8| T@U) ) (!  (=> (and ($Is refType |l#0@@8| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@8|))) (_module.Lifetime.alive $Heap@@116 |l#0@@8|))
 :qid |_12MutexLifetimelongdfy.584:28|
 :skolemid |2322|
 :pattern ( (_module.Lifetime.alive $Heap@@116 |l#0@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#0@@8|)))
)))) (=> (not (_module.Lifetime.alive $Heap@@116 this@@168)) (forall ((|l#1@@3| T@U) ) (!  (=> (and ($Is refType |l#1@@3| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@3|))) (not (_module.Lifetime.alive $Heap@@116 |l#1@@3|)))
 :qid |_12MutexLifetimelongdfy.585:29|
 :skolemid |2323|
 :pattern ( (_module.Lifetime.alive $Heap@@116 |l#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@3|)))
)))) (forall ((|l#2@@1| T@U) ) (!  (=> (and ($Is refType |l#2@@1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 |l#2@@1|) _module.Lifetime.mightPointFrom)) ($Box refType this@@168)))
 :qid |_12MutexLifetimelongdfy.586:16|
 :skolemid |2324|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 |l#2@@1|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointTo)) ($Box refType |l#2@@1|)))
))) (forall ((|l#3@@0| T@U) ) (!  (=> (and ($Is refType |l#3@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 |l#3@@0|) _module.Lifetime.mightPointTo)) ($Box refType this@@168)))
 :qid |_12MutexLifetimelongdfy.587:16|
 :skolemid |2325|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 |l#3@@0|) _module.Lifetime.mightPointTo)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@116 this@@168) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@0|)))
))))))
 :qid |_12MutexLifetimelongdfy.579:19|
 :skolemid |2334|
 :pattern ( (_module.Lifetime.localInv $Heap@@116 this@@168) ($IsGoodHeap $Heap@@116))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@16 T@U) ($Heap@@117 T@U) (this@@169 T@U) (|a#0@@16| T@U) (|b#0@@16| T@U) (|_k#0@@10| Int) ) (!  (=> (and (and (and (and ($IsGoodHeap $Heap@@117) (and (or (not (= this@@169 null)) (not true)) ($Is refType this@@169 Tclass._module.Universe))) ($Is refType |a#0@@16| Tclass._module.Lifetime)) ($Is refType |b#0@@16| Tclass._module.Lifetime)) (= |_k#0@@10| 0)) (not (_module.Universe.outlives_h $ly@@16 $Heap@@117 this@@169 |_k#0@@10| |a#0@@16| |b#0@@16|)))
 :qid |_12MutexLifetimelongdfy.159:19|
 :skolemid |1580|
 :pattern ( (_module.Universe.outlives_h $ly@@16 $Heap@@117 this@@169 |_k#0@@10| |a#0@@16| |b#0@@16|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@73 T@U) ($Heap@@118 T@U) (this@@170 T@U) ) (!  (=> (or (|_module.MutexGuardU32.unchangedNonvolatileUserFields#canCall| $prevHeap@@73 $Heap@@118 this@@170) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@73) ($IsGoodHeap $Heap@@118)) ($HeapSucc $prevHeap@@73 $Heap@@118)) (and (or (not (= this@@170 null)) (not true)) (and ($Is refType this@@170 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@170 Tclass._module.MutexGuardU32 $prevHeap@@73)))))) (= (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@73 $Heap@@118 this@@170)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@73 this@@170) _module.MutexGuardU32.mutex)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@118 this@@170) _module.MutexGuardU32.mutex))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@73 this@@170) _module.MutexGuardU32.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@118 this@@170) _module.MutexGuardU32.data))))))
 :qid |_12MutexLifetimelongdfy.853:22|
 :skolemid |3569|
 :pattern ( (_module.MutexGuardU32.unchangedNonvolatileUserFields $prevHeap@@73 $Heap@@118 this@@170) ($IsGoodHeap $Heap@@118))
))))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind) (or (or (_module.ObjectClassKind.Thread_q d@@6) (_module.ObjectClassKind.OwnedObject_q d@@6)) (_module.ObjectClassKind.Lifetime_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1690|
 :pattern ( (_module.ObjectClassKind.Lifetime_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.OwnedObject_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
 :pattern ( (_module.ObjectClassKind.Thread_q d@@6) ($Is DatatypeTypeType d@@6 Tclass._module.ObjectClassKind))
)))
(assert (forall (($h0@@45 T@U) ($h1@@45 T@U) (this@@171 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@45) ($IsGoodHeap $h1@@45)) (and (or (not (= this@@171 null)) (not true)) ($Is refType this@@171 Tclass._module.Lifetime))) (and ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45))) (=> (forall (($o@@101 T@U) ($f@@56 T@U) ) (!  (=> (and (or (not (= $o@@101 null)) (not true)) (or (or (= $o@@101 this@@171) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 this@@171) _module.Lifetime.mightPointFrom)) ($Box refType $o@@101)) (= $f@@56 _module.Lifetime.owner))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 this@@171) _module.Lifetime.elements)) ($Box refType $o@@101)) (= $f@@56 _module.OwnedObject.owner)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@45 $o@@101) $f@@56) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@45 $o@@101) $f@@56)))
 :qid |unknown.0:0|
 :skolemid |2271|
)) (= (_module.Lifetime.deallocable $h0@@45 this@@171) (_module.Lifetime.deallocable $h1@@45 this@@171))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2272|
 :pattern ( ($IsHeapAnchor $h0@@45) ($HeapSucc $h0@@45 $h1@@45) (_module.Lifetime.deallocable $h1@@45 this@@171))
)))
(assert (forall (($h0@@46 T@U) ($h1@@46 T@U) (this@@172 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@46) ($IsGoodHeap $h1@@46)) (and (or (not (= this@@172 null)) (not true)) ($Is refType this@@172 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46))) (=> (forall (($o@@102 T@U) ($f@@57 T@U) ) (!  (=> (and (or (not (= $o@@102 null)) (not true)) (= $o@@102 this@@172)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@46 $o@@102) $f@@57) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@46 $o@@102) $f@@57)))
 :qid |unknown.0:0|
 :skolemid |2121|
)) (= (_module.OwnedObject.objectFields $h0@@46 this@@172) (_module.OwnedObject.objectFields $h1@@46 this@@172))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2122|
 :pattern ( ($IsHeapAnchor $h0@@46) ($HeapSucc $h0@@46 $h1@@46) (_module.OwnedObject.objectFields $h1@@46 this@@172))
)))
(assert (forall (($h0@@47 T@U) ($h1@@47 T@U) (this@@173 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@47) ($IsGoodHeap $h1@@47)) (and (or (not (= this@@173 null)) (not true)) ($Is refType this@@173 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47))) (=> (forall (($o@@103 T@U) ($f@@58 T@U) ) (!  (=> (and (or (not (= $o@@103 null)) (not true)) (= $o@@103 this@@173)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@47 $o@@103) $f@@58) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@47 $o@@103) $f@@58)))
 :qid |unknown.0:0|
 :skolemid |2224|
)) (= (_module.OwnedObject.objectUserFields $h0@@47 this@@173) (_module.OwnedObject.objectUserFields $h1@@47 this@@173))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2225|
 :pattern ( ($IsHeapAnchor $h0@@47) ($HeapSucc $h0@@47 $h1@@47) (_module.OwnedObject.objectUserFields $h1@@47 this@@173))
)))
(assert (forall (($h0@@48 T@U) ($h1@@48 T@U) (this@@174 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@48) ($IsGoodHeap $h1@@48)) (and (or (not (= this@@174 null)) (not true)) ($Is refType this@@174 Tclass._module.OwnedU32))) (and ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48))) (=> (forall (($o@@104 T@U) ($f@@59 T@U) ) (!  (=> (and (or (not (= $o@@104 null)) (not true)) (= $o@@104 this@@174)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@48 $o@@104) $f@@59) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@48 $o@@104) $f@@59)))
 :qid |unknown.0:0|
 :skolemid |2719|
)) (= (_module.OwnedU32.objectUserFields $h0@@48 this@@174) (_module.OwnedU32.objectUserFields $h1@@48 this@@174))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2720|
 :pattern ( ($IsHeapAnchor $h0@@48) ($HeapSucc $h0@@48 $h1@@48) (_module.OwnedU32.objectUserFields $h1@@48 this@@174))
)))
(assert (forall (($h0@@49 T@U) ($h1@@49 T@U) (this@@175 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@49) ($IsGoodHeap $h1@@49)) (and (or (not (= this@@175 null)) (not true)) ($Is refType this@@175 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0@@49) ($HeapSucc $h0@@49 $h1@@49))) (=> (forall (($o@@105 T@U) ($f@@60 T@U) ) (!  (=> (and (or (not (= $o@@105 null)) (not true)) (= $o@@105 this@@175)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@49 $o@@105) $f@@60) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@49 $o@@105) $f@@60)))
 :qid |unknown.0:0|
 :skolemid |3266|
)) (= (_module.Mutex.objectUserFields $h0@@49 this@@175) (_module.Mutex.objectUserFields $h1@@49 this@@175))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3267|
 :pattern ( ($IsHeapAnchor $h0@@49) ($HeapSucc $h0@@49 $h1@@49) (_module.Mutex.objectUserFields $h1@@49 this@@175))
)))
(assert (forall (($h0@@50 T@U) ($h1@@50 T@U) (this@@176 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@50) ($IsGoodHeap $h1@@50)) (and (or (not (= this@@176 null)) (not true)) ($Is refType this@@176 Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0@@50) ($HeapSucc $h0@@50 $h1@@50))) (=> (forall (($o@@106 T@U) ($f@@61 T@U) ) (!  (=> (and (or (not (= $o@@106 null)) (not true)) (= $o@@106 this@@176)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@50 $o@@106) $f@@61) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@50 $o@@106) $f@@61)))
 :qid |unknown.0:0|
 :skolemid |3557|
)) (= (_module.MutexGuardU32.objectUserFields $h0@@50 this@@176) (_module.MutexGuardU32.objectUserFields $h1@@50 this@@176))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3558|
 :pattern ( ($IsHeapAnchor $h0@@50) ($HeapSucc $h0@@50 $h1@@50) (_module.MutexGuardU32.objectUserFields $h1@@50 this@@176))
)))
(assert (forall (($h@@45 T@U) ($o@@107 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@45) (and (or (not (= $o@@107 null)) (not true)) ($Is refType $o@@107 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@107) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@107) _module.OwnedObject.owner)) Tclass._module.Object? $h@@45))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2107|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@107) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@51 T@U) ($h1@@51 T@U) (this@@177 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@51) ($IsGoodHeap $h1@@51)) (and (or (not (= this@@177 null)) (not true)) (and ($Is refType this@@177 Tclass._module.Universe) ($IsAlloc refType this@@177 Tclass._module.Universe $h0@@51)))) (and ($IsHeapAnchor $h0@@51) ($HeapSucc $h0@@51 $h1@@51))) (=> (forall (($o@@108 T@U) ($f@@62 T@U) ) (!  (=> (and (or (not (= $o@@108 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@51 $o@@108) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@51 $o@@108) $f@@62) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@51 $o@@108) $f@@62)))
 :qid |unknown.0:0|
 :skolemid |1186|
)) (= (_module.Universe.globalInv $h0@@51 this@@177) (_module.Universe.globalInv $h1@@51 this@@177))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1187|
 :pattern ( ($IsHeapAnchor $h0@@51) ($HeapSucc $h0@@51 $h1@@51) (_module.Universe.globalInv $h1@@51 this@@177))
)))
(assert (forall (($h0@@52 T@U) ($h1@@52 T@U) (this@@178 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@52) ($IsGoodHeap $h1@@52)) (and (or (not (= this@@178 null)) (not true)) (and ($Is refType this@@178 Tclass._module.Object) ($IsAlloc refType this@@178 Tclass._module.Object $h0@@52)))) (and ($IsHeapAnchor $h0@@52) ($HeapSucc $h0@@52 $h1@@52))) (=> (forall (($o@@109 T@U) ($f@@63 T@U) ) (!  (=> (and (or (not (= $o@@109 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@52 $o@@109) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@52 $o@@109) $f@@63) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@52 $o@@109) $f@@63)))
 :qid |unknown.0:0|
 :skolemid |1699|
)) (= (_module.Object.objectGlobalBaseInv $h0@@52 this@@178) (_module.Object.objectGlobalBaseInv $h1@@52 this@@178))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1700|
 :pattern ( ($IsHeapAnchor $h0@@52) ($HeapSucc $h0@@52 $h1@@52) (_module.Object.objectGlobalBaseInv $h1@@52 this@@178))
)))
(assert (forall (($h0@@53 T@U) ($h1@@53 T@U) (this@@179 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@53) ($IsGoodHeap $h1@@53)) (and (or (not (= this@@179 null)) (not true)) (and ($Is refType this@@179 Tclass._module.Object) ($IsAlloc refType this@@179 Tclass._module.Object $h0@@53)))) (and ($IsHeapAnchor $h0@@53) ($HeapSucc $h0@@53 $h1@@53))) (=> (forall (($o@@110 T@U) ($f@@64 T@U) ) (!  (=> (and (or (not (= $o@@110 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@53 $o@@110) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@53 $o@@110) $f@@64) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@53 $o@@110) $f@@64)))
 :qid |unknown.0:0|
 :skolemid |1706|
)) (= (_module.Object.objectGlobalInv $h0@@53 this@@179) (_module.Object.objectGlobalInv $h1@@53 this@@179))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1707|
 :pattern ( ($IsHeapAnchor $h0@@53) ($HeapSucc $h0@@53 $h1@@53) (_module.Object.objectGlobalInv $h1@@53 this@@179))
)))
(assert (forall (($h0@@54 T@U) ($h1@@54 T@U) (this@@180 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@54) ($IsGoodHeap $h1@@54)) (and (or (not (= this@@180 null)) (not true)) (and ($Is refType this@@180 Tclass._module.Object) ($IsAlloc refType this@@180 Tclass._module.Object $h0@@54)))) (and ($IsHeapAnchor $h0@@54) ($HeapSucc $h0@@54 $h1@@54))) (=> (forall (($o@@111 T@U) ($f@@65 T@U) ) (!  (=> (and (or (not (= $o@@111 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@54 $o@@111) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@54 $o@@111) $f@@65) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@54 $o@@111) $f@@65)))
 :qid |unknown.0:0|
 :skolemid |1781|
)) (= (_module.Object.localInv $h0@@54 this@@180) (_module.Object.localInv $h1@@54 this@@180))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1782|
 :pattern ( ($IsHeapAnchor $h0@@54) ($HeapSucc $h0@@54 $h1@@54) (_module.Object.localInv $h1@@54 this@@180))
)))
(assert (forall (($h0@@55 T@U) ($h1@@55 T@U) (this@@181 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@55) ($IsGoodHeap $h1@@55)) (and (or (not (= this@@181 null)) (not true)) (and ($Is refType this@@181 Tclass._module.Object) ($IsAlloc refType this@@181 Tclass._module.Object $h0@@55)))) (and ($IsHeapAnchor $h0@@55) ($HeapSucc $h0@@55 $h1@@55))) (=> (forall (($o@@112 T@U) ($f@@66 T@U) ) (!  (=> (and (or (not (= $o@@112 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@55 $o@@112) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@55 $o@@112) $f@@66) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@55 $o@@112) $f@@66)))
 :qid |unknown.0:0|
 :skolemid |1791|
)) (= (_module.Object.inv $h0@@55 this@@181) (_module.Object.inv $h1@@55 this@@181))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1792|
 :pattern ( ($IsHeapAnchor $h0@@55) ($HeapSucc $h0@@55 $h1@@55) (_module.Object.inv $h1@@55 this@@181))
)))
(assert (forall (($h0@@56 T@U) ($h1@@56 T@U) (this@@182 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@56) ($IsGoodHeap $h1@@56)) (and (or (not (= this@@182 null)) (not true)) (and ($Is refType this@@182 Tclass._module.Thread) ($IsAlloc refType this@@182 Tclass._module.Thread $h0@@56)))) (and ($IsHeapAnchor $h0@@56) ($HeapSucc $h0@@56 $h1@@56))) (=> (forall (($o@@113 T@U) ($f@@67 T@U) ) (!  (=> (and (or (not (= $o@@113 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@56 $o@@113) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@56 $o@@113) $f@@67) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@56 $o@@113) $f@@67)))
 :qid |unknown.0:0|
 :skolemid |1871|
)) (= (_module.Thread.localInv $h0@@56 this@@182) (_module.Thread.localInv $h1@@56 this@@182))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1872|
 :pattern ( ($IsHeapAnchor $h0@@56) ($HeapSucc $h0@@56 $h1@@56) (_module.Thread.localInv $h1@@56 this@@182))
)))
(assert (forall (($h0@@57 T@U) ($h1@@57 T@U) (this@@183 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@57) ($IsGoodHeap $h1@@57)) (and (or (not (= this@@183 null)) (not true)) (and ($Is refType this@@183 Tclass._module.Thread) ($IsAlloc refType this@@183 Tclass._module.Thread $h0@@57)))) (and ($IsHeapAnchor $h0@@57) ($HeapSucc $h0@@57 $h1@@57))) (=> (forall (($o@@114 T@U) ($f@@68 T@U) ) (!  (=> (and (or (not (= $o@@114 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@57 $o@@114) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@57 $o@@114) $f@@68) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@57 $o@@114) $f@@68)))
 :qid |unknown.0:0|
 :skolemid |1881|
)) (= (_module.Thread.inv $h0@@57 this@@183) (_module.Thread.inv $h1@@57 this@@183))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1882|
 :pattern ( ($IsHeapAnchor $h0@@57) ($HeapSucc $h0@@57 $h1@@57) (_module.Thread.inv $h1@@57 this@@183))
)))
(assert (forall (($h0@@58 T@U) ($h1@@58 T@U) (this@@184 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@58) ($IsGoodHeap $h1@@58)) (and (or (not (= this@@184 null)) (not true)) (and ($Is refType this@@184 Tclass._module.OwnedObject) ($IsAlloc refType this@@184 Tclass._module.OwnedObject $h0@@58)))) (and ($IsHeapAnchor $h0@@58) ($HeapSucc $h0@@58 $h1@@58))) (=> (forall (($o@@115 T@U) ($f@@69 T@U) ) (!  (=> (and (or (not (= $o@@115 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@58 $o@@115) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@58 $o@@115) $f@@69) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@58 $o@@115) $f@@69)))
 :qid |unknown.0:0|
 :skolemid |2149|
)) (= (_module.OwnedObject.localInv $h0@@58 this@@184) (_module.OwnedObject.localInv $h1@@58 this@@184))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2150|
 :pattern ( ($IsHeapAnchor $h0@@58) ($HeapSucc $h0@@58 $h1@@58) (_module.OwnedObject.localInv $h1@@58 this@@184))
)))
(assert (forall (($h0@@59 T@U) ($h1@@59 T@U) (this@@185 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@59) ($IsGoodHeap $h1@@59)) (and (or (not (= this@@185 null)) (not true)) (and ($Is refType this@@185 Tclass._module.OwnedObject) ($IsAlloc refType this@@185 Tclass._module.OwnedObject $h0@@59)))) (and ($IsHeapAnchor $h0@@59) ($HeapSucc $h0@@59 $h1@@59))) (=> (forall (($o@@116 T@U) ($f@@70 T@U) ) (!  (=> (and (or (not (= $o@@116 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@59 $o@@116) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@59 $o@@116) $f@@70) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@59 $o@@116) $f@@70)))
 :qid |unknown.0:0|
 :skolemid |2161|
)) (= (_module.OwnedObject.inv $h0@@59 this@@185) (_module.OwnedObject.inv $h1@@59 this@@185))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2162|
 :pattern ( ($IsHeapAnchor $h0@@59) ($HeapSucc $h0@@59 $h1@@59) (_module.OwnedObject.inv $h1@@59 this@@185))
)))
(assert (forall (($h0@@60 T@U) ($h1@@60 T@U) (this@@186 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@60) ($IsGoodHeap $h1@@60)) (and (or (not (= this@@186 null)) (not true)) (and ($Is refType this@@186 Tclass._module.OwnedObject) ($IsAlloc refType this@@186 Tclass._module.OwnedObject $h0@@60)))) (and ($IsHeapAnchor $h0@@60) ($HeapSucc $h0@@60 $h1@@60))) (=> (forall (($o@@117 T@U) ($f@@71 T@U) ) (!  (=> (and (or (not (= $o@@117 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@60 $o@@117) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@60 $o@@117) $f@@71) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@60 $o@@117) $f@@71)))
 :qid |unknown.0:0|
 :skolemid |2233|
)) (= (_module.OwnedObject.localUserInv $h0@@60 this@@186) (_module.OwnedObject.localUserInv $h1@@60 this@@186))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2234|
 :pattern ( ($IsHeapAnchor $h0@@60) ($HeapSucc $h0@@60 $h1@@60) (_module.OwnedObject.localUserInv $h1@@60 this@@186))
)))
(assert (forall (($h0@@61 T@U) ($h1@@61 T@U) (this@@187 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@61) ($IsGoodHeap $h1@@61)) (and (or (not (= this@@187 null)) (not true)) (and ($Is refType this@@187 Tclass._module.OwnedObject) ($IsAlloc refType this@@187 Tclass._module.OwnedObject $h0@@61)))) (and ($IsHeapAnchor $h0@@61) ($HeapSucc $h0@@61 $h1@@61))) (=> (forall (($o@@118 T@U) ($f@@72 T@U) ) (!  (=> (and (or (not (= $o@@118 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@61 $o@@118) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@61 $o@@118) $f@@72) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@61 $o@@118) $f@@72)))
 :qid |unknown.0:0|
 :skolemid |2241|
)) (= (_module.OwnedObject.userInv $h0@@61 this@@187) (_module.OwnedObject.userInv $h1@@61 this@@187))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2242|
 :pattern ( ($IsHeapAnchor $h0@@61) ($HeapSucc $h0@@61 $h1@@61) (_module.OwnedObject.userInv $h1@@61 this@@187))
)))
(assert (forall (($h0@@62 T@U) ($h1@@62 T@U) (this@@188 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@62) ($IsGoodHeap $h1@@62)) (and (or (not (= this@@188 null)) (not true)) (and ($Is refType this@@188 Tclass._module.Lifetime) ($IsAlloc refType this@@188 Tclass._module.Lifetime $h0@@62)))) (and ($IsHeapAnchor $h0@@62) ($HeapSucc $h0@@62 $h1@@62))) (=> (forall (($o@@119 T@U) ($f@@73 T@U) ) (!  (=> (and (or (not (= $o@@119 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@62 $o@@119) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@62 $o@@119) $f@@73) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@62 $o@@119) $f@@73)))
 :qid |unknown.0:0|
 :skolemid |2316|
)) (= (_module.Lifetime.localInv $h0@@62 this@@188) (_module.Lifetime.localInv $h1@@62 this@@188))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2317|
 :pattern ( ($IsHeapAnchor $h0@@62) ($HeapSucc $h0@@62 $h1@@62) (_module.Lifetime.localInv $h1@@62 this@@188))
)))
(assert (forall (($h0@@63 T@U) ($h1@@63 T@U) (this@@189 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@63) ($IsGoodHeap $h1@@63)) (and (or (not (= this@@189 null)) (not true)) (and ($Is refType this@@189 Tclass._module.Lifetime) ($IsAlloc refType this@@189 Tclass._module.Lifetime $h0@@63)))) (and ($IsHeapAnchor $h0@@63) ($HeapSucc $h0@@63 $h1@@63))) (=> (forall (($o@@120 T@U) ($f@@74 T@U) ) (!  (=> (and (or (not (= $o@@120 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@63 $o@@120) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@63 $o@@120) $f@@74) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@63 $o@@120) $f@@74)))
 :qid |unknown.0:0|
 :skolemid |2383|
)) (= (_module.Lifetime.inv $h0@@63 this@@189) (_module.Lifetime.inv $h1@@63 this@@189))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2384|
 :pattern ( ($IsHeapAnchor $h0@@63) ($HeapSucc $h0@@63 $h1@@63) (_module.Lifetime.inv $h1@@63 this@@189))
)))
(assert (forall (($h0@@64 T@U) ($h1@@64 T@U) (this@@190 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@64) ($IsGoodHeap $h1@@64)) (and (or (not (= this@@190 null)) (not true)) (and ($Is refType this@@190 Tclass._module.OwnedU32) ($IsAlloc refType this@@190 Tclass._module.OwnedU32 $h0@@64)))) (and ($IsHeapAnchor $h0@@64) ($HeapSucc $h0@@64 $h1@@64))) (=> (forall (($o@@121 T@U) ($f@@75 T@U) ) (!  (=> (and (or (not (= $o@@121 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@64 $o@@121) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@64 $o@@121) $f@@75) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@64 $o@@121) $f@@75)))
 :qid |unknown.0:0|
 :skolemid |2734|
)) (= (_module.OwnedU32.localUserInv $h0@@64 this@@190) (_module.OwnedU32.localUserInv $h1@@64 this@@190))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2735|
 :pattern ( ($IsHeapAnchor $h0@@64) ($HeapSucc $h0@@64 $h1@@64) (_module.OwnedU32.localUserInv $h1@@64 this@@190))
)))
(assert (forall (($h0@@65 T@U) ($h1@@65 T@U) (this@@191 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@65) ($IsGoodHeap $h1@@65)) (and (or (not (= this@@191 null)) (not true)) (and ($Is refType this@@191 Tclass._module.OwnedU32) ($IsAlloc refType this@@191 Tclass._module.OwnedU32 $h0@@65)))) (and ($IsHeapAnchor $h0@@65) ($HeapSucc $h0@@65 $h1@@65))) (=> (forall (($o@@122 T@U) ($f@@76 T@U) ) (!  (=> (and (or (not (= $o@@122 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@65 $o@@122) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@65 $o@@122) $f@@76) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@65 $o@@122) $f@@76)))
 :qid |unknown.0:0|
 :skolemid |2741|
)) (= (_module.OwnedU32.userInv $h0@@65 this@@191) (_module.OwnedU32.userInv $h1@@65 this@@191))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2742|
 :pattern ( ($IsHeapAnchor $h0@@65) ($HeapSucc $h0@@65 $h1@@65) (_module.OwnedU32.userInv $h1@@65 this@@191))
)))
(assert (forall (($h0@@66 T@U) ($h1@@66 T@U) (this@@192 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@66) ($IsGoodHeap $h1@@66)) (and (or (not (= this@@192 null)) (not true)) (and ($Is refType this@@192 Tclass._module.Mutex) ($IsAlloc refType this@@192 Tclass._module.Mutex $h0@@66)))) (and ($IsHeapAnchor $h0@@66) ($HeapSucc $h0@@66 $h1@@66))) (=> (forall (($o@@123 T@U) ($f@@77 T@U) ) (!  (=> (and (or (not (= $o@@123 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@66 $o@@123) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@66 $o@@123) $f@@77) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@66 $o@@123) $f@@77)))
 :qid |unknown.0:0|
 :skolemid |3281|
)) (= (_module.Mutex.localUserInv $h0@@66 this@@192) (_module.Mutex.localUserInv $h1@@66 this@@192))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3282|
 :pattern ( ($IsHeapAnchor $h0@@66) ($HeapSucc $h0@@66 $h1@@66) (_module.Mutex.localUserInv $h1@@66 this@@192))
)))
(assert (forall (($h0@@67 T@U) ($h1@@67 T@U) (this@@193 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@67) ($IsGoodHeap $h1@@67)) (and (or (not (= this@@193 null)) (not true)) (and ($Is refType this@@193 Tclass._module.Mutex) ($IsAlloc refType this@@193 Tclass._module.Mutex $h0@@67)))) (and ($IsHeapAnchor $h0@@67) ($HeapSucc $h0@@67 $h1@@67))) (=> (forall (($o@@124 T@U) ($f@@78 T@U) ) (!  (=> (and (or (not (= $o@@124 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@67 $o@@124) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@67 $o@@124) $f@@78) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@67 $o@@124) $f@@78)))
 :qid |unknown.0:0|
 :skolemid |3288|
)) (= (_module.Mutex.userInv $h0@@67 this@@193) (_module.Mutex.userInv $h1@@67 this@@193))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3289|
 :pattern ( ($IsHeapAnchor $h0@@67) ($HeapSucc $h0@@67 $h1@@67) (_module.Mutex.userInv $h1@@67 this@@193))
)))
(assert (forall (($h0@@68 T@U) ($h1@@68 T@U) (this@@194 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@68) ($IsGoodHeap $h1@@68)) (and (or (not (= this@@194 null)) (not true)) (and ($Is refType this@@194 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@194 Tclass._module.MutexGuardU32 $h0@@68)))) (and ($IsHeapAnchor $h0@@68) ($HeapSucc $h0@@68 $h1@@68))) (=> (forall (($o@@125 T@U) ($f@@79 T@U) ) (!  (=> (and (or (not (= $o@@125 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@68 $o@@125) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@68 $o@@125) $f@@79) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@68 $o@@125) $f@@79)))
 :qid |unknown.0:0|
 :skolemid |3572|
)) (= (_module.MutexGuardU32.localUserInv $h0@@68 this@@194) (_module.MutexGuardU32.localUserInv $h1@@68 this@@194))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3573|
 :pattern ( ($IsHeapAnchor $h0@@68) ($HeapSucc $h0@@68 $h1@@68) (_module.MutexGuardU32.localUserInv $h1@@68 this@@194))
)))
(assert (forall (($h0@@69 T@U) ($h1@@69 T@U) (this@@195 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@69) ($IsGoodHeap $h1@@69)) (and (or (not (= this@@195 null)) (not true)) (and ($Is refType this@@195 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@195 Tclass._module.MutexGuardU32 $h0@@69)))) (and ($IsHeapAnchor $h0@@69) ($HeapSucc $h0@@69 $h1@@69))) (=> (forall (($o@@126 T@U) ($f@@80 T@U) ) (!  (=> (and (or (not (= $o@@126 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@69 $o@@126) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@69 $o@@126) $f@@80) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@69 $o@@126) $f@@80)))
 :qid |unknown.0:0|
 :skolemid |3580|
)) (= (_module.MutexGuardU32.userInv $h0@@69 this@@195) (_module.MutexGuardU32.userInv $h1@@69 this@@195))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3581|
 :pattern ( ($IsHeapAnchor $h0@@69) ($HeapSucc $h0@@69 $h1@@69) (_module.MutexGuardU32.userInv $h1@@69 this@@195))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@196 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| this@@196) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@196 null)) (not true)) ($Is refType this@@196 Tclass._module.OwnedU32)))) (= (_module.OwnedU32.volatileOwns this@@196) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimelongdfy.638:19|
 :skolemid |2715|
 :pattern ( (_module.OwnedU32.volatileOwns this@@196))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@197 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| this@@197) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@197 null)) (not true)) ($Is refType this@@197 Tclass._module.MutexGuardU32)))) (= (_module.MutexGuardU32.volatileOwns this@@197) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimelongdfy.848:19|
 :skolemid |3553|
 :pattern ( (_module.MutexGuardU32.volatileOwns this@@197))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@198 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| this@@198) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@198 null)) (not true)) ($Is refType this@@198 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.volatileOwns this@@198) (_module.OwnedU32.volatileOwns this@@198)))
 :qid |_12MutexLifetimelongdfy.518:19|
 :skolemid |2717|
 :pattern ( (_module.OwnedObject.volatileOwns this@@198) ($Is refType this@@198 Tclass._module.OwnedU32))
 :pattern ( (_module.OwnedObject.volatileOwns this@@198) (_module.OwnedU32.volatileOwns this@@198))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@199 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| this@@199) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@199 null)) (not true)) ($Is refType this@@199 Tclass._module.Mutex)))) (= (_module.Mutex.volatileOwns this@@199) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.763:19|
 :skolemid |3262|
 :pattern ( (_module.Mutex.volatileOwns this@@199))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@200 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| this@@200) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@200 null)) (not true)) ($Is refType this@@200 Tclass._module.Mutex)))) (= (_module.OwnedObject.volatileOwns this@@200) (_module.Mutex.volatileOwns this@@200)))
 :qid |_12MutexLifetimelongdfy.518:19|
 :skolemid |3264|
 :pattern ( (_module.OwnedObject.volatileOwns this@@200) ($Is refType this@@200 Tclass._module.Mutex))
 :pattern ( (_module.OwnedObject.volatileOwns this@@200) (_module.Mutex.volatileOwns this@@200))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@201 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| this@@201) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@201 null)) (not true)) ($Is refType this@@201 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.volatileOwns this@@201) (_module.MutexGuardU32.volatileOwns this@@201)))
 :qid |_12MutexLifetimelongdfy.518:19|
 :skolemid |3555|
 :pattern ( (_module.OwnedObject.volatileOwns this@@201) ($Is refType this@@201 Tclass._module.MutexGuardU32))
 :pattern ( (_module.OwnedObject.volatileOwns this@@201) (_module.MutexGuardU32.volatileOwns this@@201))
))))
(assert (forall ((bx@@28 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@28 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@28)) bx@@28) ($Is SetType ($Unbox SetType bx@@28) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@28 (TSet t@@5)))
)))
(assert (forall (($o@@127 T@U) ) (!  (=> ($Is refType $o@@127 Tclass._module.Thread?) ($Is refType $o@@127 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3837|
 :pattern ( ($Is refType $o@@127 Tclass._module.Thread?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.Thread?) ($IsBox bx@@29 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3835|
 :pattern ( ($IsBox bx@@29 Tclass._module.Thread?))
)))
(assert (forall (($o@@128 T@U) ) (!  (=> ($Is refType $o@@128 Tclass._module.OwnedObject?) ($Is refType $o@@128 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3841|
 :pattern ( ($Is refType $o@@128 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.OwnedObject?) ($IsBox bx@@30 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3839|
 :pattern ( ($IsBox bx@@30 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@129 T@U) ) (!  (=> ($Is refType $o@@129 Tclass._module.Lifetime?) ($Is refType $o@@129 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3845|
 :pattern ( ($Is refType $o@@129 Tclass._module.Lifetime?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass._module.Lifetime?) ($IsBox bx@@31 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3843|
 :pattern ( ($IsBox bx@@31 Tclass._module.Lifetime?))
)))
(assert (forall (($o@@130 T@U) ) (!  (=> ($Is refType $o@@130 Tclass._module.OwnedU32?) ($Is refType $o@@130 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3849|
 :pattern ( ($Is refType $o@@130 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass._module.OwnedU32?) ($IsBox bx@@32 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3847|
 :pattern ( ($IsBox bx@@32 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@131 T@U) ) (!  (=> ($Is refType $o@@131 Tclass._module.Mutex?) ($Is refType $o@@131 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3857|
 :pattern ( ($Is refType $o@@131 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 Tclass._module.Mutex?) ($IsBox bx@@33 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3855|
 :pattern ( ($IsBox bx@@33 Tclass._module.Mutex?))
)))
(assert (forall (($o@@132 T@U) ) (!  (=> ($Is refType $o@@132 Tclass._module.MutexGuardU32?) ($Is refType $o@@132 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3861|
 :pattern ( ($Is refType $o@@132 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@34 T@U) ) (!  (=> ($IsBox bx@@34 Tclass._module.MutexGuardU32?) ($IsBox bx@@34 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3859|
 :pattern ( ($IsBox bx@@34 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9)))
)))
(assert (forall ((d@@7 T@U) ($h@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@46) ($Is DatatypeTypeType d@@7 Tclass._module.ObjectClassKind)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.ObjectClassKind $h@@46))
 :qid |unknown.0:0|
 :skolemid |1688|
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
(assert (forall (($h@@47 T@U) ($o@@133 T@U) ) (!  (=> (and ($IsGoodHeap $h@@47) (and (or (not (= $o@@133 null)) (not true)) ($Is refType $o@@133 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@47 $o@@133) _module.OwnedObject.owner)) Tclass._module.Object?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2106|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@47 $o@@133) _module.OwnedObject.owner)))
)))
(assert (= |#_module.ObjectClassKind.Thread| (Lit DatatypeTypeType |#_module.ObjectClassKind.Thread|)))
(assert (= |#_module.ObjectClassKind.OwnedObject| (Lit DatatypeTypeType |#_module.ObjectClassKind.OwnedObject|)))
(assert (= |#_module.ObjectClassKind.Lifetime| (Lit DatatypeTypeType |#_module.ObjectClassKind.Lifetime|)))
(assert (forall (($o@@134 T@U) ) (! (= ($Is refType $o@@134 Tclass._module.Universe?)  (or (= $o@@134 null) (implements$_module.Universe (dtype $o@@134))))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( ($Is refType $o@@134 Tclass._module.Universe?))
)))
(assert (forall (($o@@135 T@U) ) (! (= ($Is refType $o@@135 Tclass._module.Object?)  (or (= $o@@135 null) (implements$_module.Object (dtype $o@@135))))
 :qid |unknown.0:0|
 :skolemid |1695|
 :pattern ( ($Is refType $o@@135 Tclass._module.Object?))
)))
(assert (forall (($o@@136 T@U) ) (! (= ($Is refType $o@@136 Tclass._module.OwnedObject?)  (or (= $o@@136 null) (implements$_module.OwnedObject (dtype $o@@136))))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($Is refType $o@@136 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@48 T@U) ($o@@137 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@48) (and (or (not (= $o@@137 null)) (not true)) ($Is refType $o@@137 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@137) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@137) _module.Universe.content)) (TSet Tclass._module.Object) $h@@48))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1173|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@48 $o@@137) _module.Universe.content)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@202 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@202) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@202 null)) (not true)) ($Is refType this@@202 Tclass._module.Thread)))) (= (_module.Object.objectClassKind this@@202) (_module.Thread.objectClassKind this@@202)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1855|
 :pattern ( (_module.Object.objectClassKind this@@202) ($Is refType this@@202 Tclass._module.Thread))
 :pattern ( (_module.Object.objectClassKind this@@202) (_module.Thread.objectClassKind this@@202))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@203 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@203) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@203 null)) (not true)) ($Is refType this@@203 Tclass._module.OwnedObject)))) (= (_module.Object.objectClassKind this@@203) (_module.OwnedObject.objectClassKind this@@203)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2119|
 :pattern ( (_module.Object.objectClassKind this@@203) ($Is refType this@@203 Tclass._module.OwnedObject))
 :pattern ( (_module.Object.objectClassKind this@@203) (_module.OwnedObject.objectClassKind this@@203))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@204 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@204) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@204 null)) (not true)) ($Is refType this@@204 Tclass._module.Lifetime)))) (= (_module.Object.objectClassKind this@@204) (_module.Lifetime.objectClassKind this@@204)))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |2295|
 :pattern ( (_module.Object.objectClassKind this@@204) ($Is refType this@@204 Tclass._module.Lifetime))
 :pattern ( (_module.Object.objectClassKind this@@204) (_module.Lifetime.objectClassKind this@@204))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($prevHeap@@74 T@U) ($Heap@@119 T@U) (this@@205 T@U) ) (!  (=> (or (|_module.Universe.globalSequenceInv2#canCall| $prevHeap@@74 $Heap@@119 this@@205) (and (< 5 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@74) ($IsGoodHeap $Heap@@119)) ($HeapSucc $prevHeap@@74 $Heap@@119)) (and (or (not (= this@@205 null)) (not true)) (and ($Is refType this@@205 Tclass._module.Universe) ($IsAlloc refType this@@205 Tclass._module.Universe $prevHeap@@74)))))) (and (forall ((|o#0@@15| T@U) ) (!  (=> ($Is refType |o#0@@15| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@74 this@@205) _module.Universe.content)) ($Box refType |o#0@@15|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@119 this@@205) _module.Universe.content)) ($Box refType |o#0@@15|)) (|_module.Object.sequenceInv2#canCall| $prevHeap@@74 $Heap@@119 |o#0@@15|))))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |1203|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@74 $Heap@@119 |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@119 this@@205) _module.Universe.content)) ($Box refType |o#0@@15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@74 this@@205) _module.Universe.content)) ($Box refType |o#0@@15|)))
)) (= (_module.Universe.globalSequenceInv2 $prevHeap@@74 $Heap@@119 this@@205) (forall ((|o#0@@16| T@U) ) (!  (=> (and ($Is refType |o#0@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@74 this@@205) _module.Universe.content)) ($Box refType |o#0@@16|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@119 this@@205) _module.Universe.content)) ($Box refType |o#0@@16|)) (_module.Object.sequenceInv2 $prevHeap@@74 $Heap@@119 |o#0@@16|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |1202|
 :pattern ( (_module.Object.sequenceInv2 $prevHeap@@74 $Heap@@119 |o#0@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@119 this@@205) _module.Universe.content)) ($Box refType |o#0@@16|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@74 this@@205) _module.Universe.content)) ($Box refType |o#0@@16|)))
)))))
 :qid |_12MutexLifetimelongdfy.28:22|
 :skolemid |1204|
 :pattern ( (_module.Universe.globalSequenceInv2 $prevHeap@@74 $Heap@@119 this@@205) ($IsGoodHeap $Heap@@119))
))))
(assert  (=> (<= 16 $FunctionContextHeight) (forall (($prevHeap@@75 T@U) ($Heap@@120 T@U) (this@@206 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@75 $Heap@@120 this@@206) (and (< 16 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@75) ($IsGoodHeap $Heap@@120)) ($HeapSucc $prevHeap@@75 $Heap@@120)) (and (or (not (= this@@206 null)) (not true)) (and ($Is refType this@@206 Tclass._module.Universe) ($IsAlloc refType this@@206 Tclass._module.Universe $prevHeap@@75)))))) (and (forall ((|o#0@@17| T@U) ) (!  (=> ($Is refType |o#0@@17| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@206) _module.Universe.content)) ($Box refType |o#0@@17|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@120 this@@206) _module.Universe.content)) ($Box refType |o#0@@17|)) (|_module.Object.inv2#canCall| $prevHeap@@75 $Heap@@120 |o#0@@17|))))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1214|
 :pattern ( (_module.Object.inv2 $prevHeap@@75 $Heap@@120 |o#0@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@120 this@@206) _module.Universe.content)) ($Box refType |o#0@@17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@206) _module.Universe.content)) ($Box refType |o#0@@17|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@75 $Heap@@120 this@@206) (forall ((|o#0@@18| T@U) ) (!  (=> (and ($Is refType |o#0@@18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@206) _module.Universe.content)) ($Box refType |o#0@@18|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@120 this@@206) _module.Universe.content)) ($Box refType |o#0@@18|)) (_module.Object.inv2 $prevHeap@@75 $Heap@@120 |o#0@@18|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1213|
 :pattern ( (_module.Object.inv2 $prevHeap@@75 $Heap@@120 |o#0@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@120 this@@206) _module.Universe.content)) ($Box refType |o#0@@18|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@75 this@@206) _module.Universe.content)) ($Box refType |o#0@@18|)))
)))))
 :qid |_12MutexLifetimelongdfy.33:22|
 :skolemid |1215|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@75 $Heap@@120 this@@206) ($IsGoodHeap $Heap@@120))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@207 T@U) ) (!  (=> (or (|_module.Thread.objectClassKind#canCall| this@@207) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@207 null)) (not true)) ($Is refType this@@207 Tclass._module.Thread)))) ($Is DatatypeTypeType (_module.Thread.objectClassKind this@@207) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.362:18|
 :skolemid |1851|
 :pattern ( (_module.Thread.objectClassKind this@@207))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@208 T@U) ) (!  (=> (or (|_module.OwnedObject.objectClassKind#canCall| this@@208) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@208 null)) (not true)) ($Is refType this@@208 Tclass._module.OwnedObject)))) ($Is DatatypeTypeType (_module.OwnedObject.objectClassKind this@@208) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.425:18|
 :skolemid |2115|
 :pattern ( (_module.OwnedObject.objectClassKind this@@208))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@209 T@U) ) (!  (=> (or (|_module.Lifetime.objectClassKind#canCall| this@@209) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@209 null)) (not true)) ($Is refType this@@209 Tclass._module.Lifetime)))) ($Is DatatypeTypeType (_module.Lifetime.objectClassKind this@@209) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.562:18|
 :skolemid |2291|
 :pattern ( (_module.Lifetime.objectClassKind this@@209))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((this@@210 T@U) ) (!  (=> (or (|_module.Object.objectClassKind#canCall| this@@210) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@210 null)) (not true)) ($Is refType this@@210 Tclass._module.Object)))) ($Is DatatypeTypeType (_module.Object.objectClassKind this@@210) Tclass._module.ObjectClassKind))
 :qid |_12MutexLifetimelongdfy.348:18|
 :skolemid |1773|
 :pattern ( (_module.Object.objectClassKind this@@210))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@76 T@U) ($Heap@@121 T@U) (this@@211 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv2#canCall| $prevHeap@@76 $Heap@@121 this@@211) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@76) ($IsGoodHeap $Heap@@121)) ($HeapSucc $prevHeap@@76 $Heap@@121)) (and (or (not (= this@@211 null)) (not true)) (and ($Is refType this@@211 Tclass._module.OwnedU32) ($IsAlloc refType this@@211 Tclass._module.OwnedU32 $prevHeap@@76)))))) (=> (_module.OwnedU32.userInv2 $prevHeap@@76 $Heap@@121 this@@211) (_module.OwnedU32.localUserInv2 $prevHeap@@76 $Heap@@121 this@@211)))
 :qid |_12MutexLifetimelongdfy.648:22|
 :skolemid |2758|
 :pattern ( (_module.OwnedU32.userInv2 $prevHeap@@76 $Heap@@121 this@@211))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@77 T@U) ($Heap@@122 T@U) (this@@212 T@U) ) (!  (=> (or (|_module.Mutex.userInv2#canCall| $prevHeap@@77 $Heap@@122 this@@212) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@77) ($IsGoodHeap $Heap@@122)) ($HeapSucc $prevHeap@@77 $Heap@@122)) (and (or (not (= this@@212 null)) (not true)) (and ($Is refType this@@212 Tclass._module.Mutex) ($IsAlloc refType this@@212 Tclass._module.Mutex $prevHeap@@77)))))) (=> (_module.Mutex.userInv2 $prevHeap@@77 $Heap@@122 this@@212) (_module.Mutex.localUserInv2 $prevHeap@@77 $Heap@@122 this@@212)))
 :qid |_12MutexLifetimelongdfy.793:22|
 :skolemid |3311|
 :pattern ( (_module.Mutex.userInv2 $prevHeap@@77 $Heap@@122 this@@212))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($prevHeap@@78 T@U) ($Heap@@123 T@U) (this@@213 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv2#canCall| $prevHeap@@78 $Heap@@123 this@@213) (and (< 12 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@78) ($IsGoodHeap $Heap@@123)) ($HeapSucc $prevHeap@@78 $Heap@@123)) (and (or (not (= this@@213 null)) (not true)) (and ($Is refType this@@213 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@213 Tclass._module.MutexGuardU32 $prevHeap@@78)))))) (=> (_module.MutexGuardU32.userInv2 $prevHeap@@78 $Heap@@123 this@@213) (_module.MutexGuardU32.localUserInv2 $prevHeap@@78 $Heap@@123 this@@213)))
 :qid |_12MutexLifetimelongdfy.877:22|
 :skolemid |3602|
 :pattern ( (_module.MutexGuardU32.userInv2 $prevHeap@@78 $Heap@@123 this@@213))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($prevHeap@@79 T@U) ($Heap@@124 T@U) (this@@214 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv2#canCall| $prevHeap@@79 $Heap@@124 this@@214) (and (< 13 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@79) ($IsGoodHeap $Heap@@124)) ($HeapSucc $prevHeap@@79 $Heap@@124)) (and (or (not (= this@@214 null)) (not true)) (and ($Is refType this@@214 Tclass._module.OwnedObject) ($IsAlloc refType this@@214 Tclass._module.OwnedObject $prevHeap@@79)))))) (=> (_module.OwnedObject.userInv2 $prevHeap@@79 $Heap@@124 this@@214) (_module.OwnedObject.localUserInv2 $prevHeap@@79 $Heap@@124 this@@214)))
 :qid |_12MutexLifetimelongdfy.524:22|
 :skolemid |2247|
 :pattern ( (_module.OwnedObject.userInv2 $prevHeap@@79 $Heap@@124 this@@214))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@125 T@U) (this@@215 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@125 this@@215) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@125) (and (or (not (= this@@215 null)) (not true)) (and ($Is refType this@@215 Tclass._module.Thread) ($IsAlloc refType this@@215 Tclass._module.Thread $Heap@@125)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@125 this@@215)) (= (_module.Thread.localInv $Heap@@125 this@@215)  (and true (_module.Object.objectGlobalBaseInv $Heap@@125 this@@215)))))
 :qid |_12MutexLifetimelongdfy.369:19|
 :skolemid |1875|
 :pattern ( (_module.Thread.localInv $Heap@@125 this@@215) ($IsGoodHeap $Heap@@125))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@126 T@U) (this@@216 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@126 this@@216) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@126) (and (or (not (= this@@216 null)) (not true)) (and ($Is refType this@@216 Tclass._module.Thread) ($IsAlloc refType this@@216 Tclass._module.Thread $Heap@@126)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@126 this@@216)) (= (_module.Thread.inv $Heap@@126 this@@216)  (and true (_module.Thread.localInv $Heap@@126 this@@216)))))
 :qid |_12MutexLifetimelongdfy.372:19|
 :skolemid |1885|
 :pattern ( (_module.Thread.inv $Heap@@126 this@@216) ($IsGoodHeap $Heap@@126))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@217 T@U) ) (!  (=> (or (|_module.OwnedU32.volatileOwns#canCall| (Lit refType this@@217)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@217 null)) (not true)) ($Is refType this@@217 Tclass._module.OwnedU32)))) (= (_module.OwnedU32.volatileOwns (Lit refType this@@217)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimelongdfy.638:19|
 :weight 3
 :skolemid |2716|
 :pattern ( (_module.OwnedU32.volatileOwns (Lit refType this@@217)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@218 T@U) ) (!  (=> (or (|_module.MutexGuardU32.volatileOwns#canCall| (Lit refType this@@218)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@218 null)) (not true)) ($Is refType this@@218 Tclass._module.MutexGuardU32)))) (= (_module.MutexGuardU32.volatileOwns (Lit refType this@@218)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |_12MutexLifetimelongdfy.848:19|
 :weight 3
 :skolemid |3554|
 :pattern ( (_module.MutexGuardU32.volatileOwns (Lit refType this@@218)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@219 T@U) ) (!  (=> (or (|_module.Mutex.volatileOwns#canCall| (Lit refType this@@219)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@219 null)) (not true)) ($Is refType this@@219 Tclass._module.Mutex)))) (= (_module.Mutex.volatileOwns (Lit refType this@@219)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_12MutexLifetimelongdfy.763:19|
 :weight 3
 :skolemid |3263|
 :pattern ( (_module.Mutex.volatileOwns (Lit refType this@@219)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@127 T@U) (this@@220 T@U) ) (!  (=> (or (|_module.OwnedObject.alive#canCall| $Heap@@127 this@@220) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@127) (and (or (not (= this@@220 null)) (not true)) (and ($Is refType this@@220 Tclass._module.OwnedObject) ($IsAlloc refType this@@220 Tclass._module.OwnedObject $Heap@@127)))))) (= (_module.OwnedObject.alive $Heap@@127 this@@220)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@127 this@@220) _module.OwnedObject.owner)) null)) (not true))))
 :qid |_12MutexLifetimelongdfy.422:19|
 :skolemid |2114|
 :pattern ( (_module.OwnedObject.alive $Heap@@127 this@@220) ($IsGoodHeap $Heap@@127))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@128 T@U) (this@@221 T@U) ) (!  (=> (or (|_module.Lifetime.alive#canCall| $Heap@@128 this@@221) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@128) (and (or (not (= this@@221 null)) (not true)) (and ($Is refType this@@221 Tclass._module.Lifetime) ($IsAlloc refType this@@221 Tclass._module.Lifetime $Heap@@128)))))) (= (_module.Lifetime.alive $Heap@@128 this@@221)  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@128 this@@221) _module.Lifetime.owner)) null)) (not true))))
 :qid |_12MutexLifetimelongdfy.552:19|
 :skolemid |2270|
 :pattern ( (_module.Lifetime.alive $Heap@@128 this@@221) ($IsGoodHeap $Heap@@128))
))))
(assert (forall (($h@@49 T@U) ($o@@138 T@U) ) (!  (=> (and ($IsGoodHeap $h@@49) (and (or (not (= $o@@138 null)) (not true)) ($Is refType $o@@138 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@49 $o@@138) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1172|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@49 $o@@138) _module.Universe.content)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@129 T@U) (this@@222 T@U) ) (!  (=> (or (|_module.Lifetime.baseFieldsInv#canCall| $Heap@@129 this@@222) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@129) (and (or (not (= this@@222 null)) (not true)) (and ($Is refType this@@222 Tclass._module.Lifetime) ($IsAlloc refType this@@222 Tclass._module.Lifetime $Heap@@129)))))) (= (_module.Lifetime.baseFieldsInv $Heap@@129 this@@222)  (and (and (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 this@@222) _module.Lifetime.owner)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 (_module.Object.universe this@@222)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 this@@222) _module.Lifetime.owner))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 this@@222) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 (_module.Object.universe this@@222)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 this@@222) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 (_module.Object.universe this@@222)) _module.Universe.content)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 this@@222) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@129 (_module.Object.universe this@@222)) _module.Universe.content))))))
 :qid |_12MutexLifetimelongdfy.564:19|
 :skolemid |2301|
 :pattern ( (_module.Lifetime.baseFieldsInv $Heap@@129 this@@222) ($IsGoodHeap $Heap@@129))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@80 T@U) ($Heap@@130 T@U) (this@@223 T@U) ) (!  (=> (or (|_module.OwnedObject.sequenceInv2#canCall| $prevHeap@@80 $Heap@@130 this@@223) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@80) ($IsGoodHeap $Heap@@130)) ($HeapSucc $prevHeap@@80 $Heap@@130)) (and (or (not (= this@@223 null)) (not true)) (and ($Is refType this@@223 Tclass._module.OwnedObject) ($IsAlloc refType this@@223 Tclass._module.OwnedObject $prevHeap@@80)))))) (and (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.owner)) null)) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion)))) (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.OwnedObject.unchangedNonvolatileFields#canCall| $prevHeap@@80 $Heap@@130 this@@223))) (=> (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@80 $Heap@@130 this@@223))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner))))
(|_module.OwnedObject.volatileOwns#canCall| |oldOwner#0|))))))) (= (_module.OwnedObject.sequenceInv2 $prevHeap@@80 $Heap@@130 this@@223)  (and (and (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner)) null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.owner)) null)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion)))) (and true (_module.OwnedObject.unchangedNonvolatileFields $prevHeap@@80 $Heap@@130 this@@223)))) (=> ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner)) Tclass._module.OwnedObject) (let ((|oldOwner#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.owner))))
 (=> (and (not (_module.OwnedObject.volatileOwns |oldOwner#0@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 |oldOwner#0@@0|) _module.OwnedObject.nonvolatileVersion))))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@80 this@@223) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@130 this@@223) _module.OwnedObject.nonvolatileVersion)))))))))))
 :qid |_12MutexLifetimelongdfy.458:22|
 :skolemid |2186|
 :pattern ( (_module.OwnedObject.sequenceInv2 $prevHeap@@80 $Heap@@130 this@@223) ($IsGoodHeap $Heap@@130))
))))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@81 T@U) ($Heap@@131 T@U) (this@@224 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv2#canCall| $prevHeap@@81 $Heap@@131 this@@224) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@81) ($IsGoodHeap $Heap@@131)) ($HeapSucc $prevHeap@@81 $Heap@@131)) (and (or (not (= this@@224 null)) (not true)) (and ($Is refType this@@224 Tclass._module.OwnedU32) ($IsAlloc refType this@@224 Tclass._module.OwnedU32 $prevHeap@@81)))))) (and (|_module.OwnedU32.localUserInv2#canCall| $prevHeap@@81 $Heap@@131 this@@224) (= (_module.OwnedU32.userInv2 $prevHeap@@81 $Heap@@131 this@@224) (_module.OwnedU32.localUserInv2 $prevHeap@@81 $Heap@@131 this@@224))))
 :qid |_12MutexLifetimelongdfy.648:22|
 :skolemid |2760|
 :pattern ( (_module.OwnedU32.userInv2 $prevHeap@@81 $Heap@@131 this@@224) ($IsGoodHeap $Heap@@131))
))))
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
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@82 T@U) ($Heap@@132 T@U) (this@@225 T@U) ) (!  (=> (or (|_module.Universe.legalTransitionsSequenceAnyThread#canCall| $prevHeap@@82 $Heap@@132 this@@225) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@82) ($IsGoodHeap $Heap@@132)) ($HeapSucc $prevHeap@@82 $Heap@@132)) (and (or (not (= this@@225 null)) (not true)) (and ($Is refType this@@225 Tclass._module.Universe) ($IsAlloc refType this@@225 Tclass._module.Universe $prevHeap@@82)))))) (and (|_module.Universe.legalTransitionsSequence#canCall| $prevHeap@@82 $Heap@@132 this@@225 (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@82 this@@225) _module.Universe.content))))) (= (_module.Universe.legalTransitionsSequenceAnyThread $prevHeap@@82 $Heap@@132 this@@225) (_module.Universe.legalTransitionsSequence $prevHeap@@82 $Heap@@132 this@@225 (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@82 this@@225) _module.Universe.content))))))))
 :qid |_12MutexLifetimelongdfy.72:22|
 :skolemid |1272|
 :pattern ( (_module.Universe.legalTransitionsSequenceAnyThread $prevHeap@@82 $Heap@@132 this@@225) ($IsGoodHeap $Heap@@132))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@27 () T@U)
(declare-fun call5formal@this@0 () T@U)
(declare-fun call5formal@this@0@@0 () T@U)
(declare-fun call5formal@this@0@@1 () T@U)
(declare-fun |call6formal@guard#0@0| () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |running#0@@3| () T@U)
(declare-fun $Heap@28 () T@U)
(declare-fun $Heap@29 () T@U)
(declare-fun $Heap@30 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun $Heap@31 () T@U)
(declare-fun call4formal@this@0@@0 () T@U)
(declare-fun $Heap@32 () T@U)
(declare-fun |##last#0@0| () Int)
(declare-fun |$rhs#9@0| () Int)
(declare-fun $Heap@33 () T@U)
(declare-fun |##last#1@0| () Int)
(declare-fun |$rhs#10@0| () Int)
(declare-fun $Heap@34 () T@U)
(declare-fun |##last#2@0| () Int)
(declare-fun |$rhs#11@0| () Int)
(declare-fun $Heap@35 () T@U)
(declare-fun $Heap@36 () T@U)
(declare-fun $Heap@37 () T@U)
(declare-fun $Heap@38 () T@U)
(declare-fun $Heap@39 () T@U)
(declare-fun $Heap@40 () T@U)
(declare-fun |scope#0| () T@U)
(declare-fun $Heap@41 () T@U)
(declare-fun $Heap@42 () T@U)
(declare-fun $Heap@43 () T@U)
(declare-fun $Heap@44 () T@U)
(declare-fun $Heap@@133 () T@U)
(declare-fun |l#4@0| () T@U)
(declare-fun |running##13@0| () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun $Heap@26 () T@U)
(declare-fun |t#2@0| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |mightPointTo##2@0| () T@U)
(declare-fun call5formal@this () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun |call6formal@guard#0| () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun |l#2@0| () T@U)
(declare-fun |running##9@0| () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |defass#data#0| () Bool)
(declare-fun |data#0| () T@U)
(declare-fun |defass#mutex#0| () Bool)
(declare-fun |mutex#0| () T@U)
(declare-fun |defass#mutexScope#0| () Bool)
(declare-fun |mutexScope#0| () T@U)
(declare-fun |defass#callScope1#0| () Bool)
(declare-fun |callScope1#0| () T@U)
(declare-fun |defass#callScope2#0| () Bool)
(declare-fun |callScope2#0| () T@U)
(declare-fun |defass#guard#0| () Bool)
(declare-fun |guard#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |value##0@0| () Int)
(declare-fun call4formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun call4formal@this@@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |mightPointTo##0@0| () T@U)
(declare-fun call5formal@this@@0 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |mightPointTo##1@0| () T@U)
(declare-fun call5formal@this@@1 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@17 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main_split9)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon20_correct  (=> (forall ((|l#5| T@U) ) (!  (=> ($Is refType |l#5| Tclass._module.Lifetime) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#5|)) (not (or (or (= call5formal@this@0 call5formal@this@0@@0) (= call5formal@this@0 call5formal@this@0@@1)) (= call5formal@this@0 (_module.OwnedObject.lifetime |call6formal@guard#0@0|))))) (|_module.Lifetime.alive#canCall| $Heap@27 |l#5|)))
 :qid |_12MutexLifetimelongdfy.1290:17|
 :skolemid |1152|
 :pattern ( (_module.Lifetime.alive $Heap@27 |l#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#5|)))
)) (=> (and (forall ((|l#5@@0| T@U) ) (!  (=> (and ($Is refType |l#5@@0| Tclass._module.Lifetime) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#5@@0|)) (not (or (or (= call5formal@this@0 call5formal@this@0@@0) (= call5formal@this@0 call5formal@this@0@@1)) (= call5formal@this@0 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)))))) (not (_module.Lifetime.alive $Heap@27 |l#5@@0|)))
 :qid |_12MutexLifetimelongdfy.1290:17|
 :skolemid |1154|
 :pattern ( (_module.Lifetime.alive $Heap@27 |l#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#5@@0|)))
)) (forall (($o@@139 T@U) ($f@@81 T@U) ) (!  (=> (and (and (or (not (= $o@@139 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@139) alloc)))) (or (= $o@@139 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType $o@@139)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@139 $f@@81)))
 :qid |_12MutexLifetimelongdfy.1292:26|
 :skolemid |1155|
))) (=> (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@27 |universe#0|) (forall ((|o#0@@19| T@U) ) (!  (=> (and ($Is refType |o#0@@19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|))) (and (and (and (= (_module.Object.universe |o#0@@19|) |universe#0|) (or (not (= |o#0@@19| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@27 |o#0@@19|)) (_module.Object.triggerAxioms $Heap@27 |o#0@@19|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@27 |o#0@@19|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@27 |o#0@@19|))
 :pattern ( (_module.Object.universe |o#0@@19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@19|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@27 |universe#0|) (or (_module.Universe.globalInv $Heap@27 |universe#0|) (forall ((|o#1@@6| T@U) ) (!  (=> (and ($Is refType |o#1@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|))) (_module.Object.inv $Heap@27 |o#1@@6|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@27 |o#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@6|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (=> (and (and (and ($IsGoodHeap $Heap@28) ($IsHeapAnchor $Heap@28)) (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (and (_module.Universe.globalInv $Heap@28 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (_module.Object.inv $Heap@28 |o#3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@28 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@27 $Heap@28 |universe#0|))) (=> (and (and (and (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@27 $Heap@28 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@27 $Heap@28 |universe#0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)) (_module.Object.sequenceInv2 $Heap@27 $Heap@28 |o#4|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@27 $Heap@28 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@27 $Heap@28 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@27 $Heap@28 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@27 $Heap@28 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)))) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))) (or (forall (($o@@140 T@U) ($f@@82 T@U) ) (!  (=> (or (not (= $o@@140 null)) (not true)) (=> (= $o@@140 |o#8|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@140) $f@@82) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@140) $f@@82))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@140) $f@@82))
)) (_module.Object.sequenceInv2 $Heap@27 $Heap@28 |o#8|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@27 $Heap@28 |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#8|)))
))) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@27)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#9|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |o#9|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
))) (forall ((|l#0@@9| T@U) ) (!  (=> (and ($Is refType |l#0@@9| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@9|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |l#0@@9|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |l#0@@9|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@27)) (_module.Lifetime.unchangedNonvolatileFields $Heap@27 $Heap@28 |l#0@@9|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@27 $Heap@28 |l#0@@9|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |l#0@@9|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@9|)))
)))))) (and (and (forall ((|a#1| T@U) (|b#1| T@U) ) (!  (=> (and ($Is refType |a#1| Tclass._module.Lifetime) ($Is refType |b#1| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |a#1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |b#1|))) (and (|_module.Universe.outlives#canCall| $Heap@27 |universe#0| |a#1| |b#1|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@27 |universe#0| |a#1| |b#1|) (|_module.Universe.outlives#canCall| $Heap@28 |universe#0| |a#1| |b#1|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1| |b#1|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@27 |universe#0| |a#1| |b#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |b#1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |a#1|)))
)) (forall ((|a#1@@0| T@U) (|b#1@@0| T@U) ) (!  (=> (and (and ($Is refType |a#1@@0| Tclass._module.Lifetime) ($Is refType |b#1@@0| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@0|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@27 |universe#0| |a#1@@0| |b#1@@0|) (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@0| |b#1@@0|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@0| |b#1@@0|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@27 |universe#0| |a#1@@0| |b#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@0|)))
))) (and (forall (($o@@141 T@U) ) (!  (=> (and (or (not (= $o@@141 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@141) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@141) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@141)) (or (= $o@@141 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 |universe#0|) _module.Universe.content)) ($Box refType $o@@141)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@141))
)) ($HeapSucc $Heap@27 $Heap@28)))) (and (and (and (and (or (not (= call5formal@this@0 null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call5formal@this@0 _module.Lifetime.owner))) (and (= $Heap@29 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@28 call5formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 call5formal@this@0) _module.Lifetime.owner ($Box refType null)))) ($IsGoodHeap $Heap@29))) (and (and (or (not (= |call6formal@guard#0@0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |call6formal@guard#0@0| _module.OwnedObject.owner))) (and (= $Heap@30 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@29 |call6formal@guard#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 |call6formal@guard#0@0|) _module.OwnedObject.owner ($Box refType null)))) ($IsGoodHeap $Heap@30)))) (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call4formal@this@0 _module.OwnedObject.owner))) (and (= $Heap@31 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@30 call4formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 call4formal@this@0) _module.OwnedObject.owner ($Box refType null)))) ($IsGoodHeap $Heap@31))) (and (and (or (not (= call4formal@this@0@@0 null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call4formal@this@0@@0 _module.OwnedObject.owner))) (and (= $Heap@32 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@31 call4formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 call4formal@this@0@@0) _module.OwnedObject.owner ($Box refType null)))) ($IsGoodHeap $Heap@32)))))) (and (and (and (and (and (or (not (= |call6formal@guard#0@0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |call6formal@guard#0@0| _module.OwnedObject.nonvolatileVersion))) (and (or (not (= |call6formal@guard#0@0| null)) (not true)) (= |##last#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0|) _module.OwnedObject.nonvolatileVersion)))))) (and (and ($IsAlloc intType (int_2_U |##last#0@0|) TInt $Heap@32) (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0|) _module.OwnedObject.nonvolatileVersion))))) (and (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0|) _module.OwnedObject.nonvolatileVersion)))) (= |$rhs#9@0| (_module.__default.Bump (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0|) _module.OwnedObject.nonvolatileVersion)))))))) (and (and (and (= $Heap@33 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 |call6formal@guard#0@0|) _module.OwnedObject.nonvolatileVersion ($Box intType (int_2_U |$rhs#9@0|))))) ($IsGoodHeap $Heap@33)) (and (or (not (= call4formal@this@0 null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call4formal@this@0 _module.OwnedObject.nonvolatileVersion)))) (and (and (or (not (= call4formal@this@0 null)) (not true)) (= |##last#1@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0) _module.OwnedObject.nonvolatileVersion))))) (and ($IsAlloc intType (int_2_U |##last#1@0|) TInt $Heap@33) (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0) _module.OwnedObject.nonvolatileVersion)))))))) (and (and (and (and (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0) _module.OwnedObject.nonvolatileVersion)))) (= |$rhs#10@0| (_module.__default.Bump (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0) _module.OwnedObject.nonvolatileVersion)))))) (and (= $Heap@34 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 call4formal@this@0) _module.OwnedObject.nonvolatileVersion ($Box intType (int_2_U |$rhs#10@0|))))) ($IsGoodHeap $Heap@34))) (and (and (or (not (= call4formal@this@0@@0 null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call4formal@this@0@@0 _module.OwnedObject.nonvolatileVersion))) (and (or (not (= call4formal@this@0@@0 null)) (not true)) (= |##last#2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0) _module.OwnedObject.nonvolatileVersion))))))) (and (and (and ($IsAlloc intType (int_2_U |##last#2@0|) TInt $Heap@34) (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0) _module.OwnedObject.nonvolatileVersion))))) (and (|_module.__default.Bump#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0) _module.OwnedObject.nonvolatileVersion)))) (= |$rhs#11@0| (_module.__default.Bump (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0) _module.OwnedObject.nonvolatileVersion))))))) (and (and (= $Heap@35 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 call4formal@this@0@@0) _module.OwnedObject.nonvolatileVersion ($Box intType (int_2_U |$rhs#11@0|))))) ($IsGoodHeap $Heap@35)) (and (or (not (= |call6formal@guard#0@0| null)) (not true)) (or (not (= (_module.OwnedObject.lifetime |call6formal@guard#0@0|) null)) (not true)))))))) (=> (and (and (and (and (and (and (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.OwnedObject.lifetime |call6formal@guard#0@0|) _module.Lifetime.owner)) (= $Heap@36 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@35 (_module.OwnedObject.lifetime |call6formal@guard#0@0|) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@35 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) _module.Lifetime.owner ($Box refType null))))) (and ($IsGoodHeap $Heap@36) (or (not (= call4formal@this@0 null)) (not true)))) (and (and (or (not (= (_module.OwnedObject.lifetime call4formal@this@0) null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 (_module.OwnedObject.lifetime call4formal@this@0) _module.Lifetime.owner))) (and (= $Heap@37 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@36 (_module.OwnedObject.lifetime call4formal@this@0) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@36 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.owner ($Box refType null)))) ($IsGoodHeap $Heap@37)))) (and (and (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@28)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 |universe#0|) _module.Universe.content))) (forall ((|l#1@@4| T@U) ) (!  (=> (and ($Is refType |l#1@@4| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@4|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#1@@4|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 |l#1@@4|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#1@@4|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 |l#1@@4|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 |l#1@@4|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#1@@4|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@37 |l#1@@4|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#1@@4|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@4|)))
)))) (and (and ($IsGoodHeap $Heap@38) ($IsHeapAnchor $Heap@38)) (and (forall ((|a#1@@1| T@U) (|b#1@@1| T@U) ) (!  (=> (and ($Is refType |a#1@@1| Tclass._module.Lifetime) ($Is refType |b#1@@1| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@1|))) (and (|_module.Universe.outlives#canCall| $Heap@28 |universe#0| |a#1@@1| |b#1@@1|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@1| |b#1@@1|) (|_module.Universe.outlives#canCall| $Heap@37 |universe#0| |a#1@@1| |b#1@@1|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@37 |universe#0| |a#1@@1| |b#1@@1|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@1| |b#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@1|)))
)) (forall ((|a#1@@2| T@U) (|b#1@@2| T@U) ) (!  (=> (and (and ($Is refType |a#1@@2| Tclass._module.Lifetime) ($Is refType |b#1@@2| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@2|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@2| |b#1@@2|) (_module.Universe.outlives ($LS $LZ) $Heap@37 |universe#0| |a#1@@2| |b#1@@2|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@37 |universe#0| |a#1@@2| |b#1@@2|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@28 |universe#0| |a#1@@2| |b#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@2|)))
)))))) (and (and (and (and (= $Heap@37 $Heap@38) (or (not (= |universe#0| null)) (not true))) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@28) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@28))) (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@28) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#0@@20| T@U) ) (!  (=> (and ($Is refType |o#0@@20| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@20|))) (and (and (and (= (_module.Object.universe |o#0@@20|) |universe#0|) (or (not (= |o#0@@20| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@28 |o#0@@20|)) (_module.Object.triggerAxioms $Heap@28 |o#0@@20|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@28 |o#0@@20|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@28 |o#0@@20|))
 :pattern ( (_module.Object.universe |o#0@@20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@20|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@38 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@38 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@38 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@38 |universe#0|) (forall ((|o#1@@7| T@U) ) (!  (=> (and ($Is refType |o#1@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|))) (and (and (and (= (_module.Object.universe |o#1@@7|) |universe#0|) (or (not (= |o#1@@7| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@38 |o#1@@7|)) (_module.Object.triggerAxioms $Heap@38 |o#1@@7|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@38 |o#1@@7|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@38 |o#1@@7|))
 :pattern ( (_module.Object.universe |o#1@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@7|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@28 $Heap@38 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))) (not ($IsAllocBox ($Box refType |o#2|) Tclass._module.Object $Heap@28)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))) (or (forall (($o@@142 T@U) ($f@@83 T@U) ) (!  (=> (or (not (= $o@@142 null)) (not true)) (=> (= $o@@142 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@142) $f@@83) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@142) $f@@83))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@142) $f@@83))
)) (_module.Object.sequenceInv2 $Heap@28 $Heap@38 |o#3@@0|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@28 $Heap@38 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@28)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |o#4@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |o#4@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@28 $Heap@38 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@10| T@U) ) (!  (=> (and ($Is refType |l#0@@10| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@10|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#0@@10|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#0@@10|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@28)) (_module.Lifetime.unchangedNonvolatileFields $Heap@28 $Heap@38 |l#0@@10|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@28 $Heap@38 |l#0@@10|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |l#0@@10|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@10|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalInv $Heap@28 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))))) (and (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalInv $Heap@28 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@28 |universe#0|) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#5|))) (and (and (and (= (_module.Object.universe |o#5|) |universe#0|) (or (not (= |o#5| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@28 |o#5|)) (_module.Object.triggerAxioms $Heap@28 |o#5|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@28 |o#5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@28 |o#5|))
 :pattern ( (_module.Object.universe |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@28 |universe#0|) (or (_module.Universe.globalInv $Heap@28 |universe#0|) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.inv $Heap@28 |o#6|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@28 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#6|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#7|))) (and (or (forall (($o@@143 T@U) ($f@@84 T@U) ) (!  (=> (or (not (= $o@@143 null)) (not true)) (=> (= $o@@143 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@143) $f@@84) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@143) $f@@84))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@143) $f@@84))
)) (_module.Object.inv $Heap@38 |o#7|)) (or (forall (($o@@144 T@U) ($f@@85 T@U) ) (!  (=> (or (not (= $o@@144 null)) (not true)) (=> (= $o@@144 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@144) $f@@85) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@144) $f@@85))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 $o@@144) $f@@85))
)) (_module.Object.inv2 $Heap@28 $Heap@38 |o#7|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@28 $Heap@38 |o#7|))
 :pattern ( (_module.Object.inv $Heap@38 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@28 $Heap@38 |universe#0| |running#0@@3|) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|))))) (_module.Object.inv $Heap@38 |o#8@@0|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@38 |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))))) (and (and ($IsGoodHeap $Heap@39) ($IsHeapAnchor $Heap@39)) (and (|_module.Universe.globalInv#canCall| $Heap@38 |universe#0|) (=> (_module.Universe.globalInv $Heap@38 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@28 $Heap@38 |universe#0|))))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@38 |universe#0|) (and (_module.Universe.globalInv $Heap@38 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@38 |universe#0|) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.inv $Heap@38 |o#10|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@38 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#10|)))
))))) (and (|_module.Universe.globalInv2#canCall| $Heap@28 $Heap@38 |universe#0|) (and (_module.Universe.globalInv2 $Heap@28 $Heap@38 |universe#0|) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)) (_module.Object.inv2 $Heap@28 $Heap@38 |o#11|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@28 $Heap@38 |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 |universe#0|) _module.Universe.content)) ($Box refType |o#11|)))
))))) (and (and (= $Heap@38 $Heap@39) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@39)) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@28) (|_module.Universe.globalSequenceInv2#canCall| $Heap@28 $Heap@39 |universe#0|))))) (and (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@28 $Heap@39 |universe#0|) (_module.Universe.globalSequenceInv2 $Heap@28 $Heap@39 |universe#0|)) (and (U_2_bool (Lit boolType (bool_2_U true))) (forall (($o@@145 T@U) ($f@@86 T@U) ) (!  (=> (and (and (or (not (= $o@@145 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@145) alloc)))) (or (= $o@@145 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType $o@@145)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@145 $f@@86)))
 :qid |_12MutexLifetimelongdfy.1312:26|
 :skolemid |1160|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@39 |universe#0|) (or (_module.Universe.globalInv $Heap@39 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@39 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@39 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@39 |universe#0|) (or (_module.Universe.globalInv $Heap@39 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@39 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@39 |universe#0|) (forall ((|o#0@@21| T@U) ) (!  (=> (and ($Is refType |o#0@@21| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|))) (and (and (and (= (_module.Object.universe |o#0@@21|) |universe#0|) (or (not (= |o#0@@21| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@39 |o#0@@21|)) (_module.Object.triggerAxioms $Heap@39 |o#0@@21|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@39 |o#0@@21|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@39 |o#0@@21|))
 :pattern ( (_module.Object.universe |o#0@@21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@21|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@39 |universe#0|) (or (_module.Universe.globalInv $Heap@39 |universe#0|) (forall ((|o#1@@8| T@U) ) (!  (=> (and ($Is refType |o#1@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@8|))) (_module.Object.inv $Heap@39 |o#1@@8|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@39 |o#1@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@8|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@40) ($IsHeapAnchor $Heap@40)) (|_module.Universe.globalInv#canCall| $Heap@40 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@40 |universe#0|) (and (_module.Universe.globalInv $Heap@40 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@40 |universe#0|) (forall ((|o#3@@1| T@U) ) (!  (=> (and ($Is refType |o#3@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|))) (_module.Object.inv $Heap@40 |o#3@@1|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@40 |o#3@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@1|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@39 $Heap@40 |universe#0|)))))) (and (and (and (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@39 $Heap@40 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@39 $Heap@40 |universe#0|) (forall ((|o#4@@1| T@U) ) (!  (=> (and ($Is refType |o#4@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|)) (_module.Object.sequenceInv2 $Heap@39 $Heap@40 |o#4@@1|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@39 $Heap@40 |o#4@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@1|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@39 $Heap@40 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@39 $Heap@40 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@39 $Heap@40 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@39 $Heap@40 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@1| T@U) ) (!  (=> (and ($Is refType |o#8@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)))) (or (forall (($o@@146 T@U) ($f@@87 T@U) ) (!  (=> (or (not (= $o@@146 null)) (not true)) (=> (= $o@@146 |o#8@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@146) $f@@87) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@146) $f@@87))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@146) $f@@87))
)) (_module.Object.sequenceInv2 $Heap@39 $Heap@40 |o#8@@1|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@39 $Heap@40 |o#8@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@1|)))
))) (forall ((|o#9@@0| T@U) ) (!  (=> (and ($Is refType |o#9@@0| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@39)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#9@@0|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#9@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |o#9@@0|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@0|)))
))) (forall ((|l#0@@11| T@U) ) (!  (=> (and ($Is refType |l#0@@11| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@11|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |l#0@@11|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |l#0@@11|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@39)) (_module.Lifetime.unchangedNonvolatileFields $Heap@39 $Heap@40 |l#0@@11|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@39 $Heap@40 |l#0@@11|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |l#0@@11|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@11|)))
))))) (and (forall ((|a#1@@3| T@U) (|b#1@@3| T@U) ) (!  (=> (and ($Is refType |a#1@@3| Tclass._module.Lifetime) ($Is refType |b#1@@3| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@3|))) (and (|_module.Universe.outlives#canCall| $Heap@39 |universe#0| |a#1@@3| |b#1@@3|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@39 |universe#0| |a#1@@3| |b#1@@3|) (|_module.Universe.outlives#canCall| $Heap@40 |universe#0| |a#1@@3| |b#1@@3|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@3| |b#1@@3|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@39 |universe#0| |a#1@@3| |b#1@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@3|)))
)) (forall ((|a#1@@4| T@U) (|b#1@@4| T@U) ) (!  (=> (and (and ($Is refType |a#1@@4| Tclass._module.Lifetime) ($Is refType |b#1@@4| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@4|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@39 |universe#0| |a#1@@4| |b#1@@4|) (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@4| |b#1@@4|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@4| |b#1@@4|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@39 |universe#0| |a#1@@4| |b#1@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@4|)))
))))) (and (and (and (forall (($o@@147 T@U) ) (!  (=> (and (or (not (= $o@@147 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@147) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@147) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 $o@@147)) (or (= $o@@147 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@39 |universe#0|) _module.Universe.content)) ($Box refType $o@@147)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@147))
)) ($HeapSucc $Heap@39 $Heap@40)) (and ($IsAllocBox ($Box refType |scope#0|) Tclass._module.Lifetime? $Heap@40) (|_module.Lifetime.unused#canCall| $Heap@40 |scope#0|))) (and (and (|_module.Lifetime.unused#canCall| $Heap@40 |scope#0|) (_module.Lifetime.unused $Heap@40 |scope#0|)) (and ($IsAllocBox ($Box refType |scope#0|) Tclass._module.Lifetime? $Heap@40) (|_module.Lifetime.deallocable#canCall| $Heap@40 |scope#0|))))) (and (and (and (and (|_module.Lifetime.deallocable#canCall| $Heap@40 |scope#0|) (_module.Lifetime.deallocable $Heap@40 |scope#0|)) (and (or (not (= |scope#0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |scope#0| _module.Lifetime.owner)))) (and (and (= $Heap@41 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@40 |scope#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |scope#0|) _module.Lifetime.owner ($Box refType null)))) ($IsGoodHeap $Heap@41)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@40)))) (and (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 |universe#0|) _module.Universe.content))) (forall ((|l#1@@5| T@U) ) (!  (=> (and ($Is refType |l#1@@5| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@5|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#1@@5|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 |l#1@@5|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#1@@5|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 |l#1@@5|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 |l#1@@5|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#1@@5|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@41 |l#1@@5|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#1@@5|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@5|)))
))) (and ($IsGoodHeap $Heap@42) ($IsHeapAnchor $Heap@42))) (and (and (forall ((|a#1@@5| T@U) (|b#1@@5| T@U) ) (!  (=> (and ($Is refType |a#1@@5| Tclass._module.Lifetime) ($Is refType |b#1@@5| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@5|))) (and (|_module.Universe.outlives#canCall| $Heap@40 |universe#0| |a#1@@5| |b#1@@5|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@5| |b#1@@5|) (|_module.Universe.outlives#canCall| $Heap@41 |universe#0| |a#1@@5| |b#1@@5|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@41 |universe#0| |a#1@@5| |b#1@@5|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@5| |b#1@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@5|)))
)) (forall ((|a#1@@6| T@U) (|b#1@@6| T@U) ) (!  (=> (and (and ($Is refType |a#1@@6| Tclass._module.Lifetime) ($Is refType |b#1@@6| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@6|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@6| |b#1@@6|) (_module.Universe.outlives ($LS $LZ) $Heap@41 |universe#0| |a#1@@6| |b#1@@6|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@41 |universe#0| |a#1@@6| |b#1@@6|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@40 |universe#0| |a#1@@6| |b#1@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@6|)))
))) (and (= $Heap@41 $Heap@42) (or (not (= |universe#0| null)) (not true))))))) (and (and (and (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@40) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@40)) (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@40) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@40 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@40 |universe#0|) (forall ((|o#0@@22| T@U) ) (!  (=> (and ($Is refType |o#0@@22| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@22|))) (and (and (and (= (_module.Object.universe |o#0@@22|) |universe#0|) (or (not (= |o#0@@22| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@40 |o#0@@22|)) (_module.Object.triggerAxioms $Heap@40 |o#0@@22|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@40 |o#0@@22|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@40 |o#0@@22|))
 :pattern ( (_module.Object.universe |o#0@@22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@22|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@42 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@42 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@42 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@42 |universe#0|) (forall ((|o#1@@9| T@U) ) (!  (=> (and ($Is refType |o#1@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@9|))) (and (and (and (= (_module.Object.universe |o#1@@9|) |universe#0|) (or (not (= |o#1@@9| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@42 |o#1@@9|)) (_module.Object.triggerAxioms $Heap@42 |o#1@@9|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@42 |o#1@@9|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@42 |o#1@@9|))
 :pattern ( (_module.Object.universe |o#1@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@9|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@40 $Heap@42 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))) (not ($IsAllocBox ($Box refType |o#2@@0|) Tclass._module.Object $Heap@40)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@2| T@U) ) (!  (=> (and ($Is refType |o#3@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|)))) (or (forall (($o@@148 T@U) ($f@@88 T@U) ) (!  (=> (or (not (= $o@@148 null)) (not true)) (=> (= $o@@148 |o#3@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@148) $f@@88) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@148) $f@@88))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@148) $f@@88))
)) (_module.Object.sequenceInv2 $Heap@40 $Heap@42 |o#3@@2|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@40 $Heap@42 |o#3@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@2|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@2| T@U) ) (!  (=> (and ($Is refType |o#4@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@40)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |o#4@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |o#4@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |o#4@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@2|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@40 $Heap@42 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@12| T@U) ) (!  (=> (and ($Is refType |l#0@@12| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@12|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#0@@12|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#0@@12|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@40)) (_module.Lifetime.unchangedNonvolatileFields $Heap@40 $Heap@42 |l#0@@12|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@40 $Heap@42 |l#0@@12|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |l#0@@12|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@12|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalInv $Heap@40 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@40 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalInv $Heap@40 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@40 |universe#0|) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|))) (and (and (and (= (_module.Object.universe |o#5@@0|) |universe#0|) (or (not (= |o#5@@0| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@40 |o#5@@0|)) (_module.Object.triggerAxioms $Heap@40 |o#5@@0|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@40 |o#5@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@40 |o#5@@0|))
 :pattern ( (_module.Object.universe |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@40 |universe#0|) (or (_module.Universe.globalInv $Heap@40 |universe#0|) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|))) (_module.Object.inv $Heap@40 |o#6@@0|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@40 |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|))) (and (or (forall (($o@@149 T@U) ($f@@89 T@U) ) (!  (=> (or (not (= $o@@149 null)) (not true)) (=> (= $o@@149 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@149) $f@@89) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@149) $f@@89))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@149) $f@@89))
)) (_module.Object.inv $Heap@42 |o#7@@0|)) (or (forall (($o@@150 T@U) ($f@@90 T@U) ) (!  (=> (or (not (= $o@@150 null)) (not true)) (=> (= $o@@150 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@150) $f@@90) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 $o@@150) $f@@90))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 $o@@150) $f@@90))
)) (_module.Object.inv2 $Heap@40 $Heap@42 |o#7@@0|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@40 $Heap@42 |o#7@@0|))
 :pattern ( (_module.Object.inv $Heap@42 |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@40 $Heap@42 |universe#0| |running#0@@3|) (forall ((|o#8@@2| T@U) ) (!  (=> (and ($Is refType |o#8@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|))))) (_module.Object.inv $Heap@42 |o#8@@2|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@42 |o#8@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@2|)))
))))) (and ($IsGoodHeap $Heap@43) ($IsHeapAnchor $Heap@43))) (and (and (|_module.Universe.globalInv#canCall| $Heap@42 |universe#0|) (=> (_module.Universe.globalInv $Heap@42 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@40 $Heap@42 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@42 |universe#0|) (and (_module.Universe.globalInv $Heap@42 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@42 |universe#0|) (forall ((|o#10@@0| T@U) ) (!  (=> (and ($Is refType |o#10@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@0|))) (_module.Object.inv $Heap@42 |o#10@@0|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@42 |o#10@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@0|)))
))))))) (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@40 $Heap@42 |universe#0|) (and (_module.Universe.globalInv2 $Heap@40 $Heap@42 |universe#0|) (forall ((|o#11@@0| T@U) ) (!  (=> (and ($Is refType |o#11@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|)) (_module.Object.inv2 $Heap@40 $Heap@42 |o#11@@0|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@40 $Heap@42 |o#11@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@42 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@40 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@0|)))
)))) (and (= $Heap@42 $Heap@43) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@43))) (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@40) (|_module.Universe.globalSequenceInv2#canCall| $Heap@40 $Heap@43 |universe#0|)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@40 $Heap@43 |universe#0|) (_module.Universe.globalSequenceInv2 $Heap@40 $Heap@43 |universe#0|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (forall (($o@@151 T@U) ($f@@91 T@U) ) (!  (=> (and (and (or (not (= $o@@151 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@151) alloc)))) (or (= $o@@151 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType $o@@151)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@151 $f@@91)))
 :qid |_12MutexLifetimelongdfy.1324:26|
 :skolemid |1169|
))) (=> (forall (($o@@152 T@U) ($f@@92 T@U) ) (!  (=> (and (and (or (not (= $o@@152 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@152) alloc)))) (or (= $o@@152 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType $o@@152)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@152 $f@@92)))
 :qid |_12MutexLifetimelongdfy.1324:26|
 :skolemid |1169|
)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@43 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@43 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@43 |universe#0|) (forall ((|o#0@@23| T@U) ) (!  (=> (and ($Is refType |o#0@@23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|))) (and (and (and (= (_module.Object.universe |o#0@@23|) |universe#0|) (or (not (= |o#0@@23| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@43 |o#0@@23|)) (_module.Object.triggerAxioms $Heap@43 |o#0@@23|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@43 |o#0@@23|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@43 |o#0@@23|))
 :pattern ( (_module.Object.universe |o#0@@23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@23|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@43 |universe#0|) (forall ((|o#0@@24| T@U) ) (!  (=> (and ($Is refType |o#0@@24| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@24|))) (and (and (and (= (_module.Object.universe |o#0@@24|) |universe#0|) (or (not (= |o#0@@24| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@43 |o#0@@24|)) (_module.Object.triggerAxioms $Heap@43 |o#0@@24|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@43 |o#0@@24|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@43 |o#0@@24|))
 :pattern ( (_module.Object.universe |o#0@@24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@24|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (forall ((|o#1@@10| T@U) ) (!  (=> (and ($Is refType |o#1@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@10|))) (_module.Object.inv $Heap@43 |o#1@@10|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@43 |o#1@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@10|)))
))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@43 |universe#0|) (or (_module.Universe.globalInv $Heap@43 |universe#0|) (forall ((|o#1@@11| T@U) ) (!  (=> (and ($Is refType |o#1@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@11|))) (_module.Object.inv $Heap@43 |o#1@@11|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@43 |o#1@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@11|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)) (=> (and (and (and ($IsGoodHeap $Heap@44) ($IsHeapAnchor $Heap@44)) (|_module.Universe.globalInv#canCall| $Heap@44 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@44 |universe#0|) (and (_module.Universe.globalInv $Heap@44 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@44 |universe#0|) (forall ((|o#3@@3| T@U) ) (!  (=> (and ($Is refType |o#3@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@3|))) (_module.Object.inv $Heap@44 |o#3@@3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@44 |o#3@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@3|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@43 $Heap@44 |universe#0|))) (=> (and (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@43 $Heap@44 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@43 $Heap@44 |universe#0|) (forall ((|o#4@@3| T@U) ) (!  (=> (and ($Is refType |o#4@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|)) (_module.Object.sequenceInv2 $Heap@43 $Heap@44 |o#4@@3|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@43 $Heap@44 |o#4@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@3|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@43 $Heap@44 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@43 $Heap@44 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@43 $Heap@44 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@43 $Heap@44 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@3| T@U) ) (!  (=> (and ($Is refType |o#8@@3| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|)))) (or (forall (($o@@153 T@U) ($f@@93 T@U) ) (!  (=> (or (not (= $o@@153 null)) (not true)) (=> (= $o@@153 |o#8@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@153) $f@@93) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@153) $f@@93))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@153) $f@@93))
)) (_module.Object.sequenceInv2 $Heap@43 $Heap@44 |o#8@@3|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@43 $Heap@44 |o#8@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@3|)))
))) (forall ((|o#9@@1| T@U) ) (!  (=> (and ($Is refType |o#9@@1| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@1|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@43)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |o#9@@1|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 |o#9@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |o#9@@1|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@1|)))
))) (forall ((|l#0@@13| T@U) ) (!  (=> (and ($Is refType |l#0@@13| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@13|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |l#0@@13|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |l#0@@13|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@43)) (_module.Lifetime.unchangedNonvolatileFields $Heap@43 $Heap@44 |l#0@@13|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@43 $Heap@44 |l#0@@13|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |l#0@@13|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@13|)))
)))))) (and (and (forall ((|a#1@@7| T@U) (|b#1@@7| T@U) ) (!  (=> (and ($Is refType |a#1@@7| Tclass._module.Lifetime) ($Is refType |b#1@@7| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@7|))) (and (|_module.Universe.outlives#canCall| $Heap@43 |universe#0| |a#1@@7| |b#1@@7|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@43 |universe#0| |a#1@@7| |b#1@@7|) (|_module.Universe.outlives#canCall| $Heap@44 |universe#0| |a#1@@7| |b#1@@7|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@44 |universe#0| |a#1@@7| |b#1@@7|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@43 |universe#0| |a#1@@7| |b#1@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@7|)))
)) (forall ((|a#1@@8| T@U) (|b#1@@8| T@U) ) (!  (=> (and (and ($Is refType |a#1@@8| Tclass._module.Lifetime) ($Is refType |b#1@@8| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@8|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@8|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@43 |universe#0| |a#1@@8| |b#1@@8|) (_module.Universe.outlives ($LS $LZ) $Heap@44 |universe#0| |a#1@@8| |b#1@@8|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@44 |universe#0| |a#1@@8| |b#1@@8|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@43 |universe#0| |a#1@@8| |b#1@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@8|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@8|)))
))) (and (forall (($o@@154 T@U) ) (!  (=> (and (or (not (= $o@@154 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@154) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@154) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 $o@@154)) (or (= $o@@154 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@43 |universe#0|) _module.Universe.content)) ($Box refType $o@@154)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@44 $o@@154))
)) ($HeapSucc $Heap@43 $Heap@44)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |universe#0| null)) (not true))) (=> (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@44) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@133)))))))))))))))))))))))))
(let ((anon32_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#4@0|)) (not (or (or (= call5formal@this@0 call5formal@this@0@@0) (= call5formal@this@0 call5formal@this@0@@1)) (= call5formal@this@0 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)))))) (= (ControlFlow 0 12) 2)) anon20_correct)))
(let ((anon32_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#4@0|)) (not (or (or (= call5formal@this@0 call5formal@this@0@@0) (= call5formal@this@0 call5formal@this@0@@1)) (= call5formal@this@0 (_module.OwnedObject.lifetime |call6formal@guard#0@0|))))) ($IsAllocBox ($Box refType |l#4@0|) Tclass._module.Lifetime? $Heap@27)) (and (|_module.Lifetime.alive#canCall| $Heap@27 |l#4@0|) (= (ControlFlow 0 11) 2))) anon20_correct)))
(let ((anon31_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#4@0|))) (and (=> (= (ControlFlow 0 14) 11) anon32_Then_correct) (=> (= (ControlFlow 0 14) 12) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#4@0|)) (and (=> (= (ControlFlow 0 13) 11) anon32_Then_correct) (=> (= (ControlFlow 0 13) 12) anon32_Else_correct)))))
(let ((anon30_Then_correct  (=> (and ($Is refType |l#4@0| Tclass._module.Lifetime) ($IsAlloc refType |l#4@0| Tclass._module.Lifetime $Heap@27)) (and (=> (= (ControlFlow 0 15) 13) anon31_Then_correct) (=> (= (ControlFlow 0 15) 14) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (and ($Is refType |l#4@0| Tclass._module.Lifetime) ($IsAlloc refType |l#4@0| Tclass._module.Lifetime $Heap@27))) (= (ControlFlow 0 10) 2)) anon20_correct)))
(let ((anon15_correct  (=> (and (|_module.Lifetime.alive#canCall| $Heap@27 call5formal@this@0@@0) (=> (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0)) (and (|_module.Lifetime.alive#canCall| $Heap@27 call5formal@this@0@@1) (=> (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@1)) (|_module.Lifetime.alive#canCall| $Heap@27 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)))))) (=> (and (and (and (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0)) (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@1))) (_module.Lifetime.alive $Heap@27 (_module.OwnedObject.lifetime |call6formal@guard#0@0|))) (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)) ($Box refType call5formal@this@0@@1)) ($Box refType (_module.OwnedObject.lifetime |call6formal@guard#0@0|))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.mightPointFrom))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.elements)) |Set#Empty|)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (U_2_bool (Lit boolType (bool_2_U false)))))) (and (=> (= (ControlFlow 0 16) 15) anon30_Then_correct) (=> (= (ControlFlow 0 16) 10) anon30_Else_correct))))))
(let ((anon29_Else_correct  (=> (and (not (and (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0)) (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@1)))) (= (ControlFlow 0 18) 16)) anon15_correct)))
(let ((anon29_Then_correct  (=> (and (and (and (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0)) (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@1))) ($IsAllocBox ($Box refType (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) Tclass._module.Lifetime? $Heap@27)) (and (|_module.Lifetime.alive#canCall| $Heap@27 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) (= (ControlFlow 0 17) 16))) anon15_correct)))
(let ((anon28_Else_correct  (=> (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0) (and (=> (= (ControlFlow 0 20) 17) anon29_Then_correct) (=> (= (ControlFlow 0 20) 18) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (not (_module.Lifetime.alive $Heap@27 call5formal@this@0@@0)) (=> (and ($IsAllocBox ($Box refType call5formal@this@0@@1) Tclass._module.Lifetime? $Heap@27) (|_module.Lifetime.alive#canCall| $Heap@27 call5formal@this@0@@1)) (and (=> (= (ControlFlow 0 19) 17) anon29_Then_correct) (=> (= (ControlFlow 0 19) 18) anon29_Else_correct))))))
(let ((anon11_correct  (=> (and (= |running##13@0| (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content))))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@24)) (=> (and (and ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)))) (TSet Tclass._module.Thread) $Heap@24) ($IsAlloc SetType |running##13@0| (TSet Tclass._module.Thread) $Heap@24)) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@24 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@24 |universe#0|) (forall ((|o#0@@25| T@U) ) (!  (=> (and ($Is refType |o#0@@25| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@25|))) (and (and (and (= (_module.Object.universe |o#0@@25|) |universe#0|) (or (not (= |o#0@@25| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@24 |o#0@@25|)) (_module.Object.triggerAxioms $Heap@24 |o#0@@25|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1316|
 :pattern ( (_module.Object.triggerAxioms $Heap@24 |o#0@@25|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@24 |o#0@@25|))
 :pattern ( (_module.Object.universe |o#0@@25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@25|)))
)))))))))) (=> (and (and (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@26 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@26 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@26 |universe#0|) (forall ((|o#1@@12| T@U) ) (!  (=> (and ($Is refType |o#1@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@12|))) (and (and (and (= (_module.Object.universe |o#1@@12|) |universe#0|) (or (not (= |o#1@@12| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@26 |o#1@@12|)) (_module.Object.triggerAxioms $Heap@26 |o#1@@12|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1318|
 :pattern ( (_module.Object.triggerAxioms $Heap@26 |o#1@@12|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@26 |o#1@@12|))
 :pattern ( (_module.Object.universe |o#1@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@12|)))
))))))))) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@24 $Heap@26 |universe#0|) (forall ((|o#2@@1| T@U) ) (!  (=> (and ($Is refType |o#2@@1| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|)))) (not ($IsAllocBox ($Box refType |o#2@@1|) Tclass._module.Object $Heap@24)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1320|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@1|)))
)))))))) (and (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (|Set#Subset| |running##13@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (forall ((|o#3@@4| T@U) ) (!  (=> (and ($Is refType |o#3@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|)))) (or (forall (($o@@155 T@U) ($f@@94 T@U) ) (!  (=> (or (not (= $o@@155 null)) (not true)) (=> (= $o@@155 |o#3@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@155) $f@@94) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@155) $f@@94))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1322|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@155) $f@@94))
)) (_module.Object.sequenceInv2 $Heap@24 $Heap@26 |o#3@@4|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1323|
 :pattern ( (_module.Object.sequenceInv2 $Heap@24 $Heap@26 |o#3@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@4|)))
))))) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (forall ((|o#4@@4| T@U) ) (!  (=> (and ($Is refType |o#4@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##13@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@24)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#4@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1324|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |o#4@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#4@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@4|)))
)))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@24 $Heap@26 |universe#0| |running##13@0|) (or (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@26 |universe#0| |running##13@0|) (forall ((|l#0@@14| T@U) ) (!  (=> (and ($Is refType |l#0@@14| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@14|))) (=> (and (not (|Set#IsMember| |running##13@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#0@@14|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#0@@14|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@24)) (_module.Lifetime.unchangedNonvolatileFields $Heap@24 $Heap@26 |l#0@@14|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1325|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@24 $Heap@26 |l#0@@14|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#0@@14|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@14|)))
))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@27) ($IsHeapAnchor $Heap@27)) (|_module.Universe.globalSequenceInv2#canCall| $Heap@24 $Heap@26 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@24 $Heap@26 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@24 $Heap@26 |universe#0|) (forall ((|o#5@@1| T@U) ) (!  (=> (and ($Is refType |o#5@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|)) (_module.Object.sequenceInv2 $Heap@24 $Heap@26 |o#5@@1|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |1331|
 :pattern ( (_module.Object.sequenceInv2 $Heap@24 $Heap@26 |o#5@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@1|)))
)))) (= $Heap@26 $Heap@27))) (and (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@27) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@24)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@24 $Heap@27 |universe#0|) (|_module.Universe.globalSequenceInv2#canCall| $Heap@24 $Heap@27 |universe#0|))) (and (and (_module.Universe.globalSequenceInv2 $Heap@24 $Heap@27 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and ($IsAllocBox ($Box refType call5formal@this@0@@0) Tclass._module.Lifetime? $Heap@27) (|_module.Lifetime.alive#canCall| $Heap@27 call5formal@this@0@@0))))) (and (=> (= (ControlFlow 0 21) 19) anon28_Then_correct) (=> (= (ControlFlow 0 21) 20) anon28_Else_correct))))))))
(let ((anon27_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |t#2@0|))) (= (ControlFlow 0 24) 21)) anon11_correct)))
(let ((anon27_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |t#2@0|)) (= (ControlFlow 0 23) 21)) anon11_correct)))
(let ((anon26_Then_correct  (=> (and (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@26)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@24))) (and (=> (= (ControlFlow 0 25) 23) anon27_Then_correct) (=> (= (ControlFlow 0 25) 24) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and ($Is refType |t#2@0| Tclass._module.Thread) ($IsAlloc refType |t#2@0| Tclass._module.Thread $Heap@26))) (= (ControlFlow 0 22) 21)) anon11_correct)))
(let ((anon8_correct  (=> (forall ((|l#3@@1| T@U) ) (!  (=> ($Is refType |l#3@@1| Tclass._module.Lifetime) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@1|)))) (|_module.Lifetime.alive#canCall| $Heap@19 |l#3@@1|)))
 :qid |_12MutexLifetimelongdfy.1263:17|
 :skolemid |1137|
 :pattern ( (_module.Lifetime.alive $Heap@19 |l#3@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@1|)))
)) (=> (and (forall ((|l#3@@2| T@U) ) (!  (=> (and ($Is refType |l#3@@2| Tclass._module.Lifetime) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@2|))))) (not (_module.Lifetime.alive $Heap@19 |l#3@@2|)))
 :qid |_12MutexLifetimelongdfy.1263:17|
 :skolemid |1139|
 :pattern ( (_module.Lifetime.alive $Heap@19 |l#3@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#3@@2|)))
)) (forall (($o@@156 T@U) ($f@@95 T@U) ) (!  (=> (and (and (or (not (= $o@@156 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@156) alloc)))) (or (= $o@@156 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType $o@@156)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@156 $f@@95)))
 :qid |_12MutexLifetimelongdfy.1265:26|
 :skolemid |1140|
))) (=> (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@19 |universe#0|) (forall ((|o#0@@26| T@U) ) (!  (=> (and ($Is refType |o#0@@26| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|))) (and (and (and (= (_module.Object.universe |o#0@@26|) |universe#0|) (or (not (= |o#0@@26| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@19 |o#0@@26|)) (_module.Object.triggerAxioms $Heap@19 |o#0@@26|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@19 |o#0@@26|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@19 |o#0@@26|))
 :pattern ( (_module.Object.universe |o#0@@26|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@26|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@19 |universe#0|) (or (_module.Universe.globalInv $Heap@19 |universe#0|) (forall ((|o#1@@13| T@U) ) (!  (=> (and ($Is refType |o#1@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@13|))) (_module.Object.inv $Heap@19 |o#1@@13|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@19 |o#1@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@13|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (=> (and (and (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (and (_module.Universe.globalInv $Heap@20 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (forall ((|o#3@@5| T@U) ) (!  (=> (and ($Is refType |o#3@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@5|))) (_module.Object.inv $Heap@20 |o#3@@5|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@20 |o#3@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@5|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@19 $Heap@20 |universe#0|))) (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@19 $Heap@20 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@19 $Heap@20 |universe#0|) (forall ((|o#4@@5| T@U) ) (!  (=> (and ($Is refType |o#4@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|)) (_module.Object.sequenceInv2 $Heap@19 $Heap@20 |o#4@@5|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@19 $Heap@20 |o#4@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@5|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@20 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@19 $Heap@20 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@19 $Heap@20 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@19 $Heap@20 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@4| T@U) ) (!  (=> (and ($Is refType |o#8@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)))) (or (forall (($o@@157 T@U) ($f@@96 T@U) ) (!  (=> (or (not (= $o@@157 null)) (not true)) (=> (= $o@@157 |o#8@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@157) $f@@96) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@157) $f@@96))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@157) $f@@96))
)) (_module.Object.sequenceInv2 $Heap@19 $Heap@20 |o#8@@4|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@19 $Heap@20 |o#8@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@4|)))
))) (forall ((|o#9@@2| T@U) ) (!  (=> (and ($Is refType |o#9@@2| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@2|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@19)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#9@@2|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#9@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |o#9@@2|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@2|)))
))) (forall ((|l#0@@15| T@U) ) (!  (=> (and ($Is refType |l#0@@15| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@15|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |l#0@@15|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |l#0@@15|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@19)) (_module.Lifetime.unchangedNonvolatileFields $Heap@19 $Heap@20 |l#0@@15|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@19 $Heap@20 |l#0@@15|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |l#0@@15|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@15|)))
))))) (and (forall ((|a#1@@9| T@U) (|b#1@@9| T@U) ) (!  (=> (and ($Is refType |a#1@@9| Tclass._module.Lifetime) ($Is refType |b#1@@9| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@9|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@9|))) (and (|_module.Universe.outlives#canCall| $Heap@19 |universe#0| |a#1@@9| |b#1@@9|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@19 |universe#0| |a#1@@9| |b#1@@9|) (|_module.Universe.outlives#canCall| $Heap@20 |universe#0| |a#1@@9| |b#1@@9|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@9| |b#1@@9|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@19 |universe#0| |a#1@@9| |b#1@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@9|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@9|)))
)) (forall ((|a#1@@10| T@U) (|b#1@@10| T@U) ) (!  (=> (and (and ($Is refType |a#1@@10| Tclass._module.Lifetime) ($Is refType |b#1@@10| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@10|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@19 |universe#0| |a#1@@10| |b#1@@10|) (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@10| |b#1@@10|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@10| |b#1@@10|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@19 |universe#0| |a#1@@10| |b#1@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@10|)))
)))))) (=> (and (and (and (and (and (forall (($o@@158 T@U) ) (!  (=> (and (or (not (= $o@@158 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@158) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@158) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@158)) (or (= $o@@158 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 |universe#0|) _module.Universe.content)) ($Box refType $o@@158)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@158))
)) ($HeapSucc $Heap@19 $Heap@20)) (and (= |mightPointTo##2@0| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0))) (forall (($o@@159 T@U) ($f@@97 T@U) ) (!  (=> (and (and (or (not (= $o@@159 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@159) alloc)))) (or (= $o@@159 |universe#0|) (and (|Set#IsMember| |mightPointTo##2@0| ($Box refType $o@@159)) (= $f@@97 _module.Lifetime.mightPointFrom)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@159 $f@@97)))
 :qid |_12MutexLifetimelongdfy.1268:21|
 :skolemid |1141|
)))) (and (and (or (not (= call5formal@this null)) (not true)) (and ($Is refType call5formal@this Tclass._module.Lifetime) ($IsAlloc refType call5formal@this Tclass._module.Lifetime $Heap@@133))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (forall ((|o#0@@27| T@U) ) (!  (=> (and ($Is refType |o#0@@27| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@27|))) (and (and (and (= (_module.Object.universe |o#0@@27|) |universe#0|) (or (not (= |o#0@@27| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@20 |o#0@@27|)) (_module.Object.triggerAxioms $Heap@20 |o#0@@27|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |2625|
 :pattern ( (_module.Object.triggerAxioms $Heap@20 |o#0@@27|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@20 |o#0@@27|))
 :pattern ( (_module.Object.universe |o#0@@27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@27|)))
))))))))) (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (forall ((|o#1@@14| T@U) ) (!  (=> (and ($Is refType |o#1@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@14|))) (_module.Object.inv $Heap@20 |o#1@@14|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |2627|
 :pattern ( (_module.Object.inv $Heap@20 |o#1@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@14|)))
)))) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)))) (and (|Set#Subset| |mightPointTo##2@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content))) (forall ((|l#1@@6| T@U) ) (!  (=> (and ($Is refType |l#1@@6| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##2@0| ($Box refType |l#1@@6|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@6|) _module.Lifetime.owner)) |running#0@@3|))
 :qid |_12MutexLifetimelongdfy.612:21|
 :skolemid |2629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@6|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| |mightPointTo##2@0| ($Box refType |l#1@@6|)))
)))) (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (and (or (not (= call5formal@this@0@@1 null)) (not true)) (and ($Is refType call5formal@this@0@@1 Tclass._module.Lifetime) ($IsAlloc refType call5formal@this@0@@1 Tclass._module.Lifetime $Heap@21)))))) (and (and (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@21 call5formal@this@0@@1) (=> (_module.Object.objectGlobalInv $Heap@21 call5formal@this@0@@1) (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@21 |universe#0| |running#0@@3|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@21 call5formal@this@0@@1) (and (_module.Object.objectGlobalInv $Heap@21 call5formal@this@0@@1) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 (_module.Object.universe call5formal@this@0@@1)) _module.Universe.content)) ($Box refType call5formal@this@0@@1)) (_module.Universe.globalInv $Heap@21 (_module.Object.universe call5formal@this@0@@1)))))) (and (and (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@21 |universe#0| |running#0@@3|) (and (_module.Universe.legalTransition $Heap@20 $Heap@21 |universe#0| |running#0@@3|) (and (and (and (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@21 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (_module.Universe.globalInv $Heap@20 |universe#0|)) (forall ((|o#11@@1| T@U) ) (!  (=> (and ($Is refType |o#11@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@1|))) (and (or (forall (($o@@160 T@U) ($f@@98 T@U) ) (!  (=> (or (not (= $o@@160 null)) (not true)) (=> (= $o@@160 |o#11@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@160) $f@@98) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@160) $f@@98))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2656|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@160) $f@@98))
)) (_module.Object.inv $Heap@21 |o#11@@1|)) (or (forall (($o@@161 T@U) ($f@@99 T@U) ) (!  (=> (or (not (= $o@@161 null)) (not true)) (=> (= $o@@161 |o#11@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@161) $f@@99) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@161) $f@@99))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2657|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@161) $f@@99))
)) (_module.Object.inv2 $Heap@20 $Heap@21 |o#11@@1|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |2658|
 :pattern ( (_module.Object.inv2 $Heap@20 $Heap@21 |o#11@@1|))
 :pattern ( (_module.Object.inv $Heap@21 |o#11@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@1|)))
))) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#12|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#12|))))) (_module.Object.inv $Heap@21 |o#12|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |2659|
 :pattern ( (_module.Object.inv $Heap@21 |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) ($Box refType |o#12|)))
))))) (= (_module.Object.universe call5formal@this@0@@1) |universe#0|))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 call5formal@this@0@@1) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 call5formal@this@0@@1) _module.Lifetime.elements)) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 call5formal@this@0@@1) _module.Lifetime.mightPointTo)) |mightPointTo##2@0|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 call5formal@this@0@@1) _module.Lifetime.mightPointFrom)) |Set#Empty|))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@1)))) (forall ((|l#3@@3| T@U) ) (!  (=> (and ($Is refType |l#3@@3| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##2@0| ($Box refType |l#3@@3|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#3@@3|) _module.Lifetime.mightPointFrom)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#3@@3|) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@1)))))
 :qid |_12MutexLifetimelongdfy.618:20|
 :skolemid |2660|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#3@@3|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#3@@3|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| |mightPointTo##2@0| ($Box refType |l#3@@3|)))
))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 call5formal@this@0@@1) alloc)))) (forall (($o@@162 T@U) ) (!  (=> (and (or (not (= $o@@162 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@162) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@162) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@162)) (or (= $o@@162 |universe#0|) (|Set#IsMember| |mightPointTo##2@0| ($Box refType $o@@162)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2661|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@162))
))))))) (=> (and (and (and (and (and (and (and (forall (($o@@163 T@U) ($f@@100 T@U) ) (!  (=> (and (or (not (= $o@@163 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@163) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@163) $f@@100) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@163) $f@@100)) (or (= $o@@163 |universe#0|) (and (|Set#IsMember| |mightPointTo##2@0| ($Box refType $o@@163)) (= $f@@100 _module.Lifetime.mightPointFrom)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@163) $f@@100))
)) ($HeapSucc $Heap@20 $Heap@21)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@20))) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |universe#0|) _module.Universe.content))) (forall ((|l#1@@7| T@U) ) (!  (=> (and ($Is refType |l#1@@7| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@7|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@7|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#1@@7|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@7|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#1@@7|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#1@@7|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@7|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 |l#1@@7|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#1@@7|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@7|)))
))) (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)))) (and (and (and (forall ((|a#1@@11| T@U) (|b#1@@11| T@U) ) (!  (=> (and ($Is refType |a#1@@11| Tclass._module.Lifetime) ($Is refType |b#1@@11| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@11|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@11|))) (and (|_module.Universe.outlives#canCall| $Heap@20 |universe#0| |a#1@@11| |b#1@@11|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@11| |b#1@@11|) (|_module.Universe.outlives#canCall| $Heap@21 |universe#0| |a#1@@11| |b#1@@11|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@21 |universe#0| |a#1@@11| |b#1@@11|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@11| |b#1@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@11|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@11|)))
)) (forall ((|a#1@@12| T@U) (|b#1@@12| T@U) ) (!  (=> (and (and ($Is refType |a#1@@12| Tclass._module.Lifetime) ($Is refType |b#1@@12| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@12|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@12|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@12| |b#1@@12|) (_module.Universe.outlives ($LS $LZ) $Heap@21 |universe#0| |a#1@@12| |b#1@@12|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@21 |universe#0| |a#1@@12| |b#1@@12|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@20 |universe#0| |a#1@@12| |b#1@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@12|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@12|)))
))) (and (= $Heap@21 $Heap@22) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@20) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@20)) (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@20) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (forall ((|o#0@@28| T@U) ) (!  (=> (and ($Is refType |o#0@@28| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|))) (and (and (and (= (_module.Object.universe |o#0@@28|) |universe#0|) (or (not (= |o#0@@28| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@20 |o#0@@28|)) (_module.Object.triggerAxioms $Heap@20 |o#0@@28|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@20 |o#0@@28|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@20 |o#0@@28|))
 :pattern ( (_module.Object.universe |o#0@@28|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@28|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@22 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@22 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@22 |universe#0|) (forall ((|o#1@@15| T@U) ) (!  (=> (and ($Is refType |o#1@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@15|))) (and (and (and (= (_module.Object.universe |o#1@@15|) |universe#0|) (or (not (= |o#1@@15| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@22 |o#1@@15|)) (_module.Object.triggerAxioms $Heap@22 |o#1@@15|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@22 |o#1@@15|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@22 |o#1@@15|))
 :pattern ( (_module.Object.universe |o#1@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@15|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@20 $Heap@22 |universe#0|) (forall ((|o#2@@2| T@U) ) (!  (=> (and ($Is refType |o#2@@2| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|)))) (not ($IsAllocBox ($Box refType |o#2@@2|) Tclass._module.Object $Heap@20)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@6| T@U) ) (!  (=> (and ($Is refType |o#3@@6| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|)))) (or (forall (($o@@164 T@U) ($f@@101 T@U) ) (!  (=> (or (not (= $o@@164 null)) (not true)) (=> (= $o@@164 |o#3@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@164) $f@@101) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@164) $f@@101))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@164) $f@@101))
)) (_module.Object.sequenceInv2 $Heap@20 $Heap@22 |o#3@@6|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@20 $Heap@22 |o#3@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@6|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@6| T@U) ) (!  (=> (and ($Is refType |o#4@@6| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@6|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@20)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#4@@6|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |o#4@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |o#4@@6|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@6|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@20 $Heap@22 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@16| T@U) ) (!  (=> (and ($Is refType |l#0@@16| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@16|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#0@@16|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#0@@16|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@20)) (_module.Lifetime.unchangedNonvolatileFields $Heap@20 $Heap@22 |l#0@@16|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@20 $Heap@22 |l#0@@16|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |l#0@@16|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@16|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@20 |universe#0|) (forall ((|o#5@@2| T@U) ) (!  (=> (and ($Is refType |o#5@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@2|))) (and (and (and (= (_module.Object.universe |o#5@@2|) |universe#0|) (or (not (= |o#5@@2| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@20 |o#5@@2|)) (_module.Object.triggerAxioms $Heap@20 |o#5@@2|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@20 |o#5@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@20 |o#5@@2|))
 :pattern ( (_module.Object.universe |o#5@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@2|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@20 |universe#0|) (or (_module.Universe.globalInv $Heap@20 |universe#0|) (forall ((|o#6@@1| T@U) ) (!  (=> (and ($Is refType |o#6@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|))) (_module.Object.inv $Heap@20 |o#6@@1|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@20 |o#6@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (forall ((|o#7@@1| T@U) ) (!  (=> (and ($Is refType |o#7@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@1|))) (and (or (forall (($o@@165 T@U) ($f@@102 T@U) ) (!  (=> (or (not (= $o@@165 null)) (not true)) (=> (= $o@@165 |o#7@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@165) $f@@102) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@165) $f@@102))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@165) $f@@102))
)) (_module.Object.inv $Heap@22 |o#7@@1|)) (or (forall (($o@@166 T@U) ($f@@103 T@U) ) (!  (=> (or (not (= $o@@166 null)) (not true)) (=> (= $o@@166 |o#7@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@166) $f@@103) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@166) $f@@103))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@166) $f@@103))
)) (_module.Object.inv2 $Heap@20 $Heap@22 |o#7@@1|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@20 $Heap@22 |o#7@@1|))
 :pattern ( (_module.Object.inv $Heap@22 |o#7@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@1|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@20 $Heap@22 |universe#0| |running#0@@3|) (forall ((|o#8@@5| T@U) ) (!  (=> (and ($Is refType |o#8@@5| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|))))) (_module.Object.inv $Heap@22 |o#8@@5|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@22 |o#8@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@5|)))
))))) (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)))))) (and (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@22 |universe#0|) (=> (_module.Universe.globalInv $Heap@22 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@20 $Heap@22 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@22 |universe#0|) (and (_module.Universe.globalInv $Heap@22 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@22 |universe#0|) (forall ((|o#10@@1| T@U) ) (!  (=> (and ($Is refType |o#10@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@1|))) (_module.Object.inv $Heap@22 |o#10@@1|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@22 |o#10@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@1|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@20 $Heap@22 |universe#0|) (and (_module.Universe.globalInv2 $Heap@20 $Heap@22 |universe#0|) (forall ((|o#11@@2| T@U) ) (!  (=> (and ($Is refType |o#11@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|)) (_module.Object.inv2 $Heap@20 $Heap@22 |o#11@@2|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@20 $Heap@22 |o#11@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@2|)))
)))) (= $Heap@22 $Heap@23))) (and (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@23) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@20)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@20 $Heap@23 |universe#0|) (|_module.Universe.globalSequenceInv2#canCall| $Heap@20 $Heap@23 |universe#0|))) (and (and (_module.Universe.globalSequenceInv2 $Heap@20 $Heap@23 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)) ($Box refType call5formal@this@0@@1)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 call5formal@this@0) _module.Lifetime.mightPointFrom))) (forall (($o@@167 T@U) ($f@@104 T@U) ) (!  (=> (and (and (or (not (= $o@@167 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@167) alloc)))) (or (= $o@@167 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType $o@@167)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@167 $f@@104)))
 :qid |_12MutexLifetimelongdfy.1276:26|
 :skolemid |1146|
)))))) (and (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@23 |universe#0|) (forall ((|o#0@@29| T@U) ) (!  (=> (and ($Is refType |o#0@@29| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@29|))) (and (and (and (= (_module.Object.universe |o#0@@29|) |universe#0|) (or (not (= |o#0@@29| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@23 |o#0@@29|)) (_module.Object.triggerAxioms $Heap@23 |o#0@@29|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@23 |o#0@@29|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@23 |o#0@@29|))
 :pattern ( (_module.Object.universe |o#0@@29|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@29|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@23 |universe#0|) (or (_module.Universe.globalInv $Heap@23 |universe#0|) (forall ((|o#1@@16| T@U) ) (!  (=> (and ($Is refType |o#1@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@16|))) (_module.Object.inv $Heap@23 |o#1@@16|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@23 |o#1@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@16|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (|_module.Universe.globalInv#canCall| $Heap@24 |universe#0|))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@24 |universe#0|) (and (_module.Universe.globalInv $Heap@24 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@24 |universe#0|) (forall ((|o#3@@7| T@U) ) (!  (=> (and ($Is refType |o#3@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@7|))) (_module.Object.inv $Heap@24 |o#3@@7|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@24 |o#3@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@7|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@23 $Heap@24 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@23 $Heap@24 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@23 $Heap@24 |universe#0|) (forall ((|o#4@@7| T@U) ) (!  (=> (and ($Is refType |o#4@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@7|)) (_module.Object.sequenceInv2 $Heap@23 $Heap@24 |o#4@@7|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@23 $Heap@24 |o#4@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@7|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@24 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|)))))))) (and (and (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@23 $Heap@24 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@23 $Heap@24 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@23 $Heap@24 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@6| T@U) ) (!  (=> (and ($Is refType |o#8@@6| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)))) (or (forall (($o@@168 T@U) ($f@@105 T@U) ) (!  (=> (or (not (= $o@@168 null)) (not true)) (=> (= $o@@168 |o#8@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@168) $f@@105) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@168) $f@@105))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@168) $f@@105))
)) (_module.Object.sequenceInv2 $Heap@23 $Heap@24 |o#8@@6|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@23 $Heap@24 |o#8@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@6|)))
))) (forall ((|o#9@@3| T@U) ) (!  (=> (and ($Is refType |o#9@@3| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@3|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@23)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#9@@3|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |o#9@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |o#9@@3|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@3|)))
))) (forall ((|l#0@@17| T@U) ) (!  (=> (and ($Is refType |l#0@@17| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@17|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |l#0@@17|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |l#0@@17|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@23)) (_module.Lifetime.unchangedNonvolatileFields $Heap@23 $Heap@24 |l#0@@17|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@23 $Heap@24 |l#0@@17|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |l#0@@17|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@17|)))
))))) (forall ((|a#1@@13| T@U) (|b#1@@13| T@U) ) (!  (=> (and ($Is refType |a#1@@13| Tclass._module.Lifetime) ($Is refType |b#1@@13| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@13|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@13|))) (and (|_module.Universe.outlives#canCall| $Heap@23 |universe#0| |a#1@@13| |b#1@@13|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@23 |universe#0| |a#1@@13| |b#1@@13|) (|_module.Universe.outlives#canCall| $Heap@24 |universe#0| |a#1@@13| |b#1@@13|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@13| |b#1@@13|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@23 |universe#0| |a#1@@13| |b#1@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@13|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@13|)))
))) (and (and (forall ((|a#1@@14| T@U) (|b#1@@14| T@U) ) (!  (=> (and (and ($Is refType |a#1@@14| Tclass._module.Lifetime) ($Is refType |b#1@@14| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@14|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@14|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@23 |universe#0| |a#1@@14| |b#1@@14|) (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@14| |b#1@@14|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@14| |b#1@@14|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@23 |universe#0| |a#1@@14| |b#1@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@14|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@14|)))
)) (forall (($o@@169 T@U) ) (!  (=> (and (or (not (= $o@@169 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@169) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@169) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@169)) (or (= $o@@169 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 |universe#0|) _module.Universe.content)) ($Box refType $o@@169)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@169))
))) (and ($HeapSucc $Heap@23 $Heap@24) (forall (($o@@170 T@U) ($f@@106 T@U) ) (!  (=> (and (and (or (not (= $o@@170 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@170) alloc)))) (or (= $o@@170 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType $o@@170)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@170 $f@@106)))
 :qid |_12MutexLifetimelongdfy.1279:23|
 :skolemid |1147|
))))) (and (and (and ($Is refType |call6formal@guard#0| Tclass._module.MutexGuardU32) ($IsAlloc refType |call6formal@guard#0| Tclass._module.MutexGuardU32 $Heap@@133)) (=> (|_module.Universe.globalInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalInv $Heap@24 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@24 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalInv $Heap@24 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@24 |universe#0|) (forall ((|o#0@@30| T@U) ) (!  (=> (and ($Is refType |o#0@@30| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|))) (and (and (and (= (_module.Object.universe |o#0@@30|) |universe#0|) (or (not (= |o#0@@30| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@24 |o#0@@30|)) (_module.Object.triggerAxioms $Heap@24 |o#0@@30|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |818|
 :pattern ( (_module.Object.triggerAxioms $Heap@24 |o#0@@30|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@24 |o#0@@30|))
 :pattern ( (_module.Object.universe |o#0@@30|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@30|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@24 |universe#0|) (or (_module.Universe.globalInv $Heap@24 |universe#0|) (forall ((|o#1@@17| T@U) ) (!  (=> (and ($Is refType |o#1@@17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@17|))) (_module.Object.inv $Heap@24 |o#1@@17|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |820|
 :pattern ( (_module.Object.inv $Heap@24 |o#1@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@17|)))
))))))) (and (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType call5formal@this@0@@1)) ($Box refType call4formal@this@0)) ($Box refType call5formal@this@0)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0@@1) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0) _module.Lifetime.owner)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (=> (|_module.Lifetime.unused#canCall| $Heap@24 call5formal@this@0@@1) (or (_module.Lifetime.unused $Heap@24 call5formal@this@0@@1) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0@@1) _module.Lifetime.mightPointFrom)) |Set#Empty|))))) (and (and (=> (|_module.Lifetime.unused#canCall| $Heap@24 call5formal@this@0@@1) (or (_module.Lifetime.unused $Heap@24 call5formal@this@0@@1) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0@@1) _module.Lifetime.elements)) |Set#Empty|))) (or (not (= call5formal@this@0@@1 call5formal@this@0)) (not true))) (and (=> (|_module.Universe.outlives#canCall| $Heap@24 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) call5formal@this@0) (or (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) call5formal@this@0) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0) _module.Lifetime.mightPointTo)) ($Box refType (_module.OwnedObject.lifetime call4formal@this@0))) (exists ((|x#0@@10| T@U) ) (!  (and (and ($Is refType |x#0@@10| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |x#0@@10|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@24 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) |x#0@@10| call5formal@this@0))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |822|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@24 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) |x#0@@10| call5formal@this@0))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |x#0@@10|)))
))))) (=> (|_module.Universe.outlives#canCall| $Heap@24 |universe#0| call5formal@this@0 call5formal@this@0@@1) (or (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| call5formal@this@0 call5formal@this@0@@1) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0@@1) _module.Lifetime.mightPointTo)) ($Box refType call5formal@this@0)) (exists ((|x#1| T@U) ) (!  (and (and ($Is refType |x#1| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |x#1|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@24 |universe#0| call5formal@this@0 |x#1| call5formal@this@0@@1))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |824|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@24 |universe#0| call5formal@this@0 |x#1| call5formal@this@0@@1))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |x#1|)))
)))))))) (and (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (and ($Is refType |call6formal@guard#0@0| Tclass._module.MutexGuardU32) ($IsAlloc refType |call6formal@guard#0@0| Tclass._module.MutexGuardU32 $Heap@25))) (and (and (|_module.Universe.globalInv#canCall| $Heap@25 |universe#0|) (=> (_module.Universe.globalInv $Heap@25 |universe#0|) (|_module.Universe.legalTransitionsSequenceAnyThread#canCall| $Heap@24 $Heap@25 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@25 |universe#0|) (and (_module.Universe.globalInv $Heap@25 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@25 |universe#0|) (forall ((|o#3@@8| T@U) ) (!  (=> (and ($Is refType |o#3@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@8|))) (_module.Object.inv $Heap@25 |o#3@@8|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |829|
 :pattern ( (_module.Object.inv $Heap@25 |o#3@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@8|)))
))))))))) (and (and (and (and (and (|_module.Universe.legalTransitionsSequenceAnyThread#canCall| $Heap@24 $Heap@25 |universe#0|) (and (_module.Universe.legalTransitionsSequenceAnyThread $Heap@24 $Heap@25 |universe#0|) (_module.Universe.legalTransitionsSequence $Heap@24 $Heap@25 |universe#0| (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content))))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content)) ($Box refType |call6formal@guard#0@0|))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |call6formal@guard#0@0|) _module.OwnedObject.owner)) |running#0@@3|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |call6formal@guard#0@0|) _module.MutexGuardU32.mutex)) call4formal@this@0)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) _module.Lifetime.mightPointFrom)) |Set#Empty|)))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime |call6formal@guard#0@0|)) _module.Lifetime.elements)) (|Set#UnionOne| |Set#Empty| ($Box refType |call6formal@guard#0@0|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.mightPointFrom)))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.elements))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.owner))))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 call5formal@this@0) _module.Lifetime.mightPointFrom)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime |call6formal@guard#0@0|)))))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 call5formal@this@0) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 call5formal@this@0) _module.Lifetime.elements))) (|_module.Lifetime.alive#canCall| $Heap@25 call5formal@this@0))))) (and (and (and (and (|_module.Lifetime.alive#canCall| $Heap@25 call5formal@this@0) (and (_module.Lifetime.alive $Heap@25 call5formal@this@0) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 call5formal@this@0) _module.Lifetime.owner)) null)) (not true)))) (and (|_module.Lifetime.alive#canCall| $Heap@25 call5formal@this@0@@1) (not (_module.Lifetime.alive $Heap@25 call5formal@this@0@@1)))) (and (and (forall (($o@@171 T@U) ) (!  (=> (and (or (not (= $o@@171 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@171) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@171) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@171)) (or (= $o@@171 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType $o@@171)))))
 :qid |_12MutexLifetimelongdfy.955:8|
 :skolemid |844|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@171))
)) ($HeapSucc $Heap@24 $Heap@25)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@24)))) (and (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |universe#0|) _module.Universe.content))) (forall ((|l#1@@8| T@U) ) (!  (=> (and ($Is refType |l#1@@8| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@8|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#1@@8|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |l#1@@8|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#1@@8|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |l#1@@8|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |l#1@@8|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#1@@8|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 |l#1@@8|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |l#1@@8|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@8|)))
))) (and ($IsGoodHeap $Heap@26) ($IsHeapAnchor $Heap@26))) (and (and (forall ((|a#1@@15| T@U) (|b#1@@15| T@U) ) (!  (=> (and ($Is refType |a#1@@15| Tclass._module.Lifetime) ($Is refType |b#1@@15| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@15|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@15|))) (and (|_module.Universe.outlives#canCall| $Heap@24 |universe#0| |a#1@@15| |b#1@@15|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@15| |b#1@@15|) (|_module.Universe.outlives#canCall| $Heap@25 |universe#0| |a#1@@15| |b#1@@15|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@25 |universe#0| |a#1@@15| |b#1@@15|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@15| |b#1@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@15|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@15|)))
)) (forall ((|a#1@@16| T@U) (|b#1@@16| T@U) ) (!  (=> (and (and ($Is refType |a#1@@16| Tclass._module.Lifetime) ($Is refType |b#1@@16| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@16|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@16|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@16| |b#1@@16|) (_module.Universe.outlives ($LS $LZ) $Heap@25 |universe#0| |a#1@@16| |b#1@@16|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@25 |universe#0| |a#1@@16| |b#1@@16|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@24 |universe#0| |a#1@@16| |b#1@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@16|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@16|)))
))) (and (= $Heap@25 $Heap@26) (or (not (= |universe#0| null)) (not true))))))))) (and (=> (= (ControlFlow 0 26) 25) anon26_Then_correct) (=> (= (ControlFlow 0 26) 22) anon26_Else_correct))))))))))
(let ((anon25_Else_correct  (=> (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|))))) (= (ControlFlow 0 29) 26)) anon8_correct)))
(let ((anon25_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|)))) ($IsAllocBox ($Box refType |l#2@0|) Tclass._module.Lifetime? $Heap@19)) (and (|_module.Lifetime.alive#canCall| $Heap@19 |l#2@0|) (= (ControlFlow 0 28) 26))) anon8_correct)))
(let ((anon24_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|))) (and (=> (= (ControlFlow 0 31) 28) anon25_Then_correct) (=> (= (ControlFlow 0 31) 29) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#2@0|)) ($IsAlloc refType call5formal@this@0 Tclass._module.Lifetime $Heap@16)) (and (=> (= (ControlFlow 0 30) 28) anon25_Then_correct) (=> (= (ControlFlow 0 30) 29) anon25_Else_correct)))))
(let ((anon23_Then_correct  (=> (and ($Is refType |l#2@0| Tclass._module.Lifetime) ($IsAlloc refType |l#2@0| Tclass._module.Lifetime $Heap@19)) (and (=> (= (ControlFlow 0 32) 30) anon24_Then_correct) (=> (= (ControlFlow 0 32) 31) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (and ($Is refType |l#2@0| Tclass._module.Lifetime) ($IsAlloc refType |l#2@0| Tclass._module.Lifetime $Heap@19))) (= (ControlFlow 0 27) 26)) anon8_correct)))
(let ((anon3_correct  (=> (and (= |running##9@0| (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content))))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16)) (=> (and (and ($IsAlloc SetType (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)))) (TSet Tclass._module.Thread) $Heap@16) ($IsAlloc SetType |running##9@0| (TSet Tclass._module.Thread) $Heap@16)) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#0@@31| T@U) ) (!  (=> (and ($Is refType |o#0@@31| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@31|))) (and (and (and (= (_module.Object.universe |o#0@@31|) |universe#0|) (or (not (= |o#0@@31| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@16 |o#0@@31|)) (_module.Object.triggerAxioms $Heap@16 |o#0@@31|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1316|
 :pattern ( (_module.Object.triggerAxioms $Heap@16 |o#0@@31|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@16 |o#0@@31|))
 :pattern ( (_module.Object.universe |o#0@@31|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@31|)))
)))))))))) (=> (and (and (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@18 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@18 |universe#0|) (forall ((|o#1@@18| T@U) ) (!  (=> (and ($Is refType |o#1@@18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@18|))) (and (and (and (= (_module.Object.universe |o#1@@18|) |universe#0|) (or (not (= |o#1@@18| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@18 |o#1@@18|)) (_module.Object.triggerAxioms $Heap@18 |o#1@@18|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1318|
 :pattern ( (_module.Object.triggerAxioms $Heap@18 |o#1@@18|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@18 |o#1@@18|))
 :pattern ( (_module.Object.universe |o#1@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@18|)))
))))))))) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content))))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@16 $Heap@18 |universe#0|) (forall ((|o#2@@3| T@U) ) (!  (=> (and ($Is refType |o#2@@3| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|)))) (not ($IsAllocBox ($Box refType |o#2@@3|) Tclass._module.Object $Heap@16)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1320|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@3|)))
)))))))) (and (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (|Set#Subset| |running##9@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content))))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (forall ((|o#3@@9| T@U) ) (!  (=> (and ($Is refType |o#3@@9| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@9|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@9|)))) (or (forall (($o@@172 T@U) ($f@@107 T@U) ) (!  (=> (or (not (= $o@@172 null)) (not true)) (=> (= $o@@172 |o#3@@9|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@172) $f@@107) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@172) $f@@107))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1322|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@172) $f@@107))
)) (_module.Object.sequenceInv2 $Heap@16 $Heap@18 |o#3@@9|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1323|
 :pattern ( (_module.Object.sequenceInv2 $Heap@16 $Heap@18 |o#3@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@9|)))
))))) (and (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (forall ((|o#4@@8| T@U) ) (!  (=> (and ($Is refType |o#4@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@8|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| |running##9@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@16)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#4@@8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1324|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |o#4@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#4@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@8|)))
)))) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@16 $Heap@18 |universe#0| |running##9@0|) (or (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@18 |universe#0| |running##9@0|) (forall ((|l#0@@18| T@U) ) (!  (=> (and ($Is refType |l#0@@18| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@18|))) (=> (and (not (|Set#IsMember| |running##9@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#0@@18|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#0@@18|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@16)) (_module.Lifetime.unchangedNonvolatileFields $Heap@16 $Heap@18 |l#0@@18|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1325|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@16 $Heap@18 |l#0@@18|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#0@@18|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@18|)))
))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (|_module.Universe.globalSequenceInv2#canCall| $Heap@16 $Heap@18 |universe#0|)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@16 $Heap@18 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@16 $Heap@18 |universe#0|) (forall ((|o#5@@3| T@U) ) (!  (=> (and ($Is refType |o#5@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|)) (_module.Object.sequenceInv2 $Heap@16 $Heap@18 |o#5@@3|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |1331|
 :pattern ( (_module.Object.sequenceInv2 $Heap@16 $Heap@18 |o#5@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@3|)))
))))) (and (and (and (= $Heap@18 $Heap@19) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@19)) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16) (|_module.Universe.globalSequenceInv2#canCall| $Heap@16 $Heap@19 |universe#0|))) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@16 $Heap@19 |universe#0|) (_module.Universe.globalSequenceInv2 $Heap@16 $Heap@19 |universe#0|)) (and (U_2_bool (Lit boolType (bool_2_U true))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 call5formal@this@0) _module.Lifetime.mightPointFrom))))))) (and (=> (= (ControlFlow 0 33) 32) anon23_Then_correct) (=> (= (ControlFlow 0 33) 27) anon23_Else_correct))))))))
(let ((anon22_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |t#0@0|))) (= (ControlFlow 0 36) 33)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |t#0@0|)) (= (ControlFlow 0 35) 33)) anon3_correct)))
(let ((anon21_Then_correct  (=> (and (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@18)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16))) (and (=> (= (ControlFlow 0 37) 35) anon22_Then_correct) (=> (= (ControlFlow 0 37) 36) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and ($Is refType |t#0@0| Tclass._module.Thread) ($IsAlloc refType |t#0@0| Tclass._module.Thread $Heap@18))) (= (ControlFlow 0 34) 33)) anon3_correct)))
(let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@133) ($IsHeapAnchor $Heap@@133)) (=> (and (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@133)) (and ($Is refType |running#0@@3| Tclass._module.Thread) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@@133))) (and (and ($Is refType |scope#0| Tclass._module.Lifetime) ($IsAlloc refType |scope#0| Tclass._module.Lifetime $Heap@@133)) (and (=> |defass#data#0| (and ($Is refType |data#0| Tclass._module.OwnedU32) ($IsAlloc refType |data#0| Tclass._module.OwnedU32 $Heap@@133))) true))) (=> (and (and (and (and (=> |defass#mutex#0| (and ($Is refType |mutex#0| Tclass._module.Mutex) ($IsAlloc refType |mutex#0| Tclass._module.Mutex $Heap@@133))) true) (and (=> |defass#mutexScope#0| (and ($Is refType |mutexScope#0| Tclass._module.Lifetime) ($IsAlloc refType |mutexScope#0| Tclass._module.Lifetime $Heap@@133))) true)) (and (and (=> |defass#callScope1#0| (and ($Is refType |callScope1#0| Tclass._module.Lifetime) ($IsAlloc refType |callScope1#0| Tclass._module.Lifetime $Heap@@133))) true) (and (=> |defass#callScope2#0| (and ($Is refType |callScope2#0| Tclass._module.Lifetime) ($IsAlloc refType |callScope2#0| Tclass._module.Lifetime $Heap@@133))) true))) (and (and (and (=> |defass#guard#0| (and ($Is refType |guard#0| Tclass._module.MutexGuardU32) ($IsAlloc refType |guard#0| Tclass._module.MutexGuardU32 $Heap@@133))) true) (= 26 $FunctionContextHeight)) (and (and (|_module.Universe.globalInv#canCall| $Heap@@133 |universe#0|) (and (_module.Universe.globalInv $Heap@@133 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@133 |universe#0|) (forall ((|o#11@@3| T@U) ) (!  (=> (and ($Is refType |o#11@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@3|))) (_module.Object.inv $Heap@@133 |o#11@@3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1085|
 :pattern ( (_module.Object.inv $Heap@@133 |o#11@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@3|)))
))))) (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType |scope#0|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |scope#0|) _module.Lifetime.owner)) |running#0@@3|))))) (=> (and (and (and (and (and (|_module.Lifetime.unused#canCall| $Heap@@133 |scope#0|) (and (_module.Lifetime.unused $Heap@@133 |scope#0|) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |scope#0|) _module.Lifetime.mightPointFrom)) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |scope#0|) _module.Lifetime.elements)) |Set#Empty|)))) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@133 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)))) (forall (($o@@173 T@U) ($f@@108 T@U) ) (!  (=> (and (and (or (not (= $o@@173 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 $o@@173) alloc)))) (or (= $o@@173 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType $o@@173)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@173 $f@@108)))
 :qid |_12MutexLifetimelongdfy.1211:26|
 :skolemid |1107|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@@133 |universe#0|) (or (_module.Universe.globalInv $Heap@@133 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@133 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@133 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@@133 |universe#0|) (or (_module.Universe.globalInv $Heap@@133 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@133 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@@133 |universe#0|) (forall ((|o#0@@32| T@U) ) (!  (=> (and ($Is refType |o#0@@32| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@32|))) (and (and (and (= (_module.Object.universe |o#0@@32|) |universe#0|) (or (not (= |o#0@@32| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@@133 |o#0@@32|)) (_module.Object.triggerAxioms $Heap@@133 |o#0@@32|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@@133 |o#0@@32|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@133 |o#0@@32|))
 :pattern ( (_module.Object.universe |o#0@@32|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@32|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@@133 |universe#0|) (or (_module.Universe.globalInv $Heap@@133 |universe#0|) (forall ((|o#1@@19| T@U) ) (!  (=> (and ($Is refType |o#1@@19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@19|))) (_module.Object.inv $Heap@@133 |o#1@@19|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@@133 |o#1@@19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@19|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (and (_module.Universe.globalInv $Heap@0 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#3@@10| T@U) ) (!  (=> (and ($Is refType |o#3@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@10|))) (_module.Object.inv $Heap@0 |o#3@@10|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@0 |o#3@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@10|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@@133 $Heap@0 |universe#0|)))) (and (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@@133 $Heap@0 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@@133 $Heap@0 |universe#0|) (forall ((|o#4@@9| T@U) ) (!  (=> (and ($Is refType |o#4@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@9|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@9|)) (_module.Object.sequenceInv2 $Heap@@133 $Heap@0 |o#4@@9|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@133 $Heap@0 |o#4@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@9|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@133 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@@133 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@@133 $Heap@0 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@@133 $Heap@0 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@7| T@U) ) (!  (=> (and ($Is refType |o#8@@7| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|)))) (or (forall (($o@@174 T@U) ($f@@109 T@U) ) (!  (=> (or (not (= $o@@174 null)) (not true)) (=> (= $o@@174 |o#8@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@174) $f@@109) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 $o@@174) $f@@109))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@174) $f@@109))
)) (_module.Object.sequenceInv2 $Heap@@133 $Heap@0 |o#8@@7|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@@133 $Heap@0 |o#8@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@7|)))
))) (forall ((|o#9@@4| T@U) ) (!  (=> (and ($Is refType |o#9@@4| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@4|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@@133)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#9@@4|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#9@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |o#9@@4|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@4|)))
))) (forall ((|l#0@@19| T@U) ) (!  (=> (and ($Is refType |l#0@@19| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@19|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |l#0@@19|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |l#0@@19|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@@133)) (_module.Lifetime.unchangedNonvolatileFields $Heap@@133 $Heap@0 |l#0@@19|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@@133 $Heap@0 |l#0@@19|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |l#0@@19|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@19|)))
)))))) (and (and (forall ((|a#1@@17| T@U) (|b#1@@17| T@U) ) (!  (=> (and ($Is refType |a#1@@17| Tclass._module.Lifetime) ($Is refType |b#1@@17| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@17|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@17|))) (and (|_module.Universe.outlives#canCall| $Heap@@133 |universe#0| |a#1@@17| |b#1@@17|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@@133 |universe#0| |a#1@@17| |b#1@@17|) (|_module.Universe.outlives#canCall| $Heap@0 |universe#0| |a#1@@17| |b#1@@17|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@17| |b#1@@17|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@@133 |universe#0| |a#1@@17| |b#1@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@17|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@17|)))
)) (forall ((|a#1@@18| T@U) (|b#1@@18| T@U) ) (!  (=> (and (and ($Is refType |a#1@@18| Tclass._module.Lifetime) ($Is refType |b#1@@18| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@18|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@18|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@@133 |universe#0| |a#1@@18| |b#1@@18|) (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@18| |b#1@@18|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@18| |b#1@@18|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@@133 |universe#0| |a#1@@18| |b#1@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@18|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@18|)))
))) (and (forall (($o@@175 T@U) ) (!  (=> (and (or (not (= $o@@175 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 $o@@175) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@175) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 $o@@175)) (or (= $o@@175 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@133 |universe#0|) _module.Universe.content)) ($Box refType $o@@175)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@175))
)) ($HeapSucc $Heap@@133 $Heap@0))))) (=> (and (and (and (and (and (and (= |value##0@0| (LitInt 0)) (forall (($o@@176 T@U) ($f@@110 T@U) ) (!  (=> (and (and (or (not (= $o@@176 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@176) alloc)))) (= $o@@176 |universe#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@176 $f@@110)))
 :qid |_12MutexLifetimelongdfy.1214:15|
 :skolemid |1108|
))) (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this Tclass._module.OwnedU32) ($IsAlloc refType call4formal@this Tclass._module.OwnedU32 $Heap@@133)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#0@@33| T@U) ) (!  (=> (and ($Is refType |o#0@@33| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@33|))) (and (and (and (= (_module.Object.universe |o#0@@33|) |universe#0|) (or (not (= |o#0@@33| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#0@@33|)) (_module.Object.triggerAxioms $Heap@0 |o#0@@33|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |2905|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#0@@33|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#0@@33|))
 :pattern ( (_module.Object.universe |o#0@@33|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@33|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (forall ((|o#1@@20| T@U) ) (!  (=> (and ($Is refType |o#1@@20| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@20|))) (_module.Object.inv $Heap@0 |o#1@@20|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |2907|
 :pattern ( (_module.Object.inv $Heap@0 |o#1@@20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@20|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|))))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call4formal@this@0@@0 null)) (not true)) (and ($Is refType call4formal@this@0@@0 Tclass._module.OwnedU32) ($IsAlloc refType call4formal@this@0@@0 Tclass._module.OwnedU32 $Heap@1)))) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@1 call4formal@this@0@@0) (=> (_module.Object.objectGlobalInv $Heap@1 call4formal@this@0@@0) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@1 call4formal@this@0@@0) (and (_module.Object.objectGlobalInv $Heap@1 call4formal@this@0@@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe call4formal@this@0@@0)) _module.Universe.content)) ($Box refType call4formal@this@0@@0)) (_module.Universe.globalInv $Heap@1 (_module.Object.universe call4formal@this@0@@0)))))))) (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@1 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@1 |universe#0|) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)))) (forall ((|o#7@@2| T@U) ) (!  (=> (and ($Is refType |o#7@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)))) (or (forall (($o@@177 T@U) ($f@@111 T@U) ) (!  (=> (or (not (= $o@@177 null)) (not true)) (=> (= $o@@177 |o#7@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@177) $f@@111) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@177) $f@@111))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |2923|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@177) $f@@111))
)) (_module.Object.sequenceInv2 $Heap@0 $Heap@1 |o#7@@2|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |2924|
 :pattern ( (_module.Object.sequenceInv2 $Heap@0 $Heap@1 |o#7@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@2|)))
))) (forall ((|o#8@@8| T@U) ) (!  (=> (and ($Is refType |o#8@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#8@@8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |2925|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |o#8@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#8@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@8|)))
))) (forall ((|l#0@@20| T@U) ) (!  (=> (and ($Is refType |l#0@@20| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@20|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@20|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@20|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@0)) (_module.Lifetime.unchangedNonvolatileFields $Heap@0 $Heap@1 |l#0@@20|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |2926|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@0 $Heap@1 |l#0@@20|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@20|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@20|)))
))))) (and (= (_module.Object.universe call4formal@this@0@@0) |universe#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call4formal@this@0@@0) _module.OwnedObject.owner)) |running#0@@3|))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call4formal@this@0@@0) _module.OwnedU32.value))) |value##0@0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.owner)) |running#0@@3|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0@@0)) ($Box refType (_module.OwnedObject.lifetime call4formal@this@0@@0))))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.mightPointFrom)) |Set#Empty|)))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.elements)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0@@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call4formal@this@0@@0) alloc))))) (and (forall (($o@@178 T@U) ) (!  (=> (and (or (not (= $o@@178 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@178) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@178) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@178)) (= $o@@178 |universe#0|)))
 :qid |_12MutexLifetimelongdfy.653:3|
 :skolemid |2927|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@178))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content))) (forall ((|l#1@@9| T@U) ) (!  (=> (and ($Is refType |l#1@@9| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@9|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@9|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |l#1@@9|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@9|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |l#1@@9|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |l#1@@9|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@9|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |l#1@@9|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#1@@9|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@9|)))
))))))) (and (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall ((|a#1@@19| T@U) (|b#1@@19| T@U) ) (!  (=> (and ($Is refType |a#1@@19| Tclass._module.Lifetime) ($Is refType |b#1@@19| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@19|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@19|))) (and (|_module.Universe.outlives#canCall| $Heap@0 |universe#0| |a#1@@19| |b#1@@19|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@19| |b#1@@19|) (|_module.Universe.outlives#canCall| $Heap@1 |universe#0| |a#1@@19| |b#1@@19|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@1 |universe#0| |a#1@@19| |b#1@@19|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@19| |b#1@@19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@19|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@19|)))
)) (forall ((|a#1@@20| T@U) (|b#1@@20| T@U) ) (!  (=> (and (and ($Is refType |a#1@@20| Tclass._module.Lifetime) ($Is refType |b#1@@20| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@20|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@20|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@20| |b#1@@20|) (_module.Universe.outlives ($LS $LZ) $Heap@1 |universe#0| |a#1@@20| |b#1@@20|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@1 |universe#0| |a#1@@20| |b#1@@20|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@0 |universe#0| |a#1@@20| |b#1@@20|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@20|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@20|)))
)))) (and (and (= $Heap@1 $Heap@2) (or (not (= |universe#0| null)) (not true))) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@0)))) (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@0) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#0@@34| T@U) ) (!  (=> (and ($Is refType |o#0@@34| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@34|))) (and (and (and (= (_module.Object.universe |o#0@@34|) |universe#0|) (or (not (= |o#0@@34| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#0@@34|)) (_module.Object.triggerAxioms $Heap@0 |o#0@@34|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#0@@34|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#0@@34|))
 :pattern ( (_module.Object.universe |o#0@@34|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@34|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@2 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#1@@21| T@U) ) (!  (=> (and ($Is refType |o#1@@21| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@21|))) (and (and (and (= (_module.Object.universe |o#1@@21|) |universe#0|) (or (not (= |o#1@@21| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@2 |o#1@@21|)) (_module.Object.triggerAxioms $Heap@2 |o#1@@21|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@2 |o#1@@21|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@2 |o#1@@21|))
 :pattern ( (_module.Object.universe |o#1@@21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@21|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@0 $Heap@2 |universe#0|) (forall ((|o#2@@4| T@U) ) (!  (=> (and ($Is refType |o#2@@4| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|)))) (not ($IsAllocBox ($Box refType |o#2@@4|) Tclass._module.Object $Heap@0)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@4|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content))))))))))) (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@11| T@U) ) (!  (=> (and ($Is refType |o#3@@11| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@11|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@11|)))) (or (forall (($o@@179 T@U) ($f@@112 T@U) ) (!  (=> (or (not (= $o@@179 null)) (not true)) (=> (= $o@@179 |o#3@@11|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@179) $f@@112) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@179) $f@@112))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@179) $f@@112))
)) (_module.Object.sequenceInv2 $Heap@0 $Heap@2 |o#3@@11|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@0 $Heap@2 |o#3@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@11|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@10| T@U) ) (!  (=> (and ($Is refType |o#4@@10| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@10|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@10|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |o#4@@10|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |o#4@@10|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@10|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@0 $Heap@2 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@21| T@U) ) (!  (=> (and ($Is refType |l#0@@21| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@21|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@21|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@21|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@0)) (_module.Lifetime.unchangedNonvolatileFields $Heap@0 $Heap@2 |l#0@@21|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@0 $Heap@2 |l#0@@21|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |l#0@@21|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@21|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@0 |universe#0|) (forall ((|o#5@@4| T@U) ) (!  (=> (and ($Is refType |o#5@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@4|))) (and (and (and (= (_module.Object.universe |o#5@@4|) |universe#0|) (or (not (= |o#5@@4| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@0 |o#5@@4|)) (_module.Object.triggerAxioms $Heap@0 |o#5@@4|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@0 |o#5@@4|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@0 |o#5@@4|))
 :pattern ( (_module.Object.universe |o#5@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@4|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (or (_module.Universe.globalInv $Heap@0 |universe#0|) (forall ((|o#6@@2| T@U) ) (!  (=> (and ($Is refType |o#6@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@2|))) (_module.Object.inv $Heap@0 |o#6@@2|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@0 |o#6@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@2|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (forall ((|o#7@@3| T@U) ) (!  (=> (and ($Is refType |o#7@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@3|))) (and (or (forall (($o@@180 T@U) ($f@@113 T@U) ) (!  (=> (or (not (= $o@@180 null)) (not true)) (=> (= $o@@180 |o#7@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@180) $f@@113) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@180) $f@@113))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@180) $f@@113))
)) (_module.Object.inv $Heap@2 |o#7@@3|)) (or (forall (($o@@181 T@U) ($f@@114 T@U) ) (!  (=> (or (not (= $o@@181 null)) (not true)) (=> (= $o@@181 |o#7@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@181) $f@@114) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@181) $f@@114))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@181) $f@@114))
)) (_module.Object.inv2 $Heap@0 $Heap@2 |o#7@@3|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@0 $Heap@2 |o#7@@3|))
 :pattern ( (_module.Object.inv $Heap@2 |o#7@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@3|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@0 $Heap@2 |universe#0| |running#0@@3|) (forall ((|o#8@@9| T@U) ) (!  (=> (and ($Is refType |o#8@@9| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|))))) (_module.Object.inv $Heap@2 |o#8@@9|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@2 |o#8@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@9|)))
))))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (=> (_module.Universe.globalInv $Heap@2 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@0 $Heap@2 |universe#0|)))) (and (and (|_module.Universe.globalInv#canCall| $Heap@2 |universe#0|) (and (_module.Universe.globalInv $Heap@2 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@2 |universe#0|) (forall ((|o#10@@2| T@U) ) (!  (=> (and ($Is refType |o#10@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@2|))) (_module.Object.inv $Heap@2 |o#10@@2|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@2 |o#10@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@2|)))
))))) (and (|_module.Universe.globalInv2#canCall| $Heap@0 $Heap@2 |universe#0|) (and (_module.Universe.globalInv2 $Heap@0 $Heap@2 |universe#0|) (forall ((|o#11@@4| T@U) ) (!  (=> (and ($Is refType |o#11@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|)) (_module.Object.inv2 $Heap@0 $Heap@2 |o#11@@4|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@0 $Heap@2 |o#11@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@4|)))
))))))))) (=> (and (and (and (and (and (and (and (= $Heap@2 $Heap@3) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@3)) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@0) (|_module.Universe.globalSequenceInv2#canCall| $Heap@0 $Heap@3 |universe#0|))) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@0 $Heap@3 |universe#0|) (_module.Universe.globalSequenceInv2 $Heap@0 $Heap@3 |universe#0|)) (and (U_2_bool (Lit boolType (bool_2_U true))) (forall (($o@@182 T@U) ($f@@115 T@U) ) (!  (=> (and (and (or (not (= $o@@182 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@182) alloc)))) (or (= $o@@182 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType $o@@182)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@182 $f@@115)))
 :qid |_12MutexLifetimelongdfy.1220:26|
 :skolemid |1113|
))))) (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@3 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@3 |universe#0|) (forall ((|o#0@@35| T@U) ) (!  (=> (and ($Is refType |o#0@@35| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@35|))) (and (and (and (= (_module.Object.universe |o#0@@35|) |universe#0|) (or (not (= |o#0@@35| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@3 |o#0@@35|)) (_module.Object.triggerAxioms $Heap@3 |o#0@@35|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@3 |o#0@@35|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@3 |o#0@@35|))
 :pattern ( (_module.Object.universe |o#0@@35|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@35|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@3 |universe#0|) (or (_module.Universe.globalInv $Heap@3 |universe#0|) (forall ((|o#1@@22| T@U) ) (!  (=> (and ($Is refType |o#1@@22| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@22|))) (_module.Object.inv $Heap@3 |o#1@@22|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@3 |o#1@@22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@22|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|)))) (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (and (_module.Universe.globalInv $Heap@4 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#3@@12| T@U) ) (!  (=> (and ($Is refType |o#3@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@12|))) (_module.Object.inv $Heap@4 |o#3@@12|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@4 |o#3@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@12|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@3 $Heap@4 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@3 $Heap@4 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@3 $Heap@4 |universe#0|) (forall ((|o#4@@11| T@U) ) (!  (=> (and ($Is refType |o#4@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@11|)) (_module.Object.sequenceInv2 $Heap@3 $Heap@4 |o#4@@11|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@3 $Heap@4 |o#4@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@11|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|))))) (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@3 $Heap@4 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@3 $Heap@4 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@3 $Heap@4 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@10| T@U) ) (!  (=> (and ($Is refType |o#8@@10| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|)))) (or (forall (($o@@183 T@U) ($f@@116 T@U) ) (!  (=> (or (not (= $o@@183 null)) (not true)) (=> (= $o@@183 |o#8@@10|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@183) $f@@116) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@183) $f@@116))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@183) $f@@116))
)) (_module.Object.sequenceInv2 $Heap@3 $Heap@4 |o#8@@10|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@3 $Heap@4 |o#8@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@10|)))
))) (forall ((|o#9@@5| T@U) ) (!  (=> (and ($Is refType |o#9@@5| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@5|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@3)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#9@@5|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#9@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |o#9@@5|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@5|)))
))) (forall ((|l#0@@22| T@U) ) (!  (=> (and ($Is refType |l#0@@22| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@22|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |l#0@@22|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |l#0@@22|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@3)) (_module.Lifetime.unchangedNonvolatileFields $Heap@3 $Heap@4 |l#0@@22|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@3 $Heap@4 |l#0@@22|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |l#0@@22|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@22|)))
))))) (forall ((|a#1@@21| T@U) (|b#1@@21| T@U) ) (!  (=> (and ($Is refType |a#1@@21| Tclass._module.Lifetime) ($Is refType |b#1@@21| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@21|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@21|))) (and (|_module.Universe.outlives#canCall| $Heap@3 |universe#0| |a#1@@21| |b#1@@21|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@3 |universe#0| |a#1@@21| |b#1@@21|) (|_module.Universe.outlives#canCall| $Heap@4 |universe#0| |a#1@@21| |b#1@@21|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@21| |b#1@@21|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@3 |universe#0| |a#1@@21| |b#1@@21|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@21|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@21|)))
))) (and (and (forall ((|a#1@@22| T@U) (|b#1@@22| T@U) ) (!  (=> (and (and ($Is refType |a#1@@22| Tclass._module.Lifetime) ($Is refType |b#1@@22| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@22|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@22|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@3 |universe#0| |a#1@@22| |b#1@@22|) (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@22| |b#1@@22|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@22| |b#1@@22|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@3 |universe#0| |a#1@@22| |b#1@@22|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@22|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@22|)))
)) (forall (($o@@184 T@U) ) (!  (=> (and (or (not (= $o@@184 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@184) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@184) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@184)) (or (= $o@@184 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |universe#0|) _module.Universe.content)) ($Box refType $o@@184)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@184))
))) (and ($HeapSucc $Heap@3 $Heap@4) (forall (($o@@185 T@U) ($f@@117 T@U) ) (!  (=> (and (and (or (not (= $o@@185 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@185) alloc)))) (or (or (= $o@@185 |universe#0|) (= $o@@185 call4formal@this@0@@0)) (and (= $o@@185 (_module.OwnedObject.lifetime call4formal@this@0@@0)) (= $f@@117 _module.Lifetime.elements)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@185 $f@@117)))
 :qid |_12MutexLifetimelongdfy.1223:16|
 :skolemid |1114|
))))))) (and (and (and (and (and (or (not (= call4formal@this@@0 null)) (not true)) (and ($Is refType call4formal@this@@0 Tclass._module.Mutex) ($IsAlloc refType call4formal@this@@0 Tclass._module.Mutex $Heap@@133))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#0@@36| T@U) ) (!  (=> (and ($Is refType |o#0@@36| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@36|))) (and (and (and (= (_module.Object.universe |o#0@@36|) |universe#0|) (or (not (= |o#0@@36| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#0@@36|)) (_module.Object.triggerAxioms $Heap@4 |o#0@@36|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |3464|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#0@@36|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#0@@36|))
 :pattern ( (_module.Object.universe |o#0@@36|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@36|)))
)))))))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (forall ((|o#1@@23| T@U) ) (!  (=> (and ($Is refType |o#1@@23| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@23|))) (_module.Object.inv $Heap@4 |o#1@@23|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |3466|
 :pattern ( (_module.Object.inv $Heap@4 |o#1@@23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@23|)))
)))) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType call4formal@this@0@@0)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call4formal@this@0@@0) _module.OwnedObject.owner)) |running#0@@3|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.owner)) |running#0@@3|)))) (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 Tclass._module.Mutex) ($IsAlloc refType call4formal@this@0 Tclass._module.Mutex $Heap@5)))) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@5 call4formal@this@0) (=> (_module.Object.objectGlobalInv $Heap@5 call4formal@this@0) (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@5 |universe#0| |running#0@@3|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@5 call4formal@this@0) (and (_module.Object.objectGlobalInv $Heap@5 call4formal@this@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe call4formal@this@0)) _module.Universe.content)) ($Box refType call4formal@this@0)) (_module.Universe.globalInv $Heap@5 (_module.Object.universe call4formal@this@0)))))))) (and (and (and (and (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@5 |universe#0| |running#0@@3|) (and (_module.Universe.legalTransition $Heap@4 $Heap@5 |universe#0| |running#0@@3|) (and (and (and (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@5 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (_module.Universe.globalInv $Heap@4 |universe#0|)) (forall ((|o#11@@5| T@U) ) (!  (=> (and ($Is refType |o#11@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@5|))) (and (or (forall (($o@@186 T@U) ($f@@118 T@U) ) (!  (=> (or (not (= $o@@186 null)) (not true)) (=> (= $o@@186 |o#11@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@186) $f@@118) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@186) $f@@118))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |3494|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@186) $f@@118))
)) (_module.Object.inv $Heap@5 |o#11@@5|)) (or (forall (($o@@187 T@U) ($f@@119 T@U) ) (!  (=> (or (not (= $o@@187 null)) (not true)) (=> (= $o@@187 |o#11@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@187) $f@@119) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@187) $f@@119))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |3495|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@187) $f@@119))
)) (_module.Object.inv2 $Heap@4 $Heap@5 |o#11@@5|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |3496|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@5 |o#11@@5|))
 :pattern ( (_module.Object.inv $Heap@5 |o#11@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@5|)))
))) (forall ((|o#12@@0| T@U) ) (!  (=> (and ($Is refType |o#12@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|))))) (_module.Object.inv $Heap@5 |o#12@@0|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |3497|
 :pattern ( (_module.Object.inv $Heap@5 |o#12@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@0|)))
))))) (= (_module.Object.universe call4formal@this@0) |universe#0|)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call4formal@this@0) _module.OwnedObject.owner)) |running#0@@3|) (= (_module.OwnedObject.lifetime call4formal@this@0) (_module.OwnedObject.lifetime call4formal@this@0@@0)))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call4formal@this@0) _module.Mutex.data)) call4formal@this@0@@0) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call4formal@this@0) _module.Mutex.locked))))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0)))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.elements)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 (_module.OwnedObject.lifetime call4formal@this@0@@0)) _module.Lifetime.elements)) (|Set#UnionOne| |Set#Empty| ($Box refType call4formal@this@0))))))))) (and (and (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call4formal@this@0) alloc)))) (forall (($o@@188 T@U) ) (!  (=> (and (or (not (= $o@@188 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@188) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@188) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@188)) (or (or (= $o@@188 |universe#0|) (= $o@@188 call4formal@this@0@@0)) (= $o@@188 (_module.OwnedObject.lifetime call4formal@this@0@@0)))))
 :qid |_12MutexLifetimelongdfy.811:3|
 :skolemid |3498|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@188))
))) (and (forall (($o@@189 T@U) ($f@@120 T@U) ) (!  (=> (and (or (not (= $o@@189 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@189) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@189) $f@@120) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@189) $f@@120)) (or (or (= $o@@189 |universe#0|) (= $o@@189 call4formal@this@0@@0)) (and (= $o@@189 (_module.OwnedObject.lifetime call4formal@this@0@@0)) (= $f@@120 _module.Lifetime.elements)))))
 :qid |_12MutexLifetimelongdfy.811:3|
 :skolemid |3499|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@189) $f@@120))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@4)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content))) (forall ((|l#1@@10| T@U) ) (!  (=> (and ($Is refType |l#1@@10| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@10|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#1@@10|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |l#1@@10|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#1@@10|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |l#1@@10|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |l#1@@10|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#1@@10|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |l#1@@10|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#1@@10|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@10|)))
))))) (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall ((|a#1@@23| T@U) (|b#1@@23| T@U) ) (!  (=> (and ($Is refType |a#1@@23| Tclass._module.Lifetime) ($Is refType |b#1@@23| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@23|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@23|))) (and (|_module.Universe.outlives#canCall| $Heap@4 |universe#0| |a#1@@23| |b#1@@23|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@23| |b#1@@23|) (|_module.Universe.outlives#canCall| $Heap@5 |universe#0| |a#1@@23| |b#1@@23|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@5 |universe#0| |a#1@@23| |b#1@@23|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@23| |b#1@@23|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@23|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@23|)))
)) (forall ((|a#1@@24| T@U) (|b#1@@24| T@U) ) (!  (=> (and (and ($Is refType |a#1@@24| Tclass._module.Lifetime) ($Is refType |b#1@@24| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@24|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@24|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@24| |b#1@@24|) (_module.Universe.outlives ($LS $LZ) $Heap@5 |universe#0| |a#1@@24| |b#1@@24|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@5 |universe#0| |a#1@@24| |b#1@@24|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@4 |universe#0| |a#1@@24| |b#1@@24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@24|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@24|)))
)))) (and (and (= $Heap@5 $Heap@6) (or (not (= |universe#0| null)) (not true))) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@4) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@4))))) (and (and (and (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@4) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#0@@37| T@U) ) (!  (=> (and ($Is refType |o#0@@37| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@37|))) (and (and (and (= (_module.Object.universe |o#0@@37|) |universe#0|) (or (not (= |o#0@@37| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#0@@37|)) (_module.Object.triggerAxioms $Heap@4 |o#0@@37|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#0@@37|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#0@@37|))
 :pattern ( (_module.Object.universe |o#0@@37|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@37|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@6 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@6 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@6 |universe#0|) (forall ((|o#1@@24| T@U) ) (!  (=> (and ($Is refType |o#1@@24| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@24|))) (and (and (and (= (_module.Object.universe |o#1@@24|) |universe#0|) (or (not (= |o#1@@24| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@6 |o#1@@24|)) (_module.Object.triggerAxioms $Heap@6 |o#1@@24|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@6 |o#1@@24|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@6 |o#1@@24|))
 :pattern ( (_module.Object.universe |o#1@@24|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@24|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@4 $Heap@6 |universe#0|) (forall ((|o#2@@5| T@U) ) (!  (=> (and ($Is refType |o#2@@5| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|)))) (not ($IsAllocBox ($Box refType |o#2@@5|) Tclass._module.Object $Heap@4)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@13| T@U) ) (!  (=> (and ($Is refType |o#3@@13| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@13|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@13|)))) (or (forall (($o@@190 T@U) ($f@@121 T@U) ) (!  (=> (or (not (= $o@@190 null)) (not true)) (=> (= $o@@190 |o#3@@13|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@190) $f@@121) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@190) $f@@121))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@190) $f@@121))
)) (_module.Object.sequenceInv2 $Heap@4 $Heap@6 |o#3@@13|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@4 $Heap@6 |o#3@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@13|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@12| T@U) ) (!  (=> (and ($Is refType |o#4@@12| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@12|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@4)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#4@@12|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |o#4@@12|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |o#4@@12|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@12|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@4 $Heap@6 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@23| T@U) ) (!  (=> (and ($Is refType |l#0@@23| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@23|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@@23|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@@23|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@4)) (_module.Lifetime.unchangedNonvolatileFields $Heap@4 $Heap@6 |l#0@@23|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@4 $Heap@6 |l#0@@23|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@@23|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@23|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#5@@5| T@U) ) (!  (=> (and ($Is refType |o#5@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@5|))) (and (and (and (= (_module.Object.universe |o#5@@5|) |universe#0|) (or (not (= |o#5@@5| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@4 |o#5@@5|)) (_module.Object.triggerAxioms $Heap@4 |o#5@@5|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@4 |o#5@@5|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@4 |o#5@@5|))
 :pattern ( (_module.Object.universe |o#5@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@5|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalInv $Heap@4 |universe#0|) (forall ((|o#6@@3| T@U) ) (!  (=> (and ($Is refType |o#6@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@3|))) (_module.Object.inv $Heap@4 |o#6@@3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@4 |o#6@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@3|)))
))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (forall ((|o#7@@4| T@U) ) (!  (=> (and ($Is refType |o#7@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@4|))) (and (or (forall (($o@@191 T@U) ($f@@122 T@U) ) (!  (=> (or (not (= $o@@191 null)) (not true)) (=> (= $o@@191 |o#7@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@191) $f@@122) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@191) $f@@122))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@191) $f@@122))
)) (_module.Object.inv $Heap@6 |o#7@@4|)) (or (forall (($o@@192 T@U) ($f@@123 T@U) ) (!  (=> (or (not (= $o@@192 null)) (not true)) (=> (= $o@@192 |o#7@@4|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@192) $f@@123) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@192) $f@@123))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@192) $f@@123))
)) (_module.Object.inv2 $Heap@4 $Heap@6 |o#7@@4|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@6 |o#7@@4|))
 :pattern ( (_module.Object.inv $Heap@6 |o#7@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@4|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@4 $Heap@6 |universe#0| |running#0@@3|) (forall ((|o#8@@11| T@U) ) (!  (=> (and ($Is refType |o#8@@11| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|))))) (_module.Object.inv $Heap@6 |o#8@@11|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@6 |o#8@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@11|)))
))))))))) (and (and (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (|_module.Universe.globalInv#canCall| $Heap@6 |universe#0|) (=> (_module.Universe.globalInv $Heap@6 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@6 |universe#0|)))) (and (and (|_module.Universe.globalInv#canCall| $Heap@6 |universe#0|) (and (_module.Universe.globalInv $Heap@6 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@6 |universe#0|) (forall ((|o#10@@3| T@U) ) (!  (=> (and ($Is refType |o#10@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@3|))) (_module.Object.inv $Heap@6 |o#10@@3|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@6 |o#10@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@3|)))
))))) (and (|_module.Universe.globalInv2#canCall| $Heap@4 $Heap@6 |universe#0|) (and (_module.Universe.globalInv2 $Heap@4 $Heap@6 |universe#0|) (forall ((|o#11@@6| T@U) ) (!  (=> (and ($Is refType |o#11@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|)) (_module.Object.inv2 $Heap@4 $Heap@6 |o#11@@6|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@4 $Heap@6 |o#11@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@6|)))
)))))) (and (and (and (= $Heap@6 $Heap@7) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@7)) (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@4) (|_module.Universe.globalSequenceInv2#canCall| $Heap@4 $Heap@7 |universe#0|))) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@4 $Heap@7 |universe#0|) (_module.Universe.globalSequenceInv2 $Heap@4 $Heap@7 |universe#0|)) (and (U_2_bool (Lit boolType (bool_2_U true))) (forall (($o@@193 T@U) ($f@@124 T@U) ) (!  (=> (and (and (or (not (= $o@@193 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@193) alloc)))) (or (= $o@@193 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType $o@@193)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@193 $f@@124)))
 :qid |_12MutexLifetimelongdfy.1229:26|
 :skolemid |1119|
)))))) (and (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@7 |universe#0|) (or (_module.Universe.globalInv $Heap@7 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@7 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@7 |universe#0|) (or (_module.Universe.globalInv $Heap@7 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@7 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@7 |universe#0|) (forall ((|o#0@@38| T@U) ) (!  (=> (and ($Is refType |o#0@@38| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@38|))) (and (and (and (= (_module.Object.universe |o#0@@38|) |universe#0|) (or (not (= |o#0@@38| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@7 |o#0@@38|)) (_module.Object.triggerAxioms $Heap@7 |o#0@@38|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@7 |o#0@@38|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@7 |o#0@@38|))
 :pattern ( (_module.Object.universe |o#0@@38|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@38|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@7 |universe#0|) (or (_module.Universe.globalInv $Heap@7 |universe#0|) (forall ((|o#1@@25| T@U) ) (!  (=> (and ($Is refType |o#1@@25| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@25|))) (_module.Object.inv $Heap@7 |o#1@@25|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@7 |o#1@@25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@25|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (and (_module.Universe.globalInv $Heap@8 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (forall ((|o#3@@14| T@U) ) (!  (=> (and ($Is refType |o#3@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@14|))) (_module.Object.inv $Heap@8 |o#3@@14|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@8 |o#3@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@14|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@7 $Heap@8 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@7 $Heap@8 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@7 $Heap@8 |universe#0|) (forall ((|o#4@@13| T@U) ) (!  (=> (and ($Is refType |o#4@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@13|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@13|)) (_module.Object.sequenceInv2 $Heap@7 $Heap@8 |o#4@@13|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@7 $Heap@8 |o#4@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@13|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@7 $Heap@8 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|))))))))) (=> (and (and (and (and (and (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@7 $Heap@8 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@7 $Heap@8 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@7 $Heap@8 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@12| T@U) ) (!  (=> (and ($Is refType |o#8@@12| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@12|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@12|)))) (or (forall (($o@@194 T@U) ($f@@125 T@U) ) (!  (=> (or (not (= $o@@194 null)) (not true)) (=> (= $o@@194 |o#8@@12|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@194) $f@@125) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@194) $f@@125))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@194) $f@@125))
)) (_module.Object.sequenceInv2 $Heap@7 $Heap@8 |o#8@@12|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@7 $Heap@8 |o#8@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@12|)))
))) (forall ((|o#9@@6| T@U) ) (!  (=> (and ($Is refType |o#9@@6| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@6|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@7)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#9@@6|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#9@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |o#9@@6|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@6|)))
))) (forall ((|l#0@@24| T@U) ) (!  (=> (and ($Is refType |l#0@@24| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@24|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |l#0@@24|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |l#0@@24|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@7)) (_module.Lifetime.unchangedNonvolatileFields $Heap@7 $Heap@8 |l#0@@24|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@7 $Heap@8 |l#0@@24|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |l#0@@24|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@24|)))
))))) (forall ((|a#1@@25| T@U) (|b#1@@25| T@U) ) (!  (=> (and ($Is refType |a#1@@25| Tclass._module.Lifetime) ($Is refType |b#1@@25| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@25|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@25|))) (and (|_module.Universe.outlives#canCall| $Heap@7 |universe#0| |a#1@@25| |b#1@@25|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@7 |universe#0| |a#1@@25| |b#1@@25|) (|_module.Universe.outlives#canCall| $Heap@8 |universe#0| |a#1@@25| |b#1@@25|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@25| |b#1@@25|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@7 |universe#0| |a#1@@25| |b#1@@25|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@25|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@25|)))
))) (and (forall ((|a#1@@26| T@U) (|b#1@@26| T@U) ) (!  (=> (and (and ($Is refType |a#1@@26| Tclass._module.Lifetime) ($Is refType |b#1@@26| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@26|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@26|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@7 |universe#0| |a#1@@26| |b#1@@26|) (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@26| |b#1@@26|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@26| |b#1@@26|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@7 |universe#0| |a#1@@26| |b#1@@26|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@26|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@26|)))
)) (forall (($o@@195 T@U) ) (!  (=> (and (or (not (= $o@@195 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@195) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@195) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@195)) (or (= $o@@195 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |universe#0|) _module.Universe.content)) ($Box refType $o@@195)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@195))
)))) (and (and (and ($HeapSucc $Heap@7 $Heap@8) (or (not (= call4formal@this@0 null)) (not true))) (and (= |mightPointTo##0@0| (|Set#UnionOne| |Set#Empty| ($Box refType (_module.OwnedObject.lifetime call4formal@this@0)))) (forall (($o@@196 T@U) ($f@@126 T@U) ) (!  (=> (and (and (or (not (= $o@@196 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@196) alloc)))) (or (= $o@@196 |universe#0|) (and (|Set#IsMember| |mightPointTo##0@0| ($Box refType $o@@196)) (= $f@@126 _module.Lifetime.mightPointFrom)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@196 $f@@126)))
 :qid |_12MutexLifetimelongdfy.1234:21|
 :skolemid |1120|
)))) (and (and (or (not (= call5formal@this@@0 null)) (not true)) (and ($Is refType call5formal@this@@0 Tclass._module.Lifetime) ($IsAlloc refType call5formal@this@@0 Tclass._module.Lifetime $Heap@@133))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (forall ((|o#0@@39| T@U) ) (!  (=> (and ($Is refType |o#0@@39| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@39|))) (and (and (and (= (_module.Object.universe |o#0@@39|) |universe#0|) (or (not (= |o#0@@39| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@8 |o#0@@39|)) (_module.Object.triggerAxioms $Heap@8 |o#0@@39|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |2625|
 :pattern ( (_module.Object.triggerAxioms $Heap@8 |o#0@@39|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@8 |o#0@@39|))
 :pattern ( (_module.Object.universe |o#0@@39|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@39|)))
)))))))))) (and (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (forall ((|o#1@@26| T@U) ) (!  (=> (and ($Is refType |o#1@@26| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@26|))) (_module.Object.inv $Heap@8 |o#1@@26|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |2627|
 :pattern ( (_module.Object.inv $Heap@8 |o#1@@26|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@26|)))
)))) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)))) (and (|Set#Subset| |mightPointTo##0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content))) (forall ((|l#1@@11| T@U) ) (!  (=> (and ($Is refType |l#1@@11| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##0@0| ($Box refType |l#1@@11|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@11|) _module.Lifetime.owner)) |running#0@@3|))
 :qid |_12MutexLifetimelongdfy.612:21|
 :skolemid |2629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@11|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| |mightPointTo##0@0| ($Box refType |l#1@@11|)))
)))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (or (not (= call5formal@this@0 null)) (not true)) (and ($Is refType call5formal@this@0 Tclass._module.Lifetime) ($IsAlloc refType call5formal@this@0 Tclass._module.Lifetime $Heap@9))))) (and (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@9 call5formal@this@0) (=> (_module.Object.objectGlobalInv $Heap@9 call5formal@this@0) (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@9 |universe#0| |running#0@@3|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@9 call5formal@this@0) (and (_module.Object.objectGlobalInv $Heap@9 call5formal@this@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 (_module.Object.universe call5formal@this@0)) _module.Universe.content)) ($Box refType call5formal@this@0)) (_module.Universe.globalInv $Heap@9 (_module.Object.universe call5formal@this@0)))))) (and (and (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@9 |universe#0| |running#0@@3|) (and (_module.Universe.legalTransition $Heap@8 $Heap@9 |universe#0| |running#0@@3|) (and (and (and (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@9 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (_module.Universe.globalInv $Heap@8 |universe#0|)) (forall ((|o#11@@7| T@U) ) (!  (=> (and ($Is refType |o#11@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@7|))) (and (or (forall (($o@@197 T@U) ($f@@127 T@U) ) (!  (=> (or (not (= $o@@197 null)) (not true)) (=> (= $o@@197 |o#11@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@197) $f@@127) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@197) $f@@127))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2656|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@197) $f@@127))
)) (_module.Object.inv $Heap@9 |o#11@@7|)) (or (forall (($o@@198 T@U) ($f@@128 T@U) ) (!  (=> (or (not (= $o@@198 null)) (not true)) (=> (= $o@@198 |o#11@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@198) $f@@128) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@198) $f@@128))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2657|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@198) $f@@128))
)) (_module.Object.inv2 $Heap@8 $Heap@9 |o#11@@7|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |2658|
 :pattern ( (_module.Object.inv2 $Heap@8 $Heap@9 |o#11@@7|))
 :pattern ( (_module.Object.inv $Heap@9 |o#11@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@7|)))
))) (forall ((|o#12@@1| T@U) ) (!  (=> (and ($Is refType |o#12@@1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|))))) (_module.Object.inv $Heap@9 |o#12@@1|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |2659|
 :pattern ( (_module.Object.inv $Heap@9 |o#12@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@1|)))
))))) (= (_module.Object.universe call5formal@this@0) |universe#0|))))) (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call5formal@this@0) _module.Lifetime.elements)) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call5formal@this@0) _module.Lifetime.mightPointTo)) |mightPointTo##0@0|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call5formal@this@0) _module.Lifetime.mightPointFrom)) |Set#Empty|))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0)))) (forall ((|l#3@@4| T@U) ) (!  (=> (and ($Is refType |l#3@@4| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##0@0| ($Box refType |l#3@@4|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#3@@4|) _module.Lifetime.mightPointFrom)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#3@@4|) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0)))))
 :qid |_12MutexLifetimelongdfy.618:20|
 :skolemid |2660|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#3@@4|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#3@@4|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| |mightPointTo##0@0| ($Box refType |l#3@@4|)))
))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call5formal@this@0) alloc)))) (forall (($o@@199 T@U) ) (!  (=> (and (or (not (= $o@@199 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@199) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@199) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@199)) (or (= $o@@199 |universe#0|) (|Set#IsMember| |mightPointTo##0@0| ($Box refType $o@@199)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2661|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@199))
))))) (and (and (and (forall (($o@@200 T@U) ($f@@129 T@U) ) (!  (=> (and (or (not (= $o@@200 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@200) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@200) $f@@129) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@200) $f@@129)) (or (= $o@@200 |universe#0|) (and (|Set#IsMember| |mightPointTo##0@0| ($Box refType $o@@200)) (= $f@@129 _module.Lifetime.mightPointFrom)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@200) $f@@129))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@8))) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |universe#0|) _module.Universe.content))) (forall ((|l#1@@12| T@U) ) (!  (=> (and ($Is refType |l#1@@12| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@12|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@12|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#1@@12|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@12|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#1@@12|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#1@@12|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@12|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |l#1@@12|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#1@@12|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@12|)))
))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))))) (and (and (and (and (forall ((|a#1@@27| T@U) (|b#1@@27| T@U) ) (!  (=> (and ($Is refType |a#1@@27| Tclass._module.Lifetime) ($Is refType |b#1@@27| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@27|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@27|))) (and (|_module.Universe.outlives#canCall| $Heap@8 |universe#0| |a#1@@27| |b#1@@27|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@27| |b#1@@27|) (|_module.Universe.outlives#canCall| $Heap@9 |universe#0| |a#1@@27| |b#1@@27|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@9 |universe#0| |a#1@@27| |b#1@@27|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@27| |b#1@@27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@27|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@27|)))
)) (forall ((|a#1@@28| T@U) (|b#1@@28| T@U) ) (!  (=> (and (and ($Is refType |a#1@@28| Tclass._module.Lifetime) ($Is refType |b#1@@28| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@28|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@28|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@28| |b#1@@28|) (_module.Universe.outlives ($LS $LZ) $Heap@9 |universe#0| |a#1@@28| |b#1@@28|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@9 |universe#0| |a#1@@28| |b#1@@28|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@8 |universe#0| |a#1@@28| |b#1@@28|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@28|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@28|)))
))) (and (= $Heap@9 $Heap@10) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@8) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@8)) (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@8) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (forall ((|o#0@@40| T@U) ) (!  (=> (and ($Is refType |o#0@@40| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@40|))) (and (and (and (= (_module.Object.universe |o#0@@40|) |universe#0|) (or (not (= |o#0@@40| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@8 |o#0@@40|)) (_module.Object.triggerAxioms $Heap@8 |o#0@@40|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@8 |o#0@@40|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@8 |o#0@@40|))
 :pattern ( (_module.Object.universe |o#0@@40|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@40|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@10 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@10 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@10 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@10 |universe#0|) (forall ((|o#1@@27| T@U) ) (!  (=> (and ($Is refType |o#1@@27| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@27|))) (and (and (and (= (_module.Object.universe |o#1@@27|) |universe#0|) (or (not (= |o#1@@27| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@10 |o#1@@27|)) (_module.Object.triggerAxioms $Heap@10 |o#1@@27|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@10 |o#1@@27|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@10 |o#1@@27|))
 :pattern ( (_module.Object.universe |o#1@@27|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@27|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@8 $Heap@10 |universe#0|) (forall ((|o#2@@6| T@U) ) (!  (=> (and ($Is refType |o#2@@6| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|)))) (not ($IsAllocBox ($Box refType |o#2@@6|) Tclass._module.Object $Heap@8)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@6|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@15| T@U) ) (!  (=> (and ($Is refType |o#3@@15| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@15|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@15|)))) (or (forall (($o@@201 T@U) ($f@@130 T@U) ) (!  (=> (or (not (= $o@@201 null)) (not true)) (=> (= $o@@201 |o#3@@15|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@201) $f@@130) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@201) $f@@130))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@201) $f@@130))
)) (_module.Object.sequenceInv2 $Heap@8 $Heap@10 |o#3@@15|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@8 $Heap@10 |o#3@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@15|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@14| T@U) ) (!  (=> (and ($Is refType |o#4@@14| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@14|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@8)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |o#4@@14|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |o#4@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |o#4@@14|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@14|)))
)))))))))))) (and (and (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@8 $Heap@10 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@25| T@U) ) (!  (=> (and ($Is refType |l#0@@25| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@25|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#0@@25|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#0@@25|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@8)) (_module.Lifetime.unchangedNonvolatileFields $Heap@8 $Heap@10 |l#0@@25|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@8 $Heap@10 |l#0@@25|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |l#0@@25|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@25|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@8 |universe#0|) (forall ((|o#5@@6| T@U) ) (!  (=> (and ($Is refType |o#5@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@6|))) (and (and (and (= (_module.Object.universe |o#5@@6|) |universe#0|) (or (not (= |o#5@@6| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@8 |o#5@@6|)) (_module.Object.triggerAxioms $Heap@8 |o#5@@6|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@8 |o#5@@6|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@8 |o#5@@6|))
 :pattern ( (_module.Object.universe |o#5@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@6|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@8 |universe#0|) (or (_module.Universe.globalInv $Heap@8 |universe#0|) (forall ((|o#6@@4| T@U) ) (!  (=> (and ($Is refType |o#6@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@4|))) (_module.Object.inv $Heap@8 |o#6@@4|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@8 |o#6@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@4|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (forall ((|o#7@@5| T@U) ) (!  (=> (and ($Is refType |o#7@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@5|))) (and (or (forall (($o@@202 T@U) ($f@@131 T@U) ) (!  (=> (or (not (= $o@@202 null)) (not true)) (=> (= $o@@202 |o#7@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@202) $f@@131) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@202) $f@@131))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@202) $f@@131))
)) (_module.Object.inv $Heap@10 |o#7@@5|)) (or (forall (($o@@203 T@U) ($f@@132 T@U) ) (!  (=> (or (not (= $o@@203 null)) (not true)) (=> (= $o@@203 |o#7@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@203) $f@@132) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@203) $f@@132))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@203) $f@@132))
)) (_module.Object.inv2 $Heap@8 $Heap@10 |o#7@@5|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@8 $Heap@10 |o#7@@5|))
 :pattern ( (_module.Object.inv $Heap@10 |o#7@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@5|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@8 $Heap@10 |universe#0| |running#0@@3|) (forall ((|o#8@@13| T@U) ) (!  (=> (and ($Is refType |o#8@@13| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@13|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@13|))))) (_module.Object.inv $Heap@10 |o#8@@13|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@10 |o#8@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@13|)))
))))) (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@10 |universe#0|) (=> (_module.Universe.globalInv $Heap@10 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@8 $Heap@10 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@10 |universe#0|) (and (_module.Universe.globalInv $Heap@10 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@10 |universe#0|) (forall ((|o#10@@4| T@U) ) (!  (=> (and ($Is refType |o#10@@4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@4|))) (_module.Object.inv $Heap@10 |o#10@@4|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@10 |o#10@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@4|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| $Heap@8 $Heap@10 |universe#0|) (and (_module.Universe.globalInv2 $Heap@8 $Heap@10 |universe#0|) (forall ((|o#11@@8| T@U) ) (!  (=> (and ($Is refType |o#11@@8| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@8|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@8|)) (_module.Object.inv2 $Heap@8 $Heap@10 |o#11@@8|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@8 $Heap@10 |o#11@@8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@8|)))
)))) (= $Heap@10 $Heap@11)))) (and (and (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@11) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@8)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@8 $Heap@11 |universe#0|) (|_module.Universe.globalSequenceInv2#canCall| $Heap@8 $Heap@11 |universe#0|))) (and (and (_module.Universe.globalSequenceInv2 $Heap@8 $Heap@11 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call5formal@this@0) _module.Lifetime.mightPointFrom)) |Set#Empty|) (forall (($o@@204 T@U) ($f@@133 T@U) ) (!  (=> (and (and (or (not (= $o@@204 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@204) alloc)))) (or (= $o@@204 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType $o@@204)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@204 $f@@133)))
 :qid |_12MutexLifetimelongdfy.1241:26|
 :skolemid |1125|
))))) (and (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalInv $Heap@11 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalInv $Heap@11 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@11 |universe#0|) (forall ((|o#0@@41| T@U) ) (!  (=> (and ($Is refType |o#0@@41| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@41|))) (and (and (and (= (_module.Object.universe |o#0@@41|) |universe#0|) (or (not (= |o#0@@41| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@11 |o#0@@41|)) (_module.Object.triggerAxioms $Heap@11 |o#0@@41|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@11 |o#0@@41|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@11 |o#0@@41|))
 :pattern ( (_module.Object.universe |o#0@@41|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@41|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@11 |universe#0|) (or (_module.Universe.globalInv $Heap@11 |universe#0|) (forall ((|o#1@@28| T@U) ) (!  (=> (and ($Is refType |o#1@@28| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@28|))) (_module.Object.inv $Heap@11 |o#1@@28|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@11 |o#1@@28|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@28|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))) (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|))))) (and (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (and (_module.Universe.globalInv $Heap@12 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#3@@16| T@U) ) (!  (=> (and ($Is refType |o#3@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@16|))) (_module.Object.inv $Heap@12 |o#3@@16|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@12 |o#3@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@16|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@11 $Heap@12 |universe#0|)) (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@11 $Heap@12 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@11 $Heap@12 |universe#0|) (forall ((|o#4@@15| T@U) ) (!  (=> (and ($Is refType |o#4@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@15|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@15|)) (_module.Object.sequenceInv2 $Heap@11 $Heap@12 |o#4@@15|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@11 $Heap@12 |o#4@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@15|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@11 $Heap@12 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|))))) (and (and (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@11 $Heap@12 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@11 $Heap@12 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@11 $Heap@12 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@14| T@U) ) (!  (=> (and ($Is refType |o#8@@14| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@14|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@14|)))) (or (forall (($o@@205 T@U) ($f@@134 T@U) ) (!  (=> (or (not (= $o@@205 null)) (not true)) (=> (= $o@@205 |o#8@@14|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@205) $f@@134) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@205) $f@@134))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@205) $f@@134))
)) (_module.Object.sequenceInv2 $Heap@11 $Heap@12 |o#8@@14|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@11 $Heap@12 |o#8@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@14|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@14|)))
))) (forall ((|o#9@@7| T@U) ) (!  (=> (and ($Is refType |o#9@@7| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@7|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@11)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#9@@7|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#9@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |o#9@@7|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@7|)))
))) (forall ((|l#0@@26| T@U) ) (!  (=> (and ($Is refType |l#0@@26| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@26|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |l#0@@26|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |l#0@@26|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@11)) (_module.Lifetime.unchangedNonvolatileFields $Heap@11 $Heap@12 |l#0@@26|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@11 $Heap@12 |l#0@@26|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |l#0@@26|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@26|)))
))))) (and (forall ((|a#1@@29| T@U) (|b#1@@29| T@U) ) (!  (=> (and ($Is refType |a#1@@29| Tclass._module.Lifetime) ($Is refType |b#1@@29| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@29|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@29|))) (and (|_module.Universe.outlives#canCall| $Heap@11 |universe#0| |a#1@@29| |b#1@@29|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@11 |universe#0| |a#1@@29| |b#1@@29|) (|_module.Universe.outlives#canCall| $Heap@12 |universe#0| |a#1@@29| |b#1@@29|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@29| |b#1@@29|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@11 |universe#0| |a#1@@29| |b#1@@29|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@29|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@29|)))
)) (forall ((|a#1@@30| T@U) (|b#1@@30| T@U) ) (!  (=> (and (and ($Is refType |a#1@@30| Tclass._module.Lifetime) ($Is refType |b#1@@30| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@30|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@30|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@11 |universe#0| |a#1@@30| |b#1@@30|) (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@30| |b#1@@30|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@30| |b#1@@30|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@11 |universe#0| |a#1@@30| |b#1@@30|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@30|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@30|)))
)))) (and (and (forall (($o@@206 T@U) ) (!  (=> (and (or (not (= $o@@206 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@206) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@206) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@206)) (or (= $o@@206 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |universe#0|) _module.Universe.content)) ($Box refType $o@@206)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@206))
)) ($HeapSucc $Heap@11 $Heap@12)) (and (= |mightPointTo##1@0| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0))) (forall (($o@@207 T@U) ($f@@135 T@U) ) (!  (=> (and (and (or (not (= $o@@207 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@207) alloc)))) (or (= $o@@207 |universe#0|) (and (|Set#IsMember| |mightPointTo##1@0| ($Box refType $o@@207)) (= $f@@135 _module.Lifetime.mightPointFrom)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@207 $f@@135)))
 :qid |_12MutexLifetimelongdfy.1244:21|
 :skolemid |1126|
)))))) (and (and (and (and (or (not (= call5formal@this@@1 null)) (not true)) (and ($Is refType call5formal@this@@1 Tclass._module.Lifetime) ($IsAlloc refType call5formal@this@@1 Tclass._module.Lifetime $Heap@@133))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#0@@42| T@U) ) (!  (=> (and ($Is refType |o#0@@42| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@42|))) (and (and (and (= (_module.Object.universe |o#0@@42|) |universe#0|) (or (not (= |o#0@@42| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@12 |o#0@@42|)) (_module.Object.triggerAxioms $Heap@12 |o#0@@42|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |2625|
 :pattern ( (_module.Object.triggerAxioms $Heap@12 |o#0@@42|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@12 |o#0@@42|))
 :pattern ( (_module.Object.universe |o#0@@42|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@42|)))
)))))))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (forall ((|o#1@@29| T@U) ) (!  (=> (and ($Is refType |o#1@@29| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@29|))) (_module.Object.inv $Heap@12 |o#1@@29|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |2627|
 :pattern ( (_module.Object.inv $Heap@12 |o#1@@29|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@29|)))
)))) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)))) (and (|Set#Subset| |mightPointTo##1@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content))) (forall ((|l#1@@13| T@U) ) (!  (=> (and ($Is refType |l#1@@13| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##1@0| ($Box refType |l#1@@13|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@13|) _module.Lifetime.owner)) |running#0@@3|))
 :qid |_12MutexLifetimelongdfy.612:21|
 :skolemid |2629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@13|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| |mightPointTo##1@0| ($Box refType |l#1@@13|)))
))))) (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (and (or (not (= call5formal@this@0@@0 null)) (not true)) (and ($Is refType call5formal@this@0@@0 Tclass._module.Lifetime) ($IsAlloc refType call5formal@this@0@@0 Tclass._module.Lifetime $Heap@13)))) (and (and (|_module.Object.objectGlobalInv#canCall| $Heap@13 call5formal@this@0@@0) (=> (_module.Object.objectGlobalInv $Heap@13 call5formal@this@0@@0) (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@13 |universe#0| |running#0@@3|))) (and (|_module.Object.objectGlobalInv#canCall| $Heap@13 call5formal@this@0@@0) (and (_module.Object.objectGlobalInv $Heap@13 call5formal@this@0@@0) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 (_module.Object.universe call5formal@this@0@@0)) _module.Universe.content)) ($Box refType call5formal@this@0@@0)) (_module.Universe.globalInv $Heap@13 (_module.Object.universe call5formal@this@0@@0))))))))))) (and (and (and (and (and (and (and (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@13 |universe#0| |running#0@@3|) (and (_module.Universe.legalTransition $Heap@12 $Heap@13 |universe#0| |running#0@@3|) (and (and (and (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@13 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (_module.Universe.globalInv $Heap@12 |universe#0|)) (forall ((|o#11@@9| T@U) ) (!  (=> (and ($Is refType |o#11@@9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@9|))) (and (or (forall (($o@@208 T@U) ($f@@136 T@U) ) (!  (=> (or (not (= $o@@208 null)) (not true)) (=> (= $o@@208 |o#11@@9|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@208) $f@@136) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@208) $f@@136))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2656|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@208) $f@@136))
)) (_module.Object.inv $Heap@13 |o#11@@9|)) (or (forall (($o@@209 T@U) ($f@@137 T@U) ) (!  (=> (or (not (= $o@@209 null)) (not true)) (=> (= $o@@209 |o#11@@9|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@209) $f@@137) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@209) $f@@137))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |2657|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@209) $f@@137))
)) (_module.Object.inv2 $Heap@12 $Heap@13 |o#11@@9|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |2658|
 :pattern ( (_module.Object.inv2 $Heap@12 $Heap@13 |o#11@@9|))
 :pattern ( (_module.Object.inv $Heap@13 |o#11@@9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@9|)))
))) (forall ((|o#12@@2| T@U) ) (!  (=> (and ($Is refType |o#12@@2| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|))))) (_module.Object.inv $Heap@13 |o#12@@2|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |2659|
 :pattern ( (_module.Object.inv $Heap@13 |o#12@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) ($Box refType |o#12@@2|)))
))))) (= (_module.Object.universe call5formal@this@0@@0) |universe#0|)) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 call5formal@this@0@@0) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 call5formal@this@0@@0) _module.Lifetime.elements)) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 call5formal@this@0@@0) _module.Lifetime.mightPointTo)) |mightPointTo##1@0|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 call5formal@this@0@@0) _module.Lifetime.mightPointFrom)) |Set#Empty|)))) (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)))) (forall ((|l#3@@5| T@U) ) (!  (=> (and ($Is refType |l#3@@5| Tclass._module.Lifetime) (|Set#IsMember| |mightPointTo##1@0| ($Box refType |l#3@@5|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#3@@5|) _module.Lifetime.mightPointFrom)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#3@@5|) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0)))))
 :qid |_12MutexLifetimelongdfy.618:20|
 :skolemid |2660|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#3@@5|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#3@@5|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| |mightPointTo##1@0| ($Box refType |l#3@@5|)))
))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 call5formal@this@0@@0) alloc)))) (forall (($o@@210 T@U) ) (!  (=> (and (or (not (= $o@@210 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@210) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@210) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@210)) (or (= $o@@210 |universe#0|) (|Set#IsMember| |mightPointTo##1@0| ($Box refType $o@@210)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2661|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@210))
)))) (and (and (forall (($o@@211 T@U) ($f@@138 T@U) ) (!  (=> (and (or (not (= $o@@211 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@211) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@211) $f@@138) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@211) $f@@138)) (or (= $o@@211 |universe#0|) (and (|Set#IsMember| |mightPointTo##1@0| ($Box refType $o@@211)) (= $f@@138 _module.Lifetime.mightPointFrom)))))
 :qid |_12MutexLifetimelongdfy.610:3|
 :skolemid |2662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@211) $f@@138))
)) ($HeapSucc $Heap@12 $Heap@13)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@12))))) (and (and (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |universe#0|) _module.Universe.content))) (forall ((|l#1@@14| T@U) ) (!  (=> (and ($Is refType |l#1@@14| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@14|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@14|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#1@@14|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@14|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#1@@14|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#1@@14|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@14|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 |l#1@@14|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#1@@14|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@14|)))
))) (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14))) (and (and (forall ((|a#1@@31| T@U) (|b#1@@31| T@U) ) (!  (=> (and ($Is refType |a#1@@31| Tclass._module.Lifetime) ($Is refType |b#1@@31| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@31|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@31|))) (and (|_module.Universe.outlives#canCall| $Heap@12 |universe#0| |a#1@@31| |b#1@@31|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@31| |b#1@@31|) (|_module.Universe.outlives#canCall| $Heap@13 |universe#0| |a#1@@31| |b#1@@31|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@13 |universe#0| |a#1@@31| |b#1@@31|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@31| |b#1@@31|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@31|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@31|)))
)) (forall ((|a#1@@32| T@U) (|b#1@@32| T@U) ) (!  (=> (and (and ($Is refType |a#1@@32| Tclass._module.Lifetime) ($Is refType |b#1@@32| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@32|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@32|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@32| |b#1@@32|) (_module.Universe.outlives ($LS $LZ) $Heap@13 |universe#0| |a#1@@32| |b#1@@32|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@13 |universe#0| |a#1@@32| |b#1@@32|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@12 |universe#0| |a#1@@32| |b#1@@32|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@32|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@32|)))
))) (and (= $Heap@13 $Heap@14) (or (not (= |universe#0| null)) (not true))))) (and (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@12) ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@12)) (and ($IsAlloc refType |running#0@@3| Tclass._module.Thread $Heap@12) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#0@@43| T@U) ) (!  (=> (and ($Is refType |o#0@@43| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@43|))) (and (and (and (= (_module.Object.universe |o#0@@43|) |universe#0|) (or (not (= |o#0@@43| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@12 |o#0@@43|)) (_module.Object.triggerAxioms $Heap@12 |o#0@@43|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1350|
 :pattern ( (_module.Object.triggerAxioms $Heap@12 |o#0@@43|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@12 |o#0@@43|))
 :pattern ( (_module.Object.universe |o#0@@43|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@43|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@14 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@14 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@14 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@14 |universe#0|) (forall ((|o#1@@30| T@U) ) (!  (=> (and ($Is refType |o#1@@30| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@30|))) (and (and (and (= (_module.Object.universe |o#1@@30|) |universe#0|) (or (not (= |o#1@@30| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@14 |o#1@@30|)) (_module.Object.triggerAxioms $Heap@14 |o#1@@30|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1352|
 :pattern ( (_module.Object.triggerAxioms $Heap@14 |o#1@@30|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@14 |o#1@@30|))
 :pattern ( (_module.Object.universe |o#1@@30|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@30|)))
)))))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)))))))))))))) (and (and (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (=> (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0|) (or (_module.Universe.baseLegalTransitionsSequence $Heap@12 $Heap@14 |universe#0|) (forall ((|o#2@@7| T@U) ) (!  (=> (and ($Is refType |o#2@@7| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|)))) (not ($IsAllocBox ($Box refType |o#2@@7|) Tclass._module.Object $Heap@12)))
 :qid |_12MutexLifetimelongdfy.45:16|
 :skolemid |1354|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@7|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#3@@17| T@U) ) (!  (=> (and ($Is refType |o#3@@17| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@17|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@17|)))) (or (forall (($o@@212 T@U) ($f@@139 T@U) ) (!  (=> (or (not (= $o@@212 null)) (not true)) (=> (= $o@@212 |o#3@@17|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@212) $f@@139) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@212) $f@@139))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@212) $f@@139))
)) (_module.Object.sequenceInv2 $Heap@12 $Heap@14 |o#3@@17|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |1357|
 :pattern ( (_module.Object.sequenceInv2 $Heap@12 $Heap@14 |o#3@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@17|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|o#4@@16| T@U) ) (!  (=> (and ($Is refType |o#4@@16| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@16|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@12)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |o#4@@16|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |1358|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |o#4@@16|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |o#4@@16|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@16|)))
)))))))) (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.legalTransitionsSequence#canCall| $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (or (_module.Universe.legalTransitionsSequence $Heap@12 $Heap@14 |universe#0| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|))) (forall ((|l#0@@27| T@U) ) (!  (=> (and ($Is refType |l#0@@27| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@27|))) (=> (and (not (|Set#IsMember| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#0@@27|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#0@@27|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@12)) (_module.Lifetime.unchangedNonvolatileFields $Heap@12 $Heap@14 |l#0@@27|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |1359|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@12 $Heap@14 |l#0@@27|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |l#0@@27|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@27|)))
)))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@12 |universe#0|) (forall ((|o#5@@7| T@U) ) (!  (=> (and ($Is refType |o#5@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@7|))) (and (and (and (= (_module.Object.universe |o#5@@7|) |universe#0|) (or (not (= |o#5@@7| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@12 |o#5@@7|)) (_module.Object.triggerAxioms $Heap@12 |o#5@@7|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |1364|
 :pattern ( (_module.Object.triggerAxioms $Heap@12 |o#5@@7|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@12 |o#5@@7|))
 :pattern ( (_module.Object.universe |o#5@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#5@@7|)))
)))))))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (=> (|_module.Universe.globalInv#canCall| $Heap@12 |universe#0|) (or (_module.Universe.globalInv $Heap@12 |universe#0|) (forall ((|o#6@@5| T@U) ) (!  (=> (and ($Is refType |o#6@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@5|))) (_module.Object.inv $Heap@12 |o#6@@5|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1366|
 :pattern ( (_module.Object.inv $Heap@12 |o#6@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@5|)))
))))))))) (and (and (and (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (forall ((|o#7@@6| T@U) ) (!  (=> (and ($Is refType |o#7@@6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@6|))) (and (or (forall (($o@@213 T@U) ($f@@140 T@U) ) (!  (=> (or (not (= $o@@213 null)) (not true)) (=> (= $o@@213 |o#7@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@213) $f@@140) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@213) $f@@140))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1368|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@213) $f@@140))
)) (_module.Object.inv $Heap@14 |o#7@@6|)) (or (forall (($o@@214 T@U) ($f@@141 T@U) ) (!  (=> (or (not (= $o@@214 null)) (not true)) (=> (= $o@@214 |o#7@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@214) $f@@141) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@214) $f@@141))))
 :qid |_12MutexLifetimelongdfy.83:49|
 :skolemid |1369|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@214) $f@@141))
)) (_module.Object.inv2 $Heap@12 $Heap@14 |o#7@@6|))))
 :qid |_12MutexLifetimelongdfy.83:16|
 :skolemid |1370|
 :pattern ( (_module.Object.inv2 $Heap@12 $Heap@14 |o#7@@6|))
 :pattern ( (_module.Object.inv $Heap@14 |o#7@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@6|)))
)))) (=> (|_module.Universe.legalTransition#canCall| $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (or (_module.Universe.legalTransition $Heap@12 $Heap@14 |universe#0| |running#0@@3|) (forall ((|o#8@@15| T@U) ) (!  (=> (and ($Is refType |o#8@@15| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@15|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@15|))))) (_module.Object.inv $Heap@14 |o#8@@15|))
 :qid |_12MutexLifetimelongdfy.85:16|
 :skolemid |1371|
 :pattern ( (_module.Object.inv $Heap@14 |o#8@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@15|)))
))))) (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15))) (and (and (|_module.Universe.globalInv#canCall| $Heap@14 |universe#0|) (=> (_module.Universe.globalInv $Heap@14 |universe#0|) (|_module.Universe.globalInv2#canCall| $Heap@12 $Heap@14 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@14 |universe#0|) (and (_module.Universe.globalInv $Heap@14 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@14 |universe#0|) (forall ((|o#10@@5| T@U) ) (!  (=> (and ($Is refType |o#10@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@5|))) (_module.Object.inv $Heap@14 |o#10@@5|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |1379|
 :pattern ( (_module.Object.inv $Heap@14 |o#10@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#10@@5|)))
)))))))) (and (and (and (and (|_module.Universe.globalInv2#canCall| $Heap@12 $Heap@14 |universe#0|) (and (_module.Universe.globalInv2 $Heap@12 $Heap@14 |universe#0|) (forall ((|o#11@@10| T@U) ) (!  (=> (and ($Is refType |o#11@@10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@10|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@10|)) (_module.Object.inv2 $Heap@12 $Heap@14 |o#11@@10|)))
 :qid |_12MutexLifetimelongdfy.34:12|
 :skolemid |1381|
 :pattern ( (_module.Object.inv2 $Heap@12 $Heap@14 |o#11@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 |universe#0|) _module.Universe.content)) ($Box refType |o#11@@10|)))
)))) (= $Heap@14 $Heap@15)) (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@15) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@12)) (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@12 $Heap@15 |universe#0|) (|_module.Universe.globalSequenceInv2#canCall| $Heap@12 $Heap@15 |universe#0|)))) (and (and (and (_module.Universe.globalSequenceInv2 $Heap@12 $Heap@15 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 call5formal@this@0) _module.Lifetime.mightPointFrom)) (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0@@0))) (forall (($o@@215 T@U) ($f@@142 T@U) ) (!  (=> (and (and (or (not (= $o@@215 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@215) alloc)))) (or (= $o@@215 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType $o@@215)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@215 $f@@142)))
 :qid |_12MutexLifetimelongdfy.1251:26|
 :skolemid |1131|
)))) (and (and (=> (|_module.Universe.globalInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalInv $Heap@15 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (|_module.Universe.globalInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalInv $Heap@15 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@15 |universe#0|) (forall ((|o#0@@44| T@U) ) (!  (=> (and ($Is refType |o#0@@44| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@44|))) (and (and (and (= (_module.Object.universe |o#0@@44|) |universe#0|) (or (not (= |o#0@@44| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@15 |o#0@@44|)) (_module.Object.triggerAxioms $Heap@15 |o#0@@44|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |753|
 :pattern ( (_module.Object.triggerAxioms $Heap@15 |o#0@@44|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@15 |o#0@@44|))
 :pattern ( (_module.Object.universe |o#0@@44|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@44|)))
))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@15 |universe#0|) (or (_module.Universe.globalInv $Heap@15 |universe#0|) (forall ((|o#1@@31| T@U) ) (!  (=> (and ($Is refType |o#1@@31| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@31|))) (_module.Object.inv $Heap@15 |o#1@@31|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |755|
 :pattern ( (_module.Object.inv $Heap@15 |o#1@@31|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@31|)))
)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |running#0@@3|)))))))) (and (and (and (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|)) (and (and (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (and (_module.Universe.globalInv $Heap@16 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#3@@18| T@U) ) (!  (=> (and ($Is refType |o#3@@18| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@18|))) (_module.Object.inv $Heap@16 |o#3@@18|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |760|
 :pattern ( (_module.Object.inv $Heap@16 |o#3@@18|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@18|)))
))))) (|_module.Universe.globalSequenceInv2#canCall| $Heap@15 $Heap@16 |universe#0|))) (and (and (and (|_module.Universe.globalSequenceInv2#canCall| $Heap@15 $Heap@16 |universe#0|) (and (_module.Universe.globalSequenceInv2 $Heap@15 $Heap@16 |universe#0|) (forall ((|o#4@@17| T@U) ) (!  (=> (and ($Is refType |o#4@@17| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@17|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@17|)) (_module.Object.sequenceInv2 $Heap@15 $Heap@16 |o#4@@17|)))
 :qid |_12MutexLifetimelongdfy.29:12|
 :skolemid |762|
 :pattern ( (_module.Object.sequenceInv2 $Heap@15 $Heap@16 |o#4@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@17|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@17|)))
)))) (|_module.Universe.legalTransitionsSequence#canCall| $Heap@15 $Heap@16 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|)))) (and (|_module.Universe.legalTransitionsSequence#canCall| $Heap@15 $Heap@16 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (_module.Universe.legalTransitionsSequence $Heap@15 $Heap@16 |universe#0| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|))) (and (and (and (and (_module.Universe.baseLegalTransitionsSequence $Heap@15 $Heap@16 |universe#0|) (|Set#Subset| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)))) (forall ((|o#8@@16| T@U) ) (!  (=> (and ($Is refType |o#8@@16| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@16|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@16|)))) (or (forall (($o@@216 T@U) ($f@@143 T@U) ) (!  (=> (or (not (= $o@@216 null)) (not true)) (=> (= $o@@216 |o#8@@16|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@216) $f@@143) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@216) $f@@143))))
 :qid |_12MutexLifetimelongdfy.60:65|
 :skolemid |773|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@216) $f@@143))
)) (_module.Object.sequenceInv2 $Heap@15 $Heap@16 |o#8@@16|)))
 :qid |_12MutexLifetimelongdfy.60:16|
 :skolemid |774|
 :pattern ( (_module.Object.sequenceInv2 $Heap@15 $Heap@16 |o#8@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@16|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#8@@16|)))
))) (forall ((|o#9@@8| T@U) ) (!  (=> (and ($Is refType |o#9@@8| Tclass._module.OwnedObject) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@8|)) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.owner)) Tclass._module.Thread))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.owner) Tclass._module.Object? $Heap@15)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.nonvolatileVersion))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#9@@8|) _module.OwnedObject.nonvolatileVersion))))))
 :qid |_12MutexLifetimelongdfy.63:16|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |o#9@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.nonvolatileVersion)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |o#9@@8|) _module.OwnedObject.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |o#9@@8|)))
))) (forall ((|l#0@@28| T@U) ) (!  (=> (and ($Is refType |l#0@@28| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@28|))) (=> (and (not (|Set#IsMember| (|Set#FromBoogieMap| (|lambda#3| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) |running#0@@3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |l#0@@28|) _module.Lifetime.owner))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |l#0@@28|) _module.Lifetime.owner) Tclass._module.Thread? $Heap@15)) (_module.Lifetime.unchangedNonvolatileFields $Heap@15 $Heap@16 |l#0@@28|)))
 :qid |_12MutexLifetimelongdfy.69:16|
 :skolemid |776|
 :pattern ( (_module.Lifetime.unchangedNonvolatileFields $Heap@15 $Heap@16 |l#0@@28|))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |l#0@@28|) _module.Lifetime.owner)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |l#0@@28|)))
))))))) (and (and (and (and (forall ((|a#1@@33| T@U) (|b#1@@33| T@U) ) (!  (=> (and ($Is refType |a#1@@33| Tclass._module.Lifetime) ($Is refType |b#1@@33| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@33|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@33|))) (and (|_module.Universe.outlives#canCall| $Heap@15 |universe#0| |a#1@@33| |b#1@@33|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@15 |universe#0| |a#1@@33| |b#1@@33|) (|_module.Universe.outlives#canCall| $Heap@16 |universe#0| |a#1@@33| |b#1@@33|)))))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |777|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@33| |b#1@@33|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@15 |universe#0| |a#1@@33| |b#1@@33|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@33|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@33|)))
)) (forall ((|a#1@@34| T@U) (|b#1@@34| T@U) ) (!  (=> (and (and ($Is refType |a#1@@34| Tclass._module.Lifetime) ($Is refType |b#1@@34| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@34|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@34|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@15 |universe#0| |a#1@@34| |b#1@@34|) (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@34| |b#1@@34|)))
 :qid |_12MutexLifetimelongdfy.285:18|
 :skolemid |779|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@34| |b#1@@34|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@15 |universe#0| |a#1@@34| |b#1@@34|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@34|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@34|)))
))) (and (forall (($o@@217 T@U) ) (!  (=> (and (or (not (= $o@@217 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@217) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@217) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@217)) (or (= $o@@217 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 |universe#0|) _module.Universe.content)) ($Box refType $o@@217)))))
 :qid |_12MutexLifetimelongdfy.279:8|
 :skolemid |780|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@217))
)) ($HeapSucc $Heap@15 $Heap@16))) (and (and (forall (($o@@218 T@U) ($f@@144 T@U) ) (!  (=> (and (and (or (not (= $o@@218 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@218) alloc)))) (or (= $o@@218 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType $o@@218)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@218 $f@@144)))
 :qid |_12MutexLifetimelongdfy.1256:10|
 :skolemid |1132|
)) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@16 |universe#0|) (forall ((|o#0@@45| T@U) ) (!  (=> (and ($Is refType |o#0@@45| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@45|))) (and (and (and (= (_module.Object.universe |o#0@@45|) |universe#0|) (or (not (= |o#0@@45| |universe#0|)) (not true))) (_module.Object.baseFieldsInv $Heap@16 |o#0@@45|)) (_module.Object.triggerAxioms $Heap@16 |o#0@@45|)))
 :qid |_12MutexLifetimelongdfy.18:16|
 :skolemid |927|
 :pattern ( (_module.Object.triggerAxioms $Heap@16 |o#0@@45|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@16 |o#0@@45|))
 :pattern ( (_module.Object.universe |o#0@@45|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@45|)))
)))))) (=> (|_module.Universe.globalInv#canCall| $Heap@16 |universe#0|) (or (_module.Universe.globalInv $Heap@16 |universe#0|) (forall ((|o#1@@32| T@U) ) (!  (=> (and ($Is refType |o#1@@32| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@32|))) (_module.Object.inv $Heap@16 |o#1@@32|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |929|
 :pattern ( (_module.Object.inv $Heap@16 |o#1@@32|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@32|)))
))))))) (and (and (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |running#0@@3|)) ($Box refType call5formal@this@0@@0)) ($Box refType call4formal@this@0)) ($Box refType call5formal@this@0)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0@@0) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.owner)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (=> (|_module.Lifetime.unused#canCall| $Heap@16 call5formal@this@0@@0) (or (_module.Lifetime.unused $Heap@16 call5formal@this@0@@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0@@0) _module.Lifetime.mightPointFrom)) |Set#Empty|))))) (and (and (=> (|_module.Lifetime.unused#canCall| $Heap@16 call5formal@this@0@@0) (or (_module.Lifetime.unused $Heap@16 call5formal@this@0@@0) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0@@0) _module.Lifetime.elements)) |Set#Empty|))) (or (not (= call5formal@this@0@@0 call5formal@this@0)) (not true))) (and (=> (|_module.Universe.outlives#canCall| $Heap@16 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) call5formal@this@0) (or (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) call5formal@this@0) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointTo)) ($Box refType (_module.OwnedObject.lifetime call4formal@this@0))) (exists ((|x#0@@11| T@U) ) (!  (and (and ($Is refType |x#0@@11| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |x#0@@11|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@16 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) |x#0@@11| call5formal@this@0))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |931|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@16 |universe#0| (_module.OwnedObject.lifetime call4formal@this@0) |x#0@@11| call5formal@this@0))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |x#0@@11|)))
))))) (=> (|_module.Universe.outlives#canCall| $Heap@16 |universe#0| call5formal@this@0 call5formal@this@0@@0) (or (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| call5formal@this@0 call5formal@this@0@@0) (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0@@0) _module.Lifetime.mightPointTo)) ($Box refType call5formal@this@0)) (exists ((|x#1@@0| T@U) ) (!  (and (and ($Is refType |x#1@@0| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |x#1@@0|))) (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@16 |universe#0| call5formal@this@0 |x#1@@0| call5formal@this@0@@0))
 :qid |_12MutexLifetimelongdfy.163:36|
 :skolemid |933|
 :pattern ( (_module.Universe.outlivesThrough ($LS ($LS $LZ)) $Heap@16 |universe#0| call5formal@this@0 |x#1@@0| call5formal@this@0@@0))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |x#1@@0|)))
)))))))))) (and (and (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (and (|_module.Universe.globalInv#canCall| $Heap@17 |universe#0|) (=> (_module.Universe.globalInv $Heap@17 |universe#0|) (|_module.Universe.legalTransitionsSequenceAnyThread#canCall| $Heap@16 $Heap@17 |universe#0|)))) (and (and (|_module.Universe.globalInv#canCall| $Heap@17 |universe#0|) (and (_module.Universe.globalInv $Heap@17 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@17 |universe#0|) (forall ((|o#3@@19| T@U) ) (!  (=> (and ($Is refType |o#3@@19| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@19|))) (_module.Object.inv $Heap@17 |o#3@@19|))
 :qid |_12MutexLifetimelongdfy.24:32|
 :skolemid |938|
 :pattern ( (_module.Object.inv $Heap@17 |o#3@@19|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@19|)))
))))) (and (|_module.Universe.legalTransitionsSequenceAnyThread#canCall| $Heap@16 $Heap@17 |universe#0|) (and (_module.Universe.legalTransitionsSequenceAnyThread $Heap@16 $Heap@17 |universe#0|) (_module.Universe.legalTransitionsSequence $Heap@16 $Heap@17 |universe#0| (|Set#FromBoogieMap| (|lambda#55| Tclass._module.Thread ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content))))))))) (and (and (and (forall ((|l#1@@15| T@U) ) (!  (=> ($Is refType |l#1@@15| Tclass._module.Lifetime) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@15|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@15|)))) (|_module.Lifetime.alive#canCall| $Heap@17 |l#1@@15|)))
 :qid |_12MutexLifetimelongdfy.1066:18|
 :skolemid |953|
 :pattern ( (_module.Lifetime.alive $Heap@17 |l#1@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@15|)))
)) (forall ((|l#1@@16| T@U) ) (!  (=> (and ($Is refType |l#1@@16| Tclass._module.Lifetime) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@16|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@16|))))) (not (_module.Lifetime.alive $Heap@17 |l#1@@16|)))
 :qid |_12MutexLifetimelongdfy.1066:18|
 :skolemid |954|
 :pattern ( (_module.Lifetime.alive $Heap@17 |l#1@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@16|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.mightPointFrom)) ($Box refType |l#1@@16|)))
))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.owner)) |running#0@@3|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 call5formal@this@0) _module.Lifetime.elements))))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.mightPointFrom))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.elements)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.elements)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.owner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 (_module.OwnedObject.lifetime call4formal@this@0)) _module.Lifetime.owner))) (|_module.Lifetime.alive#canCall| $Heap@17 call5formal@this@0))))) (and (and (and (and (|_module.Lifetime.alive#canCall| $Heap@17 call5formal@this@0) (and (_module.Lifetime.alive $Heap@17 call5formal@this@0) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 call5formal@this@0) _module.Lifetime.owner)) null)) (not true)))) (and (|_module.Lifetime.alive#canCall| $Heap@17 call5formal@this@0@@0) (not (_module.Lifetime.alive $Heap@17 call5formal@this@0@@0)))) (and (and (forall (($o@@219 T@U) ) (!  (=> (and (or (not (= $o@@219 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@219) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@219) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@219)) (or (= $o@@219 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType $o@@219)))))
 :qid |_12MutexLifetimelongdfy.1059:8|
 :skolemid |955|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@219))
)) ($HeapSucc $Heap@16 $Heap@17)) (and (or (not (= |universe#0| null)) (not true)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@16)))) (and (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |universe#0|) _module.Universe.content))) (forall ((|l#1@@17| T@U) ) (!  (=> (and ($Is refType |l#1@@17| Tclass._module.Lifetime) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@17|))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#1@@17|) _module.Lifetime.mightPointFrom)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |l#1@@17|) _module.Lifetime.mightPointFrom))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#1@@17|) _module.Lifetime.mightPointTo)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |l#1@@17|) _module.Lifetime.mightPointTo)))))
 :qid |_12MutexLifetimelongdfy.201:21|
 :skolemid |1650|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |l#1@@17|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#1@@17|) _module.Lifetime.mightPointTo)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 |l#1@@17|) _module.Lifetime.mightPointFrom)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |l#1@@17|) _module.Lifetime.mightPointFrom)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |l#1@@17|)))
))) (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18))) (and (and (forall ((|a#1@@35| T@U) (|b#1@@35| T@U) ) (!  (=> (and ($Is refType |a#1@@35| Tclass._module.Lifetime) ($Is refType |b#1@@35| Tclass._module.Lifetime)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@35|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@35|))) (and (|_module.Universe.outlives#canCall| $Heap@16 |universe#0| |a#1@@35| |b#1@@35|) (=> (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@35| |b#1@@35|) (|_module.Universe.outlives#canCall| $Heap@17 |universe#0| |a#1@@35| |b#1@@35|)))))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1651|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@17 |universe#0| |a#1@@35| |b#1@@35|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@35| |b#1@@35|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@35|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@35|)))
)) (forall ((|a#1@@36| T@U) (|b#1@@36| T@U) ) (!  (=> (and (and ($Is refType |a#1@@36| Tclass._module.Lifetime) ($Is refType |b#1@@36| Tclass._module.Lifetime)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@36|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@36|)))) (=> (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@36| |b#1@@36|) (_module.Universe.outlives ($LS $LZ) $Heap@17 |universe#0| |a#1@@36| |b#1@@36|)))
 :qid |_12MutexLifetimelongdfy.202:20|
 :skolemid |1653|
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@17 |universe#0| |a#1@@36| |b#1@@36|))
 :pattern ( (_module.Universe.outlives ($LS $LZ) $Heap@16 |universe#0| |a#1@@36| |b#1@@36|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |b#1@@36|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 |universe#0|) _module.Universe.content)) ($Box refType |a#1@@36|)))
))) (and (= $Heap@17 $Heap@18) (or (not (= |universe#0| null)) (not true)))))))))) (and (=> (= (ControlFlow 0 38) 37) anon21_Then_correct) (=> (= (ControlFlow 0 38) 34) anon21_Else_correct)))))))))))
anon0_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
