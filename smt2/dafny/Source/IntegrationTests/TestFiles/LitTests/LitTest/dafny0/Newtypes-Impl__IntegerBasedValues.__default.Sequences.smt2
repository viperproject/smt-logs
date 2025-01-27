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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun Mod (Int Int) Int)
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
(assert (distinct TagSeq alloc)
)
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |3633|
 :pattern ( (|Seq#Drop| s n))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3395|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3393|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@0)) (< j (|Seq#Length| s@@0))) (= (|Seq#Index| (|Seq#Take| s@@0 n@@0) j) (|Seq#Index| s@@0 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |3623|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@0 n@@0) j))
 :pattern ( (|Seq#Index| s@@0 j) (|Seq#Take| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (<= n@@1 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Drop| s@@1 n@@1)) (- (|Seq#Length| s@@1) n@@1)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |3624|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@1 n@@1)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |3617|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |3618|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3404|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3417|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@2) n@@2))) (= (|Seq#Index| (|Seq#Drop| s@@2 n@@2) j@@1) (|Seq#Index| s@@2 (+ j@@1 n@@2))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |3625|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@2 n@@2) j@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |3619|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Take| s@@3 n@@3)) n@@3))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |3622|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@3 n@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3416|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3599|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3451|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3452|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3385|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3386|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3403|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6324|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |3718|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |3716|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (forall ((bx T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx)) bx) ($Is SeqType ($Unbox SeqType bx) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3413|
 :pattern ( ($IsBox bx (TSeq t@@3)))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@4) (<= n@@4 k)) (< k (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@4) (- k n@@4)) (|Seq#Index| s@@5 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |3626|
 :pattern ( (|Seq#Index| s@@5 k) (|Seq#Drop| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@U) (m@@4 Int) (n@@5 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@5)) (<= (+ m@@4 n@@5) (|Seq#Length| s@@6))) (= (|Seq#Drop| (|Seq#Drop| s@@6 m@@4) n@@5) (|Seq#Drop| s@@6 (+ m@@4 n@@5))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |3635|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@6 m@@4) n@@5))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3394|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3600|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((s@@8 T@U) (n@@6 Int) ) (!  (=> (= n@@6 0) (= (|Seq#Take| s@@8 n@@6) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |3634|
 :pattern ( (|Seq#Take| s@@8 n@@6))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3431|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3432|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0| () T@U)
(declare-fun |i#0| () Int)
(declare-fun |x#0@1| () T@U)
(declare-fun |newtype$check#10_0@0| () Int)
(declare-fun |newtype$check#10_1@0| () Int)
(declare-fun |lo#0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |b#0@6| () T@U)
(declare-fun |hi#0| () Int)
(declare-fun |b#0@7| () T@U)
(declare-fun |newtype$check#4_0@0| () Int)
(declare-fun |newtype$check#4_1@0| () Int)
(declare-fun |newtype$check#1_0@0| () Int)
(declare-fun |newtype$check#1_1@0| () Int)
(declare-fun |newtype$check#1_2@0| () Int)
(declare-fun |newtype$check#1_3@0| () Int)
(declare-fun |newtype$check#1_4@0| () Int)
(declare-fun |b#0@5| () T@U)
(declare-fun |b#0@4| () T@U)
(declare-fun |b#0@3| () T@U)
(declare-fun |b#0@2| () T@U)
(declare-fun |b#0@1| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |x#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Tclass.IntegerBasedValues.T () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |defass#x#0| () Bool)
(declare-fun |x#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$IntegerBasedValues.__default.Sequences)
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
 (=> (= (ControlFlow 0 0) 59) (let ((anon22_correct  (=> (= (ControlFlow 0 4) (- 0 3)) true)))
(let ((anon4_correct  (=> (and (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0)) (< |i#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |a#0|))) (=> (and (= |x#0@1| (|Seq#Index| |a#0| |i#0|)) (= (ControlFlow 0 50) 4)) anon22_correct))))))
(let ((anon25_Else_correct  (=> (and (or (not (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0))) (not true)) (= (ControlFlow 0 55) 50)) anon4_correct)))
(let ((anon25_Then_correct  (=> (and (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0)) (= |newtype$check#10_0@0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 52) (- 0 54)) (= (Mod |newtype$check#10_0@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#10_0@0| (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#10_1@0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (= (Mod |newtype$check#10_1@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#10_1@0| (LitInt 2)) (LitInt 0)) (=> (= (ControlFlow 0 52) 50) anon4_correct)))))))))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 56) (- 0 57)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 56) 52) anon25_Then_correct) (=> (= (ControlFlow 0 56) 55) anon25_Else_correct))))))
(let ((anon18_correct  (=> (and (<= |lo#0| |n#0|) (<= |n#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= |lo#0| |n#0|) (<= |n#0| (|Seq#Length| |a#0|)))) (=> (and (<= |lo#0| |n#0|) (<= |n#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@6| (|Seq#Drop| (|Seq#Take| |a#0| |n#0|) |lo#0|)) (= (ControlFlow 0 45) 4)) anon22_correct))))))))
(let ((anon36_Else_correct  (=> (and (< |n#0| |lo#0|) (= (ControlFlow 0 49) 45)) anon18_correct)))
(let ((anon36_Then_correct  (=> (and (<= |lo#0| |n#0|) (= (ControlFlow 0 48) 45)) anon18_correct)))
(let ((anon15_correct  (=> (and (<= |n#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (and (<= 0 |n#0|) (<= |n#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |n#0|) (<= |n#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= |n#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|)))) (=> (and (<= |n#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@7| (|Seq#Drop| (|Seq#Take| |a#0| |hi#0|) |n#0|)) (= (ControlFlow 0 40) 4)) anon22_correct))))))))
(let ((anon34_Else_correct  (=> (and (< |hi#0| |n#0|) (= (ControlFlow 0 44) 40)) anon15_correct)))
(let ((anon34_Then_correct  (=> (and (<= |n#0| |hi#0|) (= (ControlFlow 0 43) 40)) anon15_correct)))
(let ((anon12_correct  (=> (and (<= |lo#0| (|Seq#Length| |a#0|)) (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0))) (and (=> (= (ControlFlow 0 29) (- 0 36)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 29) (- 0 35)) (and (<= |lo#0| (|Seq#Length| |a#0|)) (<= (|Seq#Length| |a#0|) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 29) (- 0 34)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (= |newtype$check#4_0@0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 29) (- 0 33)) (= (Mod |newtype$check#4_0@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#4_0@0| (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#4_1@0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (= (Mod |newtype$check#4_1@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#4_1@0| (LitInt 2)) (LitInt 0)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (and (<= |lo#0| (|Seq#Length| |a#0|)) (<= (|Seq#Length| |a#0|) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (|Seq#Equal| (|Seq#Drop| (|Seq#Take| |a#0| (|Seq#Length| |a#0|)) |lo#0|) (|Seq#Drop| (|Seq#Take| |a#0| (|Seq#Length| |a#0|)) |lo#0|))) (=> (|Seq#Equal| (|Seq#Drop| (|Seq#Take| |a#0| (|Seq#Length| |a#0|)) |lo#0|) (|Seq#Drop| (|Seq#Take| |a#0| (|Seq#Length| |a#0|)) |lo#0|)) (=> (= (ControlFlow 0 29) 4) anon22_correct))))))))))))))))
(let ((anon32_Else_correct  (=> (and (< (|Seq#Length| |a#0|) |lo#0|) (= (ControlFlow 0 39) 29)) anon12_correct)))
(let ((anon32_Then_correct  (=> (<= |lo#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= (ControlFlow 0 37) 29) anon12_correct))))))
(let ((anon38_Then_correct  (=> (= (ControlFlow 0 28) 4) anon22_correct)))
(let ((anon37_Then_correct  (=> (= |newtype$check#1_0@0| (+ |hi#0| |hi#0|)) (and (=> (= (ControlFlow 0 20) (- 0 27)) (= (Mod |newtype$check#1_0@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1_0@0| (LitInt 2)) (LitInt 0)) (=> (<= (+ |hi#0| |hi#0|) (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 20) (- 0 26)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|))) (=> (= |newtype$check#1_1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 20) (- 0 25)) (= (Mod |newtype$check#1_1@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1_1@0| (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#1_2@0| (Mul (LitInt 2) |hi#0|)) (and (=> (= (ControlFlow 0 20) (- 0 24)) (= (Mod |newtype$check#1_2@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1_2@0| (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#1_3@0| (Mul (LitInt 2) |hi#0|)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (= (Mod |newtype$check#1_3@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1_3@0| (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#1_4@0| (Mul (LitInt 2) |hi#0|)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (= (Mod |newtype$check#1_4@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1_4@0| (LitInt 2)) (LitInt 0)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (<= |lo#0| (Mul (LitInt 2) |hi#0|)) (<= (Mul (LitInt 2) |hi#0|) (|Seq#Length| |a#0|)))) (=> (and (<= |lo#0| (Mul (LitInt 2) |hi#0|)) (<= (Mul (LitInt 2) |hi#0|) (|Seq#Length| |a#0|))) (=> (and (= |b#0@5| (|Seq#Drop| (|Seq#Take| |a#0| (Mul (LitInt 2) |hi#0|)) |lo#0|)) (= (ControlFlow 0 20) 4)) anon22_correct)))))))))))))))))))))))
(let ((anon30_Then_correct  (=> (<= |lo#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= |lo#0| (|Seq#Length| |a#0|)) (<= (|Seq#Length| |a#0|) (|Seq#Length| |a#0|)))) (=> (and (<= |lo#0| (|Seq#Length| |a#0|)) (<= (|Seq#Length| |a#0|) (|Seq#Length| |a#0|))) (=> (and (= |b#0@4| (|Seq#Drop| (|Seq#Take| |a#0| (|Seq#Length| |a#0|)) |lo#0|)) (= (ControlFlow 0 17) 4)) anon22_correct))))))))
(let ((anon29_Then_correct  (=> (<= |lo#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@3| (|Seq#Drop| |a#0| |lo#0|)) (= (ControlFlow 0 15) 4)) anon22_correct))))))
(let ((anon28_Then_correct  (=> (<= |hi#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|)))) (=> (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= (LitInt 0) |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|)))) (=> (and (<= (LitInt 0) |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@2| (|Seq#Drop| (|Seq#Take| |a#0| |hi#0|) (LitInt 0))) (= (ControlFlow 0 12) 4)) anon22_correct))))))))
(let ((anon27_Then_correct  (=> (<= |hi#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@1| (|Seq#Take| |a#0| |hi#0|)) (= (ControlFlow 0 10) 4)) anon22_correct))))))
(let ((anon26_Then_correct  (=> (<= |hi#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |lo#0|) (<= |lo#0| (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= |lo#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|)))) (=> (and (<= |lo#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))) (=> (and (= |b#0@0| (|Seq#Drop| (|Seq#Take| |a#0| |hi#0|) |lo#0|)) (= (ControlFlow 0 7) 4)) anon22_correct))))))))
(let ((anon23_Then_correct  (=> (< |i#0| (|Seq#Length| |a#0|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |a#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |a#0|))) (=> (and (= |x#0@0| (|Seq#Index| |a#0| |i#0|)) (= (ControlFlow 0 5) 4)) anon22_correct))))))
(let ((anon38_Else_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (<= (|Seq#Length| |a#0|) |i#0|) (not (and (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0)) (< |i#0| (|Seq#Length| |a#0|))))) (< (|Seq#Length| |a#0|) |hi#0|)) (< (|Seq#Length| |a#0|) |hi#0|)) (< (|Seq#Length| |a#0|) |hi#0|)) (< (|Seq#Length| |a#0|) |lo#0|)) (< (|Seq#Length| |a#0|) |lo#0|)) (not (and (<= |lo#0| (|Seq#Length| |a#0|)) (= (Mod (|Seq#Length| |a#0|) (LitInt 2)) (LitInt 0))))) (not (and (<= |n#0| |hi#0|) (<= |hi#0| (|Seq#Length| |a#0|))))) (not (and (<= |lo#0| |n#0|) (<= |n#0| (|Seq#Length| |a#0|))))) (< (|Seq#Length| |a#0|) (+ |hi#0| |hi#0|))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 2) (- 0 1))) false)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 58) 5) anon23_Then_correct) (=> (= (ControlFlow 0 58) 56) anon24_Then_correct)) (=> (= (ControlFlow 0 58) 7) anon26_Then_correct)) (=> (= (ControlFlow 0 58) 10) anon27_Then_correct)) (=> (= (ControlFlow 0 58) 12) anon28_Then_correct)) (=> (= (ControlFlow 0 58) 15) anon29_Then_correct)) (=> (= (ControlFlow 0 58) 17) anon30_Then_correct)) (=> (= (ControlFlow 0 58) 20) anon37_Then_correct)) (=> (= (ControlFlow 0 58) 28) anon38_Then_correct)) (=> (= (ControlFlow 0 58) 2) anon38_Else_correct)) (=> (= (ControlFlow 0 58) 48) anon36_Then_correct)) (=> (= (ControlFlow 0 58) 49) anon36_Else_correct)) (=> (= (ControlFlow 0 58) 43) anon34_Then_correct)) (=> (= (ControlFlow 0 58) 44) anon34_Else_correct)) (=> (= (ControlFlow 0 58) 37) anon32_Then_correct)) (=> (= (ControlFlow 0 58) 39) anon32_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |a#0| (TSeq Tclass.IntegerBasedValues.T)) ($IsAlloc SeqType |a#0| (TSeq Tclass.IntegerBasedValues.T) $Heap))) (=> (and (and (and (and (<= (LitInt 0) |n#0|) (= (Mod |i#0| (LitInt 2)) (LitInt 0))) (and (= (Mod |lo#0| (LitInt 2)) (LitInt 0)) (= (Mod |hi#0| (LitInt 2)) (LitInt 0)))) (and (and ($IsBox |t#0| Tclass.IntegerBasedValues.T) ($IsAllocBox |t#0| Tclass.IntegerBasedValues.T $Heap)) (=> |defass#x#0| (and ($IsBox |x#0| Tclass.IntegerBasedValues.T) ($IsAllocBox |x#0| Tclass.IntegerBasedValues.T $Heap))))) (and (and (and ($Is SeqType |b#0| (TSeq Tclass.IntegerBasedValues.T)) ($IsAlloc SeqType |b#0| (TSeq Tclass.IntegerBasedValues.T) $Heap)) (= 1 $FunctionContextHeight)) (and (and (<= (LitInt 0) |i#0|) (<= (LitInt 0) |lo#0|)) (and (<= |lo#0| |hi#0|) (= (ControlFlow 0 59) 58))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
