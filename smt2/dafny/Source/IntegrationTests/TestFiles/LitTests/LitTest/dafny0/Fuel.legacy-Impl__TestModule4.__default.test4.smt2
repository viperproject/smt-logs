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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TestModule4.__default.pos (T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |TestModule4.__default.pos#canCall| (Int) Bool)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $LZ () T@U)
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
(assert (distinct TInt TagInt alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1653|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1651|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1662|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|x#0| Int) ) (!  (=> (or (|TestModule4.__default.pos#canCall| |x#0|) (< 0 $FunctionContextHeight)) (and (=> (<= 0 |x#0|) (|TestModule4.__default.pos#canCall| (- |x#0| 1))) (= (TestModule4.__default.pos ($LS $ly) |x#0|) (ite (< |x#0| 0) 0 (+ 1 (TestModule4.__default.pos $ly (- |x#0| 1)))))))
 :qid |Fuellegacydfy.100:20|
 :skolemid |2168|
 :pattern ( (TestModule4.__default.pos ($LS $ly) |x#0|))
))))
(assert (forall (($ly@@0 T@U) (|x#0@@0| Int) ) (! (= (TestModule4.__default.pos $ly@@0 |x#0@@0|) (TestModule4.__default.pos $LZ |x#0@@0|))
 :qid |Fuellegacydfy.100:20|
 :skolemid |2165|
 :pattern ( (TestModule4.__default.pos (AsFuelBottom $ly@@0) |x#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|x#0@@1| Int) ) (!  (=> (or (|TestModule4.__default.pos#canCall| (LitInt |x#0@@1|)) (< 0 $FunctionContextHeight)) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (< |x#0@@1| 0))))) (|TestModule4.__default.pos#canCall| (LitInt (- |x#0@@1| 1)))) (= (TestModule4.__default.pos ($LS $ly@@1) (LitInt |x#0@@1|)) (ite (< |x#0@@1| 0) 0 (+ 1 (TestModule4.__default.pos ($LS $ly@@1) (LitInt (- |x#0@@1| 1))))))))
 :qid |Fuellegacydfy.100:20|
 :weight 3
 :skolemid |2169|
 :pattern ( (TestModule4.__default.pos ($LS $ly@@1) (LitInt |x#0@@1|)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1661|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall (($ly@@2 T@U) (|x#0@@2| Int) ) (! (= (TestModule4.__default.pos ($LS $ly@@2) |x#0@@2|) (TestModule4.__default.pos $ly@@2 |x#0@@2|))
 :qid |Fuellegacydfy.100:20|
 :skolemid |2164|
 :pattern ( (TestModule4.__default.pos ($LS $ly@@2) |x#0@@2|))
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
 :skolemid |8322|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1654|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1652|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1697|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |y#0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##x#0_1@0| () Int)
(declare-fun StartFuelAssert_TestModule4._default.pos () T@U)
(declare-fun StartFuel_TestModule4._default.pos () T@U)
(declare-fun MoreFuel_TestModule4._default.pos3 () T@U)
(declare-fun |t#0_0@0| () Int)
(declare-fun |##x#1_0_0_1@0| () Int)
(declare-fun |##x#1@0| () Int)
(declare-fun MoreFuel_TestModule4._default.pos4 () T@U)
(declare-fun BaseFuel_TestModule4._default.pos () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |z#0| () Int)
(set-info :boogie-vc-id Impl$$TestModule4.__default.test4)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon13_Else_correct  (=> ($IsAlloc intType (int_2_U |y#0|) TInt $Heap) (=> (and (|TestModule4.__default.pos#canCall| |y#0|) (= |##x#0_1@0| (- |y#0| 3))) (=> (and (and ($IsAlloc intType (int_2_U |##x#0_1@0|) TInt $Heap) (|TestModule4.__default.pos#canCall| (- |y#0| 3))) (and (|TestModule4.__default.pos#canCall| |y#0|) (|TestModule4.__default.pos#canCall| (- |y#0| 3)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos |y#0|) (+ 3 (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos (- |y#0| 3))))) (=> (and (= (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos |y#0|) (+ 3 (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos (- |y#0| 3)))) (= (ControlFlow 0 11) (- 0 10))) (U_2_bool (Lit boolType (bool_2_U true))))))))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct  (=> (= StartFuel_TestModule4._default.pos ($LS ($LS ($LS MoreFuel_TestModule4._default.pos3)))) (=> (and (= StartFuelAssert_TestModule4._default.pos ($LS ($LS ($LS ($LS MoreFuel_TestModule4._default.pos3))))) (> |t#0_0@0| 0)) (and (=> (= (ControlFlow 0 13) 9) anon13_Then_correct) (=> (= (ControlFlow 0 13) 11) anon13_Else_correct))))))
(let ((anon16_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |y#0|) TInt $Heap) (|TestModule4.__default.pos#canCall| |y#0|)) (and (|TestModule4.__default.pos#canCall| |y#0|) (= |##x#1_0_0_1@0| (- |y#0| 3)))) (and (and ($IsAlloc intType (int_2_U |##x#1_0_0_1@0|) TInt $Heap) (|TestModule4.__default.pos#canCall| (- |y#0| 3))) (and (|TestModule4.__default.pos#canCall| (- |y#0| 3)) (= (ControlFlow 0 5) (- 0 4))))) (= (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos |y#0|) (+ 3 (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos (- |y#0| 3)))))))
(let ((anon15_Then_correct true))
(let ((anon11_correct  (=> ($IsAlloc intType (int_2_U |y#0|) TInt $Heap) (=> (and (and (and (|TestModule4.__default.pos#canCall| |y#0|) (= |##x#1@0| (- |y#0| 3))) (and ($IsAlloc intType (int_2_U |##x#1@0|) TInt $Heap) (|TestModule4.__default.pos#canCall| (- |y#0| 3)))) (and (and (|TestModule4.__default.pos#canCall| |y#0|) (|TestModule4.__default.pos#canCall| (- |y#0| 3))) (= (ControlFlow 0 2) (- 0 1)))) (= (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos |y#0|) (+ 3 (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos (- |y#0| 3))))))))
(let ((anon16_Else_correct  (=> (and (= (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos |y#0|) (+ 3 (TestModule4.__default.pos StartFuelAssert_TestModule4._default.pos (- |y#0| 3)))) (= (ControlFlow 0 6) 2)) anon11_correct)))
(let ((anon14_Then_correct  (=> (and (= StartFuel_TestModule4._default.pos ($LS ($LS ($LS MoreFuel_TestModule4._default.pos4)))) (= StartFuelAssert_TestModule4._default.pos ($LS ($LS ($LS ($LS MoreFuel_TestModule4._default.pos4)))))) (and (and (=> (= (ControlFlow 0 7) 3) anon15_Then_correct) (=> (= (ControlFlow 0 7) 5) anon16_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))
(let ((anon12_Else_correct  (=> (forall ((|t#0_1| Int) ) (!  (=> (> |t#0_1| 0) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |Fuellegacydfy.144:16|
 :skolemid |2183|
)) (and (=> (= (ControlFlow 0 8) 7) anon14_Then_correct) (=> (= (ControlFlow 0 8) 2) anon11_correct)))))
(let ((anon0_correct  (=> (and (and (= StartFuel_TestModule4._default.pos ($LS BaseFuel_TestModule4._default.pos)) (= StartFuelAssert_TestModule4._default.pos ($LS ($LS BaseFuel_TestModule4._default.pos)))) (and (= (AsFuelBottom BaseFuel_TestModule4._default.pos) BaseFuel_TestModule4._default.pos) (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)))) (and (=> (= (ControlFlow 0 14) 13) anon12_Then_correct) (=> (= (ControlFlow 0 14) 8) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (= 1 $FunctionContextHeight) (> |y#0| 5)) (and (< |z#0| 0) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
