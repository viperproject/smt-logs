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
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#8| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.Universe? Tagclass._module.Object class._module.Universe? Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.OwnedObject? tytagFamily$Universe tytagFamily$Thread tytagFamily$Object tytagFamily$OwnedObject field$content field$owner)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap this) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.OwnedObject) ($IsAlloc refType this Tclass._module.OwnedObject $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap this)) (= (_module.OwnedObject.baseFieldsInv $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap this)))))
 :qid |_11MutexGuard2legacydfy.323:19|
 :skolemid |1508|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this@@0) (=> (or (not (= |o#0| this@@0)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@0 |o#0|) (=> (_module.Object.baseFieldsInv $Heap@@0 |o#0|) (|_module.Object.triggerAxioms#canCall| $Heap@@0 |o#0|)))))))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |630|
 :pattern ( (_module.Object.triggerAxioms $Heap@@0 |o#0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
))) (= (_module.Universe.globalBaseInv $Heap@@0 this@@0)  (and true (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (and (and (= (_module.Object.universe |o#0@@0|) this@@0) (or (not (= |o#0@@0| this@@0)) (not true))) (_module.Object.baseFieldsInv $Heap@@0 |o#0@@0|)) (_module.Object.triggerAxioms $Heap@@0 |o#0@@0|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |629|
 :pattern ( (_module.Object.triggerAxioms $Heap@@0 |o#0@@0|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@0 |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_11MutexGuard2legacydfy.17:19|
 :skolemid |631|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
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
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1202|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1629|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@4))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@1 this@@1) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@1 this@@1) (_module.Thread.baseFieldsInv $Heap@@1 this@@1)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1217|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.Thread) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@1 this@@1) (_module.Thread.baseFieldsInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@2 this@@2) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@2 this@@2) (_module.OwnedObject.baseFieldsInv $Heap@@2 this@@2)))
 :qid |_11MutexGuard2legacydfy.245:19|
 :skolemid |1509|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@2 this@@2) (_module.OwnedObject.baseFieldsInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (forall (($o@@0 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Universe? $h@@5)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Universe? $h@@5))
)))
(assert (forall (($o@@1 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@6)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Object? $h@@6))
)))
(assert (forall (($o@@2 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Thread? $h@@7)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Thread? $h@@7))
)))
(assert (forall (($o@@3 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@8)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.OwnedObject? $h@@8))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@3 this@@3) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Object) ($IsAlloc refType this@@3 Tclass._module.Object $Heap@@3)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 (_module.Object.universe this@@3)) _module.Universe.content)) ($Box refType this@@3)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@3 this@@3) (=> (_module.Object.baseFieldsInv $Heap@@3 this@@3) (|_module.Universe.globalBaseInv#canCall| $Heap@@3 (_module.Object.universe this@@3))))) (= (_module.Object.objectGlobalBaseInv $Heap@@3 this@@3)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 (_module.Object.universe this@@3)) _module.Universe.content)) ($Box refType this@@3)) (_module.Object.baseFieldsInv $Heap@@3 this@@3)) (_module.Universe.globalBaseInv $Heap@@3 (_module.Object.universe this@@3))))))
 :qid |_11MutexGuard2legacydfy.202:19|
 :skolemid |1071|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@4 this@@4) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Thread) ($IsAlloc refType this@@4 Tclass._module.Thread $Heap@@4)))))) (= (_module.Thread.baseFieldsInv $Heap@@4 this@@4) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_11MutexGuard2legacydfy.260:19|
 :skolemid |1216|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@4) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2455|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@9 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@5 null)) (not true)) ($Is refType $o@@5 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@5) Tclass._module.Universe $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1066|
 :pattern ( (_module.Object.universe $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@6) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_module.Object.universe $o@@6))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@3 Tclass._module.Thread))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@7 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( ($IsBox bx@@8 Tclass._module.Thread?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Thread)  (and ($Is refType |c#0@@5| Tclass._module.Thread?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@6| Tclass._module.OwnedObject?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1628|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@7 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@7 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2437|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@8 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@8 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2441|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.OwnedObject? $heap@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@5 this@@5) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Object) ($IsAlloc refType this@@5 Tclass._module.Object $Heap@@5)))))) (_module.Object.triggerAxioms $Heap@@5 this@@5))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1089|
 :pattern ( (_module.Object.triggerAxioms $Heap@@5 this@@5))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TBool) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@10 TBool))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@6 this@@6) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Thread) ($IsAlloc refType this@@6 Tclass._module.Thread $Heap@@6)))))) (=> (_module.Thread.localInv $Heap@@6 this@@6) (_module.Object.objectGlobalBaseInv $Heap@@6 this@@6)))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1228|
 :pattern ( (_module.Thread.localInv $Heap@@6 this@@6))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@11) ($IsAllocBox bx@@11 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@11))
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
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.OwnedObject.owner)) Tclass._module.Object $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1497|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@12 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@3)))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass._module.Thread?) ($Is refType $o@@10 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2436|
 :pattern ( ($Is refType $o@@10 Tclass._module.Thread?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Thread?) ($IsBox bx@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2434|
 :pattern ( ($IsBox bx@@13 Tclass._module.Thread?))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass._module.OwnedObject?) ($Is refType $o@@11 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2440|
 :pattern ( ($Is refType $o@@11 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.OwnedObject?) ($IsBox bx@@14 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2438|
 :pattern ( ($IsBox bx@@14 Tclass._module.OwnedObject?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (forall (($h@@11 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1496|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass._module.Universe?)  (or (= $o@@13 null) (implements$_module.Universe (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($Is refType $o@@13 Tclass._module.Universe?))
)))
(assert (forall (($o@@14 T@U) ) (! (= ($Is refType $o@@14 Tclass._module.Object?)  (or (= $o@@14 null) (implements$_module.Object (dtype $o@@14))))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( ($Is refType $o@@14 Tclass._module.Object?))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass._module.OwnedObject?)  (or (= $o@@15 null) (implements$_module.OwnedObject (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( ($Is refType $o@@15 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) _module.Universe.content)) (TSet Tclass._module.Object) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |624|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@7 this@@7) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Thread) ($IsAlloc refType this@@7 Tclass._module.Thread $Heap@@7)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@7 this@@7)) (= (_module.Thread.localInv $Heap@@7 this@@7)  (and true (_module.Object.objectGlobalBaseInv $Heap@@7 this@@7)))))
 :qid |_11MutexGuard2legacydfy.265:19|
 :skolemid |1230|
 :pattern ( (_module.Thread.localInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@8 this@@8) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $Heap@@8)))))) (= (_module.Object.triggerAxioms $Heap@@8 this@@8)  (and (or ($Is refType this@@8 Tclass._module.OwnedObject) ($Is refType this@@8 Tclass._module.Thread)) (not (and ($Is refType this@@8 Tclass._module.OwnedObject) ($Is refType this@@8 Tclass._module.Thread))))))
 :qid |_11MutexGuard2legacydfy.210:19|
 :skolemid |1091|
 :pattern ( (_module.Object.triggerAxioms $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert (forall (($h@@13 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |623|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) _module.Universe.content)))
)))
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
(declare-fun $Heap@@9 () T@U)
(declare-fun this@@9 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Thread.localInv)
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
 (=> (= (ControlFlow 0 0) 15) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@9)) _module.Universe.content)) ($Box refType this@@9)))))) (=> (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@9)) _module.Universe.content)) ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (_module.Object.baseFieldsInv $Heap@@9 this@@9))))) (=> (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (_module.Object.baseFieldsInv $Heap@@9 this@@9)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@9 (_module.Object.universe this@@9)) (or (_module.Universe.globalBaseInv $Heap@@9 (_module.Object.universe this@@9)) (U_2_bool (Lit boolType (bool_2_U true))))))))) (=> (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@9 (_module.Object.universe this@@9)) (or (_module.Universe.globalBaseInv $Heap@@9 (_module.Object.universe this@@9)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.Thread.localInv $Heap@@9 this@@9) (=> (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9) (or (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@@9 (_module.Object.universe this@@9)) (or (_module.Universe.globalBaseInv $Heap@@9 (_module.Object.universe this@@9)) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@9)) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (and (and (= (_module.Object.universe |o#0@@1|) (_module.Object.universe this@@9)) (or (not (= |o#0@@1| (_module.Object.universe this@@9))) (not true))) (_module.Object.baseFieldsInv $Heap@@9 |o#0@@1|)) (_module.Object.triggerAxioms $Heap@@9 |o#0@@1|)))
 :qid |_11MutexGuard2legacydfy.18:16|
 :skolemid |1232|
 :pattern ( (_module.Object.triggerAxioms $Heap@@9 |o#0@@1|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 |o#0@@1|))
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 (_module.Object.universe this@@9)) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))))))))))))
(let ((anon8_correct  (=> (= (_module.Thread.localInv $Heap@@9 this@@9)  (and true (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9))) (=> (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9)) ($Is boolType (bool_2_U (_module.Thread.localInv $Heap@@9 this@@9)) TBool)) (and (=> (= (ControlFlow 0 10) (- 0 11)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (=> (= (ControlFlow 0 10) 6) GeneratedUnifiedExit_correct)))))))
(let ((anon12_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 13) 10)) anon8_correct))))
(let ((anon12_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) ($IsAllocBox ($Box refType this@@9) Tclass._module.Object? $Heap@@9)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@18 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@18) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@18) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@18 $f@@0)))
 :qid |_11MutexGuard2legacydfy.266:8|
 :skolemid |1234|
))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 12) 10))) anon8_correct))))
(let ((anon5_correct true))
(let ((anon11_Else_correct  (=> (and (=> (_module.Thread.localInv $Heap@@9 this@@9) (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9)) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon11_Then_correct  (=> ($IsAllocBox ($Box refType this@@9) Tclass._module.Thread? $Heap@@9) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@9 this@@9) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@9 this@@9) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (and (or (= this@@9 this@@9) (|_module.Thread.localInv#canCall| $Heap@@9 this@@9)) (_module.Thread.localInv $Heap@@9 this@@9)) (=> (and (and ($IsAllocBox ($Box refType this@@9) Tclass._module.Object? $Heap@@9) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@9 this@@9)) (and (_module.Object.objectGlobalBaseInv $Heap@@9 this@@9) (= (ControlFlow 0 2) 1))) anon5_correct)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#8| null $Heap@@9 alloc $Heap@@9 alloc)) (and (and (and (=> (= (ControlFlow 0 14) 12) anon12_Then_correct) (=> (= (ControlFlow 0 14) 13) anon12_Else_correct)) (=> (= (ControlFlow 0 14) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 14) 4) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@9) ($IsHeapAnchor $Heap@@9)) (=> (and (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Thread) ($IsAlloc refType this@@9 Tclass._module.Thread $Heap@@9))) (and (= 8 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
