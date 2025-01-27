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
(declare-fun Tag (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (t T@U) (n Int) ) (!  (=> (= n (|Seq#Length| s)) (and (= (|Seq#Take| (|Seq#Append| s t) n) s) (= (|Seq#Drop| (|Seq#Append| s t) n) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |2627|
 :pattern ( (|Seq#Take| (|Seq#Append| s t) n))
 :pattern ( (|Seq#Drop| (|Seq#Append| s t) n))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |2633|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@1))) (= (|Seq#Index| (|Seq#Take| s@@1 n@@1) j) (|Seq#Index| s@@1 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |2623|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@1 n@@1) j))
 :pattern ( (|Seq#Index| s@@1 j) (|Seq#Take| s@@1 n@@1))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@2))) (= (|Seq#Length| (|Seq#Drop| s@@2 n@@2)) (- (|Seq#Length| s@@2) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |2624|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@2 n@@2)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |2617|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |2618|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@3 T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| s@@3))) (< (|Seq#Rank| (|Seq#Take| s@@3 i)) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |2647|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@3 i)))
)))
(assert (forall ((s@@4 T@U) (i@@0 Int) ) (!  (=> (and (< 0 i@@0) (<= i@@0 (|Seq#Length| s@@4))) (< (|Seq#Rank| (|Seq#Drop| s@@4 i@@0)) (|Seq#Rank| s@@4)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |2646|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@4 i@@0)))
)))
(assert (forall ((v T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t@@0 h@@0) ($IsAlloc T@@1 v t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@1 h@@1) ($IsAllocBox bx t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@2 h@@2) ($IsAlloc T@@2 v@@0 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@2 h@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@5) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@1) (|Seq#Index| s@@5 (+ j@@1 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |2625|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@1))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |2604|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |2619|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Take| s@@6 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |2622|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@6 n@@4)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2405|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@3) ($Is T@@3 v@@1 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@3))
)))
(assert (forall ((s@@7 T@U) ) (! (<= 0 (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2599|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((s@@8 T@U) (i@@1 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@1) (< i@@1 j@@2)) (<= j@@2 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@8 i@@1) (|Seq#Drop| s@@8 j@@2))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |2648|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@8 i@@1) (|Seq#Drop| s@@8 j@@2))))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@2) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2451|
 :pattern ( (|Seq#Index| v@@2 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2452|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2385|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2386|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2413|
 :pattern ( ($IsBox bx@@1 (TSeq t@@6)))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@5) (<= n@@5 k@@2)) (< k@@2 (|Seq#Length| s@@9))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@5) (- k@@2 n@@5)) (|Seq#Index| s@@9 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |2626|
 :pattern ( (|Seq#Index| s@@9 k@@2) (|Seq#Drop| s@@9 n@@5))
)))
(assert (forall ((s@@10 T@U) (m@@4 Int) (n@@6 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@6)) (<= (+ m@@4 n@@6) (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Drop| s@@10 m@@4) n@@6) (|Seq#Drop| s@@10 (+ m@@4 n@@6))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |2635|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@10 m@@4) n@@6))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@7 Int) ) (!  (and (=> (< n@@7 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@7) (|Seq#Index| s0@@1 n@@7))) (=> (<= (|Seq#Length| s0@@1) n@@7) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@7) (|Seq#Index| s1@@1 (- n@@7 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |2605|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@7))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@11 T@U) ) (!  (=> (= (|Seq#Length| s@@11) 0) (= s@@11 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2600|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((s@@12 T@U) (n@@8 Int) ) (!  (=> (= n@@8 0) (= (|Seq#Take| s@@12 n@@8) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |2634|
 :pattern ( (|Seq#Take| s@@12 n@@8))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2439|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2431|
 :pattern ( (|Seq#Index| v@@4 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2432|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2418|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |i#0_0@1| () Int)
(declare-fun |s#0@1| () T@U)
(declare-fun |i#0_1@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun _module._default.Sequences0$_T0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |S#0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Sequences0)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon8_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (or (and ($Is intType (int_2_U (- (|Seq#Length| |s#0@0|) 1)) TInt) (and (<= (LitInt 0) (- (|Seq#Length| |s#0@0|) 1)) (< (- (|Seq#Length| |s#0@0|) 1) (|Seq#Length| |s#0@0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (<= (LitInt 0) (LitInt 0)) (< 0 (|Seq#Length| |s#0@0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (<= (LitInt 0) (LitInt 0)) (< 0 (|Seq#Length| |s#0@0|)))) (exists ((|$as#i0_0#0_0| Int) ) (!  (and (<= (LitInt 0) |$as#i0_0#0_0|) (< |$as#i0_0#0_0| (|Seq#Length| |s#0@0|)))
 :qid |Terminationdfy.848:9|
 :skolemid |3268|
)))))) (=> (or (and ($Is intType (int_2_U (- (|Seq#Length| |s#0@0|) 1)) TInt) (and (<= (LitInt 0) (- (|Seq#Length| |s#0@0|) 1)) (< (- (|Seq#Length| |s#0@0|) 1) (|Seq#Length| |s#0@0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (<= (LitInt 0) (LitInt 0)) (< 0 (|Seq#Length| |s#0@0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (<= (LitInt 0) (LitInt 0)) (< 0 (|Seq#Length| |s#0@0|)))) (exists ((|$as#i0_0#0_0@@0| Int) ) (!  (and (<= (LitInt 0) |$as#i0_0#0_0@@0|) (< |$as#i0_0#0_0@@0| (|Seq#Length| |s#0@0|)))
 :qid |Terminationdfy.848:9|
 :skolemid |3268|
))))) (=> (and (<= (LitInt 0) |i#0_0@1|) (< |i#0_0@1| (|Seq#Length| |s#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (and (<= 0 |i#0_0@1|) (<= |i#0_0@1| (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 |i#0_0@1|) (<= |i#0_0@1| (|Seq#Length| |s#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 (+ |i#0_0@1| 1)) (<= (+ |i#0_0@1| 1) (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 (+ |i#0_0@1| 1)) (<= (+ |i#0_0@1| 1) (|Seq#Length| |s#0@0|))) (=> (and (= |s#0@1| (|Seq#Append| (|Seq#Take| |s#0@0| |i#0_0@1|) (|Seq#Drop| |s#0@0| (+ |i#0_0@1| 1)))) (= (ControlFlow 0 6) (- 0 5))) (< (|Seq#Rank| |s#0@1|) (|Seq#Rank| |s#0@0|))))))))))))
(let ((anon14_Else_correct  (=> (and (< |i#0_1@1| (LitInt 0)) (= (ControlFlow 0 11) 6)) anon8_correct)))
(let ((anon14_Then_correct  (=> (and (<= (LitInt 0) |i#0_1@1|) (= (ControlFlow 0 10) 6)) anon8_correct)))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon14_Then_correct) (=> (= (ControlFlow 0 12) 11) anon14_Else_correct))))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (=> (not (|Seq#Equal| |s#0@0| |Seq#Empty|)) (and (=> (= (ControlFlow 0 13) 12) anon13_Then_correct) (=> (= (ControlFlow 0 13) 4) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 14) 3) anon12_Then_correct) (=> (= (ControlFlow 0 14) 13) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_LoopBody_correct  (and (=> (= (ControlFlow 0 15) 2) anon11_Then_correct) (=> (= (ControlFlow 0 15) 14) anon11_Else_correct))))
(let ((anon10_LoopDone_correct true))
(let ((anon10_LoopHead_correct  (=> (and (and (and ($Is SeqType |s#0@0| (TSeq _module._default.Sequences0$_T0)) ($IsAlloc SeqType |s#0@0| (TSeq _module._default.Sequences0$_T0) $Heap)) (not false)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Terminationdfy.847:3|
 :skolemid |3266|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Terminationdfy.847:3|
 :skolemid |3267|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (|Seq#Rank| |s#0@0|) (|Seq#Rank| |S#0|))))) (and (=> (= (ControlFlow 0 16) 1) anon10_LoopDone_correct) (=> (= (ControlFlow 0 16) 15) anon10_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 17) 16)) anon10_LoopHead_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |S#0| (TSeq _module._default.Sequences0$_T0)) ($IsAlloc SeqType |S#0| (TSeq _module._default.Sequences0$_T0) $Heap))) (=> (and (and (and ($Is SeqType |s#0| (TSeq _module._default.Sequences0$_T0)) ($IsAlloc SeqType |s#0| (TSeq _module._default.Sequences0$_T0) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
