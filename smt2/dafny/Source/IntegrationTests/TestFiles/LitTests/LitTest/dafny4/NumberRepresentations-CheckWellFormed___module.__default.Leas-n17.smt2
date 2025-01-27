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
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.eval (T@U T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |_module.__default.eval#canCall| (T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(declare-fun _module.__default.IsSkewNumber (T@U Int Int) Bool)
(declare-fun |_module.__default.IsSkewNumber#canCall| (T@U Int Int) Bool)
(declare-fun Mod (Int Int) Int)
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
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s n))
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
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|digits#0| T@U) (|base#0| Int) ) (!  (=> (or (|_module.__default.eval#canCall| (Lit SeqType |digits#0|) (LitInt |base#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0| (TSeq TInt)) (<= (LitInt 2) (LitInt |base#0|))))) (and (=> (or (not (= (|Seq#Length| (Lit SeqType |digits#0|)) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0|) (LitInt 1))) (LitInt |base#0|))) (= (_module.__default.eval ($LS $ly) (Lit SeqType |digits#0|) (LitInt |base#0|)) (ite (= (|Seq#Length| (Lit SeqType |digits#0|)) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0|) (LitInt 0)))) (Mul (LitInt |base#0|) (LitInt (_module.__default.eval ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0|) (LitInt 1))) (LitInt |base#0|)))))))))
 :qid |NumberRepresentationsdfy.9:16|
 :weight 3
 :skolemid |587|
 :pattern ( (_module.__default.eval ($LS $ly) (Lit SeqType |digits#0|) (LitInt |base#0|)))
))))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Length| (|Seq#Drop| s@@0 n@@0)) (- (|Seq#Length| s@@0) n@@0)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@0 n@@0)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@1) n@@1))) (= (|Seq#Index| (|Seq#Drop| s@@1 n@@1) j@@0) (|Seq#Index| s@@1 (+ j@@0 n@@1))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@1 n@@1) j@@0))
)))
(assert (forall (($ly@@0 T@U) (|digits#0@@0| T@U) (|base#0@@0| Int) ) (! (= (_module.__default.eval ($LS $ly@@0) |digits#0@@0| |base#0@@0|) (_module.__default.eval $ly@@0 |digits#0@@0| |base#0@@0|))
 :qid |NumberRepresentationsdfy.9:16|
 :skolemid |581|
 :pattern ( (_module.__default.eval ($LS $ly@@0) |digits#0@@0| |base#0@@0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
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
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|digits#0@@1| T@U) (|base#0@@1| Int) ) (!  (=> (or (|_module.__default.eval#canCall| |digits#0@@1| |base#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0@@1| (TSeq TInt)) (<= (LitInt 2) |base#0@@1|)))) (and (=> (or (not (= (|Seq#Length| |digits#0@@1|) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (|Seq#Drop| |digits#0@@1| (LitInt 1)) |base#0@@1|)) (= (_module.__default.eval ($LS $ly@@1) |digits#0@@1| |base#0@@1|) (ite (= (|Seq#Length| |digits#0@@1|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@1| (LitInt 0)))) (Mul |base#0@@1| (_module.__default.eval $ly@@1 (|Seq#Drop| |digits#0@@1| (LitInt 1)) |base#0@@1|)))))))
 :qid |NumberRepresentationsdfy.9:16|
 :skolemid |585|
 :pattern ( (_module.__default.eval ($LS $ly@@1) |digits#0@@1| |base#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|digits#0@@2| T@U) (|base#0@@2| Int) ) (!  (=> (or (|_module.__default.eval#canCall| (Lit SeqType |digits#0@@2|) |base#0@@2|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0@@2| (TSeq TInt)) (<= (LitInt 2) |base#0@@2|)))) (and (=> (or (not (= (|Seq#Length| (Lit SeqType |digits#0@@2|)) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@2|) (LitInt 1))) |base#0@@2|)) (= (_module.__default.eval ($LS $ly@@2) (Lit SeqType |digits#0@@2|) |base#0@@2|) (ite (= (|Seq#Length| (Lit SeqType |digits#0@@2|)) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@2|) (LitInt 0)))) (Mul |base#0@@2| (_module.__default.eval ($LS $ly@@2) (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@2|) (LitInt 1))) |base#0@@2|)))))))
 :qid |NumberRepresentationsdfy.9:16|
 :weight 3
 :skolemid |586|
 :pattern ( (_module.__default.eval ($LS $ly@@2) (Lit SeqType |digits#0@@2|) |base#0@@2|))
))))
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
 :skolemid |718|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|digits#0@@3| T@U) (|lowDigit#0| Int) (|base#0@@3| Int) ) (!  (=> (or (|_module.__default.IsSkewNumber#canCall| |digits#0@@3| |lowDigit#0| |base#0@@3|) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@3| (TSeq TInt)))) (= (_module.__default.IsSkewNumber |digits#0@@3| |lowDigit#0| |base#0@@3|)  (and (and (<= (LitInt 2) |base#0@@3|) (and (<= |lowDigit#0| (LitInt 0)) (< 0 (+ |lowDigit#0| |base#0@@3|)))) (forall ((|i#0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |digits#0@@3|))) (<= |lowDigit#0| (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@3| |i#0|))))) (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |digits#0@@3|))) (< (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@3| |i#0|))) (+ |lowDigit#0| |base#0@@3|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |603|
 :pattern ( ($Unbox intType (|Seq#Index| |digits#0@@3| |i#0|)))
)))))
 :qid |NumberRepresentationsdfy.41:30|
 :skolemid |604|
 :pattern ( (_module.__default.IsSkewNumber |digits#0@@3| |lowDigit#0| |base#0@@3|))
))))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mul x@@7 y@@0) (* x@@7 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@7 y@@0))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 k)) (< k (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Drop| s@@3 n@@2) (- k n@@2)) (|Seq#Index| s@@3 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@3 k) (|Seq#Drop| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (m@@4 Int) (n@@3 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@3)) (<= (+ m@@4 n@@3) (|Seq#Length| s@@4))) (= (|Seq#Drop| (|Seq#Drop| s@@4 m@@4) n@@3) (|Seq#Drop| s@@4 (+ m@@4 n@@3))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@4 m@@4) n@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|digits#0@@4| T@U) (|lowDigit#0@@0| Int) (|base#0@@4| Int) ) (!  (=> (or (|_module.__default.IsSkewNumber#canCall| (Lit SeqType |digits#0@@4|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@4| (TSeq TInt)))) (= (_module.__default.IsSkewNumber (Lit SeqType |digits#0@@4|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|))  (and (and (<= (LitInt 2) (LitInt |base#0@@4|)) (and (<= (LitInt |lowDigit#0@@0|) (LitInt 0)) (< 0 (+ |lowDigit#0@@0| |base#0@@4|)))) (forall ((|i#1| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |digits#0@@4|)))) (<= (LitInt |lowDigit#0@@0|) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@4|) |i#1|))))) (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |digits#0@@4|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@4|) |i#1|))) (+ |lowDigit#0@@0| |base#0@@4|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |605|
 :pattern ( ($Unbox intType (|Seq#Index| |digits#0@@4| |i#1|)))
)))))
 :qid |NumberRepresentationsdfy.41:30|
 :weight 3
 :skolemid |606|
 :pattern ( (_module.__default.IsSkewNumber (Lit SeqType |digits#0@@4|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|)))
))))
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
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@0))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |lowDigit#0@@1| () Int)
(declare-fun |base#0@@5| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.LeastSignificantDigitIsAlmostMod__Pos)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap) ($IsAlloc intType (int_2_U |lowDigit#0@@1|) TInt $Heap)) (=> (and (and ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap) (|_module.__default.IsSkewNumber#canCall| |a#0| |lowDigit#0@@1| |base#0@@5|)) (and (_module.__default.IsSkewNumber |a#0| |lowDigit#0@@1| |base#0@@5|) (not (|Seq#Equal| |a#0| |Seq#Empty|)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (=> (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap@0) ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= (LitInt 2) |base#0@@5|)) (=> (and (<= (LitInt 2) |base#0@@5|) (|_module.__default.eval#canCall| |a#0| |base#0@@5|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |base#0@@5| 0)) (not true))) (=> (or (not (= |base#0@@5| 0)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |a#0| (TSeq TInt)) ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2))) anon0_correct))))
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
