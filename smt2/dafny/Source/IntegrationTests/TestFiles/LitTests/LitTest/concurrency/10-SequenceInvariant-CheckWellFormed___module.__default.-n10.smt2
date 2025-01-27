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
(declare-fun Tagclass._module.IncreasingCounter () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun Tagclass._module.IncreasingCounter? () T@U)
(declare-fun class._module.Integer? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$IncreasingCounter () T@U)
(declare-fun tytagFamily$Integer () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
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
(declare-fun _module.Universe.baseLegalTransitionsSequence (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.baseLegalTransitionsSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Universe.content () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.OwnedObject.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun _module.Object.universe (T@U) T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun |_module.OwnedObject.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter? () T@U)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.IncreasingCounter () T@U)
(declare-fun Tclass._module.Integer () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.userInv (T@U T@U) Bool)
(declare-fun |_module.Integer.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseFieldsInv (T@U T@U) Bool)
(declare-fun _module.Thread.baseFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Thread.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.baseUserFieldsInv (T@U T@U) Bool)
(declare-fun |_module.Integer.baseUserFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun _module.Thread.localInv (T@U T@U) Bool)
(declare-fun |_module.Thread.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Thread.inv (T@U T@U) Bool)
(declare-fun |_module.Thread.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.inv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.value () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Object.objectGlobalBaseInv (T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseFieldsInv#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.IncreasingCounter Tagclass._module.Integer Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? Tagclass._module.IncreasingCounter? class._module.Integer? Tagclass._module.Integer? tytagFamily$Universe tytagFamily$Thread tytagFamily$IncreasingCounter tytagFamily$Integer tytagFamily$Object tytagFamily$OwnedObject field$content field$owner field$value)
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
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.baseLegalTransitionsSequence#canCall| $prevHeap $Heap this) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $prevHeap)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $prevHeap this) (=> (_module.Universe.globalBaseInv $prevHeap this) (|_module.Universe.globalBaseInv#canCall| $Heap this))) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap $Heap this)  (and (and (and (_module.Universe.globalBaseInv $prevHeap this) (_module.Universe.globalBaseInv $Heap this)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)))) (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.Universe.content)) ($Box refType |o#0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))) (not ($IsAllocBox ($Box refType |o#0|) Tclass._module.Object $prevHeap)))
 :qid |_10SequenceInvariantdfy.43:16|
 :skolemid |658|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this) _module.Universe.content)) ($Box refType |o#0|)))
))))))
 :qid |_10SequenceInvariantdfy.35:22|
 :skolemid |659|
 :pattern ( (_module.Universe.baseLegalTransitionsSequence $prevHeap $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.OwnedObject) ($IsAlloc refType this@@0 Tclass._module.OwnedObject $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (|_module.OwnedObject.baseUserFieldsInv#canCall| $Heap@@0 this@@0)) (= (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (_module.Object.universe this@@0)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.OwnedObject.owner)) (_module.OwnedObject.baseUserFieldsInv $Heap@@0 this@@0)))))
 :qid |_10SequenceInvariantdfy.316:19|
 :skolemid |1444|
 :pattern ( (_module.OwnedObject.baseFieldsInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.IncreasingCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Integer?))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@1) (and (< 11 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@1) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@1) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0@@0|)))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |625|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@1)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@1) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@1 |o#0@@1|))
 :qid |_10SequenceInvariantdfy.22:32|
 :skolemid |624|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_10SequenceInvariantdfy.21:19|
 :skolemid |626|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.IncreasingCounter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( ($Is refType $o@@0 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Integer?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1769|
 :pattern ( ($Is refType $o@@1 Tclass._module.Integer?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2404|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2408|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2412|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2416|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |1177|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1556|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1767|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@7))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@8) ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@8))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@2 this@@2) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@2 this@@2) (_module.IncreasingCounter.localUserInv $Heap@@2 this@@2)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |1588|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@2) (_module.IncreasingCounter.localUserInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@3 this@@3) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Integer)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@3) (_module.Integer.localUserInv $Heap@@3 this@@3)))
 :qid |_10SequenceInvariantdfy.395:19|
 :skolemid |1799|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@3) ($Is refType this@@3 Tclass._module.Integer) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@3) (_module.Integer.localUserInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@4 this@@4) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv $Heap@@4 this@@4) (_module.IncreasingCounter.userInv $Heap@@4 this@@4)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1595|
 :pattern ( (_module.OwnedObject.userInv $Heap@@4 this@@4) ($Is refType this@@4 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.userInv $Heap@@4 this@@4) (_module.IncreasingCounter.userInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@5 this@@5) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Integer)))) (= (_module.OwnedObject.userInv $Heap@@5 this@@5) (_module.Integer.userInv $Heap@@5 this@@5)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1806|
 :pattern ( (_module.OwnedObject.userInv $Heap@@5 this@@5) ($Is refType this@@5 Tclass._module.Integer) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.userInv $Heap@@5 this@@5) (_module.Integer.userInv $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@6 this@@6) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Thread)))) (= (_module.Object.baseFieldsInv $Heap@@6 this@@6) (_module.Thread.baseFieldsInv $Heap@@6 this@@6)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1192|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@6) ($Is refType this@@6 Tclass._module.Thread) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@6 this@@6) (_module.Thread.baseFieldsInv $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@7 this@@7) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@7 this@@7) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@7 this@@7)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1567|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@7 this@@7) ($Is refType this@@7 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@7 this@@7) (_module.IncreasingCounter.baseUserFieldsInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Integer.baseUserFieldsInv#canCall| $Heap@@8 this@@8) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.Integer)))) (= (_module.OwnedObject.baseUserFieldsInv $Heap@@8 this@@8) (_module.Integer.baseUserFieldsInv $Heap@@8 this@@8)))
 :qid |_10SequenceInvariantdfy.392:19|
 :skolemid |1778|
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@8 this@@8) ($Is refType this@@8 Tclass._module.Integer) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.baseUserFieldsInv $Heap@@8 this@@8) (_module.Integer.baseUserFieldsInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.OwnedObject.baseFieldsInv#canCall| $Heap@@9 this@@9) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.OwnedObject)))) (= (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@9 this@@9)))
 :qid |_10SequenceInvariantdfy.239:19|
 :skolemid |1445|
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) ($Is refType this@@9 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@9 this@@9) (_module.OwnedObject.baseFieldsInv $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@10 this@@10) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@10 this@@10) (_module.Thread.localInv $Heap@@10 this@@10)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1206|
 :pattern ( (_module.Object.localInv $Heap@@10 this@@10) ($Is refType this@@10 Tclass._module.Thread) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.Object.localInv $Heap@@10 this@@10) (_module.Thread.localInv $Heap@@10 this@@10) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@11 this@@11) (and (< 8 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@11 this@@11) (_module.OwnedObject.localInv $Heap@@11 this@@11)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1461|
 :pattern ( (_module.Object.localInv $Heap@@11 this@@11) ($Is refType this@@11 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.Object.localInv $Heap@@11 this@@11) (_module.OwnedObject.localInv $Heap@@11 this@@11) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@12 this@@12) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@12 this@@12) (_module.Thread.inv $Heap@@12 this@@12)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1218|
 :pattern ( (_module.Object.inv $Heap@@12 this@@12) ($Is refType this@@12 Tclass._module.Thread) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.Object.inv $Heap@@12 this@@12) (_module.Thread.inv $Heap@@12 this@@12) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@13 this@@13) (and (< 9 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@13 this@@13) (_module.OwnedObject.inv $Heap@@13 this@@13)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1474|
 :pattern ( (_module.Object.inv $Heap@@13 this@@13) ($Is refType this@@13 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.inv $Heap@@13 this@@13) (_module.OwnedObject.inv $Heap@@13 this@@13) ($IsGoodHeap $Heap@@13))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (= (FDim _module.Integer.value) 0))
(assert (= (FieldOfDecl class._module.Integer? field$value) _module.Integer.value))
(assert  (not ($IsGhostField _module.Integer.value)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Universe) ($IsAlloc refType this@@14 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |654|
)) (= (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $h0 this@@14) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $h1 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |655|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.baseLegalTransitionsSequence $prevHeap@@0 $h1 this@@14))
)))
(assert (forall (($o@@3 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@9)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@9))
)))
(assert (forall (($o@@4 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@10)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@10))
)))
(assert (forall (($o@@5 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Thread? $h@@11)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1180|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Thread? $h@@11))
)))
(assert (forall (($o@@6 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@12)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.OwnedObject? $h@@12))
)))
(assert (forall (($o@@7 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.IncreasingCounter? $h@@13)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1559|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.IncreasingCounter? $h@@13))
)))
(assert (forall (($o@@8 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Integer? $h@@14)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1770|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Integer? $h@@14))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@14 this@@15) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $Heap@@14)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 (_module.Object.universe this@@15)) _module.Universe.content)) ($Box refType this@@15)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@14 this@@15) (=> (_module.Object.baseFieldsInv $Heap@@14 this@@15) (|_module.Universe.globalBaseInv#canCall| $Heap@@14 (_module.Object.universe this@@15))))) (= (_module.Object.objectGlobalBaseInv $Heap@@14 this@@15)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 (_module.Object.universe this@@15)) _module.Universe.content)) ($Box refType this@@15)) (_module.Object.baseFieldsInv $Heap@@14 this@@15)) (_module.Universe.globalBaseInv $Heap@@14 (_module.Object.universe this@@15))))))
 :qid |_10SequenceInvariantdfy.196:19|
 :skolemid |1046|
 :pattern ( (_module.Object.objectGlobalBaseInv $Heap@@14 this@@15) ($IsGoodHeap $Heap@@14))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Thread.baseFieldsInv#canCall| $Heap@@15 this@@16) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Thread) ($IsAlloc refType this@@16 Tclass._module.Thread $Heap@@15)))))) (= (_module.Thread.baseFieldsInv $Heap@@15 this@@16) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.254:19|
 :skolemid |1191|
 :pattern ( (_module.Thread.baseFieldsInv $Heap@@15 this@@16) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserFieldsInv#canCall| $Heap@@16 this@@17) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@17 Tclass._module.IncreasingCounter $Heap@@16)))))) (= (_module.IncreasingCounter.baseUserFieldsInv $Heap@@16 this@@17) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.419:19|
 :skolemid |1566|
 :pattern ( (_module.IncreasingCounter.baseUserFieldsInv $Heap@@16 this@@17) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.Integer.baseUserFieldsInv#canCall| $Heap@@17 this@@18) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.Integer) ($IsAlloc refType this@@18 Tclass._module.Integer $Heap@@17)))))) (= (_module.Integer.baseUserFieldsInv $Heap@@17 this@@18) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |_10SequenceInvariantdfy.461:19|
 :skolemid |1777|
 :pattern ( (_module.Integer.baseUserFieldsInv $Heap@@17 this@@18) ($IsGoodHeap $Heap@@17))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@18 this@@19) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@19 Tclass._module.IncreasingCounter $Heap@@18)))))) (= (_module.IncreasingCounter.localUserInv $Heap@@18 this@@19) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.424:19|
 :skolemid |1587|
 :pattern ( (_module.IncreasingCounter.localUserInv $Heap@@18 this@@19) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@19 this@@20) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Integer) ($IsAlloc refType this@@20 Tclass._module.Integer $Heap@@19)))))) (= (_module.Integer.localUserInv $Heap@@19 this@@20) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_10SequenceInvariantdfy.468:19|
 :skolemid |1798|
 :pattern ( (_module.Integer.localUserInv $Heap@@19 this@@20) ($IsGoodHeap $Heap@@19))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@9 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@9 $f@@0))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (or (= $o@@9 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@9)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2427|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@9 $f@@0))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Integer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Integer.value)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1772|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Integer.value)))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@20 this@@21) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.OwnedObject) ($IsAlloc refType this@@21 Tclass._module.OwnedObject $Heap@@20)))))) (and (and (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@20 this@@21) (=> (_module.Object.objectGlobalBaseInv $Heap@@20 this@@21) (|_module.OwnedObject.localUserInv#canCall| $Heap@@20 this@@21))) (= (_module.OwnedObject.localInv $Heap@@20 this@@21)  (and (_module.Object.objectGlobalBaseInv $Heap@@20 this@@21) (_module.OwnedObject.localUserInv $Heap@@20 this@@21)))))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1460|
 :pattern ( (_module.OwnedObject.localInv $Heap@@20 this@@21) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@21 this@@22) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.OwnedObject) ($IsAlloc refType this@@22 Tclass._module.OwnedObject $Heap@@21)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@21 this@@22) (=> (_module.OwnedObject.localInv $Heap@@21 this@@22) (|_module.OwnedObject.userInv#canCall| $Heap@@21 this@@22))) (= (_module.OwnedObject.inv $Heap@@21 this@@22)  (and (_module.OwnedObject.localInv $Heap@@21 this@@22) (_module.OwnedObject.userInv $Heap@@21 this@@22)))))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1473|
 :pattern ( (_module.OwnedObject.inv $Heap@@21 this@@22) ($IsGoodHeap $Heap@@21))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@16 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@11) Tclass._module.Universe $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1041|
 :pattern ( (_module.Object.universe $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@12) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (_module.Object.universe $o@@12))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Thread) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Thread)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@6 Tclass._module.Thread))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.IncreasingCounter) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.IncreasingCounter)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@7 Tclass._module.IncreasingCounter))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@8 Tclass._module.Integer))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@9 Tclass._module.Universe?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@10 Tclass._module.Object))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsBox bx@@11 Tclass._module.Object?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@13 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1178|
 :pattern ( ($IsBox bx@@14 Tclass._module.Thread?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.IncreasingCounter?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |1557|
 :pattern ( ($IsBox bx@@15 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1768|
 :pattern ( ($IsBox bx@@16 Tclass._module.Integer?))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@22 this@@23) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.Universe) ($IsAlloc refType this@@23 Tclass._module.Universe $Heap@@22)))))) (and (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@23) _module.Universe.content)) ($Box refType |o#0@@2|)) (=> (= (_module.Object.universe |o#0@@2|) this@@23) (=> (or (not (= |o#0@@2| this@@23)) (not true)) (and (|_module.Object.baseFieldsInv#canCall| $Heap@@22 |o#0@@2|) (=> (_module.Object.baseFieldsInv $Heap@@22 |o#0@@2|) (|_module.Object.triggerAxioms#canCall| $Heap@@22 |o#0@@2|)))))))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |613|
 :pattern ( (_module.Object.triggerAxioms $Heap@@22 |o#0@@2|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@22 |o#0@@2|))
 :pattern ( (_module.Object.universe |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@23) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (= (_module.Universe.globalBaseInv $Heap@@22 this@@23) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@23) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (and (and (= (_module.Object.universe |o#0@@3|) this@@23) (or (not (= |o#0@@3| this@@23)) (not true))) (_module.Object.baseFieldsInv $Heap@@22 |o#0@@3|)) (_module.Object.triggerAxioms $Heap@@22 |o#0@@3|)))
 :qid |_10SequenceInvariantdfy.17:12|
 :skolemid |612|
 :pattern ( (_module.Object.triggerAxioms $Heap@@22 |o#0@@3|))
 :pattern ( (_module.Object.baseFieldsInv $Heap@@22 |o#0@@3|))
 :pattern ( (_module.Object.universe |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@22 this@@23) _module.Universe.content)) ($Box refType |o#0@@3|)))
)))))
 :qid |_10SequenceInvariantdfy.16:19|
 :skolemid |614|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@22 this@@23) ($IsGoodHeap $Heap@@22))
))))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Thread)  (and ($Is refType |c#0@@7| Tclass._module.Thread?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@8| Tclass._module.OwnedObject?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1555|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.IncreasingCounter)  (and ($Is refType |c#0@@9| Tclass._module.IncreasingCounter?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1766|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.IncreasingCounter))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.IncreasingCounter?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.Integer)  (and ($Is refType |c#0@@10| Tclass._module.Integer?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.Integer?))
)))
(assert (forall (($o@@13 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@13 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2406|
 :pattern ( ($IsAlloc refType $o@@13 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@14 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@14 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2410|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@15 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.IncreasingCounter? $heap@@1) ($IsAlloc refType $o@@15 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2414|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.IncreasingCounter? $heap@@1))
)))
(assert (forall (($o@@16 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass._module.Integer? $heap@@2) ($IsAlloc refType $o@@16 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2418|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.Integer? $heap@@2))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@24 null)) (not true)) ($Is refType this@@24 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@17 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (or (= $o@@17 this@@24) (= $o@@17 (_module.Object.universe this@@24)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@17) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@17) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1108|
)) (= (_module.Object.baseFieldsInv $h0@@0 this@@24) (_module.Object.baseFieldsInv $h1@@0 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1109|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Object.baseFieldsInv $h1@@0 this@@24))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@25 null)) (not true)) ($Is refType this@@25 Tclass._module.Thread))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@18 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (or (= $o@@18 this@@25) (= $o@@18 (_module.Object.universe this@@25)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@18) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@18) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1187|
)) (= (_module.Thread.baseFieldsInv $h0@@1 this@@25) (_module.Thread.baseFieldsInv $h1@@1 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1188|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Thread.baseFieldsInv $h1@@1 this@@25))
)))
(assert (forall (($h0@@2 T@U) ($h1@@2 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@26 null)) (not true)) ($Is refType this@@26 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@19 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (or (= $o@@19 this@@26) (= $o@@19 (_module.Object.universe this@@26)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@19) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@19) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1440|
)) (= (_module.OwnedObject.baseFieldsInv $h0@@2 this@@26) (_module.OwnedObject.baseFieldsInv $h1@@2 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1441|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.OwnedObject.baseFieldsInv $h1@@2 this@@26))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@27 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@27 null)) (not true)) ($Is refType this@@27 Tclass._module.OwnedObject))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@20 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (or (= $o@@20 this@@27) (= $o@@20 (_module.Object.universe this@@27)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@20) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@20) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1529|
)) (= (_module.OwnedObject.baseUserFieldsInv $h0@@3 this@@27) (_module.OwnedObject.baseUserFieldsInv $h1@@3 this@@27))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1530|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.OwnedObject.baseUserFieldsInv $h1@@3 this@@27))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@28 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.IncreasingCounter))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@21 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (or (= $o@@21 this@@28) (= $o@@21 (_module.Object.universe this@@28)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@21) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@21) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |1562|
)) (= (_module.IncreasingCounter.baseUserFieldsInv $h0@@4 this@@28) (_module.IncreasingCounter.baseUserFieldsInv $h1@@4 this@@28))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1563|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.IncreasingCounter.baseUserFieldsInv $h1@@4 this@@28))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@29 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@29 null)) (not true)) ($Is refType this@@29 Tclass._module.Integer))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@22 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (or (= $o@@22 this@@29) (= $o@@22 (_module.Object.universe this@@29)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@22) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@22) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |1773|
)) (= (_module.Integer.baseUserFieldsInv $h0@@5 this@@29) (_module.Integer.baseUserFieldsInv $h1@@5 this@@29))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1774|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Integer.baseUserFieldsInv $h1@@5 this@@29))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@23 this@@30) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Object) ($IsAlloc refType this@@30 Tclass._module.Object $Heap@@23)))))) (_module.Object.triggerAxioms $Heap@@23 this@@30))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1064|
 :pattern ( (_module.Object.triggerAxioms $Heap@@23 this@@30))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@24 this@@31) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@31 Tclass._module.IncreasingCounter $Heap@@24)))))) (=> (_module.IncreasingCounter.userInv $Heap@@24 this@@31) (_module.IncreasingCounter.localUserInv $Heap@@24 this@@31)))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1592|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@24 this@@31))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@25 this@@32) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Integer) ($IsAlloc refType this@@32 Tclass._module.Integer $Heap@@25)))))) (=> (_module.Integer.userInv $Heap@@25 this@@32) (_module.Integer.localUserInv $Heap@@25 this@@32)))
 :qid |_10SequenceInvariantdfy.471:19|
 :skolemid |1803|
 :pattern ( (_module.Integer.userInv $Heap@@25 this@@32))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@26 this@@33) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $Heap@@26)))))) (=> (_module.OwnedObject.userInv $Heap@@26 this@@33) (_module.OwnedObject.localUserInv $Heap@@26 this@@33)))
 :qid |_10SequenceInvariantdfy.397:19|
 :skolemid |1549|
 :pattern ( (_module.OwnedObject.userInv $Heap@@26 this@@33))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@27 this@@34) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Thread) ($IsAlloc refType this@@34 Tclass._module.Thread $Heap@@27)))))) (=> (_module.Thread.localInv $Heap@@27 this@@34) (_module.Object.objectGlobalBaseInv $Heap@@27 this@@34)))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1203|
 :pattern ( (_module.Thread.localInv $Heap@@27 this@@34))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@28 this@@35) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $Heap@@28)))))) (=> (_module.OwnedObject.localInv $Heap@@28 this@@35) (_module.Object.objectGlobalBaseInv $Heap@@28 this@@35)))
 :qid |_10SequenceInvariantdfy.325:19|
 :skolemid |1458|
 :pattern ( (_module.OwnedObject.localInv $Heap@@28 this@@35))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.Object.localInv#canCall| $Heap@@29 this@@36) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.Object) ($IsAlloc refType this@@36 Tclass._module.Object $Heap@@29)))))) (=> (_module.Object.localInv $Heap@@29 this@@36) (_module.Object.objectGlobalBaseInv $Heap@@29 this@@36)))
 :qid |_10SequenceInvariantdfy.241:19|
 :skolemid |1116|
 :pattern ( (_module.Object.localInv $Heap@@29 this@@36))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@30 this@@37) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.Thread) ($IsAlloc refType this@@37 Tclass._module.Thread $Heap@@30)))))) (=> (_module.Thread.inv $Heap@@30 this@@37) (_module.Thread.localInv $Heap@@30 this@@37)))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1215|
 :pattern ( (_module.Thread.inv $Heap@@30 this@@37))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@31 this@@38) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.OwnedObject) ($IsAlloc refType this@@38 Tclass._module.OwnedObject $Heap@@31)))))) (=> (_module.OwnedObject.inv $Heap@@31 this@@38) (_module.OwnedObject.localInv $Heap@@31 this@@38)))
 :qid |_10SequenceInvariantdfy.329:19|
 :skolemid |1471|
 :pattern ( (_module.OwnedObject.inv $Heap@@31 this@@38))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@32 this@@39) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.Object) ($IsAlloc refType this@@39 Tclass._module.Object $Heap@@32)))))) (=> (_module.Object.inv $Heap@@32 this@@39) (_module.Object.localInv $Heap@@32 this@@39)))
 :qid |_10SequenceInvariantdfy.243:19|
 :skolemid |1126|
 :pattern ( (_module.Object.inv $Heap@@32 this@@39))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@18 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@18) ($IsAllocBox bx@@18 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@18))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@40 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@40 null)) (not true)) ($Is refType this@@40 Tclass._module.Object))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@23 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (= $o@@23 this@@40)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@23) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@23) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |1062|
)) (= (_module.Object.triggerAxioms $h0@@6 this@@40) (_module.Object.triggerAxioms $h1@@6 this@@40))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1063|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.triggerAxioms $h1@@6 this@@40))
)))
(assert (forall (($h@@17 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.Integer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@24) _module.Integer.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1771|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@24) _module.Integer.value)))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@41 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@41 null)) (not true)) ($Is refType this@@41 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@25 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (or (= $o@@25 this@@41) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 this@@41) _module.Universe.content)) ($Box refType $o@@25)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@25) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@25) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |608|
)) (= (_module.Universe.globalBaseInv $h0@@7 this@@41) (_module.Universe.globalBaseInv $h1@@7 this@@41))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |609|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalBaseInv $h1@@7 this@@41))
)))
(assert (forall (($h@@18 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@26 null)) (not true)) ($Is refType $o@@26 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@26) _module.OwnedObject.owner)) Tclass._module.Object $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1427|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@26) _module.OwnedObject.owner)))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@42 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Universe) ($IsAlloc refType this@@42 Tclass._module.Universe $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@27 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@27) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@27) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@27) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.Universe.globalInv $h0@@8 this@@42) (_module.Universe.globalInv $h1@@8 this@@42))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Universe.globalInv $h1@@8 this@@42))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@43 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Object) ($IsAlloc refType this@@43 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@28 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@28) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@28) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@28) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |1042|
)) (= (_module.Object.objectGlobalBaseInv $h0@@9 this@@43) (_module.Object.objectGlobalBaseInv $h1@@9 this@@43))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1043|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.objectGlobalBaseInv $h1@@9 this@@43))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@44 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@44 null)) (not true)) (and ($Is refType this@@44 Tclass._module.Object) ($IsAlloc refType this@@44 Tclass._module.Object $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@29 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@29) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@29) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |1114|
)) (= (_module.Object.localInv $h0@@10 this@@44) (_module.Object.localInv $h1@@10 this@@44))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1115|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Object.localInv $h1@@10 this@@44))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@45 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@45 null)) (not true)) (and ($Is refType this@@45 Tclass._module.Object) ($IsAlloc refType this@@45 Tclass._module.Object $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@30 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@30) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@30) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |1124|
)) (= (_module.Object.inv $h0@@11 this@@45) (_module.Object.inv $h1@@11 this@@45))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Object.inv $h1@@11 this@@45))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@46 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@46 null)) (not true)) (and ($Is refType this@@46 Tclass._module.Thread) ($IsAlloc refType this@@46 Tclass._module.Thread $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@31 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@31) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@31) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |1201|
)) (= (_module.Thread.localInv $h0@@12 this@@46) (_module.Thread.localInv $h1@@12 this@@46))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1202|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.Thread.localInv $h1@@12 this@@46))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@47 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@47 null)) (not true)) (and ($Is refType this@@47 Tclass._module.Thread) ($IsAlloc refType this@@47 Tclass._module.Thread $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@32 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@32) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@32) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |1213|
)) (= (_module.Thread.inv $h0@@13 this@@47) (_module.Thread.inv $h1@@13 this@@47))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1214|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.Thread.inv $h1@@13 this@@47))
)))
(assert (forall (($h0@@14 T@U) ($h1@@14 T@U) (this@@48 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@14) ($IsGoodHeap $h1@@14)) (and (or (not (= this@@48 null)) (not true)) (and ($Is refType this@@48 Tclass._module.OwnedObject) ($IsAlloc refType this@@48 Tclass._module.OwnedObject $h0@@14)))) (and ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14))) (=> (forall (($o@@33 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@14 $o@@33) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@14 $o@@33) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |1456|
)) (= (_module.OwnedObject.localInv $h0@@14 this@@48) (_module.OwnedObject.localInv $h1@@14 this@@48))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1457|
 :pattern ( ($IsHeapAnchor $h0@@14) ($HeapSucc $h0@@14 $h1@@14) (_module.OwnedObject.localInv $h1@@14 this@@48))
)))
(assert (forall (($h0@@15 T@U) ($h1@@15 T@U) (this@@49 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@15) ($IsGoodHeap $h1@@15)) (and (or (not (= this@@49 null)) (not true)) (and ($Is refType this@@49 Tclass._module.OwnedObject) ($IsAlloc refType this@@49 Tclass._module.OwnedObject $h0@@15)))) (and ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15))) (=> (forall (($o@@34 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@15 $o@@34) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@15 $o@@34) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |1469|
)) (= (_module.OwnedObject.inv $h0@@15 this@@49) (_module.OwnedObject.inv $h1@@15 this@@49))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1470|
 :pattern ( ($IsHeapAnchor $h0@@15) ($HeapSucc $h0@@15 $h1@@15) (_module.OwnedObject.inv $h1@@15 this@@49))
)))
(assert (forall (($h0@@16 T@U) ($h1@@16 T@U) (this@@50 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@16) ($IsGoodHeap $h1@@16)) (and (or (not (= this@@50 null)) (not true)) (and ($Is refType this@@50 Tclass._module.OwnedObject) ($IsAlloc refType this@@50 Tclass._module.OwnedObject $h0@@16)))) (and ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16))) (=> (forall (($o@@35 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@16 $o@@35) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@16 $o@@35) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |1539|
)) (= (_module.OwnedObject.localUserInv $h0@@16 this@@50) (_module.OwnedObject.localUserInv $h1@@16 this@@50))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1540|
 :pattern ( ($IsHeapAnchor $h0@@16) ($HeapSucc $h0@@16 $h1@@16) (_module.OwnedObject.localUserInv $h1@@16 this@@50))
)))
(assert (forall (($h0@@17 T@U) ($h1@@17 T@U) (this@@51 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@17) ($IsGoodHeap $h1@@17)) (and (or (not (= this@@51 null)) (not true)) (and ($Is refType this@@51 Tclass._module.OwnedObject) ($IsAlloc refType this@@51 Tclass._module.OwnedObject $h0@@17)))) (and ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17))) (=> (forall (($o@@36 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@17 $o@@36) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@17 $o@@36) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |1547|
)) (= (_module.OwnedObject.userInv $h0@@17 this@@51) (_module.OwnedObject.userInv $h1@@17 this@@51))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1548|
 :pattern ( ($IsHeapAnchor $h0@@17) ($HeapSucc $h0@@17 $h1@@17) (_module.OwnedObject.userInv $h1@@17 this@@51))
)))
(assert (forall (($h0@@18 T@U) ($h1@@18 T@U) (this@@52 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@18) ($IsGoodHeap $h1@@18)) (and (or (not (= this@@52 null)) (not true)) (and ($Is refType this@@52 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@52 Tclass._module.IncreasingCounter $h0@@18)))) (and ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18))) (=> (forall (($o@@37 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@18 $o@@37) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@18 $o@@37) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |1583|
)) (= (_module.IncreasingCounter.localUserInv $h0@@18 this@@52) (_module.IncreasingCounter.localUserInv $h1@@18 this@@52))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1584|
 :pattern ( ($IsHeapAnchor $h0@@18) ($HeapSucc $h0@@18 $h1@@18) (_module.IncreasingCounter.localUserInv $h1@@18 this@@52))
)))
(assert (forall (($h0@@19 T@U) ($h1@@19 T@U) (this@@53 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@19) ($IsGoodHeap $h1@@19)) (and (or (not (= this@@53 null)) (not true)) (and ($Is refType this@@53 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@53 Tclass._module.IncreasingCounter $h0@@19)))) (and ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19))) (=> (forall (($o@@38 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@19 $o@@38) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@19 $o@@38) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |1590|
)) (= (_module.IncreasingCounter.userInv $h0@@19 this@@53) (_module.IncreasingCounter.userInv $h1@@19 this@@53))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1591|
 :pattern ( ($IsHeapAnchor $h0@@19) ($HeapSucc $h0@@19 $h1@@19) (_module.IncreasingCounter.userInv $h1@@19 this@@53))
)))
(assert (forall (($h0@@20 T@U) ($h1@@20 T@U) (this@@54 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@20) ($IsGoodHeap $h1@@20)) (and (or (not (= this@@54 null)) (not true)) (and ($Is refType this@@54 Tclass._module.Integer) ($IsAlloc refType this@@54 Tclass._module.Integer $h0@@20)))) (and ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20))) (=> (forall (($o@@39 T@U) ($f@@21 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@20 $o@@39) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@20 $o@@39) $f@@21)))
 :qid |unknown.0:0|
 :skolemid |1794|
)) (= (_module.Integer.localUserInv $h0@@20 this@@54) (_module.Integer.localUserInv $h1@@20 this@@54))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1795|
 :pattern ( ($IsHeapAnchor $h0@@20) ($HeapSucc $h0@@20 $h1@@20) (_module.Integer.localUserInv $h1@@20 this@@54))
)))
(assert (forall (($h0@@21 T@U) ($h1@@21 T@U) (this@@55 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@21) ($IsGoodHeap $h1@@21)) (and (or (not (= this@@55 null)) (not true)) (and ($Is refType this@@55 Tclass._module.Integer) ($IsAlloc refType this@@55 Tclass._module.Integer $h0@@21)))) (and ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21))) (=> (forall (($o@@40 T@U) ($f@@22 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@21 $o@@40) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@21 $o@@40) $f@@22)))
 :qid |unknown.0:0|
 :skolemid |1801|
)) (= (_module.Integer.userInv $h0@@21 this@@55) (_module.Integer.userInv $h1@@21 this@@55))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1802|
 :pattern ( ($IsHeapAnchor $h0@@21) ($HeapSucc $h0@@21 $h1@@21) (_module.Integer.userInv $h1@@21 this@@55))
)))
(assert (forall ((bx@@19 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@19 (TSet t@@5)))
)))
(assert (forall (($o@@41 T@U) ) (!  (=> ($Is refType $o@@41 Tclass._module.Thread?) ($Is refType $o@@41 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2405|
 :pattern ( ($Is refType $o@@41 Tclass._module.Thread?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.Thread?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2403|
 :pattern ( ($IsBox bx@@20 Tclass._module.Thread?))
)))
(assert (forall (($o@@42 T@U) ) (!  (=> ($Is refType $o@@42 Tclass._module.OwnedObject?) ($Is refType $o@@42 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2409|
 :pattern ( ($Is refType $o@@42 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.OwnedObject?) ($IsBox bx@@21 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2407|
 :pattern ( ($IsBox bx@@21 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@43 T@U) ) (!  (=> ($Is refType $o@@43 Tclass._module.IncreasingCounter?) ($Is refType $o@@43 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2413|
 :pattern ( ($Is refType $o@@43 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.IncreasingCounter?) ($IsBox bx@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2411|
 :pattern ( ($IsBox bx@@22 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@44 T@U) ) (!  (=> ($Is refType $o@@44 Tclass._module.Integer?) ($Is refType $o@@44 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2417|
 :pattern ( ($Is refType $o@@44 Tclass._module.Integer?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.Integer?) ($IsBox bx@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2415|
 :pattern ( ($IsBox bx@@23 Tclass._module.Integer?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Thread) Tagclass._module.Thread))
(assert (= (TagFamily Tclass._module.Thread) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter) Tagclass._module.IncreasingCounter))
(assert (= (TagFamily Tclass._module.IncreasingCounter) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer) Tagclass._module.Integer))
(assert (= (TagFamily Tclass._module.Integer) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter?) Tagclass._module.IncreasingCounter?))
(assert (= (TagFamily Tclass._module.IncreasingCounter?) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer?) Tagclass._module.Integer?))
(assert (= (TagFamily Tclass._module.Integer?) tytagFamily$Integer))
(assert (forall (($h@@19 T@U) ($o@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@45 null)) (not true)) ($Is refType $o@@45 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@45) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1426|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@45) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@46 T@U) ) (! (= ($Is refType $o@@46 Tclass._module.Universe?)  (or (= $o@@46 null) (implements$_module.Universe (dtype $o@@46))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType $o@@46 Tclass._module.Universe?))
)))
(assert (forall (($o@@47 T@U) ) (! (= ($Is refType $o@@47 Tclass._module.Object?)  (or (= $o@@47 null) (implements$_module.Object (dtype $o@@47))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($Is refType $o@@47 Tclass._module.Object?))
)))
(assert (forall (($o@@48 T@U) ) (! (= ($Is refType $o@@48 Tclass._module.OwnedObject?)  (or (= $o@@48 null) (implements$_module.OwnedObject (dtype $o@@48))))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( ($Is refType $o@@48 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@20 T@U) ($o@@49 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@49 null)) (not true)) ($Is refType $o@@49 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@49) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@49) _module.Universe.content)) (TSet Tclass._module.Object) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |607|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@49) _module.Universe.content)))
)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@56 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@33 this@@56) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@56 null)) (not true)) (and ($Is refType this@@56 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@56 Tclass._module.IncreasingCounter $Heap@@33)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@33 this@@56)) (= (_module.IncreasingCounter.userInv $Heap@@33 this@@56)  (and true (_module.IncreasingCounter.localUserInv $Heap@@33 this@@56)))))
 :qid |_10SequenceInvariantdfy.427:19|
 :skolemid |1594|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@33 this@@56) ($IsGoodHeap $Heap@@33))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@57 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@34 this@@57) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@57 null)) (not true)) (and ($Is refType this@@57 Tclass._module.Integer) ($IsAlloc refType this@@57 Tclass._module.Integer $Heap@@34)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Integer.localUserInv#canCall| $Heap@@34 this@@57)) (= (_module.Integer.userInv $Heap@@34 this@@57)  (and true (_module.Integer.localUserInv $Heap@@34 this@@57)))))
 :qid |_10SequenceInvariantdfy.471:19|
 :skolemid |1805|
 :pattern ( (_module.Integer.userInv $Heap@@34 this@@57) ($IsGoodHeap $Heap@@34))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@58 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@35 this@@58) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@58 null)) (not true)) (and ($Is refType this@@58 Tclass._module.Thread) ($IsAlloc refType this@@58 Tclass._module.Thread $Heap@@35)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.objectGlobalBaseInv#canCall| $Heap@@35 this@@58)) (= (_module.Thread.localInv $Heap@@35 this@@58)  (and true (_module.Object.objectGlobalBaseInv $Heap@@35 this@@58)))))
 :qid |_10SequenceInvariantdfy.259:19|
 :skolemid |1205|
 :pattern ( (_module.Thread.localInv $Heap@@35 this@@58) ($IsGoodHeap $Heap@@35))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@59 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@36 this@@59) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@59 null)) (not true)) (and ($Is refType this@@59 Tclass._module.Thread) ($IsAlloc refType this@@59 Tclass._module.Thread $Heap@@36)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@36 this@@59)) (= (_module.Thread.inv $Heap@@36 this@@59)  (and true (_module.Thread.localInv $Heap@@36 this@@59)))))
 :qid |_10SequenceInvariantdfy.262:19|
 :skolemid |1217|
 :pattern ( (_module.Thread.inv $Heap@@36 this@@59) ($IsGoodHeap $Heap@@36))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@60 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@37 this@@60) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@60 null)) (not true)) (and ($Is refType this@@60 Tclass._module.Object) ($IsAlloc refType this@@60 Tclass._module.Object $Heap@@37)))))) (= (_module.Object.triggerAxioms $Heap@@37 this@@60)  (and (or ($Is refType this@@60 Tclass._module.OwnedObject) ($Is refType this@@60 Tclass._module.Thread)) (not (and ($Is refType this@@60 Tclass._module.OwnedObject) ($Is refType this@@60 Tclass._module.Thread))))))
 :qid |_10SequenceInvariantdfy.204:19|
 :skolemid |1066|
 :pattern ( (_module.Object.triggerAxioms $Heap@@37 this@@60) ($IsGoodHeap $Heap@@37))
))))
(assert (forall (($h@@21 T@U) ($o@@50 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@50 null)) (not true)) ($Is refType $o@@50 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@50) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@50) _module.Universe.content)))
)))
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
(declare-fun $Heap@@38 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0| () T@U)
(declare-fun |counter#0| () T@U)
(declare-fun |remaining#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.Incrementer_split10)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and (and (and ($IsGoodHeap $Heap@@38) ($IsHeapAnchor $Heap@@38)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@38))) (and (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@38)) (and ($Is refType |counter#0| Tclass._module.IncreasingCounter) ($IsAlloc refType |counter#0| Tclass._module.IncreasingCounter $Heap@@38)))) (=> (and (and (and (and (and (and ($Is refType |remaining#0| Tclass._module.Integer) ($IsAlloc refType |remaining#0| Tclass._module.Integer $Heap@@38)) (= 18 $FunctionContextHeight)) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@38 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |universe#0|) _module.Universe.content)))) (or (not (= |universe#0| null)) (not true)))) (and (and ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@@38) (|_module.Universe.globalInv#canCall| $Heap@@38 |universe#0|)) (and (_module.Universe.globalInv $Heap@@38 |universe#0|) (or (not (= |universe#0| null)) (not true))))) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |universe#0|) _module.Universe.content)) ($Box refType |running#0|)) (or (not (= |universe#0| null)) (not true))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|)) (or (not (= |universe#0| null)) (not true)))) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |universe#0|) _module.Universe.content)) ($Box refType |remaining#0|)) (or (not (= |remaining#0| null)) (not true))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |remaining#0|) _module.OwnedObject.owner)) |running#0|) (or (not (= |remaining#0| null)) (not true)))))) (and (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |remaining#0|) _module.Integer.value))) (LitInt 10)) (or (not (= |universe#0| null)) (not true))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (forall (($o@@51 T@U) ) (!  (=> (and (or (not (= $o@@51 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@51) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@51) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 $o@@51)) (or (= $o@@51 |universe#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@38 |universe#0|) _module.Universe.content)) ($Box refType $o@@51)))))
 :qid |_10SequenceInvariantdfy.617:30|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@51))
)) ($HeapSucc $Heap@@38 $Heap@0)) (and (or (not (= |universe#0| null)) (not true)) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0)))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@0 |universe#0|) (_module.Universe.globalInv $Heap@0 |universe#0|)) (and (or (not (= |universe#0| null)) (not true)) ($IsAllocBox ($Box refType |universe#0|) Tclass._module.Universe? $Heap@0))) (and (and ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@38) (|_module.Universe.baseLegalTransitionsSequence#canCall| $Heap@@38 $Heap@0 |universe#0|)) (and (_module.Universe.baseLegalTransitionsSequence $Heap@@38 $Heap@0 |universe#0|) (= (ControlFlow 0 2) (- 0 1))))))) (or (not (= |remaining#0| null)) (not true))))))
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
