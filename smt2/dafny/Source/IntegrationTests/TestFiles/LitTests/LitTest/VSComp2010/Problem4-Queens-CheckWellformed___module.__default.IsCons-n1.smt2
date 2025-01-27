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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IsConsistent (T@U Int) Bool)
(declare-fun SeqType () T@T)
(declare-fun |_module.__default.IsConsistent#canCall| (T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSeq alloc)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0| T@U) (|pos#0| Int) ) (!  (=> (or (|_module.__default.IsConsistent#canCall| (Lit SeqType |board#0|) (LitInt |pos#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |board#0| (TSeq TInt)) (<= (LitInt 0) |pos#0|)))) (= (_module.__default.IsConsistent (Lit SeqType |board#0|) (LitInt |pos#0|))  (and (< |pos#0| (|Seq#Length| (Lit SeqType |board#0|))) (forall ((|q#1| Int) ) (!  (and (and (=> (and (<= (LitInt 0) |q#1|) (< |q#1| |pos#0|)) (or (not (= (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) |q#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) (LitInt |pos#0|)))))) (not true))) (=> (and (<= (LitInt 0) |q#1|) (< |q#1| |pos#0|)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) |q#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) (LitInt |pos#0|))))) (- |pos#0| |q#1|))) (not true)))) (=> (and (<= (LitInt 0) |q#1|) (< |q#1| |pos#0|)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) (LitInt |pos#0|)))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |board#0|) |q#1|)))) (- |pos#0| |q#1|))) (not true))))
 :qid |Problem4Queensdfy.45:10|
 :skolemid |566|
 :pattern ( ($Unbox intType (|Seq#Index| |board#0| |q#1|)))
)))))
 :qid |Problem4Queensdfy.43:24|
 :weight 3
 :skolemid |567|
 :pattern ( (_module.__default.IsConsistent (Lit SeqType |board#0|) (LitInt |pos#0|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|board#0@@0| T@U) (|pos#0@@0| Int) ) (!  (=> (or (|_module.__default.IsConsistent#canCall| |board#0@@0| |pos#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |board#0@@0| (TSeq TInt)) (<= (LitInt 0) |pos#0@@0|)))) (= (_module.__default.IsConsistent |board#0@@0| |pos#0@@0|)  (and (< |pos#0@@0| (|Seq#Length| |board#0@@0|)) (forall ((|q#0| Int) ) (!  (and (and (=> (and (<= (LitInt 0) |q#0|) (< |q#0| |pos#0@@0|)) (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |q#0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |pos#0@@0|))))) (not true))) (=> (and (<= (LitInt 0) |q#0|) (< |q#0| |pos#0@@0|)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |q#0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |pos#0@@0|)))) (- |pos#0@@0| |q#0|))) (not true)))) (=> (and (<= (LitInt 0) |q#0|) (< |q#0| |pos#0@@0|)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |pos#0@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@0| |q#0|)))) (- |pos#0@@0| |q#0|))) (not true))))
 :qid |Problem4Queensdfy.45:10|
 :skolemid |564|
 :pattern ( ($Unbox intType (|Seq#Index| |board#0@@0| |q#0|)))
)))))
 :qid |Problem4Queensdfy.43:24|
 :skolemid |565|
 :pattern ( (_module.__default.IsConsistent |board#0@@0| |pos#0@@0|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSeq (TSeq t@@0)) t@@0)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSeq t@@1)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |677|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@2)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@2))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@2)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@0 (TSeq t0@@1)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@0))) ($IsBox (|Seq#Index| v@@0 i) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@0 i))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@0 (TSeq t0@@1)))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |board#0@@1| () T@U)
(declare-fun |q#2@0| () Int)
(declare-fun |pos#0@@1| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.IsConsistent)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon17_Else_correct true))
(let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|))))) (not true)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|)))) (- |pos#0@@1| |q#2@0|))) (not true)))) (= (ControlFlow 0 9) 2)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|))))) (not true)) (or (not (= (- (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|)))) (- |pos#0@@1| |q#2@0|))) (not true))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|))) (=> (= (ControlFlow 0 6) 2) anon13_correct))))))))
(let ((anon20_Else_correct  (=> (= (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|)))) (and (=> (= (ControlFlow 0 13) 6) anon21_Then_correct) (=> (= (ControlFlow 0 13) 9) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |q#2@0|))) (U_2_int ($Unbox intType (|Seq#Index| |board#0@@1| |pos#0@@1|))))) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|))) (and (=> (= (ControlFlow 0 10) 6) anon21_Then_correct) (=> (= (ControlFlow 0 10) 9) anon21_Else_correct)))))))))
(let ((anon19_Then_correct  (=> (and (<= (LitInt 0) |q#2@0|) (< |q#2@0| |pos#0@@1|)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |q#2@0|) (< |q#2@0| (|Seq#Length| |board#0@@1|))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|)))) (=> (and (<= 0 |pos#0@@1|) (< |pos#0@@1| (|Seq#Length| |board#0@@1|))) (and (=> (= (ControlFlow 0 14) 10) anon20_Then_correct) (=> (= (ControlFlow 0 14) 13) anon20_Else_correct)))))))))
(let ((anon19_Else_correct  (=> (and (not (and (<= (LitInt 0) |q#2@0|) (< |q#2@0| |pos#0@@1|))) (= (ControlFlow 0 5) 2)) anon13_correct)))
(let ((anon18_Else_correct  (=> (< |q#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 18) 14) anon19_Then_correct) (=> (= (ControlFlow 0 18) 5) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (<= (LitInt 0) |q#2@0|) (and (=> (= (ControlFlow 0 17) 14) anon19_Then_correct) (=> (= (ControlFlow 0 17) 5) anon19_Else_correct)))))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 19) 17) anon18_Then_correct) (=> (= (ControlFlow 0 19) 18) anon18_Else_correct))))
(let ((anon16_Then_correct  (=> (< |pos#0@@1| (|Seq#Length| |board#0@@1|)) (and (=> (= (ControlFlow 0 20) 19) anon17_Then_correct) (=> (= (ControlFlow 0 20) 4) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (<= (|Seq#Length| |board#0@@1|) |pos#0@@1|) (= (ControlFlow 0 3) 2)) anon13_correct)))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 21) 1) anon15_Then_correct) (=> (= (ControlFlow 0 21) 20) anon16_Then_correct)) (=> (= (ControlFlow 0 21) 3) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |board#0@@1| (TSeq TInt)) (<= (LitInt 0) |pos#0@@1|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
