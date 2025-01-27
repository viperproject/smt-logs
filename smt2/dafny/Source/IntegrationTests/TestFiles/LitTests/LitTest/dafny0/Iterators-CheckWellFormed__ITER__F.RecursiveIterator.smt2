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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.ITER__F.Cell? () T@U)
(declare-fun Tagclass.ITER__F.Cell? () T@U)
(declare-fun Tagclass.ITER__F.Cell () T@U)
(declare-fun class.ITER__F.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__F.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__F.RecIterCaller? () T@U)
(declare-fun Tagclass.ITER__F.RecursiveIterator () T@U)
(declare-fun Tagclass.ITER__F.RecIterCaller () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$RecursiveIterator () T@U)
(declare-fun tytagFamily$RecIterCaller () T@U)
(declare-fun field$data () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun ITER__F.RecursiveIterator.good (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ITER__F.RecursiveIterator? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun ITER__F.RecursiveIterator.__decreases0 (T@U) Int)
(declare-fun ITER__F.RecursiveIterator.__decreases1 (T@U) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.ITER__F.Cell? () T@U)
(declare-fun Tclass.ITER__F.RecIterCaller? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ITER__F.Cell () T@U)
(declare-fun Tclass.ITER__F.RecursiveIterator () T@U)
(declare-fun Tclass.ITER__F.RecIterCaller () T@U)
(declare-fun ITER__F.RecursiveIterator.__new () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun ITER__F.Cell.data () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun ITER__F.RecursiveIterator.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun ITER__F.RecursiveIterator.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun ITER__F.RecursiveIterator.cell (T@U) T@U)
(declare-fun ITER__F.RecursiveIterator.n (T@U) Int)
(declare-fun ITER__F.RecursiveIterator.r (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun ITER__F.RecursiveIterator.__modifies (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object class.ITER__F.Cell? Tagclass.ITER__F.Cell? Tagclass.ITER__F.Cell class.ITER__F.RecursiveIterator? Tagclass.ITER__F.RecursiveIterator? Tagclass.ITER__F.RecIterCaller? Tagclass.ITER__F.RecursiveIterator Tagclass.ITER__F.RecIterCaller tytagFamily$nat tytagFamily$object tytagFamily$Cell tytagFamily$RecursiveIterator tytagFamily$RecIterCaller field$data field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2769|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2770|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2985|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.ITER__F.RecursiveIterator?)) ($Is boolType (bool_2_U (ITER__F.RecursiveIterator.good $o)) TBool))
 :qid |unknown.0:0|
 :skolemid |3137|
 :pattern ( (ITER__F.RecursiveIterator.good $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.ITER__F.RecursiveIterator?)) ($Is intType (int_2_U (ITER__F.RecursiveIterator.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |3145|
 :pattern ( (ITER__F.RecursiveIterator.__decreases0 $o@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.ITER__F.RecursiveIterator?)) ($Is intType (int_2_U (ITER__F.RecursiveIterator.__decreases1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |3147|
 :pattern ( (ITER__F.RecursiveIterator.__decreases1 $o@@1))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2768|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2765|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.ITER__F.Cell?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.ITER__F.Cell?)))
 :qid |unknown.0:0|
 :skolemid |3120|
 :pattern ( ($Is refType $o@@2 Tclass.ITER__F.Cell?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.ITER__F.RecursiveIterator?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.ITER__F.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |3128|
 :pattern ( ($Is refType $o@@3 Tclass.ITER__F.RecursiveIterator?))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass.ITER__F.RecIterCaller?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass.ITER__F.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |3166|
 :pattern ( ($Is refType $o@@4 Tclass.ITER__F.RecIterCaller?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2991|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ITER__F.Cell $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ITER__F.Cell? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3126|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__F.Cell $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__F.Cell? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ITER__F.RecursiveIterator $h@@2) ($IsAlloc refType |c#0@@1| Tclass.ITER__F.RecursiveIterator? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3160|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__F.RecursiveIterator $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__F.RecursiveIterator? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.ITER__F.RecIterCaller $h@@3) ($IsAlloc refType |c#0@@2| Tclass.ITER__F.RecIterCaller? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3175|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ITER__F.RecIterCaller $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ITER__F.RecIterCaller? $h@@3))
)))
(assert (= (FDim ITER__F.RecursiveIterator.__new) 0))
(assert (= (FieldOfDecl class.ITER__F.RecursiveIterator? field$_new) ITER__F.RecursiveIterator.__new))
(assert ($IsGhostField ITER__F.RecursiveIterator.__new))
(assert (= (FDim ITER__F.Cell.data) 0))
(assert (= (FieldOfDecl class.ITER__F.Cell? field$data) ITER__F.Cell.data))
(assert  (not ($IsGhostField ITER__F.Cell.data)))
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
(assert (forall (($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2988|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.ITER__F.Cell? $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3121|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ITER__F.Cell? $h@@5))
)))
(assert (forall (($o@@7 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.ITER__F.RecursiveIterator? $h@@6)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3129|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.ITER__F.RecursiveIterator? $h@@6))
)))
(assert (forall (($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.ITER__F.RecIterCaller? $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3167|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.ITER__F.RecIterCaller? $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2758|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2759|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2657|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2655|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2666|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2686|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2687|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2984|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ITER__F.RecursiveIterator))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@9 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (or (or (= $o@@9 this) (|Set#IsMember| (ITER__F.RecursiveIterator.__reads this) ($Box refType $o@@9))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) ITER__F.RecursiveIterator.__new)) ($Box refType $o@@9)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@9) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@9) $f)))
 :qid |unknown.0:0|
 :skolemid |3152|
)) (= (ITER__F.RecursiveIterator.Valid $h0 this) (ITER__F.RecursiveIterator.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3153|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ITER__F.RecursiveIterator.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2679|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2751|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2750|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.ITER__F.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) ITER__F.Cell.data)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3122|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) ITER__F.Cell.data)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2983|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2986|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2989|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.ITER__F.Cell?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.ITER__F.Cell?)))
 :qid |unknown.0:0|
 :skolemid |3119|
 :pattern ( ($IsBox bx@@4 Tclass.ITER__F.Cell?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.ITER__F.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.ITER__F.Cell)))
 :qid |unknown.0:0|
 :skolemid |3124|
 :pattern ( ($IsBox bx@@5 Tclass.ITER__F.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.ITER__F.RecursiveIterator?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.ITER__F.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |3127|
 :pattern ( ($IsBox bx@@6 Tclass.ITER__F.RecursiveIterator?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.ITER__F.RecIterCaller?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.ITER__F.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |3134|
 :pattern ( ($IsBox bx@@7 Tclass.ITER__F.RecIterCaller?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.ITER__F.RecursiveIterator) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.ITER__F.RecursiveIterator)))
 :qid |unknown.0:0|
 :skolemid |3150|
 :pattern ( ($IsBox bx@@8 Tclass.ITER__F.RecursiveIterator))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.ITER__F.RecIterCaller) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.ITER__F.RecIterCaller)))
 :qid |unknown.0:0|
 :skolemid |3168|
 :pattern ( ($IsBox bx@@9 Tclass.ITER__F.RecIterCaller))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2990|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.ITER__F.Cell)  (and ($Is refType |c#0@@4| Tclass.ITER__F.Cell?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3125|
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__F.Cell))
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__F.Cell?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.ITER__F.RecursiveIterator)  (and ($Is refType |c#0@@5| Tclass.ITER__F.RecursiveIterator?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3159|
 :pattern ( ($Is refType |c#0@@5| Tclass.ITER__F.RecursiveIterator))
 :pattern ( ($Is refType |c#0@@5| Tclass.ITER__F.RecursiveIterator?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.ITER__F.RecIterCaller)  (and ($Is refType |c#0@@6| Tclass.ITER__F.RecIterCaller?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3174|
 :pattern ( ($Is refType |c#0@@6| Tclass.ITER__F.RecIterCaller))
 :pattern ( ($Is refType |c#0@@6| Tclass.ITER__F.RecIterCaller?))
)))
(assert (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.ITER__F.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) ITER__F.Cell.data)) Tclass._System.nat $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3123|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) ITER__F.Cell.data)))
)))
(assert (forall (($h@@10 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.ITER__F.RecursiveIterator?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) ITER__F.RecursiveIterator.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3143|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) ITER__F.RecursiveIterator.__new)))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) ITER__F.RecursiveIterator.__new)) (TSet Tclass._System.object?) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3144|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) ITER__F.RecursiveIterator.__new)))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2790|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2757|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2747|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2667|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TBool) (and (= ($Box boolType ($Unbox boolType bx@@11)) bx@@11) ($Is boolType ($Unbox boolType bx@@11) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2669|
 :pattern ( ($IsBox bx@@11 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2678|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2707|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2708|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@14 T@U) ) (! ($Is refType $o@@14 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2987|
 :pattern ( ($Is refType $o@@14 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2641|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2642|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2665|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))) ($IsAlloc boolType (bool_2_U (ITER__F.RecursiveIterator.good $o@@15)) TBool $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3138|
 :pattern ( (ITER__F.RecursiveIterator.good $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (ITER__F.RecursiveIterator.__decreases0 $o@@16)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3146|
 :pattern ( (ITER__F.RecursiveIterator.__decreases0 $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))
)))
(assert (forall (($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc intType (int_2_U (ITER__F.RecursiveIterator.__decreases1 $o@@17)) TInt $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3148|
 :pattern ( (ITER__F.RecursiveIterator.__decreases1 $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.ITER__F.RecursiveIterator?)) ($Is refType (ITER__F.RecursiveIterator.cell $o@@18) Tclass.ITER__F.Cell?))
 :qid |unknown.0:0|
 :skolemid |3130|
 :pattern ( (ITER__F.RecursiveIterator.cell $o@@18))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.ITER__F.RecursiveIterator?)) ($Is intType (int_2_U (ITER__F.RecursiveIterator.n $o@@19)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |3132|
 :pattern ( (ITER__F.RecursiveIterator.n $o@@19))
)))
(assert (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.ITER__F.RecursiveIterator?)) ($Is refType (ITER__F.RecursiveIterator.r $o@@20) Tclass.ITER__F.RecIterCaller?))
 :qid |unknown.0:0|
 :skolemid |3135|
 :pattern ( (ITER__F.RecursiveIterator.r $o@@20))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2672|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall (($h@@15 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))) ($IsAlloc refType (ITER__F.RecursiveIterator.cell $o@@21) Tclass.ITER__F.Cell? $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3131|
 :pattern ( (ITER__F.RecursiveIterator.cell $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))
)))
(assert (forall (($h@@16 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))) ($IsAlloc intType (int_2_U (ITER__F.RecursiveIterator.n $o@@22)) Tclass._System.nat $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3133|
 :pattern ( (ITER__F.RecursiveIterator.n $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))
)))
(assert (forall (($h@@17 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@23) alloc)))) ($IsAlloc refType (ITER__F.RecursiveIterator.r $o@@23) Tclass.ITER__F.RecIterCaller? $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3136|
 :pattern ( (ITER__F.RecursiveIterator.r $o@@23) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@23) alloc)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ITER__F.Cell?) Tagclass.ITER__F.Cell?))
(assert (= (TagFamily Tclass.ITER__F.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass.ITER__F.Cell) Tagclass.ITER__F.Cell))
(assert (= (TagFamily Tclass.ITER__F.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.ITER__F.RecursiveIterator?) Tagclass.ITER__F.RecursiveIterator?))
(assert (= (TagFamily Tclass.ITER__F.RecursiveIterator?) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__F.RecIterCaller?) Tagclass.ITER__F.RecIterCaller?))
(assert (= (TagFamily Tclass.ITER__F.RecIterCaller?) tytagFamily$RecIterCaller))
(assert (= (Tag Tclass.ITER__F.RecursiveIterator) Tagclass.ITER__F.RecursiveIterator))
(assert (= (TagFamily Tclass.ITER__F.RecursiveIterator) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__F.RecIterCaller) Tagclass.ITER__F.RecIterCaller))
(assert (= (TagFamily Tclass.ITER__F.RecIterCaller) tytagFamily$RecIterCaller))
(assert (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.ITER__F.RecursiveIterator?)) ($Is SetType (ITER__F.RecursiveIterator.__reads $o@@24) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3139|
 :pattern ( (ITER__F.RecursiveIterator.__reads $o@@24))
)))
(assert (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass.ITER__F.RecursiveIterator?)) ($Is SetType (ITER__F.RecursiveIterator.__modifies $o@@25) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3141|
 :pattern ( (ITER__F.RecursiveIterator.__modifies $o@@25))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@26 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@26 $f@@0))  (=> (and (or (not (= $o@@26 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@26) |l#2|)))) (or (= $o@@26 |l#3|) (= $o@@26 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5364|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@26 $f@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2788|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2789|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall (($h@@18 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@27) alloc)))) ($IsAlloc SetType (ITER__F.RecursiveIterator.__reads $o@@27) (TSet Tclass._System.object?) $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3140|
 :pattern ( (ITER__F.RecursiveIterator.__reads $o@@27) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@27) alloc)))
)))
(assert (forall (($h@@19 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass.ITER__F.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@28) alloc)))) ($IsAlloc SetType (ITER__F.RecursiveIterator.__modifies $o@@28) (TSet Tclass._System.object?) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3142|
 :pattern ( (ITER__F.RecursiveIterator.__modifies $o@@28) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@28) alloc)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2658|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2656|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2701|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2703|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2680|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2682|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@0 () T@U)
(declare-fun |cell#0| () T@U)
(declare-fun |n#0| () Int)
(declare-fun |r#0| () T@U)
(declare-fun |good#0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@modi@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@modi@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$ITER__F.RecursiveIterator)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon7_Then_correct true))
(let ((anon3_correct  (=> (and (and (= (ITER__F.RecursiveIterator.cell this@@0) |cell#0|) (= (ITER__F.RecursiveIterator.n this@@0) |n#0|)) (and (= (ITER__F.RecursiveIterator.r this@@0) |r#0|) (= (ITER__F.RecursiveIterator.good this@@0) |good#0|))) (=> (and (and (and (ITER__F.RecursiveIterator.Valid $Heap this@@0) (|Set#Equal| (ITER__F.RecursiveIterator.__reads this@@0) |Set#Empty|)) (and (|Set#Equal| (ITER__F.RecursiveIterator.__modifies this@@0) (|Set#UnionOne| |Set#Empty| ($Box refType |cell#0|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) ITER__F.RecursiveIterator.__new)) |Set#Empty|))) (and (and (= (ITER__F.RecursiveIterator.__decreases0 this@@0) (ite (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |cell#0|) ITER__F.Cell.data))) 2) |n#0| (- (+ |n#0| |n#0|) |n#0|))) (= (ITER__F.RecursiveIterator.__decreases1 this@@0) (LitInt 0))) (and (= call1formal@rds@0 (ITER__F.RecursiveIterator.__reads this@@0)) (= call2formal@modi@0 (ITER__F.RecursiveIterator.__modifies this@@0))))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@29 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@29) alloc)))) (=> (and (and (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@29)) (not (|Set#IsMember| call2formal@modi@0 ($Box refType $o@@29)))) (or (not (= $o@@29 this@@0)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@29) $f@@1))))
 :qid |DafnyPreludebpl.629:19|
 :skolemid |2761|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) $f@@1))
))) (and (and ($HeapSucc $Heap $Heap@0) (ITER__F.RecursiveIterator.Valid $Heap@0 this@@0)) (and (= call1formal@modi@0 (ITER__F.RecursiveIterator.__modifies this@@0)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) ITER__F.RecursiveIterator.__new)))))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@30 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) alloc)))) (or (or (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@30) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) $f@@2)) (= $o@@30 this@@0)) (|Set#IsMember| call1formal@modi@0 ($Box refType $o@@30))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@30))))
 :qid |DafnyPreludebpl.638:19|
 :skolemid |2762|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@30) $f@@2))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) ITER__F.RecursiveIterator.__new)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) ITER__F.RecursiveIterator.__new)) ($Box refType $o@@31)))) (or (not (= $o@@31 null)) (not true)))
 :qid |Iteratorsdfy.361:12|
 :skolemid |3161|
 :pattern (  (or (not (= $o@@31 null)) (not true)))
)) (forall (($o@@32 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) ITER__F.RecursiveIterator.__new)) ($Box refType $o@@32)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) ITER__F.RecursiveIterator.__new)) ($Box refType $o@@32)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@32) alloc)))))
 :qid |Iteratorsdfy.361:12|
 :skolemid |3162|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@32) alloc)))
))) (= (ControlFlow 0 2) 1)))) anon7_Then_correct)))))
(let ((anon6_Else_correct  (=> (and (<= 2 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |cell#0|) ITER__F.Cell.data)))) (= (ControlFlow 0 4) 2)) anon3_correct)))
(let ((anon6_Then_correct  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |cell#0|) ITER__F.Cell.data))) 2) (= (ControlFlow 0 3) 2)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap alloc this@@0 |cell#0|)) (=> (and (or (not (= |cell#0| null)) (not true)) (or (not (= |r#0| null)) (not true))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= |cell#0| null)) (not true))) (=> (or (not (= |cell#0| null)) (not true)) (and (=> (= (ControlFlow 0 5) 3) anon6_Then_correct) (=> (= (ControlFlow 0 5) 4) anon6_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.ITER__F.RecursiveIterator) ($IsAlloc refType this@@0 Tclass.ITER__F.RecursiveIterator $Heap)))) (=> (and (and (and ($Is refType |cell#0| Tclass.ITER__F.Cell?) ($IsAlloc refType |cell#0| Tclass.ITER__F.Cell? $Heap)) (<= (LitInt 0) |n#0|)) (and (and ($Is refType |r#0| Tclass.ITER__F.RecIterCaller?) ($IsAlloc refType |r#0| Tclass.ITER__F.RecIterCaller? $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 7) 5)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
