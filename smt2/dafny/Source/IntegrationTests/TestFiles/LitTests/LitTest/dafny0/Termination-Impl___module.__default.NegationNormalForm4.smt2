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
(declare-fun TagSeq () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc)
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((s@@0 T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s@@0 n) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |2633|
 :pattern ( (|Seq#Drop| s@@0 n))
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
(assert (forall ((s@@1 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Drop| s@@1 n@@0)) (- (|Seq#Length| s@@1) n@@0)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |2624|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@1 n@@0)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |2617|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |2618|
 :pattern ( (|Seq#Equal| s0 s1))
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
(assert (forall ((s@@2 T@U) (i Int) ) (!  (=> (and (< 0 i) (<= i (|Seq#Length| s@@2))) (< (|Seq#Rank| (|Seq#Drop| s@@2 i)) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |2646|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@2 i)))
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
(assert (forall ((s@@3 T@U) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@3) n@@1))) (= (|Seq#Index| (|Seq#Drop| s@@3 n@@1) j@@0) (|Seq#Index| s@@3 (+ j@@0 n@@1))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |2625|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@3 n@@1) j@@0))
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
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (|Seq#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |2619|
 :pattern ( (|Seq#Equal| a@@14 b@@11))
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
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Set#Card| s@@4))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |2502|
 :pattern ( (|Set#Card| s@@4))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2599|
 :pattern ( (|Seq#Length| s@@5))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2451|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2452|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
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
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2385|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2386|
 :pattern ( (TSeq t@@6))
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
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((bx@@2 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2410|
 :pattern ( ($IsBox bx@@2 (TSet t@@7)))
)))
(assert (forall ((bx@@3 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2413|
 :pattern ( ($IsBox bx@@3 (TSeq t@@8)))
)))
(assert (forall ((a@@19 T@U) (x@@10 T@U) ) (!  (=> (|Set#IsMember| a@@19 x@@10) (= (|Set#Card| (|Set#UnionOne| a@@19 x@@10)) (|Set#Card| a@@19)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |2509|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@19 x@@10)))
)))
(assert (forall ((s@@6 T@U) (n@@2 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 k@@2)) (< k@@2 (|Seq#Length| s@@6))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@2) (- k@@2 n@@2)) (|Seq#Index| s@@6 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |2626|
 :pattern ( (|Seq#Index| s@@6 k@@2) (|Seq#Drop| s@@6 n@@2))
)))
(assert (forall ((s@@7 T@U) (m@@4 Int) (n@@3 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@3)) (<= (+ m@@4 n@@3) (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@3) (|Seq#Drop| s@@7 (+ m@@4 n@@3))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |2635|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@3))
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
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2600|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2431|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2432|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((a@@20 T@U) (x@@13 T@U) ) (!  (=> (not (|Set#IsMember| a@@20 x@@13)) (= (|Set#Card| (|Set#UnionOne| a@@20 x@@13)) (+ (|Set#Card| a@@20) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |2510|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@20 x@@13)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |q#0@0| () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |s#0@2| () T@U)
(declare-fun |$decr$loop#02@1| () Int)
(declare-fun |q#0@2| () T@U)
(declare-fun |$decr$loop#01@1| () T@U)
(declare-fun |b#0@1| () Bool)
(declare-fun |a#0@2| () Int)
(declare-fun |x#0_2_0@1| () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |a#0@0| () Int)
(declare-fun |eg$x#0_2_0@1| () T@U)
(declare-fun _module._default.NegationNormalForm4$_T0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0@1| () Int)
(declare-fun |q#0@1| () T@U)
(declare-fun |x#0_2_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$decr_init$loop#01@0| () T@U)
(declare-fun |$decr_init$loop#02@0| () Int)
(declare-fun |S#0| () T@U)
(declare-fun |Q#0| () T@U)
(declare-fun |$rhs#2@0| () Bool)
(declare-fun |A#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |q#0| () T@U)
(declare-fun |x#0_2_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.NegationNormalForm4)
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
 (=> (= (ControlFlow 0 0) 39) (let ((anon12_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|))) |b#0@0|)) (= (ControlFlow 0 26) 24)) anon12_correct)))
(let ((anon34_Then_correct  (=> (and (and (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|))) |b#0@0|) (= (ControlFlow 0 25) 24)) anon12_correct)))
(let ((anon33_Else_correct  (=> (not (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|)))) (and (=> (= (ControlFlow 0 28) 25) anon34_Then_correct) (=> (= (ControlFlow 0 28) 26) anon34_Else_correct)))))
(let ((anon33_Then_correct  (=> (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|))) (and (=> (= (ControlFlow 0 27) 25) anon34_Then_correct) (=> (= (ControlFlow 0 27) 26) anon34_Else_correct)))))
(let ((anon32_Else_correct  (=> (not (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|)))) (and (=> (= (ControlFlow 0 30) 27) anon33_Then_correct) (=> (= (ControlFlow 0 30) 28) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (and (=> (= (ControlFlow 0 29) 27) anon33_Then_correct) (=> (= (ControlFlow 0 29) 28) anon33_Else_correct)))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 31) 29) anon32_Then_correct) (=> (= (ControlFlow 0 31) 30) anon32_Else_correct))))
(let ((anon31_Else_correct  (=> (and (not (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|)))) (= (ControlFlow 0 33) 31)) anon5_correct)))
(let ((anon31_Then_correct  (=> (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (= (ControlFlow 0 32) 31)) anon5_correct)))
(let ((anon30_Then_correct  (=> (and (not |$w$loop#0@0|) (= |newtype$check#0@0| (|Set#Card| |s#0@0|))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (<= (LitInt 0) |newtype$check#0@0|)) (=> (<= (LitInt 0) |newtype$check#0@0|) (and (=> (= (ControlFlow 0 34) 32) anon31_Then_correct) (=> (= (ControlFlow 0 34) 33) anon31_Else_correct)))))))
(let ((anon28_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (|Set#Card| |s#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (|Set#Card| |s#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (or (or (<= 0 |$decr$loop#02@1|) (< (|Set#Card| |s#0@2|) |$decr$loop#00@1|)) (< (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) |q#0@2| |Seq#Empty|)) (|Seq#Rank| |$decr$loop#01@1|))) (= (ite  (and (and (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) (not (|Seq#Equal| |q#0@2| |Seq#Empty|))) |b#0@1|) (- 1000 |a#0@2|) (- 0 1)) |$decr$loop#02@1|))) (=> (or (or (or (<= 0 |$decr$loop#02@1|) (< (|Set#Card| |s#0@2|) |$decr$loop#00@1|)) (< (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) |q#0@2| |Seq#Empty|)) (|Seq#Rank| |$decr$loop#01@1|))) (= (ite  (and (and (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) (not (|Seq#Equal| |q#0@2| |Seq#Empty|))) |b#0@1|) (- 1000 |a#0@2|) (- 0 1)) |$decr$loop#02@1|)) (=> (= (ControlFlow 0 6) (- 0 5)) (or (< (|Set#Card| |s#0@2|) |$decr$loop#00@1|) (and (= (|Set#Card| |s#0@2|) |$decr$loop#00@1|) (or (< (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) |q#0@2| |Seq#Empty|)) (|Seq#Rank| |$decr$loop#01@1|)) (and (= (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) |q#0@2| |Seq#Empty|)) (|Seq#Rank| |$decr$loop#01@1|)) (< (ite  (and (and (and (|Set#Subset| |Set#Empty| |s#0@2|) (not (|Set#Subset| |s#0@2| |Set#Empty|))) (not (|Seq#Equal| |q#0@2| |Seq#Empty|))) |b#0@1|) (- 1000 |a#0@2|) (- 0 1)) |$decr$loop#02@1|))))))))))))
(let ((anon24_correct  (=> (and (|Set#IsMember| |s#0@0| |x#0_2_0@1|) (= |s#0@1| (|Set#Difference| |s#0@0| (|Set#UnionOne| |Set#Empty| |x#0_2_0@1|)))) (=> (and (and (= |q#0@2| |q#0@0|) (= |a#0@2| |a#0@0|)) (and (= |s#0@2| |s#0@1|) (= (ControlFlow 0 12) 6))) anon28_correct))))
(let ((anon40_Else_correct  (=> (and (not (and ($IsBox |eg$x#0_2_0@1| _module._default.NegationNormalForm4$_T0) ($IsAllocBox |eg$x#0_2_0@1| _module._default.NegationNormalForm4$_T0 $Heap))) (= (ControlFlow 0 14) 12)) anon24_correct)))
(let ((anon40_Then_correct  (=> (and (and ($IsBox |eg$x#0_2_0@1| _module._default.NegationNormalForm4$_T0) ($IsAllocBox |eg$x#0_2_0@1| _module._default.NegationNormalForm4$_T0 $Heap)) (= (ControlFlow 0 13) 12)) anon24_correct)))
(let ((anon42_Then_correct  (=> (and (< |a#0@0| 123456) (= |a#0@1| (+ |a#0@0| 1))) (=> (and (and (= |q#0@2| |q#0@0|) (= |a#0@2| |a#0@1|)) (and (= |s#0@2| |s#0@0|) (= (ControlFlow 0 11) 6))) anon28_correct))))
(let ((anon41_Then_correct  (=> (> (|Seq#Length| |q#0@0|) 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |q#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |q#0@0|))) (=> (= |q#0@1| (|Seq#Drop| |q#0@0| (LitInt 1))) (=> (and (and (= |q#0@2| |q#0@1|) (= |a#0@2| |a#0@0|)) (and (= |s#0@2| |s#0@0|) (= (ControlFlow 0 9) 6))) anon28_correct)))))))
(let ((anon42_Else_correct  (=> (and (and (and (not (exists ((|eg$x#0_0| T@U) ) (!  (and ($IsBox |eg$x#0_0| _module._default.NegationNormalForm4$_T0) (|Set#IsMember| |s#0@0| |eg$x#0_0|))
 :qid |Terminationdfy.1083:10|
 :skolemid |3391|
))) (>= 0 (|Seq#Length| |q#0@0|))) (<= 123456 |a#0@0|)) (= (ControlFlow 0 4) (- 0 3))) false)))
(let ((anon38_Else_correct  (=> (and (and (and (and (not (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (not (|Seq#Equal| |q#0@0| |Seq#Empty|))))) |b#0@0|) (not (not (< |a#0@0| 1000)))) (= |$decr$loop#00@1| (|Set#Card| |s#0@0|))) (and (and (= |$decr$loop#01@1| (ite  (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) |q#0@0| |Seq#Empty|)) (= |$decr$loop#02@1| (ite  (and (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|))) |b#0@0|) (- 1000 |a#0@0|) (- 0 1)))) (and ($IsBox |x#0_2_0@1| _module._default.NegationNormalForm4$_T0) ($IsAllocBox |x#0_2_0@1| _module._default.NegationNormalForm4$_T0 $Heap)))) (and (and (and (and (=> (= (ControlFlow 0 15) 9) anon41_Then_correct) (=> (= (ControlFlow 0 15) 11) anon42_Then_correct)) (=> (= (ControlFlow 0 15) 4) anon42_Else_correct)) (=> (= (ControlFlow 0 15) 13) anon40_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon40_Else_correct)))))
(let ((anon38_Then_correct true))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 16) 2) anon38_Then_correct) (=> (= (ControlFlow 0 16) 15) anon38_Else_correct))))
(let ((anon37_Else_correct  (=> (and (not (and (not (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (not (|Seq#Equal| |q#0@0| |Seq#Empty|))))) |b#0@0|)) (= (ControlFlow 0 18) 16)) anon19_correct)))
(let ((anon37_Then_correct  (=> (and (and (not (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (not (|Seq#Equal| |q#0@0| |Seq#Empty|))))) |b#0@0|) (= (ControlFlow 0 17) 16)) anon19_correct)))
(let ((anon36_Else_correct  (=> (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (not (|Seq#Equal| |q#0@0| |Seq#Empty|)))) (and (=> (= (ControlFlow 0 20) 17) anon37_Then_correct) (=> (= (ControlFlow 0 20) 18) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (not (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (not (|Seq#Equal| |q#0@0| |Seq#Empty|))))) (and (=> (= (ControlFlow 0 19) 17) anon37_Then_correct) (=> (= (ControlFlow 0 19) 18) anon37_Else_correct)))))
(let ((anon35_Else_correct  (=> (not (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|)))) (and (=> (= (ControlFlow 0 22) 19) anon36_Then_correct) (=> (= (ControlFlow 0 22) 20) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (and (=> (= (ControlFlow 0 21) 19) anon36_Then_correct) (=> (= (ControlFlow 0 21) 20) anon36_Else_correct)))))
(let ((anon30_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 23) 21) anon35_Then_correct) (=> (= (ControlFlow 0 23) 22) anon35_Else_correct)))))
(let ((anon29_LoopBody_correct  (and (=> (= (ControlFlow 0 36) 34) anon30_Then_correct) (=> (= (ControlFlow 0 36) 23) anon30_Else_correct))))
(let ((anon29_LoopDone_correct true))
(let ((anon29_LoopHead_correct  (=> (and (and ($Is SeqType |q#0@0| (TSeq _module._default.NegationNormalForm4$_T0)) ($IsAlloc SeqType |q#0@0| (TSeq _module._default.NegationNormalForm4$_T0) $Heap)) (and ($Is SetType |s#0@0| (TSet _module._default.NegationNormalForm4$_T0)) ($IsAlloc SetType |s#0@0| (TSet _module._default.NegationNormalForm4$_T0) $Heap))) (=> (and (and (and ($IsBox |x#0_2_0@0| _module._default.NegationNormalForm4$_T0) ($IsAllocBox |x#0_2_0@0| _module._default.NegationNormalForm4$_T0 $Heap)) (and (not false) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.1080:3|
 :skolemid |3389|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)))) (and (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.1080:3|
 :skolemid |3390|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))) (and (<= (|Set#Card| |s#0@0|) |$decr_init$loop#00@0|) (=> (= (|Set#Card| |s#0@0|) |$decr_init$loop#00@0|) (and (<= (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) |q#0@0| |Seq#Empty|)) (|Seq#Rank| |$decr_init$loop#01@0|)) (=> (= (|Seq#Rank| (ite  (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) |q#0@0| |Seq#Empty|)) (|Seq#Rank| |$decr_init$loop#01@0|)) (<= (ite  (and (and (and (|Set#Subset| |Set#Empty| |s#0@0|) (not (|Set#Subset| |s#0@0| |Set#Empty|))) (not (|Seq#Equal| |q#0@0| |Seq#Empty|))) |b#0@0|) (- 1000 |a#0@0|) (- 0 1)) |$decr_init$loop#02@0|))))))) (and (=> (= (ControlFlow 0 37) 1) anon29_LoopDone_correct) (=> (= (ControlFlow 0 37) 36) anon29_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |$decr_init$loop#00@0| (|Set#Card| |S#0|)) (= |$decr_init$loop#01@0| (ite  (and (|Set#Subset| |Set#Empty| |S#0|) (not (|Set#Subset| |S#0| |Set#Empty|))) |Q#0| |Seq#Empty|))) (and (= |$decr_init$loop#02@0| (ite  (and (and (and (|Set#Subset| |Set#Empty| |S#0|) (not (|Set#Subset| |S#0| |Set#Empty|))) (not (|Seq#Equal| |Q#0| |Seq#Empty|))) |$rhs#2@0|) (- 1000 |A#0|) (- 0 1))) (= (ControlFlow 0 38) 37))) anon29_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |S#0| (TSet _module._default.NegationNormalForm4$_T0)) ($IsAlloc SetType |S#0| (TSet _module._default.NegationNormalForm4$_T0) $Heap))) (and (and ($Is SeqType |Q#0| (TSeq _module._default.NegationNormalForm4$_T0)) ($IsAlloc SeqType |Q#0| (TSeq _module._default.NegationNormalForm4$_T0) $Heap)) (<= (LitInt 0) |A#0|))) (=> (and (and (and (and ($Is SetType |s#0| (TSet _module._default.NegationNormalForm4$_T0)) ($IsAlloc SetType |s#0| (TSet _module._default.NegationNormalForm4$_T0) $Heap)) true) (and (and ($Is SeqType |q#0| (TSeq _module._default.NegationNormalForm4$_T0)) ($IsAlloc SeqType |q#0| (TSeq _module._default.NegationNormalForm4$_T0) $Heap)) true)) (and (and (and ($IsBox |x#0_2_0| _module._default.NegationNormalForm4$_T0) ($IsAllocBox |x#0_2_0| _module._default.NegationNormalForm4$_T0 $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 39) 38)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
