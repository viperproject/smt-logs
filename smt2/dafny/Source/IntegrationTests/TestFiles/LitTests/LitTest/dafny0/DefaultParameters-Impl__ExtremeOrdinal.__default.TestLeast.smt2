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
(declare-fun $FunctionContextHeight () Int)
(declare-fun ExtremeOrdinal.__default.Q_h (T@U Int Int) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun ExtremeOrdinal.__default.P_h (T@U Int Int) Bool)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun ExtremeOrdinal.__default.P (Int Int) Bool)
(declare-fun ExtremeOrdinal.__default.Q (Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |ExtremeOrdinal.__default.P_h#canCall| (T@U Int Int) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ExtremeOrdinal.__default.Q_h#canCall| (T@U Int Int) Bool)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ExtremeOrdinal.__default.P#canCall| (Int Int) Bool)
(declare-fun |ExtremeOrdinal.__default.Q#canCall| (Int Int) Bool)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0| Int) (|u#0| Int) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (ExtremeOrdinal.__default.Q_h |_k#0| |x#0| |u#0|) (ExtremeOrdinal.__default.Q_h _m |x#0| |u#0|)))
 :qid |DefaultParametersdfy.556:21|
 :skolemid |13561|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k#0| |x#0| |u#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |12970|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@0| Int) (|u#0@@0| Int) (|_k#0@@0| T@U) ) (!  (=> (= |_k#0@@0| (|ORD#FromNat| 0)) (ExtremeOrdinal.__default.P_h |_k#0@@0| |x#0@@0| |u#0@@0|))
 :qid |DefaultParametersdfy.552:24|
 :skolemid |13542|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k#0@@0| |x#0@@0| |u#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|u#0@@1| Int) ) (!  (=> (ExtremeOrdinal.__default.P |x#0@@1| |u#0@@1|) (forall ((|_k#0@@1| T@U) ) (! (ExtremeOrdinal.__default.P_h |_k#0@@1| |x#0@@1| |u#0@@1|)
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13539|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k#0@@1| |x#0@@1| |u#0@@1|))
)))
 :qid |DefaultParametersdfy.552:24|
 :skolemid |13540|
 :pattern ( (ExtremeOrdinal.__default.P |x#0@@1| |u#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@2| Int) (|u#0@@2| Int) ) (!  (=> (ExtremeOrdinal.__default.Q |x#0@@2| |u#0@@2|) (exists ((|_k#0@@2| T@U) ) (! (ExtremeOrdinal.__default.Q_h |_k#0@@2| |x#0@@2| |u#0@@2|)
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13557|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k#0@@2| |x#0@@2| |u#0@@2|))
)))
 :qid |DefaultParametersdfy.556:21|
 :skolemid |13558|
 :pattern ( (ExtremeOrdinal.__default.Q |x#0@@2| |u#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@3| Int) (|u#0@@3| Int) (|_k#0@@3| T@U) ) (!  (=> (= |_k#0@@3| (|ORD#FromNat| 0)) (not (ExtremeOrdinal.__default.Q_h |_k#0@@3| |x#0@@3| |u#0@@3|)))
 :qid |DefaultParametersdfy.556:21|
 :skolemid |13560|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k#0@@3| |x#0@@3| |u#0@@3|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |12897|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |12895|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@4| T@U) (|x#0@@4| Int) (|u#0@@4| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.P_h#canCall| (Lit BoxType |_k#0@@4|) |x#0@@4| |u#0@@4|) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (= |x#0@@4| |u#0@@4|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#Less| |_k'#1| |_k#0@@4|) (|ExtremeOrdinal.__default.P_h#canCall| |_k'#1| |x#0@@4| |u#0@@4|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13549|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#1| |x#0@@4| |u#0@@4|))
)))) (= (ExtremeOrdinal.__default.P_h (Lit BoxType |_k#0@@4|) |x#0@@4| |u#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (= |x#0@@4| |u#0@@4|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#1@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#1@@0| |_k#0@@4|) (ExtremeOrdinal.__default.P_h |_k'#1@@0| |x#0@@4| |u#0@@4|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13548|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#1@@0| |x#0@@4| |u#0@@4|))
)))))))
 :qid |DefaultParametersdfy.552:22|
 :weight 3
 :skolemid |13550|
 :pattern ( (ExtremeOrdinal.__default.P_h (Lit BoxType |_k#0@@4|) |x#0@@4| |u#0@@4|))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |12906|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@5| T@U) (|x#0@@5| Int) (|u#0@@5| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.Q_h#canCall| (Lit BoxType |_k#0@@5|) |x#0@@5| |u#0@@5|) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (= |x#0@@5| |u#0@@5|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (forall ((|_k'#1@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1@@1| |_k#0@@5|) (|ExtremeOrdinal.__default.Q_h#canCall| |_k'#1@@1| |x#0@@5| |u#0@@5|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13568|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#1@@1| |x#0@@5| |u#0@@5|))
)))) (= (ExtremeOrdinal.__default.Q_h (Lit BoxType |_k#0@@5|) |x#0@@5| |u#0@@5|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@5|)) (= |x#0@@5| |u#0@@5|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@5|)) (exists ((|_k'#1@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@2| |_k#0@@5|) (ExtremeOrdinal.__default.Q_h |_k'#1@@2| |x#0@@5| |u#0@@5|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13567|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#1@@2| |x#0@@5| |u#0@@5|))
)))))))
 :qid |DefaultParametersdfy.556:19|
 :weight 3
 :skolemid |13569|
 :pattern ( (ExtremeOrdinal.__default.Q_h (Lit BoxType |_k#0@@5|) |x#0@@5| |u#0@@5|))
))))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |12966|
 :pattern ( (|ORD#FromNat| n))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@6| T@U) (|x#0@@6| Int) (|u#0@@6| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.P_h#canCall| (Lit BoxType |_k#0@@6|) (LitInt |x#0@@6|) (LitInt |u#0@@6|)) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (= (LitInt |x#0@@6|) (LitInt |u#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#Less| |_k'#2| |_k#0@@6|) (|ExtremeOrdinal.__default.P_h#canCall| |_k'#2| |x#0@@6| |u#0@@6|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13552|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#2| |x#0@@6| |u#0@@6|))
)))) (= (ExtremeOrdinal.__default.P_h (Lit BoxType |_k#0@@6|) (LitInt |x#0@@6|) (LitInt |u#0@@6|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@6|)) (= (LitInt |x#0@@6|) (LitInt |u#0@@6|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@6|)) (forall ((|_k'#2@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#2@@0| |_k#0@@6|) (ExtremeOrdinal.__default.P_h |_k'#2@@0| |x#0@@6| |u#0@@6|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13551|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#2@@0| |x#0@@6| |u#0@@6|))
)))))))
 :qid |DefaultParametersdfy.552:22|
 :weight 3
 :skolemid |13553|
 :pattern ( (ExtremeOrdinal.__default.P_h (Lit BoxType |_k#0@@6|) (LitInt |x#0@@6|) (LitInt |u#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@7| T@U) (|x#0@@7| Int) (|u#0@@7| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.P_h#canCall| |_k#0@@7| |x#0@@7| |u#0@@7|) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (= |x#0@@7| |u#0@@7|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#Less| |_k'#0| |_k#0@@7|) (|ExtremeOrdinal.__default.P_h#canCall| |_k'#0| |x#0@@7| |u#0@@7|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13546|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#0| |x#0@@7| |u#0@@7|))
)))) (= (ExtremeOrdinal.__default.P_h |_k#0@@7| |x#0@@7| |u#0@@7|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@7|)) (= |x#0@@7| |u#0@@7|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@7|)) (forall ((|_k'#0@@0| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@0| |_k#0@@7|) (ExtremeOrdinal.__default.P_h |_k'#0@@0| |x#0@@7| |u#0@@7|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13545|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#0@@0| |x#0@@7| |u#0@@7|))
)))))))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13547|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k#0@@7| |x#0@@7| |u#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@8| T@U) (|x#0@@8| Int) (|u#0@@8| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.Q_h#canCall| (Lit BoxType |_k#0@@8|) (LitInt |x#0@@8|) (LitInt |u#0@@8|)) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (= (LitInt |x#0@@8|) (LitInt |u#0@@8|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (forall ((|_k'#2@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2@@1| |_k#0@@8|) (|ExtremeOrdinal.__default.Q_h#canCall| |_k'#2@@1| |x#0@@8| |u#0@@8|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13571|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#2@@1| |x#0@@8| |u#0@@8|))
)))) (= (ExtremeOrdinal.__default.Q_h (Lit BoxType |_k#0@@8|) (LitInt |x#0@@8|) (LitInt |u#0@@8|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@8|)) (= (LitInt |x#0@@8|) (LitInt |u#0@@8|))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@8|)) (exists ((|_k'#2@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@2| |_k#0@@8|) (ExtremeOrdinal.__default.Q_h |_k'#2@@2| |x#0@@8| |u#0@@8|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13570|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#2@@2| |x#0@@8| |u#0@@8|))
)))))))
 :qid |DefaultParametersdfy.556:19|
 :weight 3
 :skolemid |13572|
 :pattern ( (ExtremeOrdinal.__default.Q_h (Lit BoxType |_k#0@@8|) (LitInt |x#0@@8|) (LitInt |u#0@@8|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@9| T@U) (|x#0@@9| Int) (|u#0@@9| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.Q_h#canCall| |_k#0@@9| |x#0@@9| |u#0@@9|) (< 1 $FunctionContextHeight)) (and (=> (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (= |x#0@@9| |u#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (forall ((|_k'#0@@1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0@@1| |_k#0@@9|) (|ExtremeOrdinal.__default.Q_h#canCall| |_k'#0@@1| |x#0@@9| |u#0@@9|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13565|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#0@@1| |x#0@@9| |u#0@@9|))
)))) (= (ExtremeOrdinal.__default.Q_h |_k#0@@9| |x#0@@9| |u#0@@9|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@9|)) (= |x#0@@9| |u#0@@9|)) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@9|)) (exists ((|_k'#0@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@2| |_k#0@@9|) (ExtremeOrdinal.__default.Q_h |_k'#0@@2| |x#0@@9| |u#0@@9|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13564|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#0@@2| |x#0@@9| |u#0@@9|))
)))))))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13566|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k#0@@9| |x#0@@9| |u#0@@9|))
))))
(assert (forall ((o@@0 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@0 p@@0) (= o@@0 p@@0)) (|ORD#Less| p@@0 o@@0))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |12969|
 :pattern ( (|ORD#Less| o@@0 p@@0) (|ORD#Less| p@@0 o@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@10| Int) (|u#0@@10| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.P#canCall| |x#0@@10| |u#0@@10|) (< 0 $FunctionContextHeight)) (= (ExtremeOrdinal.__default.P |x#0@@10| |u#0@@10|) (= |x#0@@10| |u#0@@10|)))
 :qid |DefaultParametersdfy.552:24|
 :skolemid |13538|
 :pattern ( (ExtremeOrdinal.__default.P |x#0@@10| |u#0@@10|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@11| Int) (|u#0@@11| Int) ) (!  (=> (or (|ExtremeOrdinal.__default.Q#canCall| |x#0@@11| |u#0@@11|) (< 0 $FunctionContextHeight)) (= (ExtremeOrdinal.__default.Q |x#0@@11| |u#0@@11|) (= |x#0@@11| |u#0@@11|)))
 :qid |DefaultParametersdfy.556:21|
 :skolemid |13556|
 :pattern ( (ExtremeOrdinal.__default.Q |x#0@@11| |u#0@@11|))
))))
(assert (forall ((o@@1 T@U) (p@@1 T@U) ) (! (= (|ORD#LessThanLimit| o@@1 p@@1) (|ORD#Less| o@@1 p@@1))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |12971|
 :pattern ( (|ORD#LessThanLimit| o@@1 p@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (|ORD#Offset| o@@2))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |12965|
 :pattern ( (|ORD#Offset| o@@2))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |12905|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@12| Int) (|u#0@@12| Int) ) (!  (=> (forall ((|_k#0@@10| T@U) ) (! (ExtremeOrdinal.__default.P_h |_k#0@@10| |x#0@@12| |u#0@@12|)
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13539|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k#0@@10| |x#0@@12| |u#0@@12|))
)) (ExtremeOrdinal.__default.P |x#0@@12| |u#0@@12|))
 :qid |DefaultParametersdfy.552:24|
 :skolemid |13541|
 :pattern ( (ExtremeOrdinal.__default.P |x#0@@12| |u#0@@12|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@13| Int) (|u#0@@13| Int) ) (!  (=> (exists ((|_k#0@@11| T@U) ) (! (ExtremeOrdinal.__default.Q_h |_k#0@@11| |x#0@@13| |u#0@@13|)
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13557|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k#0@@11| |x#0@@13| |u#0@@13|))
)) (ExtremeOrdinal.__default.Q |x#0@@13| |u#0@@13|))
 :qid |DefaultParametersdfy.556:21|
 :skolemid |13559|
 :pattern ( (ExtremeOrdinal.__default.Q |x#0@@13| |u#0@@13|))
))))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@3 p@@2) (or (not (= o@@3 p@@2)) (not true))) (=> (and (|ORD#IsNat| o@@3) (not (|ORD#IsNat| p@@2))) (|ORD#Less| o@@3 p@@2))) (=> (and (|ORD#IsNat| o@@3) (|ORD#IsNat| p@@2)) (= (|ORD#Less| o@@3 p@@2) (< (|ORD#Offset| o@@3) (|ORD#Offset| p@@2))))) (=> (and (|ORD#Less| o@@3 p@@2) (|ORD#IsNat| p@@2)) (|ORD#IsNat| o@@3)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |12968|
 :pattern ( (|ORD#Less| o@@3 p@@2))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
 :skolemid |14292|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@4 T@U) ) (!  (=> (|ORD#IsNat| o@@4) (= o@@4 (|ORD#FromNat| (|ORD#Offset| o@@4))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |12967|
 :pattern ( (|ORD#Offset| o@@4))
 :pattern ( (|ORD#IsNat| o@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |12898|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |12896|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |12941|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc BoxType v@@0 TORDINAL h@@0)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |12945|
 :pattern ( ($IsAlloc BoxType v@@0 TORDINAL h@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |y#0| () Int)
(declare-fun |o#0| () T@U)
(declare-fun |z#0| () Int)
(declare-fun |v#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |w#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |a#0| () Int)
(declare-fun |b#0| () Int)
(set-info :boogie-vc-id Impl$$ExtremeOrdinal.__default.TestLeast)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsAlloc intType (int_2_U |y#0|) TInt $Heap) ($IsAlloc intType (int_2_U |y#0|) TInt $Heap)) (and (|ExtremeOrdinal.__default.P#canCall| |y#0| |y#0|) (|ExtremeOrdinal.__default.P#canCall| |y#0| |y#0|))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|ExtremeOrdinal.__default.P#canCall| |y#0| |y#0|) (or (ExtremeOrdinal.__default.P |y#0| |y#0|) (= |y#0| |y#0|)))) (=> (and (ExtremeOrdinal.__default.P |y#0| |y#0|) ($IsAlloc BoxType |o#0| TORDINAL $Heap)) (=> (and (and ($IsAlloc intType (int_2_U |z#0|) TInt $Heap) ($IsAlloc intType (int_2_U |z#0|) TInt $Heap)) (and (|ExtremeOrdinal.__default.P_h#canCall| |o#0| |z#0| |z#0|) (|ExtremeOrdinal.__default.P_h#canCall| |o#0| |z#0| |z#0|))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|ExtremeOrdinal.__default.P_h#canCall| |o#0| |z#0| |z#0|) (or (ExtremeOrdinal.__default.P_h |o#0| |z#0| |z#0|) (=> (< 0 (|ORD#Offset| |o#0|)) (= |z#0| |z#0|))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|ExtremeOrdinal.__default.P_h#canCall| |o#0| |z#0| |z#0|) (or (ExtremeOrdinal.__default.P_h |o#0| |z#0| |z#0|) (=> (= (LitInt 0) (|ORD#Offset| |o#0|)) (forall ((|_k'#0@@3| T@U) ) (!  (=> (|ORD#Less| |_k'#0@@3| |o#0|) (ExtremeOrdinal.__default.P_h |_k'#0@@3| |z#0| |z#0|))
 :qid |DefaultParametersdfy.552:22|
 :skolemid |13574|
 :pattern ( (ExtremeOrdinal.__default.P_h |_k'#0@@3| |z#0| |z#0|))
)))))) (=> (ExtremeOrdinal.__default.P_h |o#0| |z#0| |z#0|) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= |v#0| |v#0|)) (=> (= |v#0| |v#0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= |w#0| |w#0|)) (=> (= |w#0| |w#0|) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (and ($IsAlloc intType (int_2_U |a#0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |a#0|) TInt $Heap@1)) (and (|ExtremeOrdinal.__default.Q#canCall| |a#0| |a#0|) (|ExtremeOrdinal.__default.Q#canCall| |a#0| |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|ExtremeOrdinal.__default.Q#canCall| |a#0| |a#0|) (or (ExtremeOrdinal.__default.Q |a#0| |a#0|) (= |a#0| |a#0|)))) (=> (and (ExtremeOrdinal.__default.Q |a#0| |a#0|) ($IsAlloc BoxType |o#0| TORDINAL $Heap@1)) (=> (and (and ($IsAlloc intType (int_2_U |b#0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |b#0|) TInt $Heap@1)) (and (|ExtremeOrdinal.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (|ExtremeOrdinal.__default.Q_h#canCall| |o#0| |b#0| |b#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|ExtremeOrdinal.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (or (ExtremeOrdinal.__default.Q_h |o#0| |b#0| |b#0|) (=> (< 0 (|ORD#Offset| |o#0|)) (= |b#0| |b#0|))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|ExtremeOrdinal.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (or (ExtremeOrdinal.__default.Q_h |o#0| |b#0| |b#0|) (=> (= (LitInt 0) (|ORD#Offset| |o#0|)) (exists ((|_k'#1@@3| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@3| |o#0|) (ExtremeOrdinal.__default.Q_h |_k'#1@@3| |b#0| |b#0|))
 :qid |DefaultParametersdfy.556:19|
 :skolemid |13578|
 :pattern ( (ExtremeOrdinal.__default.Q_h |_k'#1@@3| |b#0| |b#0|))
))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 2 $FunctionContextHeight)) (and (not (= (|ORD#Offset| |o#0|) 0)) (= (ControlFlow 0 10) 2))) anon0_correct)))
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
