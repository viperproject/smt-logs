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
(declare-fun class._module.Universe? () T@U)
(declare-fun Tagclass._module.Universe? () T@U)
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Object? () T@U)
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
(declare-fun _module.Universe.globalInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.inv (T@U T@U) Bool)
(declare-fun |_module.Object.inv#canCall| (T@U T@U) Bool)
(declare-fun Tclass._module.Universe? () T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Universe.globalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.localInv2 (T@U T@U T@U) Bool)
(declare-fun _module.Object.inv2 (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Object.objectGlobalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Object.objectGlobalInv (T@U T@U) Bool)
(declare-fun |_module.Object.baseInv#canCall| (T@U T@U) Bool)
(declare-fun _module.Object.baseInv (T@U T@U) Bool)
(declare-fun |_module.Universe.globalInv2#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |_module.Object.inv2#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.Object.objectGlobalInv#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.Object.localInv (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Universe (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc allocName Tagclass._module.Universe class._module.Universe? Tagclass._module.Universe? Tagclass._module.Object Tagclass._module.Object? tytagFamily$Universe tytagFamily$Object field$content)
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
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Universe.globalInv#canCall| $Heap@@0 this@@0) (and (< 9 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Universe) ($IsAlloc refType this@@0 Tclass._module.Universe $Heap@@0)))))) (and (and (|_module.Universe.globalBaseInv#canCall| $Heap@@0 this@@0) (=> (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0@@0| T@U) ) (!  (=> ($Is refType |o#0@@0| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)) (|_module.Object.inv#canCall| $Heap@@0 |o#0@@0|)))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |507|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@0|)))
)))) (= (_module.Universe.globalInv $Heap@@0 this@@0)  (and (_module.Universe.globalBaseInv $Heap@@0 this@@0) (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|))) (_module.Object.inv $Heap@@0 |o#0@@1|))
 :qid |_08CounterNoTerminationdfy.39:32|
 :skolemid |506|
 :pattern ( (_module.Object.inv $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Universe.content)) ($Box refType |o#0@@1|)))
))))))
 :qid |_08CounterNoTerminationdfy.38:19|
 :skolemid |508|
 :pattern ( (_module.Universe.globalInv $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Universe $h) ($IsAlloc refType |c#0| Tclass._module.Universe? $h))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Universe? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |773|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Object? $h@@0))
)))
(assert (= (FDim _module.Universe.content) 0))
(assert (= (FieldOfDecl class._module.Universe? field$content) _module.Universe.content))
(assert ($IsGhostField _module.Universe.content))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Universe) ($IsAlloc refType this@@1 Tclass._module.Universe $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |515|
)) (= (_module.Universe.globalInv2 $prevHeap $h0 this@@1) (_module.Universe.globalInv2 $prevHeap $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |516|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Universe.globalInv2 $prevHeap $h1 this@@1))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Object) ($IsAlloc refType this@@2 Tclass._module.Object $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |717|
)) (= (_module.Object.objectGlobalInv2 $prevHeap@@0 $h0@@0 this@@2) (_module.Object.objectGlobalInv2 $prevHeap@@0 $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |718|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Object.objectGlobalInv2 $prevHeap@@0 $h1@@0 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Object) ($IsAlloc refType this@@3 Tclass._module.Object $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |728|
)) (= (_module.Object.localInv2 $prevHeap@@1 $h0@@1 this@@3) (_module.Object.localInv2 $prevHeap@@1 $h1@@1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Object.localInv2 $prevHeap@@1 $h1@@1 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Object) ($IsAlloc refType this@@4 Tclass._module.Object $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |736|
)) (= (_module.Object.inv2 $prevHeap@@2 $h0@@2 this@@4) (_module.Object.inv2 $prevHeap@@2 $h1@@2 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |737|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.Object.inv2 $prevHeap@@2 $h1@@2 this@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@1)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Universe? $h@@1))
)))
(assert (forall (($o@@4 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@2)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Object? $h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@5 T@U) ($f@@3 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f@@3))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@5) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2275|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@5 $f@@3))
)))
(assert  (=> (<= 11 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@1 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv2#canCall| $prevHeap@@3 $Heap@@1 this@@5) (and (< 11 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@3 $Heap@@1)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Object) ($IsAlloc refType this@@5 Tclass._module.Object $prevHeap@@3)))) (_module.Object.objectGlobalInv $prevHeap@@3 this@@5)))) (and (and (|_module.Object.baseInv#canCall| $Heap@@1 this@@5) (=> (_module.Object.baseInv $Heap@@1 this@@5) (|_module.Universe.globalInv2#canCall| $prevHeap@@3 $Heap@@1 (_module.Object.universe this@@5)))) (= (_module.Object.objectGlobalInv2 $prevHeap@@3 $Heap@@1 this@@5)  (and (_module.Object.baseInv $Heap@@1 this@@5) (_module.Universe.globalInv2 $prevHeap@@3 $Heap@@1 (_module.Object.universe this@@5))))))
 :qid |_08CounterNoTerminationdfy.115:22|
 :skolemid |721|
 :pattern ( (_module.Object.objectGlobalInv2 $prevHeap@@3 $Heap@@1 this@@5) ($IsGoodHeap $Heap@@1))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@3 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))) ($IsAlloc refType (_module.Object.universe $o@@6) Tclass._module.Universe $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( (_module.Object.universe $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) ($Is refType $o@@7 Tclass._module.Object?)) ($Is refType (_module.Object.universe $o@@7) Tclass._module.Universe))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (_module.Object.universe $o@@7))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Universe) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Universe)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@1 Tclass._module.Universe))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Universe?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Universe?)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@2 Tclass._module.Universe?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@3 Tclass._module.Object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsBox bx@@4 Tclass._module.Object?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Universe)  (and ($Is refType |c#0@@1| Tclass._module.Universe?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |670|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Universe))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Universe?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Object)  (and ($Is refType |c#0@@2| Tclass._module.Object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Object?))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@4 T@U) ($Heap@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Universe.globalInv2#canCall| $prevHeap@@4 $Heap@@2 this@@6) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@4 $Heap@@2)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Universe) ($IsAlloc refType this@@6 Tclass._module.Universe $prevHeap@@4)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|o#0@@2| T@U) ) (!  (=> ($Is refType |o#0@@2| Tclass._module.Object) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)) (|_module.Object.inv2#canCall| $prevHeap@@4 $Heap@@2 |o#0@@2|))))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |520|
 :pattern ( (_module.Object.inv2 $prevHeap@@4 $Heap@@2 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@6) _module.Universe.content)) ($Box refType |o#0@@2|)))
))) (= (_module.Universe.globalInv2 $prevHeap@@4 $Heap@@2 this@@6)  (and true (forall ((|o#0@@3| T@U) ) (!  (=> (and ($Is refType |o#0@@3| Tclass._module.Object) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|)) (_module.Object.inv2 $prevHeap@@4 $Heap@@2 |o#0@@3|)))
 :qid |_08CounterNoTerminationdfy.44:16|
 :skolemid |519|
 :pattern ( (_module.Object.inv2 $prevHeap@@4 $Heap@@2 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@4 this@@6) _module.Universe.content)) ($Box refType |o#0@@3|)))
))))))
 :qid |_08CounterNoTerminationdfy.43:22|
 :skolemid |521|
 :pattern ( (_module.Universe.globalInv2 $prevHeap@@4 $Heap@@2 this@@6) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Object.baseInv#canCall| $Heap@@3 this@@7) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Object) ($IsAlloc refType this@@7 Tclass._module.Object $Heap@@3)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 (_module.Object.universe this@@7)) _module.Universe.content)) ($Box refType this@@7)) (|_module.Universe.globalBaseInv#canCall| $Heap@@3 (_module.Object.universe this@@7))) (= (_module.Object.baseInv $Heap@@3 this@@7)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 (_module.Object.universe this@@7)) _module.Universe.content)) ($Box refType this@@7)) (_module.Universe.globalBaseInv $Heap@@3 (_module.Object.universe this@@7))))))
 :qid |_08CounterNoTerminationdfy.90:19|
 :skolemid |680|
 :pattern ( (_module.Object.baseInv $Heap@@3 this@@7) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.Object.objectGlobalInv#canCall| $Heap@@4 this@@8) (and (< 10 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Object) ($IsAlloc refType this@@8 Tclass._module.Object $Heap@@4)))))) (and (and (|_module.Object.baseInv#canCall| $Heap@@4 this@@8) (=> (_module.Object.baseInv $Heap@@4 this@@8) (|_module.Universe.globalInv#canCall| $Heap@@4 (_module.Object.universe this@@8)))) (= (_module.Object.objectGlobalInv $Heap@@4 this@@8)  (and (_module.Object.baseInv $Heap@@4 this@@8) (_module.Universe.globalInv $Heap@@4 (_module.Object.universe this@@8))))))
 :qid |_08CounterNoTerminationdfy.112:19|
 :skolemid |714|
 :pattern ( (_module.Object.objectGlobalInv $Heap@@4 this@@8) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($Heap@@5 T@U) (this@@9 T@U) ) (!  (=> (or (|_module.Object.inv#canCall| $Heap@@5 this@@9) (and (< 8 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Object) ($IsAlloc refType this@@9 Tclass._module.Object $Heap@@5)))))) (=> (_module.Object.inv $Heap@@5 this@@9) (_module.Object.localInv $Heap@@5 this@@9)))
 :qid |_08CounterNoTerminationdfy.120:19|
 :skolemid |734|
 :pattern ( (_module.Object.inv $Heap@@5 this@@9))
))))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
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
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall (($h0@@3 T@U) ($h1@@3 T@U) (this@@10 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 Tclass._module.Universe))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@8 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (or (= $o@@8 this@@10) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 this@@10) _module.Universe.content)) ($Box refType $o@@8)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@8) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@8) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Universe.globalBaseInv $h0@@3 this@@10) (_module.Universe.globalBaseInv $h1@@3 this@@10))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.Universe.globalBaseInv $h1@@3 this@@10))
)))
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@11 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.Universe) ($IsAlloc refType this@@11 Tclass._module.Universe $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@9 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@9) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@9) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Universe.globalInv $h0@@4 this@@11) (_module.Universe.globalInv $h1@@4 this@@11))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Universe.globalInv $h1@@4 this@@11))
)))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@12 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@12 null)) (not true)) (and ($Is refType this@@12 Tclass._module.Object) ($IsAlloc refType this@@12 Tclass._module.Object $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@10 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@10) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@10) $f@@6)))
 :qid |unknown.0:0|
 :skolemid |676|
)) (= (_module.Object.baseInv $h0@@5 this@@12) (_module.Object.baseInv $h1@@5 this@@12))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |677|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Object.baseInv $h1@@5 this@@12))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@13 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Object) ($IsAlloc refType this@@13 Tclass._module.Object $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@11 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@11) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@11) $f@@7)))
 :qid |unknown.0:0|
 :skolemid |710|
)) (= (_module.Object.objectGlobalInv $h0@@6 this@@13) (_module.Object.objectGlobalInv $h1@@6 this@@13))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |711|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.Object.objectGlobalInv $h1@@6 this@@13))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Object) ($IsAlloc refType this@@14 Tclass._module.Object $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@12 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@12) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@12) $f@@8)))
 :qid |unknown.0:0|
 :skolemid |724|
)) (= (_module.Object.localInv $h0@@7 this@@14) (_module.Object.localInv $h1@@7 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |725|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.Object.localInv $h1@@7 this@@14))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@15 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@15 null)) (not true)) (and ($Is refType this@@15 Tclass._module.Object) ($IsAlloc refType this@@15 Tclass._module.Object $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@13 T@U) ($f@@9 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@13) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@13) $f@@9)))
 :qid |unknown.0:0|
 :skolemid |732|
)) (= (_module.Object.inv $h0@@8 this@@15) (_module.Object.inv $h1@@8 this@@15))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |733|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.Object.inv $h1@@8 this@@15))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.Universe) Tagclass._module.Universe))
(assert (= (TagFamily Tclass._module.Universe) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Universe?) Tagclass._module.Universe?))
(assert (= (TagFamily Tclass._module.Universe?) tytagFamily$Universe))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert (forall (($o@@14 T@U) ) (! (= ($Is refType $o@@14 Tclass._module.Universe?)  (or (= $o@@14 null) (implements$_module.Universe (dtype $o@@14))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType $o@@14 Tclass._module.Universe?))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass._module.Object?)  (or (= $o@@15 null) (implements$_module.Object (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($Is refType $o@@15 Tclass._module.Object?))
)))
(assert (forall (($h@@4 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.Universe?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@16) _module.Universe.content)) (TSet Tclass._module.Object) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@16) _module.Universe.content)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@6 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.Object.inv2#canCall| $prevHeap@@5 $Heap@@6 this@@16) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@6)) ($HeapSucc $prevHeap@@5 $Heap@@6)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.Object) ($IsAlloc refType this@@16 Tclass._module.Object $prevHeap@@5)))))) (=> (_module.Object.inv2 $prevHeap@@5 $Heap@@6 this@@16) (_module.Object.localInv2 $prevHeap@@5 $Heap@@6 this@@16)))
 :qid |_08CounterNoTerminationdfy.121:22|
 :skolemid |738|
 :pattern ( (_module.Object.inv2 $prevHeap@@5 $Heap@@6 this@@16))
))))
(assert (forall (($h@@5 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@17 null)) (not true)) ($Is refType $o@@17 Tclass._module.Universe?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@17) _module.Universe.content)) (TSet Tclass._module.Object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@17) _module.Universe.content)))
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
(declare-fun $Heap@@7 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@17 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Object.objectGlobalInv2)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon5_correct  (=> (= (_module.Object.objectGlobalInv2 $Heap@@7 current$Heap this@@17)  (and (_module.Object.baseInv current$Heap this@@17) (_module.Universe.globalInv2 $Heap@@7 current$Heap (_module.Object.universe this@@17)))) (=> (and (and (|_module.Object.baseInv#canCall| current$Heap this@@17) (=> (_module.Object.baseInv current$Heap this@@17) (|_module.Universe.globalInv2#canCall| $Heap@@7 current$Heap (_module.Object.universe this@@17)))) ($Is boolType (bool_2_U (_module.Object.objectGlobalInv2 $Heap@@7 current$Heap this@@17)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@1|)))))))
(let ((anon8_Else_correct  (=> (not (_module.Object.baseInv current$Heap this@@17)) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 8) 3)) anon5_correct))))
(let ((anon8_Then_correct  (=> (_module.Object.baseInv current$Heap this@@17) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= (_module.Object.universe this@@17) null)) (not true))) (=> (or (not (= (_module.Object.universe this@@17) null)) (not true)) (=> ($IsAllocBox ($Box refType (_module.Object.universe this@@17)) Tclass._module.Universe? current$Heap) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($IsAlloc refType (_module.Object.universe this@@17) Tclass._module.Universe $Heap@@7)) (=> ($IsAlloc refType (_module.Object.universe this@@17) Tclass._module.Universe $Heap@@7) (=> (and (and (= |b$reqreads#1@0| (forall (($o@@18 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@18) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@18 $f@@10)))
 :qid |_08CounterNoTerminationdfy.115:105|
 :skolemid |723|
))) (|_module.Universe.globalInv2#canCall| $Heap@@7 current$Heap (_module.Object.universe this@@17))) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 5) 3))) anon5_correct)))))))))
(let ((anon7_Else_correct  (=> ($IsAllocBox ($Box refType this@@17) Tclass._module.Object? current$Heap) (=> (and (= |b$reqreads#0@0| (forall (($o@@19 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@19) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@19) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@19 $f@@11)))
 :qid |_08CounterNoTerminationdfy.115:83|
 :skolemid |722|
))) (|_module.Object.baseInv#canCall| current$Heap this@@17)) (and (=> (= (ControlFlow 0 9) 5) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#3| null current$Heap alloc current$Heap alloc)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAlloc refType this@@17 Tclass._module.Object $Heap@@7)) (=> ($IsAlloc refType this@@17 Tclass._module.Object $Heap@@7) (=> (and (|_module.Object.objectGlobalInv#canCall| $Heap@@7 this@@17) (_module.Object.objectGlobalInv $Heap@@7 this@@17)) (and (=> (= (ControlFlow 0 10) 1) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.Object) ($IsAlloc refType this@@17 Tclass._module.Object previous$Heap))) (= 11 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@7) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 12) 10))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
