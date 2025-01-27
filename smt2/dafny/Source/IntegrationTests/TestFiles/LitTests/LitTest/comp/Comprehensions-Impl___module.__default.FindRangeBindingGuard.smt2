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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
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
 :skolemid |2450|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2451|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2349|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2347|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2358|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2371|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2443|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2442|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2449|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2359|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2370|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2553|
 :pattern ( (|Seq#Length| s))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2405|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2406|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2339|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2340|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2357|
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
 :skolemid |3336|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2367|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2350|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2348|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2554|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2393|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2385|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2386|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2372|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |hi#0@0| () Int)
(declare-fun |i#6@0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |lo#0@0| () Int)
(declare-fun |from#0| () Int)
(declare-fun |i#4@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |hi#0@1| () Int)
(declare-fun |lo#0@2| () Int)
(declare-fun |to#0| () Int)
(declare-fun |j#0_2_0_0@1| () Int)
(declare-fun |j#0_0_0@1| () Int)
(declare-fun |lo#0@1| () Int)
(declare-fun |lo#0@3| () Int)
(declare-fun |hi#0@2| () Int)
(declare-fun |eg$j#0_2_0@1| () Int)
(declare-fun |eg$j#0_0@1| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.FindRangeBindingGuard)
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
 (=> (= (ControlFlow 0 0) 65) (let ((anon14_correct true))
(let ((anon40_Else_correct  (=> (and (not (and (<= |hi#0@0| |i#6@0|) (< |i#6@0| (|Seq#Length| |s#0|)))) (= (ControlFlow 0 43) 40)) anon14_correct)))
(let ((anon40_Then_correct  (=> (and (<= |hi#0@0| |i#6@0|) (< |i#6@0| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (<= 0 |i#6@0|) (< |i#6@0| (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 41) 40) anon14_correct)))))
(let ((anon39_Else_correct  (=> (< |i#6@0| |hi#0@0|) (and (=> (= (ControlFlow 0 45) 41) anon40_Then_correct) (=> (= (ControlFlow 0 45) 43) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (<= |hi#0@0| |i#6@0|) (and (=> (= (ControlFlow 0 44) 41) anon40_Then_correct) (=> (= (ControlFlow 0 44) 43) anon40_Else_correct)))))
(let ((anon38_Then_correct  (and (=> (= (ControlFlow 0 46) 44) anon39_Then_correct) (=> (= (ControlFlow 0 46) 45) anon39_Else_correct))))
(let ((anon38_Else_correct true))
(let ((anon9_correct  (=> (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| |lo#0@0|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3085|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5|)))
)) (and (=> (= (ControlFlow 0 47) 46) anon38_Then_correct) (=> (= (ControlFlow 0 47) 39) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| |lo#0@0|))) (= (ControlFlow 0 50) 47)) anon9_correct)))
(let ((anon37_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| |lo#0@0|)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 48) 47) anon9_correct)))))
(let ((anon36_Else_correct  (=> (< |i#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 52) 48) anon37_Then_correct) (=> (= (ControlFlow 0 52) 50) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (<= (LitInt 0) |i#4@0|) (and (=> (= (ControlFlow 0 51) 48) anon37_Then_correct) (=> (= (ControlFlow 0 51) 50) anon37_Else_correct)))))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 53) 51) anon36_Then_correct) (=> (= (ControlFlow 0 53) 52) anon36_Else_correct))))
(let ((anon35_Else_correct true))
(let ((anon4_correct  (=> (and (<= |lo#0@0| |hi#0@0|) (<= |hi#0@0| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 54) 53) anon35_Then_correct) (=> (= (ControlFlow 0 54) 38) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (< |hi#0@0| |lo#0@0|) (= (ControlFlow 0 56) 54)) anon4_correct)))
(let ((anon34_Then_correct  (=> (and (<= |lo#0@0| |hi#0@0|) (= (ControlFlow 0 55) 54)) anon4_correct)))
(let ((anon33_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 57) 55) anon34_Then_correct) (=> (= (ControlFlow 0 57) 56) anon34_Else_correct)))))
(let ((continue_0_correct  (and (=> (= (ControlFlow 0 13) (- 0 18)) (or (<= 0 |$decr$loop#00@1|) (= (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 13) (- 0 17)) (< (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|)) (=> (< (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 13) (- 0 16)) (=> |$w$loop#0@0| (<= |lo#0@2| |hi#0@1|))) (=> (=> |$w$loop#0@0| (<= |lo#0@2| |hi#0@1|)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (=> |$w$loop#0@0| (<= |hi#0@1| (|Seq#Length| |s#0|)))) (=> (=> |$w$loop#0@0| (<= |hi#0@1| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> |$w$loop#0@0| (forall ((|i#5@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@0|) (< |i#5@@0| |lo#0@2|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5@@0|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3087|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5@@0|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#5@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@1|) (< |i#5@@1| |lo#0@2|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5@@1|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3087|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5@@1|)))
))) (=> (= (ControlFlow 0 13) (- 0 12)) (=> |$w$loop#0@0| (forall ((|i#7| Int) ) (!  (=> (and (<= |hi#0@1| |i#7|) (< |i#7| (|Seq#Length| |s#0|))) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#7|)))))
 :qid |Comprehensionsdfy.203:22|
 :skolemid |3090|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#7|)))
))))))))))))))))
(let ((anon49_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |j#0_2_0_0@1|) (< |j#0_2_0_0@1| |hi#0@0|)) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |j#0_2_0_0@1|))))) (= |lo#0@2| |lo#0@0|)) (and (= |hi#0@1| |j#0_2_0_0@1|) (= (ControlFlow 0 20) 13))) continue_0_correct)))
(let ((anon45_Then_correct  (=> (and (and (and (<= |lo#0@0| |j#0_0_0@1|) (< |j#0_0_0@1| (|Seq#Length| |s#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |j#0_0_0@1|))) |from#0|)) (and (and (= |lo#0@1| (+ |j#0_0_0@1| 1)) (= |lo#0@2| |lo#0@1|)) (and (= |hi#0@1| |hi#0@0|) (= (ControlFlow 0 19) 13)))) continue_0_correct)))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= (LitInt 0) |lo#0@3|)) (=> (<= (LitInt 0) |lo#0@3|) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= |lo#0@3| |hi#0@2|)) (=> (<= |lo#0@3| |hi#0@2|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= |hi#0@2| (|Seq#Length| |s#0|))) (=> (<= |hi#0@2| (|Seq#Length| |s#0|)) (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| |s#0|))) (=  (and (<= |from#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#3|)))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#3|))) |to#0|))  (and (<= |lo#0@3| |i#3|) (< |i#3| |hi#0@2|))))
 :qid |Comprehensionsdfy.197:18|
 :skolemid |3083|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#3|)))
)))))))))))
(let ((after_0_correct  (=> (= |hi#0@2| |hi#0@0|) (=> (and (= |lo#0@3| |lo#0@0|) (= (ControlFlow 0 9) 5)) GeneratedUnifiedExit_correct))))
(let ((anon49_Else_correct  (=> (and (not (exists ((|eg$j#0_2_1| Int) ) (!  (and (and (<= (LitInt 0) |eg$j#0_2_1|) (< |eg$j#0_2_1| |hi#0@0|)) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |eg$j#0_2_1|)))))
 :qid |Comprehensionsdfy.208:15|
 :skolemid |3094|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |eg$j#0_2_1|)))
))) (= (ControlFlow 0 11) 9)) after_0_correct)))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 21) 20) anon49_Then_correct) (=> (= (ControlFlow 0 21) 11) anon49_Else_correct))))
(let ((anon48_Else_correct  (=> (and (not (and (<= (LitInt 0) |eg$j#0_2_0@1|) (< |eg$j#0_2_0@1| |hi#0@0|))) (= (ControlFlow 0 24) 21)) anon29_correct)))
(let ((anon48_Then_correct  (=> (and (<= (LitInt 0) |eg$j#0_2_0@1|) (< |eg$j#0_2_0@1| |hi#0@0|)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (<= 0 |eg$j#0_2_0@1|) (< |eg$j#0_2_0@1| (|Seq#Length| |s#0|)))) (=> (and (<= 0 |eg$j#0_2_0@1|) (< |eg$j#0_2_0@1| (|Seq#Length| |s#0|))) (=> (= (ControlFlow 0 22) 21) anon29_correct))))))
(let ((anon47_Else_correct  (=> (< |eg$j#0_2_0@1| (LitInt 0)) (and (=> (= (ControlFlow 0 26) 22) anon48_Then_correct) (=> (= (ControlFlow 0 26) 24) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (<= (LitInt 0) |eg$j#0_2_0@1|) (and (=> (= (ControlFlow 0 25) 22) anon48_Then_correct) (=> (= (ControlFlow 0 25) 24) anon48_Else_correct)))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 27) 25) anon47_Then_correct) (=> (= (ControlFlow 0 27) 26) anon47_Else_correct))))
(let ((anon41_Then_correct  (=> (and (<= |hi#0@0| |lo#0@0|) (= (ControlFlow 0 10) 9)) after_0_correct)))
(let ((anon46_Else_correct true))
(let ((anon45_Else_correct  (=> (not (exists ((|eg$j#0_1| Int) ) (!  (and (and (<= |lo#0@0| |eg$j#0_1|) (< |eg$j#0_1| (|Seq#Length| |s#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |eg$j#0_1|))) |from#0|))
 :qid |Comprehensionsdfy.206:8|
 :skolemid |3093|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |eg$j#0_1|)))
))) (and (=> (= (ControlFlow 0 28) 27) anon46_Then_correct) (=> (= (ControlFlow 0 28) 3) anon46_Else_correct)))))
(let ((anon22_correct  (and (=> (= (ControlFlow 0 29) 19) anon45_Then_correct) (=> (= (ControlFlow 0 29) 28) anon45_Else_correct))))
(let ((anon44_Else_correct  (=> (and (not (and (<= |lo#0@0| |eg$j#0_0@1|) (< |eg$j#0_0@1| (|Seq#Length| |s#0|)))) (= (ControlFlow 0 32) 29)) anon22_correct)))
(let ((anon44_Then_correct  (=> (and (<= |lo#0@0| |eg$j#0_0@1|) (< |eg$j#0_0@1| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (<= 0 |eg$j#0_0@1|) (< |eg$j#0_0@1| (|Seq#Length| |s#0|)))) (=> (and (<= 0 |eg$j#0_0@1|) (< |eg$j#0_0@1| (|Seq#Length| |s#0|))) (=> (= (ControlFlow 0 30) 29) anon22_correct))))))
(let ((anon43_Else_correct  (=> (< |eg$j#0_0@1| |lo#0@0|) (and (=> (= (ControlFlow 0 34) 30) anon44_Then_correct) (=> (= (ControlFlow 0 34) 32) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (<= |lo#0@0| |eg$j#0_0@1|) (and (=> (= (ControlFlow 0 33) 30) anon44_Then_correct) (=> (= (ControlFlow 0 33) 32) anon44_Else_correct)))))
(let ((anon42_Then_correct  (and (=> (= (ControlFlow 0 35) 33) anon43_Then_correct) (=> (= (ControlFlow 0 35) 34) anon43_Else_correct))))
(let ((anon42_Else_correct true))
(let ((anon41_Else_correct  (=> (and (< |lo#0@0| |hi#0@0|) (= |$decr$loop#00@1| (- |hi#0@0| |lo#0@0|))) (and (=> (= (ControlFlow 0 36) 35) anon42_Then_correct) (=> (= (ControlFlow 0 36) 2) anon42_Else_correct)))))
(let ((anon33_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 37) 10) anon41_Then_correct) (=> (= (ControlFlow 0 37) 36) anon41_Else_correct)))))
(let ((anon32_LoopBody_correct  (and (=> (= (ControlFlow 0 58) 57) anon33_Then_correct) (=> (= (ControlFlow 0 58) 37) anon33_Else_correct))))
(let ((anon32_LoopDone_correct true))
(let ((anon32_LoopHead_correct  (=> (and (and (<= 0 |lo#0@0|) (not false)) (= |$rhs#0@0| 0)) (=> (and (and (and (=> |$w$loop#0@0| (<= |lo#0@0| |hi#0@0|)) (=> |$w$loop#0@0| (<= |hi#0@0| (|Seq#Length| |s#0|)))) (and (=> |$w$loop#0@0| (forall ((|i#5@@2| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@2|) (< |i#5@@2| |lo#0@0|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5@@2|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3087|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5@@2|)))
))) (=> |$w$loop#0@0| (forall ((|i#7@@0| Int) ) (!  (=> (and (<= |hi#0@0| |i#7@@0|) (< |i#7@@0| (|Seq#Length| |s#0|))) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#7@@0|)))))
 :qid |Comprehensionsdfy.203:22|
 :skolemid |3090|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#7@@0|)))
))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Comprehensionsdfy.200:3|
 :skolemid |3091|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Comprehensionsdfy.200:3|
 :skolemid |3092|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- |hi#0@0| |lo#0@0|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 59) 1) anon32_LoopDone_correct) (=> (= (ControlFlow 0 59) 58) anon32_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#0@0| (LitInt 0))) (and (= |$rhs#1@0| (|Seq#Length| |s#0|)) (= |$decr_init$loop#00@0| (- |$rhs#1@0| |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 60) (- 0 64)) (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (=> |$w$loop#0@0| (<= |$rhs#1@0| (|Seq#Length| |s#0|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#1@0| (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (=> |$w$loop#0@0| (forall ((|i#5@@3| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@3|) (< |i#5@@3| |$rhs#0@0|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5@@3|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3087|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5@@3|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#5@@4| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@4|) (< |i#5@@4| |$rhs#0@0|)) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#5@@4|))) |from#0|))
 :qid |Comprehensionsdfy.202:22|
 :skolemid |3087|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#5@@4|)))
))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (=> |$w$loop#0@0| (forall ((|i#7@@1| Int) ) (!  (=> (and (<= |$rhs#1@0| |i#7@@1|) (< |i#7@@1| (|Seq#Length| |s#0|))) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#7@@1|)))))
 :qid |Comprehensionsdfy.203:22|
 :skolemid |3090|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#7@@1|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#7@@2| Int) ) (!  (=> (and (<= |$rhs#1@0| |i#7@@2|) (< |i#7@@2| (|Seq#Length| |s#0|))) (<= |to#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#7@@2|)))))
 :qid |Comprehensionsdfy.203:22|
 :skolemid |3090|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#7@@2|)))
))) (=> (= (ControlFlow 0 60) 59) anon32_LoopHead_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap))) (and (and (= 0 $FunctionContextHeight) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| |s#0|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| |j#1|)))))
 :qid |Comprehensionsdfy.194:19|
 :skolemid |3082|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |j#1|)) ($Unbox intType (|Seq#Index| |s#0| |i#1|)))
))) (and (<= |from#0| |to#0|) (= (ControlFlow 0 65) 60)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
