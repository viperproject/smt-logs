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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun field$content () T@U)
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
(declare-fun _module.__default.upCast (T@U) T@U)
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
(declare-fun |_module.__default.upCast#canCall| (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Universe.legalTransition (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legalTransition#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.goodPreAndLegalChanges (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.goodPreAndLegalChanges#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? tytagFamily$object tytagFamily$Universe tytagFamily$Object field$content)
)
(assert (= (FDim alloc) 0))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.globalBaseInv#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (|_module.__default.upCast#canCall| |o#0|))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |496|
 :pattern ( (_module.__default.upCast |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
)) (= (_module.Universe.globalBaseInv $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= (_module.__default.upCast |o#0@@0|) this)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |495|
 :pattern ( (_module.__default.upCast |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))))
 :qid |_05RecInvariantCutdfy.19:19|
 :skolemid |497|
 :pattern ( (_module.Universe.globalBaseInv $Heap this) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.legalTransition#canCall| $prevHeap $Heap@@0 this@@0) (and (< 9 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap $Heap@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $prevHeap)))))) (and (and (|_module.Universe.globalInv#canCall| $prevHeap this@@0) (=> (_module.Universe.globalInv $prevHeap this@@0) (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@0) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content))) (and (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)) (and (=> (not (forall (($o T@U) ($f T@U) ) (!  (=> (or (not (= $o null)) (not true)) (=> (= $o |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o) $f))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |534|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o) $f))
))) (|_module.Object.inv2#canCall| $prevHeap $Heap@@0 |o#0@@1|)) (=> (or (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@0 null)) (not true)) (=> (= $o@@0 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@0) $f@@0))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) $f@@0))
)) (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@1|)) (=> (not (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (or (not (= $o@@1 null)) (not true)) (=> (= $o@@1 |o#0@@1|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@1) $f@@1))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |535|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@1) $f@@1))
))) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@1|))))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |537|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)))
)) (=> (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@2|))) (and (or (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@2 null)) (not true)) (=> (= $o@@2 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@2) $f@@2))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@2))
)) (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@2|)) (or (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@3 null)) (not true)) (=> (= $o@@3 |o#0@@2|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@3) $f@@3))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |540|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@3) $f@@3))
)) (_module.Object.inv $Heap@@0 |o#0@@2|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |541|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@2|))
 :pattern ( (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@2|)))
)) (forall ((|o#1| T@U) ) (!  (=> ($Is refType |o#1| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#1|)))) (|_module.Object.inv#canCall| $Heap@@0 |o#1|)))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |538|
 :pattern ( (_module.Object.inv $Heap@@0 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1|)))
))))))))) (= (_module.Universe.legalTransition $prevHeap $Heap@@0 this@@0)  (and (and (and (and (_module.Universe.globalInv $prevHeap this@@0) (_module.Universe.globalBaseInv $Heap@@0 this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)))) (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (or (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (or (not (= $o@@4 null)) (not true)) (=> (= $o@@4 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@4) $f@@4))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |530|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@4) $f@@4))
)) (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@3|)) (or (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@5 null)) (not true)) (=> (= $o@@5 |o#0@@3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@5) $f@@5))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |531|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5) $f@@5))
)) (_module.Object.inv $Heap@@0 |o#0@@3|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |532|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@3|))
 :pattern ( (_module.Object.inv2 $prevHeap $Heap@@0 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#0@@3|)))
))) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#1@@0|))))) (_module.Object.inv $Heap@@0 |o#1@@0|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |533|
 :pattern ( (_module.Object.inv $Heap@@0 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap this@@0) _module.Universe.content)) ($Box refType |o#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#1@@0|)))
))))))
 :qid |_05RecInvariantCutdfy.34:22|
 :skolemid |542|
 :pattern ( (_module.Universe.legalTransition $prevHeap $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@1 this@@1) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $Heap@@1)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@1 this@@1) (=> (_module.Universe.globalBaseInv $Heap@@1 this@@1) (forall ((|o#0@@4| T@U) ) (!  (=> ($Is refType |o#0@@4| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@4|)) (|_module.Object.inv#canCall| $Heap@@1 |o#0@@4|)))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))) (= (_module.Universe.globalInv $Heap@@1 this@@1)  (and (_module.Universe.globalBaseInv $Heap@@1 this@@1) (forall ((|o#0@@5| T@U) ) (!  (=> (and ($Is refType |o#0@@5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@5|))) (_module.Object.inv $Heap@@1 |o#0@@5|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@1 |o#0@@5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Universe.content)) ($Box refType |o#0@@5|)))
))))))
 :qid |_05RecInvariantCutdfy.24:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@0))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@1))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap@@0 $h0 this@@2) (_module.Universe.globalInv2 $prevHeap@@0 $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.globalInv2 $prevHeap@@0 $h1 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@7 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@7) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@7) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |526|
)) (= (_module.Universe.legalTransition $prevHeap@@1 $h0@@0 this@@3) (_module.Universe.legalTransition $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |527|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.legalTransition $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@8 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@8) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@8) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |633|
)) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@2 $h0@@1 this@@4) (_module.Object.goodPreAndLegalChanges $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |634|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.goodPreAndLegalChanges $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Object) ($IsAlloc refType this@@5 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@9 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@9) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@9) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.Object.inv2 $prevHeap@@3 $h0@@2 this@@5) (_module.Object.inv2 $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.inv2 $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($o@@10 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._System.object? $h@@2)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@11 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@3)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Universe? $h@@3))
)))
(assert (forall (($o@@12 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@4)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Object? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
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
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@5 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@13) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@13) Tclass._module.Universe $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |615|
 :pattern ( (_module.Object.universe $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@13) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@14) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.Object.universe $o@@14))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@3 Tclass._module.Universe?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Universe)  (and ($Is refType |c#0@@3| Tclass._module.Universe?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Object)  (and ($Is refType |c#0@@4| Tclass._module.Object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@6| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@6|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@6| Tclass._System.object))) (= (_module.__default.upCast |o#0@@6|) |o#0@@6|))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@6|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@2 this@@6) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Object) ($IsAlloc refType this@@6 Tclass._module.Object $Heap@@2)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe this@@6)) _module.Universe.content)) ($Box refType this@@6)) (|_module.Universe.globalBaseInv#canCall| $Heap@@2 (_module.Object.universe this@@6))) (= (_module.Object.baseInv $Heap@@2 this@@6)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 (_module.Object.universe this@@6)) _module.Universe.content)) ($Box refType this@@6)) (_module.Universe.globalBaseInv $Heap@@2 (_module.Object.universe this@@6))))))
 :qid |_05RecInvariantCutdfy.61:19|
 :skolemid |620|
 :pattern ( (_module.Object.baseInv $Heap@@2 this@@6) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@7| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@7|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@7| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@7|) Tclass._System.object))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@7|))
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
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@15 T@U) ) (! ($Is refType $o@@15 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@15 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|o#0@@8| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@8|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@8| Tclass._System.object) ($IsAlloc refType |o#0@@8| Tclass._System.object $Heap@@3)))) ($IsGoodHeap $Heap@@3)) ($IsAlloc refType (_module.__default.upCast |o#0@@8|) Tclass._System.object $Heap@@3))
 :qid |_05RecInvariantCutdfy.8:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@8|) Tclass._System.object $Heap@@3))
))))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@9| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| (Lit refType |o#0@@9|)) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@9| Tclass._System.object))) (= (_module.__default.upCast (Lit refType |o#0@@9|)) (Lit refType |o#0@@9|)))
 :qid |_05RecInvariantCutdfy.8:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@9|)))
))))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@16 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (or (= $o@@16 this@@7) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 this@@7) _module.Universe.content)) ($Box refType $o@@16)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@16) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@16) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.Universe.globalBaseInv $h0@@3 this@@7) (_module.Universe.globalBaseInv $h1@@3 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.globalBaseInv $h1@@3 this@@7))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@17 T@U) ($f@@11 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f@@11))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1031|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f@@11))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@18 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@18) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@18) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@18) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@4 this@@8) (_module.Universe.globalInv $h1@@4 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv $h1@@4 this@@8))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Object) ($IsAlloc refType this@@9 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@19 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@19) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@19) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |616|
)) (= (_module.Object.baseInv $h0@@5 this@@9) (_module.Object.baseInv $h1@@5 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |617|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.baseInv $h1@@5 this@@9))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.Object) ($IsAlloc refType this@@10 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@20 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@20) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@20) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |661|
)) (= (_module.Object.inv $h0@@6 this@@10) (_module.Object.inv $h1@@6 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |662|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.inv $h1@@6 this@@10))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (forall (($o@@21 T@U) ) (! (= ($Is refType $o@@21 Tclass._module.Universe?)  (or (= $o@@21 null) (implements$_module.Universe (dtype $o@@21))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@21 Tclass._module.Universe?))
)))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass._module.Object?)  (or (= $o@@22 null) (implements$_module.Object (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Is refType $o@@22 Tclass._module.Object?))
)))
(assert (forall (($h@@6 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@23 null)) (not true)) ($Is refType $o@@23 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@23) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@23) _module.Universe.content)) (TSet Tclass._module.Object) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@23) _module.Universe.content)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@4 $Heap@@4 this@@11) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@4 $Heap@@4)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Universe) ($IsAlloc refType this@@11 Tclass._module.Universe $prevHeap@@4)))))) (and (forall ((|o#0@@10| T@U) ) (!  (=> ($Is refType |o#0@@10| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@10|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@10|)) (|_module.Object.inv2#canCall| $prevHeap@@4 $Heap@@4 |o#0@@10|))))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@4 $Heap@@4 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@10|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@4 $Heap@@4 this@@11) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@11|)) (_module.Object.inv2 $prevHeap@@4 $Heap@@4 |o#0@@11|)))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@4 $Heap@@4 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@11) _module.Universe.content)) ($Box refType |o#0@@11|)))
)))))
 :qid |_05RecInvariantCutdfy.29:22|
 :skolemid |521|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@4 $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall (($h@@7 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@24) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@24) _module.Universe.content)))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Object.goodPreAndLegalChanges#canCall| $prevHeap@@5 $Heap@@5 this@@12) (and (< 10 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@5 $Heap@@5)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $prevHeap@@5)))))) (and (and (and (|_module.Object.baseInv#canCall| $prevHeap@@5 this@@12) (=> (_module.Object.baseInv $prevHeap@@5 this@@12) (|_module.Universe.globalInv#canCall| $prevHeap@@5 (_module.Object.universe this@@12)))) (=> (and (_module.Object.baseInv $prevHeap@@5 this@@12) (_module.Universe.globalInv $prevHeap@@5 (_module.Object.universe this@@12))) (and (|_module.Object.baseInv#canCall| $Heap@@5 this@@12) (=> (_module.Object.baseInv $Heap@@5 this@@12) (=> (forall (($o@@25 T@U) ($f@@15 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 this@@12) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@25) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 $o@@25) $f@@15))))
 :qid |_05RecInvariantCutdfy.77:8|
 :skolemid |638|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@25) $f@@15))
)) (|_module.Universe.legalTransition#canCall| $prevHeap@@5 $Heap@@5 (_module.Object.universe this@@12))))))) (= (_module.Object.goodPreAndLegalChanges $prevHeap@@5 $Heap@@5 this@@12)  (and (and (and (and (_module.Object.baseInv $prevHeap@@5 this@@12) (_module.Universe.globalInv $prevHeap@@5 (_module.Object.universe this@@12))) (_module.Object.baseInv $Heap@@5 this@@12)) (forall (($o@@26 T@U) ($f@@16 T@U) ) (!  (=> (or (not (= $o@@26 null)) (not true)) (=> (= $o@@26 this@@12) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@26) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 $o@@26) $f@@16))))
 :qid |_05RecInvariantCutdfy.77:8|
 :skolemid |637|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@26) $f@@16))
))) (_module.Universe.legalTransition $prevHeap@@5 $Heap@@5 (_module.Object.universe this@@12))))))
 :qid |_05RecInvariantCutdfy.74:22|
 :skolemid |639|
 :pattern ( (_module.Object.goodPreAndLegalChanges $prevHeap@@5 $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@6 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun |o#0_0@0| () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@13 () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.Universe.lci)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon6_correct true))
(let ((anon12_Else_correct  (=> (and (not (_module.Object.inv2 $Heap@@6 current$Heap |o#0_0@0|)) (= (ControlFlow 0 27) 24)) anon6_correct)))
(let ((anon12_Then_correct  (=> (_module.Object.inv2 $Heap@@6 current$Heap |o#0_0@0|) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |o#0_0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |o#0_0@0|) Tclass._module.Object? current$Heap) (=> (and (|_module.Object.inv#canCall| current$Heap |o#0_0@0|) (= (ControlFlow 0 25) 24)) anon6_correct))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (or (not (= |o#0_0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |o#0_0@0|) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 28) (- 0 29)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6) (=> (|_module.Object.inv2#canCall| $Heap@@6 current$Heap |o#0_0@0|) (and (=> (= (ControlFlow 0 28) 25) anon12_Then_correct) (=> (= (ControlFlow 0 28) 27) anon12_Else_correct)))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 23)) (or (not (= |o#0_0@0| null)) (not true))) (=> (or (not (= |o#0_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 22)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6) (=> (= call0formal@previous$Heap@0 $Heap@@6) (and (=> (= (ControlFlow 0 7) (- 0 21)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| call0formal@previous$Heap@0 |o#0_0@0|) (or (_module.Object.baseInv call0formal@previous$Heap@0 |o#0_0@0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0_0@0|))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| call0formal@previous$Heap@0 |o#0_0@0|) (or (_module.Object.baseInv call0formal@previous$Heap@0 |o#0_0@0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0_0@0|)))))) (and (=> (= (ControlFlow 0 7) (- 0 20)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| call0formal@previous$Heap@0 |o#0_0@0|) (or (_module.Object.baseInv call0formal@previous$Heap@0 |o#0_0@0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (= (_module.Object.universe |o#0@@12|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#0@@12|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |669|
 :pattern ( (_module.__default.upCast |o#0@@12|))
 :pattern ( (_module.Object.universe |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0@@12|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| call0formal@previous$Heap@0 |o#0_0@0|) (or (_module.Object.baseInv call0formal@previous$Heap@0 |o#0_0@0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (= (_module.Object.universe |o#0@@13|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#0@@13|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |669|
 :pattern ( (_module.__default.upCast |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0@@13|)))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 19)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#1@@1|))) (and (= (_module.Object.universe |o#1@@1|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#1@@1|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |671|
 :pattern ( (_module.__default.upCast |o#1@@1|))
 :pattern ( (_module.Object.universe |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#1@@1|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#1@@2|))) (and (= (_module.Object.universe |o#1@@2|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#1@@2|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |671|
 :pattern ( (_module.__default.upCast |o#1@@2|))
 :pattern ( (_module.Object.universe |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#1@@2|)))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 18)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#2|))) (_module.Object.inv call0formal@previous$Heap@0 |o#2|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |673|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#2|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#2@@0|))) (_module.Object.inv call0formal@previous$Heap@0 |o#2@@0|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |673|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))) (and (=> (= (ControlFlow 0 7) (- 0 17)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| current$Heap |o#0_0@0|) (or (_module.Object.baseInv current$Heap |o#0_0@0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0_0@0|))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| current$Heap |o#0_0@0|) (or (_module.Object.baseInv current$Heap |o#0_0@0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#0_0@0|)))))) (and (=> (= (ControlFlow 0 7) (- 0 16)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| current$Heap |o#0_0@0|) (or (_module.Object.baseInv current$Heap |o#0_0@0|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#3|))) (and (= (_module.Object.universe |o#3|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#3|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |675|
 :pattern ( (_module.__default.upCast |o#3|))
 :pattern ( (_module.Object.universe |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#3|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Object.baseInv#canCall| current$Heap |o#0_0@0|) (or (_module.Object.baseInv current$Heap |o#0_0@0|) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#3@@0|))) (and (= (_module.Object.universe |o#3@@0|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#3@@0|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |675|
 :pattern ( (_module.__default.upCast |o#3@@0|))
 :pattern ( (_module.Object.universe |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 15)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (forall (($o@@27 T@U) ($f@@17 T@U) ) (!  (=> (or (not (= $o@@27 null)) (not true)) (=> (= $o@@27 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@27) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@27) $f@@17))))
 :qid |_05RecInvariantCutdfy.77:8|
 :skolemid |677|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@27) $f@@17))
))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (forall (($o@@28 T@U) ($f@@18 T@U) ) (!  (=> (or (not (= $o@@28 null)) (not true)) (=> (= $o@@28 |o#0_0@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@28) $f@@18))))
 :qid |_05RecInvariantCutdfy.77:8|
 :skolemid |677|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@28) $f@@18))
)))) (and (=> (= (ControlFlow 0 7) (- 0 14)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#4|))) (and (= (_module.Object.universe |o#4|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#4|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |678|
 :pattern ( (_module.__default.upCast |o#4|))
 :pattern ( (_module.Object.universe |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#4|)))
))))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#4@@0|))) (and (= (_module.Object.universe |o#4@@0|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#4@@0|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |678|
 :pattern ( (_module.__default.upCast |o#4@@0|))
 :pattern ( (_module.Object.universe |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))))))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#5|))) (_module.Object.inv call0formal@previous$Heap@0 |o#5|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |680|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#5|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalInv call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) (forall ((|o#5@@0| T@U) ) (!  (=> (and ($Is refType |o#5@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#5@@0|))) (_module.Object.inv call0formal@previous$Heap@0 |o#5@@0|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |680|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#5@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#5@@0|)))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#6|))) (and (= (_module.Object.universe |o#6|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#6|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |682|
 :pattern ( (_module.__default.upCast |o#6|))
 :pattern ( (_module.Object.universe |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#6|)))
))))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.globalBaseInv current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#6@@0|))) (and (= (_module.Object.universe |o#6@@0|) (_module.Object.universe |o#0_0@0|)) (or (not (= (_module.__default.upCast |o#6@@0|) (_module.Object.universe |o#0_0@0|))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |682|
 :pattern ( (_module.__default.upCast |o#6@@0|))
 :pattern ( (_module.Object.universe |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#6@@0|)))
)))))))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content))))))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#7|))) (and (or (forall (($o@@29 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@29 null)) (not true)) (=> (= $o@@29 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@29) $f@@19))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |684|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@29) $f@@19))
)) (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#7|)) (or (forall (($o@@30 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@30 null)) (not true)) (=> (= $o@@30 |o#7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@30) $f@@20))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |685|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@30) $f@@20))
)) (_module.Object.inv current$Heap |o#7|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |686|
 :pattern ( (_module.Object.inv current$Heap |o#7|))
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#7|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#7@@0|))) (and (or (forall (($o@@31 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@31 null)) (not true)) (=> (= $o@@31 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@31) $f@@21))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |684|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@31) $f@@21))
)) (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#7@@0|)) (or (forall (($o@@32 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@32 null)) (not true)) (=> (= $o@@32 |o#7@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@32) $f@@22))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |685|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@32) $f@@22))
)) (_module.Object.inv current$Heap |o#7@@0|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |686|
 :pattern ( (_module.Object.inv current$Heap |o#7@@0|))
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8|))))) (_module.Object.inv current$Heap |o#8|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |687|
 :pattern ( (_module.Object.inv current$Heap |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8|)))
))))))) (=> (=> (|_module.Object.goodPreAndLegalChanges#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (or (_module.Object.goodPreAndLegalChanges call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 current$Heap (_module.Object.universe |o#0_0@0|)) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8@@0|))))) (_module.Object.inv current$Heap |o#8@@0|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |687|
 :pattern ( (_module.Object.inv current$Heap |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap (_module.Object.universe |o#0_0@0|)) _module.Universe.content)) ($Box refType |o#8@@0|)))
)))))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (|_module.Object.inv2#canCall| call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (=> (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#0_0@0|) (|_module.Object.inv#canCall| current$Heap |o#0_0@0|))) (_module.Object.inv2 call0formal@previous$Heap@0 current$Heap |o#0_0@0|)) (and (_module.Object.inv current$Heap |o#0_0@0|) (= current$Heap $Heap@0))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (_module.Object.inv2 $Heap@@6 $Heap@0 |o#0_0@0|)) (=> (_module.Object.inv2 $Heap@@6 $Heap@0 |o#0_0@0|) (=> (= (ControlFlow 0 7) (- 0 6)) (_module.Object.inv $Heap@0 |o#0_0@0|)))))))))))))))))))))))))))))))))))))))
(let ((anon3_correct  (=> (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_0@0|)) (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@6 current$Heap |o#0_0@0|)) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_0@0|)) (_module.Object.goodPreAndLegalChanges $Heap@@6 current$Heap |o#0_0@0|)) (and (=> (= (ControlFlow 0 31) 28) anon11_Then_correct) (=> (= (ControlFlow 0 31) 7) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_0@0|))) (= (ControlFlow 0 35) 31)) anon3_correct)))
(let ((anon10_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_0@0|)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (or (not (= |o#0_0@0| null)) (not true))) (=> ($IsAllocBox ($Box refType |o#0_0@0|) Tclass._module.Object? current$Heap) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6)) (=> ($IsAlloc refType |o#0_0@0| Tclass._module.Object $Heap@@6) (=> (and (|_module.Object.goodPreAndLegalChanges#canCall| $Heap@@6 current$Heap |o#0_0@0|) (= (ControlFlow 0 32) 31)) anon3_correct))))))))
(let ((anon9_Then_correct  (=> ($Is refType |o#0_0@0| Tclass._module.Object) (and (=> (= (ControlFlow 0 36) (- 0 37)) ($IsAlloc refType this@@13 Tclass._module.Universe $Heap@@6)) (=> ($IsAlloc refType this@@13 Tclass._module.Universe $Heap@@6) (and (=> (= (ControlFlow 0 36) 32) anon10_Then_correct) (=> (= (ControlFlow 0 36) 35) anon10_Else_correct)))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Universe.globalInv#canCall| current$Heap this@@13) (or (_module.Universe.globalInv current$Heap this@@13) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap this@@13) (or (_module.Universe.globalBaseInv current$Heap this@@13) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#13|))) (and (= (_module.Object.universe |o#13|) this@@13) (or (not (= (_module.__default.upCast |o#13|) this@@13)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |602|
 :pattern ( (_module.__default.upCast |o#13|))
 :pattern ( (_module.Object.universe |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#13|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| current$Heap this@@13) (or (_module.Universe.globalInv current$Heap this@@13) (=> (|_module.Universe.globalBaseInv#canCall| current$Heap this@@13) (or (_module.Universe.globalBaseInv current$Heap this@@13) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#13@@0|))) (and (= (_module.Object.universe |o#13@@0|) this@@13) (or (not (= (_module.__default.upCast |o#13@@0|) this@@13)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |602|
 :pattern ( (_module.__default.upCast |o#13@@0|))
 :pattern ( (_module.Object.universe |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Universe.globalInv#canCall| current$Heap this@@13) (or (_module.Universe.globalInv current$Heap this@@13) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#14|))) (_module.Object.inv current$Heap |o#14|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |604|
 :pattern ( (_module.Object.inv current$Heap |o#14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#14|)))
))))) (=> (=> (|_module.Universe.globalInv#canCall| current$Heap this@@13) (or (_module.Universe.globalInv current$Heap this@@13) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#14@@0|))) (_module.Object.inv current$Heap |o#14@@0|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |604|
 :pattern ( (_module.Object.inv current$Heap |o#14@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#14@@0|)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Universe.globalInv2#canCall| previous$Heap current$Heap this@@13) (or (_module.Universe.globalInv2 previous$Heap current$Heap this@@13) (forall ((|o#15| T@U) ) (!  (=> (and ($Is refType |o#15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#15|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#15|)) (_module.Object.inv2 previous$Heap current$Heap |o#15|)))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |606|
 :pattern ( (_module.Object.inv2 previous$Heap current$Heap |o#15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#15|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#15|)))
)))))))))))
(let ((anon9_Else_correct  (=> (and (forall ((|o#0_1| T@U) ) (!  (=> (and ($Is refType |o#0_1| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_1|)) (_module.Object.goodPreAndLegalChanges $Heap@@6 current$Heap |o#0_1|))) (and (_module.Object.inv2 $Heap@@6 current$Heap |o#0_1|) (_module.Object.inv current$Heap |o#0_1|)))
 :qid |_05RecInvariantCutdfy.49:12|
 :skolemid |609|
 :pattern ( (_module.Object.inv current$Heap |o#0_1|))
 :pattern ( (_module.Object.inv2 $Heap@@6 current$Heap |o#0_1|))
 :pattern ( (_module.Object.goodPreAndLegalChanges $Heap@@6 current$Heap |o#0_1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@13) _module.Universe.content)) ($Box refType |o#0_1|)))
)) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 38) 36) anon9_Then_correct) (=> (= (ControlFlow 0 38) 5) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (and (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Universe) ($IsAlloc refType this@@13 Tclass._module.Universe previous$Heap))) (= 13 $FunctionContextHeight)) (and (= previous$Heap $Heap@@6) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap)))) (and (and (|_module.Universe.legalTransition#canCall| previous$Heap current$Heap this@@13) (and (_module.Universe.legalTransition previous$Heap current$Heap this@@13) (and (and (and (and (_module.Universe.globalInv previous$Heap this@@13) (_module.Universe.globalBaseInv current$Heap this@@13)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)))) (forall ((|o#11| T@U) ) (!  (=> (and ($Is refType |o#11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#11|))) (and (or (forall (($o@@33 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@33 null)) (not true)) (=> (= $o@@33 |o#11|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap $o@@33) $f@@23))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |598|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@33) $f@@23))
)) (_module.Object.inv2 previous$Heap current$Heap |o#11|)) (or (forall (($o@@34 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@34 null)) (not true)) (=> (= $o@@34 |o#11|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap $o@@34) $f@@24))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |599|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@34) $f@@24))
)) (_module.Object.inv current$Heap |o#11|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |600|
 :pattern ( (_module.Object.inv current$Heap |o#11|))
 :pattern ( (_module.Object.inv2 previous$Heap current$Heap |o#11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#11|)))
))) (forall ((|o#12| T@U) ) (!  (=> (and ($Is refType |o#12| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#12|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#12|))))) (_module.Object.inv current$Heap |o#12|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |601|
 :pattern ( (_module.Object.inv current$Heap |o#12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@13) _module.Universe.content)) ($Box refType |o#12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@13) _module.Universe.content)) ($Box refType |o#12|)))
))))) (= (ControlFlow 0 39) 38))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
