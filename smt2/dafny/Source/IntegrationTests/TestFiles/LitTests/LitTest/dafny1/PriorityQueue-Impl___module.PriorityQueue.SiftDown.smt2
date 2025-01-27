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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun class._module.PriorityQueue? () T@U)
(declare-fun Tagclass._module.PriorityQueue? () T@U)
(declare-fun Tagclass._module.PriorityQueue () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$PriorityQueue () T@U)
(declare-fun field$N () T@U)
(declare-fun field$n () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._module.PriorityQueue? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.PriorityQueue () T@U)
(declare-fun _module.PriorityQueue.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.PriorityQueue.N () T@U)
(declare-fun _module.PriorityQueue.n () T@U)
(declare-fun _module.PriorityQueue.a () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.PriorityQueue.Valid (T@U T@U) Bool)
(declare-fun |_module.PriorityQueue.Valid#canCall| (T@U T@U) Bool)
(declare-fun |_module.PriorityQueue.MostlyValid#canCall| (T@U T@U) Bool)
(declare-fun _module.PriorityQueue.MostlyValid (T@U T@U) Bool)
(declare-fun Div (Int Int) Int)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array class._module.PriorityQueue? Tagclass._module.PriorityQueue? Tagclass._module.PriorityQueue tytagFamily$nat tytagFamily$object tytagFamily$array tytagFamily$PriorityQueue field$N field$n field$Repr field$a)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.PriorityQueue?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.PriorityQueue?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o@@0 Tclass._module.PriorityQueue?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.PriorityQueue $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.PriorityQueue? $h@@2))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.PriorityQueue $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.PriorityQueue? $h@@2))
)))
(assert (= (FDim _module.PriorityQueue.Repr) 0))
(assert (= (FieldOfDecl class._module.PriorityQueue? field$Repr) _module.PriorityQueue.Repr))
(assert ($IsGhostField _module.PriorityQueue.Repr))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@3))
)))
(assert (= (FDim _module.PriorityQueue.N) 0))
(assert (= (FieldOfDecl class._module.PriorityQueue? field$N) _module.PriorityQueue.N))
(assert  (not ($IsGhostField _module.PriorityQueue.N)))
(assert (= (FDim _module.PriorityQueue.n) 0))
(assert (= (FieldOfDecl class._module.PriorityQueue? field$n) _module.PriorityQueue.n))
(assert  (not ($IsGhostField _module.PriorityQueue.n)))
(assert (= (FDim _module.PriorityQueue.a) 0))
(assert (= (FieldOfDecl class._module.PriorityQueue? field$a) _module.PriorityQueue.a))
(assert  (not ($IsGhostField _module.PriorityQueue.a)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.PriorityQueue? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.PriorityQueue? $h@@5))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@6 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@6))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.PriorityQueue.Valid#canCall| $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.PriorityQueue) ($IsAlloc refType this Tclass._module.PriorityQueue $Heap)))))) (and (|_module.PriorityQueue.MostlyValid#canCall| $Heap this) (= (_module.PriorityQueue.Valid $Heap this)  (and (_module.PriorityQueue.MostlyValid $Heap this) (forall ((|j#0| Int) ) (!  (=> (and (<= (LitInt 2) |j#0|) (<= |j#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.PriorityQueue.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.PriorityQueue.a))) (IndexField (Div |j#0| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.PriorityQueue.a))) (IndexField |j#0|))))))
 :qid |PriorityQueuedfy.15:12|
 :skolemid |495|
 :pattern ( (Div |j#0| 2))
))))))
 :qid |PriorityQueuedfy.11:19|
 :skolemid |496|
 :pattern ( (_module.PriorityQueue.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@3)))
)))
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
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (= $o@@5 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |718|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.PriorityQueue?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.PriorityQueue.N)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.PriorityQueue.N)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.PriorityQueue?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.PriorityQueue.n)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |484|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.PriorityQueue.n)))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.PriorityQueue?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.PriorityQueue.a)) (Tclass._System.array TInt) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.PriorityQueue.a)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.PriorityQueue?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.PriorityQueue?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@4 Tclass._module.PriorityQueue?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.PriorityQueue) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.PriorityQueue)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@5 Tclass._module.PriorityQueue))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@9 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.PriorityQueue)  (and ($Is refType |c#0@@4| Tclass._module.PriorityQueue?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.PriorityQueue))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.PriorityQueue?))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.PriorityQueue?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.PriorityQueue.N)) Tclass._System.nat $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.PriorityQueue.N)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.PriorityQueue?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.PriorityQueue.n)) Tclass._System.nat $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |485|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.PriorityQueue.n)))
)))
(assert (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.PriorityQueue?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.PriorityQueue.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |486|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.PriorityQueue.Repr)))
)))
(assert (forall (($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.PriorityQueue?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.PriorityQueue.Repr)) (TSet Tclass._System.object) $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |487|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.PriorityQueue.Repr)))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.PriorityQueue) ($IsAlloc refType this@@0 Tclass._module.PriorityQueue $Heap@@0)))))) (= (_module.PriorityQueue.MostlyValid $Heap@@0 this@@0)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.Repr)) ($Box refType this@@0)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.a))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.N))) 1))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.n)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.PriorityQueue.N))))))))
 :qid |PriorityQueuedfy.18:19|
 :skolemid |504|
 :pattern ( (_module.PriorityQueue.MostlyValid $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
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
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@15)) TInt $h@@14))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@15 T@U) ($o@@16 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@16)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.PriorityQueue))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@17 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (or (= $o@@17 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@1) _module.PriorityQueue.Repr)) ($Box refType $o@@17)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@17) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@17) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.PriorityQueue.Valid $h0 this@@1) (_module.PriorityQueue.Valid $h1 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.PriorityQueue.Valid $h1 this@@1))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.PriorityQueue))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@18 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (or (= $o@@18 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@2) _module.PriorityQueue.Repr)) ($Box refType $o@@18)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@18) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@18) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |500|
)) (= (_module.PriorityQueue.MostlyValid $h0@@0 this@@2) (_module.PriorityQueue.MostlyValid $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.PriorityQueue.MostlyValid $h1@@0 this@@2))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall (($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.PriorityQueue?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.PriorityQueue.a)) (Tclass._System.array TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.PriorityQueue.a)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.PriorityQueue?) Tagclass._module.PriorityQueue?))
(assert (= (TagFamily Tclass._module.PriorityQueue?) tytagFamily$PriorityQueue))
(assert (= (Tag Tclass._module.PriorityQueue) Tagclass._module.PriorityQueue))
(assert (= (TagFamily Tclass._module.PriorityQueue) tytagFamily$PriorityQueue))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#8@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |j#6@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |smallestChild#0_0@4| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $obj0@1 () T@U)
(declare-fun $index0@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $obj1@1 () T@U)
(declare-fun $index1@1 () T@U)
(declare-fun |$rhs#0_0@1| () Int)
(declare-fun |$rhs#0_1@1| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |smallestChild#0_0@3| () Int)
(declare-fun |smallestChild#0_0@2| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |k#0| () Int)
(set-info :boogie-vc-id Impl$$_module.PriorityQueue.SiftDown)
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
 (=> (= (ControlFlow 0 0) 112) (let ((anon19_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (and (<= (LitInt 2) |j#8@0|) (<= |j#8@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#8@0| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#8@0| (LitInt 2)) (LitInt 2)) |i#0@0|)) (not true))))) (= (ControlFlow 0 71) 63)) anon19_correct)))
(let ((anon45_Then_correct  (=> (and (and (<= (LitInt 2) |j#8@0|) (<= |j#8@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#8@0| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#8@0| (LitInt 2)) (LitInt 2)) |i#0@0|)) (not true)))) (and (=> (= (ControlFlow 0 64) (- 0 70)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 64) (- 0 69)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 64) (- 0 68)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 64) (- 0 67)) (and (<= 0 (Div (Div |j#8@0| (LitInt 2)) (LitInt 2))) (< (Div (Div |j#8@0| (LitInt 2)) (LitInt 2)) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (<= 0 |j#8@0|) (< |j#8@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (= (ControlFlow 0 64) 63) anon19_correct))))))))))))
(let ((anon44_Else_correct  (=> (< (Div (Div |j#8@0| (LitInt 2)) (LitInt 2)) (LitInt 1)) (and (=> (= (ControlFlow 0 76) 64) anon45_Then_correct) (=> (= (ControlFlow 0 76) 71) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (<= (LitInt 1) (Div (Div |j#8@0| (LitInt 2)) (LitInt 2))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 73) (- 0 74)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 73) 64) anon45_Then_correct) (=> (= (ControlFlow 0 73) 71) anon45_Else_correct)))))))
(let ((anon43_Then_correct  (=> (and (<= (LitInt 2) |j#8@0|) (<= |j#8@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (and (=> (= (ControlFlow 0 77) (- 0 79)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 77) (- 0 78)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 77) 73) anon44_Then_correct) (=> (= (ControlFlow 0 77) 76) anon44_Else_correct)))))))
(let ((anon43_Else_correct  (=> (not (and (<= (LitInt 2) |j#8@0|) (<= |j#8@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))))) (and (=> (= (ControlFlow 0 72) 64) anon45_Then_correct) (=> (= (ControlFlow 0 72) 71) anon45_Else_correct)))))
(let ((anon42_Else_correct  (=> (< |j#8@0| (LitInt 2)) (and (=> (= (ControlFlow 0 81) 77) anon43_Then_correct) (=> (= (ControlFlow 0 81) 72) anon43_Else_correct)))))
(let ((anon42_Then_correct  (=> (<= (LitInt 2) |j#8@0|) (and (=> (= (ControlFlow 0 80) 77) anon43_Then_correct) (=> (= (ControlFlow 0 80) 72) anon43_Else_correct)))))
(let ((anon41_Then_correct  (and (=> (= (ControlFlow 0 82) 80) anon42_Then_correct) (=> (= (ControlFlow 0 82) 81) anon42_Else_correct))))
(let ((anon41_Else_correct true))
(let ((anon11_correct  (=> (forall ((|j#7| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7|) (<= |j#7| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7| (LitInt 2)) |i#0@0|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |j#7|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |589|
 :pattern ( (Div |j#7| 2))
)) (and (=> (= (ControlFlow 0 83) 82) anon41_Then_correct) (=> (= (ControlFlow 0 83) 62) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not (and (and (<= (LitInt 2) |j#6@0|) (<= |j#6@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#6@0| (LitInt 2)) |i#0@0|)) (not true)))) (= (ControlFlow 0 90) 83)) anon11_correct)))
(let ((anon40_Then_correct  (=> (and (and (<= (LitInt 2) |j#6@0|) (<= |j#6@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#6@0| (LitInt 2)) |i#0@0|)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 89)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 84) (- 0 88)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 84) (- 0 87)) (and (<= 0 (Div |j#6@0| (LitInt 2))) (< (Div |j#6@0| (LitInt 2)) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (and (=> (= (ControlFlow 0 84) (- 0 86)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (and (<= 0 |j#6@0|) (< |j#6@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (= (ControlFlow 0 84) 83) anon11_correct)))))))))))
(let ((anon39_Else_correct  (=> (not (and (<= (LitInt 2) |j#6@0|) (<= |j#6@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))))) (and (=> (= (ControlFlow 0 93) 84) anon40_Then_correct) (=> (= (ControlFlow 0 93) 90) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (<= (LitInt 2) |j#6@0|) (<= |j#6@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 91) 84) anon40_Then_correct) (=> (= (ControlFlow 0 91) 90) anon40_Else_correct))))))
(let ((anon38_Else_correct  (=> (< |j#6@0| (LitInt 2)) (and (=> (= (ControlFlow 0 95) 91) anon39_Then_correct) (=> (= (ControlFlow 0 95) 93) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (<= (LitInt 2) |j#6@0|) (and (=> (= (ControlFlow 0 94) 91) anon39_Then_correct) (=> (= (ControlFlow 0 94) 93) anon39_Else_correct)))))
(let ((anon37_Then_correct  (and (=> (= (ControlFlow 0 96) 94) anon38_Then_correct) (=> (= (ControlFlow 0 96) 95) anon38_Else_correct))))
(let ((anon37_Else_correct true))
(let ((anon4_correct  (=> (=> (<= (LitInt 1) |i#0@0|) (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3)) (=> (and (<= (LitInt 1) |i#0@0|) (_module.PriorityQueue.MostlyValid $Heap@0 this@@3)) (and (=> (= (ControlFlow 0 97) 96) anon37_Then_correct) (=> (= (ControlFlow 0 97) 61) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (< |i#0@0| (LitInt 1)) (= (ControlFlow 0 99) 97)) anon4_correct)))
(let ((anon36_Then_correct  (=> (and (and (<= (LitInt 1) |i#0@0|) ($IsAllocBox ($Box refType this@@3) Tclass._module.PriorityQueue? $Heap@0)) (and (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (= (ControlFlow 0 98) 97))) anon4_correct)))
(let ((anon35_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 100) 98) anon36_Then_correct) (=> (= (ControlFlow 0 100) 99) anon36_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 37) (- 0 42)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3))))))) (=> (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3)))))) (and (=> (= (ControlFlow 0 37) (- 0 41)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a))))))) (=> (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a)))))) (and (=> (= (ControlFlow 0 37) (- 0 40)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.N))) 1))))))) (=> (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.N))) 1)))))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.n))))))))) (=> (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.n)))))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.N))))))))) (=> (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@3 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.N)))))))) (=> (= (ControlFlow 0 37) (- 0 36)) (=> (|_module.PriorityQueue.Valid#canCall| $Heap@3 this@@3) (or (_module.PriorityQueue.Valid $Heap@3 this@@3) (forall ((|j#5| Int) ) (!  (=> (and (<= (LitInt 2) |j#5|) (<= |j#5| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#5| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.PriorityQueue.a))) (IndexField |j#5|))))))
 :qid |PriorityQueuedfy.15:12|
 :skolemid |586|
 :pattern ( (Div |j#5| 2))
)))))))))))))))))
(let ((anon49_Then_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |i#0@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |smallestChild#0_0@4|))))) (=> (and (= $Heap@3 $Heap@0) (= (ControlFlow 0 44) 37)) GeneratedUnifiedExit_correct))))
(let ((anon46_Then_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |i#0@0|)) (=> (and (= $Heap@3 $Heap@0) (= (ControlFlow 0 43) 37)) GeneratedUnifiedExit_correct))))
(let ((anon33_correct  (and (=> (= (ControlFlow 0 3) (- 0 13)) (=> (<= (LitInt 1) (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField |smallestChild#0_0@4|))))))) (=> (=> (<= (LitInt 1) (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField |smallestChild#0_0@4|)))))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (or (<= 0 |$decr$loop#00@1|) (= (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |smallestChild#0_0@4|)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |smallestChild#0_0@4|)) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 11)) (< (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |smallestChild#0_0@4|)) |$decr$loop#00@1|)) (=> (< (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |smallestChild#0_0@4|)) |$decr$loop#00@1|) (=> (=> (<= (LitInt 1) |smallestChild#0_0@4|) (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3)) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> |$w$loop#0@0| (<= (LitInt 1) |smallestChild#0_0@4|))) (=> (=> |$w$loop#0@0| (<= (LitInt 1) |smallestChild#0_0@4|)) (and (=> (= (ControlFlow 0 3) (- 0 9)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3))))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.N))) 1)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.N))) 1))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.N)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@2 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@2 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.N))))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (forall ((|j#7@@0| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7@@0|) (<= |j#7@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7@@0| (LitInt 2)) |smallestChild#0_0@4|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7@@0| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField |j#7@@0|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |591|
 :pattern ( (Div |j#7@@0| 2))
)))) (=> (=> |$w$loop#0@0| (forall ((|j#7@@1| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7@@1|) (<= |j#7@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7@@1| (LitInt 2)) |smallestChild#0_0@4|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7@@1| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField |j#7@@1|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |591|
 :pattern ( (Div |j#7@@1| 2))
))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (forall ((|j#9| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#9|) (<= |j#9| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#9| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#9| (LitInt 2)) (LitInt 2)) |smallestChild#0_0@4|)) (not true)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |j#9| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a))) (IndexField |j#9|))))))
 :qid |PriorityQueuedfy.96:24|
 :skolemid |594|
 :pattern ( (Div (Div |j#9| 2) 2))
)))))))))))))))))))))))))))
(let ((anon50_Else_correct  (=> (and (< (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2)) (LitInt 1)) (= (ControlFlow 0 21) 3)) anon33_correct)))
(let ((anon50_Then_correct  (=> (<= (LitInt 1) (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2))) (and (=> (= (ControlFlow 0 14) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 19)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (and (<= 0 (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2))) (< (Div (Div |smallestChild#0_0@4| (LitInt 2)) (LitInt 2)) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)))))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.PriorityQueue.a)))))) (=> (= (ControlFlow 0 14) 3) anon33_correct))))))))))))
(let ((anon49_Else_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |smallestChild#0_0@4|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |i#0@0|))))) (and (=> (= (ControlFlow 0 22) (- 0 35)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 34)) (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (=> (and (= $obj0@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (= $index0@1 (IndexField |smallestChild#0_0@4|))) (and (=> (= (ControlFlow 0 22) (- 0 33)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 $index0@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 $index0@1)) (and (=> (= (ControlFlow 0 22) (- 0 32)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 31)) (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (=> (and (= $obj1@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (= $index1@1 (IndexField |i#0@0|))) (and (=> (= (ControlFlow 0 22) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj1@1 $index1@1))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj1@1 $index1@1)) (and (=> (= (ControlFlow 0 22) (- 0 29)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 28)) (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (=> (= |$rhs#0_0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |i#0@0|))))) (and (=> (= (ControlFlow 0 22) (- 0 27)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 26)) (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (=> (= |$rhs#0_1@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |smallestChild#0_0@4|))))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (or (or (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))) (not true)) (or (not (= |i#0@0| |smallestChild#0_0@4|)) (not true))) (= ($Box intType (int_2_U |$rhs#0_1@1|)) ($Box intType (int_2_U |$rhs#0_0@1|))))) (=> (or (or (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))) (not true)) (or (not (= |i#0@0| |smallestChild#0_0@4|)) (not true))) (= ($Box intType (int_2_U |$rhs#0_1@1|)) ($Box intType (int_2_U |$rhs#0_0@1|)))) (=> (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $obj0@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $obj0@1) $index0@1 ($Box intType (int_2_U |$rhs#0_0@1|))))) ($IsGoodHeap $Heap@1)) (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $obj1@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $obj1@1) $index1@1 ($Box intType (int_2_U |$rhs#0_1@1|))))) ($IsGoodHeap $Heap@2))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= (LitInt 2) 0)) (not true))) (and (=> (= (ControlFlow 0 22) 14) anon50_Then_correct) (=> (= (ControlFlow 0 22) 21) anon50_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon27_correct  (and (=> (= (ControlFlow 0 45) (- 0 49)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 48)) (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 |smallestChild#0_0@4|) (< |smallestChild#0_0@4| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (and (=> (= (ControlFlow 0 45) 44) anon49_Then_correct) (=> (= (ControlFlow 0 45) 22) anon49_Else_correct))))))))))))
(let ((anon48_Else_correct  (=> (and (and (not (and (<= (+ (Mul (LitInt 2) |i#0@0|) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (+ (Mul (LitInt 2) |i#0@0|) 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (Mul (LitInt 2) |i#0@0|)))))))) (= |smallestChild#0_0@3| (Mul (LitInt 2) |i#0@0|))) (and (= |smallestChild#0_0@4| |smallestChild#0_0@3|) (= (ControlFlow 0 51) 45))) anon27_correct)))
(let ((anon48_Then_correct  (=> (and (and (and (<= (+ (Mul (LitInt 2) |i#0@0|) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (+ (Mul (LitInt 2) |i#0@0|) 1))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (Mul (LitInt 2) |i#0@0|))))))) (= |smallestChild#0_0@2| (+ (Mul (LitInt 2) |i#0@0|) 1))) (and (= |smallestChild#0_0@4| |smallestChild#0_0@2|) (= (ControlFlow 0 50) 45))) anon27_correct)))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 52) 50) anon48_Then_correct) (=> (= (ControlFlow 0 52) 51) anon48_Else_correct))))
(let ((anon47_Else_correct  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (+ (Mul (LitInt 2) |i#0@0|) 1)) (= (ControlFlow 0 58) 52)) anon24_correct)))
(let ((anon47_Then_correct  (=> (<= (+ (Mul (LitInt 2) |i#0@0|) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))) (and (=> (= (ControlFlow 0 53) (- 0 57)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 53) (- 0 56)) (and (<= 0 (+ (Mul (LitInt 2) |i#0@0|) 1)) (< (+ (Mul (LitInt 2) |i#0@0|) 1) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 (+ (Mul (LitInt 2) |i#0@0|) 1)) (< (+ (Mul (LitInt 2) |i#0@0|) 1) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)) null)) (not true)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (and (<= 0 (Mul (LitInt 2) |i#0@0|)) (< (Mul (LitInt 2) |i#0@0|) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (=> (and (<= 0 (Mul (LitInt 2) |i#0@0|)) (< (Mul (LitInt 2) |i#0@0|) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))))) (=> (= (ControlFlow 0 53) 52) anon24_correct))))))))))))
(let ((anon46_Else_correct  (=> (and (<= (Mul (LitInt 2) |i#0@0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))) (= |$decr$loop#00@1| (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |i#0@0|)))) (and (=> (= (ControlFlow 0 59) 53) anon47_Then_correct) (=> (= (ControlFlow 0 59) 58) anon47_Else_correct)))))
(let ((anon35_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 60) 43) anon46_Then_correct) (=> (= (ControlFlow 0 60) 59) anon46_Else_correct)))))
(let ((anon34_LoopBody_correct  (and (=> (= (ControlFlow 0 101) 100) anon35_Then_correct) (=> (= (ControlFlow 0 101) 60) anon35_Else_correct))))
(let ((anon34_LoopDone_correct true))
(let ((anon34_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and (not false) (<= 0 |i#0@0|)) (and (=> |$w$loop#0@0| (=> (<= (LitInt 1) |i#0@0|) (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3))) (=> |$w$loop#0@0| (<= (LitInt 1) |i#0@0|)))) (and (and (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3))))) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a)))))) (and (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.N))) 1))))) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))))))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.N))))))) (=> |$w$loop#0@0| (and (|_module.PriorityQueue.MostlyValid#canCall| $Heap@0 this@@3) (and (_module.PriorityQueue.MostlyValid $Heap@0 this@@3) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.N))) 1))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.N)))))))))) (and (=> |$w$loop#0@0| (forall ((|j#7@@2| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7@@2|) (<= |j#7@@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7@@2| (LitInt 2)) |i#0@0|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7@@2| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |j#7@@2|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |591|
 :pattern ( (Div |j#7@@2| 2))
))) (=> |$w$loop#0@0| (forall ((|j#9@@0| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#9@@0|) (<= |j#9@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#9@@0| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#9@@0| (LitInt 2)) (LitInt 2)) |i#0@0|)) (not true)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |j#9@@0| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.a))) (IndexField |j#9@@0|))))))
 :qid |PriorityQueuedfy.96:24|
 :skolemid |594|
 :pattern ( (Div (Div |j#9@@0| 2) 2))
))))) (and (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@20) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@20)) (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a)))))
 :qid |PriorityQueuedfy.93:5|
 :skolemid |595|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20))
)) ($HeapSucc $Heap@@1 $Heap@0)) (and (forall (($o@@21 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@21) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@21) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@21 $f@@2))))
 :qid |PriorityQueuedfy.93:5|
 :skolemid |596|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21) $f@@2))
)) (<= (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |i#0@0|)) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 102) 1) anon34_LoopDone_correct) (=> (= (ControlFlow 0 102) 101) anon34_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#5| null $Heap@@1 alloc ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a)))) (= |$decr_init$loop#00@0| (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))) (Mul (LitInt 2) |k#0|)))) (and (=> (= (ControlFlow 0 103) (- 0 111)) (=> |$w$loop#0@0| (<= (LitInt 1) |k#0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 1) |k#0|)) (and (=> (= (ControlFlow 0 103) (- 0 110)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3))))) (and (=> (= (ControlFlow 0 103) (- 0 109)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))))) (and (=> (= (ControlFlow 0 103) (- 0 108)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N))) 1)))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N))) 1))))) (and (=> (= (ControlFlow 0 103) (- 0 107)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))))) (and (=> (= (ControlFlow 0 103) (- 0 106)) (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N)))))))) (=> (=> |$w$loop#0@0| (=> (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (or (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N))))))) (and (=> (= (ControlFlow 0 103) (- 0 105)) (=> |$w$loop#0@0| (forall ((|j#7@@3| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7@@3|) (<= |j#7@@3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7@@3| (LitInt 2)) |k#0|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7@@3| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#7@@3|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |591|
 :pattern ( (Div |j#7@@3| 2))
)))) (=> (=> |$w$loop#0@0| (forall ((|j#7@@4| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#7@@4|) (<= |j#7@@4| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#7@@4| (LitInt 2)) |k#0|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#7@@4| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#7@@4|))))))
 :qid |PriorityQueuedfy.95:24|
 :skolemid |591|
 :pattern ( (Div |j#7@@4| 2))
))) (and (=> (= (ControlFlow 0 103) (- 0 104)) (=> |$w$loop#0@0| (forall ((|j#9@@1| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#9@@1|) (<= |j#9@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#9@@1| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#9@@1| (LitInt 2)) (LitInt 2)) |k#0|)) (not true)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |j#9@@1| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#9@@1|))))))
 :qid |PriorityQueuedfy.96:24|
 :skolemid |594|
 :pattern ( (Div (Div |j#9@@1| 2) 2))
)))) (=> (=> |$w$loop#0@0| (forall ((|j#9@@2| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#9@@2|) (<= |j#9@@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#9@@2| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#9@@2| (LitInt 2)) (LitInt 2)) |k#0|)) (not true)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |j#9@@2| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#9@@2|))))))
 :qid |PriorityQueuedfy.96:24|
 :skolemid |594|
 :pattern ( (Div (Div |j#9@@2| 2) 2))
))) (=> (= (ControlFlow 0 103) 102) anon34_LoopHead_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.PriorityQueue) ($IsAlloc refType this@@3 Tclass._module.PriorityQueue $Heap@@1))) (and (= 2 $FunctionContextHeight) (<= (LitInt 1) |k#0|))) (=> (and (and (and (|_module.PriorityQueue.MostlyValid#canCall| $Heap@@1 this@@3) (and (_module.PriorityQueue.MostlyValid $Heap@@1 this@@3) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) ($Box refType this@@3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N))) 1))) (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.N)))))))) (forall ((|j#1| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#1|) (<= |j#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (or (not (= (Div |j#1| (LitInt 2)) |k#0|)) (not true))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div |j#1| (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#1|))))))
 :qid |PriorityQueuedfy.85:21|
 :skolemid |584|
 :pattern ( (Div |j#1| 2))
))) (and (forall ((|j#3| Int) ) (!  (=> (and (and (<= (LitInt 2) |j#3|) (<= |j#3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.n))))) (and (<= (LitInt 1) (Div (Div |j#3| (LitInt 2)) (LitInt 2))) (or (not (= (Div (Div |j#3| (LitInt 2)) (LitInt 2)) |k#0|)) (not true)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField (Div (Div |j#3| (LitInt 2)) (LitInt 2)))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.PriorityQueue.a))) (IndexField |j#3|))))))
 :qid |PriorityQueuedfy.86:21|
 :skolemid |585|
 :pattern ( (Div (Div |j#3| 2) 2))
)) (= (ControlFlow 0 112) 103))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
