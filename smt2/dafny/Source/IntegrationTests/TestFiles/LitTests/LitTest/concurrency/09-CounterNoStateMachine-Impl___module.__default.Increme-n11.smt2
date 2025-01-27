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
(declare-fun Tagclass._module.OwnedObject () T@U)
(declare-fun Tagclass._module.ConstantInteger () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun Tagclass._module.OwnedObject? () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Thread? () T@U)
(declare-fun class._module.OwnedObject? () T@U)
(declare-fun class._module.IncreasingCounter? () T@U)
(declare-fun Tagclass._module.IncreasingCounter? () T@U)
(declare-fun class._module.Integer? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun class._module.ConstantInteger? () T@U)
(declare-fun Tagclass._module.ConstantInteger? () T@U)
(declare-fun class._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Thread () T@U)
(declare-fun tytagFamily$IncreasingCounter () T@U)
(declare-fun tytagFamily$Integer () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$OwnedObject () T@U)
(declare-fun tytagFamily$ConstantInteger () T@U)
(declare-fun tytagFamily$ClaimIncreasingCounterGreaterThanConstant () T@U)
(declare-fun field$content () T@U)
(declare-fun field$owner () T@U)
(declare-fun field$value () T@U)
(declare-fun field$counter () T@U)
(declare-fun field$constant () T@U)
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
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant () T@U)
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
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.counter () T@U)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.constant () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.Thread? () T@U)
(declare-fun implements$_module.OwnedObject (T@U) Bool)
(declare-fun Tclass._module.IncreasingCounter? () T@U)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun Tclass._module.ConstantInteger? () T@U)
(declare-fun Tclass._module.ClaimIncreasingCounterGreaterThanConstant? () T@U)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe () T@U)
(declare-fun |_module.Universe.globalBaseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalBaseInv (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._module.OwnedObject? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Thread () T@U)
(declare-fun Tclass._module.OwnedObject () T@U)
(declare-fun Tclass._module.IncreasingCounter () T@U)
(declare-fun Tclass._module.Integer () T@U)
(declare-fun Tclass._module.ConstantInteger () T@U)
(declare-fun _module.OwnedObject.owner () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.OwnedObject.baseUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.localUserInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.localUserInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.localUserInv (T@U T@U) Bool)
(declare-fun |_module.Integer.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.baseUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.localUserInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| (T@U T@U) Bool)
(declare-fun _module.OwnedObject.userInv (T@U T@U) Bool)
(declare-fun _module.IncreasingCounter.userInv (T@U T@U) Bool)
(declare-fun |_module.IncreasingCounter.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Integer.userInv (T@U T@U) Bool)
(declare-fun |_module.Integer.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ConstantInteger.userInv (T@U T@U) Bool)
(declare-fun |_module.ConstantInteger.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.ClaimIncreasingCounterGreaterThanConstant.userInv (T@U T@U) Bool)
(declare-fun |_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| (T@U T@U) Bool)
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
(declare-fun _module.IncreasingCounter.value () T@U)
(declare-fun _module.ConstantInteger.value () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.OwnedObject.userInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.triggerAxioms (T@U T@U) Bool)
(declare-fun |_module.Object.triggerAxioms#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |_module.OwnedObject.baseUserInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.OwnedObject.localUserInv#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._module.Universe Tagclass._module.Thread Tagclass._module.IncreasingCounter Tagclass._module.Integer Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.OwnedObject Tagclass._module.ConstantInteger Tagclass._module.ClaimIncreasingCounterGreaterThanConstant Tagclass._module.Object? Tagclass._module.OwnedObject? class._module.Universe? Tagclass._module.Thread? class._module.OwnedObject? class._module.IncreasingCounter? Tagclass._module.IncreasingCounter? class._module.Integer? Tagclass._module.Integer? class._module.ConstantInteger? Tagclass._module.ConstantInteger? class._module.ClaimIncreasingCounterGreaterThanConstant? Tagclass._module.ClaimIncreasingCounterGreaterThanConstant? tytagFamily$Universe tytagFamily$Thread tytagFamily$IncreasingCounter tytagFamily$Integer tytagFamily$Object tytagFamily$OwnedObject tytagFamily$ConstantInteger tytagFamily$ClaimIncreasingCounterGreaterThanConstant field$content field$owner field$value field$counter field$constant)
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap (_module.Object.universe this)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))))
 :qid |_09CounterNoStateMachinedfy.635:19|
 :skolemid |2946|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert (implements$_module.Object Tclass._module.Thread?))
(assert (implements$_module.OwnedObject Tclass._module.IncreasingCounter?))
(assert (implements$_module.OwnedObject Tclass._module.Integer?))
(assert (implements$_module.OwnedObject Tclass._module.ConstantInteger?))
(assert (implements$_module.OwnedObject Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0|)))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |670|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@0)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|))) (_module.Object.inv $Heap@@0 |o#0@@0|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |669|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.39:19|
 :skolemid |671|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thread?)  (or (= $o null) (= (dtype $o) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1389|
 :pattern ( ($Is refType $o Tclass._module.Thread?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.IncreasingCounter?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( ($Is refType $o@@0 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Integer?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |2382|
 :pattern ( ($Is refType $o@@1 Tclass._module.Integer?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.ConstantInteger?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |2652|
 :pattern ( ($Is refType $o@@2 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2922|
 :pattern ( ($Is refType $o@@3 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Thread? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |3194|
 :pattern ( ($IsAllocBox bx Tclass._module.Thread? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3198|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.OwnedObject? $h@@0))
)))
(assert (forall ((bx@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@1 Tclass._module.OwnedObject? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3206|
 :pattern ( ($IsAllocBox bx@@1 Tclass._module.IncreasingCounter? $h@@1))
)))
(assert (forall ((bx@@2 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@2 Tclass._module.OwnedObject? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3210|
 :pattern ( ($IsAllocBox bx@@2 Tclass._module.Integer? $h@@2))
)))
(assert (forall ((bx@@3 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@3 Tclass._module.OwnedObject? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3214|
 :pattern ( ($IsAllocBox bx@@3 Tclass._module.ConstantInteger? $h@@3))
)))
(assert (forall ((bx@@4 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@4 Tclass._module.OwnedObject? $h@@4))
 :qid |unknown.0:0|
 :skolemid |3218|
 :pattern ( ($IsAllocBox bx@@4 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5) ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1246|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7) ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
 :qid |unknown.0:0|
 :skolemid |1685|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Thread? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8) ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.OwnedObject? $h@@8))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@9) ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@9))
 :qid |unknown.0:0|
 :skolemid |2380|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.IncreasingCounter? $h@@9))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@10) ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@10))
 :qid |unknown.0:0|
 :skolemid |2650|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass._module.Integer? $h@@10))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@11) ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@11))
 :qid |unknown.0:0|
 :skolemid |2920|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass._module.ConstantInteger? $h@@11))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@12) ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@12))
 :qid |unknown.0:0|
 :skolemid |3192|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@12))
)))
(assert (= (FDim _module.OwnedObject.owner) 0))
(assert (= (FieldOfDecl class._module.OwnedObject? field$owner) _module.OwnedObject.owner))
(assert ($IsGhostField _module.OwnedObject.owner))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserInv#canCall| $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.baseUserInv $Heap@@1 this@@1) (_module.IncreasingCounter.baseUserInv $Heap@@1 this@@1)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2135|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@1 this@@1) (_module.IncreasingCounter.baseUserInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@2 this@@2) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.localUserInv $Heap@@2 this@@2) (_module.IncreasingCounter.localUserInv $Heap@@2 this@@2)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2142|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@2 this@@2) (_module.IncreasingCounter.localUserInv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Integer.baseUserInv#canCall| $Heap@@3 this@@3) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Integer)))) (= (_module.OwnedObject.baseUserInv $Heap@@3 this@@3) (_module.Integer.baseUserInv $Heap@@3 this@@3)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2405|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@3) ($Is refType this@@3 Tclass._module.Integer) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@3 this@@3) (_module.Integer.baseUserInv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@4 this@@4) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Integer)))) (= (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.Integer.localUserInv $Heap@@4 this@@4)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2412|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) ($Is refType this@@4 Tclass._module.Integer) ($IsGoodHeap $Heap@@4))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@4 this@@4) (_module.Integer.localUserInv $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserInv#canCall| $Heap@@5 this@@5) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) (_module.ConstantInteger.baseUserInv $Heap@@5 this@@5)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2675|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) ($Is refType this@@5 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@5 this@@5) (_module.ConstantInteger.baseUserInv $Heap@@5 this@@5) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@6 this@@6) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.localUserInv $Heap@@6 this@@6) (_module.ConstantInteger.localUserInv $Heap@@6 this@@6)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2682|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@6) ($Is refType this@@6 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@6 this@@6) (_module.ConstantInteger.localUserInv $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@7 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@7 this@@7) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.localUserInv $Heap@@7 this@@7) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@7 this@@7)))
 :qid |_09CounterNoStateMachinedfy.431:19|
 :skolemid |2954|
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@7) ($Is refType this@@7 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.OwnedObject.localUserInv $Heap@@7 this@@7) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@7 this@@7) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@8 this@@8) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass._module.IncreasingCounter)))) (= (_module.OwnedObject.userInv $Heap@@8 this@@8) (_module.IncreasingCounter.userInv $Heap@@8 this@@8)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2149|
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@8) ($Is refType this@@8 Tclass._module.IncreasingCounter) ($IsGoodHeap $Heap@@8))
 :pattern ( (_module.OwnedObject.userInv $Heap@@8 this@@8) (_module.IncreasingCounter.userInv $Heap@@8 this@@8) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@9 this@@9) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Integer)))) (= (_module.OwnedObject.userInv $Heap@@9 this@@9) (_module.Integer.userInv $Heap@@9 this@@9)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2419|
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@9) ($Is refType this@@9 Tclass._module.Integer) ($IsGoodHeap $Heap@@9))
 :pattern ( (_module.OwnedObject.userInv $Heap@@9 this@@9) (_module.Integer.userInv $Heap@@9 this@@9) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@10 this@@10) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.ConstantInteger)))) (= (_module.OwnedObject.userInv $Heap@@10 this@@10) (_module.ConstantInteger.userInv $Heap@@10 this@@10)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2689|
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@10) ($Is refType this@@10 Tclass._module.ConstantInteger) ($IsGoodHeap $Heap@@10))
 :pattern ( (_module.OwnedObject.userInv $Heap@@10 this@@10) (_module.ConstantInteger.userInv $Heap@@10 this@@10) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@11 this@@11) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.userInv $Heap@@11 this@@11) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@11 this@@11)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |2961|
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@11) ($Is refType this@@11 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@11))
 :pattern ( (_module.OwnedObject.userInv $Heap@@11 this@@11) (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@11 this@@11) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@12 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv#canCall| $Heap@@12 this@@12) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))) (= (_module.OwnedObject.baseUserInv $Heap@@12 this@@12) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@12 this@@12)))
 :qid |_09CounterNoStateMachinedfy.430:19|
 :skolemid |2947|
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@12 this@@12) ($Is refType this@@12 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsGoodHeap $Heap@@12))
 :pattern ( (_module.OwnedObject.baseUserInv $Heap@@12 this@@12) (_module.ClaimIncreasingCounterGreaterThanConstant.baseUserInv $Heap@@12 this@@12) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@13 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@13 this@@13) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Thread)))) (= (_module.Object.localInv $Heap@@13 this@@13) (_module.Thread.localInv $Heap@@13 this@@13)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1402|
 :pattern ( (_module.Object.localInv $Heap@@13 this@@13) ($Is refType this@@13 Tclass._module.Thread) ($IsGoodHeap $Heap@@13))
 :pattern ( (_module.Object.localInv $Heap@@13 this@@13) (_module.Thread.localInv $Heap@@13 this@@13) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@14 this@@14) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.OwnedObject)))) (= (_module.Object.localInv $Heap@@14 this@@14) (_module.OwnedObject.localInv $Heap@@14 this@@14)))
 :qid |_09CounterNoStateMachinedfy.277:19|
 :skolemid |1709|
 :pattern ( (_module.Object.localInv $Heap@@14 this@@14) ($Is refType this@@14 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@14))
 :pattern ( (_module.Object.localInv $Heap@@14 this@@14) (_module.OwnedObject.localInv $Heap@@14 this@@14) ($IsGoodHeap $Heap@@14))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@15 this@@15) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Thread)))) (= (_module.Object.inv $Heap@@15 this@@15) (_module.Thread.inv $Heap@@15 this@@15)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1410|
 :pattern ( (_module.Object.inv $Heap@@15 this@@15) ($Is refType this@@15 Tclass._module.Thread) ($IsGoodHeap $Heap@@15))
 :pattern ( (_module.Object.inv $Heap@@15 this@@15) (_module.Thread.inv $Heap@@15 this@@15) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@16 this@@16) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@16 null)) (not true)) ($Is refType this@@16 Tclass._module.OwnedObject)))) (= (_module.Object.inv $Heap@@16 this@@16) (_module.OwnedObject.inv $Heap@@16 this@@16)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1719|
 :pattern ( (_module.Object.inv $Heap@@16 this@@16) ($Is refType this@@16 Tclass._module.OwnedObject) ($IsGoodHeap $Heap@@16))
 :pattern ( (_module.Object.inv $Heap@@16 this@@16) (_module.OwnedObject.inv $Heap@@16 this@@16) ($IsGoodHeap $Heap@@16))
))))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert  (not ($IsGhostField _module.Universe.content)))
(assert (= (FDim _module.Integer.value) 0))
(assert (= (FieldOfDecl class._module.Integer? field$value) _module.Integer.value))
(assert  (not ($IsGhostField _module.Integer.value)))
(assert (= (FDim _module.IncreasingCounter.value) 0))
(assert (= (FieldOfDecl class._module.IncreasingCounter? field$value) _module.IncreasingCounter.value))
(assert  (not ($IsGhostField _module.IncreasingCounter.value)))
(assert (= (FDim _module.ConstantInteger.value) 0))
(assert (= (FieldOfDecl class._module.ConstantInteger? field$value) _module.ConstantInteger.value))
(assert  (not ($IsGhostField _module.ConstantInteger.value)))
(assert (= (FDim _module.ClaimIncreasingCounterGreaterThanConstant.counter) 0))
(assert (= (FieldOfDecl class._module.ClaimIncreasingCounterGreaterThanConstant? field$counter) _module.ClaimIncreasingCounterGreaterThanConstant.counter))
(assert  (not ($IsGhostField _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
(assert (= (FDim _module.ClaimIncreasingCounterGreaterThanConstant.constant) 0))
(assert (= (FieldOfDecl class._module.ClaimIncreasingCounterGreaterThanConstant? field$constant) _module.ClaimIncreasingCounterGreaterThanConstant.constant))
(assert  (not ($IsGhostField _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
(assert (forall (($o@@4 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@13)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Universe? $h@@13))
)))
(assert (forall (($o@@5 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@14)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1248|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Object? $h@@14))
)))
(assert (forall (($o@@6 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@15)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1390|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Thread? $h@@15))
)))
(assert (forall (($o@@7 T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.OwnedObject? $h@@16)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1687|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.OwnedObject? $h@@16))
)))
(assert (forall (($o@@8 T@U) ($h@@17 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.IncreasingCounter? $h@@17)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.IncreasingCounter? $h@@17))
)))
(assert (forall (($o@@9 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.Integer? $h@@18)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2383|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.Integer? $h@@18))
)))
(assert (forall (($o@@10 T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._module.ConstantInteger? $h@@19)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2653|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.ConstantInteger? $h@@19))
)))
(assert (forall (($o@@11 T@U) ($h@@20 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@20)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2923|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $h@@20))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@17 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.IncreasingCounter.baseUserInv#canCall| $Heap@@17 this@@17) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@17 Tclass._module.IncreasingCounter $Heap@@17)))))) (= (_module.IncreasingCounter.baseUserInv $Heap@@17 this@@17) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.498:19|
 :skolemid |2134|
 :pattern ( (_module.IncreasingCounter.baseUserInv $Heap@@17 this@@17) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@18 T@U) (this@@18 T@U) ) (!  (=> (or (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@18 this@@18) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@18 Tclass._module.IncreasingCounter $Heap@@18)))))) (= (_module.IncreasingCounter.localUserInv $Heap@@18 this@@18) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.502:19|
 :skolemid |2141|
 :pattern ( (_module.IncreasingCounter.localUserInv $Heap@@18 this@@18) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Integer.baseUserInv#canCall| $Heap@@19 this@@19) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@19) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Integer) ($IsAlloc refType this@@19 Tclass._module.Integer $Heap@@19)))))) (= (_module.Integer.baseUserInv $Heap@@19 this@@19) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.543:19|
 :skolemid |2404|
 :pattern ( (_module.Integer.baseUserInv $Heap@@19 this@@19) ($IsGoodHeap $Heap@@19))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@20 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.Integer.localUserInv#canCall| $Heap@@20 this@@20) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@20) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Integer) ($IsAlloc refType this@@20 Tclass._module.Integer $Heap@@20)))))) (= (_module.Integer.localUserInv $Heap@@20 this@@20) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.547:19|
 :skolemid |2411|
 :pattern ( (_module.Integer.localUserInv $Heap@@20 this@@20) ($IsGoodHeap $Heap@@20))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@21 T@U) (this@@21 T@U) ) (!  (=> (or (|_module.ConstantInteger.baseUserInv#canCall| $Heap@@21 this@@21) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@21) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.ConstantInteger) ($IsAlloc refType this@@21 Tclass._module.ConstantInteger $Heap@@21)))))) (= (_module.ConstantInteger.baseUserInv $Heap@@21 this@@21) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.588:19|
 :skolemid |2674|
 :pattern ( (_module.ConstantInteger.baseUserInv $Heap@@21 this@@21) ($IsGoodHeap $Heap@@21))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@22 T@U) (this@@22 T@U) ) (!  (=> (or (|_module.ConstantInteger.localUserInv#canCall| $Heap@@22 this@@22) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@22) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.ConstantInteger) ($IsAlloc refType this@@22 Tclass._module.ConstantInteger $Heap@@22)))))) (= (_module.ConstantInteger.localUserInv $Heap@@22 this@@22) (U_2_bool (Lit boolType (bool_2_U  (and true true))))))
 :qid |_09CounterNoStateMachinedfy.592:19|
 :skolemid |2681|
 :pattern ( (_module.ConstantInteger.localUserInv $Heap@@22 this@@22) ($IsGoodHeap $Heap@@22))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (or (= $o@@12 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@12)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3221|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@21 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.IncreasingCounter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) _module.IncreasingCounter.value)) TInt $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2115|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@13) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@22 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Integer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@14) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@14) _module.Integer.value)) TInt $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2385|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@14) _module.Integer.value)))
)))
(assert (forall (($h@@23 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.ConstantInteger?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@15) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@15) _module.ConstantInteger.value)) TInt $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2655|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@15) _module.ConstantInteger.value)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@23 T@U) (this@@23 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@23 this@@23) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@23) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.OwnedObject) ($IsAlloc refType this@@23 Tclass._module.OwnedObject $Heap@@23)))))) (and (and (|_module.OwnedObject.localInv#canCall| $Heap@@23 this@@23) (=> (_module.OwnedObject.localInv $Heap@@23 this@@23) (|_module.OwnedObject.userInv#canCall| $Heap@@23 this@@23))) (= (_module.OwnedObject.inv $Heap@@23 this@@23)  (and (_module.OwnedObject.localInv $Heap@@23 this@@23) (_module.OwnedObject.userInv $Heap@@23 this@@23)))))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1718|
 :pattern ( (_module.OwnedObject.inv $Heap@@23 this@@23) ($IsGoodHeap $Heap@@23))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@24 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@16) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@16) Tclass._module.Universe $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1250|
 :pattern ( (_module.Object.universe $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@16) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@17) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |1249|
 :pattern ( (_module.Object.universe $o@@17))
))))
(assert (forall (($h@@25 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@18) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2924|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@18) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@26 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@19) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2926|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@19) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
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
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.IncreasingCounter) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.IncreasingCounter)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@8 Tclass._module.IncreasingCounter))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@9 Tclass._module.Integer))
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
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.OwnedObject) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.OwnedObject)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@12 Tclass._module.OwnedObject))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ConstantInteger) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass._module.ConstantInteger)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@13 Tclass._module.ConstantInteger))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._module.ClaimIncreasingCounterGreaterThanConstant)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsBox bx@@14 Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@15 Tclass._module.Object?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.OwnedObject?) (and (= ($Box refType ($Unbox refType bx@@16)) bx@@16) ($Is refType ($Unbox refType bx@@16) Tclass._module.OwnedObject?)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsBox bx@@16 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Thread?) (and (= ($Box refType ($Unbox refType bx@@17)) bx@@17) ($Is refType ($Unbox refType bx@@17) Tclass._module.Thread?)))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsBox bx@@17 Tclass._module.Thread?))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass._module.IncreasingCounter?) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass._module.IncreasingCounter?)))
 :qid |unknown.0:0|
 :skolemid |2111|
 :pattern ( ($IsBox bx@@18 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |2381|
 :pattern ( ($IsBox bx@@19 Tclass._module.Integer?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass._module.ConstantInteger?) (and (= ($Box refType ($Unbox refType bx@@20)) bx@@20) ($Is refType ($Unbox refType bx@@20) Tclass._module.ConstantInteger?)))
 :qid |unknown.0:0|
 :skolemid |2651|
 :pattern ( ($IsBox bx@@20 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (and (= ($Box refType ($Unbox refType bx@@21)) bx@@21) ($Is refType ($Unbox refType bx@@21) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?)))
 :qid |unknown.0:0|
 :skolemid |2921|
 :pattern ( ($IsBox bx@@21 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Universe)  (and ($Is refType |c#0@@7| Tclass._module.Universe?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Object)  (and ($Is refType |c#0@@8| Tclass._module.Object?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass._module.Thread)  (and ($Is refType |c#0@@9| Tclass._module.Thread?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1684|
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread))
 :pattern ( ($Is refType |c#0@@9| Tclass._module.Thread?))
)))
(assert (forall ((|c#0@@10| T@U) ) (! (= ($Is refType |c#0@@10| Tclass._module.OwnedObject)  (and ($Is refType |c#0@@10| Tclass._module.OwnedObject?) (or (not (= |c#0@@10| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject))
 :pattern ( ($Is refType |c#0@@10| Tclass._module.OwnedObject?))
)))
(assert (forall ((|c#0@@11| T@U) ) (! (= ($Is refType |c#0@@11| Tclass._module.IncreasingCounter)  (and ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?) (or (not (= |c#0@@11| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2379|
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter))
 :pattern ( ($Is refType |c#0@@11| Tclass._module.IncreasingCounter?))
)))
(assert (forall ((|c#0@@12| T@U) ) (! (= ($Is refType |c#0@@12| Tclass._module.Integer)  (and ($Is refType |c#0@@12| Tclass._module.Integer?) (or (not (= |c#0@@12| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2649|
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@12| Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@13| T@U) ) (! (= ($Is refType |c#0@@13| Tclass._module.ConstantInteger)  (and ($Is refType |c#0@@13| Tclass._module.ConstantInteger?) (or (not (= |c#0@@13| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2919|
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger))
 :pattern ( ($Is refType |c#0@@13| Tclass._module.ConstantInteger?))
)))
(assert (forall ((|c#0@@14| T@U) ) (! (= ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant)  (and ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) (or (not (= |c#0@@14| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3191|
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant))
 :pattern ( ($Is refType |c#0@@14| Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall (($h@@27 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@20) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@20) _module.ClaimIncreasingCounterGreaterThanConstant.counter)) Tclass._module.IncreasingCounter $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2925|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@20) _module.ClaimIncreasingCounterGreaterThanConstant.counter)))
)))
(assert (forall (($h@@28 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@21) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@21) _module.ClaimIncreasingCounterGreaterThanConstant.constant)) Tclass._module.ConstantInteger $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2927|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@21) _module.ClaimIncreasingCounterGreaterThanConstant.constant)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@24 T@U) (this@@24 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@24 this@@24) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@24) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.Object) ($IsAlloc refType this@@24 Tclass._module.Object $Heap@@24)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (|_module.Universe.globalBaseInv#canCall| $Heap@@24 (_module.Object.universe this@@24))) (= (_module.Object.baseInv $Heap@@24 this@@24)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@24 (_module.Object.universe this@@24)) _module.Universe.content)) ($Box refType this@@24)) (_module.Universe.globalBaseInv $Heap@@24 (_module.Object.universe this@@24))))))
 :qid |_09CounterNoStateMachinedfy.243:19|
 :skolemid |1255|
 :pattern ( (_module.Object.baseInv $Heap@@24 this@@24) ($IsGoodHeap $Heap@@24))
))))
(assert (forall (($o@@22 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@22 Tclass._module.Thread? $heap) ($IsAlloc refType $o@@22 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |3196|
 :pattern ( ($IsAlloc refType $o@@22 Tclass._module.Thread? $heap))
)))
(assert (forall (($o@@23 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@23 Tclass._module.OwnedObject? $heap@@0) ($IsAlloc refType $o@@23 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3200|
 :pattern ( ($IsAlloc refType $o@@23 Tclass._module.OwnedObject? $heap@@0))
)))
(assert (forall (($o@@24 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@24 Tclass._module.IncreasingCounter? $heap@@1) ($IsAlloc refType $o@@24 Tclass._module.OwnedObject? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |3208|
 :pattern ( ($IsAlloc refType $o@@24 Tclass._module.IncreasingCounter? $heap@@1))
)))
(assert (forall (($o@@25 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@25 Tclass._module.Integer? $heap@@2) ($IsAlloc refType $o@@25 Tclass._module.OwnedObject? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |3212|
 :pattern ( ($IsAlloc refType $o@@25 Tclass._module.Integer? $heap@@2))
)))
(assert (forall (($o@@26 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@26 Tclass._module.ConstantInteger? $heap@@3) ($IsAlloc refType $o@@26 Tclass._module.OwnedObject? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsAlloc refType $o@@26 Tclass._module.ConstantInteger? $heap@@3))
)))
(assert (forall (($o@@27 T@U) ($heap@@4 T@U) ) (!  (=> ($IsAlloc refType $o@@27 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4) ($IsAlloc refType $o@@27 Tclass._module.OwnedObject? $heap@@4))
 :qid |unknown.0:0|
 :skolemid |3220|
 :pattern ( ($IsAlloc refType $o@@27 Tclass._module.ClaimIncreasingCounterGreaterThanConstant? $heap@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@25 T@U) (this@@25 T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap@@25 this@@25) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@25) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Universe) ($IsAlloc refType this@@25 Tclass._module.Universe $Heap@@25)))))) (and (=> (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#0@@1|))) (and (= (_module.Object.universe |o#0@@1|) this@@25) (or (not (= |o#0@@1| this@@25)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |655|
 :pattern ( (_module.Object.universe |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#0@@1|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#1|)) (|_module.Object.triggerAxioms#canCall| $Heap@@25 |o#1|)))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |654|
 :pattern ( (_module.Object.triggerAxioms $Heap@@25 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#1|)))
))) (= (_module.Universe.globalBaseInv $Heap@@25 this@@25)  (and (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#0@@2|))) (and (= (_module.Object.universe |o#0@@2|) this@@25) (or (not (= |o#0@@2| this@@25)) (not true))))
 :qid |_09CounterNoStateMachinedfy.34:16|
 :skolemid |652|
 :pattern ( (_module.Object.universe |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#1@@0|))) (_module.Object.triggerAxioms $Heap@@25 |o#1@@0|))
 :qid |_09CounterNoStateMachinedfy.35:16|
 :skolemid |653|
 :pattern ( (_module.Object.triggerAxioms $Heap@@25 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@25 this@@25) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_09CounterNoStateMachinedfy.33:19|
 :skolemid |656|
 :pattern ( (_module.Universe.globalBaseInv $Heap@@25 this@@25) ($IsGoodHeap $Heap@@25))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@26 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@26 this@@26) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@26) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Object) ($IsAlloc refType this@@26 Tclass._module.Object $Heap@@26)))))) (_module.Object.triggerAxioms $Heap@@26 this@@26))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1309|
 :pattern ( (_module.Object.triggerAxioms $Heap@@26 this@@26))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 TInt) (and (= ($Box intType ($Unbox intType bx@@22)) bx@@22) ($Is intType ($Unbox intType bx@@22) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@22 TInt))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@27 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@27 this@@27) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@27) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@27 Tclass._module.IncreasingCounter $Heap@@27)))))) (=> (_module.IncreasingCounter.userInv $Heap@@27 this@@27) (_module.IncreasingCounter.localUserInv $Heap@@27 this@@27)))
 :qid |_09CounterNoStateMachinedfy.505:19|
 :skolemid |2146|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@27 this@@27))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@28 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@28 this@@28) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@28) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Integer) ($IsAlloc refType this@@28 Tclass._module.Integer $Heap@@28)))))) (=> (_module.Integer.userInv $Heap@@28 this@@28) (_module.Integer.localUserInv $Heap@@28 this@@28)))
 :qid |_09CounterNoStateMachinedfy.550:19|
 :skolemid |2416|
 :pattern ( (_module.Integer.userInv $Heap@@28 this@@28))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@29 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@29 this@@29) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@29) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.ConstantInteger) ($IsAlloc refType this@@29 Tclass._module.ConstantInteger $Heap@@29)))))) (=> (_module.ConstantInteger.userInv $Heap@@29 this@@29) (_module.ConstantInteger.localUserInv $Heap@@29 this@@29)))
 :qid |_09CounterNoStateMachinedfy.595:19|
 :skolemid |2686|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@29 this@@29))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@30 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@30 this@@30) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@30) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@30 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@30)))))) (=> (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@30 this@@30) (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@30 this@@30)))
 :qid |_09CounterNoStateMachinedfy.643:19|
 :skolemid |2958|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@30 this@@30))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@31 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.OwnedObject.userInv#canCall| $Heap@@31 this@@31) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@31) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.OwnedObject) ($IsAlloc refType this@@31 Tclass._module.OwnedObject $Heap@@31)))))) (=> (_module.OwnedObject.userInv $Heap@@31 this@@31) (_module.OwnedObject.localUserInv $Heap@@31 this@@31)))
 :qid |_09CounterNoStateMachinedfy.433:19|
 :skolemid |1832|
 :pattern ( (_module.OwnedObject.userInv $Heap@@31 this@@31))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@32 T@U) (this@@32 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@32 this@@32) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@32) (and (or (not (= this@@32 null)) (not true)) (and ($Is refType this@@32 Tclass._module.Thread) ($IsAlloc refType this@@32 Tclass._module.Thread $Heap@@32)))))) (=> (_module.Thread.inv $Heap@@32 this@@32) (_module.Thread.localInv $Heap@@32 this@@32)))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1407|
 :pattern ( (_module.Thread.inv $Heap@@32 this@@32))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@33 T@U) (this@@33 T@U) ) (!  (=> (or (|_module.OwnedObject.inv#canCall| $Heap@@33 this@@33) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@33) (and (or (not (= this@@33 null)) (not true)) (and ($Is refType this@@33 Tclass._module.OwnedObject) ($IsAlloc refType this@@33 Tclass._module.OwnedObject $Heap@@33)))))) (=> (_module.OwnedObject.inv $Heap@@33 this@@33) (_module.OwnedObject.localInv $Heap@@33 this@@33)))
 :qid |_09CounterNoStateMachinedfy.356:19|
 :skolemid |1716|
 :pattern ( (_module.OwnedObject.inv $Heap@@33 this@@33))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@34 T@U) (this@@34 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@34 this@@34) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@34) (and (or (not (= this@@34 null)) (not true)) (and ($Is refType this@@34 Tclass._module.Object) ($IsAlloc refType this@@34 Tclass._module.Object $Heap@@34)))))) (=> (_module.Object.inv $Heap@@34 this@@34) (_module.Object.localInv $Heap@@34 this@@34)))
 :qid |_09CounterNoStateMachinedfy.279:19|
 :skolemid |1324|
 :pattern ( (_module.Object.inv $Heap@@34 this@@34))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@23 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@23) ($IsAllocBox bx@@23 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@23))
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
(assert (forall (($h@@29 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.IncreasingCounter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.IncreasingCounter.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2114|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.IncreasingCounter.value)))
)))
(assert (forall (($h@@30 T@U) ($o@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.Integer?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.Integer.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2384|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.Integer.value)))
)))
(assert (forall (($h@@31 T@U) ($o@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.ConstantInteger?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.ConstantInteger.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2654|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.ConstantInteger.value)))
)))
(assert (forall (($h@@32 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass._module.OwnedObject?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.OwnedObject.owner)) Tclass._module.Object $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1691|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.OwnedObject.owner)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@35 T@U) (this@@35 T@U) ) (!  (=> (or (|_module.OwnedObject.localInv#canCall| $Heap@@35 this@@35) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@35) (and (or (not (= this@@35 null)) (not true)) (and ($Is refType this@@35 Tclass._module.OwnedObject) ($IsAlloc refType this@@35 Tclass._module.OwnedObject $Heap@@35)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@35 this@@35) (=> (_module.Object.baseInv $Heap@@35 this@@35) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@35)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@35) _module.OwnedObject.owner)) (and (|_module.OwnedObject.baseUserInv#canCall| $Heap@@35 this@@35) (=> (_module.OwnedObject.baseUserInv $Heap@@35 this@@35) (|_module.OwnedObject.localUserInv#canCall| $Heap@@35 this@@35)))))) (= (_module.OwnedObject.localInv $Heap@@35 this@@35)  (and (and (and (_module.Object.baseInv $Heap@@35 this@@35) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 (_module.Object.universe this@@35)) _module.Universe.content)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@35 this@@35) _module.OwnedObject.owner))) (_module.OwnedObject.baseUserInv $Heap@@35 this@@35)) (_module.OwnedObject.localUserInv $Heap@@35 this@@35)))))
 :qid |_09CounterNoStateMachinedfy.350:19|
 :skolemid |1708|
 :pattern ( (_module.OwnedObject.localInv $Heap@@35 this@@35) ($IsGoodHeap $Heap@@35))
))))
(assert (forall ((bx@@24 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@24 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@24)) bx@@24) ($Is SetType ($Unbox SetType bx@@24) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@24 (TSet t@@3)))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass._module.Thread?) ($Is refType $o@@32 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3195|
 :pattern ( ($Is refType $o@@32 Tclass._module.Thread?))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass._module.Thread?) ($IsBox bx@@25 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3193|
 :pattern ( ($IsBox bx@@25 Tclass._module.Thread?))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass._module.OwnedObject?) ($Is refType $o@@33 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3199|
 :pattern ( ($Is refType $o@@33 Tclass._module.OwnedObject?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass._module.OwnedObject?) ($IsBox bx@@26 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |3197|
 :pattern ( ($IsBox bx@@26 Tclass._module.OwnedObject?))
)))
(assert (forall (($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 Tclass._module.IncreasingCounter?) ($Is refType $o@@34 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3207|
 :pattern ( ($Is refType $o@@34 Tclass._module.IncreasingCounter?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass._module.IncreasingCounter?) ($IsBox bx@@27 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3205|
 :pattern ( ($IsBox bx@@27 Tclass._module.IncreasingCounter?))
)))
(assert (forall (($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 Tclass._module.Integer?) ($Is refType $o@@35 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3211|
 :pattern ( ($Is refType $o@@35 Tclass._module.Integer?))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass._module.Integer?) ($IsBox bx@@28 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3209|
 :pattern ( ($IsBox bx@@28 Tclass._module.Integer?))
)))
(assert (forall (($o@@36 T@U) ) (!  (=> ($Is refType $o@@36 Tclass._module.ConstantInteger?) ($Is refType $o@@36 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3215|
 :pattern ( ($Is refType $o@@36 Tclass._module.ConstantInteger?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass._module.ConstantInteger?) ($IsBox bx@@29 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3213|
 :pattern ( ($IsBox bx@@29 Tclass._module.ConstantInteger?))
)))
(assert (forall (($o@@37 T@U) ) (!  (=> ($Is refType $o@@37 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($Is refType $o@@37 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3219|
 :pattern ( ($Is refType $o@@37 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) ($IsBox bx@@30 Tclass._module.OwnedObject?))
 :qid |unknown.0:0|
 :skolemid |3217|
 :pattern ( ($IsBox bx@@30 Tclass._module.ClaimIncreasingCounterGreaterThanConstant?))
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
(assert (= (Tag Tclass._module.OwnedObject) Tagclass._module.OwnedObject))
(assert (= (TagFamily Tclass._module.OwnedObject) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.ConstantInteger) Tagclass._module.ConstantInteger))
(assert (= (TagFamily Tclass._module.ConstantInteger) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (= (Tag Tclass._module.OwnedObject?) Tagclass._module.OwnedObject?))
(assert (= (TagFamily Tclass._module.OwnedObject?) tytagFamily$OwnedObject))
(assert (= (Tag Tclass._module.Thread?) Tagclass._module.Thread?))
(assert (= (TagFamily Tclass._module.Thread?) tytagFamily$Thread))
(assert (= (Tag Tclass._module.IncreasingCounter?) Tagclass._module.IncreasingCounter?))
(assert (= (TagFamily Tclass._module.IncreasingCounter?) tytagFamily$IncreasingCounter))
(assert (= (Tag Tclass._module.Integer?) Tagclass._module.Integer?))
(assert (= (TagFamily Tclass._module.Integer?) tytagFamily$Integer))
(assert (= (Tag Tclass._module.ConstantInteger?) Tagclass._module.ConstantInteger?))
(assert (= (TagFamily Tclass._module.ConstantInteger?) tytagFamily$ConstantInteger))
(assert (= (Tag Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) Tagclass._module.ClaimIncreasingCounterGreaterThanConstant?))
(assert (= (TagFamily Tclass._module.ClaimIncreasingCounterGreaterThanConstant?) tytagFamily$ClaimIncreasingCounterGreaterThanConstant))
(assert (forall (($h@@33 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.OwnedObject?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@38) _module.OwnedObject.owner)) Tclass._module.Object))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1690|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@38) _module.OwnedObject.owner)))
)))
(assert (forall (($o@@39 T@U) ) (! (= ($Is refType $o@@39 Tclass._module.Universe?)  (or (= $o@@39 null) (implements$_module.Universe (dtype $o@@39))))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($Is refType $o@@39 Tclass._module.Universe?))
)))
(assert (forall (($o@@40 T@U) ) (! (= ($Is refType $o@@40 Tclass._module.Object?)  (or (= $o@@40 null) (implements$_module.Object (dtype $o@@40))))
 :qid |unknown.0:0|
 :skolemid |1247|
 :pattern ( ($Is refType $o@@40 Tclass._module.Object?))
)))
(assert (forall (($o@@41 T@U) ) (! (= ($Is refType $o@@41 Tclass._module.OwnedObject?)  (or (= $o@@41 null) (implements$_module.OwnedObject (dtype $o@@41))))
 :qid |unknown.0:0|
 :skolemid |1686|
 :pattern ( ($Is refType $o@@41 Tclass._module.OwnedObject?))
)))
(assert (forall (($h@@34 T@U) ($o@@42 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@42 null)) (not true)) ($Is refType $o@@42 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) _module.Universe.content)) (TSet Tclass._module.Object) $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |647|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@42) _module.Universe.content)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@36 T@U) (this@@36 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@36 this@@36) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@36) (and (or (not (= this@@36 null)) (not true)) (and ($Is refType this@@36 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@36 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@36)))))) (= (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@36 this@@36)  (and true (>= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@36) _module.ClaimIncreasingCounterGreaterThanConstant.counter))) _module.IncreasingCounter.value))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@36 this@@36) _module.ClaimIncreasingCounterGreaterThanConstant.constant))) _module.ConstantInteger.value)))))))
 :qid |_09CounterNoStateMachinedfy.640:19|
 :skolemid |2953|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@36 this@@36) ($IsGoodHeap $Heap@@36))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@37 T@U) (this@@37 T@U) ) (!  (=> (or (|_module.IncreasingCounter.userInv#canCall| $Heap@@37 this@@37) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@37) (and (or (not (= this@@37 null)) (not true)) (and ($Is refType this@@37 Tclass._module.IncreasingCounter) ($IsAlloc refType this@@37 Tclass._module.IncreasingCounter $Heap@@37)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.IncreasingCounter.localUserInv#canCall| $Heap@@37 this@@37)) (= (_module.IncreasingCounter.userInv $Heap@@37 this@@37)  (and true (_module.IncreasingCounter.localUserInv $Heap@@37 this@@37)))))
 :qid |_09CounterNoStateMachinedfy.505:19|
 :skolemid |2148|
 :pattern ( (_module.IncreasingCounter.userInv $Heap@@37 this@@37) ($IsGoodHeap $Heap@@37))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@38 T@U) (this@@38 T@U) ) (!  (=> (or (|_module.Integer.userInv#canCall| $Heap@@38 this@@38) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@38) (and (or (not (= this@@38 null)) (not true)) (and ($Is refType this@@38 Tclass._module.Integer) ($IsAlloc refType this@@38 Tclass._module.Integer $Heap@@38)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Integer.localUserInv#canCall| $Heap@@38 this@@38)) (= (_module.Integer.userInv $Heap@@38 this@@38)  (and true (_module.Integer.localUserInv $Heap@@38 this@@38)))))
 :qid |_09CounterNoStateMachinedfy.550:19|
 :skolemid |2418|
 :pattern ( (_module.Integer.userInv $Heap@@38 this@@38) ($IsGoodHeap $Heap@@38))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@39 T@U) (this@@39 T@U) ) (!  (=> (or (|_module.ConstantInteger.userInv#canCall| $Heap@@39 this@@39) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@39) (and (or (not (= this@@39 null)) (not true)) (and ($Is refType this@@39 Tclass._module.ConstantInteger) ($IsAlloc refType this@@39 Tclass._module.ConstantInteger $Heap@@39)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ConstantInteger.localUserInv#canCall| $Heap@@39 this@@39)) (= (_module.ConstantInteger.userInv $Heap@@39 this@@39)  (and true (_module.ConstantInteger.localUserInv $Heap@@39 this@@39)))))
 :qid |_09CounterNoStateMachinedfy.595:19|
 :skolemid |2688|
 :pattern ( (_module.ConstantInteger.userInv $Heap@@39 this@@39) ($IsGoodHeap $Heap@@39))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@40 T@U) (this@@40 T@U) ) (!  (=> (or (|_module.ClaimIncreasingCounterGreaterThanConstant.userInv#canCall| $Heap@@40 this@@40) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@40) (and (or (not (= this@@40 null)) (not true)) (and ($Is refType this@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType this@@40 Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@40)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv#canCall| $Heap@@40 this@@40)) (= (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@40 this@@40)  (and true (_module.ClaimIncreasingCounterGreaterThanConstant.localUserInv $Heap@@40 this@@40)))))
 :qid |_09CounterNoStateMachinedfy.643:19|
 :skolemid |2960|
 :pattern ( (_module.ClaimIncreasingCounterGreaterThanConstant.userInv $Heap@@40 this@@40) ($IsGoodHeap $Heap@@40))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@41 T@U) (this@@41 T@U) ) (!  (=> (or (|_module.Thread.localInv#canCall| $Heap@@41 this@@41) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@41) (and (or (not (= this@@41 null)) (not true)) (and ($Is refType this@@41 Tclass._module.Thread) ($IsAlloc refType this@@41 Tclass._module.Thread $Heap@@41)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.baseInv#canCall| $Heap@@41 this@@41)) (= (_module.Thread.localInv $Heap@@41 this@@41)  (and true (_module.Object.baseInv $Heap@@41 this@@41)))))
 :qid |_09CounterNoStateMachinedfy.290:19|
 :skolemid |1401|
 :pattern ( (_module.Thread.localInv $Heap@@41 this@@41) ($IsGoodHeap $Heap@@41))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@42 T@U) (this@@42 T@U) ) (!  (=> (or (|_module.Thread.inv#canCall| $Heap@@42 this@@42) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@42) (and (or (not (= this@@42 null)) (not true)) (and ($Is refType this@@42 Tclass._module.Thread) ($IsAlloc refType this@@42 Tclass._module.Thread $Heap@@42)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Thread.localInv#canCall| $Heap@@42 this@@42)) (= (_module.Thread.inv $Heap@@42 this@@42)  (and true (_module.Thread.localInv $Heap@@42 this@@42)))))
 :qid |_09CounterNoStateMachinedfy.293:19|
 :skolemid |1409|
 :pattern ( (_module.Thread.inv $Heap@@42 this@@42) ($IsGoodHeap $Heap@@42))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@43 T@U) (this@@43 T@U) ) (!  (=> (or (|_module.Object.triggerAxioms#canCall| $Heap@@43 this@@43) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@43) (and (or (not (= this@@43 null)) (not true)) (and ($Is refType this@@43 Tclass._module.Object) ($IsAlloc refType this@@43 Tclass._module.Object $Heap@@43)))))) (= (_module.Object.triggerAxioms $Heap@@43 this@@43)  (and (or ($Is refType this@@43 Tclass._module.OwnedObject) ($Is refType this@@43 Tclass._module.Thread)) (not (and ($Is refType this@@43 Tclass._module.OwnedObject) ($Is refType this@@43 Tclass._module.Thread))))))
 :qid |_09CounterNoStateMachinedfy.269:19|
 :skolemid |1311|
 :pattern ( (_module.Object.triggerAxioms $Heap@@43 this@@43) ($IsGoodHeap $Heap@@43))
))))
(assert (forall (($h@@35 T@U) ($o@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@43 null)) (not true)) ($Is refType $o@@43 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@43) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@43) _module.Universe.content)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@44 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |universe#0| () T@U)
(declare-fun |running#0| () T@U)
(declare-fun |counter#0| () T@U)
(declare-fun |remaining#0| () T@U)
(declare-fun |defass#initial_value#0_0| () Bool)
(declare-fun |initial_value#0_0| () T@U)
(declare-fun |defass#claim1#0_0| () Bool)
(declare-fun |claim1#0_0| () T@U)
(declare-fun |defass#initial_value_plus_one#0_0| () Bool)
(declare-fun |initial_value_plus_one#0_0| () T@U)
(declare-fun |defass#claim2#0_0| () Bool)
(declare-fun |claim2#0_0| () T@U)
(declare-fun |defass#final_value#0_0| () Bool)
(declare-fun |final_value#0_0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Incrementer_split0)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@44) ($IsHeapAnchor $Heap@@44)) (=> (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@44)) (and ($Is refType |running#0| Tclass._module.Thread) ($IsAlloc refType |running#0| Tclass._module.Thread $Heap@@44))) (=> (and (and (and (and (and ($Is refType |counter#0| Tclass._module.IncreasingCounter) ($IsAlloc refType |counter#0| Tclass._module.IncreasingCounter $Heap@@44)) (and ($Is refType |remaining#0| Tclass._module.Integer) ($IsAlloc refType |remaining#0| Tclass._module.Integer $Heap@@44))) (and (and (=> |defass#initial_value#0_0| (and ($Is refType |initial_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value#0_0| Tclass._module.ConstantInteger $Heap@@44))) true) (and (=> |defass#claim1#0_0| (and ($Is refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim1#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@44))) true))) (and (and (and (=> |defass#initial_value_plus_one#0_0| (and ($Is refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |initial_value_plus_one#0_0| Tclass._module.ConstantInteger $Heap@@44))) true) (and (=> |defass#claim2#0_0| (and ($Is refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant) ($IsAlloc refType |claim2#0_0| Tclass._module.ClaimIncreasingCounterGreaterThanConstant $Heap@@44))) true)) (and (and (=> |defass#final_value#0_0| (and ($Is refType |final_value#0_0| Tclass._module.ConstantInteger) ($IsAlloc refType |final_value#0_0| Tclass._module.ConstantInteger $Heap@@44))) true) (= 14 $FunctionContextHeight)))) (and (and (and (and (|_module.Universe.globalInv#canCall| $Heap@@44 |universe#0|) (and (_module.Universe.globalInv $Heap@@44 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@44 |universe#0|) (forall ((|o#10| T@U) ) (!  (=> (and ($Is refType |o#10| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |o#10|))) (_module.Object.inv $Heap@@44 |o#10|))
 :qid |_09CounterNoStateMachinedfy.40:32|
 :skolemid |513|
 :pattern ( (_module.Object.inv $Heap@@44 |o#10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |o#10|)))
))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |running#0|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |counter#0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)) ($Box refType |remaining#0|)))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |remaining#0|) _module.OwnedObject.owner)) |running#0|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |remaining#0|) _module.Integer.value))) (LitInt 10))) (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@44 alloc |universe#0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@44 |universe#0|) _module.Universe.content)))) (= (ControlFlow 0 2) (- 0 1)))))) (or (not (= |universe#0| null)) (not true)))))))
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
