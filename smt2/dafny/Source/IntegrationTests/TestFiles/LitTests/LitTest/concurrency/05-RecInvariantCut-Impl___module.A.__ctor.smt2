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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.A? () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun Tagclass._module.B () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun Tagclass._module.B? () T@U)
(declare-fun class._module.B? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun field$content () T@U)
(declare-fun field$valid () T@U)
(declare-fun field$b () T@U)
(declare-fun field$a () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.Object (T@U) Bool)
(declare-fun Tclass._module.A? () T@U)
(declare-fun Tclass._module.B? () T@U)
(declare-fun |Set#Empty| () T@U)
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
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.A () T@U)
(declare-fun Tclass._module.B () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.A.valid () T@U)
(declare-fun _module.A.b () T@U)
(declare-fun _module.B.valid () T@U)
(declare-fun _module.B.a () T@U)
(declare-fun _module.A.inv (T@U T@U) Bool)
(declare-fun |_module.A.inv#canCall| (T@U T@U) Bool)
(declare-fun _module.B.inv (T@U T@U) Bool)
(declare-fun |_module.B.inv#canCall| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.A.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.A.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.B.inv2 (T@U T@U T@U) Bool)
(declare-fun _module.B.localInv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.A.localInv (T@U T@U) Bool)
(declare-fun |_module.A.localInv#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun _module.B.localInv (T@U T@U) Bool)
(declare-fun |_module.B.localInv#canCall| (T@U T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun |_module.A.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.B.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.A.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.B.localInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#21| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? class._module.A? Tagclass._module.A? Tagclass._module.B Tagclass._module.A Tagclass._module.B? class._module.B? tytagFamily$object tytagFamily$Universe tytagFamily$Object tytagFamily$A tytagFamily$B field$content field$valid field$b field$a)
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
(assert (implements$_module.Object Tclass._module.A?))
(assert (implements$_module.Object Tclass._module.B?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
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
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass._module.A?)  (or (= $o@@6 null) (= (dtype $o@@6) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType $o@@6 Tclass._module.A?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.B?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.B?)))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($Is refType $o@@7 Tclass._module.B?))
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
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.A? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( ($IsAllocBox bx Tclass._module.A? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.B? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.B? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.A $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.A? $h@@4))
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.A $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.A? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.B $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.B? $h@@5))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.B $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.B? $h@@5))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (= (FDim _module.A.valid) 0))
(assert (= (FieldOfDecl class._module.A? field$valid) _module.A.valid))
(assert ($IsGhostField _module.A.valid))
(assert (= (FDim _module.A.b) 0))
(assert (= (FieldOfDecl class._module.A? field$b) _module.A.b))
(assert ($IsGhostField _module.A.b))
(assert (= (FDim _module.B.valid) 0))
(assert (= (FieldOfDecl class._module.B? field$valid) _module.B.valid))
(assert ($IsGhostField _module.B.valid))
(assert (= (FDim _module.B.a) 0))
(assert (= (FieldOfDecl class._module.B? field$a) _module.B.a))
(assert ($IsGhostField _module.B.a))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.A.inv#canCall| $Heap@@2 this@@2) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.A)))) (= (_module.Object.inv $Heap@@2 this@@2) (_module.A.inv $Heap@@2 this@@2)))
 :qid |_05RecInvariantCutdfy.88:19|
 :skolemid |709|
 :pattern ( (_module.Object.inv $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.A) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.Object.inv $Heap@@2 this@@2) (_module.A.inv $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.B.inv#canCall| $Heap@@3 this@@3) (and (< 6 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.B)))) (= (_module.Object.inv $Heap@@3 this@@3) (_module.B.inv $Heap@@3 this@@3)))
 :qid |_05RecInvariantCutdfy.88:19|
 :skolemid |870|
 :pattern ( (_module.Object.inv $Heap@@3 this@@3) ($Is refType this@@3 Tclass._module.B) ($IsGoodHeap $Heap@@3))
 :pattern ( (_module.Object.inv $Heap@@3 this@@3) (_module.B.inv $Heap@@3 this@@3) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Universe) ($IsAlloc refType this@@4 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@8) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@8) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap@@0 $h0 this@@4) (_module.Universe.globalInv2 $prevHeap@@0 $h1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.globalInv2 $prevHeap@@0 $h1 this@@4))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Universe) ($IsAlloc refType this@@5 Tclass._module.Universe $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@9 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@9) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@9) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |526|
)) (= (_module.Universe.legalTransition $prevHeap@@1 $h0@@0 this@@5) (_module.Universe.legalTransition $prevHeap@@1 $h1@@0 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |527|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.legalTransition $prevHeap@@1 $h1@@0 this@@5))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Object) ($IsAlloc refType this@@6 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@10 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@10) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@10) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.Object.inv2 $prevHeap@@2 $h0@@1 this@@6) (_module.Object.inv2 $prevHeap@@2 $h1@@1 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.inv2 $prevHeap@@2 $h1@@1 this@@6))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.A) ($IsAlloc refType this@@7 Tclass._module.A $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@11 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@11) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@11) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |720|
)) (= (_module.A.inv2 $prevHeap@@3 $h0@@2 this@@7) (_module.A.inv2 $prevHeap@@3 $h1@@2 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |721|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.A.inv2 $prevHeap@@3 $h1@@2 this@@7))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.A) ($IsAlloc refType this@@8 Tclass._module.A $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@12 T@U) ($f@@10 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@12) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@12) $f@@10)))
 :qid |unknown.0:0|
 :skolemid |729|
)) (= (_module.A.localInv2 $prevHeap@@4 $h0@@3 this@@8) (_module.A.localInv2 $prevHeap@@4 $h1@@3 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |730|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.A.localInv2 $prevHeap@@4 $h1@@3 this@@8))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.B) ($IsAlloc refType this@@9 Tclass._module.B $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@13 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@13) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@13) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |880|
)) (= (_module.B.inv2 $prevHeap@@5 $h0@@4 this@@9) (_module.B.inv2 $prevHeap@@5 $h1@@4 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |881|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.B.inv2 $prevHeap@@5 $h1@@4 this@@9))
)))
(assert (forall (($prevHeap@@6 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.B) ($IsAlloc refType this@@10 Tclass._module.B $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@14 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@14) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@14) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@14) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |889|
)) (= (_module.B.localInv2 $prevHeap@@6 $h0@@5 this@@10) (_module.B.localInv2 $prevHeap@@6 $h1@@5 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |890|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.B.localInv2 $prevHeap@@6 $h1@@5 this@@10))
)))
(assert (forall (($o@@15 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@15 Tclass._System.object? $h@@6)  (or (= $o@@15 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@15) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@16 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@16 Tclass._module.Universe? $h@@7)  (or (= $o@@16 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@16) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@16 Tclass._module.Universe? $h@@7))
)))
(assert (forall (($o@@17 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@17 Tclass._module.Object? $h@@8)  (or (= $o@@17 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@17) alloc)))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($IsAlloc refType $o@@17 Tclass._module.Object? $h@@8))
)))
(assert (forall (($o@@18 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@18 Tclass._module.A? $h@@9)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType $o@@18 Tclass._module.A? $h@@9))
)))
(assert (forall (($o@@19 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@19 Tclass._module.B? $h@@10)  (or (= $o@@19 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@19) alloc)))))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.B? $h@@10))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@3) (|Set#IsMember| b@@4 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@4)) (not (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
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
(assert ($IsGhostField alloc))
(assert (forall (($h@@11 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@20) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@20) _module.A.valid)) TBool $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@20) _module.A.valid)))
)))
(assert (forall (($h@@12 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@21) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@21) _module.B.valid)) TBool $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |862|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@21) _module.B.valid)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@13 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@22 null)) (not true)) ($Is refType $o@@22 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@22) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@22) Tclass._module.Universe $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |615|
 :pattern ( (_module.Object.universe $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@22) alloc)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.A.localInv#canCall| $Heap@@4 this@@11) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.A) ($IsAlloc refType this@@11 Tclass._module.A $Heap@@4)))))) (and (|_module.Object.baseInv#canCall| $Heap@@4 this@@11) (= (_module.A.localInv $Heap@@4 this@@11)  (and (and (_module.Object.baseInv $Heap@@4 this@@11) (= (_module.Object.universe this@@11) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.A.b))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.A.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.A.b))) _module.B.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.A.b))) _module.B.a)) this@@11)))))))
 :qid |_05RecInvariantCutdfy.101:19|
 :skolemid |718|
 :pattern ( (_module.A.localInv $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.B.localInv#canCall| $Heap@@5 this@@12) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.B) ($IsAlloc refType this@@12 Tclass._module.B $Heap@@5)))))) (and (|_module.Object.baseInv#canCall| $Heap@@5 this@@12) (= (_module.B.localInv $Heap@@5 this@@12)  (and (and (_module.Object.baseInv $Heap@@5 this@@12) (= (_module.Object.universe this@@12) (_module.Object.universe ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.B.a))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.B.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.B.a))) _module.A.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@12) _module.B.a))) _module.A.b)) this@@12)))))))
 :qid |_05RecInvariantCutdfy.149:19|
 :skolemid |878|
 :pattern ( (_module.B.localInv $Heap@@5 this@@12) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) ($Is refType $o@@23 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@23) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.Object.universe $o@@23))
))))
(assert (forall ((h@@3 T@U) (k@@2 T@U) ) (!  (=> ($HeapSuccGhost h@@3 k@@2) (and ($HeapSucc h@@3 k@@2) (forall ((o@@5 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 o@@5) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@5) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@5) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@3 k@@2))
)))
(assert (forall (($h@@14 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.A?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@24) _module.A.b)) Tclass._module.B))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |701|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@24) _module.A.b)))
)))
(assert (forall (($h@@15 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.B?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@25) _module.B.a)) Tclass._module.A))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |863|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@25) _module.B.a)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@6 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.A.inv2#canCall| $prevHeap@@7 $Heap@@6 this@@13) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.A)))) (= (_module.Object.inv2 $prevHeap@@7 $Heap@@6 this@@13) (_module.A.inv2 $prevHeap@@7 $Heap@@6 this@@13)))
 :qid |_05RecInvariantCutdfy.89:22|
 :skolemid |725|
 :pattern ( (_module.Object.inv2 $prevHeap@@7 $Heap@@6 this@@13) ($Is refType this@@13 Tclass._module.A) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.Object.inv2 $prevHeap@@7 $Heap@@6 this@@13) (_module.A.inv2 $prevHeap@@7 $Heap@@6 this@@13) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@7 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.B.inv2#canCall| $prevHeap@@8 $Heap@@7 this@@14) (and (< 2 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.B)))) (= (_module.Object.inv2 $prevHeap@@8 $Heap@@7 this@@14) (_module.B.inv2 $prevHeap@@8 $Heap@@7 this@@14)))
 :qid |_05RecInvariantCutdfy.89:22|
 :skolemid |885|
 :pattern ( (_module.Object.inv2 $prevHeap@@8 $Heap@@7 this@@14) ($Is refType this@@14 Tclass._module.B) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.Object.inv2 $prevHeap@@8 $Heap@@7 this@@14) (_module.B.inv2 $prevHeap@@8 $Heap@@7 this@@14) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@5 Tclass._module.Universe?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@7 Tclass._module.Universe))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@8 Tclass._module.Object?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.A?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsBox bx@@9 Tclass._module.A?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.B) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.B)))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsBox bx@@10 Tclass._module.B))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.A) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.A)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsBox bx@@11 Tclass._module.A))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.B?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.B?)))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($IsBox bx@@12 Tclass._module.B?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Universe)  (and ($Is refType |c#0@@5| Tclass._module.Universe?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Object)  (and ($Is refType |c#0@@6| Tclass._module.Object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |693|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.A)  (and ($Is refType |c#0@@7| Tclass._module.A?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.A))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.A?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.B)  (and ($Is refType |c#0@@8| Tclass._module.B?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.B))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.B?))
)))
(assert (forall (($h@@16 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@26) _module.A.b)) Tclass._module.B $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@26) _module.A.b)))
)))
(assert (forall (($h@@17 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.B?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@27) _module.B.a)) Tclass._module.A $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |864|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@27) _module.B.a)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@6 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@6)  (or (|Set#IsMember| a@@9 o@@6) (|Set#IsMember| b@@6 o@@6)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@6| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@6|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@6| Tclass._System.object))) (= (_module.__default.upCast |o#0@@6|) |o#0@@6|))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@6|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@8 this@@15) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $Heap@@8)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Object.universe this@@15)) _module.Universe.content)) ($Box refType this@@15)) (|_module.Universe.globalBaseInv#canCall| $Heap@@8 (_module.Object.universe this@@15))) (= (_module.Object.baseInv $Heap@@8 this@@15)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.Object.universe this@@15)) _module.Universe.content)) ($Box refType this@@15)) (_module.Universe.globalBaseInv $Heap@@8 (_module.Object.universe this@@15))))))
 :qid |_05RecInvariantCutdfy.61:19|
 :skolemid |620|
 :pattern ( (_module.Object.baseInv $Heap@@8 this@@15) ($IsGoodHeap $Heap@@8))
))))
(assert (forall (($o@@28 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@28 Tclass._module.A? $heap) ($IsAlloc refType $o@@28 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( ($IsAlloc refType $o@@28 Tclass._module.A? $heap))
)))
(assert (forall (($o@@29 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@29 Tclass._module.B? $heap@@0) ($IsAlloc refType $o@@29 Tclass._module.Object? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( ($IsAlloc refType $o@@29 Tclass._module.B? $heap@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@9 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.A.localInv2#canCall| $prevHeap@@9 $Heap@@9 this@@16) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@9) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@9 $Heap@@9)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.A) ($IsAlloc refType this@@16 Tclass._module.A $prevHeap@@9)))))) (= (_module.A.localInv2 $prevHeap@@9 $Heap@@9 this@@16)  (and true (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@16) _module.A.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@16) _module.A.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@16) _module.A.b)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@16) _module.A.b))))))))
 :qid |_05RecInvariantCutdfy.115:22|
 :skolemid |733|
 :pattern ( (_module.A.localInv2 $prevHeap@@9 $Heap@@9 this@@16) ($IsGoodHeap $Heap@@9))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@10 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.B.localInv2#canCall| $prevHeap@@10 $Heap@@10 this@@17) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@10) ($IsGoodHeap $Heap@@10)) ($HeapSucc $prevHeap@@10 $Heap@@10)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.B) ($IsAlloc refType this@@17 Tclass._module.B $prevHeap@@10)))))) (= (_module.B.localInv2 $prevHeap@@10 $Heap@@10 this@@17)  (and true (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@17) _module.B.valid))) (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@17) _module.B.valid))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@17) _module.B.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 this@@17) _module.B.a))))))))
 :qid |_05RecInvariantCutdfy.163:22|
 :skolemid |893|
 :pattern ( (_module.B.localInv2 $prevHeap@@10 $Heap@@10 this@@17) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@7| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@7|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@7| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@7|) Tclass._System.object))
 :qid |_05RecInvariantCutdfy.8:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@7|))
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
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TBool) (and (= ($Box boolType ($Unbox boolType bx@@13)) bx@@13) ($Is boolType ($Unbox boolType bx@@13) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@13 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@4) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@14) ($IsAllocBox bx@@14 t0@@1 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@4))
)))
(assert (forall (($o@@30 T@U) ) (! ($Is refType $o@@30 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@30 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|o#0@@8| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@8|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@8| Tclass._System.object) ($IsAlloc refType |o#0@@8| Tclass._System.object $Heap@@11)))) ($IsGoodHeap $Heap@@11)) ($IsAlloc refType (_module.__default.upCast |o#0@@8|) Tclass._System.object $Heap@@11))
 :qid |_05RecInvariantCutdfy.8:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@8|) Tclass._System.object $Heap@@11))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@9| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| (Lit refType |o#0@@9|)) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@9| Tclass._System.object))) (= (_module.__default.upCast (Lit refType |o#0@@9|)) (Lit refType |o#0@@9|)))
 :qid |_05RecInvariantCutdfy.8:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@9|)))
))))
(assert (forall (($h@@18 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.A?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@31) _module.A.valid)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |698|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@31) _module.A.valid)))
)))
(assert (forall (($h@@19 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.B?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@32) _module.B.valid)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |861|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@32) _module.B.valid)))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@33 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (or (= $o@@33 this@@18) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 this@@18) _module.Universe.content)) ($Box refType $o@@33)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@33) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@33) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.Universe.globalBaseInv $h0@@6 this@@18) (_module.Universe.globalBaseInv $h1@@6 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.globalBaseInv $h1@@6 this@@18))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@19 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Universe) ($IsAlloc refType this@@19 Tclass._module.Universe $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@34 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@34) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@34) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@34) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@7 this@@19) (_module.Universe.globalInv $h1@@7 this@@19))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Universe.globalInv $h1@@7 this@@19))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.Object) ($IsAlloc refType this@@20 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@35 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@35) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@35) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@35) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |616|
)) (= (_module.Object.baseInv $h0@@8 this@@20) (_module.Object.baseInv $h1@@8 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |617|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.baseInv $h1@@8 this@@20))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@21 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@21 null)) (not true)) (and ($Is refType this@@21 Tclass._module.Object) ($IsAlloc refType this@@21 Tclass._module.Object $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@36 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@36) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@36) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@36) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |661|
)) (= (_module.Object.inv $h0@@9 this@@21) (_module.Object.inv $h1@@9 this@@21))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |662|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.Object.inv $h1@@9 this@@21))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.A) ($IsAlloc refType this@@22 Tclass._module.A $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@37 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@37) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@37) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@37) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |703|
)) (= (_module.A.inv $h0@@10 this@@22) (_module.A.inv $h1@@10 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |705|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.A.inv $h1@@10 this@@22))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.A) ($IsAlloc refType this@@23 Tclass._module.A $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@38 T@U) ($f@@18 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@38) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@38) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@38) $f@@18)))
 :qid |unknown.0:0|
 :skolemid |714|
)) (= (_module.A.localInv $h0@@11 this@@23) (_module.A.localInv $h1@@11 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |715|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.A.localInv $h1@@11 this@@23))
)))
(assert (forall (($h0@@12 T@U) ($h1@@12 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@12) ($IsGoodHeap $h1@@12)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.B) ($IsAlloc refType this@@24 Tclass._module.B $h0@@12)))) (and ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12))) (=> (forall (($o@@39 T@U) ($f@@19 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@39) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@12 $o@@39) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@12 $o@@39) $f@@19)))
 :qid |unknown.0:0|
 :skolemid |865|
)) (= (_module.B.inv $h0@@12 this@@24) (_module.B.inv $h1@@12 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |866|
 :pattern ( ($IsHeapAnchor $h0@@12) ($HeapSucc $h0@@12 $h1@@12) (_module.B.inv $h1@@12 this@@24))
)))
(assert (forall (($h0@@13 T@U) ($h1@@13 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@13) ($IsGoodHeap $h1@@13)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.B) ($IsAlloc refType this@@25 Tclass._module.B $h0@@13)))) (and ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13))) (=> (forall (($o@@40 T@U) ($f@@20 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@40) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@13 $o@@40) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@13 $o@@40) $f@@20)))
 :qid |unknown.0:0|
 :skolemid |874|
)) (= (_module.B.localInv $h0@@13 this@@25) (_module.B.localInv $h1@@13 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |875|
 :pattern ( ($IsHeapAnchor $h0@@13) ($HeapSucc $h0@@13 $h1@@13) (_module.B.localInv $h1@@13 this@@25))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (forall (($o@@41 T@U) ) (!  (=> ($Is refType $o@@41 Tclass._module.A?) ($Is refType $o@@41 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( ($Is refType $o@@41 Tclass._module.A?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.A?) ($IsBox bx@@16 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($IsBox bx@@16 Tclass._module.A?))
)))
(assert (forall (($o@@42 T@U) ) (!  (=> ($Is refType $o@@42 Tclass._module.B?) ($Is refType $o@@42 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($Is refType $o@@42 Tclass._module.B?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.B?) ($IsBox bx@@17 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( ($IsBox bx@@17 Tclass._module.B?))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f@@0 T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8)))
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
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (= (Tag Tclass._module.B) Tagclass._module.B))
(assert (= (TagFamily Tclass._module.B) tytagFamily$B))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (= (Tag Tclass._module.B?) Tagclass._module.B?))
(assert (= (TagFamily Tclass._module.B?) tytagFamily$B))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@12 T@U) (this@@26 T@U) ) (!  (=> (or (|_module.A.inv2#canCall| $prevHeap@@11 $Heap@@12 this@@26) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@11 $Heap@@12)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.A) ($IsAlloc refType this@@26 Tclass._module.A $prevHeap@@11)))))) (and (and (|_module.A.localInv2#canCall| $prevHeap@@11 $Heap@@12 this@@26) (=> (_module.A.localInv2 $prevHeap@@11 $Heap@@12 this@@26) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@26) _module.A.valid))) (|_module.B.localInv2#canCall| $prevHeap@@11 $Heap@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@26) _module.A.b)))))) (= (_module.A.inv2 $prevHeap@@11 $Heap@@12 this@@26)  (and (_module.A.localInv2 $prevHeap@@11 $Heap@@12 this@@26) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@26) _module.A.valid))) (_module.B.localInv2 $prevHeap@@11 $Heap@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@26) _module.A.b))))))))
 :qid |_05RecInvariantCutdfy.111:22|
 :skolemid |724|
 :pattern ( (_module.A.inv2 $prevHeap@@11 $Heap@@12 this@@26) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@13 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.B.inv2#canCall| $prevHeap@@12 $Heap@@13 this@@27) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@12 $Heap@@13)) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.B) ($IsAlloc refType this@@27 Tclass._module.B $prevHeap@@12)))))) (and (and (|_module.B.localInv2#canCall| $prevHeap@@12 $Heap@@13 this@@27) (=> (_module.B.localInv2 $prevHeap@@12 $Heap@@13 this@@27) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@27) _module.B.valid))) (|_module.A.inv2#canCall| $prevHeap@@12 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@27) _module.B.a)))))) (= (_module.B.inv2 $prevHeap@@12 $Heap@@13 this@@27)  (and (_module.B.localInv2 $prevHeap@@12 $Heap@@13 this@@27) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@27) _module.B.valid))) (_module.A.inv2 $prevHeap@@12 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@27) _module.B.a))))))))
 :qid |_05RecInvariantCutdfy.159:22|
 :skolemid |884|
 :pattern ( (_module.B.inv2 $prevHeap@@12 $Heap@@13 this@@27) ($IsGoodHeap $Heap@@13))
))))
(assert (forall (($o@@43 T@U) ) (! (= ($Is refType $o@@43 Tclass._module.Universe?)  (or (= $o@@43 null) (implements$_module.Universe (dtype $o@@43))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@43 Tclass._module.Universe?))
)))
(assert (forall (($o@@44 T@U) ) (! (= ($Is refType $o@@44 Tclass._module.Object?)  (or (= $o@@44 null) (implements$_module.Object (dtype $o@@44))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($Is refType $o@@44 Tclass._module.Object?))
)))
(assert (forall (($h@@20 T@U) ($o@@45 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@45 null)) (not true)) ($Is refType $o@@45 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) _module.Universe.content)) (TSet Tclass._module.Object) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@45) _module.Universe.content)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@46 T@U) ($f@@21 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#21| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@46 $f@@21))  (=> (and (or (not (= $o@@46 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@46) |l#2|)))) (or (= $o@@46 |l#3|) (= $o@@46 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1033|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#21| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@46 $f@@21))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@14 o@@7) (|Set#IsMember| b@@11 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@7))
 :pattern ( (|Set#IsMember| b@@11 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@14 T@U) (this@@28 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@13 $Heap@@14 this@@28) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@14)) ($HeapSucc $prevHeap@@13 $Heap@@14)) (and (or (not (= this@@28 null)) (not true)) (and ($Is refType this@@28 Tclass._module.Universe) ($IsAlloc refType this@@28 Tclass._module.Universe $prevHeap@@13)))))) (and (forall ((|o#0@@10| T@U) ) (!  (=> ($Is refType |o#0@@10| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@28) _module.Universe.content)) ($Box refType |o#0@@10|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@28) _module.Universe.content)) ($Box refType |o#0@@10|)) (|_module.Object.inv2#canCall| $prevHeap@@13 $Heap@@14 |o#0@@10|))))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@13 $Heap@@14 |o#0@@10|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@28) _module.Universe.content)) ($Box refType |o#0@@10|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@28) _module.Universe.content)) ($Box refType |o#0@@10|)))
)) (= (_module.Universe.globalInv2 $prevHeap@@13 $Heap@@14 this@@28) (forall ((|o#0@@11| T@U) ) (!  (=> (and ($Is refType |o#0@@11| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@28) _module.Universe.content)) ($Box refType |o#0@@11|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@28) _module.Universe.content)) ($Box refType |o#0@@11|)) (_module.Object.inv2 $prevHeap@@13 $Heap@@14 |o#0@@11|)))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@13 $Heap@@14 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@14 this@@28) _module.Universe.content)) ($Box refType |o#0@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@28) _module.Universe.content)) ($Box refType |o#0@@11|)))
)))))
 :qid |_05RecInvariantCutdfy.29:22|
 :skolemid |521|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@13 $Heap@@14 this@@28) ($IsGoodHeap $Heap@@14))
))))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall (($h@@21 T@U) ($o@@47 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@47 null)) (not true)) ($Is refType $o@@47 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@47) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@47) _module.Universe.content)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@15 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.A.inv#canCall| $Heap@@15 this@@29) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@15) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.A) ($IsAlloc refType this@@29 Tclass._module.A $Heap@@15)))))) (and (and (|_module.A.localInv#canCall| $Heap@@15 this@@29) (=> (_module.A.localInv $Heap@@15 this@@29) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@29) _module.A.valid))) (|_module.B.localInv#canCall| $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@29) _module.A.b)))))) (= (_module.A.inv $Heap@@15 this@@29)  (and (_module.A.localInv $Heap@@15 this@@29) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@29) _module.A.valid))) (_module.B.localInv $Heap@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@29) _module.A.b))))))))
 :qid |_05RecInvariantCutdfy.97:19|
 :skolemid |708|
 :pattern ( (_module.A.inv $Heap@@15 this@@29) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@16 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.B.inv#canCall| $Heap@@16 this@@30) (and (< 6 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.B) ($IsAlloc refType this@@30 Tclass._module.B $Heap@@16)))))) (and (and (|_module.B.localInv#canCall| $Heap@@16 this@@30) (=> (_module.B.localInv $Heap@@16 this@@30) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.B.valid))) (|_module.A.inv#canCall| $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.B.a)))))) (= (_module.B.inv $Heap@@16 this@@30)  (and (_module.B.localInv $Heap@@16 this@@30) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.B.valid))) (_module.A.inv $Heap@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@16 this@@30) _module.B.a))))))))
 :qid |_05RecInvariantCutdfy.145:19|
 :skolemid |869|
 :pattern ( (_module.B.inv $Heap@@16 this@@30) ($IsGoodHeap $Heap@@16))
))))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@6))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@17 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun this@@31 () T@U)
(declare-fun this.valid () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#1@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#2@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@5 () T@U)
(set-info :boogie-vc-id Impl$$_module.A.__ctor)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#21| null $Heap@@17 alloc |universe#0| |b#0|)) (and (=> (= (ControlFlow 0 2) (- 0 23)) true) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (=> (and (and (and (and (or (not (= this@@31 null)) (not true)) ($Is refType this@@31 Tclass._module.A?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@31) alloc))))) (and (= (_module.Object.universe this@@31) |universe#0|) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@31) _module.A.valid))) this.valid))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@31) _module.A.b)) |b#0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@17 this@@31 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 this@@31) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (forall (($o@@48 T@U) ($f@@22 T@U) ) (!  (=> (and (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@48) alloc)))) (= $o@@48 (_module.Object.universe this@@31))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@48 $f@@22)))
 :qid |_05RecInvariantCutdfy.133:9|
 :skolemid |855|
))) (=> (forall (($o@@49 T@U) ($f@@23 T@U) ) (!  (=> (and (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@49) alloc)))) (= $o@@49 (_module.Object.universe this@@31))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@49 $f@@23)))
 :qid |_05RecInvariantCutdfy.133:9|
 :skolemid |855|
)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 (_module.Object.universe this@@31)) (or (_module.Universe.globalBaseInv $Heap@0 (_module.Object.universe this@@31)) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (= (_module.Object.universe |o#0@@12|) (_module.Object.universe this@@31)) (or (not (= (_module.__default.upCast |o#0@@12|) (_module.Object.universe this@@31))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |623|
 :pattern ( (_module.__default.upCast |o#0@@12|))
 :pattern ( (_module.Object.universe |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#0@@12|)))
))))) (=> (=> (|_module.Universe.globalBaseInv#canCall| $Heap@0 (_module.Object.universe this@@31)) (or (_module.Universe.globalBaseInv $Heap@0 (_module.Object.universe this@@31)) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (= (_module.Object.universe |o#0@@13|) (_module.Object.universe this@@31)) (or (not (= (_module.__default.upCast |o#0@@13|) (_module.Object.universe this@@31))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |623|
 :pattern ( (_module.__default.upCast |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#0@@13|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= (_module.__default.upCast this@@31) (_module.Object.universe this@@31))) (not true))) (=> (or (not (= (_module.__default.upCast this@@31) (_module.Object.universe this@@31))) (not true)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.Object.baseInv#canCall| $Heap@1 this@@31)) (=> (and (and (and (|_module.Object.baseInv#canCall| $Heap@1 this@@31) (and (_module.Object.baseInv $Heap@1 this@@31) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType this@@31)) (_module.Universe.globalBaseInv $Heap@1 (_module.Object.universe this@@31))))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@31)) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@31)) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@31))))) (and (forall (($o@@50 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@50) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@50) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@50)) (= $o@@50 (_module.Object.universe this@@31))))
 :qid |_05RecInvariantCutdfy.64:16|
 :skolemid |627|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@50))
)) ($HeapSuccGhost $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b)) _module.B.a))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b)) _module.B.a)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b)) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@31) _module.A.b))) _module.B.a ($Box refType this@@31)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@31 _module.A.valid))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@31 _module.A.valid)) (=> (= |$rhs#1@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@31 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@31) _module.A.valid ($Box boolType (bool_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b)) _module.B.valid))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b)) _module.B.valid)) (=> (= |$rhs#2@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b)) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@31) _module.A.b))) _module.B.valid ($Box boolType (bool_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@4)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@17)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@17) (=> (= call0formal@previous$Heap@0 $Heap@@17) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (= (_module.Object.universe |o#0@@14|) |universe#0|) (or (not (= (_module.__default.upCast |o#0@@14|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |568|
 :pattern ( (_module.__default.upCast |o#0@@14|))
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@14|)))
))))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalBaseInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@15| T@U) ) (!  (=> (and ($Is refType |o#0@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|))) (and (= (_module.Object.universe |o#0@@15|) |universe#0|) (or (not (= (_module.__default.upCast |o#0@@15|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |568|
 :pattern ( (_module.__default.upCast |o#0@@15|))
 :pattern ( (_module.Object.universe |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#1@@1| T@U) ) (!  (=> (and ($Is refType |o#1@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@1|))) (_module.Object.inv call0formal@previous$Heap@0 |o#1@@1|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |570|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#1@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@1|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalInv#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.globalInv call0formal@previous$Heap@0 |universe#0|) (forall ((|o#1@@2| T@U) ) (!  (=> (and ($Is refType |o#1@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@2|))) (_module.Object.inv call0formal@previous$Heap@0 |o#1@@2|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |570|
 :pattern ( (_module.Object.inv call0formal@previous$Heap@0 |o#1@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@2|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (and (= (_module.Object.universe |o#2|) |universe#0|) (or (not (= (_module.__default.upCast |o#2|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |572|
 :pattern ( (_module.__default.upCast |o#2|))
 :pattern ( (_module.Object.universe |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
))))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@4 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (and (= (_module.Object.universe |o#2@@0|) |universe#0|) (or (not (= (_module.__default.upCast |o#2@@0|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |572|
 :pattern ( (_module.__default.upCast |o#2@@0|))
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (and (or (forall (($o@@51 T@U) ($f@@24 T@U) ) (!  (=> (or (not (= $o@@51 null)) (not true)) (=> (= $o@@51 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@51) $f@@24) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@51) $f@@24))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@51) $f@@24))
)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#3|)) (or (forall (($o@@52 T@U) ($f@@25 T@U) ) (!  (=> (or (not (= $o@@52 null)) (not true)) (=> (= $o@@52 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@52) $f@@25) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@52) $f@@25))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |575|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@52) $f@@25))
)) (_module.Object.inv $Heap@4 |o#3|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |576|
 :pattern ( (_module.Object.inv $Heap@4 |o#3|))
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|))) (and (or (forall (($o@@53 T@U) ($f@@26 T@U) ) (!  (=> (or (not (= $o@@53 null)) (not true)) (=> (= $o@@53 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@53) $f@@26) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@53) $f@@26))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |574|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@53) $f@@26))
)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#3@@0|)) (or (forall (($o@@54 T@U) ($f@@27 T@U) ) (!  (=> (or (not (= $o@@54 null)) (not true)) (=> (= $o@@54 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@54) $f@@27) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@54) $f@@27))))
 :qid |_05RecInvariantCutdfy.39:49|
 :skolemid |575|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@54) $f@@27))
)) (_module.Object.inv $Heap@4 |o#3@@0|))))
 :qid |_05RecInvariantCutdfy.39:16|
 :skolemid |576|
 :pattern ( (_module.Object.inv $Heap@4 |o#3@@0|))
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|))))) (_module.Object.inv $Heap@4 |o#4|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |577|
 :pattern ( (_module.Object.inv $Heap@4 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
))))) (=> (=> (|_module.Universe.legalTransition#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (or (_module.Universe.legalTransition call0formal@previous$Heap@0 $Heap@4 |universe#0|) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|))))) (_module.Object.inv $Heap@4 |o#4@@0|))
 :qid |_05RecInvariantCutdfy.41:16|
 :skolemid |577|
 :pattern ( (_module.Object.inv $Heap@4 |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (and (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (=> (_module.Universe.globalInv $Heap@4 |universe#0|) (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|))) (and (|_module.Universe.globalInv#canCall| $Heap@4 |universe#0|) (and (_module.Universe.globalInv $Heap@4 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@4 |universe#0|) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.inv $Heap@4 |o#6|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |585|
 :pattern ( (_module.Object.inv $Heap@4 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#6|)))
)))))) (and (and (|_module.Universe.globalInv2#canCall| call0formal@previous$Heap@0 $Heap@4 |universe#0|) (and (_module.Universe.globalInv2 call0formal@previous$Heap@0 $Heap@4 |universe#0|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)) (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#7|)))
 :qid |_05RecInvariantCutdfy.30:12|
 :skolemid |587|
 :pattern ( (_module.Object.inv2 call0formal@previous$Heap@0 $Heap@4 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
)))) (= $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Object.baseInv#canCall| $Heap@5 this@@31) (or (_module.Object.baseInv $Heap@5 this@@31) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType this@@31))))) (=> (=> (|_module.Object.baseInv#canCall| $Heap@5 this@@31) (or (_module.Object.baseInv $Heap@5 this@@31) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType this@@31)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Object.baseInv#canCall| $Heap@5 this@@31) (or (_module.Object.baseInv $Heap@5 this@@31) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 (_module.Object.universe this@@31)) (or (_module.Universe.globalBaseInv $Heap@5 (_module.Object.universe this@@31)) (forall ((|o#13| T@U) ) (!  (=> (and ($Is refType |o#13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#13|))) (and (= (_module.Object.universe |o#13|) (_module.Object.universe this@@31)) (or (not (= (_module.__default.upCast |o#13|) (_module.Object.universe this@@31))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |848|
 :pattern ( (_module.__default.upCast |o#13|))
 :pattern ( (_module.Object.universe |o#13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#13|)))
))))))) (=> (=> (|_module.Object.baseInv#canCall| $Heap@5 this@@31) (or (_module.Object.baseInv $Heap@5 this@@31) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 (_module.Object.universe this@@31)) (or (_module.Universe.globalBaseInv $Heap@5 (_module.Object.universe this@@31)) (forall ((|o#13@@0| T@U) ) (!  (=> (and ($Is refType |o#13@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#13@@0|))) (and (= (_module.Object.universe |o#13@@0|) (_module.Object.universe this@@31)) (or (not (= (_module.__default.upCast |o#13@@0|) (_module.Object.universe this@@31))) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |848|
 :pattern ( (_module.__default.upCast |o#13@@0|))
 :pattern ( (_module.Object.universe |o#13@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 (_module.Object.universe this@@31)) _module.Universe.content)) ($Box refType |o#13@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Universe.globalInv#canCall| $Heap@5 |universe#0|) (or (_module.Universe.globalInv $Heap@5 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@5 |universe#0|) (forall ((|o#14| T@U) ) (!  (=> (and ($Is refType |o#14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#14|))) (and (= (_module.Object.universe |o#14|) |universe#0|) (or (not (= (_module.__default.upCast |o#14|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |850|
 :pattern ( (_module.__default.upCast |o#14|))
 :pattern ( (_module.Object.universe |o#14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#14|)))
))))))) (=> (=> (|_module.Universe.globalInv#canCall| $Heap@5 |universe#0|) (or (_module.Universe.globalInv $Heap@5 |universe#0|) (=> (|_module.Universe.globalBaseInv#canCall| $Heap@5 |universe#0|) (or (_module.Universe.globalBaseInv $Heap@5 |universe#0|) (forall ((|o#14@@0| T@U) ) (!  (=> (and ($Is refType |o#14@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|))) (and (= (_module.Object.universe |o#14@@0|) |universe#0|) (or (not (= (_module.__default.upCast |o#14@@0|) |universe#0|)) (not true))))
 :qid |_05RecInvariantCutdfy.20:12|
 :skolemid |850|
 :pattern ( (_module.__default.upCast |o#14@@0|))
 :pattern ( (_module.Object.universe |o#14@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#14@@0|)))
)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Universe.globalInv#canCall| $Heap@5 |universe#0|) (or (_module.Universe.globalInv $Heap@5 |universe#0|) (forall ((|o#15| T@U) ) (!  (=> (and ($Is refType |o#15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#15|))) (_module.Object.inv $Heap@5 |o#15|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |852|
 :pattern ( (_module.Object.inv $Heap@5 |o#15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |universe#0|) _module.Universe.content)) ($Box refType |o#15|)))
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@17) ($IsHeapAnchor $Heap@@17)) (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@17))) (and (and ($Is refType |b#0| Tclass._module.B) ($IsAlloc refType |b#0| Tclass._module.B $Heap@@17)) (= 14 $FunctionContextHeight))) (and (and (and (|_module.Universe.globalInv#canCall| $Heap@@17 |universe#0|) (and (_module.Universe.globalInv $Heap@@17 |universe#0|) (and (_module.Universe.globalBaseInv $Heap@@17 |universe#0|) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |universe#0|) _module.Universe.content)) ($Box refType |o#9|))) (_module.Object.inv $Heap@@17 |o#9|))
 :qid |_05RecInvariantCutdfy.25:31|
 :skolemid |841|
 :pattern ( (_module.Object.inv $Heap@@17 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |universe#0|) _module.Universe.content)) ($Box refType |o#9|)))
))))) (= |universe#0| (_module.Object.universe |b#0|))) (and (and (|_module.B.inv#canCall| $Heap@@17 |b#0|) (and (_module.B.inv $Heap@@17 |b#0|) (and (_module.B.localInv $Heap@@17 |b#0|) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |b#0|) _module.B.valid))) (_module.A.inv $Heap@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |b#0|) _module.B.a))))))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@17 |b#0|) _module.B.valid)))) (= (ControlFlow 0 24) 2))))) anon0_correct)))
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
