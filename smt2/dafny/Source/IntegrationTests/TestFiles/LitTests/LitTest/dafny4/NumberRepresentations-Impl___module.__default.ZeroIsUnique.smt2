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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.trim (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |_module.__default.trim#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun _module.__default.eval (T@U T@U Int) Int)
(declare-fun |_module.__default.eval#canCall| (T@U Int) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|digits#0| T@U) ) (!  (=> (or (|_module.__default.trim#canCall| (Lit SeqType |digits#0|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0| (TSeq TInt)))) (and (=> (and (or (not (= (|Seq#Length| (Lit SeqType |digits#0|)) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0|) (- (|Seq#Length| (Lit SeqType |digits#0|)) 1)))) (LitInt 0))) (|_module.__default.trim#canCall| (|Seq#Take| (Lit SeqType |digits#0|) (- (|Seq#Length| (Lit SeqType |digits#0|)) 1)))) (= (_module.__default.trim ($LS $ly) (Lit SeqType |digits#0|)) (ite  (and (or (not (= (|Seq#Length| (Lit SeqType |digits#0|)) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0|) (- (|Seq#Length| (Lit SeqType |digits#0|)) 1)))) (LitInt 0))) (_module.__default.trim ($LS $ly) (|Seq#Take| (Lit SeqType |digits#0|) (- (|Seq#Length| (Lit SeqType |digits#0|)) 1))) |digits#0|))))
 :qid |NumberRepresentationsdfy.180:16|
 :weight 3
 :skolemid |650|
 :pattern ( (_module.__default.trim ($LS $ly) (Lit SeqType |digits#0|)))
))))
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s n))
)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|digits#0@@0| T@U) (|base#0| Int) ) (!  (=> (or (|_module.__default.eval#canCall| (Lit SeqType |digits#0@@0|) (LitInt |base#0|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0@@0| (TSeq TInt)) (<= (LitInt 2) (LitInt |base#0|))))) (and (=> (or (not (= (|Seq#Length| (Lit SeqType |digits#0@@0|)) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@0|) (LitInt 1))) (LitInt |base#0|))) (= (_module.__default.eval ($LS $ly@@0) (Lit SeqType |digits#0@@0|) (LitInt |base#0|)) (ite (= (|Seq#Length| (Lit SeqType |digits#0@@0|)) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@0|) (LitInt 0)))) (Mul (LitInt |base#0|) (LitInt (_module.__default.eval ($LS $ly@@0) (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@0|) (LitInt 1))) (LitInt |base#0|)))))))))
 :qid |NumberRepresentationsdfy.9:16|
 :weight 3
 :skolemid |587|
 :pattern ( (_module.__default.eval ($LS $ly@@0) (Lit SeqType |digits#0@@0|) (LitInt |base#0|)))
))))
(assert (forall ((s@@0 T@U) (n@@0 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@0)) (< j (|Seq#Length| s@@0))) (= (|Seq#Index| (|Seq#Take| s@@0 n@@0) j) (|Seq#Index| s@@0 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@0 n@@0) j))
 :pattern ( (|Seq#Index| s@@0 j) (|Seq#Take| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (<= n@@1 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Drop| s@@1 n@@1)) (- (|Seq#Length| s@@1) n@@1)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@1 n@@1)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((s@@2 T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| s@@2))) (< (|Seq#Rank| (|Seq#Take| s@@2 i)) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@2 i)))
)))
(assert (forall ((s@@3 T@U) (i@@0 Int) ) (!  (=> (and (< 0 i@@0) (<= i@@0 (|Seq#Length| s@@3))) (< (|Seq#Rank| (|Seq#Drop| s@@3 i@@0)) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@3 i@@0)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@4) n@@2))) (= (|Seq#Index| (|Seq#Drop| s@@4 n@@2) j@@1) (|Seq#Index| s@@4 (+ j@@1 n@@2))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@4 n@@2) j@@1))
)))
(assert (forall (($ly@@1 T@U) (|digits#0@@1| T@U) (|base#0@@0| Int) ) (! (= (_module.__default.eval ($LS $ly@@1) |digits#0@@1| |base#0@@0|) (_module.__default.eval $ly@@1 |digits#0@@1| |base#0@@0|))
 :qid |NumberRepresentationsdfy.9:16|
 :skolemid |581|
 :pattern ( (_module.__default.eval ($LS $ly@@1) |digits#0@@1| |base#0@@0|))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) (x@@6 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@5 n@@3) x@@6) (exists ((i@@1 Int) ) (!  (and (and (and (<= 0 i@@1) (< i@@1 n@@3)) (< i@@1 (|Seq#Length| s@@5))) (= (|Seq#Index| s@@5 i@@1) x@@6))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@5 i@@1))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@5 n@@3) x@@6))
)))
(assert (forall ((s@@6 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@6 x@@7) (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@6))) (= (|Seq#Index| s@@6 i@@2) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@6 i@@2))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@6 x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|digits#0@@2| T@U) ) (!  (=> (or (|_module.__default.trim#canCall| |digits#0@@2|) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@2| (TSeq TInt)))) (and (=> (and (or (not (= (|Seq#Length| |digits#0@@2|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@2| (- (|Seq#Length| |digits#0@@2|) 1)))) (LitInt 0))) (|_module.__default.trim#canCall| (|Seq#Take| |digits#0@@2| (- (|Seq#Length| |digits#0@@2|) 1)))) (= (_module.__default.trim ($LS $ly@@2) |digits#0@@2|) (ite  (and (or (not (= (|Seq#Length| |digits#0@@2|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@2| (- (|Seq#Length| |digits#0@@2|) 1)))) (LitInt 0))) (_module.__default.trim $ly@@2 (|Seq#Take| |digits#0@@2| (- (|Seq#Length| |digits#0@@2|) 1))) |digits#0@@2|))))
 :qid |NumberRepresentationsdfy.180:16|
 :skolemid |649|
 :pattern ( (_module.__default.trim ($LS $ly@@2) |digits#0@@2|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@7 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@7))) (= (|Seq#Length| (|Seq#Take| s@@7 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@7 n@@4)))
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
(assert (forall ((s@@8 T@U) ) (! (<= 0 (|Seq#Length| s@@8))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@3) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@3))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|digits#0@@3| T@U) (|base#0@@1| Int) ) (!  (=> (or (|_module.__default.eval#canCall| |digits#0@@3| |base#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0@@3| (TSeq TInt)) (<= (LitInt 2) |base#0@@1|)))) (and (=> (or (not (= (|Seq#Length| |digits#0@@3|) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (|Seq#Drop| |digits#0@@3| (LitInt 1)) |base#0@@1|)) (= (_module.__default.eval ($LS $ly@@3) |digits#0@@3| |base#0@@1|) (ite (= (|Seq#Length| |digits#0@@3|) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@3| (LitInt 0)))) (Mul |base#0@@1| (_module.__default.eval $ly@@3 (|Seq#Drop| |digits#0@@3| (LitInt 1)) |base#0@@1|)))))))
 :qid |NumberRepresentationsdfy.9:16|
 :skolemid |585|
 :pattern ( (_module.__default.eval ($LS $ly@@3) |digits#0@@3| |base#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@4 T@U) (|digits#0@@4| T@U) (|base#0@@2| Int) ) (!  (=> (or (|_module.__default.eval#canCall| (Lit SeqType |digits#0@@4|) |base#0@@2|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |digits#0@@4| (TSeq TInt)) (<= (LitInt 2) |base#0@@2|)))) (and (=> (or (not (= (|Seq#Length| (Lit SeqType |digits#0@@4|)) (LitInt 0))) (not true)) (|_module.__default.eval#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@4|) (LitInt 1))) |base#0@@2|)) (= (_module.__default.eval ($LS $ly@@4) (Lit SeqType |digits#0@@4|) |base#0@@2|) (ite (= (|Seq#Length| (Lit SeqType |digits#0@@4|)) (LitInt 0)) 0 (+ (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@4|) (LitInt 0)))) (Mul |base#0@@2| (_module.__default.eval ($LS $ly@@4) (Lit SeqType (|Seq#Drop| (Lit SeqType |digits#0@@4|) (LitInt 1))) |base#0@@2|)))))))
 :qid |NumberRepresentationsdfy.9:16|
 :weight 3
 :skolemid |586|
 :pattern ( (_module.__default.eval ($LS $ly@@4) (Lit SeqType |digits#0@@4|) |base#0@@2|))
))))
(assert (forall (($ly@@5 T@U) (|digits#0@@5| T@U) ) (! (= (_module.__default.trim ($LS $ly@@5) |digits#0@@5|) (_module.__default.trim $ly@@5 |digits#0@@5|))
 :qid |NumberRepresentationsdfy.180:16|
 :skolemid |645|
 :pattern ( (_module.__default.trim ($LS $ly@@5) |digits#0@@5|))
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
 :skolemid |718|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|digits#0@@6| T@U) (|lowDigit#0| Int) (|base#0@@3| Int) ) (!  (=> (or (|_module.__default.IsSkewNumber#canCall| |digits#0@@6| |lowDigit#0| |base#0@@3|) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@6| (TSeq TInt)))) (= (_module.__default.IsSkewNumber |digits#0@@6| |lowDigit#0| |base#0@@3|)  (and (and (<= (LitInt 2) |base#0@@3|) (and (<= |lowDigit#0| (LitInt 0)) (< 0 (+ |lowDigit#0| |base#0@@3|)))) (forall ((|i#0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |digits#0@@6|))) (<= |lowDigit#0| (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@6| |i#0|))))) (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |digits#0@@6|))) (< (U_2_int ($Unbox intType (|Seq#Index| |digits#0@@6| |i#0|))) (+ |lowDigit#0| |base#0@@3|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |603|
 :pattern ( ($Unbox intType (|Seq#Index| |digits#0@@6| |i#0|)))
)))))
 :qid |NumberRepresentationsdfy.41:30|
 :skolemid |604|
 :pattern ( (_module.__default.IsSkewNumber |digits#0@@6| |lowDigit#0| |base#0@@3|))
))))
(assert (forall ((x@@9 Int) (y Int) ) (! (= (Mul x@@9 y) (* x@@9 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@9 y))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@9 n@@5) x@@10) (exists ((i@@4 Int) ) (!  (and (and (and (<= 0 n@@5) (<= n@@5 i@@4)) (< i@@4 (|Seq#Length| s@@9))) (= (|Seq#Index| s@@9 i@@4) x@@10))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@9 i@@4))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@9 n@@5) x@@10))
)))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((s@@10 T@U) (n@@6 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k)) (< k (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@6) (- k n@@6)) (|Seq#Index| s@@10 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@10 k) (|Seq#Drop| s@@10 n@@6))
)))
(assert (forall ((s@@11 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@11))) (= (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@7) (|Seq#Drop| s@@11 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|digits#0@@7| T@U) (|lowDigit#0@@0| Int) (|base#0@@4| Int) ) (!  (=> (or (|_module.__default.IsSkewNumber#canCall| (Lit SeqType |digits#0@@7|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@7| (TSeq TInt)))) (= (_module.__default.IsSkewNumber (Lit SeqType |digits#0@@7|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|))  (and (and (<= (LitInt 2) (LitInt |base#0@@4|)) (and (<= (LitInt |lowDigit#0@@0|) (LitInt 0)) (< 0 (+ |lowDigit#0@@0| |base#0@@4|)))) (forall ((|i#1| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |digits#0@@7|)))) (<= (LitInt |lowDigit#0@@0|) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@7|) |i#1|))))) (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |digits#0@@7|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |digits#0@@7|) |i#1|))) (+ |lowDigit#0@@0| |base#0@@4|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |605|
 :pattern ( ($Unbox intType (|Seq#Index| |digits#0@@7| |i#1|)))
)))))
 :qid |NumberRepresentationsdfy.41:30|
 :weight 3
 :skolemid |606|
 :pattern ( (_module.__default.IsSkewNumber (Lit SeqType |digits#0@@7|) (LitInt |lowDigit#0@@0|) (LitInt |base#0@@4|)))
))))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@12)) (Lit BoxType ($Box T@@4 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@12)))
)))
(assert (forall ((s@@12 T@U) ) (!  (=> (= (|Seq#Length| s@@12) 0) (= s@@12 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((s@@13 T@U) (n@@8 Int) ) (!  (=> (= n@@8 0) (= (|Seq#Take| s@@13 n@@8) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@13 n@@8))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@6 T@U) (|digits#0@@8| T@U) ) (!  (=> (or (|_module.__default.trim#canCall| |digits#0@@8|) (and (< 0 $FunctionContextHeight) ($Is SeqType |digits#0@@8| (TSeq TInt)))) ($Is SeqType (_module.__default.trim $ly@@6 |digits#0@@8|) (TSeq TInt)))
 :qid |NumberRepresentationsdfy.180:16|
 :skolemid |647|
 :pattern ( (_module.__default.trim $ly@@6 |digits#0@@8|))
))))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@5) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@5))
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
(declare-fun |base#0@@5| () Int)
(declare-fun |lowDigit#0@@1| () Int)
(declare-fun |a#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |##digits#0_3_2_5_1@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##digits#0_3_2_3_1@0| () T@U)
(declare-fun |##digits#0_3_2_3_0@0| () T@U)
(declare-fun |##digits#0_3_2_4_1@0| () T@U)
(declare-fun |##digits#0_3_2_4_0@0| () T@U)
(declare-fun |##digits#0_3_2_1_0@0| () T@U)
(declare-fun |##digits#0_3_2_2_0@0| () T@U)
(declare-fun |##digits#0_3_2_2_1@0| () T@U)
(declare-fun |a1#0_0@0| () Int)
(declare-fun |##digits#0_3_0_3@0| () T@U)
(declare-fun |a##0_3_0_0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |##digits#0_3_0_2@0| () T@U)
(declare-fun |##digits#0_3_0_1@0| () T@U)
(declare-fun |##digits#0_3_0_0@0| () T@U)
(declare-fun |d#0_3_0_0_0@0| () Int)
(declare-fun |x##0_2_5_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |b#0_0@0| () Int)
(declare-fun |y##0_1_5_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |##digits#0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.ZeroIsUnique)
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
 (=> (= (ControlFlow 0 0) 166) (let ((anon84_Else_correct true))
(let ((anon84_Then_correct  (and (=> (= (ControlFlow 0 142) (- 0 145)) (< (- 0 |base#0@@5|) |lowDigit#0@@1|)) (and (=> (= (ControlFlow 0 142) (- 0 144)) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (and (=> (= (ControlFlow 0 142) (- 0 143)) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|))) (=> (= (ControlFlow 0 142) (- 0 141)) (<= (+ |lowDigit#0@@1| |base#0@@5|) |base#0@@5|)))))))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 147) 142) anon84_Then_correct) (=> (= (ControlFlow 0 147) 146) anon84_Else_correct))))
(let ((anon83_Else_correct  (=> (and (not (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|)))) (= (ControlFlow 0 149) 147)) anon8_correct)))
(let ((anon83_Then_correct  (=> (and (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|))) (= (ControlFlow 0 148) 147)) anon8_correct)))
(let ((anon82_Else_correct  (=> (not (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0))))))) (and (=> (= (ControlFlow 0 152) 148) anon83_Then_correct) (=> (= (ControlFlow 0 152) 149) anon83_Else_correct)))))
(let ((anon82_Then_correct  (=> (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (and (=> (= (ControlFlow 0 150) (- 0 151)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 150) 148) anon83_Then_correct) (=> (= (ControlFlow 0 150) 149) anon83_Else_correct))))))
(let ((anon81_Else_correct  (=> (<= |lowDigit#0@@1| (- 0 |base#0@@5|)) (and (=> (= (ControlFlow 0 155) 150) anon82_Then_correct) (=> (= (ControlFlow 0 155) 152) anon82_Else_correct)))))
(let ((anon81_Then_correct  (=> (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (and (=> (= (ControlFlow 0 153) (- 0 154)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 153) 150) anon82_Then_correct) (=> (= (ControlFlow 0 153) 152) anon82_Else_correct))))))
(let ((anon80_Then_correct  (and (=> (= (ControlFlow 0 156) (- 0 158)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 156) (- 0 157)) (|Seq#Contains| |a#0| (|Seq#Index| |a#0| (LitInt 0)))) (=> (|Seq#Contains| |a#0| (|Seq#Index| |a#0| (LitInt 0))) (and (=> (= (ControlFlow 0 156) 153) anon81_Then_correct) (=> (= (ControlFlow 0 156) 155) anon81_Else_correct)))))))
(let ((anon59_correct  (=> (and (=> (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1)))) (= (ControlFlow 0 121) (- 0 120))) (|Seq#Equal| (_module.__default.trim ($LS ($LS $LZ)) |a#0|) (ite  (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) |a#0|)))))
(let ((anon118_Else_correct  (=> (and (not (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0)))) (= (ControlFlow 0 124) 121)) anon59_correct)))
(let ((anon118_Then_correct  (=> (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (and (<= 0 (- (|Seq#Length| |a#0|) 1)) (<= (- (|Seq#Length| |a#0|) 1) (|Seq#Length| |a#0|)))) (=> (and (and (= |##digits#0_3_2_5_1@0| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) ($IsAlloc SeqType |##digits#0_3_2_5_1@0| (TSeq TInt) $Heap)) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) (= (ControlFlow 0 122) 121))) anon59_correct)))))
(let ((anon117_Else_correct  (=> (= (|Seq#Length| |a#0|) 0) (and (=> (= (ControlFlow 0 127) 122) anon118_Then_correct) (=> (= (ControlFlow 0 127) 124) anon118_Else_correct)))))
(let ((anon117_Then_correct  (=> (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (and (=> (= (ControlFlow 0 125) (- 0 126)) (and (<= 0 (- (|Seq#Length| |a#0|) 1)) (< (- (|Seq#Length| |a#0|) 1) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 125) 122) anon118_Then_correct) (=> (= (ControlFlow 0 125) 124) anon118_Else_correct))))))
(let ((anon116_Then_correct  (=> ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap) (=> (and (|_module.__default.trim#canCall| |a#0|) (|_module.__default.trim#canCall| |a#0|)) (and (=> (= (ControlFlow 0 128) 125) anon117_Then_correct) (=> (= (ControlFlow 0 128) 127) anon117_Else_correct))))))
(let ((anon72_correct  (=> (=> (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0)))) (and (=> (= (ControlFlow 0 113) (- 0 116)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 113) (- 0 115)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0))) (=> (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (and (=> (= (ControlFlow 0 113) (- 0 114)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= |##digits#0_3_2_3_1@0| (|Seq#Take| |a#0| (LitInt 0))) (=> (and (and ($IsAlloc SeqType |##digits#0_3_2_3_1@0| (TSeq TInt) $Heap) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0)))) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0))) (= (ControlFlow 0 113) (- 0 112)))) (|Seq#Equal| (ite (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (LitInt 0))) |a#0|) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (LitInt 0)))))))))))))
(let ((anon124_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0))) (not true)) (= (ControlFlow 0 118) 113)) anon72_correct)))
(let ((anon124_Then_correct  (=> (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (=> (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|))) (=> (and (and (= |##digits#0_3_2_3_0@0| (|Seq#Take| |a#0| (LitInt 0))) ($IsAlloc SeqType |##digits#0_3_2_3_0@0| (TSeq TInt) $Heap)) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0))) (= (ControlFlow 0 117) 113))) anon72_correct)))))
(let ((anon123_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 119) 117) anon124_Then_correct) (=> (= (ControlFlow 0 119) 118) anon124_Else_correct)))))
(let ((anon68_correct  (=> (and (=> (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0)))) (= (ControlFlow 0 101) (- 0 100))) (|Seq#Equal| (ite  (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) |a#0|) (ite (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (LitInt 0))) |a#0|)))))
(let ((anon122_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0))) (not true)) (= (ControlFlow 0 104) 101)) anon68_correct)))
(let ((anon122_Then_correct  (=> (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (LitInt 0)) (and (=> (= (ControlFlow 0 102) (- 0 103)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|)))) (=> (and (and (= |##digits#0_3_2_4_1@0| (|Seq#Take| |a#0| (LitInt 0))) ($IsAlloc SeqType |##digits#0_3_2_4_1@0| (TSeq TInt) $Heap)) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0))) (= (ControlFlow 0 102) 101))) anon68_correct)))))
(let ((anon65_correct  (=> (=> (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1)))) (and (=> (= (ControlFlow 0 105) (- 0 107)) (= (|Seq#Length| |a#0|) (LitInt 1))) (=> (= (|Seq#Length| |a#0|) (LitInt 1)) (and (=> (= (ControlFlow 0 105) (- 0 106)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 105) 102) anon122_Then_correct) (=> (= (ControlFlow 0 105) 104) anon122_Else_correct))))))))
(let ((anon121_Else_correct  (=> (and (not (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0)))) (= (ControlFlow 0 109) 105)) anon65_correct)))
(let ((anon121_Then_correct  (=> (and (and (and (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (- (|Seq#Length| |a#0|) 1)))) (LitInt 0))) (and (<= 0 (- (|Seq#Length| |a#0|) 1)) (<= (- (|Seq#Length| |a#0|) 1) (|Seq#Length| |a#0|)))) (and (and (= |##digits#0_3_2_4_0@0| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) ($IsAlloc SeqType |##digits#0_3_2_4_0@0| (TSeq TInt) $Heap)) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (- (|Seq#Length| |a#0|) 1))) (= (ControlFlow 0 108) 105)))) anon65_correct)))
(let ((anon120_Else_correct  (=> (= (|Seq#Length| |a#0|) 0) (and (=> (= (ControlFlow 0 111) 108) anon121_Then_correct) (=> (= (ControlFlow 0 111) 109) anon121_Else_correct)))))
(let ((anon120_Then_correct  (=> (or (not (= (|Seq#Length| |a#0|) 0)) (not true)) (=> (and (<= 0 (- (|Seq#Length| |a#0|) 1)) (< (- (|Seq#Length| |a#0|) 1) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 110) 108) anon121_Then_correct) (=> (= (ControlFlow 0 110) 109) anon121_Else_correct))))))
(let ((anon127_Then_correct  (=> (= (ControlFlow 0 98) (- 0 97)) (not (|Seq#Equal| |Seq#Empty| |a#0|)))))
(let ((anon126_Then_correct  (=> (= |##digits#0_3_2_1_0@0| (Lit SeqType |Seq#Empty|)) (=> (and (and ($IsAlloc SeqType |##digits#0_3_2_1_0@0| (TSeq TInt) $Heap) (|_module.__default.trim#canCall| (Lit SeqType |Seq#Empty|))) (and (|_module.__default.trim#canCall| (Lit SeqType |Seq#Empty|)) (= (ControlFlow 0 96) (- 0 95)))) (|Seq#Equal| (_module.__default.trim ($LS ($LS $LZ)) (Lit SeqType |Seq#Empty|)) |Seq#Empty|)))))
(let ((anon125_Then_correct  (=> (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|))) (=> (and (and (= |##digits#0_3_2_2_0@0| (|Seq#Take| |a#0| (LitInt 0))) ($IsAlloc SeqType |##digits#0_3_2_2_0@0| (TSeq TInt) $Heap)) (and (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0))) (|_module.__default.trim#canCall| (|Seq#Take| |a#0| (LitInt 0))))) (and (=> (= (ControlFlow 0 92) (- 0 94)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (|Seq#Equal| (|Seq#Take| |a#0| (LitInt 0)) |Seq#Empty|)) (=> (|Seq#Equal| (|Seq#Take| |a#0| (LitInt 0)) |Seq#Empty|) (=> (= |##digits#0_3_2_2_1@0| (Lit SeqType |Seq#Empty|)) (=> (and (and ($IsAlloc SeqType |##digits#0_3_2_2_1@0| (TSeq TInt) $Heap) (|_module.__default.trim#canCall| (Lit SeqType |Seq#Empty|))) (and (|_module.__default.trim#canCall| (Lit SeqType |Seq#Empty|)) (= (ControlFlow 0 92) (- 0 91)))) (|Seq#Equal| (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Take| |a#0| (LitInt 0))) (_module.__default.trim ($LS ($LS $LZ)) (Lit SeqType |Seq#Empty|))))))))))))
(let ((anon115_Then_correct  (=> (|Seq#Equal| |a#0| (_module.__default.trim ($LS $LZ) |a#0|)) (=> (and (and ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap) (|_module.__default.trim#canCall| |a#0|)) (and (|_module.__default.trim#canCall| |a#0|) (= (ControlFlow 0 90) (- 0 89)))) (|Seq#Equal| |a#0| (_module.__default.trim ($LS ($LS $LZ)) |a#0|))))))
(let ((anon114_Then_correct true))
(let ((anon113_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (= (_module.__default.eval ($LS $LZ) |a#0| |base#0@@5|) (LitInt 0))) (and (=> (= (ControlFlow 0 86) (- 0 87)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 86) (- 0 85)) (= (= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (Mul |base#0@@5| |a1#0_0@0|)) (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0))))) (= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0))))))))))))
(let ((anon112_Then_correct  (and (=> (= (ControlFlow 0 82) (- 0 84)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 82) (- 0 81)) (= (= (Mul |base#0@@5| |a1#0_0@0|) (LitInt 0)) (= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (Mul |base#0@@5| |a1#0_0@0|)) (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))))))))
(let ((anon111_Then_correct  (=> (and (and (= |a1#0_0@0| (LitInt 0)) (= (ControlFlow 0 80) (- 0 79))) (= |a1#0_0@0| (LitInt 0))) (= (Mul |base#0@@5| |a1#0_0@0|) (LitInt 0)))))
(let ((anon110_Then_correct  (=> (= (ControlFlow 0 78) (- 0 77)) (= (U_2_bool (Lit boolType (bool_2_U true))) (= |a1#0_0@0| (LitInt 0))))))
(let ((anon109_Then_correct true))
(let ((anon108_Else_correct  (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|))) (=> (and (and (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|))) (= |##digits#0_3_0_3@0| (|Seq#Drop| |a#0| (LitInt 1)))) (and (and ($IsAlloc SeqType |##digits#0_3_0_3@0| (TSeq TInt) $Heap) (|_module.__default.trim#canCall| (|Seq#Drop| |a#0| (LitInt 1)))) (and (|_module.__default.trim#canCall| (|Seq#Drop| |a#0| (LitInt 1))) (|Seq#Equal| (|Seq#Drop| |a#0| (LitInt 1)) (_module.__default.trim ($LS $LZ) (|Seq#Drop| |a#0| (LitInt 1))))))) (and (=> (= (ControlFlow 0 64) (- 0 74)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|))) (=> (= |a##0_3_0_0@0| (|Seq#Drop| |a#0| (LitInt 1))) (and (=> (= (ControlFlow 0 64) (- 0 73)) (or (or (<= 0 |lowDigit#0@@1|) (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|))) (= |lowDigit#0@@1| |lowDigit#0@@1|))) (=> (or (or (<= 0 |lowDigit#0@@1|) (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|))) (= |lowDigit#0@@1| |lowDigit#0@@1|)) (and (=> (= (ControlFlow 0 64) (- 0 72)) (or (or (or (<= 0 |base#0@@5|) (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|))) (< |lowDigit#0@@1| |lowDigit#0@@1|)) (= |base#0@@5| |base#0@@5|))) (=> (or (or (or (<= 0 |base#0@@5|) (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|))) (< |lowDigit#0@@1| |lowDigit#0@@1|)) (= |base#0@@5| |base#0@@5|)) (and (=> (= (ControlFlow 0 64) (- 0 71)) (or (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|)) (and (= (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|)) (or (< |lowDigit#0@@1| |lowDigit#0@@1|) (and (= |lowDigit#0@@1| |lowDigit#0@@1|) (< |base#0@@5| |base#0@@5|)))))) (=> (or (< (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|)) (and (= (|Seq#Rank| |a##0_3_0_0@0|) (|Seq#Rank| |a#0|)) (or (< |lowDigit#0@@1| |lowDigit#0@@1|) (and (= |lowDigit#0@@1| |lowDigit#0@@1|) (< |base#0@@5| |base#0@@5|))))) (and (=> (= (ControlFlow 0 64) (- 0 70)) (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (<= (LitInt 2) |base#0@@5|)))) (=> (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (<= (LitInt 2) |base#0@@5|))) (and (=> (= (ControlFlow 0 64) (- 0 69)) (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (<= |lowDigit#0@@1| (LitInt 0))))) (=> (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (<= |lowDigit#0@@1| (LitInt 0)))) (and (=> (= (ControlFlow 0 64) (- 0 68)) (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (< 0 (+ |lowDigit#0@@1| |base#0@@5|))))) (=> (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (< 0 (+ |lowDigit#0@@1| |base#0@@5|)))) (and (=> (= (ControlFlow 0 64) (- 0 67)) (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (forall ((|i#0@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |a##0_3_0_0@0|))) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@0|))))) (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |a##0_3_0_0@0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@0|))) (+ |lowDigit#0@@1| |base#0@@5|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |680|
 :pattern ( ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@0|)))
))))) (=> (=> (|_module.__default.IsSkewNumber#canCall| |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber |a##0_3_0_0@0| |lowDigit#0@@1| |base#0@@5|) (forall ((|i#0@@1| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| (|Seq#Length| |a##0_3_0_0@0|))) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@1|))))) (=> (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| (|Seq#Length| |a##0_3_0_0@0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@1|))) (+ |lowDigit#0@@1| |base#0@@5|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |680|
 :pattern ( ($Unbox intType (|Seq#Index| |a##0_3_0_0@0| |i#0@@1|)))
)))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (|Seq#Equal| |a##0_3_0_0@0| (_module.__default.trim ($LS ($LS $LZ)) |a##0_3_0_0@0|))) (=> (|Seq#Equal| |a##0_3_0_0@0| (_module.__default.trim ($LS ($LS $LZ)) |a##0_3_0_0@0|)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (= (_module.__default.eval ($LS ($LS $LZ)) |a##0_3_0_0@0| |base#0@@5|) (LitInt 0))) (=> (= (_module.__default.eval ($LS ($LS $LZ)) |a##0_3_0_0@0| |base#0@@5|) (LitInt 0)) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|Seq#Equal| |a##0_3_0_0@0| |Seq#Empty|)) (and (= $Heap $Heap@3) (= (ControlFlow 0 64) (- 0 63)))) (= (|Seq#Length| |a#0|) (LitInt 1))))))))))))))))))))))))))))
(let ((anon108_Then_correct  (=> (|Seq#Equal| |a#0| (_module.__default.trim ($LS $LZ) |a#0|)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (|Seq#Equal| |a#0| (_module.__default.trim ($LS ($LS $LZ)) |a#0|))) (=> (|Seq#Equal| |a#0| (_module.__default.trim ($LS ($LS $LZ)) |a#0|)) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (not (|Seq#Equal| |a#0| |Seq#Empty|)) (|_module.__default.trim#canCall| (|Seq#Drop| |a#0| (LitInt 1))))) (and (or (|Seq#Equal| |a#0| |Seq#Empty|) (|Seq#Equal| (|Seq#Drop| |a#0| (LitInt 1)) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Drop| |a#0| (LitInt 1))))) (= $Heap $Heap@2))) (and (=> (= (ControlFlow 0 59) (- 0 61)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (=> (= |##digits#0_3_0_2@0| (|Seq#Drop| |a#0| (LitInt 1))) (=> (and (and ($IsAlloc SeqType |##digits#0_3_0_2@0| (TSeq TInt) $Heap@2) (|_module.__default.trim#canCall| (|Seq#Drop| |a#0| (LitInt 1)))) (and (|_module.__default.trim#canCall| (|Seq#Drop| |a#0| (LitInt 1))) (= (ControlFlow 0 59) (- 0 58)))) (|Seq#Equal| (|Seq#Drop| |a#0| (LitInt 1)) (_module.__default.trim ($LS ($LS $LZ)) (|Seq#Drop| |a#0| (LitInt 1))))))))))))))
(let ((anon105_Else_correct  (=> (and (and (and (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|))) (= |##digits#0_3_0_1@0| (|Seq#Drop| |a#0| (LitInt 1)))) (and ($IsAlloc SeqType |##digits#0_3_0_1@0| (TSeq TInt) $Heap) ($IsAlloc intType (int_2_U |lowDigit#0@@1|) TInt $Heap))) (and (and ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap) (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|)) (and (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (_module.__default.IsSkewNumber (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|)))) (and (=> (= (ControlFlow 0 75) 59) anon108_Then_correct) (=> (= (ControlFlow 0 75) 64) anon108_Else_correct)))))
(let ((anon41_correct  (and (=> (= (ControlFlow 0 48) (- 0 53)) (forall ((|d#0_3_0_0_1| Int) ) (!  (=> (|Seq#Contains| (|Seq#Drop| |a#0| (LitInt 1)) ($Box intType (int_2_U |d#0_3_0_0_1|))) (|Seq#Contains| |a#0| ($Box intType (int_2_U |d#0_3_0_0_1|))))
 :qid |NumberRepresentationsdfy.318:25|
 :skolemid |687|
 :pattern ( (|Seq#Contains| |a#0| ($Box intType (int_2_U |d#0_3_0_0_1|))))
 :pattern ( (|Seq#Contains| (|Seq#Drop| |a#0| 1) ($Box intType (int_2_U |d#0_3_0_0_1|))))
))) (=> (forall ((|d#0_3_0_0_1@@0| T@U) ) (!  (=> (|Seq#Contains| (|Seq#Drop| |a#0| (LitInt 1)) ($Box intType |d#0_3_0_0_1@@0|)) (|Seq#Contains| |a#0| ($Box intType |d#0_3_0_0_1@@0|)))
 :qid |NumberRepresentationsdfy.318:25|
 :skolemid |687|
 :pattern ( (|Seq#Contains| |a#0| ($Box intType |d#0_3_0_0_1@@0|)))
 :pattern ( (|Seq#Contains| (|Seq#Drop| |a#0| 1) ($Box intType |d#0_3_0_0_1@@0|)))
)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (=> (and (= |##digits#0_3_0_0@0| (|Seq#Drop| |a#0| (LitInt 1))) ($IsAlloc SeqType |##digits#0_3_0_0@0| (TSeq TInt) $Heap)) (=> (and (and ($IsAlloc intType (int_2_U |lowDigit#0@@1|) TInt $Heap) ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap)) (and (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|))) (and (=> (= (ControlFlow 0 48) (- 0 51)) (=> (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (<= (LitInt 2) |base#0@@5|)))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (=> (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (<= |lowDigit#0@@1| (LitInt 0))))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (=> (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (< 0 (+ |lowDigit#0@@1| |base#0@@5|))))) (=> (= (ControlFlow 0 48) (- 0 47)) (=> (|_module.__default.IsSkewNumber#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (or (_module.__default.IsSkewNumber (|Seq#Drop| |a#0| (LitInt 1)) |lowDigit#0@@1| |base#0@@5|) (forall ((|i#0_3_0_0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#0_3_0_0|) (< |i#0_3_0_0| (|Seq#Length| (|Seq#Drop| |a#0| (LitInt 1))))) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| (|Seq#Drop| |a#0| (LitInt 1)) |i#0_3_0_0|))))) (=> (and (<= (LitInt 0) |i#0_3_0_0|) (< |i#0_3_0_0| (|Seq#Length| (|Seq#Drop| |a#0| (LitInt 1))))) (< (U_2_int ($Unbox intType (|Seq#Index| (|Seq#Drop| |a#0| (LitInt 1)) |i#0_3_0_0|))) (+ |lowDigit#0@@1| |base#0@@5|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |688|
 :pattern ( ($Unbox intType (|Seq#Index| (|Seq#Drop| |a#0| 1) |i#0_3_0_0|)))
)))))))))))))))
(let ((anon107_Else_correct  (=> (and (not (|Seq#Contains| (|Seq#Drop| |a#0| (LitInt 1)) ($Box intType (int_2_U |d#0_3_0_0_0@0|)))) (= (ControlFlow 0 55) 48)) anon41_correct)))
(let ((anon107_Then_correct  (=> (and (|Seq#Contains| (|Seq#Drop| |a#0| (LitInt 1)) ($Box intType (int_2_U |d#0_3_0_0_0@0|))) (= (ControlFlow 0 54) 48)) anon41_correct)))
(let ((anon106_Then_correct  (and (=> (= (ControlFlow 0 56) (- 0 57)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 56) 54) anon107_Then_correct) (=> (= (ControlFlow 0 56) 55) anon107_Else_correct)))))
(let ((anon106_Else_correct true))
(let ((anon102_Then_correct  (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (<= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (- 0 |base#0@@5|))) (=> (and (and (and (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|))) (<= (+ |lowDigit#0@@1| |base#0@@5|) |base#0@@5|)) (= (ControlFlow 0 44) (- 0 43))) (<= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (- 0 |base#0@@5|))) (U_2_bool (Lit boolType (bool_2_U false)))))))
(let ((anon101_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 41) (- 0 40)) (= (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|) (LitInt 0)) (<= (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (- 0 |base#0@@5|))))))))
(let ((anon100_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (= (_module.__default.eval ($LS $LZ) |a#0| |base#0@@5|) (LitInt 0))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 38) (- 0 37)) (= (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|) (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (Mul |base#0@@5| |a1#0_0@0|))) (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|) (LitInt 0)))))))))
(let ((anon99_Then_correct  (and (=> (= (ControlFlow 0 34) (- 0 36)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 34) (- 0 33)) (= (<= |base#0@@5| (Mul |base#0@@5| |a1#0_0@0|)) (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|) (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (Mul |base#0@@5| |a1#0_0@0|)))))))))
(let ((anon98_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (= (Mul |base#0@@5| (LitInt 1)) |base#0@@5|)) (=> (= (Mul |base#0@@5| (LitInt 1)) |base#0@@5|) (=> (= (ControlFlow 0 31) (- 0 30)) (= (<= (Mul |base#0@@5| (LitInt 1)) (Mul |base#0@@5| |a1#0_0@0|)) (<= |base#0@@5| (Mul |base#0@@5| |a1#0_0@0|))))))))
(let ((anon97_Then_correct  (=> (and (<= (LitInt 1) |a1#0_0@0|) (= |x##0_2_5_0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (<= (LitInt 0) |base#0@@5|)) (=> (<= (LitInt 0) |base#0@@5|) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= |x##0_2_5_0@0| |a1#0_0@0|)) (=> (<= |x##0_2_5_0@0| |a1#0_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (<= (Mul |base#0@@5| |x##0_2_5_0@0|) (Mul |base#0@@5| |a1#0_0@0|))) (and (and (= $Heap $Heap@1) (= (ControlFlow 0 27) (- 0 26))) (<= (LitInt 1) |a1#0_0@0|))) (<= (Mul |base#0@@5| (LitInt 1)) (Mul |base#0@@5| |a1#0_0@0|))))))))))
(let ((anon96_Then_correct true))
(let ((anon95_Then_correct  (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (<= |base#0@@5| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (=> (and (and (and (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|))) (<= (+ |lowDigit#0@@1| |base#0@@5|) |base#0@@5|)) (= (ControlFlow 0 24) (- 0 23))) (<= |base#0@@5| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (U_2_bool (Lit boolType (bool_2_U false)))))))
(let ((anon94_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 21) (- 0 20)) (= (<= (LitInt 0) (- (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|)) (<= |base#0@@5| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))))))))
(let ((anon93_Then_correct  (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (= (_module.__default.eval ($LS $LZ) |a#0| |base#0@@5|) (LitInt 0))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 18) (- 0 17)) (= (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |b#0_0@0|) (- (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|)) (<= (LitInt 0) (- (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|)))))))))
(let ((anon92_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (= (ControlFlow 0 14) (- 0 13)) (= (<= |b#0_0@0| (Mul |base#0@@5| (LitInt (- 0 1)))) (<= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |b#0_0@0|) (- (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |base#0@@5|))))))))
(let ((anon91_Then_correct  (=> (<= (Mul |base#0@@5| |a1#0_0@0|) (Mul |base#0@@5| (LitInt (- 0 1)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (Mul |base#0@@5| |a1#0_0@0|) |b#0_0@0|)) (=> (= (Mul |base#0@@5| |a1#0_0@0|) |b#0_0@0|) (=> (= (ControlFlow 0 11) (- 0 10)) (=> (<= (Mul |base#0@@5| |a1#0_0@0|) (Mul |base#0@@5| (LitInt (- 0 1)))) (<= |b#0_0@0| (Mul |base#0@@5| (LitInt (- 0 1)))))))))))
(let ((anon90_Then_correct  (=> (and (<= |a1#0_0@0| (LitInt (- 0 1))) (= |y##0_1_5_0@0| (LitInt (- 0 1)))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (<= (LitInt 0) |base#0@@5|)) (=> (<= (LitInt 0) |base#0@@5|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (<= |a1#0_0@0| |y##0_1_5_0@0|)) (=> (<= |a1#0_0@0| |y##0_1_5_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (<= (Mul |base#0@@5| |a1#0_0@0|) (Mul |base#0@@5| |y##0_1_5_0@0|))) (and (and (= $Heap $Heap@0) (= (ControlFlow 0 7) (- 0 6))) (<= |a1#0_0@0| (LitInt (- 0 1))))) (<= (Mul |base#0@@5| |a1#0_0@0|) (Mul |base#0@@5| (LitInt (- 0 1))))))))))))
(let ((anon89_Then_correct true))
(let ((anon88_Then_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (|Seq#Equal| |a#0| |Seq#Empty|))))
(let ((anon127_Else_correct  (=> (and (not (|Seq#Equal| |a#0| |a#0|)) (= (ControlFlow 0 99) 2)) GeneratedUnifiedExit_correct)))
(let ((anon113_Else_correct  (=> (=> true (= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 129) 88) anon114_Then_correct) (=> (= (ControlFlow 0 129) 90) anon115_Then_correct)) (=> (= (ControlFlow 0 129) 128) anon116_Then_correct)) (=> (= (ControlFlow 0 129) 119) anon123_Then_correct)) (=> (= (ControlFlow 0 129) 92) anon125_Then_correct)) (=> (= (ControlFlow 0 129) 96) anon126_Then_correct)) (=> (= (ControlFlow 0 129) 98) anon127_Then_correct)) (=> (= (ControlFlow 0 129) 99) anon127_Else_correct)) (=> (= (ControlFlow 0 129) 110) anon120_Then_correct)) (=> (= (ControlFlow 0 129) 111) anon120_Else_correct)))))
(let ((anon104_Else_correct  (=> (= (|Seq#Length| |a#0|) (LitInt 1)) (and (and (and (and (and (=> (= (ControlFlow 0 130) 76) anon109_Then_correct) (=> (= (ControlFlow 0 130) 78) anon110_Then_correct)) (=> (= (ControlFlow 0 130) 80) anon111_Then_correct)) (=> (= (ControlFlow 0 130) 82) anon112_Then_correct)) (=> (= (ControlFlow 0 130) 86) anon113_Then_correct)) (=> (= (ControlFlow 0 130) 129) anon113_Else_correct)))))
(let ((anon103_Then_correct  (=> (= |a1#0_0@0| (LitInt 0)) (and (and (and (=> (= (ControlFlow 0 131) 130) anon104_Else_correct) (=> (= (ControlFlow 0 131) 75) anon105_Else_correct)) (=> (= (ControlFlow 0 131) 56) anon106_Then_correct)) (=> (= (ControlFlow 0 131) 46) anon106_Else_correct)))))
(let ((anon103_Else_correct  (=> (and (or (not (= |a1#0_0@0| (LitInt 0))) (not true)) (= (ControlFlow 0 45) 2)) GeneratedUnifiedExit_correct)))
(let ((anon102_Else_correct  (=> (=> (<= (LitInt 1) |a1#0_0@0|) false) (and (=> (= (ControlFlow 0 132) 131) anon103_Then_correct) (=> (= (ControlFlow 0 132) 45) anon103_Else_correct)))))
(let ((anon95_Else_correct  (=> (=> (<= |a1#0_0@0| (LitInt (- 0 1))) false) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 133) 25) anon96_Then_correct) (=> (= (ControlFlow 0 133) 27) anon97_Then_correct)) (=> (= (ControlFlow 0 133) 31) anon98_Then_correct)) (=> (= (ControlFlow 0 133) 34) anon99_Then_correct)) (=> (= (ControlFlow 0 133) 38) anon100_Then_correct)) (=> (= (ControlFlow 0 133) 41) anon101_Then_correct)) (=> (= (ControlFlow 0 133) 44) anon102_Then_correct)) (=> (= (ControlFlow 0 133) 132) anon102_Else_correct)))))
(let ((anon17_correct  (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 134) 4) anon88_Then_correct) (=> (= (ControlFlow 0 134) 5) anon89_Then_correct)) (=> (= (ControlFlow 0 134) 7) anon90_Then_correct)) (=> (= (ControlFlow 0 134) 11) anon91_Then_correct)) (=> (= (ControlFlow 0 134) 14) anon92_Then_correct)) (=> (= (ControlFlow 0 134) 18) anon93_Then_correct)) (=> (= (ControlFlow 0 134) 21) anon94_Then_correct)) (=> (= (ControlFlow 0 134) 24) anon95_Then_correct)) (=> (= (ControlFlow 0 134) 133) anon95_Else_correct))))
(let ((anon87_Else_correct  (=> (and (not (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|)))) (= (ControlFlow 0 136) 134)) anon17_correct)))
(let ((anon87_Then_correct  (=> (and (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) (+ |lowDigit#0@@1| |base#0@@5|))) (= (ControlFlow 0 135) 134)) anon17_correct)))
(let ((anon86_Else_correct  (=> (not (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0))))))) (and (=> (= (ControlFlow 0 138) 135) anon87_Then_correct) (=> (= (ControlFlow 0 138) 136) anon87_Else_correct)))))
(let ((anon86_Then_correct  (=> (and (and (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))))) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (and (=> (= (ControlFlow 0 137) 135) anon87_Then_correct) (=> (= (ControlFlow 0 137) 136) anon87_Else_correct)))))
(let ((anon85_Else_correct  (=> (<= |lowDigit#0@@1| (- 0 |base#0@@5|)) (and (=> (= (ControlFlow 0 140) 137) anon86_Then_correct) (=> (= (ControlFlow 0 140) 138) anon86_Else_correct)))))
(let ((anon85_Then_correct  (=> (< (- 0 |base#0@@5|) |lowDigit#0@@1|) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|))) (and (=> (= (ControlFlow 0 139) 137) anon86_Then_correct) (=> (= (ControlFlow 0 139) 138) anon86_Else_correct))))))
(let ((anon79_Then_correct  (=> (not (|Seq#Equal| |a#0| |Seq#Empty|)) (and (=> (= (ControlFlow 0 159) (- 0 164)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |a#0|))) (=> (= |##digits#0_0@0| (|Seq#Drop| |a#0| (LitInt 1))) (=> (and ($IsAlloc SeqType |##digits#0_0@0| (TSeq TInt) $Heap) ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap)) (and (=> (= (ControlFlow 0 159) (- 0 163)) (<= (LitInt 2) |base#0@@5|)) (=> (<= (LitInt 2) |base#0@@5|) (=> (and (and (|_module.__default.eval#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |base#0@@5|) (|_module.__default.eval#canCall| (|Seq#Drop| |a#0| (LitInt 1)) |base#0@@5|)) (and (= |a1#0_0@0| (_module.__default.eval ($LS $LZ) (|Seq#Drop| |a#0| (LitInt 1)) |base#0@@5|)) (= |b#0_0@0| (Mul |base#0@@5| |a1#0_0@0|)))) (and (=> (= (ControlFlow 0 159) (- 0 162)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |a#0|)))) (=> (and ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap) ($IsAlloc intType (int_2_U |base#0@@5|) TInt $Heap)) (and (=> (= (ControlFlow 0 159) (- 0 161)) (<= (LitInt 2) |base#0@@5|)) (=> (and (|_module.__default.eval#canCall| |a#0| |base#0@@5|) (|_module.__default.eval#canCall| |a#0| |base#0@@5|)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |b#0_0@0|) (_module.__default.eval ($LS ($LS $LZ)) |a#0| |base#0@@5|))) (=> (= (+ (U_2_int ($Unbox intType (|Seq#Index| |a#0| (LitInt 0)))) |b#0_0@0|) (_module.__default.eval ($LS $LZ) |a#0| |base#0@@5|)) (and (and (=> (= (ControlFlow 0 159) 156) anon80_Then_correct) (=> (= (ControlFlow 0 159) 139) anon85_Then_correct)) (=> (= (ControlFlow 0 159) 140) anon85_Else_correct))))))))))))))))))
(let ((anon79_Else_correct  (=> (and (|Seq#Equal| |a#0| |Seq#Empty|) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 165) 159) anon79_Then_correct) (=> (= (ControlFlow 0 165) 3) anon79_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SeqType |a#0| (TSeq TInt)) ($IsAlloc SeqType |a#0| (TSeq TInt) $Heap)) (= 2 $FunctionContextHeight)) (and (and (|_module.__default.IsSkewNumber#canCall| |a#0| |lowDigit#0@@1| |base#0@@5|) (and (_module.__default.IsSkewNumber |a#0| |lowDigit#0@@1| |base#0@@5|) (and (and (<= (LitInt 2) |base#0@@5|) (and (<= |lowDigit#0@@1| (LitInt 0)) (< 0 (+ |lowDigit#0@@1| |base#0@@5|)))) (forall ((|i#1@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| |a#0|))) (<= |lowDigit#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |a#0| |i#1@@0|))))) (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| |a#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |a#0| |i#1@@0|))) (+ |lowDigit#0@@1| |base#0@@5|))))
 :qid |NumberRepresentationsdfy.45:10|
 :skolemid |683|
 :pattern ( ($Unbox intType (|Seq#Index| |a#0| |i#1@@0|)))
))))) (= (ControlFlow 0 166) 165))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
