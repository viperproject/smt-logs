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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Gcd (Int Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Gcd#canCall| (Int Int) Bool)
(declare-fun |$let#0$canCall| (Int Int) Bool)
(declare-fun |$let#0_d| (Int Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap T@U) (|a#0| Int) (|b#0| Int) ) (!  (=> (or (|_module.__default.Gcd#canCall| |a#0| |b#0|) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (> |a#0| 0) (> |b#0| 0))))) (and (|$let#0$canCall| |a#0| |b#0|) (= (_module.__default.Gcd |a#0| |b#0|) (let ((|d#0| (|$let#0_d| |a#0| |b#0|)))
|d#0|))))
 :qid |Problem2dfy.192:16|
 :skolemid |705|
 :pattern ( (_module.__default.Gcd |a#0| |b#0|) ($IsGoodHeap $Heap))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@0| Int) (|a#0@@0| Int) ) (!  (=> (or (|_module.__default.Divides#canCall| (LitInt |d#0@@0|) (LitInt |a#0@@0|)) (and (< 1 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |d#0@@0| 0) (> |a#0@@0| 0))))))) (and (forall ((|n#1| Int) ) (!  (=> (> |n#1| 0) (|_module.__default.MulTriple#canCall| |n#1| (LitInt |d#0@@0|) (LitInt |a#0@@0|)))
 :qid |Problem2dfy.209:10|
 :skolemid |726|
 :pattern ( (_module.__default.MulTriple |n#1| |d#0@@0| |a#0@@0|))
)) (= (_module.__default.Divides true (LitInt |d#0@@0|) (LitInt |a#0@@0|)) (exists ((|n#1@@0| Int) ) (!  (and (> |n#1@@0| 0) (_module.__default.MulTriple |n#1@@0| (LitInt |d#0@@0|) (LitInt |a#0@@0|)))
 :qid |Problem2dfy.209:10|
 :skolemid |725|
 :pattern ( (_module.__default.MulTriple |n#1@@0| |d#0@@0| |a#0@@0|))
)))))
 :qid |Problem2dfy.206:35|
 :weight 3
 :skolemid |727|
 :pattern ( (_module.__default.Divides true (LitInt |d#0@@0|) (LitInt |a#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@1| Int) (|a#0@@1| Int) ) (!  (=> (or (|_module.__default.Divides#canCall| |d#0@@1| |a#0@@1|) (and (< 1 $FunctionContextHeight) (and (> |d#0@@1| 0) (> |a#0@@1| 0)))) (and (forall ((|n#0| Int) ) (!  (=> (> |n#0| 0) (|_module.__default.MulTriple#canCall| |n#0| |d#0@@1| |a#0@@1|))
 :qid |Problem2dfy.209:10|
 :skolemid |723|
 :pattern ( (_module.__default.MulTriple |n#0| |d#0@@1| |a#0@@1|))
)) (= (_module.__default.Divides true |d#0@@1| |a#0@@1|) (exists ((|n#0@@0| Int) ) (!  (and (> |n#0@@0| 0) (_module.__default.MulTriple |n#0@@0| |d#0@@1| |a#0@@1|))
 :qid |Problem2dfy.209:10|
 :skolemid |722|
 :pattern ( (_module.__default.MulTriple |n#0@@0| |d#0@@1| |a#0@@1|))
)))))
 :qid |Problem2dfy.206:35|
 :skolemid |724|
 :pattern ( (_module.__default.Divides true |d#0@@1| |a#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@2| Int) (|a#0@@2| Int) (|b#0@@0| Int) ) (!  (=> (or (|_module.__default.DividesBoth#canCall| (LitInt |d#0@@2|) (LitInt |a#0@@2|) (LitInt |b#0@@0|)) (and (< 2 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |a#0@@2| 0) (> |b#0@@0| 0))))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (> |d#0@@2| 0)))) (and (|_module.__default.Divides#canCall| (LitInt |d#0@@2|) (LitInt |a#0@@2|)) (=> (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@2|) (LitInt |a#0@@2|)) (|_module.__default.Divides#canCall| (LitInt |d#0@@2|) (LitInt |b#0@@0|))))) (= (_module.__default.DividesBoth (LitInt |d#0@@2|) (LitInt |a#0@@2|) (LitInt |b#0@@0|))  (and (and (> |d#0@@2| 0) (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@2|) (LitInt |a#0@@2|))) (_module.__default.Divides reveal__module._default.Divides (LitInt |d#0@@2|) (LitInt |b#0@@0|))))))
 :qid |Problem2dfy.200:29|
 :weight 3
 :skolemid |717|
 :pattern ( (_module.__default.DividesBoth (LitInt |d#0@@2|) (LitInt |a#0@@2|) (LitInt |b#0@@0|)))
))))
(assert (forall ((a Int) (b Int) ) (!  (=> (|$let#0$canCall| a b) (and (_module.__default.DividesBoth (|$let#0_d| a b) a b) (forall ((|m#0| Int) ) (!  (=> (_module.__default.DividesBoth |m#0| a b) (<= |m#0| (|$let#0_d| a b)))
 :qid |Problem2dfy.196:43|
 :skolemid |703|
 :pattern ( (_module.__default.DividesBoth |m#0| a b))
))))
 :qid |Problem2dfy.196:3|
 :skolemid |704|
 :pattern ( (|$let#0_d| a b))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@3| Int) (|a#0@@3| Int) (|b#0@@1| Int) ) (!  (=> (or (|_module.__default.DividesBoth#canCall| |d#0@@3| |a#0@@3| |b#0@@1|) (and (< 2 $FunctionContextHeight) (and (> |a#0@@3| 0) (> |b#0@@1| 0)))) (and (=> (> |d#0@@3| 0) (and (|_module.__default.Divides#canCall| |d#0@@3| |a#0@@3|) (=> (_module.__default.Divides reveal__module._default.Divides |d#0@@3| |a#0@@3|) (|_module.__default.Divides#canCall| |d#0@@3| |b#0@@1|)))) (= (_module.__default.DividesBoth |d#0@@3| |a#0@@3| |b#0@@1|)  (and (and (> |d#0@@3| 0) (_module.__default.Divides reveal__module._default.Divides |d#0@@3| |a#0@@3|)) (_module.__default.Divides reveal__module._default.Divides |d#0@@3| |b#0@@1|)))))
 :qid |Problem2dfy.200:29|
 :skolemid |716|
 :pattern ( (_module.__default.DividesBoth |d#0@@3| |a#0@@3| |b#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@1| Int) (|d#0@@4| Int) (|a#0@@4| Int) ) (!  (=> (or (|_module.__default.MulTriple#canCall| (LitInt |n#0@@1|) (LitInt |d#0@@4|) (LitInt |a#0@@4|)) (and (< 0 $FunctionContextHeight) (U_2_bool (Lit boolType (bool_2_U  (and (> |n#0@@1| 0) (> |d#0@@4| 0))))))) (= (_module.__default.MulTriple (LitInt |n#0@@1|) (LitInt |d#0@@4|) (LitInt |a#0@@4|)) (= (LitInt (Mul (LitInt |n#0@@1|) (LitInt |d#0@@4|))) (LitInt |a#0@@4|))))
 :qid |Problem2dfy.211:27|
 :weight 3
 :skolemid |735|
 :pattern ( (_module.__default.MulTriple (LitInt |n#0@@1|) (LitInt |d#0@@4|) (LitInt |a#0@@4|)))
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
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|a#0@@5| Int) (|b#0@@2| Int) ) (!  (=> (or (|_module.__default.Gcd#canCall| (LitInt |a#0@@5|) (LitInt |b#0@@2|)) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (U_2_bool (Lit boolType (bool_2_U  (and (> |a#0@@5| 0) (> |b#0@@2| 0)))))))) (and (|$let#0$canCall| (LitInt |a#0@@5|) (LitInt |b#0@@2|)) (= (_module.__default.Gcd (LitInt |a#0@@5|) (LitInt |b#0@@2|)) (let ((|d#1| (|$let#0_d| (LitInt |a#0@@5|) (LitInt |b#0@@2|))))
|d#1|))))
 :qid |Problem2dfy.192:16|
 :weight 3
 :skolemid |706|
 :pattern ( (_module.__default.Gcd (LitInt |a#0@@5|) (LitInt |b#0@@2|)) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@2| Int) (|d#0@@5| Int) (|a#0@@6| Int) ) (!  (=> (or (|_module.__default.MulTriple#canCall| |n#0@@2| |d#0@@5| |a#0@@6|) (and (< 0 $FunctionContextHeight) (and (> |n#0@@2| 0) (> |d#0@@5| 0)))) (= (_module.__default.MulTriple |n#0@@2| |d#0@@5| |a#0@@6|) (= (Mul |n#0@@2| |d#0@@5|) |a#0@@6|)))
 :qid |Problem2dfy.211:27|
 :skolemid |734|
 :pattern ( (_module.__default.MulTriple |n#0@@2| |d#0@@5| |a#0@@6|))
))))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@@7| () Int)
(declare-fun |b#0@@3| () Int)
(declare-fun |l#0@0| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@n#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call3formal@n#0@0@@0| () Int)
(declare-fun |n##1@0| () Int)
(declare-fun |a##5@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |##a#9@0| () Int)
(declare-fun |##a#10@0| () Int)
(declare-fun |m#2@0| () Int)
(declare-fun |a##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |call3formal@n#0@0@@1| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call3formal@n#0@0@@2| () Int)
(declare-fun |n##0@0| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun |mm#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |##a#2@0| () Int)
(declare-fun |##a#3@0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.GcdDecrease)
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
 (=> (= (ControlFlow 0 0) 78) (let ((anon11_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= (_module.__default.Gcd |a#0@@7| |b#0@@3|) (_module.__default.Gcd (- |a#0@@7| |b#0@@3|) |b#0@@3|)))))
(let ((anon9_correct  (=> (forall ((|m#3| Int) ) (! (|_module.__default.DividesBoth#canCall| |m#3| |a#0@@7| |b#0@@3|)
 :qid |Problem2dfy.331:17|
 :skolemid |792|
 :pattern ( (_module.__default.DividesBoth |m#3| |a#0@@7| |b#0@@3|))
)) (and (=> (= (ControlFlow 0 4) (- 0 29)) (forall ((|m#3@@0| Int) ) (!  (=> (_module.__default.DividesBoth |m#3@@0| |a#0@@7| |b#0@@3|) (<= |m#3@@0| |l#0@0|))
 :qid |Problem2dfy.331:17|
 :skolemid |794|
 :pattern ( (_module.__default.DividesBoth |m#3@@0| |a#0@@7| |b#0@@3|))
))) (=> (forall ((|m#3@@1| Int) ) (!  (=> (_module.__default.DividesBoth |m#3@@1| |a#0@@7| |b#0@@3|) (<= |m#3@@1| |l#0@0|))
 :qid |Problem2dfy.331:17|
 :skolemid |794|
 :pattern ( (_module.__default.DividesBoth |m#3@@1| |a#0@@7| |b#0@@3|))
)) (and (=> (= (ControlFlow 0 4) (- 0 28)) (<= |k#0@0| |l#0@0|)) (=> (<= |k#0@0| |l#0@0|) (and (=> (= (ControlFlow 0 4) (- 0 27)) (> |l#0@0| 0)) (=> (> |l#0@0| 0) (and (=> (= (ControlFlow 0 4) (- 0 26)) (> |a#0@@7| 0)) (=> (> |a#0@@7| 0) (and (=> (= (ControlFlow 0 4) (- 0 25)) (_module.__default.Divides reveal__module._default.Divides |l#0@0| |a#0@@7|)) (=> (_module.__default.Divides reveal__module._default.Divides |l#0@0| |a#0@@7|) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (= (Mul |call3formal@n#0@0| |l#0@0|) |a#0@@7|) (= $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 4) (- 0 24)) (> |l#0@0| 0)) (=> (> |l#0@0| 0) (and (=> (= (ControlFlow 0 4) (- 0 23)) (> |b#0@@3| 0)) (=> (> |b#0@@3| 0) (and (=> (= (ControlFlow 0 4) (- 0 22)) (_module.__default.Divides reveal__module._default.Divides |l#0@0| |b#0@@3|)) (=> (_module.__default.Divides reveal__module._default.Divides |l#0@0| |b#0@@3|) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (= (Mul |call3formal@n#0@0@@0| |l#0@0|) |b#0@@3|) (= $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 4) (- 0 21)) (= (Mul |call3formal@n#0@0| |l#0@0|) |a#0@@7|)) (=> (= (Mul |call3formal@n#0@0| |l#0@0|) |a#0@@7|) (and (=> (= (ControlFlow 0 4) (- 0 20)) (= (Mul |call3formal@n#0@0@@0| |l#0@0|) |b#0@@3|)) (=> (= (Mul |call3formal@n#0@0@@0| |l#0@0|) |b#0@@3|) (and (=> (= (ControlFlow 0 4) (- 0 19)) (= (- (Mul |call3formal@n#0@0| |l#0@0|) (Mul |call3formal@n#0@0@@0| |l#0@0|)) (- |a#0@@7| |b#0@@3|))) (=> (= (- (Mul |call3formal@n#0@0| |l#0@0|) (Mul |call3formal@n#0@0@@0| |l#0@0|)) (- |a#0@@7| |b#0@@3|)) (and (=> (= (ControlFlow 0 4) (- 0 18)) (= (Mul (- |call3formal@n#0@0| |call3formal@n#0@0@@0|) |l#0@0|) (- |a#0@@7| |b#0@@3|))) (=> (= (Mul (- |call3formal@n#0@0| |call3formal@n#0@0@@0|) |l#0@0|) (- |a#0@@7| |b#0@@3|)) (=> (and (= |n##1@0| (- |call3formal@n#0@0| |call3formal@n#0@0@@0|)) (= |a##5@0| (- |a#0@@7| |b#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 17)) (> |n##1@0| 0)) (=> (> |n##1@0| 0) (and (=> (= (ControlFlow 0 4) (- 0 16)) (> |l#0@0| 0)) (=> (> |l#0@0| 0) (and (=> (= (ControlFlow 0 4) (- 0 15)) (= (Mul |n##1@0| |l#0@0|) |a##5@0|)) (=> (= (Mul |n##1@0| |l#0@0|) |a##5@0|) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (|_module.__default.Divides#canCall| |l#0@0| |a##5@0|) (_module.__default.Divides reveal__module._default.Divides |l#0@0| |a##5@0|))) (and (and (= $Heap@4 $Heap@5) ($IsAlloc intType (int_2_U |l#0@0|) TInt $Heap@5)) (and (= |##a#9@0| (- |a#0@@7| |b#0@@3|)) ($IsAlloc intType (int_2_U |##a#9@0|) TInt $Heap@5)))) (and (=> (= (ControlFlow 0 4) (- 0 14)) (> |l#0@0| 0)) (and (=> (= (ControlFlow 0 4) (- 0 13)) (> |##a#9@0| 0)) (=> (and (|_module.__default.Divides#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|)) (|_module.__default.Divides#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 12)) (_module.__default.Divides reveal__module._default.Divides |l#0@0| (- |a#0@@7| |b#0@@3|))) (=> (_module.__default.Divides reveal__module._default.Divides |l#0@0| (- |a#0@@7| |b#0@@3|)) (=> (and (and ($IsAlloc intType (int_2_U |l#0@0|) TInt $Heap@5) (= |##a#10@0| (- |a#0@@7| |b#0@@3|))) (and ($IsAlloc intType (int_2_U |##a#10@0|) TInt $Heap@5) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@5))) (and (=> (= (ControlFlow 0 4) (- 0 11)) (> |##a#10@0| 0)) (and (=> (= (ControlFlow 0 4) (- 0 10)) (> |b#0@@3| 0)) (=> (and (|_module.__default.DividesBoth#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (|_module.__default.DividesBoth#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|)) (and (=> (= (ControlFlow 0 4) (- 0 9)) (=> (|_module.__default.DividesBoth#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (> |l#0@0| 0)))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (=> (|_module.__default.DividesBoth#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |l#0@0| (- |a#0@@7| |b#0@@3|))))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> (|_module.__default.DividesBoth#canCall| |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |l#0@0| |b#0@@3|)))) (=> (_module.__default.DividesBoth |l#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (and (=> (= (ControlFlow 0 4) (- 0 6)) (<= |l#0@0| |k#0@0|)) (=> (<= |l#0@0| |k#0@0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= |k#0@0| |l#0@0|)) (=> (= |k#0@0| |l#0@0|) (=> (= (ControlFlow 0 4) 3) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon15_Else_correct  (=> (and (not (_module.__default.DividesBoth |m#2@0| |a#0@@7| |b#0@@3|)) (= (ControlFlow 0 31) 4)) anon9_correct)))
(let ((anon15_Then_correct  (=> (and (_module.__default.DividesBoth |m#2@0| |a#0@@7| |b#0@@3|) (= (ControlFlow 0 30) 4)) anon9_correct)))
(let ((anon14_Then_correct  (=> ($IsAlloc intType (int_2_U |m#2@0|) TInt $Heap@2) (=> (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@2) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@2)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (> |b#0@@3| 0)) (=> (|_module.__default.DividesBoth#canCall| |m#2@0| |a#0@@7| |b#0@@3|) (and (=> (= (ControlFlow 0 32) 30) anon15_Then_correct) (=> (= (ControlFlow 0 32) 31) anon15_Else_correct)))))))))
(let ((anon14_Else_correct true))
(let ((anon6_correct  (=> (and (|_module.__default.DividesBoth#canCall| |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (=> (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (forall ((|m#1| Int) (|mm#1| Int) ) (!  (=> (= |mm#1| (- |a#0@@7| |b#0@@3|)) (|_module.__default.DividesBoth#canCall| |m#1| |mm#1| |b#0@@3|))
 :qid |Problem2dfy.317:43|
 :skolemid |786|
 :pattern ( (_module.__default.DividesBoth |m#1| |mm#1| |b#0@@3|))
)))) (and (=> (= (ControlFlow 0 35) (- 0 62)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (> |k#0@0| 0)))) (and (=> (= (ControlFlow 0 35) (- 0 61)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |k#0@0| (- |a#0@@7| |b#0@@3|))))) (and (=> (= (ControlFlow 0 35) (- 0 60)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |b#0@@3|)))) (and (=> (= (ControlFlow 0 35) (- 0 59)) (forall ((|m#1@@0| Int) (|mm#1@@0| Int) ) (!  (=> (= |mm#1@@0| (- |a#0@@7| |b#0@@3|)) (=> (_module.__default.DividesBoth |m#1@@0| |mm#1@@0| |b#0@@3|) (<= |m#1@@0| |k#0@0|)))
 :qid |Problem2dfy.317:43|
 :skolemid |787|
 :pattern ( (_module.__default.DividesBoth |m#1@@0| |mm#1@@0| |b#0@@3|))
))) (=> (and (and (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (forall ((|m#1@@1| Int) (|mm#1@@1| Int) ) (!  (=> (= |mm#1@@1| (- |a#0@@7| |b#0@@3|)) (=> (_module.__default.DividesBoth |m#1@@1| |mm#1@@1| |b#0@@3|) (<= |m#1@@1| |k#0@0|)))
 :qid |Problem2dfy.317:43|
 :skolemid |788|
 :pattern ( (_module.__default.DividesBoth |m#1@@1| |mm#1@@1| |b#0@@3|))
))) (= |a##0@0| (- |a#0@@7| |b#0@@3|))) (and (=> (= (ControlFlow 0 35) (- 0 58)) (> |k#0@0| 0)) (=> (> |k#0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 57)) (> |a##0@0| 0)) (=> (> |a##0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 56)) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a##0@0|)) (=> (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a##0@0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= (Mul |call3formal@n#0@0@@1| |k#0@0|) |a##0@0|) (= $Heap@@1 $Heap@0))) (and (=> (= (ControlFlow 0 35) (- 0 55)) (= (Mul |call3formal@n#0@0@@1| |k#0@0|) (- |a#0@@7| |b#0@@3|))) (=> (= (Mul |call3formal@n#0@0@@1| |k#0@0|) (- |a#0@@7| |b#0@@3|)) (and (=> (= (ControlFlow 0 35) (- 0 54)) (> |k#0@0| 0)) (=> (> |k#0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 53)) (> |b#0@@3| 0)) (=> (> |b#0@@3| 0) (and (=> (= (ControlFlow 0 35) (- 0 52)) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |b#0@@3|)) (=> (_module.__default.Divides reveal__module._default.Divides |k#0@0| |b#0@@3|) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= (Mul |call3formal@n#0@0@@2| |k#0@0|) |b#0@@3|) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 35) (- 0 51)) (= (Mul |call3formal@n#0@0@@2| |k#0@0|) |b#0@@3|)) (=> (= (Mul |call3formal@n#0@0@@2| |k#0@0|) |b#0@@3|) (and (=> (= (ControlFlow 0 35) (- 0 50)) (= (+ (Mul |call3formal@n#0@0@@1| |k#0@0|) (Mul |call3formal@n#0@0@@2| |k#0@0|)) (+ (- |a#0@@7| |b#0@@3|) |b#0@@3|))) (=> (= (+ (Mul |call3formal@n#0@0@@1| |k#0@0|) (Mul |call3formal@n#0@0@@2| |k#0@0|)) (+ (- |a#0@@7| |b#0@@3|) |b#0@@3|)) (and (=> (= (ControlFlow 0 35) (- 0 49)) (= (Mul (+ |call3formal@n#0@0@@1| |call3formal@n#0@0@@2|) |k#0@0|) |a#0@@7|)) (=> (= (Mul (+ |call3formal@n#0@0@@1| |call3formal@n#0@0@@2|) |k#0@0|) |a#0@@7|) (=> (= |n##0@0| (+ |call3formal@n#0@0@@1| |call3formal@n#0@0@@2|)) (and (=> (= (ControlFlow 0 35) (- 0 48)) (> |n##0@0| 0)) (=> (> |n##0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 47)) (> |k#0@0| 0)) (=> (> |k#0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 46)) (= (Mul |n##0@0| |k#0@0|) |a#0@@7|)) (=> (= (Mul |n##0@0| |k#0@0|) |a#0@@7|) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.__default.Divides#canCall| |k#0@0| |a#0@@7|)) (and (and (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a#0@@7|) (= $Heap@1 $Heap@2)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@2) ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@2)))) (and (=> (= (ControlFlow 0 35) (- 0 45)) (> |k#0@0| 0)) (and (=> (= (ControlFlow 0 35) (- 0 44)) (> |a#0@@7| 0)) (=> (and (|_module.__default.Divides#canCall| |k#0@0| |a#0@@7|) (|_module.__default.Divides#canCall| |k#0@0| |a#0@@7|)) (and (=> (= (ControlFlow 0 35) (- 0 43)) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a#0@@7|)) (=> (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a#0@@7|) (=> ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@2) (=> (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@2) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@2)) (and (=> (= (ControlFlow 0 35) (- 0 42)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 35) (- 0 41)) (> |b#0@@3| 0)) (=> (and (|_module.__default.DividesBoth#canCall| |k#0@0| |a#0@@7| |b#0@@3|) (|_module.__default.DividesBoth#canCall| |k#0@0| |a#0@@7| |b#0@@3|)) (and (=> (= (ControlFlow 0 35) (- 0 40)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| |a#0@@7| |b#0@@3|) (> |k#0@0| 0)))) (and (=> (= (ControlFlow 0 35) (- 0 39)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |a#0@@7|)))) (and (=> (= (ControlFlow 0 35) (- 0 38)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |k#0@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |k#0@0| |b#0@@3|)))) (=> (_module.__default.DividesBoth |k#0@0| |a#0@@7| |b#0@@3|) (=> (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@2) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@2)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (> |b#0@@3| 0)) (=> (and (and (and (> |a#0@@7| 0) (> |b#0@@3| 0)) (|_module.__default.Gcd#canCall| |a#0@@7| |b#0@@3|)) (and (|_module.__default.Gcd#canCall| |a#0@@7| |b#0@@3|) (= |l#0@0| (_module.__default.Gcd |a#0@@7| |b#0@@3|)))) (and (=> (= (ControlFlow 0 35) 32) anon14_Then_correct) (=> (= (ControlFlow 0 35) 1) anon14_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon13_Else_correct  (=> (and (not (_module.__default.DividesBoth |m#0@0| |mm#0@0| |b#0@@3|)) (= (ControlFlow 0 67) 35)) anon6_correct)))
(let ((anon13_Then_correct  (=> (and (_module.__default.DividesBoth |m#0@0| |mm#0@0| |b#0@@3|) (= (ControlFlow 0 66) 35)) anon6_correct)))
(let ((anon12_Then_correct  (=> (and (and (= |mm#0@0| (- |a#0@@7| |b#0@@3|)) ($IsAlloc intType (int_2_U |m#0@0|) TInt $Heap@@1)) (and ($IsAlloc intType (int_2_U |mm#0@0|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (> |mm#0@0| 0)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (> |b#0@@3| 0)) (=> (|_module.__default.DividesBoth#canCall| |m#0@0| |mm#0@0| |b#0@@3|) (and (=> (= (ControlFlow 0 68) 66) anon13_Then_correct) (=> (= (ControlFlow 0 68) 67) anon13_Else_correct))))))))
(let ((anon12_Else_correct  (=> (and (or (not (= |mm#0@0| (- |a#0@@7| |b#0@@3|))) (not true)) (= (ControlFlow 0 65) 35)) anon6_correct)))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 71) 68) anon12_Then_correct) (=> (= (ControlFlow 0 71) 65) anon12_Else_correct))))
(let ((anon10_Then_correct  (=> (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (and (=> (= (ControlFlow 0 72) 71) anon11_Then_correct) (=> (= (ControlFlow 0 72) 64) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (_module.__default.DividesBoth |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|)) (= (ControlFlow 0 63) 35)) anon6_correct)))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (= |##a#2@0| (- |a#0@@7| |b#0@@3|))) (and ($IsAlloc intType (int_2_U |##a#2@0|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1))) (and (=> (= (ControlFlow 0 73) (- 0 77)) (> |##a#2@0| 0)) (and (=> (= (ControlFlow 0 73) (- 0 76)) (> |b#0@@3| 0)) (=> (and (and (and (and (> |##a#2@0| 0) (> |b#0@@3| 0)) (|_module.__default.Gcd#canCall| (- |a#0@@7| |b#0@@3|) |b#0@@3|)) (and (|_module.__default.Gcd#canCall| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (= |k#0@0| (_module.__default.Gcd (- |a#0@@7| |b#0@@3|) |b#0@@3|)))) (and (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@@1) (= |##a#3@0| (- |a#0@@7| |b#0@@3|))) (and ($IsAlloc intType (int_2_U |##a#3@0|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1)))) (and (=> (= (ControlFlow 0 73) (- 0 75)) (> |##a#3@0| 0)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (> |b#0@@3| 0)) (=> (|_module.__default.DividesBoth#canCall| |k#0@0| (- |a#0@@7| |b#0@@3|) |b#0@@3|) (and (=> (= (ControlFlow 0 73) 72) anon10_Then_correct) (=> (= (ControlFlow 0 73) 63) anon10_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (= 6 $FunctionContextHeight) (> |a#0@@7| |b#0@@3|)) (and (> |b#0@@3| 0) (= (ControlFlow 0 78) 73))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
