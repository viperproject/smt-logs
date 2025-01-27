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
(declare-fun TORDINAL () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagORDINAL () T@U)
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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun A.__default.Next (Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun A.__default.Reachable_h (T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |A.__default.Init#canCall| (Int) Bool)
(declare-fun A.__default.Init (Int) Bool)
(declare-fun |A.__default.Reachable_h#canCall| (T@U Int) Bool)
(declare-fun |A.__default.Next#canCall| (Int Int) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun BoxType () T@T)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(assert (distinct TInt TORDINAL TagInt TagORDINAL alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |666|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((|s#0| Int) (|s'#0| Int) ) (! (= (A.__default.Next (LitInt |s#0|) (LitInt |s'#0|)) (= (LitInt |s'#0|) (LitInt (+ |s#0| 1))))
 :qid |gitissue895dfy.9:24|
 :weight 3
 :skolemid |1127|
 :pattern ( (A.__default.Next (LitInt |s#0|) (LitInt |s'#0|)))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |674|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert (forall (($ly T@U) (|_k#0| T@U) (|s#0@@0| Int) ) (!  (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (and (|A.__default.Init#canCall| |s#0@@0|) (=> (not (A.__default.Init |s#0@@0|)) (forall ((|s0#7| Int) ) (!  (and (|A.__default.Reachable_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7|) (=> (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7|) (|A.__default.Next#canCall| |s0#7| |s#0@@0|)))
 :qid |gitissue895dfy.15:24|
 :skolemid |1146|
 :pattern ( (A.__default.Next |s0#7| |s#0@@0|))
 :pattern ( (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7|))
))))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (or (A.__default.Init |s#0@@0|) (exists ((|s0#7@@0| Int) ) (!  (and (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7@@0|) (A.__default.Next |s0#7@@0| |s#0@@0|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1148|
 :pattern ( (A.__default.Next |s0#7@@0| |s#0@@0|))
 :pattern ( (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7@@0|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#3| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#3| |_k#0|) (|A.__default.Reachable_h#canCall| |_k'#3| |s#0@@0|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1147|
 :pattern ( (A.__default.Reachable_h $ly |_k'#3| |s#0@@0|))
))))) (= (A.__default.Reachable_h ($LS $ly) |_k#0| |s#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (or (A.__default.Init |s#0@@0|) (exists ((|s0#7@@1| Int) ) (!  (and (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7@@1|) (A.__default.Next |s0#7@@1| |s#0@@0|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1144|
 :pattern ( (A.__default.Next |s0#7@@1| |s#0@@0|))
 :pattern ( (A.__default.Reachable_h $ly (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) |s0#7@@1|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (exists ((|_k'#3@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#3@@0| |_k#0|) (A.__default.Reachable_h $ly |_k'#3@@0| |s#0@@0|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1145|
 :pattern ( (A.__default.Reachable_h $ly |_k'#3@@0| |s#0@@0|))
))))))
 :qid |gitissue895dfy.13:19|
 :skolemid |1149|
 :pattern ( (A.__default.Reachable_h ($LS $ly) |_k#0| |s#0@@0|))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |593|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |591|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |602|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|s#0@@1| Int) ) (! (= (A.__default.Init |s#0@@1|) (= |s#0@@1| (LitInt 0)))
 :qid |gitissue895dfy.5:24|
 :skolemid |1122|
 :pattern ( (A.__default.Init |s#0@@1|))
)))
(assert (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|s#0@@2| Int) ) (! (= (A.__default.Reachable_h ($LS $ly@@0) |_k#0@@0| |s#0@@2|) (A.__default.Reachable_h $ly@@0 |_k#0@@0| |s#0@@2|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1140|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@0) |_k#0@@0| |s#0@@2|))
)))
(assert (forall (($ly@@1 T@U) (|s#0@@3| Int) (|_k#0@@1| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0@@1| _m) (=> (A.__default.Reachable_h $ly@@1 |_k#0@@1| |s#0@@3|) (A.__default.Reachable_h $ly@@1 _m |s#0@@3|)))
 :qid |gitissue895dfy.13:19|
 :skolemid |1139|
 :pattern ( (A.__default.Reachable_h $ly@@1 |_k#0@@1| |s#0@@3|) (|ORD#LessThanLimit| |_k#0@@1| _limit) (|ORD#LessThanLimit| _m _limit))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |671|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |662|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((|s#0@@4| Int) ) (! (= (A.__default.Init (LitInt |s#0@@4|)) (= (LitInt |s#0@@4|) (LitInt 0)))
 :qid |gitissue895dfy.5:24|
 :weight 3
 :skolemid |1123|
 :pattern ( (A.__default.Init (LitInt |s#0@@4|)))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |665|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |667|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall (($ly@@2 T@U) (|s#0@@5| Int) (|_k#0@@2| T@U) ) (!  (=> (= |_k#0@@2| (|ORD#FromNat| 0)) (not (A.__default.Reachable_h $ly@@2 |_k#0@@2| |s#0@@5|)))
 :qid |gitissue895dfy.13:19|
 :skolemid |1138|
 :pattern ( (A.__default.Reachable_h $ly@@2 |_k#0@@2| |s#0@@5|))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |661|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |601|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |664|
 :pattern ( (|ORD#Less| o@@5 p@@3))
)))
(assert (= (Ctor BoxType) 3))
(assert (forall (($ly@@3 T@U) (|_k#0@@3| T@U) (|s#0@@6| Int) ) (!  (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (and (|A.__default.Init#canCall| (LitInt |s#0@@6|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (A.__default.Init (LitInt |s#0@@6|)))))) (forall ((|s0#9| Int) ) (!  (and (|A.__default.Reachable_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9|) (=> (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9|) (|A.__default.Next#canCall| |s0#9| (LitInt |s#0@@6|))))
 :qid |gitissue895dfy.15:24|
 :skolemid |1158|
 :pattern ( (A.__default.Next |s0#9| |s#0@@6|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9|))
))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (A.__default.Init (LitInt |s#0@@6|)) (exists ((|s0#9@@0| Int) ) (!  (and (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9@@0|) (A.__default.Next |s0#9@@0| (LitInt |s#0@@6|)))
 :qid |gitissue895dfy.15:24|
 :skolemid |1160|
 :pattern ( (A.__default.Next |s0#9@@0| |s#0@@6|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9@@0|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#5| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#5| |_k#0@@3|) (|A.__default.Reachable_h#canCall| |_k'#5| |s#0@@6|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1159|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) |_k'#5| |s#0@@6|))
))))) (= (A.__default.Reachable_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) (LitInt |s#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (A.__default.Init (LitInt |s#0@@6|)) (exists ((|s0#9@@1| Int) ) (!  (and (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9@@1|) (A.__default.Next |s0#9@@1| (LitInt |s#0@@6|)))
 :qid |gitissue895dfy.15:24|
 :skolemid |1156|
 :pattern ( (A.__default.Next |s0#9@@1| |s#0@@6|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |s0#9@@1|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (exists ((|_k'#5@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#5@@0| |_k#0@@3|) (A.__default.Reachable_h ($LS $ly@@3) |_k'#5@@0| |s#0@@6|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1157|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) |_k'#5@@0| |s#0@@6|))
))))))
 :qid |gitissue895dfy.13:19|
 :weight 3
 :skolemid |1161|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) (LitInt |s#0@@6|)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m@@0 T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m@@0 x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@1 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@1 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@2 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@2 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@4 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@4 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |1162|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@4 T@U) (|_k#0@@4| T@U) (|s#0@@7| Int) ) (!  (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (and (|A.__default.Init#canCall| |s#0@@7|) (=> (not (A.__default.Init |s#0@@7|)) (forall ((|s0#8| Int) ) (!  (and (|A.__default.Reachable_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8|) (=> (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8|) (|A.__default.Next#canCall| |s0#8| |s#0@@7|)))
 :qid |gitissue895dfy.15:24|
 :skolemid |1152|
 :pattern ( (A.__default.Next |s0#8| |s#0@@7|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8|))
))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (A.__default.Init |s#0@@7|) (exists ((|s0#8@@0| Int) ) (!  (and (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8@@0|) (A.__default.Next |s0#8@@0| |s#0@@7|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1154|
 :pattern ( (A.__default.Next |s0#8@@0| |s#0@@7|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8@@0|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#4| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#4| |_k#0@@4|) (|A.__default.Reachable_h#canCall| |_k'#4| |s#0@@7|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1153|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) |_k'#4| |s#0@@7|))
))))) (= (A.__default.Reachable_h ($LS $ly@@4) (Lit BoxType |_k#0@@4|) |s#0@@7|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (A.__default.Init |s#0@@7|) (exists ((|s0#8@@1| Int) ) (!  (and (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8@@1|) (A.__default.Next |s0#8@@1| |s#0@@7|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1150|
 :pattern ( (A.__default.Next |s0#8@@1| |s#0@@7|))
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |s0#8@@1|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#4@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#4@@0| |_k#0@@4|) (A.__default.Reachable_h ($LS $ly@@4) |_k'#4@@0| |s#0@@7|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1151|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) |_k'#4@@0| |s#0@@7|))
))))))
 :qid |gitissue895dfy.13:19|
 :weight 3
 :skolemid |1155|
 :pattern ( (A.__default.Reachable_h ($LS $ly@@4) (Lit BoxType |_k#0@@4|) |s#0@@7|))
)))
(assert (forall ((|s#0@@8| Int) (|s'#0@@0| Int) ) (! (= (A.__default.Next |s#0@@8| |s'#0@@0|) (= |s'#0@@0| (+ |s#0@@8| 1)))
 :qid |gitissue895dfy.9:24|
 :skolemid |1126|
 :pattern ( (A.__default.Next |s#0@@8| |s'#0@@0|))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |663|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |672|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |594|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |592|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |637|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc BoxType v@@0 TORDINAL h@@0)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |641|
 :pattern ( ($IsAlloc BoxType v@@0 TORDINAL h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |616|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is BoxType v@@2 TORDINAL)
 :qid |DafnyPreludebpl.232:14|
 :skolemid |620|
 :pattern ( ($Is BoxType v@@2 TORDINAL))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#1| () Int)
(declare-fun |_k#0@@5| () T@U)
(declare-fun |s0#4@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |s0#3@0| () Int)
(declare-fun |_k##0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |##_k#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$B.__default.ReachableImpliesNonneg_h)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon11_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= |s#1| (LitInt 0)))))
(let ((anon6_correct  (=> (and (|A.__default.Reachable_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#4@0|) (=> (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#4@0|) (|A.__default.Next#canCall| |s0#4@0| |s#1|))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (LitInt 0)) (A.__default.Next (LitInt 0) |s#1|))) (exists ((|$as#s00_1_0#0| Int) ) (!  (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |$as#s00_1_0#0|) (A.__default.Next |$as#s00_1_0#0| |s#1|))
 :qid |gitissue895dfy.28:11|
 :skolemid |1117|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) (LitInt 0)) (A.__default.Next (LitInt 0) |s#1|))) (exists ((|$as#s00_1_0#0@@0| Int) ) (!  (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |$as#s00_1_0#0@@0|) (A.__default.Next |$as#s00_1_0#0@@0| |s#1|))
 :qid |gitissue895dfy.28:11|
 :skolemid |1117|
))) (=> (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#3@0|) (A.__default.Next |s0#3@0| |s#1|)) (and (=> (= (ControlFlow 0 6) (- 0 10)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@5|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@5|)) (=> (= |_k##0@0| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|A.__default.Reachable_h#canCall| |_k##0@0| |s0#3@0|) (or (A.__default.Reachable_h ($LS $LZ) |_k##0@0| |s0#3@0|) (=> (< 0 (|ORD#Offset| |_k##0@0|)) (or (A.__default.Init |s0#3@0|) (exists ((|s0#1| Int) ) (!  (and (A.__default.Reachable_h ($LS ($LS $LZ)) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |s0#1|) (A.__default.Next |s0#1| |s0#3@0|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1106|
 :pattern ( (A.__default.Next |s0#1| |s0#3@0|))
 :pattern ( (A.__default.Reachable_h ($LS ($LS $LZ)) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |s0#1|))
))))))) (=> (=> (|A.__default.Reachable_h#canCall| |_k##0@0| |s0#3@0|) (or (A.__default.Reachable_h ($LS $LZ) |_k##0@0| |s0#3@0|) (=> (< 0 (|ORD#Offset| |_k##0@0|)) (or (A.__default.Init |s0#3@0|) (exists ((|s0#1@@0| Int) ) (!  (and (A.__default.Reachable_h ($LS ($LS $LZ)) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |s0#1@@0|) (A.__default.Next |s0#1@@0| |s0#3@0|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1106|
 :pattern ( (A.__default.Next |s0#1@@0| |s0#3@0|))
 :pattern ( (A.__default.Reachable_h ($LS ($LS $LZ)) (|ORD#Minus| |_k##0@0| (|ORD#FromNat| 1)) |s0#1@@0|))
)))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|A.__default.Reachable_h#canCall| |_k##0@0| |s0#3@0|) (or (A.__default.Reachable_h ($LS $LZ) |_k##0@0| |s0#3@0|) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (exists ((|_k'#0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0| |_k##0@0|) (A.__default.Reachable_h ($LS $LZ) |_k'#0| |s0#3@0|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1107|
 :pattern ( (A.__default.Reachable_h ($LS $LZ) |_k'#0| |s0#3@0|))
)))))) (=> (=> (|A.__default.Reachable_h#canCall| |_k##0@0| |s0#3@0|) (or (A.__default.Reachable_h ($LS $LZ) |_k##0@0| |s0#3@0|) (=> (= (LitInt 0) (|ORD#Offset| |_k##0@0|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k##0@0|) (A.__default.Reachable_h ($LS $LZ) |_k'#0@@0| |s0#3@0|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1107|
 :pattern ( (A.__default.Reachable_h ($LS $LZ) |_k'#0@@0| |s0#3@0|))
))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (>= |s0#3@0| (LitInt 0))) (and (= $Heap@0 $Heap@2) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct))))))))))))))))
(let ((anon12_Else_correct  (=> (and (not (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#4@0|)) (= (ControlFlow 0 13) 6)) anon6_correct)))
(let ((anon12_Then_correct  (=> (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#4@0|) (=> (and (and ($IsAlloc intType (int_2_U |s0#4@0|) TInt $Heap@0) ($IsAlloc intType (int_2_U |s#1|) TInt $Heap@0)) (and (|A.__default.Next#canCall| |s0#4@0| |s#1|) (= (ControlFlow 0 12) 6))) anon6_correct))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@5|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |_k#0@@5|)) (=> (and (and (= |##_k#0@0| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1))) ($IsAlloc BoxType |##_k#0@0| TORDINAL $Heap@0)) (and ($IsAlloc intType (int_2_U |s0#4@0|) TInt $Heap@0) (|A.__default.Reachable_h#canCall| (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#4@0|))) (and (=> (= (ControlFlow 0 14) 12) anon12_Then_correct) (=> (= (ControlFlow 0 14) 13) anon12_Else_correct)))))))))
(let ((anon10_Else_correct  (=> (not (A.__default.Init |s#1|)) (and (=> (= (ControlFlow 0 17) 14) anon11_Then_correct) (=> (= (ControlFlow 0 17) 5) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (A.__default.Init |s#1|) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon9_Then_correct  (=> (and (and (< 0 (|ORD#Offset| |_k#0@@5|)) ($IsAlloc intType (int_2_U |s#1|) TInt $Heap@0)) (and (|A.__default.Init#canCall| |s#1|) (|A.__default.Init#canCall| |s#1|))) (and (=> (= (ControlFlow 0 18) 4) anon10_Then_correct) (=> (= (ControlFlow 0 18) 17) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@5|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#2| T@U) (|s#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#2| |_k#0@@5|) (A.__default.Reachable_h ($LS $LZ) |_k'#2| |s#2|)) (>= |s#2| (LitInt 0)))
 :qid |gitissue895dfy.22:15|
 :skolemid |1119|
 :pattern ( (A.__default.Reachable_h ($LS $LZ) |_k'#2| |s#2|))
)) (= (ControlFlow 0 3) 2))) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#s0#0| Int) ) (!  (=> (and (A.__default.Reachable_h ($LS $LZ) |$ih#_k0#0| |$ih#s0#0|) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@5|) (and (= |$ih#_k0#0| |_k#0@@5|) (and (<= 0 |$ih#s0#0|) (< |$ih#s0#0| |s#1|))))) (>= |$ih#s0#0| (LitInt 0)))
 :qid |gitissue895dfy.22:15|
 :skolemid |1116|
 :pattern ( (A.__default.Reachable_h ($LS $LZ) |$ih#_k0#0| |$ih#s0#0|))
)))) (and (=> (= (ControlFlow 0 19) 18) anon9_Then_correct) (=> (= (ControlFlow 0 19) 3) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 1 $FunctionContextHeight)) (and (and (|A.__default.Reachable_h#canCall| |_k#0@@5| |s#1|) (and (A.__default.Reachable_h ($LS $LZ) |_k#0@@5| |s#1|) (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (or (A.__default.Init |s#1|) (exists ((|s0#2| Int) ) (!  (and (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#2|) (A.__default.Next |s0#2| |s#1|))
 :qid |gitissue895dfy.15:24|
 :skolemid |1114|
 :pattern ( (A.__default.Next |s0#2| |s#1|))
 :pattern ( (A.__default.Reachable_h ($LS $LZ) (|ORD#Minus| |_k#0@@5| (|ORD#FromNat| 1)) |s0#2|))
)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1| |_k#0@@5|) (A.__default.Reachable_h ($LS $LZ) |_k'#1| |s#1|))
 :qid |gitissue895dfy.13:19|
 :skolemid |1115|
 :pattern ( (A.__default.Reachable_h ($LS $LZ) |_k'#1| |s#1|))
)))))) (= (ControlFlow 0 20) 19))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
