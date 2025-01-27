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
(declare-fun Nested.__default.A (T@U Int) Int)
(declare-fun |Nested.__default.A#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Nested.__default.B (T@U Int) Int)
(declare-fun |Nested.__default.B#canCall| (Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Nested.__default.ABC0 (T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |Nested.__default.ABC0#canCall| () Bool)
(declare-fun |Nested.__default.C#canCall| () Bool)
(declare-fun Nested.__default.C (T@U) Int)
(declare-fun Nested.__default.ABC1 (T@U) Int)
(declare-fun |Nested.__default.ABC1#canCall| () Bool)
(declare-fun Nested.__default.ABC2 (T@U) Int)
(declare-fun |Nested.__default.ABC2#canCall| () Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |4727|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|x#0@@0| Int) ) (!  (=> (or (|Nested.__default.A#canCall| |x#0@@0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |x#0@@0|))) (<= (LitInt 0) (Nested.__default.A $ly |x#0@@0|)))
 :qid |DefaultParametersdfy.219:18|
 :skolemid |5080|
 :pattern ( (Nested.__default.A $ly |x#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@1| Int) ) (!  (=> (or (|Nested.__default.B#canCall| |x#0@@1|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |x#0@@1|))) (<= (LitInt 0) (Nested.__default.B $ly@@0 |x#0@@1|)))
 :qid |DefaultParametersdfy.220:18|
 :skolemid |5085|
 :pattern ( (Nested.__default.B $ly@@0 |x#0@@1|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4399|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4397|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ) (!  (=> (or |Nested.__default.ABC0#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C ($LS $ly@@1))))) (|Nested.__default.A#canCall| (Nested.__default.B ($LS $ly@@1) (LitInt (Nested.__default.C ($LS $ly@@1)))))) (= (Nested.__default.ABC0 ($LS $ly@@1)) (Nested.__default.A ($LS $ly@@1) (Nested.__default.B ($LS $ly@@1) (LitInt (Nested.__default.C ($LS $ly@@1))))))))
 :qid |DefaultParametersdfy.226:18|
 :weight 3
 :skolemid |5102|
 :pattern ( (Nested.__default.ABC0 ($LS $ly@@1)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ) (!  (=> (or |Nested.__default.ABC1#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C ($LS $ly@@2))))) (|Nested.__default.A#canCall| (Nested.__default.B ($LS $ly@@2) (LitInt (Nested.__default.C ($LS $ly@@2)))))) (= (Nested.__default.ABC1 ($LS $ly@@2)) (Nested.__default.A ($LS $ly@@2) (Nested.__default.B ($LS $ly@@2) (LitInt (Nested.__default.C ($LS $ly@@2))))))))
 :qid |DefaultParametersdfy.231:18|
 :weight 3
 :skolemid |5111|
 :pattern ( (Nested.__default.ABC1 ($LS $ly@@2)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) ) (!  (=> (or |Nested.__default.ABC2#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C ($LS $ly@@3))))) (|Nested.__default.A#canCall| (Nested.__default.B ($LS $ly@@3) (LitInt (Nested.__default.C ($LS $ly@@3)))))) (= (Nested.__default.ABC2 ($LS $ly@@3)) (Nested.__default.A ($LS $ly@@3) (Nested.__default.B ($LS $ly@@3) (LitInt (Nested.__default.C ($LS $ly@@3))))))))
 :qid |DefaultParametersdfy.237:18|
 :weight 3
 :skolemid |5119|
 :pattern ( (Nested.__default.ABC2 ($LS $ly@@3)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4408|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |4726|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@4 T@U) ) (!  (=> (or |Nested.__default.C#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.ABC0#canCall| |Nested.__default.ABC1#canCall|) |Nested.__default.ABC2#canCall|) (= (Nested.__default.C ($LS $ly@@4)) (LitInt (+ (+ (Nested.__default.ABC0 $ly@@4) (Nested.__default.ABC1 $ly@@4)) (Nested.__default.ABC2 $ly@@4))))))
 :qid |DefaultParametersdfy.221:18|
 :skolemid |5092|
 :pattern ( (Nested.__default.C ($LS $ly@@4)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) ) (!  (=> (or |Nested.__default.C#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.ABC0#canCall| |Nested.__default.ABC1#canCall|) |Nested.__default.ABC2#canCall|) (= (Nested.__default.C ($LS $ly@@5)) (LitInt (+ (+ (Nested.__default.ABC0 ($LS $ly@@5)) (Nested.__default.ABC1 ($LS $ly@@5))) (Nested.__default.ABC2 ($LS $ly@@5)))))))
 :qid |DefaultParametersdfy.221:18|
 :weight 3
 :skolemid |5093|
 :pattern ( (Nested.__default.C ($LS $ly@@5)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4407|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall (($ly@@6 T@U) (|x#0@@3| Int) ) (! (= (Nested.__default.A ($LS $ly@@6) |x#0@@3|) (Nested.__default.A $ly@@6 |x#0@@3|))
 :qid |DefaultParametersdfy.219:18|
 :skolemid |5078|
 :pattern ( (Nested.__default.A ($LS $ly@@6) |x#0@@3|))
)))
(assert (forall (($ly@@7 T@U) (|x#0@@4| Int) ) (! (= (Nested.__default.B ($LS $ly@@7) |x#0@@4|) (Nested.__default.B $ly@@7 |x#0@@4|))
 :qid |DefaultParametersdfy.220:18|
 :skolemid |5083|
 :pattern ( (Nested.__default.B ($LS $ly@@7) |x#0@@4|))
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
 :skolemid |14271|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@8 T@U) ) (!  (=> (or |Nested.__default.C#canCall| (< 0 $FunctionContextHeight)) (<= (LitInt 0) (Nested.__default.C $ly@@8)))
 :qid |DefaultParametersdfy.221:18|
 :skolemid |5090|
 :pattern ( (Nested.__default.C $ly@@8))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@9 T@U) ) (!  (=> (or |Nested.__default.ABC0#canCall| (< 0 $FunctionContextHeight)) (<= (LitInt 0) (Nested.__default.ABC0 $ly@@9)))
 :qid |DefaultParametersdfy.226:18|
 :skolemid |5099|
 :pattern ( (Nested.__default.ABC0 $ly@@9))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@10 T@U) ) (!  (=> (or |Nested.__default.ABC1#canCall| (< 0 $FunctionContextHeight)) (<= (LitInt 0) (Nested.__default.ABC1 $ly@@10)))
 :qid |DefaultParametersdfy.231:18|
 :skolemid |5108|
 :pattern ( (Nested.__default.ABC1 $ly@@10))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@11 T@U) ) (!  (=> (or |Nested.__default.ABC2#canCall| (< 0 $FunctionContextHeight)) (<= (LitInt 0) (Nested.__default.ABC2 $ly@@11)))
 :qid |DefaultParametersdfy.237:18|
 :skolemid |5116|
 :pattern ( (Nested.__default.ABC2 $ly@@11))
))))
(assert (forall (($ly@@12 T@U) ) (! (= (Nested.__default.C ($LS $ly@@12)) (Nested.__default.C $ly@@12))
 :qid |DefaultParametersdfy.221:18|
 :skolemid |5088|
 :pattern ( (Nested.__default.C ($LS $ly@@12)))
)))
(assert (forall (($ly@@13 T@U) ) (! (= (Nested.__default.ABC0 ($LS $ly@@13)) (Nested.__default.ABC0 $ly@@13))
 :qid |DefaultParametersdfy.226:18|
 :skolemid |5097|
 :pattern ( (Nested.__default.ABC0 ($LS $ly@@13)))
)))
(assert (forall (($ly@@14 T@U) ) (! (= (Nested.__default.ABC1 ($LS $ly@@14)) (Nested.__default.ABC1 $ly@@14))
 :qid |DefaultParametersdfy.231:18|
 :skolemid |5106|
 :pattern ( (Nested.__default.ABC1 ($LS $ly@@14)))
)))
(assert (forall (($ly@@15 T@U) ) (! (= (Nested.__default.ABC2 ($LS $ly@@15)) (Nested.__default.ABC2 $ly@@15))
 :qid |DefaultParametersdfy.237:18|
 :skolemid |5114|
 :pattern ( (Nested.__default.ABC2 ($LS $ly@@15)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@16 T@U) ) (!  (=> (or |Nested.__default.ABC0#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C $ly@@16)))) (|Nested.__default.A#canCall| (Nested.__default.B $ly@@16 (LitInt (Nested.__default.C $ly@@16))))) (= (Nested.__default.ABC0 ($LS $ly@@16)) (Nested.__default.A $ly@@16 (Nested.__default.B $ly@@16 (LitInt (Nested.__default.C $ly@@16)))))))
 :qid |DefaultParametersdfy.226:18|
 :skolemid |5101|
 :pattern ( (Nested.__default.ABC0 ($LS $ly@@16)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@17 T@U) ) (!  (=> (or |Nested.__default.ABC1#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C $ly@@17)))) (|Nested.__default.A#canCall| (Nested.__default.B $ly@@17 (LitInt (Nested.__default.C $ly@@17))))) (= (Nested.__default.ABC1 ($LS $ly@@17)) (Nested.__default.A $ly@@17 (Nested.__default.B $ly@@17 (LitInt (Nested.__default.C $ly@@17)))))))
 :qid |DefaultParametersdfy.231:18|
 :skolemid |5110|
 :pattern ( (Nested.__default.ABC1 ($LS $ly@@17)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@18 T@U) ) (!  (=> (or |Nested.__default.ABC2#canCall| (< 0 $FunctionContextHeight)) (and (and (and |Nested.__default.C#canCall| (|Nested.__default.B#canCall| (LitInt (Nested.__default.C $ly@@18)))) (|Nested.__default.A#canCall| (Nested.__default.B $ly@@18 (LitInt (Nested.__default.C $ly@@18))))) (= (Nested.__default.ABC2 ($LS $ly@@18)) (Nested.__default.A $ly@@18 (Nested.__default.B $ly@@18 (LitInt (Nested.__default.C $ly@@18)))))))
 :qid |DefaultParametersdfy.237:18|
 :skolemid |5118|
 :pattern ( (Nested.__default.ABC2 ($LS $ly@@18)))
))))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4400|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4398|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##x#1@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Nested.__default.ABC1)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_Else_correct  (=> (and (= |##x#1@0| (LitInt (Nested.__default.C ($LS $LZ)))) ($IsAlloc intType (int_2_U |##x#1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (<= 0 (LitInt 6)) (= |##x#1@0| (LitInt 6)))) (=> (or (<= 0 (LitInt 6)) (= |##x#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (< |##x#1@0| (LitInt 6))) (=> (< |##x#1@0| (LitInt 6)) (=> (|Nested.__default.B#canCall| (LitInt (Nested.__default.C ($LS $LZ)))) (=> (and (= |##x#0@0| (Nested.__default.B ($LS $LZ) (LitInt (Nested.__default.C ($LS $LZ))))) ($IsAlloc intType (int_2_U |##x#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (<= 0 (LitInt 6)) (= |##x#0@0| (LitInt 6)))) (=> (or (<= 0 (LitInt 6)) (= |##x#0@0| (LitInt 6))) (=> (= (ControlFlow 0 3) (- 0 2)) (< |##x#0@0| (LitInt 6))))))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
