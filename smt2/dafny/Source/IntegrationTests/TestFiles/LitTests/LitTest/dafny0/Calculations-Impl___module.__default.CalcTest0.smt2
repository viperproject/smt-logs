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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
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
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((s T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s x@@6) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@6))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
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
 :skolemid |504|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CalcTest0)
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
 (=> (= (ControlFlow 0 0) 62) (let ((anon34_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 53) (- 0 57)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 53) (- 0 56)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))))) (=> (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0))))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 53) (- 0 52)) (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0))))))))))))))
(let ((anon33_Then_correct  (=> (= (ControlFlow 0 51) (- 0 50)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|))))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 36) (- 0 39)) (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0)))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))) (=> (and (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0))) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 36) (- 0 35)) (=> (< 0 (|Seq#Length| |s#0|)) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))))))))))
(let ((anon39_Else_correct  (=> (and (not (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0)))) (= (ControlFlow 0 42) 36)) anon18_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 40) 36) anon18_correct)))))
(let ((anon38_Then_correct  (=> (< 0 (|Seq#Length| |s#0|)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 43) 40) anon39_Then_correct) (=> (= (ControlFlow 0 43) 42) anon39_Else_correct))))))
(let ((anon23_correct  (=> (= (ControlFlow 0 22) (- 0 21)) (= (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))  (or (> (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) 0) (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0)))))))
(let ((anon42_Else_correct  (=> (and (> (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) 0) (= (ControlFlow 0 25) 22)) anon23_correct)))
(let ((anon42_Then_correct  (=> (>= 0 (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0))))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 23) 22) anon23_correct)))))
(let ((anon21_correct  (and (=> (= (ControlFlow 0 26) (- 0 29)) (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))) (=> (and (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0))) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 26) 23) anon42_Then_correct) (=> (= (ControlFlow 0 26) 25) anon42_Else_correct))))))))
(let ((anon41_Else_correct  (=> (and (not (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0)))) (= (ControlFlow 0 32) 26)) anon21_correct)))
(let ((anon41_Then_correct  (=> (|Seq#Contains| |s#0| (|Seq#Index| |s#0| (LitInt 0))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 30) 26) anon21_correct)))))
(let ((anon40_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 33) 30) anon41_Then_correct) (=> (= (ControlFlow 0 33) 32) anon41_Else_correct))))))
(let ((anon45_Else_correct true))
(let ((anon45_Then_correct  (=> (< 0 (|Seq#Length| |s#0|)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))) (=> (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 15) (- 0 14)) (=> (< 0 (|Seq#Length| |s#0|)) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0)))))))))))
(let ((anon44_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (=> (= (ControlFlow 0 12) (- 0 11)) (= (> (+ (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) 1) 0) (>= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0))))))))
(let ((anon43_Then_correct true))
(let ((anon40_Else_correct  (=> (=> (< 0 (|Seq#Length| |s#0|)) (or (> (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) 0) (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 0)))) (and (and (and (=> (= (ControlFlow 0 20) 10) anon43_Then_correct) (=> (= (ControlFlow 0 20) 12) anon44_Then_correct)) (=> (= (ControlFlow 0 20) 15) anon45_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon45_Else_correct)))))
(let ((anon37_Then_correct true))
(let ((anon14_correct  (=> (forall ((|x#1| T@U) ) (!  (=> (|Seq#Contains| |s#0| ($Box intType |x#1|)) (>= (U_2_int |x#1|) (LitInt 0)))
 :qid |Calculationsdfy.23:17|
 :skolemid |482|
 :pattern ( (|Seq#Contains| |s#0| ($Box intType |x#1|)))
)) (and (and (and (=> (= (ControlFlow 0 45) 9) anon37_Then_correct) (=> (= (ControlFlow 0 45) 43) anon38_Then_correct)) (=> (= (ControlFlow 0 45) 33) anon40_Then_correct)) (=> (= (ControlFlow 0 45) 20) anon40_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (not (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#0@0|)))) (= (ControlFlow 0 47) 45)) anon14_correct)))
(let ((anon36_Then_correct  (=> (and (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#0@0|))) (= (ControlFlow 0 46) 45)) anon14_correct)))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 48) 46) anon36_Then_correct) (=> (= (ControlFlow 0 48) 47) anon36_Else_correct))))
(let ((anon35_Else_correct true))
(let ((anon34_Else_correct  (=> (<= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0))))) (and (=> (= (ControlFlow 0 58) 48) anon35_Then_correct) (=> (= (ControlFlow 0 58) 8) anon35_Else_correct)))))
(let ((anon32_Then_correct  (=> (> (|Seq#Length| |s#0|) 0) (and (and (=> (= (ControlFlow 0 59) 51) anon33_Then_correct) (=> (= (ControlFlow 0 59) 53) anon34_Then_correct)) (=> (= (ControlFlow 0 59) 58) anon34_Else_correct)))))
(let ((anon32_Else_correct  (=> (>= 0 (|Seq#Length| |s#0|)) (and (=> (= (ControlFlow 0 49) 48) anon35_Then_correct) (=> (= (ControlFlow 0 49) 8) anon35_Else_correct)))))
(let ((anon31_Else_correct  (=> (= (LitInt 2) (LitInt (+ 1 1))) (and (=> (= (ControlFlow 0 60) 59) anon32_Then_correct) (=> (= (ControlFlow 0 60) 49) anon32_Else_correct)))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 1))) (=> (= (U_2_int ($Unbox intType (|Seq#Index| |s#0| (LitInt 0)))) (LitInt 1)) (=> (= (ControlFlow 0 5) (- 0 4)) (= (LitInt 2) (LitInt (+ 1 1)))))))))
(let ((anon30_Then_correct true))
(let ((anon29_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0|))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (=> (= (ControlFlow 0 61) 2) anon29_Then_correct) (=> (= (ControlFlow 0 61) 3) anon30_Then_correct)) (=> (= (ControlFlow 0 61) 5) anon31_Then_correct)) (=> (= (ControlFlow 0 61) 60) anon31_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 62) 61))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
