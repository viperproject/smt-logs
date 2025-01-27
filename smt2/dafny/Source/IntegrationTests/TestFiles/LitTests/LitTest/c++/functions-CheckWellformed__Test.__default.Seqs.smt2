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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Test.__default.Seqs (T@U T@U Int T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Test.__default.Seqs#canCall| (T@U T@U Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
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
(assert (distinct TagSeq alloc)
)
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |570|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |568|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Test._default.Seqs$T T@U) (|s#0| T@U) (|x#0| Int) (|default_val#0| T@U) ) (!  (=> (or (|Test.__default.Seqs#canCall| Test._default.Seqs$T (Lit SeqType |s#0|) (LitInt |x#0|) |default_val#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |s#0| (TSeq Test._default.Seqs$T)) (and (<= (LitInt 0) |x#0|) (< |x#0| 4294967296))) ($IsBox |default_val#0| Test._default.Seqs$T)) (< (|Seq#Length| (Lit SeqType |s#0|)) 1000)))) (= (Test.__default.Seqs Test._default.Seqs$T (Lit SeqType |s#0|) (LitInt |x#0|) |default_val#0|) (ite (> (|Seq#Length| (Lit SeqType |s#0|)) |x#0|) (|Seq#Index| (Lit SeqType |s#0|) (LitInt |x#0|)) |default_val#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1094|
 :pattern ( (Test.__default.Seqs Test._default.Seqs$T (Lit SeqType |s#0|) (LitInt |x#0|) |default_val#0|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |579|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (Test._default.Seqs$T@@0 T@U) (|s#0@@0| T@U) (|x#0@@0| Int) (|default_val#0@@0| T@U) ) (!  (=> (and (or (|Test.__default.Seqs#canCall| Test._default.Seqs$T@@0 |s#0@@0| |x#0@@0| |default_val#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |s#0@@0| (TSeq Test._default.Seqs$T@@0)) ($IsAlloc SeqType |s#0@@0| (TSeq Test._default.Seqs$T@@0) $Heap)) (and (<= (LitInt 0) |x#0@@0|) (< |x#0@@0| 4294967296))) (and ($IsBox |default_val#0@@0| Test._default.Seqs$T@@0) ($IsAllocBox |default_val#0@@0| Test._default.Seqs$T@@0 $Heap))) (< (|Seq#Length| |s#0@@0|) 1000)))) ($IsGoodHeap $Heap)) ($IsAllocBox (Test.__default.Seqs Test._default.Seqs$T@@0 |s#0@@0| |x#0@@0| |default_val#0@@0|) Test._default.Seqs$T@@0 $Heap))
 :qid |functionsdfy.32:12|
 :skolemid |1091|
 :pattern ( ($IsAllocBox (Test.__default.Seqs Test._default.Seqs$T@@0 |s#0@@0| |x#0@@0| |default_val#0@@0|) Test._default.Seqs$T@@0 $Heap))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Test._default.Seqs$T@@1 T@U) (|s#0@@1| T@U) (|x#0@@1| Int) (|default_val#0@@1| T@U) ) (!  (=> (or (|Test.__default.Seqs#canCall| Test._default.Seqs$T@@1 (Lit SeqType |s#0@@1|) (LitInt |x#0@@1|) (Lit BoxType |default_val#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |s#0@@1| (TSeq Test._default.Seqs$T@@1)) (and (<= (LitInt 0) |x#0@@1|) (< |x#0@@1| 4294967296))) ($IsBox |default_val#0@@1| Test._default.Seqs$T@@1)) (< (|Seq#Length| (Lit SeqType |s#0@@1|)) 1000)))) (= (Test.__default.Seqs Test._default.Seqs$T@@1 (Lit SeqType |s#0@@1|) (LitInt |x#0@@1|) (Lit BoxType |default_val#0@@1|)) (ite (> (|Seq#Length| (Lit SeqType |s#0@@1|)) |x#0@@1|) (|Seq#Index| (Lit SeqType |s#0@@1|) (LitInt |x#0@@1|)) |default_val#0@@1|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1095|
 :pattern ( (Test.__default.Seqs Test._default.Seqs$T@@1 (Lit SeqType |s#0@@1|) (LitInt |x#0@@1|) (Lit BoxType |default_val#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Test._default.Seqs$T@@2 T@U) (|s#0@@2| T@U) (|x#0@@2| Int) (|default_val#0@@2| T@U) ) (!  (=> (or (|Test.__default.Seqs#canCall| Test._default.Seqs$T@@2 |s#0@@2| |x#0@@2| |default_val#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |s#0@@2| (TSeq Test._default.Seqs$T@@2)) (and (<= (LitInt 0) |x#0@@2|) (< |x#0@@2| 4294967296))) ($IsBox |default_val#0@@2| Test._default.Seqs$T@@2)) (< (|Seq#Length| |s#0@@2|) 1000)))) (= (Test.__default.Seqs Test._default.Seqs$T@@2 |s#0@@2| |x#0@@2| |default_val#0@@2|) (ite (> (|Seq#Length| |s#0@@2|) |x#0@@2|) (|Seq#Index| |s#0@@2| |x#0@@2|) |default_val#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( (Test.__default.Seqs Test._default.Seqs$T@@2 |s#0@@2| |x#0@@2| |default_val#0@@2|))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |592|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Test._default.Seqs$T@@3 T@U) (|s#0@@3| T@U) (|x#0@@3| Int) (|default_val#0@@3| T@U) ) (!  (=> (or (|Test.__default.Seqs#canCall| Test._default.Seqs$T@@3 |s#0@@3| |x#0@@3| |default_val#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |s#0@@3| (TSeq Test._default.Seqs$T@@3)) (and (<= (LitInt 0) |x#0@@3|) (< |x#0@@3| 4294967296))) ($IsBox |default_val#0@@3| Test._default.Seqs$T@@3)) (< (|Seq#Length| |s#0@@3|) 1000)))) ($IsBox (Test.__default.Seqs Test._default.Seqs$T@@3 |s#0@@3| |x#0@@3| |default_val#0@@3|) Test._default.Seqs$T@@3))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( (Test.__default.Seqs Test._default.Seqs$T@@3 |s#0@@3| |x#0@@3| |default_val#0@@3|))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |591|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |774|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |626|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |627|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |560|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |561|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |578|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |1134|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx)) bx) ($Is SeqType ($Unbox SeqType bx) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |588|
 :pattern ( ($IsBox bx (TSeq t@@3)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |571|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |569|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |775|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |606|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |607|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@4| () T@U)
(declare-fun |x#0@@4| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Test._default.Seqs$T@@4 () T@U)
(declare-fun |default_val#0@@4| () T@U)
(set-info :boogie-vc-id CheckWellformed$$Test.__default.Seqs)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (> (|Seq#Length| |s#0@@4|) |x#0@@4|) (= (ControlFlow 0 3) (- 0 2))) (and (<= 0 |x#0@@4|) (< |x#0@@4| (|Seq#Length| |s#0@@4|))))))
(let ((anon7_Else_correct  (=> (= |newtype$check#0@0| (|Seq#Length| |s#0@@4|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |newtype$check#1@0| (|Seq#Length| |s#0@@4|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (and (=> (= (ControlFlow 0 5) 3) anon8_Then_correct) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (< (|Seq#Length| |s#0@@4|) 1000)) (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 5) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is SeqType |s#0@@4| (TSeq Test._default.Seqs$T@@4))) (=> (and (and (and (<= (LitInt 0) |x#0@@4|) (< |x#0@@4| 4294967296)) ($IsBox |default_val#0@@4| Test._default.Seqs$T@@4)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
