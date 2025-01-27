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
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet alloc)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2507|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2508|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2512|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2513|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2506|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2522|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2503|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1)  (and (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@2 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |2515|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@5 b@@2) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2516|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4) (|Set#Intersection| a@@7 b@@4))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |2518|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2)  (and (|Set#IsMember| a@@8 o@@2) (not (|Set#IsMember| b@@5 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2521|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@2))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |2504|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |2505|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@9 b@@6)) (|Set#Card| (|Set#Intersection| a@@9 b@@6))) (+ (|Set#Card| a@@9) (|Set#Card| b@@6)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |2520|
 :pattern ( (|Set#Card| (|Set#Union| a@@9 b@@6)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@9 b@@6)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@3 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@3) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@3) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@4 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2524|
 :pattern ( (|Set#IsMember| a@@10 o@@4))
 :pattern ( (|Set#IsMember| b@@7 o@@4))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2525|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@5 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@5)) (not (|Set#IsMember| b@@8 o@@5)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2529|
 :pattern ( (|Set#IsMember| a@@11 o@@5))
 :pattern ( (|Set#IsMember| b@@8 o@@5))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2530|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2424|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2425|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@6 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@6)  (or (|Set#IsMember| a@@12 o@@6) (|Set#IsMember| b@@9 o@@6)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2511|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@6))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2514|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Set#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2528|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) (c T@U) ) (!  (=> (or (not (= a@@15 c)) (not true)) (=> (and ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c)) ($HeapSucc a@@15 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@15 b@@12) ($HeapSucc b@@12 c))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@16 b@@13)) (|Set#Card| (|Set#Difference| b@@13 a@@16))) (|Set#Card| (|Set#Intersection| a@@16 b@@13))) (|Set#Card| (|Set#Union| a@@16 b@@13))) (= (|Set#Card| (|Set#Difference| a@@16 b@@13)) (- (|Set#Card| a@@16) (|Set#Card| (|Set#Intersection| a@@16 b@@13)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |2523|
 :pattern ( (|Set#Card| (|Set#Difference| a@@16 b@@13)))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |2502|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@1) ($IsAllocBox bx@@1 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2445|
 :pattern ( (|Set#IsMember| v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2446|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2379|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2380|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)) (|Set#Union| a@@17 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2517|
 :pattern ( (|Set#Union| a@@17 (|Set#Union| a@@17 b@@14)))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)) (|Set#Intersection| a@@18 b@@15))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |2519|
 :pattern ( (|Set#Intersection| a@@18 (|Set#Intersection| a@@18 b@@15)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2410|
 :pattern ( ($IsBox bx@@2 (TSet t@@5)))
)))
(assert (forall ((a@@19 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@19 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@19 x@@10)) (|Set#Card| a@@19)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |2509|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@19 x@@10)))
)))
(assert (forall ((a@@20 T@U) (b@@16 T@U) ) (! (= (|Set#Equal| a@@20 b@@16) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@20 o@@7) (|Set#IsMember| b@@16 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2526|
 :pattern ( (|Set#IsMember| a@@20 o@@7))
 :pattern ( (|Set#IsMember| b@@16 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2527|
 :pattern ( (|Set#Equal| a@@20 b@@16))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((a@@21 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@21 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@21 x@@13)) (+ (|Set#Card| a@@21) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |2510|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@21 x@@13)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |P#0| () T@U)
(declare-fun |t#0@1| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun _module._default.SetsST5$Y () T@U)
(declare-fun |$rhs#0_0@1| () T@U)
(declare-fun |$rhs#0_1@1| () T@U)
(declare-fun |x#0_0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |x#0_1@1| () T@U)
(declare-fun |z#0_0@1| () T@U)
(declare-fun |z#0_1@1| () T@U)
(declare-fun |defass#x#0_0@0| () Bool)
(declare-fun |x#0_0@0| () T@U)
(declare-fun |defass#z#0_0@0| () Bool)
(declare-fun |z#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |t#0@0| () T@U)
(declare-fun |S#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |defass#z#0_0| () Bool)
(declare-fun |z#0_0| () T@U)
(declare-fun |defass#x#0_0| () Bool)
(declare-fun |x#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.SetsST5)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon6_correct  (=> (and (and (and (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|) (|Set#Subset| |t#0@1| |s#0@0|)) (|Set#IsMember| |t#0@1| |y#0|)) (= |newtype$check#0@0| (|Set#Card| (|Set#Difference| |s#0@0| |t#0@1|)))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= (LitInt 0) |newtype$check#0@0|)) (=> (<= (LitInt 0) |newtype$check#0@0|) (=> (and (= |newtype$check#1@0| (|Set#Card| (|Set#Difference| |t#0@1| |s#0@0|))) (= (ControlFlow 0 28) (- 0 27))) (<= (LitInt 0) |newtype$check#1@0|)))))))
(let ((anon19_Else_correct  (=> (and (not (and (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|) (|Set#Subset| |t#0@1| |s#0@0|))) (= (ControlFlow 0 31) 28)) anon6_correct)))
(let ((anon19_Then_correct  (=> (and (and (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|) (|Set#Subset| |t#0@1| |s#0@0|)) (= (ControlFlow 0 30) 28)) anon6_correct)))
(let ((anon18_Else_correct  (=> (not (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|)) (and (=> (= (ControlFlow 0 33) 30) anon19_Then_correct) (=> (= (ControlFlow 0 33) 31) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|) (and (=> (= (ControlFlow 0 32) 30) anon19_Then_correct) (=> (= (ControlFlow 0 32) 31) anon19_Else_correct)))))
(let ((anon17_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 34) 32) anon18_Then_correct) (=> (= (ControlFlow 0 34) 33) anon18_Else_correct)))))
(let ((anon15_correct  (and (=> (= (ControlFlow 0 4) (- 0 10)) (exists ((|$as#x0_0#0_0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0| _module._default.SetsST5$Y) (and (|Set#IsMember| |$rhs#0_0@1| |$as#x0_0#0_0|) (not (|Set#IsMember| |$rhs#0_1@1| |$as#x0_0#0_0|))))
 :qid |Terminationdfy.707:9|
 :skolemid |3183|
))) (=> (exists ((|$as#x0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#x0_0#0_0@@0| _module._default.SetsST5$Y) (and (|Set#IsMember| |$rhs#0_0@1| |$as#x0_0#0_0@@0|) (not (|Set#IsMember| |$rhs#0_1@1| |$as#x0_0#0_0@@0|))))
 :qid |Terminationdfy.707:9|
 :skolemid |3183|
)) (=> (=> true (and ($IsBox |x#0_0@1| _module._default.SetsST5$Y) ($IsAllocBox |x#0_0@1| _module._default.SetsST5$Y $Heap))) (=> (and (|Set#IsMember| |$rhs#0_0@1| |x#0_0@1|) (not (|Set#IsMember| |$rhs#0_1@1| |x#0_0@1|))) (and (=> (= (ControlFlow 0 4) (- 0 9)) true) (=> (= |s#0@1| (|Set#Difference| |$rhs#0_0@1| (|Set#UnionOne| |Set#Empty| |x#0_0@1|))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (+ (|Set#Card| (|Set#Difference| |s#0@1| |$rhs#0_1@1|)) (|Set#Card| (|Set#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (+ (|Set#Card| (|Set#Difference| |s#0@1| |$rhs#0_1@1|)) (|Set#Card| (|Set#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (< (+ (|Set#Card| (|Set#Difference| |s#0@1| |$rhs#0_1@1|)) (|Set#Card| (|Set#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|)) (=> (< (+ (|Set#Card| (|Set#Difference| |s#0@1| |$rhs#0_1@1|)) (|Set#Card| (|Set#Difference| |$rhs#0_1@1| |s#0@1|))) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0@0| (|Set#Subset| (|Set#Intersection| |s#0@1| |P#0|) |$rhs#0_1@1|))) (=> (=> |$w$loop#0@0| (|Set#Subset| (|Set#Intersection| |s#0@1| |P#0|) |$rhs#0_1@1|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0@0| (|Set#Subset| |$rhs#0_1@1| |s#0@1|))) (=> (=> |$w$loop#0@0| (|Set#Subset| |$rhs#0_1@1| |s#0@1|)) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (|Set#IsMember| |$rhs#0_1@1| |y#0|)))))))))))))))))))
(let ((anon14_correct  (=> (= (ControlFlow 0 12) 4) anon15_correct)))
(let ((anon23_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_0@1| |x#0_1@1|)) (= (ControlFlow 0 14) 12)) anon14_correct)))
(let ((anon23_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_0@1| |x#0_1@1|) (= (ControlFlow 0 13) 12)) anon14_correct)))
(let ((anon22_Then_correct  (=> (and ($IsBox |x#0_1@1| _module._default.SetsST5$Y) ($IsAllocBox |x#0_1@1| _module._default.SetsST5$Y $Heap)) (and (=> (= (ControlFlow 0 15) 13) anon23_Then_correct) (=> (= (ControlFlow 0 15) 14) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and ($IsBox |x#0_1@1| _module._default.SetsST5$Y) ($IsAllocBox |x#0_1@1| _module._default.SetsST5$Y $Heap))) (= (ControlFlow 0 11) 4)) anon15_correct)))
(let ((anon11_correct  (and (=> (= (ControlFlow 0 16) (- 0 22)) (exists ((|$as#z0_0#0_0| T@U) ) (!  (and ($IsBox |$as#z0_0#0_0| _module._default.SetsST5$Y) (|Set#IsMember| |P#0| |$as#z0_0#0_0|))
 :qid |Terminationdfy.703:9|
 :skolemid |3182|
))) (=> (exists ((|$as#z0_0#0_0@@0| T@U) ) (!  (and ($IsBox |$as#z0_0#0_0@@0| _module._default.SetsST5$Y) (|Set#IsMember| |P#0| |$as#z0_0#0_0@@0|))
 :qid |Terminationdfy.703:9|
 :skolemid |3182|
)) (=> (and (=> true (and ($IsBox |z#0_0@1| _module._default.SetsST5$Y) ($IsAllocBox |z#0_0@1| _module._default.SetsST5$Y $Heap))) (|Set#IsMember| |P#0| |z#0_0@1|)) (and (=> (= (ControlFlow 0 16) (- 0 21)) true) (and (=> (= (ControlFlow 0 16) (- 0 20)) true) (and (=> (= (ControlFlow 0 16) (- 0 19)) (|Set#Equal| (|Set#Difference| |s#0@0| |t#0@1|) (|Set#Difference| (|Set#Union| |s#0@0| (|Set#UnionOne| |Set#Empty| |z#0_0@1|)) (|Set#Union| |t#0@1| (|Set#UnionOne| |Set#Empty| |z#0_0@1|))))) (=> (|Set#Equal| (|Set#Difference| |s#0@0| |t#0@1|) (|Set#Difference| (|Set#Union| |s#0@0| (|Set#UnionOne| |Set#Empty| |z#0_0@1|)) (|Set#Union| |t#0@1| (|Set#UnionOne| |Set#Empty| |z#0_0@1|)))) (and (=> (= (ControlFlow 0 16) (- 0 18)) true) (=> (= |$rhs#0_0@1| (|Set#Union| |s#0@0| (|Set#UnionOne| |Set#Empty| |z#0_0@1|))) (and (=> (= (ControlFlow 0 16) (- 0 17)) true) (=> (= |$rhs#0_1@1| (|Set#Union| |t#0@1| (|Set#UnionOne| |Set#Empty| |z#0_0@1|))) (and (=> (= (ControlFlow 0 16) 15) anon22_Then_correct) (=> (= (ControlFlow 0 16) 11) anon22_Else_correct)))))))))))))))
(let ((anon21_Else_correct  (=> (and (not (and ($IsBox |z#0_1@1| _module._default.SetsST5$Y) ($IsAllocBox |z#0_1@1| _module._default.SetsST5$Y $Heap))) (= (ControlFlow 0 24) 16)) anon11_correct)))
(let ((anon21_Then_correct  (=> (and (and ($IsBox |z#0_1@1| _module._default.SetsST5$Y) ($IsAllocBox |z#0_1@1| _module._default.SetsST5$Y $Heap)) (= (ControlFlow 0 23) 16)) anon11_correct)))
(let ((anon20_Else_correct  (=> (and (not (|Set#Equal| |s#0@0| |t#0@1|)) (= |$decr$loop#00@1| (+ (|Set#Card| (|Set#Difference| |s#0@0| |t#0@1|)) (|Set#Card| (|Set#Difference| |t#0@1| |s#0@0|))))) (and (=> (= (ControlFlow 0 25) 23) anon21_Then_correct) (=> (= (ControlFlow 0 25) 24) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon17_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 26) 2) anon20_Then_correct) (=> (= (ControlFlow 0 26) 25) anon20_Else_correct)))))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 35) 34) anon17_Then_correct) (=> (= (ControlFlow 0 35) 26) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (=> |defass#x#0_0@0| (and ($IsBox |x#0_0@0| _module._default.SetsST5$Y) ($IsAllocBox |x#0_0@0| _module._default.SetsST5$Y $Heap))) (=> (and (and (and (and ($Is SetType |s#0@0| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |s#0@0| (TSet _module._default.SetsST5$Y) $Heap)) (=> |defass#z#0_0@0| (and ($IsBox |z#0_0@0| _module._default.SetsST5$Y) ($IsAllocBox |z#0_0@0| _module._default.SetsST5$Y $Heap)))) (and ($Is SetType |t#0@1| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |t#0@1| (TSet _module._default.SetsST5$Y) $Heap))) (and (and (and (not false) (=> |$w$loop#0@0| (|Set#Subset| (|Set#Intersection| |s#0@0| |P#0|) |t#0@1|))) (and (=> |$w$loop#0@0| (|Set#Subset| |t#0@1| |s#0@0|)) (=> |$w$loop#0@0| (|Set#IsMember| |t#0@1| |y#0|)))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.700:3|
 :skolemid |3180|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.700:3|
 :skolemid |3181|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (+ (|Set#Card| (|Set#Difference| |s#0@0| |t#0@1|)) (|Set#Card| (|Set#Difference| |t#0@1| |s#0@0|))) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 36) 1) anon16_LoopDone_correct) (=> (= (ControlFlow 0 36) 35) anon16_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |t#0@0| (|Set#UnionOne| |Set#Empty| |y#0|)) (= |$decr_init$loop#00@0| (+ (|Set#Card| (|Set#Difference| |S#0| |t#0@0|)) (|Set#Card| (|Set#Difference| |t#0@0| |S#0|))))) (and (=> (= (ControlFlow 0 37) (- 0 40)) (=> |$w$loop#0@0| (|Set#Subset| (|Set#Intersection| |S#0| |P#0|) |t#0@0|))) (=> (=> |$w$loop#0@0| (|Set#Subset| (|Set#Intersection| |S#0| |P#0|) |t#0@0|)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> |$w$loop#0@0| (|Set#Subset| |t#0@0| |S#0|))) (=> (=> |$w$loop#0@0| (|Set#Subset| |t#0@0| |S#0|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> |$w$loop#0@0| (|Set#IsMember| |t#0@0| |y#0|))) (=> (=> |$w$loop#0@0| (|Set#IsMember| |t#0@0| |y#0|)) (=> (= (ControlFlow 0 37) 36) anon16_LoopHead_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |S#0| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |S#0| (TSet _module._default.SetsST5$Y) $Heap))) (=> (and (and (and ($IsBox |y#0| _module._default.SetsST5$Y) ($IsAllocBox |y#0| _module._default.SetsST5$Y $Heap)) (and ($Is SetType |P#0| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |P#0| (TSet _module._default.SetsST5$Y) $Heap))) (and (and ($Is SetType |s#0| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |s#0| (TSet _module._default.SetsST5$Y) $Heap)) true)) (=> (and (and (and (and ($Is SetType |t#0| (TSet _module._default.SetsST5$Y)) ($IsAlloc SetType |t#0| (TSet _module._default.SetsST5$Y) $Heap)) true) (and (=> |defass#z#0_0| (and ($IsBox |z#0_0| _module._default.SetsST5$Y) ($IsAllocBox |z#0_0| _module._default.SetsST5$Y $Heap))) true)) (and (and (and (=> |defass#x#0_0| (and ($IsBox |x#0_0| _module._default.SetsST5$Y) ($IsAllocBox |x#0_0| _module._default.SetsST5$Y $Heap))) true) (= 0 $FunctionContextHeight)) (and (and (|Set#IsMember| |S#0| |y#0|) (not (|Set#Equal| |P#0| |Set#Empty|))) (and (|Set#Disjoint| |S#0| |P#0|) (= (ControlFlow 0 41) 37))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
