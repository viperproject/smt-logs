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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.G (T@U Int Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.G#canCall| (Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Lit (T@T T@U) T@U)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|x#0| Int) (|y#0| Int) ) (!  (=> (or (|_module.__default.G#canCall| |x#0| |y#0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0|) (<= (LitInt 0) |y#0|)))) (and (=> (or (not (= |x#0| (LitInt 0))) (not true)) (and (=> (or (not (= |y#0| 0)) (not true)) (let ((|z#0| (+ |x#0| |x#0|)))
 (and (=> (< |x#0| |z#0|) (|_module.__default.G#canCall| |x#0| (- |y#0| 1))) (=> (<= |z#0| |x#0|) (|_module.__default.G#canCall| |x#0| (- |y#0| 1)))))) (=> (= |y#0| 0) (|_module.__default.G#canCall| (- |x#0| 1) (LitInt 60))))) (= (_module.__default.G ($LS $ly) |x#0| |y#0|) (ite (= |x#0| (LitInt 0)) 0 (ite  (or (not (= |y#0| 0)) (not true)) (let ((|z#0@@0| (+ |x#0| |x#0|)))
(let ((|b#0| (ite (< |x#0| |z#0@@0|) (_module.__default.G $ly |x#0| (- |y#0| 1)) (_module.__default.G $ly |x#0| (- |y#0| 1)))))
|b#0|)) (+ (_module.__default.G $ly (- |x#0| 1) (LitInt 60)) 13))))))
 :qid |GhostITECompilationdfy.18:10|
 :skolemid |541|
 :pattern ( (_module.__default.G ($LS $ly) |x#0| |y#0|))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|x#0@@1| Int) (|y#0@@0| Int) ) (!  (=> (or (|_module.__default.G#canCall| |x#0@@1| |y#0@@0|) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@1|) (<= (LitInt 0) |y#0@@0|)))) (<= (LitInt 0) (_module.__default.G $ly@@0 |x#0@@1| |y#0@@0|)))
 :qid |GhostITECompilationdfy.18:10|
 :skolemid |539|
 :pattern ( (_module.__default.G $ly@@0 |x#0@@1| |y#0@@0|))
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
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert (forall (($ly@@1 T@U) (|x#0@@3| Int) (|y#0@@1| Int) ) (! (= (_module.__default.G ($LS $ly@@1) |x#0@@3| |y#0@@1|) (_module.__default.G $ly@@1 |x#0@@3| |y#0@@1|))
 :qid |GhostITECompilationdfy.18:10|
 :skolemid |537|
 :pattern ( (_module.__default.G ($LS $ly@@1) |x#0@@3| |y#0@@1|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|x#0@@4| Int) (|y#0@@2| Int) ) (!  (=> (or (|_module.__default.G#canCall| (LitInt |x#0@@4|) (LitInt |y#0@@2|)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) |x#0@@4|) (<= (LitInt 0) |y#0@@2|)))) (and (=> (or (not (= (LitInt |x#0@@4|) (LitInt 0))) (not true)) (and (=> (U_2_bool (Lit boolType (bool_2_U  (or (not (= |y#0@@2| 0)) (not true))))) (let ((|z#1| (LitInt (+ |x#0@@4| |x#0@@4|))))
 (and (=> (< |x#0@@4| |z#1|) (|_module.__default.G#canCall| (LitInt |x#0@@4|) (LitInt (- |y#0@@2| 1)))) (=> (<= |z#1| |x#0@@4|) (|_module.__default.G#canCall| (LitInt |x#0@@4|) (LitInt (- |y#0@@2| 1))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U  (or (not (= |y#0@@2| 0)) (not true)))))) (|_module.__default.G#canCall| (LitInt (- |x#0@@4| 1)) (LitInt 60))))) (= (_module.__default.G ($LS $ly@@2) (LitInt |x#0@@4|) (LitInt |y#0@@2|)) (ite (= (LitInt |x#0@@4|) (LitInt 0)) 0 (ite  (or (not (= |y#0@@2| 0)) (not true)) (let ((|z#1@@0| (LitInt (+ |x#0@@4| |x#0@@4|))))
(let ((|b#1| (ite (< |x#0@@4| |z#1@@0|) (_module.__default.G ($LS $ly@@2) (LitInt |x#0@@4|) (LitInt (- |y#0@@2| 1))) (_module.__default.G ($LS $ly@@2) (LitInt |x#0@@4|) (LitInt (- |y#0@@2| 1))))))
|b#1|)) (+ (_module.__default.G ($LS $ly@@2) (LitInt (- |x#0@@4| 1)) (LitInt 60)) 13))))))
 :qid |GhostITECompilationdfy.18:10|
 :weight 3
 :skolemid |542|
 :pattern ( (_module.__default.G ($LS $ly@@2) (LitInt |x#0@@4|) (LitInt |y#0@@2|)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
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
 :skolemid |571|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#Z#0@0| () Int)
(declare-fun |let#1#1#0| () Int)
(declare-fun |let#1#2#0| () Int)
(declare-fun |c#Z#0@0| () Int)
(declare-fun |x#0@@5| () Int)
(declare-fun $Heap () T@U)
(declare-fun |y#0@@3| () Int)
(declare-fun |##y#2@0| () Int)
(declare-fun |a#Z#0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |z#Z#0@0| () Int)
(declare-fun |##y#1@0| () Int)
(declare-fun |##y#0@0| () Int)
(declare-fun |let#0#0#0| () Int)
(declare-fun |let#1#0#0| () Int)
(declare-fun |##x#3@0| () Int)
(declare-fun |##y#3@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.G)
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
 (=> (= (ControlFlow 0 0) 31) (let ((anon9_correct  (=> (= |b#Z#0@0| |let#1#1#0|) (=> (and (and (= |let#1#2#0| (LitInt 200)) ($Is intType (int_2_U |let#1#2#0|) TInt)) (and (= |c#Z#0@0| |let#1#2#0|) ($IsAlloc intType (int_2_U |x#0@@5|) Tclass._System.nat $Heap))) (and (=> (= (ControlFlow 0 12) (- 0 17)) ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat) (=> (and (= |##y#2@0| (- |y#0@@3| 1)) ($IsAlloc intType (int_2_U |##y#2@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|))) (=> (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#2@0| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#2@0| |y#0@@3|)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#2@0| |y#0@@3|)))) (=> (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#2@0| |y#0@@3|))) (=> (and (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1)) (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (= (+ (+ |a#Z#0@0| |b#Z#0@0|) |c#Z#0@0|) (+ (_module.__default.G ($LS ($LS $LZ)) |x#0@@5| (- |y#0@@3| 1)) 300))) (=> (and (= (+ (+ |a#Z#0@0| |b#Z#0@0|) |c#Z#0@0|) (+ (_module.__default.G ($LS $LZ) |x#0@@5| (- |y#0@@3| 1)) 300)) (= (ControlFlow 0 12) (- 0 11))) ($Is intType (int_2_U |b#Z#0@0|) Tclass._System.nat)))))))))))))))))
(let ((anon15_Else_correct  (=> (and (<= |z#Z#0@0| |x#0@@5|) ($IsAlloc intType (int_2_U |x#0@@5|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 23) (- 0 27)) ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat) (=> (and (= |##y#1@0| (- |y#0@@3| 1)) ($IsAlloc intType (int_2_U |##y#1@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 23) (- 0 26)) (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|))) (=> (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#1@0| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#1@0| |y#0@@3|)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#1@0| |y#0@@3|)))) (=> (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#1@0| |y#0@@3|))) (=> (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1)) (=> (and (and (= |let#1#1#0| (_module.__default.G ($LS $LZ) |x#0@@5| (- |y#0@@3| 1))) (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1))) (and ($Is intType (int_2_U |let#1#1#0|) TInt) (= (ControlFlow 0 23) 12))) anon9_correct))))))))))))))
(let ((anon15_Then_correct  (=> (and (< |x#0@@5| |z#Z#0@0|) ($IsAlloc intType (int_2_U |x#0@@5|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 18) (- 0 22)) ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |y#0@@3| 1)) Tclass._System.nat) (=> (and (= |##y#0@0| (- |y#0@@3| 1)) ($IsAlloc intType (int_2_U |##y#0@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|))) (=> (or (<= 0 |x#0@@5|) (= |x#0@@5| |x#0@@5|)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#0@0| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< |x#0@@5| |x#0@@5|)) (= |##y#0@0| |y#0@@3|)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#0@0| |y#0@@3|)))) (=> (or (< |x#0@@5| |x#0@@5|) (and (= |x#0@@5| |x#0@@5|) (< |##y#0@0| |y#0@@3|))) (=> (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1)) (=> (and (and (= |let#1#1#0| (_module.__default.G ($LS $LZ) |x#0@@5| (- |y#0@@3| 1))) (|_module.__default.G#canCall| |x#0@@5| (- |y#0@@3| 1))) (and ($Is intType (int_2_U |let#1#1#0|) TInt) (= (ControlFlow 0 18) 12))) anon9_correct))))))))))))))
(let ((anon14_Then_correct  (=> (or (not (= |y#0@@3| 0)) (not true)) (=> (and (= |let#0#0#0| (+ |x#0@@5| |x#0@@5|)) ($Is intType (int_2_U |let#0#0#0|) TInt)) (=> (and (and (= |z#Z#0@0| |let#0#0#0|) (= |let#1#0#0| (LitInt 100))) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |a#Z#0@0| |let#1#0#0|))) (and (=> (= (ControlFlow 0 28) 18) anon15_Then_correct) (=> (= (ControlFlow 0 28) 23) anon15_Else_correct)))))))
(let ((anon14_Else_correct  (=> (= |y#0@@3| 0) (and (=> (= (ControlFlow 0 5) (- 0 10)) ($Is intType (int_2_U (- |x#0@@5| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |x#0@@5| 1)) Tclass._System.nat) (=> (and (= |##x#3@0| (- |x#0@@5| 1)) ($IsAlloc intType (int_2_U |##x#3@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 9)) ($Is intType (int_2_U (LitInt 60)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 60)) Tclass._System.nat) (=> (and (= |##y#3@0| (LitInt 60)) ($IsAlloc intType (int_2_U |##y#3@0|) Tclass._System.nat $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (<= 0 |x#0@@5|) (= |##x#3@0| |x#0@@5|))) (=> (or (<= 0 |x#0@@5|) (= |##x#3@0| |x#0@@5|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (or (<= 0 |y#0@@3|) (< |##x#3@0| |x#0@@5|)) (= |##y#3@0| |y#0@@3|))) (=> (or (or (<= 0 |y#0@@3|) (< |##x#3@0| |x#0@@5|)) (= |##y#3@0| |y#0@@3|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (< |##x#3@0| |x#0@@5|) (and (= |##x#3@0| |x#0@@5|) (< |##y#3@0| |y#0@@3|)))) (=> (or (< |##x#3@0| |x#0@@5|) (and (= |##x#3@0| |x#0@@5|) (< |##y#3@0| |y#0@@3|))) (=> (and (|_module.__default.G#canCall| (- |x#0@@5| 1) (LitInt 60)) (= (ControlFlow 0 5) (- 0 4))) ($Is intType (int_2_U (+ (_module.__default.G ($LS $LZ) (- |x#0@@5| 1) (LitInt 60)) 13)) Tclass._System.nat)))))))))))))))))
(let ((anon13_Else_correct  (=> (or (not (= |x#0@@5| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 29) 28) anon14_Then_correct) (=> (= (ControlFlow 0 29) 5) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (and (= |x#0@@5| (LitInt 0)) (= (ControlFlow 0 3) (- 0 2))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 30) 1) anon12_Then_correct) (=> (= (ControlFlow 0 30) 3) anon13_Then_correct)) (=> (= (ControlFlow 0 30) 29) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (<= (LitInt 0) |x#0@@5|) (<= (LitInt 0) |y#0@@3|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 31) 30))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
