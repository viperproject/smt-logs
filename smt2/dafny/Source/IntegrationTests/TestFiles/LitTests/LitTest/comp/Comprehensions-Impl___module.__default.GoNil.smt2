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
(declare-fun Tagclass._module.CellA () T@U)
(declare-fun Tagclass._module.CellB () T@U)
(declare-fun Tagclass._module.CellA? () T@U)
(declare-fun Tagclass._module.CellB? () T@U)
(declare-fun Tagclass._module.ICell? () T@U)
(declare-fun Tagclass._module.ICell () T@U)
(declare-fun tytagFamily$CellA () T@U)
(declare-fun tytagFamily$CellB () T@U)
(declare-fun tytagFamily$ICell () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.ICell (T@U) Bool)
(declare-fun Tclass._module.CellA? () T@U)
(declare-fun Tclass._module.CellB? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.ICell? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.ICell () T@U)
(declare-fun Tclass._module.CellA () T@U)
(declare-fun Tclass._module.CellB () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._module.CellA Tagclass._module.CellB Tagclass._module.CellA? Tagclass._module.CellB? Tagclass._module.ICell? Tagclass._module.ICell tytagFamily$CellA tytagFamily$CellB tytagFamily$ICell)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2461|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2462|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2466|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2467|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2460|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2476|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (implements$_module.ICell Tclass._module.CellA?))
(assert (implements$_module.ICell Tclass._module.CellB?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2457|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |2469|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.CellA?)  (or (= $o null) (= (dtype $o) Tclass._module.CellA?)))
 :qid |unknown.0:0|
 :skolemid |3221|
 :pattern ( ($Is refType $o Tclass._module.CellA?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.CellB?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.CellB?)))
 :qid |unknown.0:0|
 :skolemid |3225|
 :pattern ( ($Is refType $o@@0 Tclass._module.CellB?))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2470|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |2472|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2475|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.CellA? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.ICell? $h))
 :qid |unknown.0:0|
 :skolemid |3314|
 :pattern ( ($IsAllocBox bx Tclass._module.CellA? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.CellB? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.ICell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |3318|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.CellB? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.ICell $h@@1) ($IsAlloc refType |c#0| Tclass._module.ICell? $h@@1))
 :qid |unknown.0:0|
 :skolemid |3220|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.ICell $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.ICell? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.CellA $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.CellA? $h@@2))
 :qid |unknown.0:0|
 :skolemid |3224|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CellA $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.CellA? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.CellB $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.CellB? $h@@3))
 :qid |unknown.0:0|
 :skolemid |3228|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.CellB $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.CellB? $h@@3))
)))
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
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.ICell? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3216|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.ICell? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.CellA? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3222|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.CellA? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.CellB? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3226|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.CellB? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2450|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2451|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2358|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@4)) (not (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2483|
 :pattern ( (|Set#IsMember| a@@9 o@@4))
 :pattern ( (|Set#IsMember| b@@6 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2484|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2378|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2379|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2371|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2443|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2442|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.CellA) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.CellA)))
 :qid |unknown.0:0|
 :skolemid |3158|
 :pattern ( ($IsBox bx@@3 Tclass._module.CellA))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.CellB) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.CellB)))
 :qid |unknown.0:0|
 :skolemid |3159|
 :pattern ( ($IsBox bx@@4 Tclass._module.CellB))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.CellA?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.CellA?)))
 :qid |unknown.0:0|
 :skolemid |3160|
 :pattern ( ($IsBox bx@@5 Tclass._module.CellA?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.CellB?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.CellB?)))
 :qid |unknown.0:0|
 :skolemid |3161|
 :pattern ( ($IsBox bx@@6 Tclass._module.CellB?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.ICell?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.ICell?)))
 :qid |unknown.0:0|
 :skolemid |3162|
 :pattern ( ($IsBox bx@@7 Tclass._module.ICell?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ICell) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ICell)))
 :qid |unknown.0:0|
 :skolemid |3185|
 :pattern ( ($IsBox bx@@8 Tclass._module.ICell))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.ICell)  (and ($Is refType |c#0@@2| Tclass._module.ICell?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3219|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ICell))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ICell?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.CellA)  (and ($Is refType |c#0@@3| Tclass._module.CellA?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3223|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.CellA))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.CellA?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.CellB)  (and ($Is refType |c#0@@4| Tclass._module.CellB?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3227|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.CellB))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.CellB?))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5)  (or (|Set#IsMember| a@@10 o@@5) (|Set#IsMember| b@@7 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2465|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@5))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2468|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.CellA? $heap) ($IsAlloc refType $o@@4 Tclass._module.ICell? $heap))
 :qid |unknown.0:0|
 :skolemid |3316|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.CellA? $heap))
)))
(assert (forall (($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass._module.CellB? $heap@@0) ($IsAlloc refType $o@@5 Tclass._module.ICell? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |3320|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.CellB? $heap@@0))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2449|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2370|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2399|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2400|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2333|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2334|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2357|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2471|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)) (|Set#Intersection| a@@14 b@@11))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |2473|
 :pattern ( (|Set#Intersection| a@@14 (|Set#Intersection| a@@14 b@@11)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3336|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2364|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.CellA?) ($Is refType $o@@7 Tclass._module.ICell?))
 :qid |unknown.0:0|
 :skolemid |3315|
 :pattern ( ($Is refType $o@@7 Tclass._module.CellA?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.CellA?) ($IsBox bx@@11 Tclass._module.ICell?))
 :qid |unknown.0:0|
 :skolemid |3313|
 :pattern ( ($IsBox bx@@11 Tclass._module.CellA?))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.CellB?) ($Is refType $o@@8 Tclass._module.ICell?))
 :qid |unknown.0:0|
 :skolemid |3319|
 :pattern ( ($Is refType $o@@8 Tclass._module.CellB?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.CellB?) ($IsBox bx@@12 Tclass._module.ICell?))
 :qid |unknown.0:0|
 :skolemid |3317|
 :pattern ( ($IsBox bx@@12 Tclass._module.CellB?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2448|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@7)))
)))
(assert (= (Tag Tclass._module.CellA) Tagclass._module.CellA))
(assert (= (TagFamily Tclass._module.CellA) tytagFamily$CellA))
(assert (= (Tag Tclass._module.CellB) Tagclass._module.CellB))
(assert (= (TagFamily Tclass._module.CellB) tytagFamily$CellB))
(assert (= (Tag Tclass._module.CellA?) Tagclass._module.CellA?))
(assert (= (TagFamily Tclass._module.CellA?) tytagFamily$CellA))
(assert (= (Tag Tclass._module.CellB?) Tagclass._module.CellB?))
(assert (= (TagFamily Tclass._module.CellB?) tytagFamily$CellB))
(assert (= (Tag Tclass._module.ICell?) Tagclass._module.ICell?))
(assert (= (TagFamily Tclass._module.ICell?) tytagFamily$ICell))
(assert (= (Tag Tclass._module.ICell) Tagclass._module.ICell))
(assert (= (TagFamily Tclass._module.ICell) tytagFamily$ICell))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.ICell?)  (or (= $o@@9 null) (implements$_module.ICell (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |3215|
 :pattern ( ($Is refType $o@@9 Tclass._module.ICell?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0| () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun |cc#0| () T@U)
(declare-fun |dd#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.GoNil)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.CellA?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.CellB?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (and (= |aa#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0)) ($Box refType null))) (= (ControlFlow 0 2) (- 0 1))) true)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#a#0| (and ($Is refType |a#0| Tclass._module.CellA) ($IsAlloc refType |a#0| Tclass._module.CellA $Heap))) true) (and (=> |defass#b#0| (and ($Is refType |b#0| Tclass._module.CellB) ($IsAlloc refType |b#0| Tclass._module.CellB $Heap))) true)) (and (and ($Is SetType |aa#0| (TSet Tclass._module.CellA?)) ($IsAlloc SetType |aa#0| (TSet Tclass._module.CellA?) $Heap)) true)) (=> (and (and (and (and ($Is SetType |bb#0| (TSet Tclass._module.CellB?)) ($IsAlloc SetType |bb#0| (TSet Tclass._module.CellB?) $Heap)) true) (and (and ($Is SetType |cc#0| (TSet Tclass._module.ICell?)) ($IsAlloc SetType |cc#0| (TSet Tclass._module.ICell?) $Heap)) true)) (and (and (and ($Is SetType |dd#0| (TSet Tclass._module.ICell?)) ($IsAlloc SetType |dd#0| (TSet Tclass._module.ICell?) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
