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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Sum (T@U T@U Int Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.Sum#canCall| (T@U Int Int) Bool)
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|a#0| T@U) (|s#0| Int) (|t#0| Int) ) (!  (=> (or (|_module.__default.Sum#canCall| (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |a#0| (TSeq TInt)) (and (and (<= (LitInt 0) (LitInt |s#0|)) (<= (LitInt |s#0|) (LitInt |t#0|))) (<= (LitInt |t#0|) (|Seq#Length| (Lit SeqType |a#0|))))))) (and (=> (or (not (= (LitInt |s#0|) (LitInt |t#0|))) (not true)) (|_module.__default.Sum#canCall| (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt (- |t#0| 1)))) (= (_module.__default.Sum ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|)) (ite (= (LitInt |s#0|) (LitInt |t#0|)) 0 (+ (_module.__default.Sum ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt (- |t#0| 1))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |a#0|) (LitInt (- |t#0| 1))))))))))
 :qid |SegmentSumdfy.4:16|
 :weight 3
 :skolemid |537|
 :pattern ( (_module.__default.Sum ($LS $ly) (Lit SeqType |a#0|) (LitInt |s#0|) (LitInt |t#0|)))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|a#0@@0| T@U) (|s#0@@0| Int) (|t#0@@0| Int) ) (!  (=> (or (|_module.__default.Sum#canCall| |a#0@@0| |s#0@@0| |t#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |a#0@@0| (TSeq TInt)) (and (and (<= (LitInt 0) |s#0@@0|) (<= |s#0@@0| |t#0@@0|)) (<= |t#0@@0| (|Seq#Length| |a#0@@0|)))))) (and (=> (or (not (= |s#0@@0| |t#0@@0|)) (not true)) (|_module.__default.Sum#canCall| |a#0@@0| |s#0@@0| (- |t#0@@0| 1))) (= (_module.__default.Sum ($LS $ly@@0) |a#0@@0| |s#0@@0| |t#0@@0|) (ite (= |s#0@@0| |t#0@@0|) 0 (+ (_module.__default.Sum $ly@@0 |a#0@@0| |s#0@@0| (- |t#0@@0| 1)) (U_2_int ($Unbox intType (|Seq#Index| |a#0@@0| (- |t#0@@0| 1)))))))))
 :qid |SegmentSumdfy.4:16|
 :skolemid |536|
 :pattern ( (_module.__default.Sum ($LS $ly@@0) |a#0@@0| |s#0@@0| |t#0@@0|))
))))
(assert (forall (($ly@@1 T@U) (|a#0@@1| T@U) (|s#0@@1| Int) (|t#0@@1| Int) ) (! (= (_module.__default.Sum ($LS $ly@@1) |a#0@@1| |s#0@@1| |t#0@@1|) (_module.__default.Sum $ly@@1 |a#0@@1| |s#0@@1| |t#0@@1|))
 :qid |SegmentSumdfy.4:16|
 :skolemid |532|
 :pattern ( (_module.__default.Sum ($LS $ly@@1) |a#0@@1| |s#0@@1| |t#0@@1|))
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
 :skolemid |564|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |p#2@0| () Int)
(declare-fun |q#2@0| () Int)
(declare-fun |n#0@1| () Int)
(declare-fun |a#0@@2| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |k#0@0| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun |s#0@1| () Int)
(declare-fun $LZ () T@U)
(declare-fun |c#0@0| () Int)
(declare-fun |b#0@0| () Int)
(declare-fun |t#0@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |k#0@2| () Int)
(declare-fun |m#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$rhs#0_1@1| () Int)
(declare-fun |c#0@1| () Int)
(declare-fun |t#0@1| () Int)
(declare-fun |k#0@1| () Int)
(declare-fun |m#0@1| () Int)
(declare-fun |s#0@2| () Int)
(declare-fun |$rhs#0_0@1| () Int)
(declare-fun |$rhs#0_0_1@1| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |s#0@0| () Int)
(declare-fun |n#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.MaxSegSum)
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
 (=> (= (ControlFlow 0 0) 90) (let ((anon26_correct true))
(let ((anon49_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |p#2@0|) (<= |p#2@0| |q#2@0|)) (<= |q#2@0| |n#0@1|))) (= (ControlFlow 0 38) 30)) anon26_correct)))
(let ((anon49_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |p#2@0|) (<= |p#2@0| |q#2@0|)) (<= |q#2@0| |n#0@1|)) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |p#2@0|) TInt $Heap) ($IsAlloc intType (int_2_U |q#2@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 31) (- 0 37)) (<= (LitInt 0) |p#2@0|)) (and (=> (= (ControlFlow 0 31) (- 0 36)) (<= |p#2@0| |q#2@0|)) (and (=> (= (ControlFlow 0 31) (- 0 35)) (<= |q#2@0| (|Seq#Length| |a#0@@2|))) (=> (and (and (|_module.__default.Sum#canCall| |a#0@@2| |p#2@0| |q#2@0|) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap) ($IsAlloc intType (int_2_U |m#0@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 31) (- 0 34)) (<= (LitInt 0) |k#0@0|)) (and (=> (= (ControlFlow 0 31) (- 0 33)) (<= |k#0@0| |m#0@0|)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (<= |m#0@0| (|Seq#Length| |a#0@@2|))) (=> (and (|_module.__default.Sum#canCall| |a#0@@2| |k#0@0| |m#0@0|) (= (ControlFlow 0 31) 30)) anon26_correct)))))))))))
(let ((anon48_Else_correct  (=> (not (and (<= (LitInt 0) |p#2@0|) (<= |p#2@0| |q#2@0|))) (and (=> (= (ControlFlow 0 40) 31) anon49_Then_correct) (=> (= (ControlFlow 0 40) 38) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (and (<= (LitInt 0) |p#2@0|) (<= |p#2@0| |q#2@0|)) (and (=> (= (ControlFlow 0 39) 31) anon49_Then_correct) (=> (= (ControlFlow 0 39) 38) anon49_Else_correct)))))
(let ((anon47_Else_correct  (=> (< |p#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 42) 39) anon48_Then_correct) (=> (= (ControlFlow 0 42) 40) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (<= (LitInt 0) |p#2@0|) (and (=> (= (ControlFlow 0 41) 39) anon48_Then_correct) (=> (= (ControlFlow 0 41) 40) anon48_Else_correct)))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 43) 41) anon47_Then_correct) (=> (= (ControlFlow 0 43) 42) anon47_Else_correct))))
(let ((anon46_Else_correct true))
(let ((anon19_correct  (=> (=> (and (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (<= |m#0@0| |n#0@1|)) (|_module.__default.Sum#canCall| |a#0@@2| |k#0@0| |m#0@0|)) (=> (and (and (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (<= |m#0@0| |n#0@1|)) (= |s#0@1| (_module.__default.Sum ($LS $LZ) |a#0@@2| |k#0@0| |m#0@0|))) (and (=> (= (ControlFlow 0 44) 43) anon46_Then_correct) (=> (= (ControlFlow 0 44) 29) anon46_Else_correct))))))
(let ((anon45_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (<= |m#0@0| |n#0@1|))) (= (ControlFlow 0 49) 44)) anon19_correct)))
(let ((anon45_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (<= |m#0@0| |n#0@1|)) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap) ($IsAlloc intType (int_2_U |m#0@0|) TInt $Heap))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (<= (LitInt 0) |k#0@0|)) (and (=> (= (ControlFlow 0 45) (- 0 47)) (<= |k#0@0| |m#0@0|)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (<= |m#0@0| (|Seq#Length| |a#0@@2|))) (=> (and (|_module.__default.Sum#canCall| |a#0@@2| |k#0@0| |m#0@0|) (= (ControlFlow 0 45) 44)) anon19_correct)))))))
(let ((anon44_Else_correct  (=> (not (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|))) (and (=> (= (ControlFlow 0 51) 45) anon45_Then_correct) (=> (= (ControlFlow 0 51) 49) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (and (=> (= (ControlFlow 0 50) 45) anon45_Then_correct) (=> (= (ControlFlow 0 50) 49) anon45_Else_correct)))))
(let ((anon43_Else_correct  (=> (< |k#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 53) 50) anon44_Then_correct) (=> (= (ControlFlow 0 53) 51) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (<= (LitInt 0) |k#0@0|) (and (=> (= (ControlFlow 0 52) 50) anon44_Then_correct) (=> (= (ControlFlow 0 52) 51) anon44_Else_correct)))))
(let ((anon13_correct  (=> (and (forall ((|b#1| Int) ) (!  (=> (and (<= (LitInt 0) |b#1|) (<= |b#1| |n#0@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |b#1| |n#0@1|) (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |549|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1| |n#0@1|))
)) (forall ((|b#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@0|) (<= |b#1@@0| |n#0@1|)) (<= (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@0| |n#0@1|) (_module.__default.Sum ($LS $LZ) |a#0@@2| |c#0@0| |n#0@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |550|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@0| |n#0@1|))
))) (and (=> (= (ControlFlow 0 54) 52) anon43_Then_correct) (=> (= (ControlFlow 0 54) 53) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (not (and (<= (LitInt 0) |b#0@0|) (<= |b#0@0| |n#0@1|))) (= (ControlFlow 0 62) 54)) anon13_correct)))
(let ((anon42_Then_correct  (=> (and (and (and (<= (LitInt 0) |b#0@0|) (<= |b#0@0| |n#0@1|)) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |b#0@0|) TInt $Heap) ($IsAlloc intType (int_2_U |n#0@1|) TInt $Heap))) (and (=> (= (ControlFlow 0 55) (- 0 61)) (<= (LitInt 0) |b#0@0|)) (and (=> (= (ControlFlow 0 55) (- 0 60)) (<= |b#0@0| |n#0@1|)) (and (=> (= (ControlFlow 0 55) (- 0 59)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (=> (and (and (|_module.__default.Sum#canCall| |a#0@@2| |b#0@0| |n#0@1|) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |c#0@0|) TInt $Heap) ($IsAlloc intType (int_2_U |n#0@1|) TInt $Heap))) (and (=> (= (ControlFlow 0 55) (- 0 58)) (<= (LitInt 0) |c#0@0|)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (<= |c#0@0| |n#0@1|)) (and (=> (= (ControlFlow 0 55) (- 0 56)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (=> (and (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|) (= (ControlFlow 0 55) 54)) anon13_correct)))))))))))
(let ((anon41_Else_correct  (=> (< |b#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 64) 55) anon42_Then_correct) (=> (= (ControlFlow 0 64) 62) anon42_Else_correct)))))
(let ((anon41_Then_correct  (=> (<= (LitInt 0) |b#0@0|) (and (=> (= (ControlFlow 0 63) 55) anon42_Then_correct) (=> (= (ControlFlow 0 63) 62) anon42_Else_correct)))))
(let ((anon40_Then_correct  (and (=> (= (ControlFlow 0 65) 63) anon41_Then_correct) (=> (= (ControlFlow 0 65) 64) anon41_Else_correct))))
(let ((anon40_Else_correct true))
(let ((anon8_correct  (=> (=> (and (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|)) (=> (and (and (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (= |t#0@0| (_module.__default.Sum ($LS $LZ) |a#0@@2| |c#0@0| |n#0@1|))) (and (=> (= (ControlFlow 0 66) 65) anon40_Then_correct) (=> (= (ControlFlow 0 66) 28) anon40_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (<= |n#0@1| (|Seq#Length| |a#0@@2|)))) (= (ControlFlow 0 71) 66)) anon8_correct)))
(let ((anon39_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and ($IsAlloc intType (int_2_U |c#0@0|) TInt $Heap) ($IsAlloc intType (int_2_U |n#0@1|) TInt $Heap))) (and (=> (= (ControlFlow 0 67) (- 0 70)) (<= (LitInt 0) |c#0@0|)) (and (=> (= (ControlFlow 0 67) (- 0 69)) (<= |c#0@0| |n#0@1|)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (=> (and (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|) (= (ControlFlow 0 67) 66)) anon8_correct)))))))
(let ((anon38_Else_correct  (=> (not (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|))) (and (=> (= (ControlFlow 0 73) 67) anon39_Then_correct) (=> (= (ControlFlow 0 73) 71) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (and (=> (= (ControlFlow 0 72) 67) anon39_Then_correct) (=> (= (ControlFlow 0 72) 71) anon39_Else_correct)))))
(let ((anon37_Else_correct  (=> (< |c#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 75) 72) anon38_Then_correct) (=> (= (ControlFlow 0 75) 73) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (<= (LitInt 0) |c#0@0|) (and (=> (= (ControlFlow 0 74) 72) anon38_Then_correct) (=> (= (ControlFlow 0 74) 73) anon38_Else_correct)))))
(let ((anon36_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 76) 74) anon37_Then_correct) (=> (= (ControlFlow 0 76) 75) anon37_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 22) (- 0 25)) (<= (LitInt 0) |k#0@2|)) (=> (<= (LitInt 0) |k#0@2|) (and (=> (= (ControlFlow 0 22) (- 0 24)) (<= |k#0@2| |m#0@2|)) (=> (<= |k#0@2| |m#0@2|) (and (=> (= (ControlFlow 0 22) (- 0 23)) (<= |m#0@2| (|Seq#Length| |a#0@@2|))) (=> (<= |m#0@2| (|Seq#Length| |a#0@@2|)) (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((|p#1| Int) (|q#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#1|) (<= |p#1| |q#1|)) (<= |q#1| (|Seq#Length| |a#0@@2|))) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#1| |q#1|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@2| |m#0@2|)))
 :qid |SegmentSumdfy.12:18|
 :skolemid |546|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#1| |q#1|))
)))))))))))
(let ((anon50_Then_correct  (=> (and (and (<= (|Seq#Length| |a#0@@2|) |n#0@1|) (= |k#0@2| |k#0@0|)) (and (= |m#0@2| |m#0@0|) (= (ControlFlow 0 26) 22))) GeneratedUnifiedExit_correct)))
(let ((anon34_correct  (and (=> (= (ControlFlow 0 3) (- 0 14)) (or (<= 0 |$decr$loop#00@1|) (= (- (|Seq#Length| |a#0@@2|) |$rhs#0_1@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (|Seq#Length| |a#0@@2|) |$rhs#0_1@1|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 13)) (< (- (|Seq#Length| |a#0@@2|) |$rhs#0_1@1|) |$decr$loop#00@1|)) (=> (< (- (|Seq#Length| |a#0@@2|) |$rhs#0_1@1|) |$decr$loop#00@1|) (=> (=> (and (and (<= (LitInt 0) |c#0@1|) (<= |c#0@1| |$rhs#0_1@1|)) (<= |$rhs#0_1@1| (|Seq#Length| |a#0@@2|))) (and (|_module.__default.Sum#canCall| |a#0@@2| |c#0@1| |$rhs#0_1@1|) (=> (= |t#0@1| (_module.__default.Sum ($LS $LZ) |a#0@@2| |c#0@1| |$rhs#0_1@1|)) (and (forall ((|b#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@1|) (<= |b#1@@1| |$rhs#0_1@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |b#1@@1| |$rhs#0_1@1|) (|_module.__default.Sum#canCall| |a#0@@2| |c#0@1| |$rhs#0_1@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |561|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@1| |$rhs#0_1@1|))
)) (=> (forall ((|b#1@@2| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@2|) (<= |b#1@@2| |$rhs#0_1@1|)) (<= (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@2| |$rhs#0_1@1|) (_module.__default.Sum ($LS $LZ) |a#0@@2| |c#0@1| |$rhs#0_1@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |563|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@2| |$rhs#0_1@1|))
)) (=> (and (and (<= (LitInt 0) |k#0@1|) (<= |k#0@1| |m#0@1|)) (<= |m#0@1| |$rhs#0_1@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |k#0@1| |m#0@1|) (=> (= |s#0@2| (_module.__default.Sum ($LS $LZ) |a#0@@2| |k#0@1| |m#0@1|)) (forall ((|p#3| Int) (|q#3| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3|) (<= |p#3| |q#3|)) (<= |q#3| |$rhs#0_1@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |p#3| |q#3|) (|_module.__default.Sum#canCall| |a#0@@2| |k#0@1| |m#0@1|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |562|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |p#3| |q#3|))
)))))))))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (=> |$w$loop#0@0| (<= (LitInt 0) |c#0@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |c#0@1|)) (and (=> (= (ControlFlow 0 3) (- 0 11)) (=> |$w$loop#0@0| (<= |c#0@1| |$rhs#0_1@1|))) (=> (=> |$w$loop#0@0| (<= |c#0@1| |$rhs#0_1@1|)) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> |$w$loop#0@0| (<= |$rhs#0_1@1| (|Seq#Length| |a#0@@2|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#0_1@1| (|Seq#Length| |a#0@@2|))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (=> |$w$loop#0@0| (= |t#0@1| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@1| |$rhs#0_1@1|)))) (=> (=> |$w$loop#0@0| (= |t#0@1| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@1| |$rhs#0_1@1|))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> |$w$loop#0@0| (forall ((|b#1@@3| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@3|) (<= |b#1@@3| |$rhs#0_1@1|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@3| |$rhs#0_1@1|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@1| |$rhs#0_1@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |552|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@3| |$rhs#0_1@1|))
)))) (=> (=> |$w$loop#0@0| (forall ((|b#1@@4| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@4|) (<= |b#1@@4| |$rhs#0_1@1|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@4| |$rhs#0_1@1|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@1| |$rhs#0_1@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |552|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@4| |$rhs#0_1@1|))
))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> |$w$loop#0@0| (<= (LitInt 0) |k#0@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |k#0@1|)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (<= |k#0@1| |m#0@1|))) (=> (=> |$w$loop#0@0| (<= |k#0@1| |m#0@1|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (<= |m#0@1| |$rhs#0_1@1|))) (=> (=> |$w$loop#0@0| (<= |m#0@1| |$rhs#0_1@1|)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (= |s#0@2| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@1| |m#0@1|)))) (=> (=> |$w$loop#0@0| (= |s#0@2| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@1| |m#0@1|))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (forall ((|p#3@@0| Int) (|q#3@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@0|) (<= |p#3@@0| |q#3@@0|)) (<= |q#3@@0| |$rhs#0_1@1|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@0| |q#3@@0|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@1| |m#0@1|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |557|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@0| |q#3@@0|))
)))))))))))))))))))))))))))))
(let ((anon52_Else_correct  (=> (<= |$rhs#0_0@1| |s#0@1|) (=> (and (= |k#0@1| |k#0@0|) (= |m#0@1| |m#0@0|)) (=> (and (and (= |s#0@2| |s#0@1|) (= |c#0@1| |c#0@0|)) (and (= |t#0@1| |$rhs#0_0@1|) (= (ControlFlow 0 17) 3))) anon34_correct)))))
(let ((anon52_Then_correct  (=> (< |s#0@1| |$rhs#0_0@1|) (=> (and (= |k#0@1| |c#0@0|) (= |m#0@1| |$rhs#0_1@1|)) (=> (and (and (= |s#0@2| |$rhs#0_0@1|) (= |c#0@1| |c#0@0|)) (and (= |t#0@1| |$rhs#0_0@1|) (= (ControlFlow 0 16) 3))) anon34_correct)))))
(let ((anon51_Else_correct  (=> (<= 0 |$rhs#0_0@1|) (and (=> (= (ControlFlow 0 18) 16) anon52_Then_correct) (=> (= (ControlFlow 0 18) 17) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (and (and (and (< |$rhs#0_0@1| 0) (= |$rhs#0_0_1@1| (LitInt 0))) (and (= |k#0@1| |k#0@0|) (= |m#0@1| |m#0@0|))) (and (and (= |s#0@2| |s#0@1|) (= |c#0@1| |$rhs#0_1@1|)) (and (= |t#0@1| |$rhs#0_0_1@1|) (= (ControlFlow 0 15) 3)))) anon34_correct)))
(let ((anon50_Else_correct  (=> (and (< |n#0@1| (|Seq#Length| |a#0@@2|)) (= |$decr$loop#00@1| (- (|Seq#Length| |a#0@@2|) |n#0@1|))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (<= 0 |n#0@1|) (< |n#0@1| (|Seq#Length| |a#0@@2|)))) (=> (and (<= 0 |n#0@1|) (< |n#0@1| (|Seq#Length| |a#0@@2|))) (=> (and (= |$rhs#0_0@1| (+ |t#0@0| (U_2_int ($Unbox intType (|Seq#Index| |a#0@@2| |n#0@1|))))) (= |$rhs#0_1@1| (+ |n#0@1| 1))) (and (=> (= (ControlFlow 0 19) 15) anon51_Then_correct) (=> (= (ControlFlow 0 19) 18) anon51_Else_correct))))))))
(let ((anon36_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 27) 26) anon50_Then_correct) (=> (= (ControlFlow 0 27) 19) anon50_Else_correct)))))
(let ((anon35_LoopBody_correct  (and (=> (= (ControlFlow 0 77) 76) anon36_Then_correct) (=> (= (ControlFlow 0 77) 27) anon36_Else_correct))))
(let ((anon35_LoopDone_correct true))
(let ((anon35_LoopHead_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (<= 0 |k#0@0|) (<= 0 |m#0@0|)) (not false)) (= |$rhs#0@0| 0)) (= |$rhs#1@0| 0)) (<= 0 |s#0@1|)) (<= 0 |n#0@1|)) (<= 0 |c#0@0|)) (<= 0 |t#0@0|)) (= |$rhs#2@0| 0)) (= |$rhs#3@0| 0)) (and (and (=> |$w$loop#0@0| (=> (and (and (<= (LitInt 0) |c#0@0|) (<= |c#0@0| |n#0@1|)) (<= |n#0@1| (|Seq#Length| |a#0@@2|))) (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|))) (=> |$w$loop#0@0| (<= (LitInt 0) |c#0@0|))) (and (=> |$w$loop#0@0| (<= |c#0@0| |n#0@1|)) (=> |$w$loop#0@0| (<= |n#0@1| (|Seq#Length| |a#0@@2|)))))) (and (and (and (and (=> |$w$loop#0@0| (= |t#0@0| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@0| |n#0@1|))) (=> |$w$loop#0@0| (forall ((|b#1@@5| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@5|) (<= |b#1@@5| |n#0@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |b#1@@5| |n#0@1|) (|_module.__default.Sum#canCall| |a#0@@2| |c#0@0| |n#0@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |551|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@5| |n#0@1|))
)))) (and (=> |$w$loop#0@0| (forall ((|b#1@@6| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@6|) (<= |b#1@@6| |n#0@1|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@6| |n#0@1|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |c#0@0| |n#0@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |552|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@6| |n#0@1|))
))) (=> |$w$loop#0@0| (forall ((|b#1@@7| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@7|) (<= |b#1@@7| |n#0@1|)) (<= (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@7| |n#0@1|) (_module.__default.Sum ($LS $LZ) |a#0@@2| |c#0@0| |n#0@1|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |553|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |b#1@@7| |n#0@1|))
))))) (and (and (=> |$w$loop#0@0| (=> (and (and (<= (LitInt 0) |k#0@0|) (<= |k#0@0| |m#0@0|)) (<= |m#0@0| |n#0@1|)) (|_module.__default.Sum#canCall| |a#0@@2| |k#0@0| |m#0@0|))) (=> |$w$loop#0@0| (<= (LitInt 0) |k#0@0|))) (and (=> |$w$loop#0@0| (<= |k#0@0| |m#0@0|)) (=> |$w$loop#0@0| (<= |m#0@0| |n#0@1|))))) (and (and (and (=> |$w$loop#0@0| (= |s#0@1| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@0| |m#0@0|))) (=> |$w$loop#0@0| (forall ((|p#3@@1| Int) (|q#3@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@1|) (<= |p#3@@1| |q#3@@1|)) (<= |q#3@@1| |n#0@1|)) (and (|_module.__default.Sum#canCall| |a#0@@2| |p#3@@1| |q#3@@1|) (|_module.__default.Sum#canCall| |a#0@@2| |k#0@0| |m#0@0|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |556|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |p#3@@1| |q#3@@1|))
)))) (and (=> |$w$loop#0@0| (forall ((|p#3@@2| Int) (|q#3@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@2|) (<= |p#3@@2| |q#3@@2|)) (<= |q#3@@2| |n#0@1|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@2| |q#3@@2|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |k#0@0| |m#0@0|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |557|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@2| |q#3@@2|))
))) (=> |$w$loop#0@0| (forall ((|p#3@@3| Int) (|q#3@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@3|) (<= |p#3@@3| |q#3@@3|)) (<= |q#3@@3| |n#0@1|)) (<= (_module.__default.Sum ($LS $LZ) |a#0@@2| |p#3@@3| |q#3@@3|) (_module.__default.Sum ($LS $LZ) |a#0@@2| |k#0@0| |m#0@0|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |558|
 :pattern ( (_module.__default.Sum ($LS $LZ) |a#0@@2| |p#3@@3| |q#3@@3|))
))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |SegmentSumdfy.18:3|
 :skolemid |559|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |SegmentSumdfy.18:3|
 :skolemid |560|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- (|Seq#Length| |a#0@@2|) |n#0@1|) |$decr_init$loop#00@0|)))))) (and (=> (= (ControlFlow 0 78) 1) anon35_LoopDone_correct) (=> (= (ControlFlow 0 78) 77) anon35_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#0@0| (LitInt 0))) (and (= |$rhs#1@0| (LitInt 0)) (= |s#0@0| (LitInt 0)))) (and (and (= |n#0@0| (LitInt 0)) (= |$rhs#2@0| (LitInt 0))) (and (= |$rhs#3@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- (|Seq#Length| |a#0@@2|) |n#0@0|))))) (and (=> (= (ControlFlow 0 79) (- 0 89)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|)) (and (=> (= (ControlFlow 0 79) (- 0 88)) (=> |$w$loop#0@0| (<= |$rhs#2@0| |n#0@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#2@0| |n#0@0|)) (and (=> (= (ControlFlow 0 79) (- 0 87)) (=> |$w$loop#0@0| (<= |n#0@0| (|Seq#Length| |a#0@@2|)))) (=> (=> |$w$loop#0@0| (<= |n#0@0| (|Seq#Length| |a#0@@2|))) (and (=> (= (ControlFlow 0 79) (- 0 86)) (=> |$w$loop#0@0| (= |$rhs#3@0| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#2@0| |n#0@0|)))) (=> (=> |$w$loop#0@0| (= |$rhs#3@0| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#2@0| |n#0@0|))) (and (=> (= (ControlFlow 0 79) (- 0 85)) (=> |$w$loop#0@0| (forall ((|b#1@@8| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@8|) (<= |b#1@@8| |n#0@0|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@8| |n#0@0|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#2@0| |n#0@0|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |552|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@8| |n#0@0|))
)))) (=> (=> |$w$loop#0@0| (forall ((|b#1@@9| Int) ) (!  (=> (and (<= (LitInt 0) |b#1@@9|) (<= |b#1@@9| |n#0@0|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@9| |n#0@0|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#2@0| |n#0@0|)))
 :qid |SegmentSumdfy.20:22|
 :skolemid |552|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |b#1@@9| |n#0@0|))
))) (and (=> (= (ControlFlow 0 79) (- 0 84)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|)) (and (=> (= (ControlFlow 0 79) (- 0 83)) (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (=> |$w$loop#0@0| (<= |$rhs#1@0| |n#0@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#1@0| |n#0@0|)) (and (=> (= (ControlFlow 0 79) (- 0 81)) (=> |$w$loop#0@0| (= |s#0@0| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#0@0| |$rhs#1@0|)))) (=> (=> |$w$loop#0@0| (= |s#0@0| (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#0@0| |$rhs#1@0|))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (=> |$w$loop#0@0| (forall ((|p#3@@4| Int) (|q#3@@4| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@4|) (<= |p#3@@4| |q#3@@4|)) (<= |q#3@@4| |n#0@0|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@4| |q#3@@4|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#0@0| |$rhs#1@0|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |557|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@4| |q#3@@4|))
)))) (=> (=> |$w$loop#0@0| (forall ((|p#3@@5| Int) (|q#3@@5| Int) ) (!  (=> (and (and (<= (LitInt 0) |p#3@@5|) (<= |p#3@@5| |q#3@@5|)) (<= |q#3@@5| |n#0@0|)) (<= (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@5| |q#3@@5|) (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |$rhs#0@0| |$rhs#1@0|)))
 :qid |SegmentSumdfy.22:22|
 :skolemid |557|
 :pattern ( (_module.__default.Sum ($LS ($LS $LZ)) |a#0@@2| |p#3@@5| |q#3@@5|))
))) (=> (= (ControlFlow 0 79) 78) anon35_LoopHead_correct))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |a#0@@2| (TSeq TInt)) ($IsAlloc SeqType |a#0@@2| (TSeq TInt) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 90) 79))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
