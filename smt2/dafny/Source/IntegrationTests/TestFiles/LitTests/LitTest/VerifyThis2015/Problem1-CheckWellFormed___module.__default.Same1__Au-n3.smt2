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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.IsRelaxedPrefixAux (T@U T@U T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.IsRelaxedPrefixAux#canCall| (T@U T@U T@U Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
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
(assert (distinct TagSeq alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.IsRelaxedPrefixAux$T T@U) ($ly T@U) (|pat#0| T@U) (|a#0| T@U) (|slack#0| Int) ) (!  (=> (or (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T |pat#0| |a#0| |slack#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |pat#0| (TSeq _module._default.IsRelaxedPrefixAux$T)) ($Is SeqType |a#0| (TSeq _module._default.IsRelaxedPrefixAux$T))) (<= (LitInt 0) |slack#0|)))) (and (=> (not (|Seq#Equal| |pat#0| |Seq#Empty|)) (and (=> (and (not (|Seq#Equal| |a#0| |Seq#Empty|)) (= (|Seq#Index| |pat#0| (LitInt 0)) (|Seq#Index| |a#0| (LitInt 0)))) (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T (|Seq#Drop| |pat#0| (LitInt 1)) (|Seq#Drop| |a#0| (LitInt 1)) |slack#0|)) (=> (not (and (not (|Seq#Equal| |a#0| |Seq#Empty|)) (= (|Seq#Index| |pat#0| (LitInt 0)) (|Seq#Index| |a#0| (LitInt 0))))) (=> (> |slack#0| 0) (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T (|Seq#Drop| |pat#0| (LitInt 1)) |a#0| (- |slack#0| 1)))))) (= (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T ($LS $ly) |pat#0| |a#0| |slack#0|) (ite (|Seq#Equal| |pat#0| |Seq#Empty|) true (ite  (and (not (|Seq#Equal| |a#0| |Seq#Empty|)) (= (|Seq#Index| |pat#0| (LitInt 0)) (|Seq#Index| |a#0| (LitInt 0)))) (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T $ly (|Seq#Drop| |pat#0| (LitInt 1)) (|Seq#Drop| |a#0| (LitInt 1)) |slack#0|)  (and (> |slack#0| 0) (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T $ly (|Seq#Drop| |pat#0| (LitInt 1)) |a#0| (- |slack#0| 1))))))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T ($LS $ly) |pat#0| |a#0| |slack#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (t T@U) (n Int) ) (!  (=> (= n (|Seq#Length| s)) (and (= (|Seq#Take| (|Seq#Append| s t) n) s) (= (|Seq#Drop| (|Seq#Append| s t) n) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s t) n))
 :pattern ( (|Seq#Drop| (|Seq#Append| s t) n))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
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
(assert (forall ((s@@1 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@1))) (= (|Seq#Index| (|Seq#Take| s@@1 n@@1) j) (|Seq#Index| s@@1 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@1 n@@1) j))
 :pattern ( (|Seq#Index| s@@1 j) (|Seq#Take| s@@1 n@@1))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@2))) (= (|Seq#Length| (|Seq#Drop| s@@2 n@@2)) (- (|Seq#Length| s@@2) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@2 n@@2)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t@@0 h) ($IsAlloc T@@1 v t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t@@0 h))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@3) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@1) (|Seq#Index| s@@3 (+ j@@1 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@3 n@@3) j@@1))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.IsRelaxedPrefixAux$T@@0 T@U) ($ly@@0 T@U) (|pat#0@@0| T@U) (|a#0@@0| T@U) (|slack#0@@0| Int) ) (!  (=> (or (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T@@0 (Lit SeqType |pat#0@@0|) (Lit SeqType |a#0@@0|) (LitInt |slack#0@@0|)) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |pat#0@@0| (TSeq _module._default.IsRelaxedPrefixAux$T@@0)) ($Is SeqType |a#0@@0| (TSeq _module._default.IsRelaxedPrefixAux$T@@0))) (<= (LitInt 0) |slack#0@@0|)))) (and (=> (not (|Seq#Equal| |pat#0@@0| |Seq#Empty|)) (and (=> (and (not (|Seq#Equal| |a#0@@0| |Seq#Empty|)) (= (|Seq#Index| (Lit SeqType |pat#0@@0|) (LitInt 0)) (|Seq#Index| (Lit SeqType |a#0@@0|) (LitInt 0)))) (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T@@0 (Lit SeqType (|Seq#Drop| (Lit SeqType |pat#0@@0|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |a#0@@0|) (LitInt 1))) (LitInt |slack#0@@0|))) (=> (not (and (not (|Seq#Equal| |a#0@@0| |Seq#Empty|)) (= (|Seq#Index| (Lit SeqType |pat#0@@0|) (LitInt 0)) (|Seq#Index| (Lit SeqType |a#0@@0|) (LitInt 0))))) (=> (U_2_bool (Lit boolType (bool_2_U (> |slack#0@@0| 0)))) (|_module.__default.IsRelaxedPrefixAux#canCall| _module._default.IsRelaxedPrefixAux$T@@0 (Lit SeqType (|Seq#Drop| (Lit SeqType |pat#0@@0|) (LitInt 1))) (Lit SeqType |a#0@@0|) (LitInt (- |slack#0@@0| 1))))))) (= (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@0 ($LS $ly@@0) (Lit SeqType |pat#0@@0|) (Lit SeqType |a#0@@0|) (LitInt |slack#0@@0|)) (ite (|Seq#Equal| |pat#0@@0| |Seq#Empty|) true (ite  (and (not (|Seq#Equal| |a#0@@0| |Seq#Empty|)) (= (|Seq#Index| (Lit SeqType |pat#0@@0|) (LitInt 0)) (|Seq#Index| (Lit SeqType |a#0@@0|) (LitInt 0)))) (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@0 ($LS $ly@@0) (Lit SeqType (|Seq#Drop| (Lit SeqType |pat#0@@0|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |a#0@@0|) (LitInt 1))) (LitInt |slack#0@@0|))  (and (> |slack#0@@0| 0) (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@0 ($LS $ly@@0) (Lit SeqType (|Seq#Drop| (Lit SeqType |pat#0@@0|) (LitInt 1))) (Lit SeqType |a#0@@0|) (LitInt (- |slack#0@@0| 1)))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |591|
 :pattern ( (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@0 ($LS $ly@@0) (Lit SeqType |pat#0@@0|) (Lit SeqType |a#0@@0|) (LitInt |slack#0@@0|)))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@4 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Take| s@@4 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@4 n@@4)))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@1) ($Is T@@2 v@@0 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@1))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@5))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
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
 :skolemid |637|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@0 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@0 (TSeq t@@4)))
)))
(assert (forall ((_module._default.IsRelaxedPrefixAux$T@@1 T@U) ($ly@@1 T@U) (|pat#0@@1| T@U) (|a#0@@1| T@U) (|slack#0@@1| Int) ) (! (= (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@1 ($LS $ly@@1) |pat#0@@1| |a#0@@1| |slack#0@@1|) (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@1 $ly@@1 |pat#0@@1| |a#0@@1| |slack#0@@1|))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.IsRelaxedPrefixAux _module._default.IsRelaxedPrefixAux$T@@1 ($LS $ly@@1) |pat#0@@1| |a#0@@1| |slack#0@@1|))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((s@@6 T@U) (n@@5 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@5) (<= n@@5 k)) (< k (|Seq#Length| s@@6))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@5) (- k n@@5)) (|Seq#Index| s@@6 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@6 k) (|Seq#Drop| s@@6 n@@5))
)))
(assert (forall ((s@@7 T@U) (m@@4 Int) (n@@6 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@6)) (<= (+ m@@4 n@@6) (|Seq#Length| s@@7))) (= (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@6) (|Seq#Drop| s@@7 (+ m@@4 n@@6))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@7 m@@4) n@@6))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@7 Int) ) (! (= (|Seq#SameUntil| s0@@1 s1@@1 n@@7) (forall ((j@@2 Int) ) (!  (=> (and (<= 0 j@@2) (< j@@2 n@@7)) (= (|Seq#Index| s0@@1 j@@2) (|Seq#Index| s1@@1 j@@2)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0@@1 j@@2))
 :pattern ( (|Seq#Index| s1@@1 j@@2))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0@@1 s1@@1 n@@7))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@8) (|Seq#Index| s0@@2 n@@8))) (=> (<= (|Seq#Length| s0@@2) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@8) (|Seq#Index| s1@@2 (- n@@8 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@8))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((s@@9 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@9 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@9 n@@9))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0| () Int)
(declare-fun |pat#0@@2| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun _module._default.Same1_Aux$T () T@U)
(declare-fun |a#0@@2| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.Same1__Aux)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon5_correct  (=> (or (= (+ |k#0| 1) (|Seq#Length| |pat#0@@2|)) (or (not (= (|Seq#Index| |pat#0@@2| |k#0|) (|Seq#Index| |pat#0@@2| (+ |k#0| 1)))) (not true))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (= $Heap $Heap@0) ($IsAlloc SeqType |pat#0@@2| (TSeq _module._default.Same1_Aux$T) $Heap@0)) (and ($IsAlloc SeqType |a#0@@2| (TSeq _module._default.Same1_Aux$T) $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))))
(let ((anon7_Else_correct  (=> (and (= (+ |k#0| 1) (|Seq#Length| |pat#0@@2|)) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon7_Then_correct  (=> (or (not (= (+ |k#0| 1) (|Seq#Length| |pat#0@@2|))) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 |k#0|) (< |k#0| (|Seq#Length| |pat#0@@2|)))) (=> (and (<= 0 |k#0|) (< |k#0| (|Seq#Length| |pat#0@@2|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 (+ |k#0| 1)) (< (+ |k#0| 1) (|Seq#Length| |pat#0@@2|)))) (=> (and (<= 0 (+ |k#0| 1)) (< (+ |k#0| 1) (|Seq#Length| |pat#0@@2|))) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))
(let ((anon3_correct  (=> (and (<= (LitInt 0) |k#0|) (< |k#0| (|Seq#Length| |pat#0@@2|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 |k#0|) (<= |k#0| (|Seq#Length| |pat#0@@2|)))) (=> (and (<= 0 |k#0|) (<= |k#0| (|Seq#Length| |pat#0@@2|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= 0 (+ |k#0| 1)) (<= (+ |k#0| 1) (|Seq#Length| |pat#0@@2|)))) (=> (and (<= 0 (+ |k#0| 1)) (<= (+ |k#0| 1) (|Seq#Length| |pat#0@@2|))) (=> (and (<= (|Seq#Length| (|Seq#Append| (|Seq#Take| |pat#0@@2| |k#0|) (|Seq#Drop| |pat#0@@2| (+ |k#0| 1)))) (|Seq#Length| |a#0@@2|)) (|Seq#SameUntil| (|Seq#Append| (|Seq#Take| |pat#0@@2| |k#0|) (|Seq#Drop| |pat#0@@2| (+ |k#0| 1))) |a#0@@2| (|Seq#Length| (|Seq#Append| (|Seq#Take| |pat#0@@2| |k#0|) (|Seq#Drop| |pat#0@@2| (+ |k#0| 1)))))) (and (=> (= (ControlFlow 0 7) 3) anon7_Then_correct) (=> (= (ControlFlow 0 7) 6) anon7_Else_correct))))))))))
(let ((anon6_Else_correct  (=> (and (< |k#0| (LitInt 0)) (= (ControlFlow 0 11) 7)) anon3_correct)))
(let ((anon6_Then_correct  (=> (and (<= (LitInt 0) |k#0|) (= (ControlFlow 0 10) 7)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 12) 10) anon6_Then_correct) (=> (= (ControlFlow 0 12) 11) anon6_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |pat#0@@2| (TSeq _module._default.Same1_Aux$T)) ($IsAlloc SeqType |pat#0@@2| (TSeq _module._default.Same1_Aux$T) $Heap))) (=> (and (and (and ($Is SeqType |a#0@@2| (TSeq _module._default.Same1_Aux$T)) ($IsAlloc SeqType |a#0@@2| (TSeq _module._default.Same1_Aux$T) $Heap)) (<= (LitInt 0) |k#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 13) 12))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
