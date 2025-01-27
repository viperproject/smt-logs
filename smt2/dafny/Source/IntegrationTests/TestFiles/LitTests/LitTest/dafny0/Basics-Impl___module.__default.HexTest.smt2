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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2278|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2276|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2519|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2287|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2485|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2300|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2486|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2288|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2299|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2482|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2334|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2335|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2268|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2269|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2286|
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
 :skolemid |2984|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2484|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2296|
 :pattern ( ($IsBox bx@@1 (TSeq t@@4)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2279|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2277|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2483|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2322|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2314|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2315|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2301|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |randomDec#0@0| () T@U)
(declare-fun |randomHex#0@0| () T@U)
(declare-fun |i#4@0| () Int)
(declare-fun |first16upper#0@0| () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun |first16lower#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |first16lower#0| () T@U)
(declare-fun |first16upper#0| () T@U)
(declare-fun |randomHex#0| () T@U)
(declare-fun |randomDec#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.HexTest)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon15_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (|Seq#Length| |randomHex#0@0|))) (= (U_2_int ($Unbox intType (|Seq#Index| |randomHex#0@0| |i#5|))) (U_2_int ($Unbox intType (|Seq#Index| |randomDec#0@0| |i#5|)))))
 :qid |Basicsdfy.445:17|
 :skolemid |2897|
 :pattern ( ($Unbox intType (|Seq#Index| |randomDec#0@0| |i#5|)))
 :pattern ( ($Unbox intType (|Seq#Index| |randomHex#0@0| |i#5|)))
)))))
(let ((anon24_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| |randomHex#0@0|)))) (= (ControlFlow 0 9) 5)) anon15_correct)))
(let ((anon24_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| |randomHex#0@0|))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| |randomHex#0@0|)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| |randomDec#0@0|)))) (=> (= (ControlFlow 0 6) 5) anon15_correct))))))
(let ((anon23_Else_correct  (=> (< |i#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 11) 6) anon24_Then_correct) (=> (= (ControlFlow 0 11) 9) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (<= (LitInt 0) |i#4@0|) (and (=> (= (ControlFlow 0 10) 6) anon24_Then_correct) (=> (= (ControlFlow 0 10) 9) anon24_Else_correct)))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon23_Then_correct) (=> (= (ControlFlow 0 12) 11) anon23_Else_correct))))
(let ((anon22_Else_correct true))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| |first16upper#0@0|))) (= (U_2_int ($Unbox intType (|Seq#Index| |first16upper#0@0| |i#3|))) |i#3|))
 :qid |Basicsdfy.425:17|
 :skolemid |2895|
 :pattern ( ($Unbox intType (|Seq#Index| |first16upper#0@0| |i#3|)))
))) (=> (forall ((|i#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| (|Seq#Length| |first16upper#0@0|))) (= (U_2_int ($Unbox intType (|Seq#Index| |first16upper#0@0| |i#3@@0|))) |i#3@@0|))
 :qid |Basicsdfy.425:17|
 :skolemid |2895|
 :pattern ( ($Unbox intType (|Seq#Index| |first16upper#0@0| |i#3@@0|)))
)) (=> (and (= |randomHex#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3477362930)))) ($Box intType (int_2_U (LitInt 2589744047)))) ($Box intType (int_2_U (LitInt 648457174)))) ($Box intType (int_2_U (LitInt 15415603)))) ($Box intType (int_2_U (LitInt 2435044047)))) ($Box intType (int_2_U (LitInt 3187933185)))) ($Box intType (int_2_U (LitInt 1523595514)))) ($Box intType (int_2_U (LitInt 3344275366)))) ($Box intType (int_2_U (LitInt 2096636327)))) ($Box intType (int_2_U (LitInt 3455038999)))) ($Box intType (int_2_U (LitInt 1216993640)))) ($Box intType (int_2_U (LitInt 2959051114)))) ($Box intType (int_2_U (LitInt 1974570418)))) ($Box intType (int_2_U (LitInt 3403117488)))) ($Box intType (int_2_U (LitInt 3632553720)))) ($Box intType (int_2_U (LitInt 2398769469)))) ($Box intType (int_2_U (LitInt 2394608417)))) ($Box intType (int_2_U (LitInt 2621464030)))) ($Box intType (int_2_U (LitInt 246013718)))) ($Box intType (int_2_U (LitInt 3444056938)))) ($Box intType (int_2_U (LitInt 2322109135)))) ($Box intType (int_2_U (LitInt 2579433337)))) ($Box intType (int_2_U (LitInt 3931300104)))) ($Box intType (int_2_U (LitInt 58310470)))) ($Box intType (int_2_U (LitInt 1628242745)))) ($Box intType (int_2_U (LitInt 3678616519)))) ($Box intType (int_2_U (LitInt 3914072686)))) ($Box intType (int_2_U (LitInt 4229460828)))) ($Box intType (int_2_U (LitInt 1784659379)))) ($Box intType (int_2_U (LitInt 4255523577)))) ($Box intType (int_2_U (LitInt 1644485497)))) ($Box intType (int_2_U (LitInt 1376063380)))) ($Box intType (int_2_U (LitInt 1522390013)))) ($Box intType (int_2_U (LitInt 2132606175)))) ($Box intType (int_2_U (LitInt 3967586431)))) ($Box intType (int_2_U (LitInt 4198605885)))) ($Box intType (int_2_U (LitInt 50066004)))) ($Box intType (int_2_U (LitInt 2658563354)))) ($Box intType (int_2_U (LitInt 4149411884)))) ($Box intType (int_2_U (LitInt 2520109921)))) ($Box intType (int_2_U (LitInt 3123451110)))) ($Box intType (int_2_U (LitInt 1096590075)))) ($Box intType (int_2_U (LitInt 2759389036)))) ($Box intType (int_2_U (LitInt 2139150316)))) ($Box intType (int_2_U (LitInt 3034416536)))) ($Box intType (int_2_U (LitInt 113569056)))) ($Box intType (int_2_U (LitInt 3217684480)))) ($Box intType (int_2_U (LitInt 1777952605)))) ($Box intType (int_2_U (LitInt 1930266087)))) ($Box intType (int_2_U (LitInt 806691985)))) ($Box intType (int_2_U (LitInt 36091805)))) ($Box intType (int_2_U (LitInt 1820297564)))) ($Box intType (int_2_U (LitInt 1330016162)))) ($Box intType (int_2_U (LitInt 776406857)))) ($Box intType (int_2_U (LitInt 2897015342)))) ($Box intType (int_2_U (LitInt 1163573365)))) ($Box intType (int_2_U (LitInt 2693955015)))) ($Box intType (int_2_U (LitInt 3799815127)))) ($Box intType (int_2_U (LitInt 1326665135)))) ($Box intType (int_2_U (LitInt 3536241040)))) ($Box intType (int_2_U (LitInt 3378447726)))) ($Box intType (int_2_U (LitInt 1163165151)))) ($Box intType (int_2_U (LitInt 1784424295)))) ($Box intType (int_2_U (LitInt 2915391749)))) ($Box intType (int_2_U (LitInt 3319144829)))) ($Box intType (int_2_U (LitInt 1256473918)))) ($Box intType (int_2_U (LitInt 3188839385)))) ($Box intType (int_2_U (LitInt 865831700)))) ($Box intType (int_2_U (LitInt 3868161393)))) ($Box intType (int_2_U (LitInt 4113045917)))) ($Box intType (int_2_U (LitInt 241438432)))) ($Box intType (int_2_U (LitInt 2675007811)))) ($Box intType (int_2_U (LitInt 354465647)))) ($Box intType (int_2_U (LitInt 2080258281)))) ($Box intType (int_2_U (LitInt 2351471473)))) ($Box intType (int_2_U (LitInt 1736439093)))) ($Box intType (int_2_U (LitInt 196693838)))) ($Box intType (int_2_U (LitInt 4215372800)))) ($Box intType (int_2_U (LitInt 2714419258)))) ($Box intType (int_2_U (LitInt 1581046514)))) ($Box intType (int_2_U (LitInt 1981216564)))) ($Box intType (int_2_U (LitInt 3042395387)))) ($Box intType (int_2_U (LitInt 660877099)))) ($Box intType (int_2_U (LitInt 2707539070)))) ($Box intType (int_2_U (LitInt 3217899519)))) ($Box intType (int_2_U (LitInt 2788029817)))) ($Box intType (int_2_U (LitInt 1050875824)))) ($Box intType (int_2_U (LitInt 3362808767)))) ($Box intType (int_2_U (LitInt 3721613)))) ($Box intType (int_2_U (LitInt 2510678132)))) ($Box intType (int_2_U (LitInt 1993876726)))) ($Box intType (int_2_U (LitInt 409501246)))) ($Box intType (int_2_U (LitInt 1273417770)))) ($Box intType (int_2_U (LitInt 741130572)))) ($Box intType (int_2_U (LitInt 1855051115)))) ($Box intType (int_2_U (LitInt 1994570544)))) ($Box intType (int_2_U (LitInt 3448107468)))) ($Box intType (int_2_U (LitInt 1645859758)))) ($Box intType (int_2_U (LitInt 3193559252)))) ($Box intType (int_2_U (LitInt 3636919031)))))) (= |randomDec#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3477362930)))) ($Box intType (int_2_U (LitInt 2589744047)))) ($Box intType (int_2_U (LitInt 648457174)))) ($Box intType (int_2_U (LitInt 15415603)))) ($Box intType (int_2_U (LitInt 2435044047)))) ($Box intType (int_2_U (LitInt 3187933185)))) ($Box intType (int_2_U (LitInt 1523595514)))) ($Box intType (int_2_U (LitInt 3344275366)))) ($Box intType (int_2_U (LitInt 2096636327)))) ($Box intType (int_2_U (LitInt 3455038999)))) ($Box intType (int_2_U (LitInt 1216993640)))) ($Box intType (int_2_U (LitInt 2959051114)))) ($Box intType (int_2_U (LitInt 1974570418)))) ($Box intType (int_2_U (LitInt 3403117488)))) ($Box intType (int_2_U (LitInt 3632553720)))) ($Box intType (int_2_U (LitInt 2398769469)))) ($Box intType (int_2_U (LitInt 2394608417)))) ($Box intType (int_2_U (LitInt 2621464030)))) ($Box intType (int_2_U (LitInt 246013718)))) ($Box intType (int_2_U (LitInt 3444056938)))) ($Box intType (int_2_U (LitInt 2322109135)))) ($Box intType (int_2_U (LitInt 2579433337)))) ($Box intType (int_2_U (LitInt 3931300104)))) ($Box intType (int_2_U (LitInt 58310470)))) ($Box intType (int_2_U (LitInt 1628242745)))) ($Box intType (int_2_U (LitInt 3678616519)))) ($Box intType (int_2_U (LitInt 3914072686)))) ($Box intType (int_2_U (LitInt 4229460828)))) ($Box intType (int_2_U (LitInt 1784659379)))) ($Box intType (int_2_U (LitInt 4255523577)))) ($Box intType (int_2_U (LitInt 1644485497)))) ($Box intType (int_2_U (LitInt 1376063380)))) ($Box intType (int_2_U (LitInt 1522390013)))) ($Box intType (int_2_U (LitInt 2132606175)))) ($Box intType (int_2_U (LitInt 3967586431)))) ($Box intType (int_2_U (LitInt 4198605885)))) ($Box intType (int_2_U (LitInt 50066004)))) ($Box intType (int_2_U (LitInt 2658563354)))) ($Box intType (int_2_U (LitInt 4149411884)))) ($Box intType (int_2_U (LitInt 2520109921)))) ($Box intType (int_2_U (LitInt 3123451110)))) ($Box intType (int_2_U (LitInt 1096590075)))) ($Box intType (int_2_U (LitInt 2759389036)))) ($Box intType (int_2_U (LitInt 2139150316)))) ($Box intType (int_2_U (LitInt 3034416536)))) ($Box intType (int_2_U (LitInt 113569056)))) ($Box intType (int_2_U (LitInt 3217684480)))) ($Box intType (int_2_U (LitInt 1777952605)))) ($Box intType (int_2_U (LitInt 1930266087)))) ($Box intType (int_2_U (LitInt 806691985)))) ($Box intType (int_2_U (LitInt 36091805)))) ($Box intType (int_2_U (LitInt 1820297564)))) ($Box intType (int_2_U (LitInt 1330016162)))) ($Box intType (int_2_U (LitInt 776406857)))) ($Box intType (int_2_U (LitInt 2897015342)))) ($Box intType (int_2_U (LitInt 1163573365)))) ($Box intType (int_2_U (LitInt 2693955015)))) ($Box intType (int_2_U (LitInt 3799815127)))) ($Box intType (int_2_U (LitInt 1326665135)))) ($Box intType (int_2_U (LitInt 3536241040)))) ($Box intType (int_2_U (LitInt 3378447726)))) ($Box intType (int_2_U (LitInt 1163165151)))) ($Box intType (int_2_U (LitInt 1784424295)))) ($Box intType (int_2_U (LitInt 2915391749)))) ($Box intType (int_2_U (LitInt 3319144829)))) ($Box intType (int_2_U (LitInt 1256473918)))) ($Box intType (int_2_U (LitInt 3188839385)))) ($Box intType (int_2_U (LitInt 865831700)))) ($Box intType (int_2_U (LitInt 3868161393)))) ($Box intType (int_2_U (LitInt 4113045917)))) ($Box intType (int_2_U (LitInt 241438432)))) ($Box intType (int_2_U (LitInt 2675007811)))) ($Box intType (int_2_U (LitInt 354465647)))) ($Box intType (int_2_U (LitInt 2080258281)))) ($Box intType (int_2_U (LitInt 2351471473)))) ($Box intType (int_2_U (LitInt 1736439093)))) ($Box intType (int_2_U (LitInt 196693838)))) ($Box intType (int_2_U (LitInt 4215372800)))) ($Box intType (int_2_U (LitInt 2714419258)))) ($Box intType (int_2_U (LitInt 1581046514)))) ($Box intType (int_2_U (LitInt 1981216564)))) ($Box intType (int_2_U (LitInt 3042395387)))) ($Box intType (int_2_U (LitInt 660877099)))) ($Box intType (int_2_U (LitInt 2707539070)))) ($Box intType (int_2_U (LitInt 3217899519)))) ($Box intType (int_2_U (LitInt 2788029817)))) ($Box intType (int_2_U (LitInt 1050875824)))) ($Box intType (int_2_U (LitInt 3362808767)))) ($Box intType (int_2_U (LitInt 3721613)))) ($Box intType (int_2_U (LitInt 2510678132)))) ($Box intType (int_2_U (LitInt 1993876726)))) ($Box intType (int_2_U (LitInt 409501246)))) ($Box intType (int_2_U (LitInt 1273417770)))) ($Box intType (int_2_U (LitInt 741130572)))) ($Box intType (int_2_U (LitInt 1855051115)))) ($Box intType (int_2_U (LitInt 1994570544)))) ($Box intType (int_2_U (LitInt 3448107468)))) ($Box intType (int_2_U (LitInt 1645859758)))) ($Box intType (int_2_U (LitInt 3193559252)))) ($Box intType (int_2_U (LitInt 3636919031))))))) (and (=> (= (ControlFlow 0 13) 12) anon22_Then_correct) (=> (= (ControlFlow 0 13) 3) anon22_Else_correct)))))))
(let ((anon21_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |first16upper#0@0|)))) (= (ControlFlow 0 17) 13)) anon10_correct)))
(let ((anon21_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| |first16upper#0@0|))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| |first16upper#0@0|)))) (=> (= (ControlFlow 0 15) 13) anon10_correct)))))
(let ((anon20_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 19) 15) anon21_Then_correct) (=> (= (ControlFlow 0 19) 17) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 18) 15) anon21_Then_correct) (=> (= (ControlFlow 0 18) 17) anon21_Else_correct)))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 20) 18) anon20_Then_correct) (=> (= (ControlFlow 0 20) 19) anon20_Else_correct))))
(let ((anon19_Else_correct true))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| |first16lower#0@0|))) (= (U_2_int ($Unbox intType (|Seq#Index| |first16lower#0@0| |i#1|))) |i#1|))
 :qid |Basicsdfy.424:17|
 :skolemid |2893|
 :pattern ( ($Unbox intType (|Seq#Index| |first16lower#0@0| |i#1|)))
))) (=> (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| |first16lower#0@0|))) (= (U_2_int ($Unbox intType (|Seq#Index| |first16lower#0@0| |i#1@@0|))) |i#1@@0|))
 :qid |Basicsdfy.424:17|
 :skolemid |2893|
 :pattern ( ($Unbox intType (|Seq#Index| |first16lower#0@0| |i#1@@0|)))
)) (and (=> (= (ControlFlow 0 21) 20) anon19_Then_correct) (=> (= (ControlFlow 0 21) 2) anon19_Else_correct))))))
(let ((anon18_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |first16lower#0@0|)))) (= (ControlFlow 0 25) 21)) anon5_correct)))
(let ((anon18_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |first16lower#0@0|))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |first16lower#0@0|)))) (=> (= (ControlFlow 0 23) 21) anon5_correct)))))
(let ((anon17_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 27) 23) anon18_Then_correct) (=> (= (ControlFlow 0 27) 25) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 26) 23) anon18_Then_correct) (=> (= (ControlFlow 0 26) 25) anon18_Else_correct)))))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 28) 26) anon17_Then_correct) (=> (= (ControlFlow 0 28) 27) anon17_Else_correct))))
(let ((anon16_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |first16lower#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7)))) ($Box intType (int_2_U (LitInt 8)))) ($Box intType (int_2_U (LitInt 9)))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 11)))) ($Box intType (int_2_U (LitInt 12)))) ($Box intType (int_2_U (LitInt 13)))) ($Box intType (int_2_U (LitInt 14)))) ($Box intType (int_2_U (LitInt 15)))))) (= |first16upper#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 6)))) ($Box intType (int_2_U (LitInt 7)))) ($Box intType (int_2_U (LitInt 8)))) ($Box intType (int_2_U (LitInt 9)))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 11)))) ($Box intType (int_2_U (LitInt 12)))) ($Box intType (int_2_U (LitInt 13)))) ($Box intType (int_2_U (LitInt 14)))) ($Box intType (int_2_U (LitInt 15))))))) (and (=> (= (ControlFlow 0 29) 28) anon16_Then_correct) (=> (= (ControlFlow 0 29) 1) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |first16lower#0| (TSeq TInt)) ($IsAlloc SeqType |first16lower#0| (TSeq TInt) $Heap)) true) (=> (and (and (and (and ($Is SeqType |first16upper#0| (TSeq TInt)) ($IsAlloc SeqType |first16upper#0| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |randomHex#0| (TSeq TInt)) ($IsAlloc SeqType |randomHex#0| (TSeq TInt) $Heap)) true)) (and (and (and ($Is SeqType |randomDec#0| (TSeq TInt)) ($IsAlloc SeqType |randomDec#0| (TSeq TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 30) 29)))) anon0_correct)))))
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
