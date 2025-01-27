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
(declare-fun _module.__default.AllNeg_h (T@U T@U Int) Bool)
(declare-fun |ORD#LessThanLimit| (T@U T@U) Bool)
(declare-fun |ORD#Less| (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.AllNeg_h#canCall| (T@U Int) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun |ORD#Minus| (T@U T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|x#0| Int) (|_k#0| T@U) (_m T@U) (_limit T@U) ) (!  (=> (|ORD#Less| |_k#0| _m) (=> (_module.__default.AllNeg_h $ly |_k#0| |x#0|) (_module.__default.AllNeg_h $ly _m |x#0|)))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |854|
 :pattern ( (_module.__default.AllNeg_h $ly |_k#0| |x#0|) (|ORD#LessThanLimit| |_k#0| _limit) (|ORD#LessThanLimit| _m _limit))
))))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TORDINAL) TagORDINAL))
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |90|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|_k#0@@0| T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.__default.AllNeg_h#canCall| (Lit BoxType |_k#0@@0|) |x#0@@0|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (=> (or (not (= |x#0@@0| (LitInt 0))) (not true)) (|_module.__default.AllNeg_h#canCall| (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (+ |x#0@@0| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (= |x#0@@0| (LitInt 0)) (_module.__default.AllNeg_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (+ |x#0@@0| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (forall ((|_k'#1| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#1| |_k#0@@0|) (|_module.__default.AllNeg_h#canCall| |_k'#1| |x#0@@0|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |864|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@0) |_k'#1| |x#0@@0|))
))))) (= (_module.__default.AllNeg_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |x#0@@0|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@0|)) (or (= |x#0@@0| (LitInt 0)) (_module.__default.AllNeg_h ($LS $ly@@0) (|ORD#Minus| |_k#0@@0| (|ORD#FromNat| 1)) (+ |x#0@@0| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@0|)) (exists ((|_k'#1@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@0| |_k#0@@0|) (_module.__default.AllNeg_h ($LS $ly@@0) |_k'#1@@0| |x#0@@0|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |863|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@0) |_k'#1@@0| |x#0@@0|))
)))))))
 :qid |CoinductiveProofsdfy.240:17|
 :weight 3
 :skolemid |865|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@0) (Lit BoxType |_k#0@@0|) |x#0@@0|))
))))
(assert (forall ((o@@0 T@U) (m Int) (n Int) ) (!  (=> (and (and (<= 0 m) (<= 0 n)) (<= (+ m n) (|ORD#Offset| o@@0))) (= (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)) (|ORD#Minus| o@@0 (|ORD#FromNat| (+ m n)))))
 :qid |DafnyPreludebpl.466:15|
 :skolemid |98|
 :pattern ( (|ORD#Minus| (|ORD#Minus| o@@0 (|ORD#FromNat| m)) (|ORD#FromNat| n)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| Int) (|_k#0@@1| T@U) ) (!  (=> (= |_k#0@@1| (|ORD#FromNat| 0)) (not (_module.__default.AllNeg_h $ly@@1 |_k#0@@1| |x#0@@1|)))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |853|
 :pattern ( (_module.__default.AllNeg_h $ly@@1 |_k#0@@1| |x#0@@1|))
))))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($ly@@2 T@U) (|_k#0@@2| T@U) (|x#0@@2| Int) ) (! (= (_module.__default.AllNeg_h ($LS $ly@@2) |_k#0@@2| |x#0@@2|) (_module.__default.AllNeg_h $ly@@2 |_k#0@@2| |x#0@@2|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |856|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@2) |_k#0@@2| |x#0@@2|))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (=> (and (|ORD#IsNat| p@@0) (<= (|ORD#Offset| p@@0) (|ORD#Offset| o@@1))) (and (= (|ORD#IsNat| (|ORD#Minus| o@@1 p@@0)) (|ORD#IsNat| o@@1)) (= (|ORD#Offset| (|ORD#Minus| o@@1 p@@0)) (- (|ORD#Offset| o@@1) (|ORD#Offset| p@@0)))))
 :qid |DafnyPreludebpl.451:15|
 :skolemid |95|
 :pattern ( (|ORD#Minus| o@@1 p@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (<= 0 n@@0) (and (|ORD#IsNat| (|ORD#FromNat| n@@0)) (= (|ORD#Offset| (|ORD#FromNat| n@@0)) n@@0)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |86|
 :pattern ( (|ORD#FromNat| n@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|_k#0@@3| T@U) (|x#0@@3| Int) ) (!  (=> (or (|_module.__default.AllNeg_h#canCall| (Lit BoxType |_k#0@@3|) (LitInt |x#0@@3|)) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (=> (or (not (= (LitInt |x#0@@3|) (LitInt 0))) (not true)) (|_module.__default.AllNeg_h#canCall| (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (LitInt (+ |x#0@@3| 1))))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (= (LitInt |x#0@@3|) (LitInt 0)) (_module.__default.AllNeg_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (LitInt (+ |x#0@@3| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (forall ((|_k'#2| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#2| |_k#0@@3|) (|_module.__default.AllNeg_h#canCall| |_k'#2| |x#0@@3|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |867|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@3) |_k'#2| |x#0@@3|))
))))) (= (_module.__default.AllNeg_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) (LitInt |x#0@@3|))  (and (=> (< 0 (|ORD#Offset| |_k#0@@3|)) (or (= (LitInt |x#0@@3|) (LitInt 0)) (_module.__default.AllNeg_h ($LS $ly@@3) (|ORD#Minus| |_k#0@@3| (|ORD#FromNat| 1)) (LitInt (+ |x#0@@3| 1))))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@3|)) (exists ((|_k'#2@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#2@@0| |_k#0@@3|) (_module.__default.AllNeg_h ($LS $ly@@3) |_k'#2@@0| |x#0@@3|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |866|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@3) |_k'#2@@0| |x#0@@3|))
)))))))
 :qid |CoinductiveProofsdfy.240:17|
 :weight 3
 :skolemid |868|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@3) (Lit BoxType |_k#0@@3|) (LitInt |x#0@@3|)))
))))
(assert (forall ((o@@2 T@U) (p@@1 T@U) ) (!  (or (or (|ORD#Less| o@@2 p@@1) (= o@@2 p@@1)) (|ORD#Less| p@@1 o@@2))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |89|
 :pattern ( (|ORD#Less| o@@2 p@@1) (|ORD#Less| p@@1 o@@2))
)))
(assert (forall ((o@@3 T@U) (p@@2 T@U) ) (! (= (|ORD#LessThanLimit| o@@3 p@@2) (|ORD#Less| o@@3 p@@2))
 :qid |DafnyPreludebpl.434:15|
 :skolemid |91|
 :pattern ( (|ORD#LessThanLimit| o@@3 p@@2))
)))
(assert (forall ((o@@4 T@U) ) (! (<= 0 (|ORD#Offset| o@@4))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |85|
 :pattern ( (|ORD#Offset| o@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((o@@5 T@U) (p@@3 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@5 p@@3) (or (not (= o@@5 p@@3)) (not true))) (=> (and (|ORD#IsNat| o@@5) (not (|ORD#IsNat| p@@3))) (|ORD#Less| o@@5 p@@3))) (=> (and (|ORD#IsNat| o@@5) (|ORD#IsNat| p@@3)) (= (|ORD#Less| o@@5 p@@3) (< (|ORD#Offset| o@@5) (|ORD#Offset| p@@3))))) (=> (and (|ORD#Less| o@@5 p@@3) (|ORD#IsNat| p@@3)) (|ORD#IsNat| o@@5)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |88|
 :pattern ( (|ORD#Less| o@@5 p@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|_k#0@@4| T@U) (|x#0@@4| Int) ) (!  (=> (or (|_module.__default.AllNeg_h#canCall| |_k#0@@4| |x#0@@4|) (< 1 $FunctionContextHeight)) (and (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (=> (or (not (= |x#0@@4| (LitInt 0))) (not true)) (|_module.__default.AllNeg_h#canCall| (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |x#0@@4| 1)))) (=> (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (= |x#0@@4| (LitInt 0)) (_module.__default.AllNeg_h $ly@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |x#0@@4| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (forall ((|_k'#0| T@U) ) (!  (=> (|ORD#LessThanLimit| |_k'#0| |_k#0@@4|) (|_module.__default.AllNeg_h#canCall| |_k'#0| |x#0@@4|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |861|
 :pattern ( (_module.__default.AllNeg_h $ly@@4 |_k'#0| |x#0@@4|))
))))) (= (_module.__default.AllNeg_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|)  (and (=> (< 0 (|ORD#Offset| |_k#0@@4|)) (or (= |x#0@@4| (LitInt 0)) (_module.__default.AllNeg_h $ly@@4 (|ORD#Minus| |_k#0@@4| (|ORD#FromNat| 1)) (+ |x#0@@4| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |_k#0@@4|)) (exists ((|_k'#0@@0| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@0| |_k#0@@4|) (_module.__default.AllNeg_h $ly@@4 |_k'#0@@0| |x#0@@4|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |860|
 :pattern ( (_module.__default.AllNeg_h $ly@@4 |_k'#0@@0| |x#0@@4|))
)))))))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |862|
 :pattern ( (_module.__default.AllNeg_h ($LS $ly@@4) |_k#0@@4| |x#0@@4|))
))))
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
 :skolemid |992|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((o@@6 T@U) ) (!  (=> (|ORD#IsNat| o@@6) (= o@@6 (|ORD#FromNat| (|ORD#Offset| o@@6))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |87|
 :pattern ( (|ORD#Offset| o@@6))
 :pattern ( (|ORD#IsNat| o@@6))
)))
(assert (forall ((o@@7 T@U) (p@@4 T@U) ) (!  (=> (and (|ORD#IsNat| p@@4) (<= (|ORD#Offset| p@@4) (|ORD#Offset| o@@7))) (or (and (= p@@4 (|ORD#FromNat| 0)) (= (|ORD#Minus| o@@7 p@@4) o@@7)) (and (or (not (= p@@4 (|ORD#FromNat| 0))) (not true)) (|ORD#Less| (|ORD#Minus| o@@7 p@@4) o@@7))))
 :qid |DafnyPreludebpl.455:15|
 :skolemid |96|
 :pattern ( (|ORD#Minus| o@@7 p@@4))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc BoxType v@@0 TORDINAL h@@0)
 :qid |DafnyPreludebpl.293:14|
 :skolemid |65|
 :pattern ( ($IsAlloc BoxType v@@0 TORDINAL h@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@@5| () Int)
(declare-fun |k'#1_0_1@0| () T@U)
(declare-fun |k#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |k'#1_0_0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |k##1_1_0@0| () T@U)
(declare-fun |x##1_1_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.AllNeg__Correct_k)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon11_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= |x#0@@5| (LitInt 0)))))
(let ((anon6_correct  (=> (=> (|ORD#Less| |k'#1_0_1@0| |k#0|) (|_module.__default.AllNeg_h#canCall| |k'#1_0_1@0| |x#0@@5|)) (and (=> (= (ControlFlow 0 12) (- 0 17)) (exists ((|$as#k'1_0_0#1_0_0| T@U) ) (!  (and (|ORD#Less| |$as#k'1_0_0#1_0_0| |k#0|) (_module.__default.AllNeg_h ($LS $LZ) |$as#k'1_0_0#1_0_0| |x#0@@5|))
 :qid |CoinductiveProofsdfy.265:9|
 :skolemid |887|
))) (=> (exists ((|$as#k'1_0_0#1_0_0@@0| T@U) ) (!  (and (|ORD#Less| |$as#k'1_0_0#1_0_0@@0| |k#0|) (_module.__default.AllNeg_h ($LS $LZ) |$as#k'1_0_0#1_0_0@@0| |x#0@@5|))
 :qid |CoinductiveProofsdfy.265:9|
 :skolemid |887|
)) (=> (and (|ORD#Less| |k'#1_0_0@0| |k#0|) (_module.__default.AllNeg_h ($LS $LZ) |k'#1_0_0@0| |x#0@@5|)) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (or (<= 0 |x#0@@5|) (|ORD#Less| |k'#1_0_0@0| |k#0|)) (= |x#0@@5| |x#0@@5|))) (=> (or (or (<= 0 |x#0@@5|) (|ORD#Less| |k'#1_0_0@0| |k#0|)) (= |x#0@@5| |x#0@@5|)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (|ORD#Less| |k'#1_0_0@0| |k#0|) (and (= |k'#1_0_0@0| |k#0|) (< |x#0@@5| |x#0@@5|)))) (=> (or (|ORD#Less| |k'#1_0_0@0| |k#0|) (and (= |k'#1_0_0@0| |k#0|) (< |x#0@@5| |x#0@@5|))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (=> (|_module.__default.AllNeg_h#canCall| |k'#1_0_0@0| |x#0@@5|) (or (_module.__default.AllNeg_h ($LS $LZ) |k'#1_0_0@0| |x#0@@5|) (=> (< 0 (|ORD#Offset| |k'#1_0_0@0|)) (or (= |x#0@@5| (LitInt 0)) (_module.__default.AllNeg_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#1_0_0@0| (|ORD#FromNat| 1)) (+ |x#0@@5| 1))))))) (=> (=> (|_module.__default.AllNeg_h#canCall| |k'#1_0_0@0| |x#0@@5|) (or (_module.__default.AllNeg_h ($LS $LZ) |k'#1_0_0@0| |x#0@@5|) (=> (< 0 (|ORD#Offset| |k'#1_0_0@0|)) (or (= |x#0@@5| (LitInt 0)) (_module.__default.AllNeg_h ($LS ($LS $LZ)) (|ORD#Minus| |k'#1_0_0@0| (|ORD#FromNat| 1)) (+ |x#0@@5| 1)))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (|_module.__default.AllNeg_h#canCall| |k'#1_0_0@0| |x#0@@5|) (or (_module.__default.AllNeg_h ($LS $LZ) |k'#1_0_0@0| |x#0@@5|) (=> (= (LitInt 0) (|ORD#Offset| |k'#1_0_0@0|)) (exists ((|_k'#0@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@1| |k'#1_0_0@0|) (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@1| |x#0@@5|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |880|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@1| |x#0@@5|))
)))))) (=> (=> (|_module.__default.AllNeg_h#canCall| |k'#1_0_0@0| |x#0@@5|) (or (_module.__default.AllNeg_h ($LS $LZ) |k'#1_0_0@0| |x#0@@5|) (=> (= (LitInt 0) (|ORD#Offset| |k'#1_0_0@0|)) (exists ((|_k'#0@@2| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@2| |k'#1_0_0@0|) (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@2| |x#0@@5|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |880|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@2| |x#0@@5|))
))))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (<= |x#0@@5| (LitInt 0))) (and (= $Heap@0 $Heap@2) (= (ControlFlow 0 12) 2))) GeneratedUnifiedExit_correct)))))))))))))))
(let ((anon12_Else_correct  (=> (and (not (|ORD#Less| |k'#1_0_1@0| |k#0|)) (= (ControlFlow 0 19) 12)) anon6_correct)))
(let ((anon12_Then_correct  (=> (|ORD#Less| |k'#1_0_1@0| |k#0|) (=> (and (and ($IsAlloc BoxType |k'#1_0_1@0| TORDINAL $Heap@0) ($IsAlloc intType (int_2_U |x#0@@5|) TInt $Heap@0)) (and (|_module.__default.AllNeg_h#canCall| |k'#1_0_1@0| |x#0@@5|) (= (ControlFlow 0 18) 12))) anon6_correct))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 20) 18) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct))))
(let ((anon10_Then_correct  (=> (= (|ORD#Offset| |k#0|) (LitInt 0)) (and (=> (= (ControlFlow 0 21) 20) anon11_Then_correct) (=> (= (ControlFlow 0 21) 11) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (or (not (= (|ORD#Offset| |k#0|) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 10)) (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1)))) (=> (|ORD#IsNat| (Lit BoxType (|ORD#FromNat| 1))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |k#0|))) (=> (<= (|ORD#Offset| (Lit BoxType (|ORD#FromNat| 1))) (|ORD#Offset| |k#0|)) (=> (and (= |k##1_1_0@0| (|ORD#Minus| |k#0| (|ORD#FromNat| 1))) (= |x##1_1_0@0| (+ |x#0@@5| 1))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (or (<= 0 |x#0@@5|) (|ORD#Less| |k##1_1_0@0| |k#0|)) (= |x##1_1_0@0| |x#0@@5|))) (=> (or (or (<= 0 |x#0@@5|) (|ORD#Less| |k##1_1_0@0| |k#0|)) (= |x##1_1_0@0| |x#0@@5|)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (|ORD#Less| |k##1_1_0@0| |k#0|) (and (= |k##1_1_0@0| |k#0|) (< |x##1_1_0@0| |x#0@@5|)))) (=> (or (|ORD#Less| |k##1_1_0@0| |k#0|) (and (= |k##1_1_0@0| |k#0|) (< |x##1_1_0@0| |x#0@@5|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> (|_module.__default.AllNeg_h#canCall| |k##1_1_0@0| |x##1_1_0@0|) (or (_module.__default.AllNeg_h ($LS $LZ) |k##1_1_0@0| |x##1_1_0@0|) (=> (< 0 (|ORD#Offset| |k##1_1_0@0|)) (or (= |x##1_1_0@0| (LitInt 0)) (_module.__default.AllNeg_h ($LS ($LS $LZ)) (|ORD#Minus| |k##1_1_0@0| (|ORD#FromNat| 1)) (+ |x##1_1_0@0| 1))))))) (=> (=> (|_module.__default.AllNeg_h#canCall| |k##1_1_0@0| |x##1_1_0@0|) (or (_module.__default.AllNeg_h ($LS $LZ) |k##1_1_0@0| |x##1_1_0@0|) (=> (< 0 (|ORD#Offset| |k##1_1_0@0|)) (or (= |x##1_1_0@0| (LitInt 0)) (_module.__default.AllNeg_h ($LS ($LS $LZ)) (|ORD#Minus| |k##1_1_0@0| (|ORD#FromNat| 1)) (+ |x##1_1_0@0| 1)))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> (|_module.__default.AllNeg_h#canCall| |k##1_1_0@0| |x##1_1_0@0|) (or (_module.__default.AllNeg_h ($LS $LZ) |k##1_1_0@0| |x##1_1_0@0|) (=> (= (LitInt 0) (|ORD#Offset| |k##1_1_0@0|)) (exists ((|_k'#0@@3| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@3| |k##1_1_0@0|) (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@3| |x##1_1_0@0|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |880|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@3| |x##1_1_0@0|))
)))))) (=> (=> (|_module.__default.AllNeg_h#canCall| |k##1_1_0@0| |x##1_1_0@0|) (or (_module.__default.AllNeg_h ($LS $LZ) |k##1_1_0@0| |x##1_1_0@0|) (=> (= (LitInt 0) (|ORD#Offset| |k##1_1_0@0|)) (exists ((|_k'#0@@4| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#0@@4| |k##1_1_0@0|) (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@4| |x##1_1_0@0|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |880|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |_k'#0@@4| |x##1_1_0@0|))
))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (<= |x##1_1_0@0| (LitInt 0))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct)))))))))))))))))
(let ((anon9_Else_correct  (=> (or (not (= |x#0@@5| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 22) 21) anon10_Then_correct) (=> (= (ControlFlow 0 22) 4) anon10_Else_correct)))))
(let ((anon9_Then_correct  (=> (and (= |x#0@@5| (LitInt 0)) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (forall ((|$ih#k0#0| T@U) (|$ih#x0#0| Int) ) (!  (=> (and (_module.__default.AllNeg_h ($LS $LZ) |$ih#k0#0| |$ih#x0#0|) (or (|ORD#Less| |$ih#k0#0| |k#0|) (and (= |$ih#k0#0| |k#0|) (and (<= 0 |$ih#x0#0|) (< |$ih#x0#0| |x#0@@5|))))) (<= |$ih#x0#0| (LitInt 0)))
 :qid |CoinductiveProofsdfy.259:23|
 :skolemid |886|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |$ih#k0#0| |$ih#x0#0|))
)))) (and (=> (= (ControlFlow 0 23) 3) anon9_Then_correct) (=> (= (ControlFlow 0 23) 22) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 2 $FunctionContextHeight)) (and (and (|_module.__default.AllNeg_h#canCall| |k#0| |x#0@@5|) (and (_module.__default.AllNeg_h ($LS $LZ) |k#0| |x#0@@5|) (and (=> (< 0 (|ORD#Offset| |k#0|)) (or (= |x#0@@5| (LitInt 0)) (_module.__default.AllNeg_h ($LS $LZ) (|ORD#Minus| |k#0| (|ORD#FromNat| 1)) (+ |x#0@@5| 1)))) (=> (= (LitInt 0) (|ORD#Offset| |k#0|)) (exists ((|_k'#1@@1| T@U) ) (!  (and (|ORD#LessThanLimit| |_k'#1@@1| |k#0|) (_module.__default.AllNeg_h ($LS $LZ) |_k'#1@@1| |x#0@@5|))
 :qid |CoinductiveProofsdfy.240:17|
 :skolemid |885|
 :pattern ( (_module.__default.AllNeg_h ($LS $LZ) |_k'#1@@1| |x#0@@5|))
)))))) (= (ControlFlow 0 24) 23))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
