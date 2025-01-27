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
(declare-fun _module.__default.Divides (Bool Int Int) Bool)
(declare-fun |_module.__default.Divides#canCall| (Int Int) Bool)
(declare-fun _module.__default.MulTriple (Int Int Int) Bool)
(declare-fun |_module.__default.MulTriple#canCall| (Int Int Int) Bool)
(declare-fun _module.__default.DividesBoth (Int Int Int) Bool)
(declare-fun |_module.__default.DividesBoth#canCall| (Int Int Int) Bool)
(declare-fun reveal__module._default.Divides () Bool)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt alloc)
)
(assert (= (Tag TInt) TagInt))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0| Int) (|a#0| Int) ) (!  (=> (or (|_module.__default.Divides#canCall| (LitInt |d#0|) (LitInt |a#0|)) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |d#0| 0) (> |a#0| 0))))))) (and (forall ((|n#1| Int) ) (!  (=> (> |n#1| 0) (|_module.__default.MulTriple#canCall| |n#1| (LitInt |d#0|) (LitInt |a#0|)))
 :qid |Problem2dfy.209:10|
 :skolemid |726|
 :pattern ( (_module.__default.MulTriple |n#1| |d#0| |a#0|))
)) (= (_module.__default.Divides true (LitInt |d#0|) (LitInt |a#0|)) (exists ((|n#1@@0| Int) ) (!  (and (> |n#1@@0| 0) (_module.__default.MulTriple |n#1@@0| (LitInt |d#0|) (LitInt |a#0|)))
 :qid |Problem2dfy.209:10|
 :skolemid |725|
 :pattern ( (_module.__default.MulTriple |n#1@@0| |d#0| |a#0|))
)))))
 :qid |Problem2dfy.206:35|
 :weight 3
 :skolemid |727|
 :pattern ( (_module.__default.Divides true (LitInt |d#0|) (LitInt |a#0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@0| Int) (|a#0@@0| Int) ) (!  (=> (or (|_module.__default.Divides#canCall| |d#0@@0| |a#0@@0|) (and (< 1 $FunctionContextHeight) (and (> |d#0@@0| 0) (> |a#0@@0| 0)))) (and (forall ((|n#0| Int) ) (!  (=> (> |n#0| 0) (|_module.__default.MulTriple#canCall| |n#0| |d#0@@0| |a#0@@0|))
 :qid |Problem2dfy.209:10|
 :skolemid |723|
 :pattern ( (_module.__default.MulTriple |n#0| |d#0@@0| |a#0@@0|))
)) (= (_module.__default.Divides true |d#0@@0| |a#0@@0|) (exists ((|n#0@@0| Int) ) (!  (and (> |n#0@@0| 0) (_module.__default.MulTriple |n#0@@0| |d#0@@0| |a#0@@0|))
 :qid |Problem2dfy.209:10|
 :skolemid |722|
 :pattern ( (_module.__default.MulTriple |n#0@@0| |d#0@@0| |a#0@@0|))
)))))
 :qid |Problem2dfy.206:35|
 :skolemid |724|
 :pattern ( (_module.__default.Divides true |d#0@@0| |a#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@1| Int) (|a#0@@1| Int) (|b#0| Int) ) (!  (=> (or (|_module.__default.DividesBoth#canCall| (LitInt |d#0@@1|) (LitInt |a#0@@1|) (LitInt |b#0|)) (and (< 2 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |a#0@@1| 0) (> |b#0| 0))))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (> |d#0@@1| 0)))) (and (|_module.__default.Divides#canCall| (LitInt |d#0@@1|) (LitInt |a#0@@1|)) (=> (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@1|) (LitInt |a#0@@1|)) (|_module.__default.Divides#canCall| (LitInt |d#0@@1|) (LitInt |b#0|))))) (= (_module.__default.DividesBoth (LitInt |d#0@@1|) (LitInt |a#0@@1|) (LitInt |b#0|))  (and (and (> |d#0@@1| 0) (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@1|) (LitInt |a#0@@1|))) (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@1|) (LitInt |b#0|))))))
 :qid |Problem2dfy.200:29|
 :weight 3
 :skolemid |717|
 :pattern ( (_module.__default.DividesBoth (LitInt |d#0@@1|) (LitInt |a#0@@1|) (LitInt |b#0|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@2| Int) (|a#0@@2| Int) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.DividesBoth#canCall| |d#0@@2| |a#0@@2| |b#0@@0|) (and (< 2 $FunctionContextHeight) (and (> |a#0@@2| 0) (> |b#0@@0| 0)))) (and (=> (> |d#0@@2| 0) (and (|_module.__default.Divides#canCall| |d#0@@2| |a#0@@2|) (=> (_module.__default.Divides reveal__module._default.Divides |d#0@@2| |a#0@@2|) (|_module.__default.Divides#canCall| |d#0@@2| |b#0@@0|)))) (= (_module.__default.DividesBoth |d#0@@2| |a#0@@2| |b#0@@0|)  (and (and (> |d#0@@2| 0) (_module.__default.Divides reveal__module._default.Divides |d#0@@2| |a#0@@2|)) (_module.__default.Divides reveal__module._default.Divides |d#0@@2| |b#0@@0|)))))
 :qid |Problem2dfy.200:29|
 :skolemid |716|
 :pattern ( (_module.__default.DividesBoth |d#0@@2| |a#0@@2| |b#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@1| Int) (|d#0@@3| Int) (|a#0@@3| Int) ) (!  (=> (or (|_module.__default.MulTriple#canCall| (LitInt |n#0@@1|) (LitInt |d#0@@3|) (LitInt |a#0@@3|)) (and (< 0 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |n#0@@1| 0) (> |d#0@@3| 0))))))) (= (_module.__default.MulTriple (LitInt |n#0@@1|) (LitInt |d#0@@3|) (LitInt |a#0@@3|)) (= (LitInt (Mul (LitInt |n#0@@1|) (LitInt |d#0@@3|))) (LitInt |a#0@@3|))))
 :qid |Problem2dfy.211:27|
 :weight 3
 :skolemid |735|
 :pattern ( (_module.__default.MulTriple (LitInt |n#0@@1|) (LitInt |d#0@@3|) (LitInt |a#0@@3|)))
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
 :skolemid |801|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@2| Int) (|d#0@@4| Int) (|a#0@@4| Int) ) (!  (=> (or (|_module.__default.MulTriple#canCall| |n#0@@2| |d#0@@4| |a#0@@4|) (and (< 0 $FunctionContextHeight) (and (> |n#0@@2| 0) (> |d#0@@4| 0)))) (= (_module.__default.MulTriple |n#0@@2| |d#0@@4| |a#0@@4|) (= (Mul |n#0@@2| |d#0@@4|) |a#0@@4|)))
 :qid |Problem2dfy.211:27|
 :skolemid |734|
 :pattern ( (_module.__default.MulTriple |n#0@@2| |d#0@@4| |a#0@@4|))
))))
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
(declare-fun |d#1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |a#0@@5| () Int)
(declare-fun |b#0@@1| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |##d#0_0@0| () Int)
(declare-fun |##d#0_1@0| () Int)
(declare-fun |##d#0_2@0| () Int)
(declare-fun |d#0@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |k#1_0_1@1| () Int)
(declare-fun |k#1_0_0@1| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |d#0@2| () Int)
(declare-fun |k#1_0@1| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |d#4@0| () Int)
(declare-fun |d#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |d#3@0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ShowExists)
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
 (=> (= (ControlFlow 0 0) 87) (let ((anon27_Else_correct true))
(let ((anon27_Then_correct  (=> ($IsAlloc intType (int_2_U |d#1@0|) TInt $Heap@1) (=> (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@1) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@1)) (and (=> (= (ControlFlow 0 68) (- 0 70)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (> |b#0@@1| 0)) (=> (|_module.__default.DividesBoth#canCall| |d#1@0| |a#0@@5| |b#0@@1|) (=> (and (forall ((|d#2| Int) ) (! (|_module.__default.DividesBoth#canCall| |d#2| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.231:12|
 :skolemid |753|
 :pattern ( (_module.__default.DividesBoth |d#2| |a#0@@5| |b#0@@1|))
)) (= (ControlFlow 0 68) (- 0 67))) (exists ((|d#2@@0| Int) ) (! (_module.__default.DividesBoth |d#2@@0| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.231:12|
 :skolemid |755|
 :pattern ( (_module.__default.DividesBoth |d#2@@0| |a#0@@5| |b#0@@1|))
))))))))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 72) (- 0 85)) (> |a#0@@5| 0)) (=> (> |a#0@@5| 0) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.__default.Divides#canCall| (LitInt 1) |a#0@@5|)) (and (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |a#0@@5|) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 72) (- 0 84)) (> |b#0@@1| 0)) (=> (> |b#0@@1| 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (|_module.__default.Divides#canCall| (LitInt 1) |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |b#0@@1|))) (and (and (= $Heap@0 $Heap@1) (= |##d#0_0@0| (LitInt 1))) (and ($IsAlloc intType (int_2_U |##d#0_0@0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@1)))) (and (=> (= (ControlFlow 0 72) (- 0 83)) (> |##d#0_0@0| 0)) (and (=> (= (ControlFlow 0 72) (- 0 82)) (> |a#0@@5| 0)) (=> (and (|_module.__default.Divides#canCall| (LitInt 1) |a#0@@5|) (|_module.__default.Divides#canCall| (LitInt 1) |a#0@@5|)) (and (=> (= (ControlFlow 0 72) (- 0 81)) (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |a#0@@5|)) (=> (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |a#0@@5|) (=> (= |##d#0_1@0| (LitInt 1)) (=> (and ($IsAlloc intType (int_2_U |##d#0_1@0|) TInt $Heap@1) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@1)) (and (=> (= (ControlFlow 0 72) (- 0 80)) (> |##d#0_1@0| 0)) (and (=> (= (ControlFlow 0 72) (- 0 79)) (> |b#0@@1| 0)) (=> (and (|_module.__default.Divides#canCall| (LitInt 1) |b#0@@1|) (|_module.__default.Divides#canCall| (LitInt 1) |b#0@@1|)) (and (=> (= (ControlFlow 0 72) (- 0 78)) (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |b#0@@1|)) (=> (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |b#0@@1|) (=> (and (and (= |##d#0_2@0| (LitInt 1)) ($IsAlloc intType (int_2_U |##d#0_2@0|) TInt $Heap@1)) (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@1) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@1))) (and (=> (= (ControlFlow 0 72) (- 0 77)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 72) (- 0 76)) (> |b#0@@1| 0)) (=> (and (|_module.__default.DividesBoth#canCall| (LitInt 1) |a#0@@5| |b#0@@1|) (|_module.__default.DividesBoth#canCall| (LitInt 1) |a#0@@5| |b#0@@1|)) (and (=> (= (ControlFlow 0 72) (- 0 75)) (=> (|_module.__default.DividesBoth#canCall| (LitInt 1) |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth (LitInt 1) |a#0@@5| |b#0@@1|) (U_2_bool (Lit boolType (bool_2_U (> 1 0))))))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (=> (|_module.__default.DividesBoth#canCall| (LitInt 1) |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth (LitInt 1) |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |a#0@@5|)))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (=> (|_module.__default.DividesBoth#canCall| (LitInt 1) |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth (LitInt 1) |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides (LitInt 1) |b#0@@1|)))) (=> (_module.__default.DividesBoth (LitInt 1) |a#0@@5| |b#0@@1|) (and (=> (= (ControlFlow 0 72) 68) anon27_Then_correct) (=> (= (ControlFlow 0 72) 71) anon27_Else_correct))))))))))))))))))))))))))))))
(let ((anon12_correct true))
(let ((anon32_Else_correct  (=> (and (< |a#0@@5| |d#0@1|) (= (ControlFlow 0 47) 45)) anon12_correct)))
(let ((anon32_Then_correct  (=> (and (<= |d#0@1| |a#0@@5|) (= (ControlFlow 0 46) 45)) anon12_correct)))
(let ((anon31_Then_correct  (=> (and (and (not |$w$loop#0@0|) ($IsAlloc intType (int_2_U |d#0@1|) TInt $Heap@4)) (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@4) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@4))) (and (=> (= (ControlFlow 0 48) (- 0 50)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 48) (- 0 49)) (> |b#0@@1| 0)) (=> (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (=> (and (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (_module.__default.DividesBoth |d#0@1| |a#0@@5| |b#0@@1|)) (and (=> (= (ControlFlow 0 48) 46) anon32_Then_correct) (=> (= (ControlFlow 0 48) 47) anon32_Else_correct)))))))))
(let ((anon22_correct  (=> (|_module.__default.DividesBoth#canCall| |k#1_0_1@1| |a#0@@5| |b#0@@1|) (and (=> (= (ControlFlow 0 14) (- 0 30)) (or (and ($Is intType (int_2_U (+ |d#0@1| 1)) TInt) (and (_module.__default.DividesBoth (+ |d#0@1| 1) |a#0@@5| |b#0@@1|) (> (+ |d#0@1| 1) |d#0@1|))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.DividesBoth (LitInt 0) |a#0@@5| |b#0@@1|) (> 0 |d#0@1|))) (exists ((|$as#k1_0_0#1_0_0| Int) ) (!  (and (_module.__default.DividesBoth |$as#k1_0_0#1_0_0| |a#0@@5| |b#0@@1|) (> |$as#k1_0_0#1_0_0| |d#0@1|))
 :qid |Problem2dfy.248:11|
 :skolemid |764|
))))) (=> (or (and ($Is intType (int_2_U (+ |d#0@1| 1)) TInt) (and (_module.__default.DividesBoth (+ |d#0@1| 1) |a#0@@5| |b#0@@1|) (> (+ |d#0@1| 1) |d#0@1|))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (_module.__default.DividesBoth (LitInt 0) |a#0@@5| |b#0@@1|) (> 0 |d#0@1|))) (exists ((|$as#k1_0_0#1_0_0@@0| Int) ) (!  (and (_module.__default.DividesBoth |$as#k1_0_0#1_0_0@@0| |a#0@@5| |b#0@@1|) (> |$as#k1_0_0#1_0_0@@0| |d#0@1|))
 :qid |Problem2dfy.248:11|
 :skolemid |764|
)))) (=> (and (and (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (> |k#1_0_0@1| |d#0@1|)) (and ($IsAlloc intType (int_2_U |k#1_0_0@1|) TInt $Heap@4) ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@4))) (and (=> (= (ControlFlow 0 14) (- 0 29)) (> |k#1_0_0@1| 0)) (and (=> (= (ControlFlow 0 14) (- 0 28)) (> |a#0@@5| 0)) (=> (and (|_module.__default.Divides#canCall| |k#1_0_0@1| |a#0@@5|) (|_module.__default.Divides#canCall| |k#1_0_0@1| |a#0@@5|)) (and (=> (= (ControlFlow 0 14) (- 0 27)) (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |a#0@@5|)) (=> (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |a#0@@5|) (and (=> (= (ControlFlow 0 14) (- 0 26)) (> |k#1_0_0@1| 0)) (=> (> |k#1_0_0@1| 0) (and (=> (= (ControlFlow 0 14) (- 0 25)) (> |a#0@@5| 0)) (=> (> |a#0@@5| 0) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|_module.__default.Divides#canCall| |k#1_0_0@1| |a#0@@5|)) (and (=> (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |a#0@@5|) (<= |k#1_0_0@1| |a#0@@5|)) (= $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 14) (- 0 24)) (<= |k#1_0_0@1| |a#0@@5|)) (=> (<= |k#1_0_0@1| |a#0@@5|) (and (=> (= (ControlFlow 0 14) (- 0 23)) (> |k#1_0_0@1| 0)) (=> (> |k#1_0_0@1| 0) (and (=> (= (ControlFlow 0 14) (- 0 22)) (> |b#0@@1| 0)) (=> (> |b#0@@1| 0) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|_module.__default.Divides#canCall| |k#1_0_0@1| |b#0@@1|)) (and (=> (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |b#0@@1|) (<= |k#1_0_0@1| |b#0@@1|)) (= $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 14) (- 0 21)) (<= |k#1_0_0@1| |b#0@@1|)) (=> (<= |k#1_0_0@1| |b#0@@1|) (and (=> (= (ControlFlow 0 14) (- 0 20)) (or (<= 0 |$decr$loop#00@1|) (= (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |k#1_0_0@1|)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |k#1_0_0@1|)) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 14) (- 0 19)) (< (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |k#1_0_0@1|)) |$decr$loop#00@1|)) (=> (< (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |k#1_0_0@1|)) |$decr$loop#00@1|) (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (> |k#1_0_0@1| 0))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (> |k#1_0_0@1| 0)))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |a#0@@5|))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |a#0@@5|)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |b#0@@1|))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |k#1_0_0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |k#1_0_0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |k#1_0_0@1| |b#0@@1|)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> |$w$loop#0@0| (<= |k#1_0_0@1| |a#0@@5|))) (=> (=> |$w$loop#0@0| (<= |k#1_0_0@1| |a#0@@5|)) (=> (= (ControlFlow 0 14) (- 0 13)) (=> |$w$loop#0@0| (<= |k#1_0_0@1| |b#0@@1|)))))))))))))))))))))))))))))))))))))))))
(let ((anon38_Else_correct  (=> (and (not (_module.__default.DividesBoth |k#1_0_1@1| |a#0@@5| |b#0@@1|)) (= (ControlFlow 0 32) 14)) anon22_correct)))
(let ((anon38_Then_correct  (=> (and (_module.__default.DividesBoth |k#1_0_1@1| |a#0@@5| |b#0@@1|) (= (ControlFlow 0 31) 14)) anon22_correct)))
(let ((anon37_Then_correct  (=> ($IsAlloc intType (int_2_U |k#1_0_1@1|) TInt $Heap@4) (=> (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@4) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@4)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (> |b#0@@1| 0)) (=> (|_module.__default.DividesBoth#canCall| |k#1_0_1@1| |a#0@@5| |b#0@@1|) (and (=> (= (ControlFlow 0 33) 31) anon38_Then_correct) (=> (= (ControlFlow 0 33) 32) anon38_Else_correct)))))))))
(let ((anon37_Else_correct true))
(let ((anon36_Then_correct  (=> (exists ((|k#1_1| Int) ) (!  (and (_module.__default.DividesBoth |k#1_1| |a#0@@5| |b#0@@1|) (> |k#1_1| |d#0@1|))
 :qid |Problem2dfy.247:15|
 :skolemid |767|
 :pattern ( (_module.__default.DividesBoth |k#1_1| |a#0@@5| |b#0@@1|))
)) (and (=> (= (ControlFlow 0 36) 33) anon37_Then_correct) (=> (= (ControlFlow 0 36) 12) anon37_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 9)) (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (> |d#0@2| 0)))) (=> (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (> |d#0@2| 0))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@2| |a#0@@5|)))) (=> (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@2| |a#0@@5|))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@2| |b#0@@1|)))) (=> (=> (|_module.__default.DividesBoth#canCall| |d#0@2| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@2| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@2| |b#0@@1|))) (=> (= (ControlFlow 0 6) (- 0 5)) (forall ((|m#1| Int) ) (!  (=> (_module.__default.DividesBoth |m#1| |a#0@@5| |b#0@@1|) (<= |m#1| |d#0@2|))
 :qid |Problem2dfy.228:42|
 :skolemid |750|
 :pattern ( (_module.__default.DividesBoth |m#1| |a#0@@5| |b#0@@1|))
)))))))))))
(let ((anon36_Else_correct  (=> (not (exists ((|k#1_1@@0| Int) ) (!  (and (_module.__default.DividesBoth |k#1_1@@0| |a#0@@5| |b#0@@1|) (> |k#1_1@@0| |d#0@1|))
 :qid |Problem2dfy.247:15|
 :skolemid |767|
 :pattern ( (_module.__default.DividesBoth |k#1_1@@0| |a#0@@5| |b#0@@1|))
))) (=> (and (= |d#0@2| |d#0@1|) (= (ControlFlow 0 11) 6)) GeneratedUnifiedExit_correct))))
(let ((anon18_correct  (=> (forall ((|k#1_1@@1| Int) ) (! (|_module.__default.DividesBoth#canCall| |k#1_1@@1| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.247:15|
 :skolemid |763|
 :pattern ( (_module.__default.DividesBoth |k#1_1@@1| |a#0@@5| |b#0@@1|))
)) (and (=> (= (ControlFlow 0 37) 36) anon36_Then_correct) (=> (= (ControlFlow 0 37) 11) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (not (_module.__default.DividesBoth |k#1_0@1| |a#0@@5| |b#0@@1|)) (= (ControlFlow 0 39) 37)) anon18_correct)))
(let ((anon35_Then_correct  (=> (and (_module.__default.DividesBoth |k#1_0@1| |a#0@@5| |b#0@@1|) (= (ControlFlow 0 38) 37)) anon18_correct)))
(let ((anon34_Then_correct  (=> ($IsAlloc intType (int_2_U |k#1_0@1|) TInt $Heap@4) (=> (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap@4) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap@4)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (> |b#0@@1| 0)) (=> (and (and (> |a#0@@5| 0) (> |b#0@@1| 0)) (|_module.__default.DividesBoth#canCall| |k#1_0@1| |a#0@@5| |b#0@@1|)) (and (=> (= (ControlFlow 0 40) 38) anon35_Then_correct) (=> (= (ControlFlow 0 40) 39) anon35_Else_correct)))))))))
(let ((anon33_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= |d#0@2| |d#0@1|) (= (ControlFlow 0 10) 6)) GeneratedUnifiedExit_correct))))
(let ((anon34_Else_correct true))
(let ((anon33_Else_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (= |$decr$loop#00@1| (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |d#0@1|)))) (and (=> (= (ControlFlow 0 43) 40) anon34_Then_correct) (=> (= (ControlFlow 0 43) 4) anon34_Else_correct)))))
(let ((anon31_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 44) 10) anon33_Then_correct) (=> (= (ControlFlow 0 44) 43) anon33_Else_correct)))))
(let ((anon30_LoopBody_correct  (and (=> (= (ControlFlow 0 51) 48) anon31_Then_correct) (=> (= (ControlFlow 0 51) 44) anon31_Else_correct))))
(let ((anon30_LoopDone_correct true))
(let ((anon30_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and (and (and (and (and (not false) (<= 1 |a#0@@5|)) (<= 1 |b#0@@1|)) (<= 1 |a#0@@5|)) (<= 1 |b#0@@1|)) (<= 1 |a#0@@5|)) (<= 1 |b#0@@1|)) (and (=> |$w$loop#0@0| (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@1| |a#0@@5| |b#0@@1|) (> |d#0@1| 0)))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@1| |a#0@@5|)))) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@1| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@1| |b#0@@1|))))) (and (=> |$w$loop#0@0| (and (|_module.__default.DividesBoth#canCall| |d#0@1| |a#0@@5| |b#0@@1|) (and (_module.__default.DividesBoth |d#0@1| |a#0@@5| |b#0@@1|) (and (and (> |d#0@1| 0) (_module.__default.Divides reveal__module._default.Divides |d#0@1| |a#0@@5|)) (_module.__default.Divides reveal__module._default.Divides |d#0@1| |b#0@@1|))))) (=> |$w$loop#0@0| (<= |d#0@1| |a#0@@5|)))) (and (and (=> |$w$loop#0@0| (<= |d#0@1| |b#0@@1|)) (= $Heap@3 $Heap@4)) (and (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@0) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@0) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@0) $f@@0)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@0 $f@@0))))
 :qid |Problem2dfy.242:3|
 :skolemid |762|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@0) $f@@0))
)) (<= (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |d#0@1|)) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 52) 3) anon30_LoopDone_correct) (=> (= (ControlFlow 0 52) 51) anon30_LoopBody_correct))))))
(let ((anon29_Then_correct  (=> ($IsAlloc intType (int_2_U |d#4@0|) TInt $Heap) (=> (and ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap) ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap)) (and (=> (= (ControlFlow 0 53) (- 0 65)) (> |a#0@@5| 0)) (and (=> (= (ControlFlow 0 53) (- 0 64)) (> |b#0@@1| 0)) (=> (and (|_module.__default.DividesBoth#canCall| |d#4@0| |a#0@@5| |b#0@@1|) (|_module.__default.DividesBoth#canCall| |d#4@0| |a#0@@5| |b#0@@1|)) (and (=> (= (ControlFlow 0 53) (- 0 63)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.DividesBoth (LitInt 0) |a#0@@5| |b#0@@1|)) (exists ((|$as#d0#0| Int) ) (! (_module.__default.DividesBoth |$as#d0#0| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.239:3|
 :skolemid |759|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.DividesBoth (LitInt 0) |a#0@@5| |b#0@@1|)) (exists ((|$as#d0#0@@0| Int) ) (! (_module.__default.DividesBoth |$as#d0#0@@0| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.239:3|
 :skolemid |759|
))) (=> (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (and (=> (= (ControlFlow 0 53) (- 0 62)) (> |d#0@0| 0)) (=> (> |d#0@0| 0) (and (=> (= (ControlFlow 0 53) (- 0 61)) (> |a#0@@5| 0)) (=> (> |a#0@@5| 0) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.__default.Divides#canCall| |d#0@0| |a#0@@5|)) (and (=> (_module.__default.Divides reveal__module._default.Divides |d#0@0| |a#0@@5|) (<= |d#0@0| |a#0@@5|)) (= $Heap $Heap@2))) (and (=> (= (ControlFlow 0 53) (- 0 60)) (> |d#0@0| 0)) (=> (> |d#0@0| 0) (and (=> (= (ControlFlow 0 53) (- 0 59)) (> |b#0@@1| 0)) (=> (> |b#0@@1| 0) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (|_module.__default.Divides#canCall| |d#0@0| |b#0@@1|) (=> (_module.__default.Divides reveal__module._default.Divides |d#0@0| |b#0@@1|) (<= |d#0@0| |b#0@@1|))) (and (= $Heap@2 $Heap@3) (= |$decr_init$loop#00@0| (- (+ |a#0@@5| |b#0@@1|) (Mul (LitInt 2) |d#0@0|))))) (and (=> (= (ControlFlow 0 53) (- 0 58)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (> |d#0@0| 0))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (> |d#0@0| 0)))) (and (=> (= (ControlFlow 0 53) (- 0 57)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@0| |a#0@@5|))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@0| |a#0@@5|)))) (and (=> (= (ControlFlow 0 53) (- 0 56)) (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@0| |b#0@@1|))))) (=> (=> |$w$loop#0@0| (=> (|_module.__default.DividesBoth#canCall| |d#0@0| |a#0@@5| |b#0@@1|) (or (_module.__default.DividesBoth |d#0@0| |a#0@@5| |b#0@@1|) (_module.__default.Divides reveal__module._default.Divides |d#0@0| |b#0@@1|)))) (and (=> (= (ControlFlow 0 53) (- 0 55)) (=> |$w$loop#0@0| (<= |d#0@0| |a#0@@5|))) (=> (=> |$w$loop#0@0| (<= |d#0@0| |a#0@@5|)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (=> |$w$loop#0@0| (<= |d#0@0| |b#0@@1|))) (=> (=> |$w$loop#0@0| (<= |d#0@0| |b#0@@1|)) (=> (= (ControlFlow 0 53) 52) anon30_LoopHead_correct))))))))))))))))))))))))))))))))
(let ((anon29_Else_correct true))
(let ((anon28_Then_correct  (=> (and (and (and ($IsAlloc intType (int_2_U |d#3@0|) TInt $Heap) ($IsAlloc intType (int_2_U |a#0@@5|) TInt $Heap)) (and ($IsAlloc intType (int_2_U |b#0@@1|) TInt $Heap) (> |a#0@@5| 0))) (and (and (> |b#0@@1| 0) (|_module.__default.DividesBoth#canCall| |d#3@0| |a#0@@5| |b#0@@1|)) (and (forall ((|d#2@@1| Int) ) (! (|_module.__default.DividesBoth#canCall| |d#2@@1| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.231:12|
 :skolemid |756|
 :pattern ( (_module.__default.DividesBoth |d#2@@1| |a#0@@5| |b#0@@1|))
)) (exists ((|d#2@@2| Int) ) (! (_module.__default.DividesBoth |d#2@@2| |a#0@@5| |b#0@@1|)
 :qid |Problem2dfy.231:12|
 :skolemid |758|
 :pattern ( (_module.__default.DividesBoth |d#2@@2| |a#0@@5| |b#0@@1|))
))))) (and (=> (= (ControlFlow 0 66) 53) anon29_Then_correct) (=> (= (ControlFlow 0 66) 2) anon29_Else_correct)))))
(let ((anon28_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 86) 72) anon26_Then_correct) (=> (= (ControlFlow 0 86) 66) anon28_Then_correct)) (=> (= (ControlFlow 0 86) 1) anon28_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (= 3 $FunctionContextHeight) (> |a#0@@5| 0)) (and (> |b#0@@1| 0) (= (ControlFlow 0 87) 86))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
