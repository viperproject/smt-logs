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
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun class._module.AllocationIterator? () T@U)
(declare-fun Tagclass._module.AllocationIterator? () T@U)
(declare-fun Tagclass._module.AllocationIterator () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$AllocationIterator () T@U)
(declare-fun field$_new () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.AllocationIterator? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun Tclass._module.AllocationIterator () T@U)
(declare-fun _module.AllocationIterator.__new () T@U)
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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.AllocationIterator.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.AllocationIterator.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.AllocationIterator.x (T@U) T@U)
(declare-fun _module.AllocationIterator.__decreases0 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.AllocationIterator.__modifies (T@U) T@U)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Cell Tagclass._module.Cell? class._module.AllocationIterator? Tagclass._module.AllocationIterator? Tagclass._module.AllocationIterator tytagFamily$object tytagFamily$Cell tytagFamily$AllocationIterator field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |4324|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |4325|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |4323|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |4339|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |4320|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cell?)  (or (= $o null) (= (dtype $o) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |4851|
 :pattern ( ($Is refType $o Tclass._module.Cell?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.AllocationIterator?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.AllocationIterator?)))
 :qid |unknown.0:0|
 :skolemid |4951|
 :pattern ( ($Is refType $o@@0 Tclass._module.AllocationIterator?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |4338|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |4546|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |4856|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.AllocationIterator $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.AllocationIterator? $h@@1))
 :qid |unknown.0:0|
 :skolemid |4974|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AllocationIterator $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.AllocationIterator? $h@@1))
)))
(assert (= (FDim _module.AllocationIterator.__new) 0))
(assert (= (FieldOfDecl class._module.AllocationIterator? field$_new) _module.AllocationIterator.__new))
(assert ($IsGhostField _module.AllocationIterator.__new))
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
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4543|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4852|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.AllocationIterator? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4952|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.AllocationIterator? $h@@4))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4313|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4314|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4210|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4221|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |4241|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |4242|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.AllocationIterator))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (or (or (= $o@@4 this) (|Set#IsMember| (_module.AllocationIterator.__reads this) ($Box refType $o@@4))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.AllocationIterator.__new)) ($Box refType $o@@4)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f)))
 :qid |unknown.0:0|
 :skolemid |4966|
)) (= (_module.AllocationIterator.Valid $h0 this) (_module.AllocationIterator.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4967|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.AllocationIterator.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4234|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4306|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4305|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (= $o@@5 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5371|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4541|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |4544|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Cell) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |4707|
 :pattern ( ($IsBox bx@@3 Tclass._module.Cell))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cell?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |4708|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cell?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.AllocationIterator?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.AllocationIterator?)))
 :qid |unknown.0:0|
 :skolemid |4950|
 :pattern ( ($IsBox bx@@5 Tclass._module.AllocationIterator?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.AllocationIterator) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.AllocationIterator)))
 :qid |unknown.0:0|
 :skolemid |4964|
 :pattern ( ($IsBox bx@@6 Tclass._module.AllocationIterator))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4545|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Cell)  (and ($Is refType |c#0@@3| Tclass._module.Cell?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4855|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.AllocationIterator)  (and ($Is refType |c#0@@4| Tclass._module.AllocationIterator?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4973|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.AllocationIterator))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.AllocationIterator?))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.AllocationIterator?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.AllocationIterator.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4959|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.AllocationIterator.__new)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.AllocationIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.AllocationIterator.__new)) (TSet Tclass._System.object?) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4960|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.AllocationIterator.__new)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |4345|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@5 c)) (not true)) (=> (and ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@5 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4312|
 :pattern ( ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |4302|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4233|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |4262|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |4263|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |4542|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4196|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4197|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4220|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.AllocationIterator?)) ($Is refType (_module.AllocationIterator.x $o@@9) Tclass._module.Cell?))
 :qid |unknown.0:0|
 :skolemid |4953|
 :pattern ( (_module.AllocationIterator.x $o@@9))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.AllocationIterator?)) ($Is refType (_module.AllocationIterator.__decreases0 $o@@10) Tclass._module.Cell?))
 :qid |unknown.0:0|
 :skolemid |4961|
 :pattern ( (_module.AllocationIterator.__decreases0 $o@@10))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4227|
 :pattern ( ($IsBox bx@@8 (TSet t@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |4311|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@8)))
)))
(assert (forall (($h@@7 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.AllocationIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@11) alloc)))) ($IsAlloc refType (_module.AllocationIterator.x $o@@11) Tclass._module.Cell? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4954|
 :pattern ( (_module.AllocationIterator.x $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@11) alloc)))
)))
(assert (forall (($h@@8 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.AllocationIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) alloc)))) ($IsAlloc refType (_module.AllocationIterator.__decreases0 $o@@12) Tclass._module.Cell? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4962|
 :pattern ( (_module.AllocationIterator.__decreases0 $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@12) alloc)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass._module.AllocationIterator?) Tagclass._module.AllocationIterator?))
(assert (= (TagFamily Tclass._module.AllocationIterator?) tytagFamily$AllocationIterator))
(assert (= (Tag Tclass._module.AllocationIterator) Tagclass._module.AllocationIterator))
(assert (= (TagFamily Tclass._module.AllocationIterator) tytagFamily$AllocationIterator))
(assert (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.AllocationIterator?)) ($Is SetType (_module.AllocationIterator.__reads $o@@13) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4955|
 :pattern ( (_module.AllocationIterator.__reads $o@@13))
)))
(assert (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.AllocationIterator?)) ($Is SetType (_module.AllocationIterator.__modifies $o@@14) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4957|
 :pattern ( (_module.AllocationIterator.__modifies $o@@14))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@6 b@@3) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@6 o@@3) (|Set#IsMember| b@@3 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |4343|
 :pattern ( (|Set#IsMember| a@@6 o@@3))
 :pattern ( (|Set#IsMember| b@@3 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |4344|
 :pattern ( (|Set#Equal| a@@6 b@@3))
)))
(assert (forall (($h@@9 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.AllocationIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@15) alloc)))) ($IsAlloc SetType (_module.AllocationIterator.__reads $o@@15) (TSet Tclass._System.object?) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4956|
 :pattern ( (_module.AllocationIterator.__reads $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@15) alloc)))
)))
(assert (forall (($h@@10 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.AllocationIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) alloc)))) ($IsAlloc SetType (_module.AllocationIterator.__modifies $o@@16) (TSet Tclass._System.object?) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4958|
 :pattern ( (_module.AllocationIterator.__modifies $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@16) alloc)))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4211|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@6 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |saveNew#0@0| () T@U)
(declare-fun |call2formal@v#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |_yieldCount#0| () Int)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call4formal@s@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call1formal@u#0| () T@U)
(declare-fun |call2formal@v#0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call1formal@u#0@0| () T@U)
(declare-fun call4formal@s@0@@0 () T@U)
(declare-fun $_OldIterHeap () T@U)
(declare-fun |defass#h#0| () Bool)
(declare-fun |h#0| () T@U)
(declare-fun |saveNew#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |v#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.AllocationIterator)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon4_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> (|Set#IsMember| (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) |saveNew#0@0|) ($Box refType |call2formal@v#0@0|)) (or (not (= |call2formal@v#0@0| null)) (not true)))) (=> (= (ControlFlow 0 11) (- 0 10)) (=> (|Set#IsMember| (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) |saveNew#0@0|) ($Box refType |call2formal@v#0@0|)) (and (or (not (= |call2formal@v#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call2formal@v#0@0|) alloc))))))))))
(let ((anon12_Else_correct  (=> (and (= |call2formal@v#0@0| null) (= (ControlFlow 0 15) 11)) anon4_correct)))
(let ((anon12_Then_correct  (=> (and (or (not (= |call2formal@v#0@0| null)) (not true)) (= (ControlFlow 0 14) 11)) anon4_correct)))
(let ((anon11_Then_correct  (=> (|Set#IsMember| (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) |saveNew#0@0|) ($Box refType |call2formal@v#0@0|)) (and (=> (= (ControlFlow 0 16) 14) anon12_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) |saveNew#0@0|) ($Box refType |call2formal@v#0@0|))) (= (ControlFlow 0 13) 11)) anon4_correct)))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 17) 16) anon11_Then_correct) (=> (= (ControlFlow 0 17) 13) anon11_Else_correct))))
(let ((anon7_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (not (and (or (not (= |call2formal@v#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call2formal@v#0@0|) alloc)))))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) ($Box refType |call2formal@v#0@0|)))))))
(let ((anon14_Else_correct  (=> (and (and (or (not (= |call2formal@v#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call2formal@v#0@0|) alloc))))) (= (ControlFlow 0 8) 6)) anon7_correct)))
(let ((anon14_Then_correct  (=> (and (not (and (or (not (= |call2formal@v#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |call2formal@v#0@0|) alloc)))))) (= (ControlFlow 0 7) 6)) anon7_correct)))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon14_Then_correct) (=> (= (ControlFlow 0 9) 8) anon14_Else_correct))))
(let ((anon15_Else_correct  (=> (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 4) (- 0 3))) false)))
(let ((anon15_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) ($Box refType |call2formal@v#0@0|)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#6| null $Heap alloc this@@0)) (= (_module.AllocationIterator.x this@@0) |x#0|)) (=> (and (and (_module.AllocationIterator.Valid $Heap this@@0) (|Set#Equal| (_module.AllocationIterator.__reads this@@0) |Set#Empty|)) (and (|Set#Equal| (_module.AllocationIterator.__modifies this@@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.AllocationIterator.__new)) |Set#Empty|))) (=> (and (and (and (= (_module.AllocationIterator.__decreases0 this@@0) |x#0|) (= |_yieldCount#0| 0)) (and (= call1formal@rds@0 (_module.AllocationIterator.__reads this@@0)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.AllocationIterator.__new))))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@17 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@17) alloc)))) (=> (or (or (= $o@@17 this@@0) (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@17))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@17))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@17) $f@@1))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |4315|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) $f@@1))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 18) (- 0 26)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.AllocationIterator.__new)) |Set#Empty|)) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.AllocationIterator.__new)) |Set#Empty|) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Cell?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc))))) (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc ($Box boolType (bool_2_U true))))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.AllocationIterator.__new ($Box SetType (|Set#UnionOne| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.AllocationIterator.__new)) ($Box refType $nw@0))))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 18) (- 0 25)) true) (and (=> (= (ControlFlow 0 18) (- 0 24)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@0) _module.AllocationIterator.__new)) (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@0) _module.AllocationIterator.__new)) (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@18)))
 :qid |Iteratorsdfy.181:8|
 :skolemid |4727|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@18))
))) (and (and ($HeapSucc $Heap@2 $Heap@3) (forall ((bx@@9 T@U) ) (! (= (|Set#IsMember| call4formal@s@0 bx@@9)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@0) _module.AllocationIterator.__new)) bx@@9) (and (and (or (not (= ($Unbox refType bx@@9) null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType bx@@9)) alloc))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType bx@@9)) alloc))))))
 :qid |DafnyPreludebpl.646:19|
 :skolemid |4318|
 :pattern ( (|Set#IsMember| call4formal@s@0 bx@@9))
))) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@0) _module.AllocationIterator.__new ($Box SetType call4formal@s@0)))) ($IsGoodHeap $Heap@4)))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType (_module.AllocationIterator.x this@@0))))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType (_module.AllocationIterator.x this@@0)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType null)))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType null))) (and (=> (= (ControlFlow 0 18) (- 0 21)) true) (and (=> (= (ControlFlow 0 18) (- 0 20)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType $nw@0))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new)) ($Box refType $nw@0)) (=> (= |saveNew#0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.AllocationIterator.__new))) (=> (and (and ($Is refType |call1formal@u#0| Tclass._module.Cell?) ($IsAlloc refType |call1formal@u#0| Tclass._module.Cell? $Heap)) (and ($Is refType |call2formal@v#0| Tclass._module.Cell?) ($IsAlloc refType |call2formal@v#0| Tclass._module.Cell? $Heap))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and ($Is refType |call1formal@u#0@0| Tclass._module.Cell?) ($IsAlloc refType |call1formal@u#0@0| Tclass._module.Cell? $Heap@5))) (and (and ($Is refType |call2formal@v#0@0| Tclass._module.Cell?) ($IsAlloc refType |call2formal@v#0@0| Tclass._module.Cell? $Heap@5)) (or (not (= |call1formal@u#0@0| null)) (not true)))) (and (and (and (or (not (= |call1formal@u#0@0| null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |call1formal@u#0@0|) alloc))))) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19)))
 :qid |Iteratorsdfy.185:8|
 :skolemid |4730|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19))
))) (and (and ($HeapSucc $Heap@4 $Heap@5) (forall ((bx@@10 T@U) ) (! (= (|Set#IsMember| call4formal@s@0@@0 bx@@10)  (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.AllocationIterator.__new)) bx@@10) (and (and (or (not (= ($Unbox refType bx@@10) null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType bx@@10)) alloc))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 ($Unbox refType bx@@10)) alloc))))))
 :qid |DafnyPreludebpl.646:19|
 :skolemid |4318|
 :pattern ( (|Set#IsMember| call4formal@s@0@@0 bx@@10))
))) (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.AllocationIterator.__new ($Box SetType call4formal@s@0@@0)))) ($IsGoodHeap $Heap@6))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) ($Box refType |call1formal@u#0@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.AllocationIterator.__new)) ($Box refType |call1formal@u#0@0|)) (and (and (and (=> (= (ControlFlow 0 18) 17) anon10_Then_correct) (=> (= (ControlFlow 0 18) 9) anon13_Then_correct)) (=> (= (ControlFlow 0 18) 2) anon15_Then_correct)) (=> (= (ControlFlow 0 18) 4) anon15_Else_correct))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.AllocationIterator) ($IsAlloc refType this@@0 Tclass._module.AllocationIterator $Heap)))) (and (and ($Is refType |x#0| Tclass._module.Cell?) ($IsAlloc refType |x#0| Tclass._module.Cell? $Heap)) (and true true))) (and (and (and ($IsGoodHeap $_OldIterHeap) ($HeapSucc $_OldIterHeap $Heap)) true) (and (=> |defass#h#0| (and ($Is refType |h#0| Tclass._module.Cell) ($IsAlloc refType |h#0| Tclass._module.Cell $Heap))) true))) (and (and (and (and ($Is SetType |saveNew#0| (TSet Tclass._System.object?)) ($IsAlloc SetType |saveNew#0| (TSet Tclass._System.object?) $Heap)) true) (and (and ($Is refType |u#0| Tclass._module.Cell?) ($IsAlloc refType |u#0| Tclass._module.Cell? $Heap)) true)) (and (and (and ($Is refType |v#0| Tclass._module.Cell?) ($IsAlloc refType |v#0| Tclass._module.Cell? $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 27) 18))))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
