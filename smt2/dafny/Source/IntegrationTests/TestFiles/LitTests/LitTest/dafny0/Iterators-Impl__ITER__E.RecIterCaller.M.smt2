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
(declare-fun class.ITER__E.Cell? () T@U)
(declare-fun Tagclass.ITER__E.Cell? () T@U)
(declare-fun Tagclass.ITER__E.Cell () T@U)
(declare-fun class.ITER__E.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__E.RecursiveIterator? () T@U)
(declare-fun Tagclass.ITER__E.RecIterCaller? () T@U)
(declare-fun Tagclass.ITER__E.RecursiveIterator () T@U)
(declare-fun Tagclass.ITER__E.RecIterCaller () T@U)
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
(declare-fun ITER__E.RecursiveIterator.good (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ITER__E.RecursiveIterator? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun ITER__E.RecursiveIterator.__decreases0 (T@U) Int)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.ITER__E.Cell? () T@U)
(declare-fun Tclass.ITER__E.RecIterCaller? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.ITER__E.Cell () T@U)
(declare-fun Tclass.ITER__E.RecursiveIterator () T@U)
(declare-fun Tclass.ITER__E.RecIterCaller () T@U)
(declare-fun ITER__E.RecursiveIterator.__new () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun ITER__E.Cell.data () T@U)
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
(declare-fun ITER__E.RecursiveIterator.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun ITER__E.RecursiveIterator.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun ITER__E.RecursiveIterator.cell (T@U) T@U)
(declare-fun ITER__E.RecursiveIterator.n (T@U) Int)
(declare-fun ITER__E.RecursiveIterator.r (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun ITER__E.RecursiveIterator.__modifies (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object class.ITER__E.Cell? Tagclass.ITER__E.Cell? Tagclass.ITER__E.Cell class.ITER__E.RecursiveIterator? Tagclass.ITER__E.RecursiveIterator? Tagclass.ITER__E.RecIterCaller? Tagclass.ITER__E.RecursiveIterator Tagclass.ITER__E.RecIterCaller tytagFamily$nat tytagFamily$object tytagFamily$Cell tytagFamily$RecursiveIterator tytagFamily$RecIterCaller field$data field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2235|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2236|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |2451|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.ITER__E.RecursiveIterator?)) ($Is boolType (bool_2_U (ITER__E.RecursiveIterator.good $o)) TBool))
 :qid |unknown.0:0|
 :skolemid |2603|
 :pattern ( (ITER__E.RecursiveIterator.good $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.ITER__E.RecursiveIterator?)) ($Is intType (int_2_U (ITER__E.RecursiveIterator.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |2611|
 :pattern ( (ITER__E.RecursiveIterator.__decreases0 $o@@0))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2234|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2231|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.ITER__E.Cell?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.ITER__E.Cell?)))
 :qid |unknown.0:0|
 :skolemid |2586|
 :pattern ( ($Is refType $o@@1 Tclass.ITER__E.Cell?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.ITER__E.RecursiveIterator?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.ITER__E.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |2594|
 :pattern ( ($Is refType $o@@2 Tclass.ITER__E.RecursiveIterator?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.ITER__E.RecIterCaller?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.ITER__E.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |2630|
 :pattern ( ($Is refType $o@@3 Tclass.ITER__E.RecIterCaller?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2457|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ITER__E.Cell $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ITER__E.Cell? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2592|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__E.Cell $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ITER__E.Cell? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.ITER__E.RecursiveIterator $h@@2) ($IsAlloc refType |c#0@@1| Tclass.ITER__E.RecursiveIterator? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2624|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__E.RecursiveIterator $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.ITER__E.RecursiveIterator? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.ITER__E.RecIterCaller $h@@3) ($IsAlloc refType |c#0@@2| Tclass.ITER__E.RecIterCaller? $h@@3))
 :qid |unknown.0:0|
 :skolemid |2639|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ITER__E.RecIterCaller $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.ITER__E.RecIterCaller? $h@@3))
)))
(assert (= (FDim ITER__E.RecursiveIterator.__new) 0))
(assert (= (FieldOfDecl class.ITER__E.RecursiveIterator? field$_new) ITER__E.RecursiveIterator.__new))
(assert ($IsGhostField ITER__E.RecursiveIterator.__new))
(assert (= (FDim ITER__E.Cell.data) 0))
(assert (= (FieldOfDecl class.ITER__E.Cell? field$data) ITER__E.Cell.data))
(assert  (not ($IsGhostField ITER__E.Cell.data)))
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
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2454|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.ITER__E.Cell? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2587|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.ITER__E.Cell? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.ITER__E.RecursiveIterator? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2595|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.ITER__E.RecursiveIterator? $h@@6))
)))
(assert (forall (($o@@7 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.ITER__E.RecIterCaller? $h@@7)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2631|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.ITER__E.RecIterCaller? $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2224|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2225|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2123|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2121|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2132|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2152|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2153|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |2450|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ITER__E.RecursiveIterator))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@8 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (or (or (= $o@@8 this) (|Set#IsMember| (ITER__E.RecursiveIterator.__reads this) ($Box refType $o@@8))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) ITER__E.RecursiveIterator.__new)) ($Box refType $o@@8)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@8) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@8) $f)))
 :qid |unknown.0:0|
 :skolemid |2616|
)) (= (ITER__E.RecursiveIterator.Valid $h0 this) (ITER__E.RecursiveIterator.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2617|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ITER__E.RecursiveIterator.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2145|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2217|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2216|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.ITER__E.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) ITER__E.Cell.data)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2588|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) ITER__E.Cell.data)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |2449|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2452|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2455|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.ITER__E.Cell?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.ITER__E.Cell?)))
 :qid |unknown.0:0|
 :skolemid |2585|
 :pattern ( ($IsBox bx@@4 Tclass.ITER__E.Cell?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.ITER__E.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.ITER__E.Cell)))
 :qid |unknown.0:0|
 :skolemid |2590|
 :pattern ( ($IsBox bx@@5 Tclass.ITER__E.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.ITER__E.RecursiveIterator?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.ITER__E.RecursiveIterator?)))
 :qid |unknown.0:0|
 :skolemid |2593|
 :pattern ( ($IsBox bx@@6 Tclass.ITER__E.RecursiveIterator?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.ITER__E.RecIterCaller?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.ITER__E.RecIterCaller?)))
 :qid |unknown.0:0|
 :skolemid |2600|
 :pattern ( ($IsBox bx@@7 Tclass.ITER__E.RecIterCaller?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.ITER__E.RecursiveIterator) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.ITER__E.RecursiveIterator)))
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( ($IsBox bx@@8 Tclass.ITER__E.RecursiveIterator))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.ITER__E.RecIterCaller) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.ITER__E.RecIterCaller)))
 :qid |unknown.0:0|
 :skolemid |2632|
 :pattern ( ($IsBox bx@@9 Tclass.ITER__E.RecIterCaller))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2456|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.ITER__E.Cell)  (and ($Is refType |c#0@@4| Tclass.ITER__E.Cell?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2591|
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__E.Cell))
 :pattern ( ($Is refType |c#0@@4| Tclass.ITER__E.Cell?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.ITER__E.RecursiveIterator)  (and ($Is refType |c#0@@5| Tclass.ITER__E.RecursiveIterator?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2623|
 :pattern ( ($Is refType |c#0@@5| Tclass.ITER__E.RecursiveIterator))
 :pattern ( ($Is refType |c#0@@5| Tclass.ITER__E.RecursiveIterator?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.ITER__E.RecIterCaller)  (and ($Is refType |c#0@@6| Tclass.ITER__E.RecIterCaller?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2638|
 :pattern ( ($Is refType |c#0@@6| Tclass.ITER__E.RecIterCaller))
 :pattern ( ($Is refType |c#0@@6| Tclass.ITER__E.RecIterCaller?))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.ITER__E.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) ITER__E.Cell.data)) Tclass._System.nat $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2589|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) ITER__E.Cell.data)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.ITER__E.RecursiveIterator?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) ITER__E.RecursiveIterator.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2609|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) ITER__E.RecursiveIterator.__new)))
)))
(assert (forall (($h@@11 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) ITER__E.RecursiveIterator.__new)) (TSet Tclass._System.object?) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2610|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) ITER__E.RecursiveIterator.__new)))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2256|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2223|
 :pattern ( ($HeapSucc a@@3 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2213|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2133|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TBool) (and (= ($Box boolType ($Unbox boolType bx@@11)) bx@@11) ($Is boolType ($Unbox boolType bx@@11) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2135|
 :pattern ( ($IsBox bx@@11 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2144|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2173|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2174|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2453|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2107|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2108|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2131|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))) ($IsAlloc boolType (bool_2_U (ITER__E.RecursiveIterator.good $o@@14)) TBool $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2604|
 :pattern ( (ITER__E.RecursiveIterator.good $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))
)))
(assert (forall (($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (ITER__E.RecursiveIterator.__decreases0 $o@@15)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2612|
 :pattern ( (ITER__E.RecursiveIterator.__decreases0 $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) alloc)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@16 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@0))  (=> (and (or (not (= $o@@16 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@16) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5362|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@0))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.ITER__E.RecursiveIterator?)) ($Is refType (ITER__E.RecursiveIterator.cell $o@@17) Tclass.ITER__E.Cell?))
 :qid |unknown.0:0|
 :skolemid |2596|
 :pattern ( (ITER__E.RecursiveIterator.cell $o@@17))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.ITER__E.RecursiveIterator?)) ($Is intType (int_2_U (ITER__E.RecursiveIterator.n $o@@18)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |2598|
 :pattern ( (ITER__E.RecursiveIterator.n $o@@18))
)))
(assert (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.ITER__E.RecursiveIterator?)) ($Is refType (ITER__E.RecursiveIterator.r $o@@19) Tclass.ITER__E.RecIterCaller?))
 :qid |unknown.0:0|
 :skolemid |2601|
 :pattern ( (ITER__E.RecursiveIterator.r $o@@19))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2138|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2222|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9)))
)))
(assert (forall (($h@@14 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) alloc)))) ($IsAlloc refType (ITER__E.RecursiveIterator.cell $o@@20) Tclass.ITER__E.Cell? $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2597|
 :pattern ( (ITER__E.RecursiveIterator.cell $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) alloc)))
)))
(assert (forall (($h@@15 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))) ($IsAlloc intType (int_2_U (ITER__E.RecursiveIterator.n $o@@21)) Tclass._System.nat $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2599|
 :pattern ( (ITER__E.RecursiveIterator.n $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))
)))
(assert (forall (($h@@16 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))) ($IsAlloc refType (ITER__E.RecursiveIterator.r $o@@22) Tclass.ITER__E.RecIterCaller? $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2602|
 :pattern ( (ITER__E.RecursiveIterator.r $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.ITER__E.Cell?) Tagclass.ITER__E.Cell?))
(assert (= (TagFamily Tclass.ITER__E.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass.ITER__E.Cell) Tagclass.ITER__E.Cell))
(assert (= (TagFamily Tclass.ITER__E.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.ITER__E.RecursiveIterator?) Tagclass.ITER__E.RecursiveIterator?))
(assert (= (TagFamily Tclass.ITER__E.RecursiveIterator?) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__E.RecIterCaller?) Tagclass.ITER__E.RecIterCaller?))
(assert (= (TagFamily Tclass.ITER__E.RecIterCaller?) tytagFamily$RecIterCaller))
(assert (= (Tag Tclass.ITER__E.RecursiveIterator) Tagclass.ITER__E.RecursiveIterator))
(assert (= (TagFamily Tclass.ITER__E.RecursiveIterator) tytagFamily$RecursiveIterator))
(assert (= (Tag Tclass.ITER__E.RecIterCaller) Tagclass.ITER__E.RecIterCaller))
(assert (= (TagFamily Tclass.ITER__E.RecIterCaller) tytagFamily$RecIterCaller))
(assert (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.ITER__E.RecursiveIterator?)) ($Is SetType (ITER__E.RecursiveIterator.__reads $o@@23) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2605|
 :pattern ( (ITER__E.RecursiveIterator.__reads $o@@23))
)))
(assert (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.ITER__E.RecursiveIterator?)) ($Is SetType (ITER__E.RecursiveIterator.__modifies $o@@24) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2607|
 :pattern ( (ITER__E.RecursiveIterator.__modifies $o@@24))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@4 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@4 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2254|
 :pattern ( (|Set#IsMember| a@@4 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2255|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall (($h@@17 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@25) alloc)))) ($IsAlloc SetType (ITER__E.RecursiveIterator.__reads $o@@25) (TSet Tclass._System.object?) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2606|
 :pattern ( (ITER__E.RecursiveIterator.__reads $o@@25) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@25) alloc)))
)))
(assert (forall (($h@@18 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass.ITER__E.RecursiveIterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@26) alloc)))) ($IsAlloc SetType (ITER__E.RecursiveIterator.__modifies $o@@26) (TSet Tclass._System.object?) $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2608|
 :pattern ( (ITER__E.RecursiveIterator.__modifies $o@@26) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@26) alloc)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2124|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2122|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2167|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2169|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@6))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2146|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2148|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call5formal@this () T@U)
(declare-fun this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call5formal@this@0 () T@U)
(declare-fun |n#0| () Int)
(declare-fun |good#0@0| () Bool)
(declare-fun |ITER__E.RecursiveIterator.Valid#canCall| (T@U T@U) Bool)
(declare-fun |defass#cell#0| () Bool)
(declare-fun |cell#0| () T@U)
(declare-fun |defass#iter#0| () Bool)
(declare-fun |iter#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ITER__E.RecIterCaller.M)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.ITER__E.Cell?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (=> (and (or (not (= call5formal@this null)) (not true)) (and ($Is refType call5formal@this Tclass.ITER__E.RecursiveIterator) ($IsAlloc refType call5formal@this Tclass.ITER__E.RecursiveIterator $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= this@@0 null)) (not true))) (=> (or (not (= this@@0 null)) (not true)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (or (not (= call5formal@this@0 null)) (not true)) (and ($Is refType call5formal@this@0 Tclass.ITER__E.RecursiveIterator) ($IsAlloc refType call5formal@this@0 Tclass.ITER__E.RecursiveIterator $Heap@1))) (= (ITER__E.RecursiveIterator.cell call5formal@this@0) $nw@0)) (and (and (= (ITER__E.RecursiveIterator.n call5formal@this@0) |n#0|) (= (ITER__E.RecursiveIterator.r call5formal@this@0) this@@0)) (and (= (ITER__E.RecursiveIterator.good call5formal@this@0) |good#0@0|) (|ITER__E.RecursiveIterator.Valid#canCall| $Heap@1 call5formal@this@0)))) (and (and (and (ITER__E.RecursiveIterator.Valid $Heap@1 call5formal@this@0) (|Set#Equal| (ITER__E.RecursiveIterator.__reads call5formal@this@0) |Set#Empty|)) (and (|Set#Equal| (ITER__E.RecursiveIterator.__modifies call5formal@this@0) (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call5formal@this@0) ITER__E.RecursiveIterator.__new)) |Set#Empty|))) (and (and (= (ITER__E.RecursiveIterator.__decreases0 call5formal@this@0) (ite (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) ITER__E.Cell.data))) 2) |n#0| (- (+ |n#0| |n#0|) |n#0|))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call5formal@this@0) alloc))))) (and (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@27)))
 :qid |Iteratorsdfy.334:12|
 :skolemid |2615|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27))
)) ($HeapSucc $Heap@0 $Heap@1))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call5formal@this@0 null)) (not true))) (=> (or (not (= call5formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (forall (($o@@28 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@28) alloc)))) (or (or (= $o@@28 call5formal@this@0) (|Set#IsMember| (ITER__E.RecursiveIterator.__modifies call5formal@this@0) ($Box refType $o@@28))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call5formal@this@0) ITER__E.RecursiveIterator.__new)) ($Box refType $o@@28)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@28 $f@@1)))
 :qid |Iteratorsdfy.353:32|
 :skolemid |2637|
))) (=> (forall (($o@@29 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@29) alloc)))) (or (or (= $o@@29 call5formal@this@0) (|Set#IsMember| (ITER__E.RecursiveIterator.__modifies call5formal@this@0) ($Box refType $o@@29))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call5formal@this@0) ITER__E.RecursiveIterator.__new)) ($Box refType $o@@29)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@2)))
 :qid |Iteratorsdfy.353:32|
 :skolemid |2637|
)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (<= 0 |n#0|) (= (ITER__E.RecursiveIterator.__decreases0 call5formal@this@0) |n#0|))) (=> (or (<= 0 |n#0|) (= (ITER__E.RecursiveIterator.__decreases0 call5formal@this@0) |n#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< (ITER__E.RecursiveIterator.__decreases0 call5formal@this@0) |n#0|)) (=> (< (ITER__E.RecursiveIterator.__decreases0 call5formal@this@0) |n#0|) (=> (= (ControlFlow 0 2) (- 0 1)) (ITER__E.RecursiveIterator.Valid $Heap@1 call5formal@this@0))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.ITER__E.RecIterCaller) ($IsAlloc refType this@@0 Tclass.ITER__E.RecIterCaller $Heap))) (<= (LitInt 0) |n#0|)) (and (=> |defass#cell#0| (and ($Is refType |cell#0| Tclass.ITER__E.Cell) ($IsAlloc refType |cell#0| Tclass.ITER__E.Cell $Heap))) true)) (and (and (=> |defass#iter#0| (and ($Is refType |iter#0| Tclass.ITER__E.RecursiveIterator) ($IsAlloc refType |iter#0| Tclass.ITER__E.RecursiveIterator $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 11) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
