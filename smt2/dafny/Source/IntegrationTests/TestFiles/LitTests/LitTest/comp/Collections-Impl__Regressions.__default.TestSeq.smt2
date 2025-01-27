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
(declare-fun Tagclass.Regressions.uint32 () T@U)
(declare-fun tytagFamily$uint32 () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Regressions.uint32 () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
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
(declare-fun nat_from_bv3 ((_ BitVec 3)) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass.Regressions.uint32 tytagFamily$uint32)
)
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass.Regressions.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |4476|
 :pattern ( ($IsAlloc intType |i#0| Tclass.Regressions.uint32 $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s i v) n) (|Seq#Index| s n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |4205|
 :pattern ( (|Seq#Index| (|Seq#Update| s i v) n))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3993|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3991|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 3))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |4234|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4002|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |4200|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4015|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((b (_ BitVec 3)) ) (!  (and (and (<= 0 (nat_from_bv3 b)) (< (nat_from_bv3 b) 8)) (= (nat_from_bv3 b) (bv2int b)))
 :qid |unknown.0:0|
 :skolemid |4322|
 :pattern ( (nat_from_bv3 b))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Regressions.uint32) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass.Regressions.uint32)))
 :qid |unknown.0:0|
 :skolemid |4468|
 :pattern ( ($IsBox bx@@0 Tclass.Regressions.uint32))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@2 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0) v@@2)) (=> (or (not (= i@@0 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0) (|Seq#Index| s@@2 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |4201|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@2) i@@0))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4014|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |4197|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@4 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |4049|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |4050|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3983|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3984|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4001|
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
 :skolemid |5160|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) (v@@5 T@U) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Update| s@@4 i@@2 v@@5)) (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |4204|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@4 i@@2 v@@5)))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |4199|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4011|
 :pattern ( ($IsBox bx@@1 (TSeq t@@4)))
)))
(assert (= (Tag Tclass.Regressions.uint32) Tagclass.Regressions.uint32))
(assert (= (TagFamily Tclass.Regressions.uint32) tytagFamily$uint32))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass.Regressions.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |4475|
 :pattern ( ($Is intType |i#0@@0| Tclass.Regressions.uint32))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3994|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3992|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |4198|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |4029|
 :pattern ( (|Seq#Index| v@@6 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |4030|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |u#0@0| () T@U)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |u#0@1| () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |u#0@2| () T@U)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Regressions.__default.TestSeq)
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
 (=> (= (ControlFlow 0 0) 37) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 14))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |newtype$check#1@0| (LitInt 123)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296)) (=> (= |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 14)))) ($Box intType (int_2_U (LitInt 123)))))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|))) (=> (= |newtype$check#2@0| (LitInt 42)) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 4294967296)) (=> (= |u#0@0| (|Seq#Update| |s#0@0| (LitInt 1) ($Box intType (int_2_U (LitInt 42))))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@0|)))) (=> (= |newtype$check#3@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (<= 0 |newtype$check#3@0|) (< |newtype$check#3@0| 8))) (=> (and (<= 0 |newtype$check#3@0|) (< |newtype$check#3@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 27)) (< (nat_from_bv3 #b001) (|Seq#Length| |s#0@0|))) (=> (= |newtype$check#4@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= 0 |newtype$check#4@0|) (< |newtype$check#4@0| 8))) (=> (and (<= 0 |newtype$check#4@0|) (< |newtype$check#4@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (< (nat_from_bv3 #b001) (|Seq#Length| |u#0@0|))) (=> (= |newtype$check#5@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |newtype$check#6@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|))) (=> (= |newtype$check#7@0| (LitInt 43)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 4294967296)) (=> (= |u#0@1| (|Seq#Update| |s#0@0| (LitInt 1) ($Box intType (int_2_U (LitInt 43))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@1|)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@1|)))) (=> (= |newtype$check#8@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= 0 |newtype$check#8@0|) (< |newtype$check#8@0| 8))) (=> (and (<= 0 |newtype$check#8@0|) (< |newtype$check#8@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (< (nat_from_bv3 #b001) (|Seq#Length| |s#0@0|))) (=> (= |newtype$check#9@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 |newtype$check#9@0|) (< |newtype$check#9@0| 8))) (=> (and (<= 0 |newtype$check#9@0|) (< |newtype$check#9@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (< (nat_from_bv3 #b001) (|Seq#Length| |u#0@1|))) (=> (= |newtype$check#10@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 |newtype$check#10@0|) (< |newtype$check#10@0| 8))) (=> (and (<= 0 |newtype$check#10@0|) (< |newtype$check#10@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< (nat_from_bv3 #b001) (|Seq#Length| |s#0@0|))) (=> (< (nat_from_bv3 #b001) (|Seq#Length| |s#0@0|)) (=> (= |newtype$check#11@0| (LitInt 44)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296)) (=> (= |u#0@2| (|Seq#Update| |s#0@0| (nat_from_bv3 #b001) ($Box intType (int_2_U (LitInt 44))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@2|)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |s#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |u#0@2|)))) (=> (= |newtype$check#12@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 |newtype$check#12@0|) (< |newtype$check#12@0| 8))) (=> (and (<= 0 |newtype$check#12@0|) (< |newtype$check#12@0| 8)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (< (nat_from_bv3 #b001) (|Seq#Length| |s#0@0|))) (=> (= |newtype$check#13@0| (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 |newtype$check#13@0|) (< |newtype$check#13@0| 8))) (=> (and (<= 0 |newtype$check#13@0|) (< |newtype$check#13@0| 8)) (=> (= (ControlFlow 0 2) (- 0 1)) (< (nat_from_bv3 #b001) (|Seq#Length| |u#0@2|))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |s#0| (TSeq Tclass.Regressions.uint32)) ($IsAlloc SeqType |s#0| (TSeq Tclass.Regressions.uint32) $Heap)) true) (=> (and (and (and ($Is SeqType |u#0| (TSeq Tclass.Regressions.uint32)) ($IsAlloc SeqType |u#0| (TSeq Tclass.Regressions.uint32) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 37) 2))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
