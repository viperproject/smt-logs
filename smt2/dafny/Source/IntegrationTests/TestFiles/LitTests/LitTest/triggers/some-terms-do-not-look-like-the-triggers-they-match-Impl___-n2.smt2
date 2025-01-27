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
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
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
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@2) i))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@7)  (or (|Seq#Contains| s0@@0 x@@7) (|Seq#Contains| s1@@0 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@7))
)))
(assert (forall ((s@@3 T@U) (x@@8 T@U) ) (! (= (|Seq#Contains| s@@3 x@@8) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@8))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@3 x@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@4 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@9))
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
 :skolemid |559|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@4)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@1 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@1))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |x#0_0_0_0@0| () Int)
(declare-fun |u1#0@0| () Bool)
(declare-fun |u0#0@0| () Bool)
(declare-fun |c1#0@0| () Bool)
(declare-fun |c0#0@0| () Bool)
(declare-fun |x#7@0| () Int)
(declare-fun |x#5@0| () Int)
(declare-fun |x#3@0| () Int)
(declare-fun |x#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.RewriteSeq)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon38_Else_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#0_0_0_0@0|)))) (=> (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#0_0_0_0@0|))) (=> (= (ControlFlow 0 25) (- 0 24)) (< |x#0_0_0_0@0| 200))))))
(let ((anon38_Then_correct true))
(let ((anon13_correct  (=> (or (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#0_0_0_0@0|))) (|Seq#Contains| |t#0| ($Box intType (int_2_U |x#0_0_0_0@0|)))) (and (=> (= (ControlFlow 0 27) 23) anon38_Then_correct) (=> (= (ControlFlow 0 27) 25) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#0_0_0_0@0|))) (= (ControlFlow 0 29) 27)) anon13_correct)))
(let ((anon37_Then_correct  (=> (and (not (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#0_0_0_0@0|)))) (= (ControlFlow 0 28) 27)) anon13_correct)))
(let ((anon36_Then_correct  (and (=> (= (ControlFlow 0 30) 28) anon37_Then_correct) (=> (= (ControlFlow 0 30) 29) anon37_Else_correct))))
(let ((anon21_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> |u1#0@0| |u0#0@0|)) (=> (and (=> |u1#0@0| |u0#0@0|) (= (ControlFlow 0 16) (- 0 15))) (= |u0#0@0| |u1#0@0|)))))
(let ((anon39_Else_correct  (=> (and (not |u1#0@0|) (= (ControlFlow 0 19) 16)) anon21_correct)))
(let ((anon39_Then_correct  (=> (and |u1#0@0| (= (ControlFlow 0 18) 16)) anon21_correct)))
(let ((anon36_Else_correct  (=> (forall ((|x#0_0_0_1| T@U) ) (!  (=> (or (|Seq#Contains| |s#0| ($Box intType |x#0_0_0_1|)) (|Seq#Contains| |t#0| ($Box intType |x#0_0_0_1|))) (< (U_2_int |x#0_0_0_1|) 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.110:14|
 :skolemid |533|
 :pattern ( (|Seq#Contains| |t#0| ($Box intType |x#0_0_0_1|)))
 :pattern ( (|Seq#Contains| |s#0| ($Box intType |x#0_0_0_1|)))
)) (and (=> (= (ControlFlow 0 21) (- 0 22)) |u1#0@0|) (=> |u1#0@0| (and (=> (= (ControlFlow 0 21) 18) anon39_Then_correct) (=> (= (ControlFlow 0 21) 19) anon39_Else_correct)))))))
(let ((anon35_Then_correct  (=> |u0#0@0| (and (=> (= (ControlFlow 0 31) 30) anon36_Then_correct) (=> (= (ControlFlow 0 31) 21) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (not |u0#0@0|) (and (=> (= (ControlFlow 0 20) 18) anon39_Then_correct) (=> (= (ControlFlow 0 20) 19) anon39_Else_correct)))))
(let ((anon34_Then_correct  (and (=> (= (ControlFlow 0 32) 31) anon35_Then_correct) (=> (= (ControlFlow 0 32) 20) anon35_Else_correct))))
(let ((anon28_correct  (=> (and (= |c1#0@0| (forall ((|x#6| Int) ) (!  (=> (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#6|))) (< |x#6| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.122:26|
 :skolemid |535|
 :pattern ( (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U 2))) ($Box intType (int_2_U 3))) ($Box intType (int_2_U 5))) ($Box intType (int_2_U |x#6|))))
))) (= (ControlFlow 0 6) (- 0 5))) (= |c0#0@0| |c1#0@0|))))
(let ((anon43_Else_correct  (=> (and (not (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#7@0|)))) (= (ControlFlow 0 8) 6)) anon28_correct)))
(let ((anon43_Then_correct  (=> (and (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#7@0|))) (= (ControlFlow 0 7) 6)) anon28_correct)))
(let ((anon42_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon43_Then_correct) (=> (= (ControlFlow 0 9) 8) anon43_Else_correct))))
(let ((anon42_Else_correct true))
(let ((anon25_correct  (=> (= |c0#0@0| (forall ((|x#4| Int) ) (!  (=> (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#4|))) (< |x#4| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.121:26|
 :skolemid |534|
 :pattern ( (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U 2))) ($Box intType (int_2_U 3))) ($Box intType (int_2_U 5))) ($Box intType (int_2_U |x#4|))))
))) (and (=> (= (ControlFlow 0 10) 9) anon42_Then_correct) (=> (= (ControlFlow 0 10) 4) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (not (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#5@0|)))) (= (ControlFlow 0 12) 10)) anon25_correct)))
(let ((anon41_Then_correct  (=> (and (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U |x#5@0|))) (= (ControlFlow 0 11) 10)) anon25_correct)))
(let ((anon40_Then_correct  (and (=> (= (ControlFlow 0 13) 11) anon41_Then_correct) (=> (= (ControlFlow 0 13) 12) anon41_Else_correct))))
(let ((anon40_Else_correct true))
(let ((anon34_Else_correct  (=> (= |u0#0@0| |u1#0@0|) (and (=> (= (ControlFlow 0 14) 13) anon40_Then_correct) (=> (= (ControlFlow 0 14) 3) anon40_Else_correct)))))
(let ((anon8_correct  (=> (= |u1#0@0| (forall ((|x#2| Int) ) (!  (=> (or (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#2|))) (|Seq#Contains| |t#0| ($Box intType (int_2_U |x#2|)))) (< |x#2| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.107:26|
 :skolemid |532|
 :pattern ( (|Seq#Contains| |t#0| ($Box intType (int_2_U |x#2|))))
 :pattern ( (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#2|))))
))) (and (=> (= (ControlFlow 0 33) 32) anon34_Then_correct) (=> (= (ControlFlow 0 33) 14) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (not (or (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#3@0|))) (|Seq#Contains| |t#0| ($Box intType (int_2_U |x#3@0|))))) (= (ControlFlow 0 35) 33)) anon8_correct)))
(let ((anon33_Then_correct  (=> (and (or (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#3@0|))) (|Seq#Contains| |t#0| ($Box intType (int_2_U |x#3@0|)))) (= (ControlFlow 0 34) 33)) anon8_correct)))
(let ((anon32_Else_correct  (=> (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#3@0|))) (and (=> (= (ControlFlow 0 37) 34) anon33_Then_correct) (=> (= (ControlFlow 0 37) 35) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (not (|Seq#Contains| |s#0| ($Box intType (int_2_U |x#3@0|)))) (and (=> (= (ControlFlow 0 36) 34) anon33_Then_correct) (=> (= (ControlFlow 0 36) 35) anon33_Else_correct)))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 38) 36) anon32_Then_correct) (=> (= (ControlFlow 0 38) 37) anon32_Else_correct))))
(let ((anon31_Else_correct true))
(let ((anon3_correct  (=> (= |u0#0@0| (forall ((|x#0| Int) ) (!  (=> (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#0|))) (< |x#0| 200))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.106:26|
 :skolemid |531|
 :pattern ( (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#0|))))
))) (and (=> (= (ControlFlow 0 39) 38) anon31_Then_correct) (=> (= (ControlFlow 0 39) 2) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#1@0|)))) (= (ControlFlow 0 41) 39)) anon3_correct)))
(let ((anon30_Then_correct  (=> (and (|Seq#Contains| (|Seq#Append| |s#0| |t#0|) ($Box intType (int_2_U |x#1@0|))) (= (ControlFlow 0 40) 39)) anon3_correct)))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 42) 40) anon30_Then_correct) (=> (= (ControlFlow 0 42) 41) anon30_Else_correct))))
(let ((anon29_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 43) 42) anon29_Then_correct) (=> (= (ControlFlow 0 43) 1) anon29_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap))) (and (and ($Is SeqType |t#0| (TSeq TInt)) ($IsAlloc SeqType |t#0| (TSeq TInt) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 44) 43)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
