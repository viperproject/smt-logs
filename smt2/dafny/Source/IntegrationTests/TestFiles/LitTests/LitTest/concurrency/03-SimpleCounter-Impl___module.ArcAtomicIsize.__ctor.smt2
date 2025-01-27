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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Universe () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun class._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize? () T@U)
(declare-fun Tagclass._module.ArcAtomicIsize () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Universe () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$ArcAtomicIsize () T@U)
(declare-fun field$content () T@U)
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
(declare-fun _module.Universe.i0 (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Universe.i0#canCall| (T@U T@U) Bool)
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
(declare-fun Tclass._module.ArcAtomicIsize? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Universe.i (T@U T@U) Bool)
(declare-fun |_module.Universe.i#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.i (T@U T@U) Bool)
(declare-fun |_module.Object.i#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.ArcAtomicIsize () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ArcAtomicIsize.i (T@U T@U) Bool)
(declare-fun |_module.ArcAtomicIsize.i#canCall| (T@U T@U) Bool)
(declare-fun _module.ArcAtomicIsize.data () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.i2 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.legal0 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.legal1 (T@U T@U T@U) Bool)
(declare-fun _module.Universe.legal (T@U T@U T@U) Bool)
(declare-fun _module.Object.i2 (T@U T@U T@U) Bool)
(declare-fun _module.ArcAtomicIsize.i2 (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legal#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.Universe.legal0#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Universe.legal1#canCall| (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.ArcAtomicIsize.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun _module.Object.i0 (T@U T@U) Bool)
(declare-fun |_module.Object.i0#canCall| (T@U T@U) Bool)
(declare-fun |_module.Object.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun |_module.Universe.i2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Universe Tagclass._module.Object? class._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize? Tagclass._module.ArcAtomicIsize tytagFamily$object tytagFamily$Universe tytagFamily$Object tytagFamily$ArcAtomicIsize field$content field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Universe.i0#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Universe) ($IsAlloc refType this Tclass._module.Universe $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)) (=> (= (_module.Object.universe |o#0|) this) (|_module.__default.upCast#canCall| |o#0|))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |496|
 :pattern ( (_module.__default.upCast |o#0|))
 :pattern ( (_module.Object.universe |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0|)))
)) (= (_module.Universe.i0 $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|))) (and (= (_module.Object.universe |o#0@@0|) this) (or (not (= (_module.__default.upCast |o#0@@0|) this)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |495|
 :pattern ( (_module.__default.upCast |o#0@@0|))
 :pattern ( (_module.Object.universe |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))))
 :qid |_03SimpleCounterdfy.28:19|
 :skolemid |497|
 :pattern ( (_module.Universe.i0 $Heap this) ($IsGoodHeap $Heap))
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
(assert (implements$_module.Object Tclass._module.ArcAtomicIsize?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.i#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.i0#canCall| $Heap@@0 this@@0) (=> (_module.Universe.i0 $Heap@@0 this@@0) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)) (|_module.Object.i#canCall| $Heap@@0 |o#0@@1|)))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |507|
 :pattern ( (_module.Object.i $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)))
)))) (= (_module.Universe.i $Heap@@0 this@@0)  (and (_module.Universe.i0 $Heap@@0 this@@0) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@2|))) (_module.Object.i $Heap@@0 |o#0@@2|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |506|
 :pattern ( (_module.Object.i $Heap@@0 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@2|)))
))))))
 :qid |_03SimpleCounterdfy.33:19|
 :skolemid |508|
 :pattern ( (_module.Universe.i $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.ArcAtomicIsize?)  (or (= $o null) (= (dtype $o) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($Is refType $o Tclass._module.ArcAtomicIsize?))
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
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Object? $h))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAllocBox bx Tclass._module.ArcAtomicIsize? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@1))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Universe? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Object? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@3) ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@3))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ArcAtomicIsize? $h@@3))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.ArcAtomicIsize)))) (= (_module.Object.i $Heap@@1 this@@1) (_module.ArcAtomicIsize.i $Heap@@1 this@@1)))
 :qid |_03SimpleCounterdfy.96:19|
 :skolemid |709|
 :pattern ( (_module.Object.i $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.ArcAtomicIsize) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.Object.i $Heap@@1 this@@1) (_module.ArcAtomicIsize.i $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (= (FDim _module.ArcAtomicIsize.data) 0))
(assert (= (FieldOfDecl class._module.ArcAtomicIsize? field$data) _module.ArcAtomicIsize.data))
(assert  (not ($IsGhostField _module.ArcAtomicIsize.data)))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Universe) ($IsAlloc refType this@@2 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.i2 $prevHeap $h0 this@@2) (_module.Universe.i2 $prevHeap $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.i2 $prevHeap $h1 this@@2))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Universe) ($IsAlloc refType this@@3 Tclass._module.Universe $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@1) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |526|
)) (= (_module.Universe.legal0 $prevHeap@@0 $h0@@0 this@@3) (_module.Universe.legal0 $prevHeap@@0 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |527|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Universe.legal0 $prevHeap@@0 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Universe) ($IsAlloc refType this@@4 Tclass._module.Universe $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@2 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@2) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@2) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |552|
)) (= (_module.Universe.legal1 $prevHeap@@1 $h0@@1 this@@4) (_module.Universe.legal1 $prevHeap@@1 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |553|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Universe.legal1 $prevHeap@@1 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Universe) ($IsAlloc refType this@@5 Tclass._module.Universe $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@3 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@3) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@3) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |563|
)) (= (_module.Universe.legal $prevHeap@@2 $h0@@2 this@@5) (_module.Universe.legal $prevHeap@@2 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |564|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Universe.legal $prevHeap@@2 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Object) ($IsAlloc refType this@@6 Tclass._module.Object $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@4 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@4) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@4) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |668|
)) (= (_module.Object.i2 $prevHeap@@3 $h0@@3 this@@6) (_module.Object.i2 $prevHeap@@3 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |669|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Object.i2 $prevHeap@@3 $h1@@3 this@@6))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@7 Tclass._module.ArcAtomicIsize $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@5 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@5) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@5) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |712|
)) (= (_module.ArcAtomicIsize.i2 $prevHeap@@4 $h0@@4 this@@7) (_module.ArcAtomicIsize.i2 $prevHeap@@4 $h1@@4 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |713|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.ArcAtomicIsize.i2 $prevHeap@@4 $h1@@4 this@@7))
)))
(assert (forall (($o@@6 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@4)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@7 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Universe? $h@@5)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Universe? $h@@5))
)))
(assert (forall (($o@@8 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@6)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Object? $h@@6))
)))
(assert (forall (($o@@9 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.ArcAtomicIsize? $h@@7)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.ArcAtomicIsize? $h@@7))
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
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@2 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Universe.legal#canCall| $prevHeap@@5 $Heap@@2 this@@8) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@5 $Heap@@2)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Universe) ($IsAlloc refType this@@8 Tclass._module.Universe $prevHeap@@5)))))) (and (and (|_module.Universe.i#canCall| $prevHeap@@5 this@@8) (=> (_module.Universe.i $prevHeap@@5 this@@8) (and (|_module.Universe.i0#canCall| $Heap@@2 this@@8) (=> (_module.Universe.i0 $Heap@@2 this@@8) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@8) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content))) (and (|_module.Universe.legal0#canCall| $prevHeap@@5 $Heap@@2 this@@8) (=> (_module.Universe.legal0 $prevHeap@@5 $Heap@@2 this@@8) (|_module.Universe.legal1#canCall| $prevHeap@@5 $Heap@@2 this@@8)))))))) (= (_module.Universe.legal $prevHeap@@5 $Heap@@2 this@@8)  (and (and (and (and (_module.Universe.i $prevHeap@@5 this@@8) (_module.Universe.i0 $Heap@@2 this@@8)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@8) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@8) _module.Universe.content)))) (_module.Universe.legal0 $prevHeap@@5 $Heap@@2 this@@8)) (_module.Universe.legal1 $prevHeap@@5 $Heap@@2 this@@8)))))
 :qid |_03SimpleCounterdfy.53:22|
 :skolemid |567|
 :pattern ( (_module.Universe.legal $prevHeap@@5 $Heap@@2 this@@8) ($IsGoodHeap $Heap@@2))
))))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@3 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Universe.legal1#canCall| $prevHeap@@6 $Heap@@3 this@@9) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@3)) ($HeapSucc $prevHeap@@6 $Heap@@3)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Universe) ($IsAlloc refType this@@9 Tclass._module.Universe $prevHeap@@6)))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.Object) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))) (|_module.Object.i#canCall| $Heap@@3 |o#0@@3|)))
 :qid |_03SimpleCounterdfy.49:12|
 :skolemid |557|
 :pattern ( (_module.Object.i $Heap@@3 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) _module.Universe.content)) ($Box refType |o#0@@3|)))
)) (= (_module.Universe.legal1 $prevHeap@@6 $Heap@@3 this@@9) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) _module.Universe.content)) ($Box refType |o#0@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@9) _module.Universe.content)) ($Box refType |o#0@@4|))))) (_module.Object.i $Heap@@3 |o#0@@4|))
 :qid |_03SimpleCounterdfy.49:12|
 :skolemid |556|
 :pattern ( (_module.Object.i $Heap@@3 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@9) _module.Universe.content)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@9) _module.Universe.content)) ($Box refType |o#0@@4|)))
)))))
 :qid |_03SimpleCounterdfy.48:22|
 :skolemid |558|
 :pattern ( (_module.Universe.legal1 $prevHeap@@6 $Heap@@3 this@@9) ($IsGoodHeap $Heap@@3))
))))
(assert ($IsGhostField alloc))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.ArcAtomicIsize?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.ArcAtomicIsize.data)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.ArcAtomicIsize.data)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@4 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i2#canCall| $prevHeap@@7 $Heap@@4 this@@10) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@7 $Heap@@4)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@10 Tclass._module.ArcAtomicIsize $prevHeap@@7)))))) (= (_module.ArcAtomicIsize.i2 $prevHeap@@7 $Heap@@4 this@@10)  (and true (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@10) _module.ArcAtomicIsize.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@10) _module.ArcAtomicIsize.data)))))))
 :qid |_03SimpleCounterdfy.110:22|
 :skolemid |716|
 :pattern ( (_module.ArcAtomicIsize.i2 $prevHeap@@7 $Heap@@4 this@@10) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) ($Is refType $o@@11 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@11) Tclass._module.Universe $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |618|
 :pattern ( (_module.Object.universe $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) ($Is refType $o@@12 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@12) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( (_module.Object.universe $o@@12))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@13 T@U) ($f@@5 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@5))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) (= $o@@13 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1121|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@5 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i2#canCall| $prevHeap@@8 $Heap@@5 this@@11) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 Tclass._module.ArcAtomicIsize)))) (= (_module.Object.i2 $prevHeap@@8 $Heap@@5 this@@11) (_module.ArcAtomicIsize.i2 $prevHeap@@8 $Heap@@5 this@@11)))
 :qid |_03SimpleCounterdfy.97:22|
 :skolemid |717|
 :pattern ( (_module.Object.i2 $prevHeap@@8 $Heap@@5 this@@11) ($Is refType this@@11 Tclass._module.ArcAtomicIsize) ($IsGoodHeap $Heap@@5))
 :pattern ( (_module.Object.i2 $prevHeap@@8 $Heap@@5 this@@11) (_module.ArcAtomicIsize.i2 $prevHeap@@8 $Heap@@5 this@@11) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@4 Tclass._module.Universe?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@5 Tclass._module.Object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@6 Tclass._module.Universe))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@7 Tclass._module.Object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ArcAtomicIsize?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ArcAtomicIsize?)))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsBox bx@@8 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.ArcAtomicIsize) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.ArcAtomicIsize)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsBox bx@@9 Tclass._module.ArcAtomicIsize))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Universe)  (and ($Is refType |c#0@@4| Tclass._module.Universe?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Object)  (and ($Is refType |c#0@@5| Tclass._module.Object?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize)  (and ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ArcAtomicIsize?))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@5| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@5|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@5| Tclass._System.object))) (= (_module.__default.upCast |o#0@@5|) |o#0@@5|))
 :qid |_03SimpleCounterdfy.17:23|
 :skolemid |482|
 :pattern ( (_module.__default.upCast |o#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@12 T@U) ) (!  (=> (or (|_module.Object.i0#canCall| $Heap@@6 this@@12) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $Heap@@6)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@12)) _module.Universe.content)) ($Box refType this@@12)) (|_module.Universe.i0#canCall| $Heap@@6 (_module.Object.universe this@@12))) (= (_module.Object.i0 $Heap@@6 this@@12)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 (_module.Object.universe this@@12)) _module.Universe.content)) ($Box refType this@@12)) (_module.Universe.i0 $Heap@@6 (_module.Object.universe this@@12))))))
 :qid |_03SimpleCounterdfy.74:19|
 :skolemid |623|
 :pattern ( (_module.Object.i0 $Heap@@6 this@@12) ($IsGoodHeap $Heap@@6))
))))
(assert (forall (($o@@14 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.ArcAtomicIsize? $heap) ($IsAlloc refType $o@@14 Tclass._module.Object? $heap))
 :qid |unknown.0:0|
 :skolemid |1113|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.ArcAtomicIsize? $heap))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@7 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Universe.legal0#canCall| $prevHeap@@9 $Heap@@7 this@@13) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@9) ($IsGoodHeap $Heap@@7)) ($HeapSucc $prevHeap@@9 $Heap@@7)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Universe) ($IsAlloc refType this@@13 Tclass._module.Universe $prevHeap@@9)))))) (and (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@13) _module.Universe.content)) ($Box refType |o#0@@6|)) (and (=> (not (forall (($o@@15 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@15) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 $o@@15) $f@@6))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |533|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@15) $f@@6))
))) (|_module.Object.i2#canCall| $prevHeap@@9 $Heap@@7 |o#0@@6|)) (=> (or (forall (($o@@16 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@16 null)) (not true)) (=> (= $o@@16 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@16) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 $o@@16) $f@@7))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |535|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@16) $f@@7))
)) (_module.Object.i2 $prevHeap@@9 $Heap@@7 |o#0@@6|)) (=> (not (forall (($o@@17 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@17 null)) (not true)) (=> (= $o@@17 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@17) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 $o@@17) $f@@8))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |534|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@17) $f@@8))
))) (|_module.Object.i#canCall| $Heap@@7 |o#0@@6|))))))
 :qid |_03SimpleCounterdfy.44:12|
 :skolemid |536|
 :pattern ( (_module.Object.i $Heap@@7 |o#0@@6|))
 :pattern ( (_module.Object.i2 $prevHeap@@9 $Heap@@7 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@13) _module.Universe.content)) ($Box refType |o#0@@6|)))
)) (= (_module.Universe.legal0 $prevHeap@@9 $Heap@@7 this@@13) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@13) _module.Universe.content)) ($Box refType |o#0@@7|))) (and (or (forall (($o@@18 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@18 null)) (not true)) (=> (= $o@@18 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@18) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 $o@@18) $f@@9))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |530|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@18) $f@@9))
)) (_module.Object.i2 $prevHeap@@9 $Heap@@7 |o#0@@7|)) (or (forall (($o@@19 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@19 null)) (not true)) (=> (= $o@@19 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@19) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 $o@@19) $f@@10))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |531|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@19) $f@@10))
)) (_module.Object.i $Heap@@7 |o#0@@7|))))
 :qid |_03SimpleCounterdfy.44:12|
 :skolemid |532|
 :pattern ( (_module.Object.i $Heap@@7 |o#0@@7|))
 :pattern ( (_module.Object.i2 $prevHeap@@9 $Heap@@7 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@9 this@@13) _module.Universe.content)) ($Box refType |o#0@@7|)))
)))))
 :qid |_03SimpleCounterdfy.43:22|
 :skolemid |537|
 :pattern ( (_module.Universe.legal0 $prevHeap@@9 $Heap@@7 this@@13) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@8| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| |o#0@@8|) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@8| Tclass._System.object))) ($Is refType (_module.__default.upCast |o#0@@8|) Tclass._System.object))
 :qid |_03SimpleCounterdfy.17:23|
 :skolemid |479|
 :pattern ( (_module.__default.upCast |o#0@@8|))
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
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@4) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@11) ($IsAllocBox bx@@11 t0@@2 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@4))
)))
(assert (forall (($o@@20 T@U) ) (! ($Is refType $o@@20 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@20 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|o#0@@9| T@U) ) (!  (=> (and (or (|_module.__default.upCast#canCall| |o#0@@9|) (and (< 0 $FunctionContextHeight) (and ($Is refType |o#0@@9| Tclass._System.object) ($IsAlloc refType |o#0@@9| Tclass._System.object $Heap@@8)))) ($IsGoodHeap $Heap@@8)) ($IsAlloc refType (_module.__default.upCast |o#0@@9|) Tclass._System.object $Heap@@8))
 :qid |_03SimpleCounterdfy.17:16|
 :skolemid |480|
 :pattern ( ($IsAlloc refType (_module.__default.upCast |o#0@@9|) Tclass._System.object $Heap@@8))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|o#0@@10| T@U) ) (!  (=> (or (|_module.__default.upCast#canCall| (Lit refType |o#0@@10|)) (and (< 0 $FunctionContextHeight) ($Is refType |o#0@@10| Tclass._System.object))) (= (_module.__default.upCast (Lit refType |o#0@@10|)) (Lit refType |o#0@@10|)))
 :qid |_03SimpleCounterdfy.17:23|
 :weight 3
 :skolemid |483|
 :pattern ( (_module.__default.upCast (Lit refType |o#0@@10|)))
))))
(assert (forall (($h@@10 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.ArcAtomicIsize?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@21) _module.ArcAtomicIsize.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |701|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@21) _module.ArcAtomicIsize.data)))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@22 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (or (= $o@@22 this@@14) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 this@@14) _module.Universe.content)) ($Box refType $o@@22)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@22) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@22) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.Universe.i0 $h0@@5 this@@14) (_module.Universe.i0 $h1@@5 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Universe.i0 $h1@@5 this@@14))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Universe) ($IsAlloc refType this@@15 Tclass._module.Universe $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@23 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@23) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@23) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@23) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.i $h0@@6 this@@15) (_module.Universe.i $h1@@6 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Universe.i $h1@@6 this@@15))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@24 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@24) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@24) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@24) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |619|
)) (= (_module.Object.i0 $h0@@7 this@@16) (_module.Object.i0 $h1@@7 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |620|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.i0 $h1@@7 this@@16))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@25 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@25) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@25) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@25) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |664|
)) (= (_module.Object.i $h0@@8 this@@17) (_module.Object.i $h1@@8 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |665|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.i $h1@@8 this@@17))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@18 Tclass._module.ArcAtomicIsize $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@26 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@26) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@26) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@26) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |703|
)) (= (_module.ArcAtomicIsize.i $h0@@9 this@@18) (_module.ArcAtomicIsize.i $h1@@9 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |705|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.ArcAtomicIsize.i $h1@@9 this@@18))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> ($Is refType $o@@27 Tclass._module.ArcAtomicIsize?) ($Is refType $o@@27 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( ($Is refType $o@@27 Tclass._module.ArcAtomicIsize?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass._module.ArcAtomicIsize?) ($IsBox bx@@13 Tclass._module.Object?))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($IsBox bx@@13 Tclass._module.ArcAtomicIsize?))
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
(assert (= (Tag Tclass._module.ArcAtomicIsize?) Tagclass._module.ArcAtomicIsize?))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize?) tytagFamily$ArcAtomicIsize))
(assert (= (Tag Tclass._module.ArcAtomicIsize) Tagclass._module.ArcAtomicIsize))
(assert (= (TagFamily Tclass._module.ArcAtomicIsize) tytagFamily$ArcAtomicIsize))
(assert (forall (($o@@28 T@U) ) (! (= ($Is refType $o@@28 Tclass._module.Universe?)  (or (= $o@@28 null) (implements$_module.Universe (dtype $o@@28))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Is refType $o@@28 Tclass._module.Universe?))
)))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.Object?)  (or (= $o@@29 null) (implements$_module.Object (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($Is refType $o@@29 Tclass._module.Object?))
)))
(assert (forall (($h@@11 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@30) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@30) _module.Universe.content)) (TSet Tclass._module.Object) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@30) _module.Universe.content)))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@9 T@U) (this@@19 T@U) ) (!  (=> (or (|_module.Universe.i2#canCall| $prevHeap@@10 $Heap@@9 this@@19) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@10) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@10 $Heap@@9)) (and (or (not (= this@@19 null)) (not true)) (and ($Is refType this@@19 Tclass._module.Universe) ($IsAlloc refType this@@19 Tclass._module.Universe $prevHeap@@10)))))) (and (forall ((|o#0@@11| T@U) ) (!  (=> ($Is refType |o#0@@11| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@19) _module.Universe.content)) ($Box refType |o#0@@11|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@19) _module.Universe.content)) ($Box refType |o#0@@11|)) (|_module.Object.i2#canCall| $prevHeap@@10 $Heap@@9 |o#0@@11|))))
 :qid |_03SimpleCounterdfy.39:12|
 :skolemid |520|
 :pattern ( (_module.Object.i2 $prevHeap@@10 $Heap@@9 |o#0@@11|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@19) _module.Universe.content)) ($Box refType |o#0@@11|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@19) _module.Universe.content)) ($Box refType |o#0@@11|)))
)) (= (_module.Universe.i2 $prevHeap@@10 $Heap@@9 this@@19) (forall ((|o#0@@12| T@U) ) (!  (=> (and ($Is refType |o#0@@12| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@19) _module.Universe.content)) ($Box refType |o#0@@12|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@19) _module.Universe.content)) ($Box refType |o#0@@12|)) (_module.Object.i2 $prevHeap@@10 $Heap@@9 |o#0@@12|)))
 :qid |_03SimpleCounterdfy.39:12|
 :skolemid |519|
 :pattern ( (_module.Object.i2 $prevHeap@@10 $Heap@@9 |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@19) _module.Universe.content)) ($Box refType |o#0@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@10 this@@19) _module.Universe.content)) ($Box refType |o#0@@12|)))
)))))
 :qid |_03SimpleCounterdfy.38:22|
 :skolemid |521|
 :pattern ( (_module.Universe.i2 $prevHeap@@10 $Heap@@9 this@@19) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@20 T@U) ) (!  (=> (or (|_module.ArcAtomicIsize.i#canCall| $Heap@@10 this@@20) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.ArcAtomicIsize) ($IsAlloc refType this@@20 Tclass._module.ArcAtomicIsize $Heap@@10)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.Object.i0#canCall| $Heap@@10 this@@20)) (= (_module.ArcAtomicIsize.i $Heap@@10 this@@20)  (and true (_module.Object.i0 $Heap@@10 this@@20)))))
 :qid |_03SimpleCounterdfy.106:19|
 :skolemid |708|
 :pattern ( (_module.ArcAtomicIsize.i $Heap@@10 this@@20) ($IsGoodHeap $Heap@@10))
))))
(assert (forall (($h@@12 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@31) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@31) _module.Universe.content)))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@6))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@11 () T@U)
(declare-fun |universe#0| () T@U)
(declare-fun this@@21 () T@U)
(declare-fun |initial_data#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.ArcAtomicIsize.__ctor)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null $Heap@@11 alloc |universe#0|)) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (=> (and (and (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.ArcAtomicIsize?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@21) alloc)))) (= (_module.Object.universe this@@21) |universe#0|))) (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@21) _module.ArcAtomicIsize.data))) |initial_data#0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@11 this@@21 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@21) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (forall (($o@@32 T@U) ($f@@16 T@U) ) (!  (=> (and (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@32) alloc)))) (= $o@@32 (_module.Object.universe this@@21))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@32 $f@@16)))
 :qid |_03SimpleCounterdfy.127:9|
 :skolemid |814|
))) (=> (forall (($o@@33 T@U) ($f@@17 T@U) ) (!  (=> (and (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@33) alloc)))) (= $o@@33 (_module.Object.universe this@@21))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@33 $f@@17)))
 :qid |_03SimpleCounterdfy.127:9|
 :skolemid |814|
)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Universe.i0#canCall| $Heap@0 (_module.Object.universe this@@21)) (or (_module.Universe.i0 $Heap@0 (_module.Object.universe this@@21)) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType |o#0@@13|))) (and (= (_module.Object.universe |o#0@@13|) (_module.Object.universe this@@21)) (or (not (= (_module.__default.upCast |o#0@@13|) (_module.Object.universe this@@21))) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |626|
 :pattern ( (_module.__default.upCast |o#0@@13|))
 :pattern ( (_module.Object.universe |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType |o#0@@13|)))
))))) (=> (=> (|_module.Universe.i0#canCall| $Heap@0 (_module.Object.universe this@@21)) (or (_module.Universe.i0 $Heap@0 (_module.Object.universe this@@21)) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType |o#0@@14|))) (and (= (_module.Object.universe |o#0@@14|) (_module.Object.universe this@@21)) (or (not (= (_module.__default.upCast |o#0@@14|) (_module.Object.universe this@@21))) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |626|
 :pattern ( (_module.__default.upCast |o#0@@14|))
 :pattern ( (_module.Object.universe |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType |o#0@@14|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= (_module.__default.upCast this@@21) (_module.Object.universe this@@21))) (not true))) (=> (or (not (= (_module.__default.upCast this@@21) (_module.Object.universe this@@21))) (not true)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.Object.i0#canCall| $Heap@1 this@@21)) (=> (and (and (and (|_module.Object.i0#canCall| $Heap@1 this@@21) (and (_module.Object.i0 $Heap@1 this@@21) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@21)) _module.Universe.content)) ($Box refType this@@21)) (_module.Universe.i0 $Heap@1 (_module.Object.universe this@@21))))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.Object.universe this@@21)) _module.Universe.content)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Object.universe this@@21)) _module.Universe.content)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@21))))) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34)) (= $o@@34 (_module.Object.universe this@@21))))
 :qid |_03SimpleCounterdfy.77:16|
 :skolemid |630|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@34))
)) ($HeapSuccGhost $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |universe#0| null)) (not true))) (=> (or (not (= |universe#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@11)) (=> ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@11) (=> (= call0formal@previous$Heap@0 $Heap@@11) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.i0#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i0 call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@15| T@U) ) (!  (=> (and ($Is refType |o#0@@15| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|))) (and (= (_module.Object.universe |o#0@@15|) |universe#0|) (or (not (= (_module.__default.upCast |o#0@@15|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |571|
 :pattern ( (_module.__default.upCast |o#0@@15|))
 :pattern ( (_module.Object.universe |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@15|)))
))))))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i call0formal@previous$Heap@0 |universe#0|) (=> (|_module.Universe.i0#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i0 call0formal@previous$Heap@0 |universe#0|) (forall ((|o#0@@16| T@U) ) (!  (=> (and ($Is refType |o#0@@16| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@16|))) (and (= (_module.Object.universe |o#0@@16|) |universe#0|) (or (not (= (_module.__default.upCast |o#0@@16|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |571|
 :pattern ( (_module.__default.upCast |o#0@@16|))
 :pattern ( (_module.Object.universe |o#0@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#0@@16|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i call0formal@previous$Heap@0 |universe#0|) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1|))) (_module.Object.i call0formal@previous$Heap@0 |o#1|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |573|
 :pattern ( (_module.Object.i call0formal@previous$Heap@0 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1|)))
))))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i#canCall| call0formal@previous$Heap@0 |universe#0|) (or (_module.Universe.i call0formal@previous$Heap@0 |universe#0|) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@0|))) (_module.Object.i call0formal@previous$Heap@0 |o#1@@0|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |573|
 :pattern ( (_module.Object.i call0formal@previous$Heap@0 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#1@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i0#canCall| $Heap@1 |universe#0|) (or (_module.Universe.i0 $Heap@1 |universe#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|))) (and (= (_module.Object.universe |o#2|) |universe#0|) (or (not (= (_module.__default.upCast |o#2|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |575|
 :pattern ( (_module.__default.upCast |o#2|))
 :pattern ( (_module.Object.universe |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2|)))
))))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.i0#canCall| $Heap@1 |universe#0|) (or (_module.Universe.i0 $Heap@1 |universe#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|))) (and (= (_module.Object.universe |o#2@@0|) |universe#0|) (or (not (= (_module.__default.upCast |o#2@@0|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |575|
 :pattern ( (_module.__default.upCast |o#2@@0|))
 :pattern ( (_module.Object.universe |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#2@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.legal0#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal0 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|))) (and (or (forall (($o@@35 T@U) ($f@@18 T@U) ) (!  (=> (or (not (= $o@@35 null)) (not true)) (=> (= $o@@35 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@35) $f@@18) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@35) $f@@18))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |577|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@35) $f@@18))
)) (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#3|)) (or (forall (($o@@36 T@U) ($f@@19 T@U) ) (!  (=> (or (not (= $o@@36 null)) (not true)) (=> (= $o@@36 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@36) $f@@19) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@36) $f@@19))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@36) $f@@19))
)) (_module.Object.i $Heap@1 |o#3|))))
 :qid |_03SimpleCounterdfy.44:12|
 :skolemid |579|
 :pattern ( (_module.Object.i $Heap@1 |o#3|))
 :pattern ( (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3|)))
))))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.legal0#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal0 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|))) (and (or (forall (($o@@37 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@37 null)) (not true)) (=> (= $o@@37 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@37) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@37) $f@@20))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |577|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@37) $f@@20))
)) (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|)) (or (forall (($o@@38 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@38 null)) (not true)) (=> (= $o@@38 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@38) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@38) $f@@21))))
 :qid |_03SimpleCounterdfy.44:45|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@38) $f@@21))
)) (_module.Object.i $Heap@1 |o#3@@0|))))
 :qid |_03SimpleCounterdfy.44:12|
 :skolemid |579|
 :pattern ( (_module.Object.i $Heap@1 |o#3@@0|))
 :pattern ( (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#3@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.legal1#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal1 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|))))) (_module.Object.i $Heap@1 |o#4|))
 :qid |_03SimpleCounterdfy.49:12|
 :skolemid |583|
 :pattern ( (_module.Object.i $Heap@1 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4|)))
))))))) (=> (=> (|_module.Universe.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal call0formal@previous$Heap@0 $Heap@1 |universe#0|) (=> (|_module.Universe.legal1#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (or (_module.Universe.legal1 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.Object) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|))))) (_module.Object.i $Heap@1 |o#4@@0|))
 :qid |_03SimpleCounterdfy.49:12|
 :skolemid |583|
 :pattern ( (_module.Object.i $Heap@1 |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#4@@0|)))
)))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.Universe.i#canCall| $Heap@1 |universe#0|) (=> (_module.Universe.i $Heap@1 |universe#0|) (|_module.Universe.i2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|))) (and (|_module.Universe.i#canCall| $Heap@1 |universe#0|) (and (_module.Universe.i $Heap@1 |universe#0|) (and (_module.Universe.i0 $Heap@1 |universe#0|) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#6|))) (_module.Object.i $Heap@1 |o#6|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |588|
 :pattern ( (_module.Object.i $Heap@1 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#6|)))
)))))) (and (and (|_module.Universe.i2#canCall| call0formal@previous$Heap@0 $Heap@1 |universe#0|) (and (_module.Universe.i2 call0formal@previous$Heap@0 $Heap@1 |universe#0|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)) (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#7|)))
 :qid |_03SimpleCounterdfy.39:12|
 :skolemid |590|
 :pattern ( (_module.Object.i2 call0formal@previous$Heap@0 $Heap@1 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |universe#0|) _module.Universe.content)) ($Box refType |o#7|)))
)))) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Universe.i#canCall| $Heap@2 |universe#0|) (or (_module.Universe.i $Heap@2 |universe#0|) (=> (|_module.Universe.i0#canCall| $Heap@2 |universe#0|) (or (_module.Universe.i0 $Heap@2 |universe#0|) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|))) (and (= (_module.Object.universe |o#6@@0|) |universe#0|) (or (not (= (_module.__default.upCast |o#6@@0|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |809|
 :pattern ( (_module.__default.upCast |o#6@@0|))
 :pattern ( (_module.Object.universe |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@0|)))
))))))) (=> (=> (|_module.Universe.i#canCall| $Heap@2 |universe#0|) (or (_module.Universe.i $Heap@2 |universe#0|) (=> (|_module.Universe.i0#canCall| $Heap@2 |universe#0|) (or (_module.Universe.i0 $Heap@2 |universe#0|) (forall ((|o#6@@1| T@U) ) (!  (=> (and ($Is refType |o#6@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|))) (and (= (_module.Object.universe |o#6@@1|) |universe#0|) (or (not (= (_module.__default.upCast |o#6@@1|) |universe#0|)) (not true))))
 :qid |_03SimpleCounterdfy.29:12|
 :skolemid |809|
 :pattern ( (_module.__default.upCast |o#6@@1|))
 :pattern ( (_module.Object.universe |o#6@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#6@@1|)))
)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.Universe.i#canCall| $Heap@2 |universe#0|) (or (_module.Universe.i $Heap@2 |universe#0|) (forall ((|o#7@@0| T@U) ) (!  (=> (and ($Is refType |o#7@@0| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|))) (_module.Object.i $Heap@2 |o#7@@0|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |811|
 :pattern ( (_module.Object.i $Heap@2 |o#7@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |universe#0|) _module.Universe.content)) ($Box refType |o#7@@0|)))
)))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@11) ($IsHeapAnchor $Heap@@11)) (=> (and (and (and ($Is refType |universe#0| Tclass._module.Universe) ($IsAlloc refType |universe#0| Tclass._module.Universe $Heap@@11)) (= 13 $FunctionContextHeight)) (and (and (|_module.Universe.i#canCall| $Heap@@11 |universe#0|) (and (_module.Universe.i $Heap@@11 |universe#0|) (and (_module.Universe.i0 $Heap@@11 |universe#0|) (forall ((|o#5| T@U) ) (!  (=> (and ($Is refType |o#5| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |universe#0|) _module.Universe.content)) ($Box refType |o#5|))) (_module.Object.i $Heap@@11 |o#5|))
 :qid |_03SimpleCounterdfy.34:20|
 :skolemid |808|
 :pattern ( (_module.Object.i $Heap@@11 |o#5|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |universe#0|) _module.Universe.content)) ($Box refType |o#5|)))
))))) (= (ControlFlow 0 16) 2))) anon0_correct))))
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
