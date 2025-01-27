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
(declare-fun AnotherTest.__default.PickFromPair (T@U T@U T@U) T@U)
(declare-fun |AnotherTest.__default.PickFromPair#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun |$let#3_x| (T@U T@U T@U) T@U)
(declare-fun |$let#3$canCall| (T@U T@U T@U) Bool)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((AnotherTest._default.PickFromPair$U T@U) (|a#0| T@U) (|b#0| T@U) ) (!  (=> (or (|AnotherTest.__default.PickFromPair#canCall| AnotherTest._default.PickFromPair$U |a#0| |b#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |a#0| AnotherTest._default.PickFromPair$U) ($IsBox |b#0| AnotherTest._default.PickFromPair$U)) (or (not (= |a#0| |b#0|)) (not true))))) ($IsBox (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U |a#0| |b#0|) AnotherTest._default.PickFromPair$U))
 :qid |unknown.0:0|
 :skolemid |2151|
 :pattern ( (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U |a#0| |b#0|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1628|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1639|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1652|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (AnotherTest._default.PickFromPair$U@@0 T@U) (|a#0@@0| T@U) (|b#0@@0| T@U) ) (!  (=> (and (or (|AnotherTest.__default.PickFromPair#canCall| AnotherTest._default.PickFromPair$U@@0 |a#0@@0| |b#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsBox |a#0@@0| AnotherTest._default.PickFromPair$U@@0) ($IsAllocBox |a#0@@0| AnotherTest._default.PickFromPair$U@@0 $Heap)) (and ($IsBox |b#0@@0| AnotherTest._default.PickFromPair$U@@0) ($IsAllocBox |b#0@@0| AnotherTest._default.PickFromPair$U@@0 $Heap))) (or (not (= |a#0@@0| |b#0@@0|)) (not true))))) ($IsGoodHeap $Heap)) ($IsAllocBox (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@0 |a#0@@0| |b#0@@0|) AnotherTest._default.PickFromPair$U@@0 $Heap))
 :qid |DeterministicPickdfy.44:12|
 :skolemid |2152|
 :pattern ( ($IsAllocBox (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@0 |a#0@@0| |b#0@@0|) AnotherTest._default.PickFromPair$U@@0 $Heap))
))))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1651|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1638|
 :pattern ( ($Box T@@3 x@@4))
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
 :skolemid |2159|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((AnotherTest._default.PickFromPair$U@@1 T@U) (a T@U) (b T@U) ) (!  (=> (|$let#3$canCall| AnotherTest._default.PickFromPair$U@@1 a b) (and (or (= (|$let#3_x| AnotherTest._default.PickFromPair$U@@1 a b) a) (= (|$let#3_x| AnotherTest._default.PickFromPair$U@@1 a b) b)) (or (not (= (|$let#3_x| AnotherTest._default.PickFromPair$U@@1 a b) a)) (not true))))
 :qid |DeterministicPickdfy.47:5|
 :skolemid |2154|
 :pattern ( (|$let#3_x| AnotherTest._default.PickFromPair$U@@1 a b))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((AnotherTest._default.PickFromPair$U@@2 T@U) ($Heap@@0 T@U) (|a#0@@1| T@U) (|b#0@@1| T@U) ) (!  (=> (or (|AnotherTest.__default.PickFromPair#canCall| AnotherTest._default.PickFromPair$U@@2 (Lit BoxType |a#0@@1|) (Lit BoxType |b#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($IsBox |a#0@@1| AnotherTest._default.PickFromPair$U@@2)) ($IsBox |b#0@@1| AnotherTest._default.PickFromPair$U@@2)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |a#0@@1| |b#0@@1|)) (not true)))))))) (and (|$let#3$canCall| AnotherTest._default.PickFromPair$U@@2 (Lit BoxType |a#0@@1|) (Lit BoxType |b#0@@1|)) (= (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@2 (Lit BoxType |a#0@@1|) (Lit BoxType |b#0@@1|)) (let ((|x#1| (|$let#3_x| AnotherTest._default.PickFromPair$U@@2 (Lit BoxType |a#0@@1|) (Lit BoxType |b#0@@1|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |2156|
 :pattern ( (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@2 (Lit BoxType |a#0@@1|) (Lit BoxType |b#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1629|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((AnotherTest._default.PickFromPair$U@@3 T@U) ($Heap@@1 T@U) (|a#0@@2| T@U) (|b#0@@2| T@U) ) (!  (=> (or (|AnotherTest.__default.PickFromPair#canCall| AnotherTest._default.PickFromPair$U@@3 |a#0@@2| |b#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($IsBox |a#0@@2| AnotherTest._default.PickFromPair$U@@3)) ($IsBox |b#0@@2| AnotherTest._default.PickFromPair$U@@3)) (or (not (= |a#0@@2| |b#0@@2|)) (not true))))) (and (|$let#3$canCall| AnotherTest._default.PickFromPair$U@@3 |a#0@@2| |b#0@@2|) (= (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@3 |a#0@@2| |b#0@@2|) (let ((|x#0| (|$let#3_x| AnotherTest._default.PickFromPair$U@@3 |a#0@@2| |b#0@@2|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |2155|
 :pattern ( (AnotherTest.__default.PickFromPair AnotherTest._default.PickFromPair$U@@3 |a#0@@2| |b#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@@3| () T@U)
(declare-fun AnotherTest._default.PickFromPair$U@@4 () T@U)
(declare-fun |a#0@@3| () T@U)
(declare-fun |x#2@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |x#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun alloc () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$AnotherTest.__default.PickFromPair)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (and ($IsBox |b#0@@3| AnotherTest._default.PickFromPair$U@@4) (and (or (= |b#0@@3| |a#0@@3|) (= |b#0@@3| |b#0@@3|)) (or (not (= |b#0@@3| |a#0@@3|)) (not true)))) (or (and ($IsBox |a#0@@3| AnotherTest._default.PickFromPair$U@@4) (and (or (= |a#0@@3| |a#0@@3|) (= |a#0@@3| |b#0@@3|)) (or (not (= |a#0@@3| |a#0@@3|)) (not true)))) (exists ((|x#3| T@U) ) (!  (and ($IsBox |x#3| AnotherTest._default.PickFromPair$U@@4) (and (or (= |x#3| |a#0@@3|) (= |x#3| |b#0@@3|)) (or (not (= |x#3| |a#0@@3|)) (not true))))
 :qid |DeterministicPickdfy.47:9|
 :skolemid |2157|
))))) (=> (or (and ($IsBox |b#0@@3| AnotherTest._default.PickFromPair$U@@4) (and (or (= |b#0@@3| |a#0@@3|) (= |b#0@@3| |b#0@@3|)) (or (not (= |b#0@@3| |a#0@@3|)) (not true)))) (or (and ($IsBox |a#0@@3| AnotherTest._default.PickFromPair$U@@4) (and (or (= |a#0@@3| |a#0@@3|) (= |a#0@@3| |b#0@@3|)) (or (not (= |a#0@@3| |a#0@@3|)) (not true)))) (exists ((|x#3@@0| T@U) ) (!  (and ($IsBox |x#3@@0| AnotherTest._default.PickFromPair$U@@4) (and (or (= |x#3@@0| |a#0@@3|) (= |x#3@@0| |b#0@@3|)) (or (not (= |x#3@@0| |a#0@@3|)) (not true))))
 :qid |DeterministicPickdfy.47:9|
 :skolemid |2157|
)))) (=> (and ($IsBox |x#2@0| AnotherTest._default.PickFromPair$U@@4) ($IsAllocBox |x#2@0| AnotherTest._default.PickFromPair$U@@4 $Heap@@2)) (=> (and (and (and (or (= |x#2@0| |a#0@@3|) (= |x#2@0| |b#0@@3|)) (or (not (= |x#2@0| |a#0@@3|)) (not true))) (and ($IsBox |x#4@0| AnotherTest._default.PickFromPair$U@@4) ($IsAllocBox |x#4@0| AnotherTest._default.PickFromPair$U@@4 $Heap@@2))) (and (and (or (= |x#4@0| |a#0@@3|) (= |x#4@0| |b#0@@3|)) (or (not (= |x#4@0| |a#0@@3|)) (not true))) (= (ControlFlow 0 3) (- 0 2)))) (= |x#2@0| |x#4@0|)))))))
(let ((anon10_Else_correct  (=> (and (not (or (= |x#2@0| |a#0@@3|) (= |x#2@0| |b#0@@3|))) (= (ControlFlow 0 7) 3)) anon6_correct)))
(let ((anon10_Then_correct  (=> (and (or (= |x#2@0| |a#0@@3|) (= |x#2@0| |b#0@@3|)) (= (ControlFlow 0 6) 3)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and ($IsBox |x#2@0| AnotherTest._default.PickFromPair$U@@4) ($IsAllocBox |x#2@0| AnotherTest._default.PickFromPair$U@@4 $Heap@@2)) (and (=> (= (ControlFlow 0 8) 6) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (and ($IsBox |x#2@0| AnotherTest._default.PickFromPair$U@@4) ($IsAllocBox |x#2@0| AnotherTest._default.PickFromPair$U@@4 $Heap@@2))) (= (ControlFlow 0 5) 3)) anon6_correct)))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (or (not (= |a#0@@3| |b#0@@3|)) (not true))) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 5) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($IsBox |a#0@@3| AnotherTest._default.PickFromPair$U@@4) ($IsBox |b#0@@3| AnotherTest._default.PickFromPair$U@@4)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
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
