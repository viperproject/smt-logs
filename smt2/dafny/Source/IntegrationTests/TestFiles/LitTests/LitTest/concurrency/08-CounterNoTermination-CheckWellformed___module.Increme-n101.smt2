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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
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
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.AtomicCounter? () T@U)
(declare-fun Tclass._module.Remaining? () T@U)
(declare-fun Tclass._module.IncrementerMethod? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.AtomicCounter () T@U)
(declare-fun Tclass._module.Remaining () T@U)
(declare-fun Tclass._module.IncrementerMethod () T@U)
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
(declare-fun _module.IncrementerMethod.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.userInv (T@U T@U) Bool)
(declare-fun |_module.IncrementerMethod.userInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localInv#canCall| (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.counter () T@U)
(declare-fun _module.OwnedObject.localInv (T@U T@U) Bool)
(declare-fun _module.IncrementerMethod.remaining () T@U)
(declare-fun _module.AtomicCounter.value () T@U)
(declare-fun _module.Remaining.value () T@U)
(declare-fun _module.IncrementerMethod.programCounter () T@U)
(declare-fun _module.IncrementerMethod.initial__value () T@U)
(declare-fun _module.IncrementerMethod.final__value () T@U)
(declare-fun _module.IncrementerMethod.i () T@U)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun implements$_module.Object (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.OwnedObject class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.OwnedObject? class._module.AtomicCounter? Tagclass._module.AtomicCounter? Tagclass._module.AtomicCounter class._module.Remaining? Tagclass._module.Remaining? Tagclass._module.Remaining class._module.IncrementerMethod? Tagclass._module.IncrementerMethod? Tagclass._module.IncrementerMethod tytagFamily$Universe tytagFamily$OwnedObject tytagFamily$Object tytagFamily$AtomicCounter tytagFamily$Remaining tytagFamily$IncrementerMethod field$content field$owner field$value field$programCounter field$counter field$remaining field$initial_value field$final_value field$i)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
 :qid |_08CounterNoTerminationdfy.34:12|
 :skolemid |498|
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
))))
 :qid |_08CounterNoTerminationdfy.33:19|
 :skolemid |499|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.OwnedObject Tclass._module.AtomicCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Remaining?))
(assert (implements$_module.OwnedObject Tclass._module.IncrementerMethod?))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.AtomicCounter?)  (or (= $o null) (= (dtype $o) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( ($Is refType $o Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Remaining?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($Is refType $o@@0 Tclass._module.Remaining?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.IncrementerMethod?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( ($Is refType $o@@1 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.OwnedObject? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |2254|
 :pattern ( ($IsAllocBox bx Tclass._module.OwnedObject? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2262|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.AtomicCounter? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2266|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.Remaining? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2270|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.IncrementerMethod? $h@@2))
)))
(assert (forall ((|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@3))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@3))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@4))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@5) ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.OwnedObject? $h@@5))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@6) ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1448|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.AtomicCounter? $h@@6))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@7) ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1642|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Remaining? $h@@7))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@8) ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@8))
 :qid |unknown.0:0|
 :skolemid |2244|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.IncrementerMethod? $h@@8))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@0 this@@0) (_module.AtomicCounter.baseUserInv $Heap@@0 this@@0)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1280|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@0 this@@0) ($Is refType this@@0 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@0))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@0 this@@0) (_module.AtomicCounter.baseUserInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.AtomicCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@1 this@@1) (_module.AtomicCounter.localUserInv $Heap@@1 this@@1)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1287|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.AtomicCounter) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@1 this@@1) (_module.AtomicCounter.localUserInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@2 this@@2) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Remaining)))) (= (_module.OwnedObject.baseUserInv $Heap@@2 this@@2) (_module.Remaining.baseUserInv $Heap@@2 this@@2)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1474|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.Remaining) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@2 this@@2) (_module.Remaining.baseUserInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@3 this@@3) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Remaining)))) (= (_module.OwnedObject.localUserInv $Heap@@3 this@@3) (_module.Remaining.localUserInv $Heap@@3 this@@3)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1481|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@3) ($Is refType this@@3 Tclass._module.Remaining) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@3 this@@3) (_module.Remaining.localUserInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@4 this@@4) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.IncrementerMethod.localUserInv $Heap@@4 this@@4)))
 :qid |_08CounterNoTerminationdfy.222:19|
 :skolemid |1685|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) ($Is refType this@@4 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.IncrementerMethod.localUserInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@5 this@@5) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.IncrementerMethod)))) (= (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) (_module.IncrementerMethod.baseUserInv $Heap@@5 this@@5)))
 :qid |_08CounterNoTerminationdfy.221:19|
 :skolemid |1678|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) ($Is refType this@@5 Tclass._module.IncrementerMethod) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) (_module.IncrementerMethod.baseUserInv $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@6 this@@6) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@6 Tclass._module.IncrementerMethod $Heap@@6)))))) (and (and (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@6 this@@6) (=> (_module.IncrementerMethod.localUserInv $Heap@@6 this@@6) (and (|_module.OwnedObject.localInv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) _module.IncrementerMethod.remaining))))))) (= (_module.IncrementerMethod.userInv $Heap@@6 this@@6)  (and (and (_module.IncrementerMethod.localUserInv $Heap@@6 this@@6) (_module.OwnedObject.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) _module.IncrementerMethod.remaining)))))))
 :qid |_08CounterNoTerminationdfy.446:19|
 :skolemid |1691|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
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
(assert (forall (($o@@2 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@9)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Universe? $h@@9))
)))
(assert (forall (($o@@3 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@10)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@10))
)))
(assert (forall (($o@@4 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@11)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.OwnedObject? $h@@11))
)))
(assert (forall (($o@@5 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $h@@12)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.AtomicCounter? $h@@12))
)))
(assert (forall (($o@@6 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Remaining? $h@@13)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Remaining? $h@@13))
)))
(assert (forall (($o@@7 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.IncrementerMethod? $h@@14)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.IncrementerMethod? $h@@14))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@7 this@@7) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.OwnedObject) ($IsAlloc refType this@@7 Tclass._module.OwnedObject $Heap@@7)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@7 this@@7) (=> (_module.Object.baseInv $Heap@@7 this@@7) (=> (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) _module.OwnedObject.owner))) (_module.Object.universe this@@7)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 (_module.Object.universe this@@7)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@7 this@@7) (=> (_module.OwnedObject.baseUserInv $Heap@@7 this@@7) (|_module.OwnedObject.localUserInv#canCall| $Heap@@7 this@@7))))))) (= (_module.OwnedObject.localInv $Heap@@7 this@@7)  (and (and (and (and (_module.Object.baseInv $Heap@@7 this@@7) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) _module.OwnedObject.owner))) (_module.Object.universe this@@7))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 (_module.Object.universe this@@7)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@7) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@7 this@@7)) (_module.OwnedObject.localUserInv $Heap@@7 this@@7)))))
 :qid |_08CounterNoTerminationdfy.169:19|
 :skolemid |968|
 :pattern ( (_module.OwnedObject.localInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.IncrementerMethod.baseUserInv#canCall| $Heap@@8 this@@8) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@8 Tclass._module.IncrementerMethod $Heap@@8)))))) (= (_module.IncrementerMethod.baseUserInv $Heap@@8 this@@8)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Object.universe this@@8)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@8) _module.IncrementerMethod.counter)) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@8) _module.IncrementerMethod.counter))) (_module.Object.universe this@@8))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Object.universe this@@8)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@8) _module.IncrementerMethod.remaining))) (= (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 this@@8) _module.IncrementerMethod.remaining))) (_module.Object.universe this@@8)))))
 :qid |_08CounterNoTerminationdfy.426:19|
 :skolemid |1677|
 :pattern ( (_module.IncrementerMethod.baseUserInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.AtomicCounter.baseUserInv#canCall| $Heap@@9 this@@9) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.AtomicCounter) ($IsAlloc refType this@@9 Tclass._module.AtomicCounter $Heap@@9)))))) (= (_module.AtomicCounter.baseUserInv $Heap@@9 this@@9) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.295:19|
 :skolemid |1279|
 :pattern ( (_module.AtomicCounter.baseUserInv $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.AtomicCounter.localUserInv#canCall| $Heap@@10 this@@10) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.AtomicCounter) ($IsAlloc refType this@@10 Tclass._module.AtomicCounter $Heap@@10)))))) (= (_module.AtomicCounter.localUserInv $Heap@@10 this@@10) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.299:19|
 :skolemid |1286|
 :pattern ( (_module.AtomicCounter.localUserInv $Heap@@10 this@@10) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Remaining.baseUserInv#canCall| $Heap@@11 this@@11) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Remaining) ($IsAlloc refType this@@11 Tclass._module.Remaining $Heap@@11)))))) (= (_module.Remaining.baseUserInv $Heap@@11 this@@11) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.341:19|
 :skolemid |1473|
 :pattern ( (_module.Remaining.baseUserInv $Heap@@11 this@@11) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Remaining.localUserInv#canCall| $Heap@@12 this@@12) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@12) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Remaining) ($IsAlloc refType this@@12 Tclass._module.Remaining $Heap@@12)))))) (= (_module.Remaining.localUserInv $Heap@@12 this@@12) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_08CounterNoTerminationdfy.345:19|
 :skolemid |1480|
 :pattern ( (_module.Remaining.localUserInv $Heap@@12 this@@12) ($IsGoodHeap $Heap@@12))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@8) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2275|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@8 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@15 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.AtomicCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@9) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@9) _module.AtomicCounter.value)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1259|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@9) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@16 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Remaining?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) _module.Remaining.value)) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1453|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@10) _module.Remaining.value)))
)))
(assert (forall (($h@@17 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) _module.IncrementerMethod.programCounter)) TInt $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1647|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@11) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@18 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@12) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@12) _module.IncrementerMethod.initial__value)) TInt $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1653|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@12) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@19 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@13) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@13) _module.IncrementerMethod.final__value)) TInt $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1655|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@13) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@20 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@14) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@14) _module.IncrementerMethod.i)) TInt $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1657|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@14) _module.IncrementerMethod.i)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@21 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@15) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@15) Tclass._module.Universe $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@15) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@16) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@16))
))))
(assert (forall (($h@@22 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@17) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@17) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@23 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.IncrementerMethod?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@18) _module.IncrementerMethod.remaining)) Tclass._module.Remaining))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1650|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@18) _module.IncrementerMethod.remaining)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@5 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@9 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.AtomicCounter?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.AtomicCounter?)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( ($IsBox bx@@10 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.AtomicCounter) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.AtomicCounter)))
 :qid |unknown.0:0|
 :skolemid |1261|
 :pattern ( ($IsBox bx@@11 Tclass._module.AtomicCounter))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Remaining?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Remaining?)))
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($IsBox bx@@12 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.Remaining) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.Remaining)))
 :qid |unknown.0:0|
 :skolemid |1455|
 :pattern ( ($IsBox bx@@13 Tclass._module.Remaining))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.IncrementerMethod?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.IncrementerMethod?)))
 :qid |unknown.0:0|
 :skolemid |1643|
 :pattern ( ($IsBox bx@@14 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.IncrementerMethod) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.IncrementerMethod)))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( ($IsBox bx@@15 Tclass._module.IncrementerMethod))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@7| Tclass._module.OwnedObject?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1061|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.AtomicCounter)  (and ($Is refType |c#0@@8| Tclass._module.AtomicCounter?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.AtomicCounter?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Remaining)  (and ($Is refType |c#0@@9| Tclass._module.Remaining?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1641|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Remaining?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.IncrementerMethod)  (and ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2243|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.IncrementerMethod?))
)))
(assert (forall (($h@@24 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@19) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@19) _module.IncrementerMethod.counter)) Tclass._module.AtomicCounter $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@19) _module.IncrementerMethod.counter)))
)))
(assert (forall (($h@@25 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.IncrementerMethod?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@20) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@20) _module.IncrementerMethod.remaining)) Tclass._module.Remaining $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1651|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@20) _module.IncrementerMethod.remaining)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@13 this@@13) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@13) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $Heap@@13)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (|_module.Universe.globalBaseInv#canCall| $Heap@@13 (_module.Object.universe this@@13))) (= (_module.Object.baseInv $Heap@@13 this@@13)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 (_module.Object.universe this@@13)) _module.Universe.content)) ($Box refType this@@13)) (_module.Universe.globalBaseInv $Heap@@13 (_module.Object.universe this@@13))))))
 :qid |_08CounterNoTerminationdfy.90:19|
 :skolemid |680|
 :pattern ( (_module.Object.baseInv $Heap@@13 this@@13) ($IsGoodHeap $Heap@@13))
))))
(assert (forall (($o@@21 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $heap) ($IsAlloc refType $o@@21 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($IsAlloc refType $o@@21 Tclass._module.OwnedObject? $heap))
)))
(assert (forall (($o@@22 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass._module.AtomicCounter? $heap@@0) ($IsAlloc refType $o@@22 Tclass._module.OwnedObject? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |2264|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.AtomicCounter? $heap@@0))
)))
(assert (forall (($o@@23 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass._module.Remaining? $heap@@1) ($IsAlloc refType $o@@23 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |2268|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.Remaining? $heap@@1))
)))
(assert (forall (($o@@24 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@24 Tclass._module.IncrementerMethod? $heap@@2) ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |2272|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.IncrementerMethod? $heap@@2))
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
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 TBool) (and (= ($Box boolType ($Unbox boolType bx@@17)) bx@@17) ($Is boolType ($Unbox boolType bx@@17) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@17 TBool))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.IncrementerMethod.userInv#canCall| $Heap@@14 this@@14) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@14 Tclass._module.IncrementerMethod $Heap@@14)))))) (=> (_module.IncrementerMethod.userInv $Heap@@14 this@@14) (_module.IncrementerMethod.localUserInv $Heap@@14 this@@14)))
 :qid |_08CounterNoTerminationdfy.446:19|
 :skolemid |1689|
 :pattern ( (_module.IncrementerMethod.userInv $Heap@@14 this@@14))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@15 this@@15) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@15 Tclass._module.IncrementerMethod $Heap@@15)))))) (= (_module.IncrementerMethod.localUserInv $Heap@@15 this@@15)  (and (and (and (and (and (and (and (and (and (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@15) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 1)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 0))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 2)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 3)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 4)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 9)))) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 5)) (and (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 9)))) (and (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.final__value)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 6)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 9)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 7)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 11)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 8)) (and (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (LitInt 10)) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 9)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.i))) (LitInt 10))))) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.programCounter))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@15) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0))))))
 :qid |_08CounterNoTerminationdfy.431:19|
 :skolemid |1684|
 :pattern ( (_module.IncrementerMethod.localUserInv $Heap@@15 this@@15) ($IsGoodHeap $Heap@@15))
))))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@18 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@18) ($IsAllocBox bx@@18 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@18))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($h@@26 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.AtomicCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.AtomicCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1258|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.AtomicCounter.value)))
)))
(assert (forall (($h@@27 T@U) ($o@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.Remaining?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Remaining.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1452|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Remaining.value)))
)))
(assert (forall (($h@@28 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) _module.IncrementerMethod.programCounter)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1646|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) _module.IncrementerMethod.programCounter)))
)))
(assert (forall (($h@@29 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.IncrementerMethod.initial__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.IncrementerMethod.initial__value)))
)))
(assert (forall (($h@@30 T@U) ($o@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.IncrementerMethod.final__value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1654|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.IncrementerMethod.final__value)))
)))
(assert (forall (($h@@31 T@U) ($o@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.IncrementerMethod?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.IncrementerMethod.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1656|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.IncrementerMethod.i)))
)))
(assert (forall (($h@@32 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.OwnedObject.owner)) Tclass._module.Object $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |963|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.OwnedObject.owner)))
)))
(assert (forall ((bx@@19 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@19 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@19)) bx@@19) ($Is SetType ($Unbox SetType bx@@19) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@19 (TSet t@@3)))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass._module.OwnedObject?) ($Is refType $o@@32 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2255|
 :pattern ( ($Is refType $o@@32 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.OwnedObject?) ($IsBox bx@@20 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |2253|
 :pattern ( ($IsBox bx@@20 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass._module.AtomicCounter?) ($Is refType $o@@33 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2263|
 :pattern ( ($Is refType $o@@33 Tclass._module.AtomicCounter?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.AtomicCounter?) ($IsBox bx@@21 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2261|
 :pattern ( ($IsBox bx@@21 Tclass._module.AtomicCounter?))
)))
(assert (forall (($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 Tclass._module.Remaining?) ($Is refType $o@@34 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2267|
 :pattern ( ($Is refType $o@@34 Tclass._module.Remaining?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass._module.Remaining?) ($IsBox bx@@22 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2265|
 :pattern ( ($IsBox bx@@22 Tclass._module.Remaining?))
)))
(assert (forall (($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 Tclass._module.IncrementerMethod?) ($Is refType $o@@35 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2271|
 :pattern ( ($Is refType $o@@35 Tclass._module.IncrementerMethod?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass._module.IncrementerMethod?) ($IsBox bx@@23 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |2269|
 :pattern ( ($IsBox bx@@23 Tclass._module.IncrementerMethod?))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
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
(assert (forall (($h@@33 T@U) ($o@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@36 null)) (not true)) ($Is refType $o@@36 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@36) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |962|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@36) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@37 T@U) ) (! (= ($Is refType $o@@37 Tclass._module.Universe?)  (or (= $o@@37 null) (implements$_module.Universe (dtype $o@@37))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@37 Tclass._module.Universe?))
)))
(assert (forall (($o@@38 T@U) ) (! (= ($Is refType $o@@38 Tclass._module.Object?)  (or (= $o@@38 null) (implements$_module.Object (dtype $o@@38))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@38 Tclass._module.Object?))
)))
(assert (forall (($o@@39 T@U) ) (! (= ($Is refType $o@@39 Tclass._module.OwnedObject?)  (or (= $o@@39 null) (implements$_module.OwnedObject (dtype $o@@39))))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($Is refType $o@@39 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@34 T@U) ($o@@40 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@40 null)) (not true)) ($Is refType $o@@40 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@40) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@40) _module.Universe.content)) (TSet Tclass._module.Object) $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@40) _module.Universe.content)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall (($h@@35 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@41 null)) (not true)) ($Is refType $o@@41 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@41) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@41) _module.Universe.content)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@16 () T@U)
(declare-fun this@@16 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.IncrementerMethod.userInv)
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
 (=> (= (ControlFlow 0 0) 54) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 39)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@16))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.OwnedObject.owner)) this@@16)))) (and (=> (= (ControlFlow 0 6) (- 0 38)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter)))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))))))) (and (=> (= (ControlFlow 0 6) (- 0 37)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 10)))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 10))))) (and (=> (= (ControlFlow 0 6) (- 0 36)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 0)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 35)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 34)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 0))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 0)))))) (and (=> (= (ControlFlow 0 6) (- 0 33)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 32)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 31)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 2)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9)))))) (and (=> (= (ControlFlow 0 6) (- 0 30)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 29)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 28)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9)))))) (and (=> (= (ControlFlow 0 6) (- 0 27)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 3)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (and (=> (= (ControlFlow 0 6) (- 0 26)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 25)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 24)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9)))))) (and (=> (= (ControlFlow 0 6) (- 0 23)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 4)) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (and (=> (= (ControlFlow 0 6) (- 0 22)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 21)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 20)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9)))))) (and (=> (= (ControlFlow 0 6) (- 0 19)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.final__value))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.initial__value))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.final__value)))))))) (and (=> (= (ControlFlow 0 6) (- 0 18)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 5)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.final__value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) _module.AtomicCounter.value)))))))) (and (=> (= (ControlFlow 0 6) (- 0 17)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 16)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 15)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 6)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 9)))))) (and (=> (= (ControlFlow 0 6) (- 0 14)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 11))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 11)))))) (and (=> (= (ControlFlow 0 6) (- 0 13)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 12)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 7)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i)))))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 8)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10)))))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 9)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 9)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 9)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10))))))) (=> (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 9)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.i))) (LitInt 10)))))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (=> (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (or (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.programCounter))) (LitInt 10)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) _module.Remaining.value))) (LitInt 0)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon10_correct  (=> (= (_module.IncrementerMethod.userInv $Heap@@16 this@@16)  (and (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter)))) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))))) (=> (and (and (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16) (=> (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (and (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) (=> (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))) (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))))))) ($Is boolType (bool_2_U (_module.IncrementerMethod.userInv $Heap@@16 this@@16)) TBool)) (and (=> (= (ControlFlow 0 40) (- 0 45)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 40) (- 0 44)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 40) (- 0 43)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 40) (- 0 42)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 40) (- 0 41)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (=> (= (ControlFlow 0 40) 6) GeneratedUnifiedExit_correct)))))))))))))))
(let ((anon15_Else_correct  (=> (and (and (not (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter))))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 48) 40))) anon10_correct)))
(let ((anon15_Then_correct  (=> (and (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (_module.OwnedObject.localInv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter)))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@16 _module.IncrementerMethod.remaining)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining) Tclass._module.OwnedObject? $Heap@@16) (= |b$reqreads#4@0| (forall (($o@@42 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@42) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@42) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@42 $f@@0)))
 :qid |_08CounterNoTerminationdfy.449:18|
 :skolemid |1695|
)))) (=> (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.remaining))) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 46) 40))) anon10_correct)))))))
(let ((anon14_Else_correct  (=> (not (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16)) (=> (and (= |b$reqreads#1@1| true) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 51) 46) anon15_Then_correct) (=> (= (ControlFlow 0 51) 48) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@16 _module.IncrementerMethod.counter)))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter) Tclass._module.OwnedObject? $Heap@@16) (=> (and (and (= |b$reqreads#2@0| (forall (($o@@43 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@43) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@43) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@43 $f@@1)))
 :qid |_08CounterNoTerminationdfy.448:16|
 :skolemid |1694|
))) (|_module.OwnedObject.localInv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@16) _module.IncrementerMethod.counter)))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|))) (and (=> (= (ControlFlow 0 49) 46) anon15_Then_correct) (=> (= (ControlFlow 0 49) 48) anon15_Else_correct)))))))))
(let ((anon12_Else_correct  (=> ($IsAllocBox ($Box refType this@@16) Tclass._module.IncrementerMethod? $Heap@@16) (=> (and (= |b$reqreads#0@0| (forall (($o@@44 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@44) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 $o@@44) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@44 $f@@2)))
 :qid |_08CounterNoTerminationdfy.447:8|
 :skolemid |1693|
))) (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16)) (and (=> (= (ControlFlow 0 52) 49) anon14_Then_correct) (=> (= (ControlFlow 0 52) 51) anon14_Else_correct))))))
(let ((anon5_correct true))
(let ((anon13_Else_correct  (=> (and (=> (_module.IncrementerMethod.userInv $Heap@@16 this@@16) (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16)) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon13_Then_correct  (=> ($IsAllocBox ($Box refType this@@16) Tclass._module.IncrementerMethod? $Heap@@16) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@16 this@@16) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))))) (=> (or (= this@@16 this@@16) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (=> (and (or (= this@@16 this@@16) (|_module.IncrementerMethod.userInv#canCall| $Heap@@16 this@@16)) (_module.IncrementerMethod.userInv $Heap@@16 this@@16)) (=> (and (and ($IsAllocBox ($Box refType this@@16) Tclass._module.IncrementerMethod? $Heap@@16) (|_module.IncrementerMethod.localUserInv#canCall| $Heap@@16 this@@16)) (and (_module.IncrementerMethod.localUserInv $Heap@@16 this@@16) (= (ControlFlow 0 2) 1))) anon5_correct)))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null $Heap@@16 alloc $Heap@@16 alloc)) (and (and (=> (= (ControlFlow 0 53) 52) anon12_Else_correct) (=> (= (ControlFlow 0 53) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 53) 4) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@16) ($IsHeapAnchor $Heap@@16)) (=> (and (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.IncrementerMethod) ($IsAlloc refType this@@16 Tclass._module.IncrementerMethod $Heap@@16))) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 54) 53))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
