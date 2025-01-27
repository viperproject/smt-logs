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
(declare-fun $FunctionContextHeight () Int)
(declare-fun QuantifierTestsSimple.__default.byte (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |QuantifierTestsSimple.__default.byte#canCall| (Int) Bool)
(declare-fun QuantifierTestsSimple.__default.h (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |QuantifierTestsSimple.__default.h#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun QuantifierTestsSimple.__default.f__forall (T@U) Bool)
(declare-fun QuantifierTestsSimple.__default.g__forall (T@U) Bool)
(declare-fun QuantifierTestsSimple.__default.f__exists (T@U) Bool)
(declare-fun |QuantifierTestsSimple.__default.g__forall#canCall| (T@U) Bool)
(declare-fun |QuantifierTestsSimple.__default.g__exists#canCall| (T@U) Bool)
(declare-fun QuantifierTestsSimple.__default.g__exists (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |QuantifierTestsSimple.__default.f__forall#canCall| (T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |QuantifierTestsSimple.__default.f__exists#canCall| (T@U) Bool)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|QuantifierTestsSimple.__default.byte#canCall| (LitInt |x#0|)) (< 0 $FunctionContextHeight)) (= (QuantifierTestsSimple.__default.byte (LitInt |x#0|))  (and (<= (LitInt 0) (LitInt |x#0|)) (< |x#0| 256))))
 :qid |AutoReqdfy.70:23|
 :weight 3
 :skolemid |1129|
 :pattern ( (QuantifierTestsSimple.__default.byte (LitInt |x#0|)))
))))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.h#canCall| (Lit SeqType |s#0|)) (and (< 3 $FunctionContextHeight) (and ($Is SeqType |s#0| (TSeq TInt)) (and (U_2_bool (Lit boolType (bool_2_U (QuantifierTestsSimple.__default.f__forall (Lit SeqType |s#0|))))) (U_2_bool (Lit boolType (bool_2_U  (=> (QuantifierTestsSimple.__default.g__forall (Lit SeqType |s#0|)) (QuantifierTestsSimple.__default.f__exists (Lit SeqType |s#0|)))))))))) (and (and (|QuantifierTestsSimple.__default.g__forall#canCall| (Lit SeqType |s#0|)) (=> (U_2_bool (Lit boolType (bool_2_U (QuantifierTestsSimple.__default.g__forall (Lit SeqType |s#0|))))) (|QuantifierTestsSimple.__default.g__exists#canCall| (Lit SeqType |s#0|)))) (= (QuantifierTestsSimple.__default.h (Lit SeqType |s#0|)) (U_2_bool (Lit boolType (bool_2_U  (and (QuantifierTestsSimple.__default.g__forall (Lit SeqType |s#0|)) (QuantifierTestsSimple.__default.g__exists (Lit SeqType |s#0|)))))))))
 :qid |AutoReqdfy.97:20|
 :weight 3
 :skolemid |1167|
 :pattern ( (QuantifierTestsSimple.__default.h (Lit SeqType |s#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@0| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.g__forall#canCall| |s#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is SeqType |s#0@@0| (TSeq TInt)) (QuantifierTestsSimple.__default.f__forall |s#0@@0|)))) (= (QuantifierTestsSimple.__default.g__forall |s#0@@0|) (> (|Seq#Length| |s#0@@0|) 2)))
 :qid |AutoReqdfy.85:27|
 :skolemid |1156|
 :pattern ( (QuantifierTestsSimple.__default.g__forall |s#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@1| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.g__exists#canCall| |s#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is SeqType |s#0@@1| (TSeq TInt)) (QuantifierTestsSimple.__default.f__exists |s#0@@1|)))) (= (QuantifierTestsSimple.__default.g__exists |s#0@@1|) (> (|Seq#Length| |s#0@@1|) 2)))
 :qid |AutoReqdfy.91:27|
 :skolemid |1161|
 :pattern ( (QuantifierTestsSimple.__default.g__exists |s#0@@1|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|s#0@@2| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.h#canCall| |s#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is SeqType |s#0@@2| (TSeq TInt)) (and (QuantifierTestsSimple.__default.f__forall |s#0@@2|) (=> (QuantifierTestsSimple.__default.g__forall |s#0@@2|) (QuantifierTestsSimple.__default.f__exists |s#0@@2|)))))) (and (and (|QuantifierTestsSimple.__default.g__forall#canCall| |s#0@@2|) (=> (QuantifierTestsSimple.__default.g__forall |s#0@@2|) (|QuantifierTestsSimple.__default.g__exists#canCall| |s#0@@2|))) (= (QuantifierTestsSimple.__default.h |s#0@@2|)  (and (QuantifierTestsSimple.__default.g__forall |s#0@@2|) (QuantifierTestsSimple.__default.g__exists |s#0@@2|)))))
 :qid |AutoReqdfy.97:20|
 :skolemid |1166|
 :pattern ( (QuantifierTestsSimple.__default.h |s#0@@2|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |587|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |585|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |596|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@3| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.g__forall#canCall| (Lit SeqType |s#0@@3|)) (and (< 2 $FunctionContextHeight) (and ($Is SeqType |s#0@@3| (TSeq TInt)) (U_2_bool (Lit boolType (bool_2_U (QuantifierTestsSimple.__default.f__forall (Lit SeqType |s#0@@3|)))))))) (= (QuantifierTestsSimple.__default.g__forall (Lit SeqType |s#0@@3|)) (> (|Seq#Length| (Lit SeqType |s#0@@3|)) 2)))
 :qid |AutoReqdfy.85:27|
 :weight 3
 :skolemid |1157|
 :pattern ( (QuantifierTestsSimple.__default.g__forall (Lit SeqType |s#0@@3|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|s#0@@4| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.g__exists#canCall| (Lit SeqType |s#0@@4|)) (and (< 2 $FunctionContextHeight) (and ($Is SeqType |s#0@@4| (TSeq TInt)) (U_2_bool (Lit boolType (bool_2_U (QuantifierTestsSimple.__default.f__exists (Lit SeqType |s#0@@4|)))))))) (= (QuantifierTestsSimple.__default.g__exists (Lit SeqType |s#0@@4|)) (> (|Seq#Length| (Lit SeqType |s#0@@4|)) 2)))
 :qid |AutoReqdfy.91:27|
 :weight 3
 :skolemid |1162|
 :pattern ( (QuantifierTestsSimple.__default.g__exists (Lit SeqType |s#0@@4|)))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |609|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@5| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.f__forall#canCall| |s#0@@5|) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@5| (TSeq TInt)))) (and (forall ((|i#0| Int) ) (!  (=> (<= (LitInt 0) |i#0|) (=> (< |i#0| (|Seq#Length| |s#0@@5|)) (|QuantifierTestsSimple.__default.byte#canCall| (U_2_int ($Unbox intType (|Seq#Index| |s#0@@5| |i#0|))))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1133|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@5| |i#0|)))
)) (= (QuantifierTestsSimple.__default.f__forall |s#0@@5|) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |s#0@@5|))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| |s#0@@5| |i#0@@0|)))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1132|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@5| |i#0@@0|)))
)))))
 :qid |AutoReqdfy.75:27|
 :skolemid |1134|
 :pattern ( (QuantifierTestsSimple.__default.f__forall |s#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@6| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.f__exists#canCall| |s#0@@6|) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@6| (TSeq TInt)))) (and (forall ((|i#0@@1| Int) ) (!  (=> (<= (LitInt 0) |i#0@@1|) (=> (< |i#0@@1| (|Seq#Length| |s#0@@6|)) (|QuantifierTestsSimple.__default.byte#canCall| (U_2_int ($Unbox intType (|Seq#Index| |s#0@@6| |i#0@@1|))))))
 :qid |AutoReqdfy.82:12|
 :skolemid |1145|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@6| |i#0@@1|)))
)) (= (QuantifierTestsSimple.__default.f__exists |s#0@@6|) (exists ((|i#0@@2| Int) ) (!  (and (and (<= (LitInt 0) |i#0@@2|) (< |i#0@@2| (|Seq#Length| |s#0@@6|))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| |s#0@@6| |i#0@@2|)))))
 :qid |AutoReqdfy.82:12|
 :skolemid |1144|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@6| |i#0@@2|)))
)))))
 :qid |AutoReqdfy.80:27|
 :skolemid |1146|
 :pattern ( (QuantifierTestsSimple.__default.f__exists |s#0@@6|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |597|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |599|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |608|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |791|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |643|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |644|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |577|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |578|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |595|
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
 :skolemid |7919|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |605|
 :pattern ( ($IsBox bx@@1 (TSeq t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|QuantifierTestsSimple.__default.byte#canCall| |x#0@@0|) (< 0 $FunctionContextHeight)) (= (QuantifierTestsSimple.__default.byte |x#0@@0|)  (and (<= (LitInt 0) |x#0@@0|) (< |x#0@@0| 256))))
 :qid |AutoReqdfy.70:23|
 :skolemid |1128|
 :pattern ( (QuantifierTestsSimple.__default.byte |x#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@7| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.f__forall#canCall| (Lit SeqType |s#0@@7|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@7| (TSeq TInt)))) (and (forall ((|i#1| Int) ) (!  (=> (<= (LitInt 0) |i#1|) (=> (< |i#1| (|Seq#Length| (Lit SeqType |s#0@@7|))) (|QuantifierTestsSimple.__default.byte#canCall| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@7|) |i#1|))))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1136|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@7| |i#1|)))
)) (= (QuantifierTestsSimple.__default.f__forall (Lit SeqType |s#0@@7|)) (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| (Lit SeqType |s#0@@7|)))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@7|) |i#1@@0|)))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1135|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@7| |i#1@@0|)))
)))))
 :qid |AutoReqdfy.75:27|
 :weight 3
 :skolemid |1137|
 :pattern ( (QuantifierTestsSimple.__default.f__forall (Lit SeqType |s#0@@7|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0@@8| T@U) ) (!  (=> (or (|QuantifierTestsSimple.__default.f__exists#canCall| (Lit SeqType |s#0@@8|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@8| (TSeq TInt)))) (and (forall ((|i#1@@1| Int) ) (!  (=> (<= (LitInt 0) |i#1@@1|) (=> (< |i#1@@1| (|Seq#Length| (Lit SeqType |s#0@@8|))) (|QuantifierTestsSimple.__default.byte#canCall| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@8|) |i#1@@1|))))))
 :qid |AutoReqdfy.82:12|
 :skolemid |1148|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@8| |i#1@@1|)))
)) (= (QuantifierTestsSimple.__default.f__exists (Lit SeqType |s#0@@8|)) (exists ((|i#1@@2| Int) ) (!  (and (and (<= (LitInt 0) |i#1@@2|) (< |i#1@@2| (|Seq#Length| (Lit SeqType |s#0@@8|)))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@8|) |i#1@@2|)))))
 :qid |AutoReqdfy.82:12|
 :skolemid |1147|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@8| |i#1@@2|)))
)))))
 :qid |AutoReqdfy.80:27|
 :weight 3
 :skolemid |1149|
 :pattern ( (QuantifierTestsSimple.__default.f__exists (Lit SeqType |s#0@@8|)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |588|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |586|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |792|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |631|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |633|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |623|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |624|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |610|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |612|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@9| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$QuantifierTestsSimple.__default.h)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon7_correct true))
(let ((anon11_Else_correct  (=> (and (not (QuantifierTestsSimple.__default.g__forall |s#0@@9|)) (= (ControlFlow 0 5) 2)) anon7_correct)))
(let ((anon11_Then_correct  (=> (and (QuantifierTestsSimple.__default.g__forall |s#0@@9|) ($IsAlloc SeqType |s#0@@9| (TSeq TInt) $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|QuantifierTestsSimple.__default.f__exists#canCall| |s#0@@9|) (or (QuantifierTestsSimple.__default.f__exists |s#0@@9|) (exists ((|i#2| Int) ) (!  (and (and (<= (LitInt 0) |i#2|) (< |i#2| (|Seq#Length| |s#0@@9|))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| |s#0@@9| |i#2|)))))
 :qid |AutoReqdfy.82:12|
 :skolemid |1176|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@9| |i#2|)))
))))) (=> (QuantifierTestsSimple.__default.f__exists |s#0@@9|) (=> (and (|QuantifierTestsSimple.__default.g__exists#canCall| |s#0@@9|) (= (ControlFlow 0 3) 2)) anon7_correct))))))
(let ((anon10_Else_correct  (=> ($IsAlloc SeqType |s#0@@9| (TSeq TInt) $Heap) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|QuantifierTestsSimple.__default.f__forall#canCall| |s#0@@9|) (or (QuantifierTestsSimple.__default.f__forall |s#0@@9|) (forall ((|i#1@@3| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@3|) (< |i#1@@3| (|Seq#Length| |s#0@@9|))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| |s#0@@9| |i#1@@3|)))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1173|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@9| |i#1@@3|)))
))))) (=> (and (QuantifierTestsSimple.__default.f__forall |s#0@@9|) (|QuantifierTestsSimple.__default.g__forall#canCall| |s#0@@9|)) (and (=> (= (ControlFlow 0 6) 3) anon11_Then_correct) (=> (= (ControlFlow 0 6) 5) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon3_correct  (=> (=> (QuantifierTestsSimple.__default.g__forall |s#0@@9|) (QuantifierTestsSimple.__default.f__exists |s#0@@9|)) (and (=> (= (ControlFlow 0 8) 1) anon10_Then_correct) (=> (= (ControlFlow 0 8) 6) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (QuantifierTestsSimple.__default.g__forall |s#0@@9|)) (= (ControlFlow 0 10) 8)) anon3_correct)))
(let ((anon9_Then_correct  (=> (and (and (QuantifierTestsSimple.__default.g__forall |s#0@@9|) ($IsAlloc SeqType |s#0@@9| (TSeq TInt) $Heap)) (and (|QuantifierTestsSimple.__default.f__exists#canCall| |s#0@@9|) (= (ControlFlow 0 9) 8))) anon3_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsAlloc SeqType |s#0@@9| (TSeq TInt) $Heap) (|QuantifierTestsSimple.__default.f__forall#canCall| |s#0@@9|)) (and (QuantifierTestsSimple.__default.f__forall |s#0@@9|) ($IsAlloc SeqType |s#0@@9| (TSeq TInt) $Heap))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> (|QuantifierTestsSimple.__default.f__forall#canCall| |s#0@@9|) (or (QuantifierTestsSimple.__default.f__forall |s#0@@9|) (forall ((|i#0@@3| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@3|) (< |i#0@@3| (|Seq#Length| |s#0@@9|))) (QuantifierTestsSimple.__default.byte (U_2_int ($Unbox intType (|Seq#Index| |s#0@@9| |i#0@@3|)))))
 :qid |AutoReqdfy.77:12|
 :skolemid |1169|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@9| |i#0@@3|)))
))))) (=> (and (QuantifierTestsSimple.__default.f__forall |s#0@@9|) (|QuantifierTestsSimple.__default.g__forall#canCall| |s#0@@9|)) (and (=> (= (ControlFlow 0 11) 9) anon9_Then_correct) (=> (= (ControlFlow 0 11) 10) anon9_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SeqType |s#0@@9| (TSeq TInt))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 13) 11))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
