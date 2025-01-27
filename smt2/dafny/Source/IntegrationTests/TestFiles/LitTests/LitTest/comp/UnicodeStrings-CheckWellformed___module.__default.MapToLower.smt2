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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
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
(declare-fun _module.__default.ToLower (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |_module.__default.ToLower#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |char#Minus| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.__default.MapToLower (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.MapToLower#canCall| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TChar TagChar TagSeq alloc)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Ctor charType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ch#0| T@U) ) (!  (=> (or (|_module.__default.ToLower#canCall| (Lit charType |ch#0|)) (and (< 0 $FunctionContextHeight) ($Is charType |ch#0| TChar))) (= (_module.__default.ToLower (Lit charType |ch#0|)) (ite  (and (<= (|char#ToInt| (Lit charType (|char#FromInt| 65))) (|char#ToInt| (Lit charType |ch#0|))) (<= (|char#ToInt| (Lit charType |ch#0|)) (|char#ToInt| (Lit charType (|char#FromInt| 90))))) (|char#Plus| (|char#Minus| |ch#0| (|char#FromInt| 65)) (|char#FromInt| 97)) |ch#0|)))
 :qid |UnicodeStringsdfy.112:18|
 :weight 3
 :skolemid |503|
 :pattern ( (_module.__default.ToLower (Lit charType |ch#0|)))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ch#0@@0| T@U) ) (!  (=> (or (|_module.__default.ToLower#canCall| |ch#0@@0|) (and (< 0 $FunctionContextHeight) ($Is charType |ch#0@@0| TChar))) (= (_module.__default.ToLower |ch#0@@0|) (ite  (and (<= (|char#ToInt| (Lit charType (|char#FromInt| 65))) (|char#ToInt| |ch#0@@0|)) (<= (|char#ToInt| |ch#0@@0|) (|char#ToInt| (Lit charType (|char#FromInt| 90))))) (|char#Plus| (|char#Minus| |ch#0@@0| (|char#FromInt| 65)) (|char#FromInt| 97)) |ch#0@@0|)))
 :qid |UnicodeStringsdfy.112:18|
 :skolemid |502|
 :pattern ( (_module.__default.ToLower |ch#0@@0|))
))))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
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
(assert (= (Ctor SeqType) 4))
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@5 T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| s@@5))) (< (|Seq#Rank| (|Seq#Take| s@@5 i)) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@5 i)))
)))
(assert (forall ((s@@6 T@U) (i@@0 Int) ) (!  (=> (and (< 0 i@@0) (<= i@@0 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Drop| s@@6 i@@0)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@6 i@@0)))
)))
(assert (forall ((s@@7 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@7 v@@0)) (+ 1 (|Seq#Length| s@@7)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@7 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@1 h) ($IsAlloc T@@1 v@@1 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@1 h))
)))
(assert (forall ((s@@8 T@U) (n@@4 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@8) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@4) j@@0) (|Seq#Index| s@@8 (+ j@@0 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@8 n@@4) j@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((s@@9 T@U) (i@@1 Int) (v@@2 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@2) i@@1) v@@2)) (=> (or (not (= i@@1 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@2) i@@1) (|Seq#Index| s@@9 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@2) i@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|char#Minus| a b) (|char#FromInt| (- (|char#ToInt| a) (|char#ToInt| b))))
 :qid |DafnyPreludebpl.147:15|
 :skolemid |24|
 :pattern ( (|char#Minus| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|char#Plus| a@@0 b@@0) (|char#FromInt| (+ (|char#ToInt| a@@0) (|char#ToInt| b@@0))))
 :qid |DafnyPreludebpl.142:15|
 :skolemid |23|
 :pattern ( (|char#Plus| a@@0 b@@0))
)))
(assert (forall ((s@@10 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@10))) (= (|Seq#Length| (|Seq#Take| s@@10 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@10 n@@5)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TChar) (and (= ($Box charType ($Unbox charType bx@@0)) bx@@0) ($Is charType ($Unbox charType bx@@0) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@0 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@2) ($Is T@@2 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@2))
)))
(assert (forall ((s@@11 T@U) ) (! (<= 0 (|Seq#Length| s@@11))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((s@@12 T@U) (i@@2 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 j@@1)) (<= j@@1 (|Seq#Length| s@@12))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@12 i@@2) (|Seq#Drop| s@@12 j@@1))) (|Seq#Rank| s@@12)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@12 i@@2) (|Seq#Drop| s@@12 j@@1))))
)))
(assert (forall ((v@@4 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0) h@@0) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@3) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0) h@@0))
)))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.MapToLower#canCall| |s#0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0| (TSeq TChar)))) (and (=> (or (not (= (LitInt 0) (|Seq#Length| |s#0|))) (not true)) (and (|_module.__default.ToLower#canCall| ($Unbox charType (|Seq#Index| |s#0| (LitInt 0)))) (|_module.__default.MapToLower#canCall| (|Seq#Drop| |s#0| (LitInt 1))))) (= (_module.__default.MapToLower ($LS $ly) |s#0|) (ite (= (LitInt 0) (|Seq#Length| |s#0|)) |Seq#Empty| (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box charType (_module.__default.ToLower ($Unbox charType (|Seq#Index| |s#0| (LitInt 0)))))) (_module.__default.MapToLower $ly (|Seq#Drop| |s#0| (LitInt 1))))))))
 :qid |UnicodeStringsdfy.119:10|
 :skolemid |508|
 :pattern ( (_module.__default.MapToLower ($LS $ly) |s#0|))
))))
(assert (forall (($ly@@0 T@U) (|s#0@@0| T@U) ) (! (= (_module.__default.MapToLower ($LS $ly@@0) |s#0@@0|) (_module.__default.MapToLower $ly@@0 |s#0@@0|))
 :qid |UnicodeStringsdfy.119:10|
 :skolemid |504|
 :pattern ( (_module.__default.MapToLower ($LS $ly@@0) |s#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.MapToLower#canCall| (Lit SeqType |s#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@1| (TSeq TChar)))) (and (=> (or (not (= (LitInt 0) (|Seq#Length| (Lit SeqType |s#0@@1|)))) (not true)) (and (|_module.__default.ToLower#canCall| ($Unbox charType (|Seq#Index| (Lit SeqType |s#0@@1|) (LitInt 0)))) (|_module.__default.MapToLower#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |s#0@@1|) (LitInt 1)))))) (= (_module.__default.MapToLower ($LS $ly@@1) (Lit SeqType |s#0@@1|)) (ite (= (LitInt 0) (|Seq#Length| (Lit SeqType |s#0@@1|))) |Seq#Empty| (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box charType (_module.__default.ToLower ($Unbox charType (|Seq#Index| (Lit SeqType |s#0@@1|) (LitInt 0)))))) (_module.__default.MapToLower ($LS $ly@@1) (Lit SeqType (|Seq#Drop| (Lit SeqType |s#0@@1|) (LitInt 1)))))))))
 :qid |UnicodeStringsdfy.119:10|
 :weight 3
 :skolemid |509|
 :pattern ( (_module.__default.MapToLower ($LS $ly@@1) (Lit SeqType |s#0@@1|)))
))))
(assert (forall ((n@@6 Int) ) (!  (=> (or (and (<= 0 n@@6) (< n@@6 55296)) (and (<= 57344 n@@6) (< n@@6 1114112))) (= (|char#ToInt| (|char#FromInt| n@@6)) n@@6))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n@@6))
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
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |654|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@13 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@13 val@@4)) s@@13) (= (|Seq#Build_inv1| (|Seq#Build| s@@13 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@13 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ch#0@@1| T@U) ) (!  (=> (or (|_module.__default.ToLower#canCall| |ch#0@@1|) (and (< 0 $FunctionContextHeight) ($Is charType |ch#0@@1| TChar))) ($Is charType (_module.__default.ToLower |ch#0@@1|) TChar))
 :qid |UnicodeStringsdfy.112:18|
 :skolemid |500|
 :pattern ( (_module.__default.ToLower |ch#0@@1|))
))))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((s@@14 T@U) (n@@7 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@7) (<= n@@7 k)) (< k (|Seq#Length| s@@14))) (= (|Seq#Index| (|Seq#Drop| s@@14 n@@7) (- k n@@7)) (|Seq#Index| s@@14 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@14 k) (|Seq#Drop| s@@14 n@@7))
)))
(assert (forall ((s@@15 T@U) (m@@4 Int) (n@@8 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@8)) (<= (+ m@@4 n@@8) (|Seq#Length| s@@15))) (= (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@8) (|Seq#Drop| s@@15 (+ m@@4 n@@8))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@8))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@9 Int) ) (!  (and (=> (< n@@9 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@9) (|Seq#Index| s0@@0 n@@9))) (=> (<= (|Seq#Length| s0@@0) n@@9) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@9) (|Seq#Index| s1@@0 (- n@@9 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@9))
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
(assert (forall ((s@@16 T@U) ) (!  (=> (= (|Seq#Length| s@@16) 0) (= s@@16 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@16))
)))
(assert (forall ((s@@17 T@U) (n@@10 Int) ) (!  (=> (= n@@10 0) (= (|Seq#Take| s@@17 n@@10) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@17 n@@10))
)))
(assert (forall ((h@@1 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|_module.__default.MapToLower#canCall| |s#0@@2|) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0@@2| (TSeq TChar)))) ($Is SeqType (_module.__default.MapToLower $ly@@2 |s#0@@2|) (TSeq TChar)))
 :qid |UnicodeStringsdfy.119:10|
 :skolemid |506|
 :pattern ( (_module.__default.MapToLower $ly@@2 |s#0@@2|))
))))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@2)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@4) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@3| () T@U)
(declare-fun |##ch#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.MapToLower)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Else_correct  (=> (or (not (= (LitInt 0) (|Seq#Length| |s#0@@3|))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |s#0@@3|))) (=> (= |##ch#0@0| ($Unbox charType (|Seq#Index| |s#0@@3| (LitInt 0)))) (=> (and ($IsAlloc charType |##ch#0@0| TChar $Heap) (|_module.__default.ToLower#canCall| ($Unbox charType (|Seq#Index| |s#0@@3| (LitInt 0))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |s#0@@3|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |s#0@@3|))) (=> (= |##s#0@0| (|Seq#Drop| |s#0@@3| (LitInt 1))) (=> (and ($IsAlloc SeqType |##s#0@0| (TSeq TChar) $Heap) (= (ControlFlow 0 4) (- 0 3))) (< (|Seq#Rank| |##s#0@0|) (|Seq#Rank| |s#0@@3|)))))))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#5| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SeqType |s#0@@3| (TSeq TChar))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
