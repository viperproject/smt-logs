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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ExtremeNat.__default.P_h (Int Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |ExtremeNat.__default.P_h#canCall| (Int Int Int) Bool)
(declare-fun ExtremeNat.__default.Q_h (Int Int Int) Bool)
(declare-fun |ExtremeNat.__default.Q_h#canCall| (Int Int Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun ExtremeNat.__default.P (Int Int) Bool)
(declare-fun ExtremeNat.__default.Q (Int Int) Bool)
(declare-fun |ExtremeNat.__default.P#canCall| (Int Int) Bool)
(declare-fun |ExtremeNat.__default.Q#canCall| (Int Int) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |13925|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0| Int) (|x#0@@0| Int) (|u#0| Int) ) (!  (=> (or (|ExtremeNat.__default.P_h#canCall| (LitInt |_k#0|) (LitInt |x#0@@0|) (LitInt |u#0|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0|))) (= (ExtremeNat.__default.P_h (LitInt |_k#0|) (LitInt |x#0@@0|) (LitInt |u#0|))  (=> (< 0 |_k#0|) (= (LitInt |x#0@@0|) (LitInt |u#0|)))))
 :qid |DefaultParametersdfy.578:22|
 :weight 3
 :skolemid |14247|
 :pattern ( (ExtremeNat.__default.P_h (LitInt |_k#0|) (LitInt |x#0@@0|) (LitInt |u#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|u#0@@0| Int) (|_k#0@@0| Int) ) (!  (=> (= |_k#0@@0| 0) (ExtremeNat.__default.P_h |_k#0@@0| |x#0@@1| |u#0@@0|))
 :qid |DefaultParametersdfy.578:29|
 :skolemid |14242|
 :pattern ( (ExtremeNat.__default.P_h |_k#0@@0| |x#0@@1| |u#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@1| Int) (|x#0@@2| Int) (|u#0@@1| Int) ) (!  (=> (or (|ExtremeNat.__default.Q_h#canCall| (LitInt |_k#0@@1|) (LitInt |x#0@@2|) (LitInt |u#0@@1|)) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0@@1|))) (= (ExtremeNat.__default.Q_h (LitInt |_k#0@@1|) (LitInt |x#0@@2|) (LitInt |u#0@@1|))  (and (< 0 |_k#0@@1|) (= (LitInt |x#0@@2|) (LitInt |u#0@@1|)))))
 :qid |DefaultParametersdfy.582:19|
 :weight 3
 :skolemid |14259|
 :pattern ( (ExtremeNat.__default.Q_h (LitInt |_k#0@@1|) (LitInt |x#0@@2|) (LitInt |u#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@3| Int) (|u#0@@2| Int) (|_k#0@@2| Int) ) (!  (=> (= |_k#0@@2| 0) (not (ExtremeNat.__default.Q_h |_k#0@@2| |x#0@@3| |u#0@@2|)))
 :qid |DefaultParametersdfy.582:26|
 :skolemid |14254|
 :pattern ( (ExtremeNat.__default.Q_h |_k#0@@2| |x#0@@3| |u#0@@2|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |13597|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |13595|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |13606|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@3| Int) (|x#0@@4| Int) (|u#0@@3| Int) ) (!  (=> (or (|ExtremeNat.__default.P_h#canCall| (LitInt |_k#0@@3|) |x#0@@4| |u#0@@3|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0@@3|))) (= (ExtremeNat.__default.P_h (LitInt |_k#0@@3|) |x#0@@4| |u#0@@3|)  (=> (< 0 |_k#0@@3|) (= |x#0@@4| |u#0@@3|))))
 :qid |DefaultParametersdfy.578:22|
 :weight 3
 :skolemid |14246|
 :pattern ( (ExtremeNat.__default.P_h (LitInt |_k#0@@3|) |x#0@@4| |u#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@5| Int) (|u#0@@4| Int) ) (!  (=> (forall ((|_k#0@@4| Int) ) (!  (=> (<= (LitInt 0) |_k#0@@4|) (ExtremeNat.__default.P_h |_k#0@@4| |x#0@@5| |u#0@@4|))
 :qid |DefaultParametersdfy.578:22|
 :skolemid |14239|
 :pattern ( (ExtremeNat.__default.P_h |_k#0@@4| |x#0@@5| |u#0@@4|))
)) (ExtremeNat.__default.P |x#0@@5| |u#0@@4|))
 :qid |DefaultParametersdfy.578:29|
 :skolemid |14241|
 :pattern ( (ExtremeNat.__default.P |x#0@@5| |u#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@5| Int) (|x#0@@6| Int) (|u#0@@5| Int) ) (!  (=> (or (|ExtremeNat.__default.Q_h#canCall| (LitInt |_k#0@@5|) |x#0@@6| |u#0@@5|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0@@5|))) (= (ExtremeNat.__default.Q_h (LitInt |_k#0@@5|) |x#0@@6| |u#0@@5|)  (and (< 0 |_k#0@@5|) (= |x#0@@6| |u#0@@5|))))
 :qid |DefaultParametersdfy.582:19|
 :weight 3
 :skolemid |14258|
 :pattern ( (ExtremeNat.__default.Q_h (LitInt |_k#0@@5|) |x#0@@6| |u#0@@5|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@7| Int) (|u#0@@6| Int) ) (!  (=> (exists ((|_k#0@@6| Int) ) (!  (and (<= (LitInt 0) |_k#0@@6|) (ExtremeNat.__default.Q_h |_k#0@@6| |x#0@@7| |u#0@@6|))
 :qid |DefaultParametersdfy.582:19|
 :skolemid |14251|
 :pattern ( (ExtremeNat.__default.Q_h |_k#0@@6| |x#0@@7| |u#0@@6|))
)) (ExtremeNat.__default.Q |x#0@@7| |u#0@@6|))
 :qid |DefaultParametersdfy.582:26|
 :skolemid |14253|
 :pattern ( (ExtremeNat.__default.Q |x#0@@7| |u#0@@6|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@7| Int) (|x#0@@8| Int) (|u#0@@7| Int) ) (!  (=> (or (|ExtremeNat.__default.P_h#canCall| |_k#0@@7| |x#0@@8| |u#0@@7|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0@@7|))) (= (ExtremeNat.__default.P_h |_k#0@@7| |x#0@@8| |u#0@@7|)  (=> (< 0 |_k#0@@7|) (= |x#0@@8| |u#0@@7|))))
 :qid |DefaultParametersdfy.578:22|
 :skolemid |14245|
 :pattern ( (ExtremeNat.__default.P_h |_k#0@@7| |x#0@@8| |u#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|_k#0@@8| Int) (|x#0@@9| Int) (|u#0@@8| Int) ) (!  (=> (or (|ExtremeNat.__default.Q_h#canCall| |_k#0@@8| |x#0@@9| |u#0@@8|) (and (< 1 $FunctionContextHeight) (<= (LitInt 0) |_k#0@@8|))) (= (ExtremeNat.__default.Q_h |_k#0@@8| |x#0@@9| |u#0@@8|)  (and (< 0 |_k#0@@8|) (= |x#0@@9| |u#0@@8|))))
 :qid |DefaultParametersdfy.582:19|
 :skolemid |14257|
 :pattern ( (ExtremeNat.__default.Q_h |_k#0@@8| |x#0@@9| |u#0@@8|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@10| Int) (|u#0@@9| Int) ) (!  (=> (or (|ExtremeNat.__default.P#canCall| |x#0@@10| |u#0@@9|) (< 0 $FunctionContextHeight)) (= (ExtremeNat.__default.P |x#0@@10| |u#0@@9|) (= |x#0@@10| |u#0@@9|)))
 :qid |DefaultParametersdfy.578:29|
 :skolemid |14238|
 :pattern ( (ExtremeNat.__default.P |x#0@@10| |u#0@@9|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@11| Int) (|u#0@@10| Int) ) (!  (=> (or (|ExtremeNat.__default.Q#canCall| |x#0@@11| |u#0@@10|) (< 0 $FunctionContextHeight)) (= (ExtremeNat.__default.Q |x#0@@11| |u#0@@10|) (= |x#0@@11| |u#0@@10|)))
 :qid |DefaultParametersdfy.582:26|
 :skolemid |14250|
 :pattern ( (ExtremeNat.__default.Q |x#0@@11| |u#0@@10|))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |13605|
 :pattern ( ($Box T@@1 x@@5))
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
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |14293|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@12| Int) (|u#0@@11| Int) ) (!  (=> (ExtremeNat.__default.P |x#0@@12| |u#0@@11|) (forall ((|_k#0@@9| Int) ) (!  (=> (<= (LitInt 0) |_k#0@@9|) (ExtremeNat.__default.P_h |_k#0@@9| |x#0@@12| |u#0@@11|))
 :qid |DefaultParametersdfy.578:22|
 :skolemid |14239|
 :pattern ( (ExtremeNat.__default.P_h |_k#0@@9| |x#0@@12| |u#0@@11|))
)))
 :qid |DefaultParametersdfy.578:29|
 :skolemid |14240|
 :pattern ( (ExtremeNat.__default.P |x#0@@12| |u#0@@11|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@13| Int) (|u#0@@12| Int) ) (!  (=> (ExtremeNat.__default.Q |x#0@@13| |u#0@@12|) (exists ((|_k#0@@10| Int) ) (!  (and (<= (LitInt 0) |_k#0@@10|) (ExtremeNat.__default.Q_h |_k#0@@10| |x#0@@13| |u#0@@12|))
 :qid |DefaultParametersdfy.582:19|
 :skolemid |14251|
 :pattern ( (ExtremeNat.__default.Q_h |_k#0@@10| |x#0@@13| |u#0@@12|))
)))
 :qid |DefaultParametersdfy.582:26|
 :skolemid |14252|
 :pattern ( (ExtremeNat.__default.Q |x#0@@13| |u#0@@12|))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |13598|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |13596|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |13641|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |o#0| () Int)
(declare-fun |b#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |y#0| () Int)
(declare-fun |z#0| () Int)
(declare-fun |v#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |w#0| () Int)
(declare-fun |a#0| () Int)
(set-info :boogie-vc-id Impl$$ExtremeNat.__default.TestLeast)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon2_correct  (=> (=> (or (not (= |o#0| 0)) (not true)) (|ExtremeNat.__default.Q_h#canCall| |o#0| |b#0| |b#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (or (not (= |o#0| 0)) (not true)) (=> (|ExtremeNat.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (or (ExtremeNat.__default.Q_h |o#0| |b#0| |b#0|) (< 0 |o#0|))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (or (not (= |o#0| 0)) (not true)) (=> (|ExtremeNat.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (or (ExtremeNat.__default.Q_h |o#0| |b#0| |b#0|) (= |b#0| |b#0|)))))))))
(let ((anon3_Else_correct  (=> (and (= |o#0| 0) (= (ControlFlow 0 5) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (and (or (not (= |o#0| 0)) (not true)) ($IsAlloc intType (int_2_U |o#0|) Tclass._System.nat $Heap@1)) (=> (and (and ($IsAlloc intType (int_2_U |b#0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |b#0|) TInt $Heap@1)) (and (|ExtremeNat.__default.Q_h#canCall| |o#0| |b#0| |b#0|) (= (ControlFlow 0 4) 2))) anon2_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsAlloc intType (int_2_U |y#0|) TInt $Heap) ($IsAlloc intType (int_2_U |y#0|) TInt $Heap)) (and (|ExtremeNat.__default.P#canCall| |y#0| |y#0|) (|ExtremeNat.__default.P#canCall| |y#0| |y#0|))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (=> (|ExtremeNat.__default.P#canCall| |y#0| |y#0|) (or (ExtremeNat.__default.P |y#0| |y#0|) (= |y#0| |y#0|)))) (=> (and (ExtremeNat.__default.P |y#0| |y#0|) ($IsAlloc intType (int_2_U |o#0|) Tclass._System.nat $Heap)) (=> (and (and ($IsAlloc intType (int_2_U |z#0|) TInt $Heap) ($IsAlloc intType (int_2_U |z#0|) TInt $Heap)) (and (|ExtremeNat.__default.P_h#canCall| |o#0| |z#0| |z#0|) (|ExtremeNat.__default.P_h#canCall| |o#0| |z#0| |z#0|))) (and (=> (= (ControlFlow 0 6) (- 0 10)) (=> (|ExtremeNat.__default.P_h#canCall| |o#0| |z#0| |z#0|) (or (ExtremeNat.__default.P_h |o#0| |z#0| |z#0|) (=> (< 0 |o#0|) (= |z#0| |z#0|))))) (=> (ExtremeNat.__default.P_h |o#0| |z#0| |z#0|) (and (=> (= (ControlFlow 0 6) (- 0 9)) (= |v#0| |v#0|)) (=> (= |v#0| |v#0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (= |w#0| |w#0|)) (=> (= |w#0| |w#0|) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (and ($IsAlloc intType (int_2_U |a#0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |a#0|) TInt $Heap@1)) (and (|ExtremeNat.__default.Q#canCall| |a#0| |a#0|) (|ExtremeNat.__default.Q#canCall| |a#0| |a#0|)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|ExtremeNat.__default.Q#canCall| |a#0| |a#0|) (or (ExtremeNat.__default.Q |a#0| |a#0|) (= |a#0| |a#0|)))) (=> (ExtremeNat.__default.Q |a#0| |a#0|) (and (=> (= (ControlFlow 0 6) 4) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |o#0|)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 6))) anon0_correct)))
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
