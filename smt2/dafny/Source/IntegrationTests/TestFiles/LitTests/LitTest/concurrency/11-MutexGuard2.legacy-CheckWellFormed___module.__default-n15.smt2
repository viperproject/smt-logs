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
(declare-fun Tagclass._module.Thread () T@U)
(declare-fun Tagclass._module.Mutex () T@U)
(declare-fun Tagclass._module.MutexGuardU32 () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.OwnedU32 () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedU32? () T@U)
(declare-fun class._module.Mutex? () T@U)
(declare-fun Tagclass._module.Mutex? () T@U)
(declare-fun class._module.MutexGuardU32? () T@U)
(declare-fun Tagclass._module.MutexGuardU32? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$Mutex () T@U)
(declare-fun tytagFamily$MutexGuardU32 () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedU32 () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$mutex () T@U)
(declare-fun field$locked () T@U)
(declare-fun field$guards () T@U)
(declare-fun field$data () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.Universe.content () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun |_module.OwnedObject.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.MutexGuardU32.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.MutexGuardU32 () T@U)
(declare-fun _module.MutexGuardU32.mutex () T@U)
(declare-fun _module.MutexGuardU32.data () T@U)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.OwnedU32? () T@U)
(declare-fun Tclass._module.Mutex? () T@U)
(declare-fun Tclass._module.MutexGuardU32? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Mutex.userInv (T@U T@U) Bool)
(declare-fun |_module.Mutex.userInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Mutex () T@U)
(declare-fun |_module.Mutex.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Mutex.localUserInv (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun _module.Mutex.guards () T@U)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Mutex.locked () T@U)
(declare-fun _module.Mutex.data () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.OwnedU32 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.OwnedU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.localUserInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.OwnedU32.userInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedU32.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedU32.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Mutex.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Mutex.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.MutexGuardU32.userInv (T@U T@U) Bool)
(declare-fun |_module.MutexGuardU32.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |_module.Object.localInv#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Mutex Tagclass._module.MutexGuardU32 Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedU32 class._module.Universe? Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? Tagclass._module.OwnedU32? class._module.Mutex? Tagclass._module.Mutex? class._module.MutexGuardU32? Tagclass._module.MutexGuardU32? tytagFamily$Universe tytagFamily$Thread tytagFamily$Mutex tytagFamily$MutexGuardU32 tytagFamily$Object tytagFamily$OwnedU32 tytagFamily$OwnedObject field$content field$owner field$mutex field$locked field$guards field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap this) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.OwnedObject) ($IsAlloc refType this Tclass._module.OwnedObject $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap this)) (= (_module.OwnedObject.baseFieldsInv $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap this)))))
 :qid |_11MutexGuard2legacydfy.323:19|
 :skolemid |1508|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.MutexGuardU32.baseUserFieldsInv#canCall| $Heap@@0 this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@0 Tclass._module.MutexGuardU32 $Heap@@0)))))) (= (_module.MutexGuardU32.baseUserFieldsInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.MutexGuardU32.mutex)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.MutexGuardU32.data)))))
 :qid |_11MutexGuard2legacydfy.539:19|
 :skolemid |2182|
 :pattern ( (_module.MutexGuardU32.baseUserFieldsInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@1) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@1)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this@@1) (=> (or (not (= |o#0| this@@1)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@1 |o#0|) (=> (_module.Object.baseFieldsInv $Heap@@1 |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap@@1 |o#0|)))))))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |630|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@1 this@@1)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this@@1) (or (not (= |o#0@@0| this@@1)) (not true))) (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|)) (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |629|
 :pattern ( (_module.Object.triggerAxioms $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_11MutexGuard2legacydfy.17:19|
 :skolemid |631|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.OwnedU32?))
(assert (implements$_module.OwnedObject Tclass._module.Mutex?))
(assert (implements$_module.OwnedObject Tclass._module.MutexGuardU32?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@2 this@@2) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Mutex) ($IsAlloc refType this@@2 Tclass._module.Mutex $Heap@@2)))))) (and (and (|_module.Mutex.localUserInv#canCall| $Heap@@2 this@@2) (=> (_module.Mutex.localUserInv $Heap@@2 this@@2) (forall ((|g#0| T@U) ) (!  (=> ($Is refType |g#0| Tclass._module.MutexGuardU32) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Mutex.guards)) ($Box refType |g#0|)) (|_module.OwnedObject.localInv#canCall| $Heap@@2 |g#0|)))
 :qid |_11MutexGuard2legacydfy.498:16|
 :skolemid |1939|
 :pattern ( (_module.OwnedObject.localInv $Heap@@2 |g#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Mutex.guards)) ($Box refType |g#0|)))
)))) (= (_module.Mutex.userInv $Heap@@2 this@@2)  (and (_module.Mutex.localUserInv $Heap@@2 this@@2) (forall ((|g#0@@0| T@U) ) (!  (=> (and ($Is refType |g#0@@0| Tclass._module.MutexGuardU32) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Mutex.guards)) ($Box refType |g#0@@0|))) (_module.OwnedObject.localInv $Heap@@2 |g#0@@0|))
 :qid |_11MutexGuard2legacydfy.498:16|
 :skolemid |1938|
 :pattern ( (_module.OwnedObject.localInv $Heap@@2 |g#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@2) _module.Mutex.guards)) ($Box refType |g#0@@0|)))
))))))
 :qid |_11MutexGuard2legacydfy.496:19|
 :skolemid |1940|
 :pattern ( (_module.Mutex.userInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 13 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@3 this@@3) (and (< 13 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $Heap@@3)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@3 this@@3) (=> (_module.Universe.globalBaseInv $Heap@@3 this@@3) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|)) (|_module.Object.inv#canCall| $Heap@@3 |o#0@@1|)))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |643|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |o#0@@1|)))
)))) (= (_module.Universe.globalInv $Heap@@3 this@@3)  (and (_module.Universe.globalBaseInv $Heap@@3 this@@3) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |o#0@@2|))) (_module.Object.inv $Heap@@3 |o#0@@2|))
 :qid |_11MutexGuard2legacydfy.23:32|
 :skolemid |642|
 :pattern ( (_module.Object.inv $Heap@@3 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@3) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))))
 :qid |_11MutexGuard2legacydfy.22:19|
 :skolemid |644|
 :pattern ( (_module.Universe.globalInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.OwnedU32?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |1631|
 :pattern ( ($Is refType $o@@0 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Mutex?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( ($Is refType $o@@1 Tclass._module.Mutex?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.MutexGuardU32?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |2166|
 :pattern ( ($Is refType $o@@2 Tclass._module.MutexGuardU32?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@4 this@@4) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Mutex) ($IsAlloc refType this@@4 Tclass._module.Mutex $Heap@@4)))))) (= (_module.Mutex.localUserInv $Heap@@4 this@@4)  (and (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.locked))) (and (and ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.data))) _module.OwnedObject.owner)) Tclass._module.MutexGuardU32) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.data))) _module.OwnedObject.owner))) _module.MutexGuardU32.mutex)) this@@4)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.data))) _module.OwnedObject.owner))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.locked)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.data))) _module.OwnedObject.owner)) this@@4) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) _module.Mutex.guards)) |Set#Empty|))))))
 :qid |_11MutexGuard2legacydfy.485:19|
 :skolemid |1931|
 :pattern ( (_module.Mutex.localUserInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2435|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2439|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.OwnedU32? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2443|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.OwnedU32? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Mutex? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2447|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Mutex? $h@@2))
)))
(assert (forall ((bx@@3 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.MutexGuardU32? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2451|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.MutexGuardU32? $h@@3))
)))
(assert (forall ((|c#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@4))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@4))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@5))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@6) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@6))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@7) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@7))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.OwnedU32 $h@@8) ($IsAlloc refType |c#0@@3| Tclass._module.OwnedU32? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.OwnedU32 $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.OwnedU32? $h@@8))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Mutex $h@@9) ($IsAlloc refType |c#0@@4| Tclass._module.Mutex? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2164|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Mutex $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Mutex? $h@@9))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.MutexGuardU32 $h@@10) ($IsAlloc refType |c#0@@5| Tclass._module.MutexGuardU32? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2433|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.MutexGuardU32 $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.MutexGuardU32? $h@@10))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert (= (FDim _module.Mutex.guards) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$guards) _module.Mutex.guards))
(assert ($IsGhostField _module.Mutex.guards))
(assert (= (FDim _module.MutexGuardU32.data) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$data) _module.MutexGuardU32.data))
(assert ($IsGhostField _module.MutexGuardU32.data))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@5 this@@5) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.localUserInv $Heap@@5 this@@5) (_module.OwnedU32.localUserInv $Heap@@5 this@@5)))
 :qid |_11MutexGuard2legacydfy.407:19|
 :skolemid |1667|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@5) ($Is refType this@@5 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@5 this@@5) (_module.OwnedU32.localUserInv $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@6 this@@6) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.localUserInv $Heap@@6 this@@6) (_module.MutexGuardU32.localUserInv $Heap@@6 this@@6)))
 :qid |_11MutexGuard2legacydfy.407:19|
 :skolemid |2204|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@6) ($Is refType this@@6 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@6) (_module.MutexGuardU32.localUserInv $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@7 this@@7) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.userInv $Heap@@7 this@@7) (_module.OwnedU32.userInv $Heap@@7 this@@7)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1674|
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@7) ($Is refType this@@7 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.userInv $Heap@@7 this@@7) (_module.OwnedU32.userInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Mutex.localUserInv#canCall| $Heap@@8 this@@8) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Mutex)))) (= (_module.OwnedObject.localUserInv $Heap@@8 this@@8) (_module.Mutex.localUserInv $Heap@@8 this@@8)))
 :qid |_11MutexGuard2legacydfy.407:19|
 :skolemid |1932|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@8) ($Is refType this@@8 Tclass._module.Mutex) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@8 this@@8) (_module.Mutex.localUserInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@9 this@@9) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.Thread.baseFieldsInv $Heap@@9 this@@9)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1217|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) ($Is refType this@@9 Tclass._module.Thread) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.Thread.baseFieldsInv $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.OwnedU32.baseUserFieldsInv#canCall| $Heap@@10 this@@10) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.OwnedU32)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@10) (_module.OwnedU32.baseUserFieldsInv $Heap@@10 this@@10)))
 :qid |_11MutexGuard2legacydfy.404:19|
 :skolemid |1646|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@10) ($Is refType this@@10 Tclass._module.OwnedU32) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@10 this@@10) (_module.OwnedU32.baseUserFieldsInv $Heap@@10 this@@10) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Mutex.baseUserFieldsInv#canCall| $Heap@@11 this@@11) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.Mutex)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@11) (_module.Mutex.baseUserFieldsInv $Heap@@11 this@@11)))
 :qid |_11MutexGuard2legacydfy.404:19|
 :skolemid |1911|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@11) ($Is refType this@@11 Tclass._module.Mutex) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@11 this@@11) (_module.Mutex.baseUserFieldsInv $Heap@@11 this@@11) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.MutexGuardU32.baseUserFieldsInv#canCall| $Heap@@12 this@@12) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@12) (_module.MutexGuardU32.baseUserFieldsInv $Heap@@12 this@@12)))
 :qid |_11MutexGuard2legacydfy.404:19|
 :skolemid |2183|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@12) ($Is refType this@@12 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@12 this@@12) (_module.MutexGuardU32.baseUserFieldsInv $Heap@@12 this@@12) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@13 this@@13) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@13 this@@13) (_module.OwnedObject.baseFieldsInv $Heap@@13 this@@13)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1509|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@13 this@@13) ($Is refType this@@13 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@13 this@@13) (_module.OwnedObject.baseFieldsInv $Heap@@13 this@@13) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@14 this@@14) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@14 this@@14) (_module.Thread.localInv $Heap@@14 this@@14)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1231|
 :pattern ( (_module.Object.localInv $Heap@@14 this@@14) ($Is refType this@@14 Tclass._module.Thread) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.localInv $Heap@@14 this@@14) (_module.Thread.localInv $Heap@@14 this@@14) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@15 this@@15) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@15 this@@15) (_module.OwnedObject.localInv $Heap@@15 this@@15)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1531|
 :pattern ( (_module.Object.localInv $Heap@@15 this@@15) ($Is refType this@@15 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.localInv $Heap@@15 this@@15) (_module.OwnedObject.localInv $Heap@@15 this@@15) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@16 this@@16) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@16 this@@16) (_module.Thread.inv $Heap@@16 this@@16)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1243|
 :pattern ( (_module.Object.inv $Heap@@16 this@@16) ($Is refType this@@16 Tclass._module.Thread) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.inv $Heap@@16 this@@16) (_module.Thread.inv $Heap@@16 this@@16) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@17 this@@17) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@17 null)) (not true)) ($Is refType this@@17 Tclass._module.Mutex)))) (= (_module.OwnedObject.userInv $Heap@@17 this@@17) (_module.Mutex.userInv $Heap@@17 this@@17)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1941|
 :pattern ( (_module.OwnedObject.userInv $Heap@@17 this@@17) ($Is refType this@@17 Tclass._module.Mutex) ($IsGoodHeap $Heap@@17))
 :pattern ( (_module.OwnedObject.userInv $Heap@@17 this@@17) (_module.Mutex.userInv $Heap@@17 this@@17) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@18 this@@18) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.MutexGuardU32)))) (= (_module.OwnedObject.userInv $Heap@@18 this@@18) (_module.MutexGuardU32.userInv $Heap@@18 this@@18)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |2211|
 :pattern ( (_module.OwnedObject.userInv $Heap@@18 this@@18) ($Is refType this@@18 Tclass._module.MutexGuardU32) ($IsGoodHeap $Heap@@18))
 :pattern ( (_module.OwnedObject.userInv $Heap@@18 this@@18) (_module.MutexGuardU32.userInv $Heap@@18 this@@18) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@19 this@@19) (and (< 11 $FunctionContextHeight) (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@19 this@@19) (_module.OwnedObject.inv $Heap@@19 this@@19)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1544|
 :pattern ( (_module.Object.inv $Heap@@19 this@@19) ($Is refType this@@19 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@19))
 :pattern ( (_module.Object.inv $Heap@@19 this@@19) (_module.OwnedObject.inv $Heap@@19 this@@19) ($IsGoodHeap $Heap@@19))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (= (FDim _module.MutexGuardU32.mutex) 0))
(assert (= (FieldOfDecl class._module.MutexGuardU32? field$mutex) _module.MutexGuardU32.mutex))
(assert  (not ($IsGhostField _module.MutexGuardU32.mutex)))
(assert (= (FDim _module.Mutex.locked) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$locked) _module.Mutex.locked))
(assert  (not ($IsGhostField _module.Mutex.locked)))
(assert (= (FDim _module.Mutex.data) 0))
(assert (= (FieldOfDecl class._module.Mutex? field$data) _module.Mutex.data))
(assert  (not ($IsGhostField _module.Mutex.data)))
(assert (forall (($o@@3 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@11)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@11))
)))
(assert (forall (($o@@4 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@12)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@12))
)))
(assert (forall (($o@@5 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Thread? $h@@13)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Thread? $h@@13))
)))
(assert (forall (($o@@6 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@14)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@14))
)))
(assert (forall (($o@@7 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.OwnedU32? $h@@15)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.OwnedU32? $h@@15))
)))
(assert (forall (($o@@8 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Mutex? $h@@16)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Mutex? $h@@16))
)))
(assert (forall (($o@@9 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.MutexGuardU32? $h@@17)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2167|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.MutexGuardU32? $h@@17))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Mutex.baseUserFieldsInv#canCall| $Heap@@20 this@@20) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Mutex) ($IsAlloc refType this@@20 Tclass._module.Mutex $Heap@@20)))))) (= (_module.Mutex.baseUserFieldsInv $Heap@@20 this@@20)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 (_module.Object.universe this@@20)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@20) _module.Mutex.data)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 this@@20) _module.Mutex.guards)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@20 (_module.Object.universe this@@20)) _module.Universe.content))))))
 :qid |_11MutexGuard2legacydfy.477:19|
 :skolemid |1910|
 :pattern ( (_module.Mutex.baseUserFieldsInv $Heap@@20 this@@20) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@21 this@@21) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Object) ($IsAlloc refType this@@21 Tclass._module.Object $Heap@@21)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType this@@21)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@21 this@@21) (=> (_module.Object.baseFieldsInv $Heap@@21 this@@21) (|_module.Universe.globalBaseInv#canCall| $Heap@@21 (_module.Object.universe this@@21))))) (= (_module.Object.objectGlobalBaseInv $Heap@@21 this@@21)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@21 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType this@@21)) (_module.Object.baseFieldsInv $Heap@@21 this@@21)) (_module.Universe.globalBaseInv $Heap@@21 (_module.Object.universe this@@21))))))
 :qid |_11MutexGuard2legacydfy.202:19|
 :skolemid |1071|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@21 this@@21) ($IsGoodHeap $Heap@@21))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedU32.localUserInv#canCall| $Heap@@22 this@@22) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedU32) ($IsAlloc refType this@@22 Tclass._module.OwnedU32 $Heap@@22)))))) (= (_module.OwnedU32.localUserInv $Heap@@22 this@@22) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.447:19|
 :skolemid |1666|
 :pattern ( (_module.OwnedU32.localUserInv $Heap@@22 this@@22) ($IsGoodHeap $Heap@@22))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@23 this@@23) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Thread) ($IsAlloc refType this@@23 Tclass._module.Thread $Heap@@23)))))) (= (_module.Thread.baseFieldsInv $Heap@@23 this@@23) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.260:19|
 :skolemid |1216|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@23 this@@23) ($IsGoodHeap $Heap@@23))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.OwnedU32.baseUserFieldsInv#canCall| $Heap@@24 this@@24) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.OwnedU32) ($IsAlloc refType this@@24 Tclass._module.OwnedU32 $Heap@@24)))))) (= (_module.OwnedU32.baseUserFieldsInv $Heap@@24 this@@24) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.440:19|
 :skolemid |1645|
 :pattern ( (_module.OwnedU32.baseUserFieldsInv $Heap@@24 this@@24) ($IsGoodHeap $Heap@@24))
))))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@25 this@@25) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.OwnedU32) ($IsAlloc refType this@@25 Tclass._module.OwnedU32 $Heap@@25)))))) (and (|_module.OwnedU32.localUserInv#canCall| $Heap@@25 this@@25) (= (_module.OwnedU32.userInv $Heap@@25 this@@25) (_module.OwnedU32.localUserInv $Heap@@25 this@@25))))
 :qid |_11MutexGuard2legacydfy.448:19|
 :skolemid |1673|
 :pattern ( (_module.OwnedU32.userInv $Heap@@25 this@@25) ($IsGoodHeap $Heap@@25))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@10 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (or (= $o@@10 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@10)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2454|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@10 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@18 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@11) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@11) _module.Mutex.locked)) TBool $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1897|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@11) _module.Mutex.locked)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@26 this@@26) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.OwnedObject) ($IsAlloc refType this@@26 Tclass._module.OwnedObject $Heap@@26)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@26 this@@26) (=> (_module.Object.objectGlobalBaseInv $Heap@@26 this@@26) (|_module.OwnedObject.localUserInv#canCall| $Heap@@26 this@@26))) (= (_module.OwnedObject.localInv $Heap@@26 this@@26)  (and (_module.Object.objectGlobalBaseInv $Heap@@26 this@@26) (_module.OwnedObject.localUserInv $Heap@@26 this@@26)))))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1530|
 :pattern ( (_module.OwnedObject.localInv $Heap@@26 this@@26) ($IsGoodHeap $Heap@@26))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@27 this@@27) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.OwnedObject) ($IsAlloc refType this@@27 Tclass._module.OwnedObject $Heap@@27)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@27 this@@27) (=> (_module.OwnedObject.localInv $Heap@@27 this@@27) (|_module.OwnedObject.userInv#canCall| $Heap@@27 this@@27))) (= (_module.OwnedObject.inv $Heap@@27 this@@27)  (and (_module.OwnedObject.localInv $Heap@@27 this@@27) (_module.OwnedObject.userInv $Heap@@27 this@@27)))))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1543|
 :pattern ( (_module.OwnedObject.inv $Heap@@27 this@@27) ($IsGoodHeap $Heap@@27))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@5 t@@0 h@@1) ($IsAllocBox bx@@5 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@5 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@19 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@12) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@12) Tclass._module.Universe $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@12) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@13) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@13))
))))
(assert (forall (($h@@20 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Mutex?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@14) _module.Mutex.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1894|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@14) _module.Mutex.data)))
)))
(assert (forall (($h@@21 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@15) _module.MutexGuardU32.mutex)) Tclass._module.Mutex))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2168|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@15) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@22 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.MutexGuardU32?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@16) _module.MutexGuardU32.data)) Tclass._module.OwnedU32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2170|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@16) _module.MutexGuardU32.data)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@28 this@@28) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@28 Tclass._module.MutexGuardU32 $Heap@@28)))))) (= (_module.MutexGuardU32.localUserInv $Heap@@28 this@@28)  (and (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.locked))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.guards)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@28)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.data))) _module.OwnedObject.owner)) this@@28)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.mutex))) _module.Mutex.data)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@28 this@@28) _module.MutexGuardU32.data))))))
 :qid |_11MutexGuard2legacydfy.550:19|
 :skolemid |2203|
 :pattern ( (_module.MutexGuardU32.localUserInv $Heap@@28 this@@28) ($IsGoodHeap $Heap@@28))
))))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@7 Tclass._module.Thread))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Mutex) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Mutex)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@8 Tclass._module.Mutex))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.MutexGuardU32) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.MutexGuardU32)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@9 Tclass._module.MutexGuardU32))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@10 Tclass._module.Universe?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedU32) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedU32)))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedU32))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsBox bx@@13 Tclass._module.Object?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( ($IsBox bx@@15 Tclass._module.Thread?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@16 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.OwnedU32?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.OwnedU32?)))
 :qid |unknown.0:0|
 :skolemid |1630|
 :pattern ( ($IsBox bx@@17 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.Mutex?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.Mutex?)))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( ($IsBox bx@@18 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.MutexGuardU32?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.MutexGuardU32?)))
 :qid |unknown.0:0|
 :skolemid |2165|
 :pattern ( ($IsBox bx@@19 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Universe)  (and ($Is refType |c#0@@6| Tclass._module.Universe?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Object)  (and ($Is refType |c#0@@7| Tclass._module.Object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Thread)  (and ($Is refType |c#0@@8| Tclass._module.Thread?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@9| Tclass._module.OwnedObject?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedU32)  (and ($Is refType |c#0@@10| Tclass._module.OwnedU32?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedU32))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedU32?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.Mutex)  (and ($Is refType |c#0@@11| Tclass._module.Mutex?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2163|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Mutex))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.Mutex?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.MutexGuardU32)  (and ($Is refType |c#0@@12| Tclass._module.MutexGuardU32?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2432|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.MutexGuardU32))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.MutexGuardU32?))
)))
(assert (forall (($h@@23 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@17) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@17) _module.Mutex.data)) Tclass._module.OwnedU32 $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1895|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@17) _module.Mutex.data)))
)))
(assert (forall (($h@@24 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@18) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@18) _module.MutexGuardU32.mutex)) Tclass._module.Mutex $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2169|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@18) _module.MutexGuardU32.mutex)))
)))
(assert (forall (($h@@25 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.MutexGuardU32?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@19) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@19) _module.MutexGuardU32.data)) Tclass._module.OwnedU32 $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2171|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@19) _module.MutexGuardU32.data)))
)))
(assert (forall (($o@@20 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@20 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@20 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2437|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@21 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@21 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@22 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass._module.OwnedU32? $heap@@1) ($IsAlloc refType $o@@22 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2445|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.OwnedU32? $heap@@1))
)))
(assert (forall (($o@@23 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass._module.Mutex? $heap@@2) ($IsAlloc refType $o@@23 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2449|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Mutex? $heap@@2))
)))
(assert (forall (($o@@24 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@24 Tclass._module.MutexGuardU32? $heap@@3) ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |2453|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.MutexGuardU32? $heap@@3))
)))
(assert (forall (($h@@26 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.Mutex?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1898|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.Mutex.guards)))
)))
(assert (forall (($h@@27 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.Mutex?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Mutex.guards)) (TSet Tclass._module.MutexGuardU32) $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1899|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Mutex.guards)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Object))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@27 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (or (= $o@@27 this@@29) (= $o@@27 (_module.Object.universe this@@29)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@27) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@27) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1133|
)) (= (_module.Object.baseFieldsInv $h0 this@@29) (_module.Object.baseFieldsInv $h1 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1134|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Object.baseFieldsInv $h1 this@@29))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@30 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@30 null)) (not true)) ($Is refType this@@30 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@28 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (or (= $o@@28 this@@30) (= $o@@28 (_module.Object.universe this@@30)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@28) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@28) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1212|
)) (= (_module.Thread.baseFieldsInv $h0@@0 this@@30) (_module.Thread.baseFieldsInv $h1@@0 this@@30))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1213|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Thread.baseFieldsInv $h1@@0 this@@30))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@31 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@29 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (or (= $o@@29 this@@31) (= $o@@29 (_module.Object.universe this@@31)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@29) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@29) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1504|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@1 this@@31) (_module.OwnedObject.baseFieldsInv $h1@@1 this@@31))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1505|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.OwnedObject.baseFieldsInv $h1@@1 this@@31))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@32 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@32 null)) (not true)) ($Is refType this@@32 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@30 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (or (= $o@@30 this@@32) (= $o@@30 (_module.Object.universe this@@32)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@30) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@30) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1602|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@2 this@@32) (_module.OwnedObject.baseUserFieldsInv $h1@@2 this@@32))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1603|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.OwnedObject.baseUserFieldsInv $h1@@2 this@@32))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@33 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@33 null)) (not true)) ($Is refType this@@33 Tclass._module.OwnedU32))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@31 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (or (= $o@@31 this@@33) (= $o@@31 (_module.Object.universe this@@33)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@31) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@31) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1641|
)) (= (_module.OwnedU32.baseUserFieldsInv $h0@@3 this@@33) (_module.OwnedU32.baseUserFieldsInv $h1@@3 this@@33))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1642|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedU32.baseUserFieldsInv $h1@@3 this@@33))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@34 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@34 null)) (not true)) ($Is refType this@@34 Tclass._module.Mutex))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@32 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (or (= $o@@32 this@@34) (= $o@@32 (_module.Object.universe this@@34)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@32) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@32) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1906|
)) (= (_module.Mutex.baseUserFieldsInv $h0@@4 this@@34) (_module.Mutex.baseUserFieldsInv $h1@@4 this@@34))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Mutex.baseUserFieldsInv $h1@@4 this@@34))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@35 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@35 null)) (not true)) ($Is refType this@@35 Tclass._module.MutexGuardU32))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@33 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (or (= $o@@33 this@@35) (= $o@@33 (_module.Object.universe this@@35)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@33) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@33) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |2178|
)) (= (_module.MutexGuardU32.baseUserFieldsInv $h0@@5 this@@35) (_module.MutexGuardU32.baseUserFieldsInv $h1@@5 this@@35))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2179|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.MutexGuardU32.baseUserFieldsInv $h1@@5 this@@35))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@29 this@@36) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Object) ($IsAlloc refType this@@36 Tclass._module.Object $Heap@@29)))))) (_module.Object.triggerAxioms $Heap@@29 this@@36))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1089|
 :pattern ( (_module.Object.triggerAxioms $Heap@@29 this@@36))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@30 this@@37) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@37 Tclass._module.MutexGuardU32 $Heap@@30)))))) (and (and (|_module.MutexGuardU32.localUserInv#canCall| $Heap@@30 this@@37) (=> (_module.MutexGuardU32.localUserInv $Heap@@30 this@@37) (|_module.OwnedObject.localInv#canCall| $Heap@@30 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@37) _module.MutexGuardU32.mutex))))) (= (_module.MutexGuardU32.userInv $Heap@@30 this@@37)  (and (_module.MutexGuardU32.localUserInv $Heap@@30 this@@37) (_module.OwnedObject.localInv $Heap@@30 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@30 this@@37) _module.MutexGuardU32.mutex)))))))
 :qid |_11MutexGuard2legacydfy.556:19|
 :skolemid |2210|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@30 this@@37) ($IsGoodHeap $Heap@@30))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 TBool) (and (= ($Box boolType ($Unbox boolType bx@@20)) bx@@20) ($Is boolType ($Unbox boolType bx@@20) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@20 TBool))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedU32.userInv#canCall| $Heap@@31 this@@38) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedU32) ($IsAlloc refType this@@38 Tclass._module.OwnedU32 $Heap@@31)))))) (=> (_module.OwnedU32.userInv $Heap@@31 this@@38) (_module.OwnedU32.localUserInv $Heap@@31 this@@38)))
 :qid |_11MutexGuard2legacydfy.448:19|
 :skolemid |1671|
 :pattern ( (_module.OwnedU32.userInv $Heap@@31 this@@38))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@32 this@@39) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Thread) ($IsAlloc refType this@@39 Tclass._module.Thread $Heap@@32)))))) (=> (_module.Thread.localInv $Heap@@32 this@@39) (_module.Object.objectGlobalBaseInv $Heap@@32 this@@39)))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1228|
 :pattern ( (_module.Thread.localInv $Heap@@32 this@@39))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@33 this@@40) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.OwnedObject) ($IsAlloc refType this@@40 Tclass._module.OwnedObject $Heap@@33)))))) (=> (_module.OwnedObject.localInv $Heap@@33 this@@40) (_module.Object.objectGlobalBaseInv $Heap@@33 this@@40)))
 :qid |_11MutexGuard2legacydfy.336:19|
 :skolemid |1528|
 :pattern ( (_module.OwnedObject.localInv $Heap@@33 this@@40))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@34 this@@41) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Object) ($IsAlloc refType this@@41 Tclass._module.Object $Heap@@34)))))) (=> (_module.Object.localInv $Heap@@34 this@@41) (_module.Object.objectGlobalBaseInv $Heap@@34 this@@41)))
 :qid |_11MutexGuard2legacydfy.247:19|
 :skolemid |1141|
 :pattern ( (_module.Object.localInv $Heap@@34 this@@41))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@35 this@@42) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Thread) ($IsAlloc refType this@@42 Tclass._module.Thread $Heap@@35)))))) (=> (_module.Thread.inv $Heap@@35 this@@42) (_module.Thread.localInv $Heap@@35 this@@42)))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1240|
 :pattern ( (_module.Thread.inv $Heap@@35 this@@42))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.Mutex.userInv#canCall| $Heap@@36 this@@43) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Mutex) ($IsAlloc refType this@@43 Tclass._module.Mutex $Heap@@36)))))) (=> (_module.Mutex.userInv $Heap@@36 this@@43) (_module.Mutex.localUserInv $Heap@@36 this@@43)))
 :qid |_11MutexGuard2legacydfy.496:19|
 :skolemid |1936|
 :pattern ( (_module.Mutex.userInv $Heap@@36 this@@43))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@44 T@U) ) (!  (=> (or (|_module.MutexGuardU32.userInv#canCall| $Heap@@37 this@@44) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@44 Tclass._module.MutexGuardU32 $Heap@@37)))))) (=> (_module.MutexGuardU32.userInv $Heap@@37 this@@44) (_module.MutexGuardU32.localUserInv $Heap@@37 this@@44)))
 :qid |_11MutexGuard2legacydfy.556:19|
 :skolemid |2208|
 :pattern ( (_module.MutexGuardU32.userInv $Heap@@37 this@@44))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@45 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@38 this@@45) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.OwnedObject) ($IsAlloc refType this@@45 Tclass._module.OwnedObject $Heap@@38)))))) (=> (_module.OwnedObject.userInv $Heap@@38 this@@45) (_module.OwnedObject.localUserInv $Heap@@38 this@@45)))
 :qid |_11MutexGuard2legacydfy.409:19|
 :skolemid |1622|
 :pattern ( (_module.OwnedObject.userInv $Heap@@38 this@@45))
))))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@46 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@39 this@@46) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.OwnedObject) ($IsAlloc refType this@@46 Tclass._module.OwnedObject $Heap@@39)))))) (=> (_module.OwnedObject.inv $Heap@@39 this@@46) (_module.OwnedObject.localInv $Heap@@39 this@@46)))
 :qid |_11MutexGuard2legacydfy.340:19|
 :skolemid |1541|
 :pattern ( (_module.OwnedObject.inv $Heap@@39 this@@46))
))))
(assert  (=> (<= 12 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@47 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@40 this@@47) (and (< 12 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Object) ($IsAlloc refType this@@47 Tclass._module.Object $Heap@@40)))))) (=> (_module.Object.inv $Heap@@40 this@@47) (_module.Object.localInv $Heap@@40 this@@47)))
 :qid |_11MutexGuard2legacydfy.249:19|
 :skolemid |1151|
 :pattern ( (_module.Object.inv $Heap@@40 this@@47))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@21 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@21) ($IsAllocBox bx@@21 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@21))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
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
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@48 null)) (not true)) ($Is refType this@@48 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@34 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (= $o@@34 this@@48)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@34) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@34) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1087|
)) (= (_module.Object.triggerAxioms $h0@@6 this@@48) (_module.Object.triggerAxioms $h1@@6 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1088|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.triggerAxioms $h1@@6 this@@48))
)))
(assert (forall (($h@@28 T@U) ($o@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.Mutex?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@35) _module.Mutex.locked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1896|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@35) _module.Mutex.locked)))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@49 null)) (not true)) ($Is refType this@@49 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@36 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (or (= $o@@36 this@@49) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 this@@49) _module.Universe.content)) ($Box refType $o@@36)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@36) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@36) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |625|
)) (= (_module.Universe.globalBaseInv $h0@@7 this@@49) (_module.Universe.globalBaseInv $h1@@7 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |626|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalBaseInv $h1@@7 this@@49))
)))
(assert (forall (($h@@29 T@U) ($o@@37 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@37 null)) (not true)) ($Is refType $o@@37 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@37) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@37) _module.OwnedObject.owner)) Tclass._module.Object $h@@29))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@37) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.Universe) ($IsAlloc refType this@@50 Tclass._module.Universe $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@38 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@38) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@38) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |638|
)) (= (_module.Universe.globalInv $h0@@8 this@@50) (_module.Universe.globalInv $h1@@8 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |639|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Universe.globalInv $h1@@8 this@@50))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.Object) ($IsAlloc refType this@@51 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@39 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@39) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@39) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1067|
)) (= (_module.Object.objectGlobalBaseInv $h0@@9 this@@51) (_module.Object.objectGlobalBaseInv $h1@@9 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1068|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.objectGlobalBaseInv $h1@@9 this@@51))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.Object) ($IsAlloc refType this@@52 Tclass._module.Object $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@40 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@40) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@40) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1139|
)) (= (_module.Object.localInv $h0@@10 this@@52) (_module.Object.localInv $h1@@10 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1140|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.localInv $h1@@10 this@@52))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.Object) ($IsAlloc refType this@@53 Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@41 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@41) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@41) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@41) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1149|
)) (= (_module.Object.inv $h0@@11 this@@53) (_module.Object.inv $h1@@11 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1150|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.inv $h1@@11 this@@53))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Thread) ($IsAlloc refType this@@54 Tclass._module.Thread $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@42 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@42) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@42) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@42) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1226|
)) (= (_module.Thread.localInv $h0@@12 this@@54) (_module.Thread.localInv $h1@@12 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1227|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.localInv $h1@@12 this@@54))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Thread) ($IsAlloc refType this@@55 Tclass._module.Thread $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@43 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@43) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@43) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@43) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1238|
)) (= (_module.Thread.inv $h0@@13 this@@55) (_module.Thread.inv $h1@@13 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1239|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Thread.inv $h1@@13 this@@55))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@56 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.OwnedObject) ($IsAlloc refType this@@56 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@44 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@44) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@44) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@44) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1526|
)) (= (_module.OwnedObject.localInv $h0@@14 this@@56) (_module.OwnedObject.localInv $h1@@14 this@@56))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1527|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.localInv $h1@@14 this@@56))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@57 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.OwnedObject) ($IsAlloc refType this@@57 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@45 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@45) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@45) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@45) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.inv $h0@@15 this@@57) (_module.OwnedObject.inv $h1@@15 this@@57))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.inv $h1@@15 this@@57))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@58 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.OwnedObject) ($IsAlloc refType this@@58 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@46 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@46) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@46) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@46) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1612|
)) (= (_module.OwnedObject.localUserInv $h0@@16 this@@58) (_module.OwnedObject.localUserInv $h1@@16 this@@58))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1613|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.localUserInv $h1@@16 this@@58))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@59 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.OwnedObject) ($IsAlloc refType this@@59 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@47 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@47) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@47) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@47) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1620|
)) (= (_module.OwnedObject.userInv $h0@@17 this@@59) (_module.OwnedObject.userInv $h1@@17 this@@59))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1621|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.userInv $h1@@17 this@@59))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@60 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.OwnedU32) ($IsAlloc refType this@@60 Tclass._module.OwnedU32 $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@48 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@48) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@48) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@48) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1662|
)) (= (_module.OwnedU32.localUserInv $h0@@18 this@@60) (_module.OwnedU32.localUserInv $h1@@18 this@@60))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1663|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.OwnedU32.localUserInv $h1@@18 this@@60))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@61 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@61 null)) (not true)) (and ($Is refType this@@61 Tclass._module.OwnedU32) ($IsAlloc refType this@@61 Tclass._module.OwnedU32 $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@49 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@49) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@49) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@49) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1669|
)) (= (_module.OwnedU32.userInv $h0@@19 this@@61) (_module.OwnedU32.userInv $h1@@19 this@@61))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1670|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.OwnedU32.userInv $h1@@19 this@@61))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@62 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@62 null)) (not true)) (and ($Is refType this@@62 Tclass._module.Mutex) ($IsAlloc refType this@@62 Tclass._module.Mutex $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@50 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@50) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@50) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@50) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1927|
)) (= (_module.Mutex.localUserInv $h0@@20 this@@62) (_module.Mutex.localUserInv $h1@@20 this@@62))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1928|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Mutex.localUserInv $h1@@20 this@@62))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@63 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@63 null)) (not true)) (and ($Is refType this@@63 Tclass._module.Mutex) ($IsAlloc refType this@@63 Tclass._module.Mutex $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@51 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@51) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@51) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@51) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1934|
)) (= (_module.Mutex.userInv $h0@@21 this@@63) (_module.Mutex.userInv $h1@@21 this@@63))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1935|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Mutex.userInv $h1@@21 this@@63))
)))
(assert (forall (($h0@@22 T@U) ($h1@@22 T@U) (this@@64 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@22) ($IsGoodHeap $h1@@22)) (and (or (not (= this@@64 null)) (not true)) (and ($Is refType this@@64 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@64 Tclass._module.MutexGuardU32 $h0@@22)))) (and ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22))) (=> (forall (($o@@52 T@U) ($f@@23 T@U) ) (!  (=> (and (or (not (= $o@@52 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@52) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@22 $o@@52) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@22 $o@@52) $f@@23)))
 :qid |unknown.0:0|
 :skolemid |2199|
)) (= (_module.MutexGuardU32.localUserInv $h0@@22 this@@64) (_module.MutexGuardU32.localUserInv $h1@@22 this@@64))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2200|
 :pattern ( ($IsHeapAnchor $h0@@22) ($HeapSucc $h0@@22 $h1@@22) (_module.MutexGuardU32.localUserInv $h1@@22 this@@64))
)))
(assert (forall (($h0@@23 T@U) ($h1@@23 T@U) (this@@65 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@23) ($IsGoodHeap $h1@@23)) (and (or (not (= this@@65 null)) (not true)) (and ($Is refType this@@65 Tclass._module.MutexGuardU32) ($IsAlloc refType this@@65 Tclass._module.MutexGuardU32 $h0@@23)))) (and ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23))) (=> (forall (($o@@53 T@U) ($f@@24 T@U) ) (!  (=> (and (or (not (= $o@@53 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@53) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@23 $o@@53) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@23 $o@@53) $f@@24)))
 :qid |unknown.0:0|
 :skolemid |2206|
)) (= (_module.MutexGuardU32.userInv $h0@@23 this@@65) (_module.MutexGuardU32.userInv $h1@@23 this@@65))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2207|
 :pattern ( ($IsHeapAnchor $h0@@23) ($HeapSucc $h0@@23 $h1@@23) (_module.MutexGuardU32.userInv $h1@@23 this@@65))
)))
(assert (forall ((bx@@22 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@22 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@22)) bx@@22) ($Is SetType ($Unbox SetType bx@@22) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@22 (TSet t@@5)))
)))
(assert (forall (($o@@54 T@U) ) (!  (=> ($Is refType $o@@54 Tclass._module.Thread?) ($Is refType $o@@54 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2436|
 :pattern ( ($Is refType $o@@54 Tclass._module.Thread?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.Thread?) ($IsBox bx@@23 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2434|
 :pattern ( ($IsBox bx@@23 Tclass._module.Thread?))
)))
(assert (forall (($o@@55 T@U) ) (!  (=> ($Is refType $o@@55 Tclass._module.OwnedObject?) ($Is refType $o@@55 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@55 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass._module.OwnedObject?) ($IsBox bx@@24 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2438|
 :pattern ( ($IsBox bx@@24 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@56 T@U) ) (!  (=> ($Is refType $o@@56 Tclass._module.OwnedU32?) ($Is refType $o@@56 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2444|
 :pattern ( ($Is refType $o@@56 Tclass._module.OwnedU32?))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass._module.OwnedU32?) ($IsBox bx@@25 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2442|
 :pattern ( ($IsBox bx@@25 Tclass._module.OwnedU32?))
)))
(assert (forall (($o@@57 T@U) ) (!  (=> ($Is refType $o@@57 Tclass._module.Mutex?) ($Is refType $o@@57 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2448|
 :pattern ( ($Is refType $o@@57 Tclass._module.Mutex?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.Mutex?) ($IsBox bx@@26 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2446|
 :pattern ( ($IsBox bx@@26 Tclass._module.Mutex?))
)))
(assert (forall (($o@@58 T@U) ) (!  (=> ($Is refType $o@@58 Tclass._module.MutexGuardU32?) ($Is refType $o@@58 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2452|
 :pattern ( ($Is refType $o@@58 Tclass._module.MutexGuardU32?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.MutexGuardU32?) ($IsBox bx@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2450|
 :pattern ( ($IsBox bx@@27 Tclass._module.MutexGuardU32?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Mutex) Tagclass._module.Mutex))
(assert (= (TagFamily Tclass._module.Mutex) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32) Tagclass._module.MutexGuardU32))
(assert (= (TagFamily Tclass._module.MutexGuardU32) tytagFamily$MutexGuardU32))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedU32) Tagclass._module.OwnedU32))
(assert (= (TagFamily Tclass._module.OwnedU32) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedU32?) Tagclass._module.OwnedU32?))
(assert (= (TagFamily Tclass._module.OwnedU32?) tytagFamily$OwnedU32))
(assert (= (Tag Tclass._module.Mutex?) Tagclass._module.Mutex?))
(assert (= (TagFamily Tclass._module.Mutex?) tytagFamily$Mutex))
(assert (= (Tag Tclass._module.MutexGuardU32?) Tagclass._module.MutexGuardU32?))
(assert (= (TagFamily Tclass._module.MutexGuardU32?) tytagFamily$MutexGuardU32))
(assert (forall (($h@@30 T@U) ($o@@59 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@59 null)) (not true)) ($Is refType $o@@59 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@59) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1496|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@59) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@60 T@U) ) (! (= ($Is refType $o@@60 Tclass._module.Universe?)  (or (= $o@@60 null) (implements$_module.Universe (dtype $o@@60))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@60 Tclass._module.Universe?))
)))
(assert (forall (($o@@61 T@U) ) (! (= ($Is refType $o@@61 Tclass._module.Object?)  (or (= $o@@61 null) (implements$_module.Object (dtype $o@@61))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@61 Tclass._module.Object?))
)))
(assert (forall (($o@@62 T@U) ) (! (= ($Is refType $o@@62 Tclass._module.OwnedObject?)  (or (= $o@@62 null) (implements$_module.OwnedObject (dtype $o@@62))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@62 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@31 T@U) ($o@@63 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@63 null)) (not true)) ($Is refType $o@@63 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@63) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@63) _module.Universe.content)) (TSet Tclass._module.Object) $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@63) _module.Universe.content)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@5 o@@3) (|Set#IsMember| b@@2 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@5 o@@3))
 :pattern ( (|Set#IsMember| b@@2 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@66 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@41 this@@66) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@66 null)) (not true)) (and ($Is refType this@@66 Tclass._module.Thread) ($IsAlloc refType this@@66 Tclass._module.Thread $Heap@@41)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@41 this@@66)) (= (_module.Thread.localInv $Heap@@41 this@@66)  (and true (_module.Object.objectGlobalBaseInv $Heap@@41 this@@66)))))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1230|
 :pattern ( (_module.Thread.localInv $Heap@@41 this@@66) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@67 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@42 this@@67) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@67 null)) (not true)) (and ($Is refType this@@67 Tclass._module.Thread) ($IsAlloc refType this@@67 Tclass._module.Thread $Heap@@42)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@42 this@@67)) (= (_module.Thread.inv $Heap@@42 this@@67)  (and true (_module.Thread.localInv $Heap@@42 this@@67)))))
 :qid |_11MutexGuard2legacydfy.268:19|
 :skolemid |1242|
 :pattern ( (_module.Thread.inv $Heap@@42 this@@67) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@68 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@43 this@@68) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@68 null)) (not true)) (and ($Is refType this@@68 Tclass._module.Object) ($IsAlloc refType this@@68 Tclass._module.Object $Heap@@43)))))) (= (_module.Object.triggerAxioms $Heap@@43 this@@68)  (and (or ($Is refType this@@68 Tclass._module.OwnedObject) ($Is refType this@@68 Tclass._module.Thread)) (not (and ($Is refType this@@68 Tclass._module.OwnedObject) ($Is refType this@@68 Tclass._module.Thread))))))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1091|
 :pattern ( (_module.Object.triggerAxioms $Heap@@43 this@@68) ($IsGoodHeap $Heap@@43))
))))
(assert (forall (($h@@32 T@U) ($o@@64 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@64 null)) (not true)) ($Is refType $o@@64 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@64) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@64) _module.Universe.content)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@44 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0| () T@U)
(declare-fun |mutex#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.SetData_split6)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@44) ($IsHeapAnchor $Heap@@44)) (=> (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@44)) (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@44))) (=> (and (and (and (and (and ($Is refType |mutex#0| Tclass._module.Mutex) ($IsAlloc refType |mutex#0| Tclass._module.Mutex $Heap@@44)) (= 21 $FunctionContextHeight)) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@44 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)))) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@44) (|_module.Universe.globalInv#canCall| $Heap@@44 |universe#0|)) (and (_module.Universe.globalInv $Heap@@44 |universe#0|) (or (not (= |universe#0| null)) (not true))))) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |running#0|)) (or (not (= |universe#0| null)) (not true))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |mutex#0|)) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@65 T@U) ) (!  (=> (and (or (not (= $o@@65 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 $o@@65) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@65) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 $o@@65)) (or (= $o@@65 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType $o@@65)))))
 :qid |_11MutexGuard2legacydfy.653:30|
 :skolemid |538|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@65))
)))) (and (and (and ($HeapSucc $Heap@@44 $Heap@0) (or (not (= |universe#0| null)) (not true))) (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0) (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|))) (and (and (_module.Universe.globalInv $Heap@0 |universe#0|) (or (not (= |universe#0| null)) (not true))) (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0) (= (ControlFlow 0 2) (- 0 1))))))) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@44))))))
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
