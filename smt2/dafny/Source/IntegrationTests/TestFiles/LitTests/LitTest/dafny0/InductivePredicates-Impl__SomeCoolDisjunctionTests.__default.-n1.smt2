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
(declare-fun $FunctionContextHeight () Int)
(declare-fun SomeCoolDisjunctionTests.__default.P_h (T@U T@U Int) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun |SomeCoolDisjunctionTests.__default.P_h#canCall| (T@U Int) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun |SomeCoolDisjunctionTests.__default.Q_h#canCall| (T@U Int) Bool)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun SomeCoolDisjunctionTests.__default.Q_h (T@U T@U Int) Bool)
(declare-fun $LZ () T@U)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
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
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
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
(assert  (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
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
))) (= (Ctor BoxType) 3)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|_k#0| T@U) (|x#0| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.P_h#canCall| (Lit BoxType |_k#0|) (LitInt |x#0|)) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0|)) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (LitInt |x#0|))) (=> (=> (< 0 (|ORD#Offset| |_k#0|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (LitInt |x#0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0|) (|SomeCoolDisjunctionTests.__default.P_h#canCall| |_k'#2| |x#0|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2114|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly) |_k'#2| |x#0|))
))))) (= (SomeCoolDisjunctionTests.__default.P_h ($LS $ly) (Lit BoxType |_k#0|) (LitInt |x#0|))  (and (=> (< 0 (|ORD#Offset| |_k#0|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0| (|ORD#FromNat| 1)) (LitInt |x#0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0|) (SomeCoolDisjunctionTests.__default.P_h ($LS $ly) |_k'#2@@0| |x#0|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2113|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly) |_k'#2@@0| |x#0|))
)))))))
 :qid |InductivePredicatesdfy.252:19|
 :weight 3
 :skolemid |2115|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly) (Lit BoxType |_k#0|) (LitInt |x#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|x#0@@0| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.Q_h#canCall| (Lit BoxType |_k#0@@0|) (LitInt |x#0@@0|)) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (|SomeCoolDisjunctionTests.__default.P_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt |x#0@@0|))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt |x#0@@0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2@@1| |_k#0@@0|) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| |_k'#2@@1| |x#0@@0|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2138|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@0) |_k'#2@@1| |x#0@@0|))
))))) (= (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) (LitInt |x#0@@0|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (LitInt |x#0@@0|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (exists ((|_k'#2@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@2| |_k#0@@0|) (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@0) |_k'#2@@2| |x#0@@0|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2137|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@0) |_k'#2@@2| |x#0@@0|))
)))))))
 :qid |InductivePredicatesdfy.257:19|
 :weight 3
 :skolemid |2139|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) (LitInt |x#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| Int) (|_k#0@@1| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0@@1| _m) (=> (SomeCoolDisjunctionTests.__default.P_h $ly@@1 |_k#0@@1| |x#0@@1|) (SomeCoolDisjunctionTests.__default.P_h $ly@@1 _m |x#0@@1|)))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2101|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h $ly@@1 |_k#0@@1| |x#0@@1|) (|ORD#LessThanLimit| |_k#0@@1| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@2| Int) (|_k#0@@2| T@U) (_m@@0 T@U) (_limit@@0 T@U) ) (!  (=> (|ORD#Less| |_k#0@@2| _m@@0) (=> (SomeCoolDisjunctionTests.__default.Q_h $ly@@2 |_k#0@@2| |x#0@@2|) (SomeCoolDisjunctionTests.__default.Q_h $ly@@2 _m@@0 |x#0@@2|)))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2125|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h $ly@@2 |_k#0@@2| |x#0@@2|) (|ORD#LessThanLimit| |_k#0@@2| _limit@@0) (|ORD#LessThanLimit| _m@@0 _limit@@0))
))))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |1544|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |1552|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@3| T@U) (|x#0@@3| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.P_h#canCall| |_k#0@@3| |x#0@@3|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@3|) (|SomeCoolDisjunctionTests.__default.P_h#canCall| |_k'#0| |x#0@@3|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2108|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h $ly@@3 |_k'#0| |x#0@@3|))
))))) (= (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@3) |_k#0@@3| |x#0@@3|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) |x#0@@3|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@3|) (SomeCoolDisjunctionTests.__default.P_h $ly@@3 |_k'#0@@0| |x#0@@3|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2107|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h $ly@@3 |_k'#0@@0| |x#0@@3|))
)))))))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2109|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@3) |_k#0@@3| |x#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@4| T@U) (|x#0@@4| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.Q_h#canCall| |_k#0@@4| |x#0@@4|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (|SomeCoolDisjunctionTests.__default.P_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |x#0@@4|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |x#0@@4|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0@@1| |_k#0@@4|) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| |_k'#0@@1| |x#0@@4|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2132|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h $ly@@4 |_k'#0@@1| |x#0@@4|))
))))) (= (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) |x#0@@4|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#0@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@2| |_k#0@@4|) (SomeCoolDisjunctionTests.__default.Q_h $ly@@4 |_k'#0@@2| |x#0@@4|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2131|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h $ly@@4 |_k'#0@@2| |x#0@@4|))
)))))))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2133|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@5 T@U) (|x#0@@5| Int) (|_k#0@@5| T@U) ) (!  (=> (= |_k#0@@5| (|ORD#FromNat| 0)) (not (SomeCoolDisjunctionTests.__default.P_h $ly@@5 |_k#0@@5| |x#0@@5|)))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2100|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h $ly@@5 |_k#0@@5| |x#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|x#0@@6| Int) (|_k#0@@6| T@U) ) (!  (=> (= |_k#0@@6| (|ORD#FromNat| 0)) (not (SomeCoolDisjunctionTests.__default.Q_h $ly@@6 |_k#0@@6| |x#0@@6|)))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2124|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h $ly@@6 |_k#0@@6| |x#0@@6|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1471|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1469|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1480|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($ly@@7 T@U) (|_k#0@@7| T@U) (|x#0@@7| Int) ) (! (= (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@7) |_k#0@@7| |x#0@@7|) (SomeCoolDisjunctionTests.__default.P_h $ly@@7 |_k#0@@7| |x#0@@7|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2103|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@7) |_k#0@@7| |x#0@@7|))
)))
(assert (forall (($ly@@8 T@U) (|_k#0@@8| T@U) (|x#0@@8| Int) ) (! (= (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@8) |_k#0@@8| |x#0@@8|) (SomeCoolDisjunctionTests.__default.Q_h $ly@@8 |_k#0@@8| |x#0@@8|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2127|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@8) |_k#0@@8| |x#0@@8|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |1549|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |1540|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |1543|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |1545|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |1539|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1479|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@9 T@U) (|_k#0@@9| T@U) (|x#0@@9| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.P_h#canCall| (Lit BoxType |_k#0@@9|) |x#0@@9|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@9|) (|SomeCoolDisjunctionTests.__default.P_h#canCall| |_k'#1| |x#0@@9|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2111|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@9) |_k'#1| |x#0@@9|))
))))) (= (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@9) (Lit BoxType |_k#0@@9|) |x#0@@9|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) (|ORD#Minus| |_k#0@@9| (|ORD#FromNat| 1)) |x#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@9|) (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@9) |_k'#1@@0| |x#0@@9|))
 :qid |InductivePredicatesdfy.252:19|
 :skolemid |2110|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@9) |_k'#1@@0| |x#0@@9|))
)))))))
 :qid |InductivePredicatesdfy.252:19|
 :weight 3
 :skolemid |2112|
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $ly@@9) (Lit BoxType |_k#0@@9|) |x#0@@9|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@10 T@U) (|_k#0@@10| T@U) (|x#0@@10| Int) ) (!  (=> (or (|SomeCoolDisjunctionTests.__default.Q_h#canCall| (Lit BoxType |_k#0@@10|) |x#0@@10|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (|SomeCoolDisjunctionTests.__default.P_h#canCall| (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1@@1| |_k#0@@10|) (|SomeCoolDisjunctionTests.__default.Q_h#canCall| |_k'#1@@1| |x#0@@10|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2135|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@10) |_k'#1@@1| |x#0@@10|))
))))) (= (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@10) (Lit BoxType |_k#0@@10|) |x#0@@10|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@10|)) (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) (|ORD#Minus| |_k#0@@10| (|ORD#FromNat| 1)) |x#0@@10|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@10|)) (exists ((|_k'#1@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@2| |_k#0@@10|) (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@10) |_k'#1@@2| |x#0@@10|))
 :qid |InductivePredicatesdfy.257:19|
 :skolemid |2134|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@10) |_k'#1@@2| |x#0@@10|))
)))))))
 :qid |InductivePredicatesdfy.257:19|
 :weight 3
 :skolemid |2136|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $ly@@10) (Lit BoxType |_k#0@@10|) |x#0@@10|))
))))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |1542|
 :pattern ( (|ORD#Less| o@@5 p@@3))
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
 :skolemid |3066|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |1541|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |1550|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1472|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1470|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_k#0@@11| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun |x#1| () Int)
(set-info :boogie-vc-id Impl$$SomeCoolDisjunctionTests.__default.L_h)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon3_Else_correct  (=> (<= (|ORD#Offset| |_k#0@@11|) 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (forall ((|_k'#0@@3| T@U) (|x#2| Int) ) (!  (=> (and (|ORD#Less| |_k'#0@@3| |_k#0@@11|) (or (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) |_k'#0@@3| |x#2|) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) |_k'#0@@3| |x#2|))) (U_2_bool (Lit boolType (bool_2_U false))))
 :qid |InductivePredicatesdfy.262:15|
 :skolemid |2141|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) |_k'#0@@3| |x#2|))
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) |_k'#0@@3| |x#2|))
)) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct))))
(let ((anon3_Then_correct  (=> (and (< 0 (|ORD#Offset| |_k#0@@11|)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#_k0#0| T@U) (|$ih#x0#0| Int) ) (!  (=> (and (or (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) |$ih#_k0#0| |$ih#x0#0|) (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) |$ih#_k0#0| |$ih#x0#0|)) (or (|ORD#Less| |$ih#_k0#0| |_k#0@@11|) (and (= |$ih#_k0#0| |_k#0@@11|) (and (<= 0 |$ih#x0#0|) (< |$ih#x0#0| |x#1|))))) (U_2_bool (Lit boolType (bool_2_U false))))
 :qid |InductivePredicatesdfy.262:15|
 :skolemid |2140|
 :pattern ( (SomeCoolDisjunctionTests.__default.Q_h ($LS $LZ) |$ih#_k0#0| |$ih#x0#0|))
 :pattern ( (SomeCoolDisjunctionTests.__default.P_h ($LS $LZ) |$ih#_k0#0| |$ih#x0#0|))
)))) (and (=> (= (ControlFlow 0 5) 3) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 2 $FunctionContextHeight)) (and (or (SomeCoolDisjunctionTests.__default.P_h ($LS ($LS $LZ)) |_k#0@@11| |x#1|) (SomeCoolDisjunctionTests.__default.Q_h ($LS ($LS $LZ)) |_k#0@@11| |x#1|)) (= (ControlFlow 0 6) 5))) anon0_correct)))
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
