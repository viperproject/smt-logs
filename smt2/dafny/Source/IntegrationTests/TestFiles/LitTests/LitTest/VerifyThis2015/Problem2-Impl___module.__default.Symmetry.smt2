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
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |m#4@0| () Int)
(declare-fun $Heap@@1 () T@U)
(declare-fun |m#2@0| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.Symmetry)
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
 (=> (= (ControlFlow 0 0) 56) (let ((anon16_Else_correct true))
(let ((anon19_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= (_module.__default.Gcd |a#0@@7| |b#0@@3|) (_module.__default.Gcd |b#0@@3| |a#0@@7|)))))
(let ((anon14_correct  (=> (forall ((|m#5| Int) ) (!  (and (|_module.__default.DividesBoth#canCall| |m#5| |b#0@@3| |a#0@@7|) (=> (=> (_module.__default.DividesBoth |m#5| |b#0@@3| |a#0@@7|) (<= |m#5| |$rhs#1@0|)) (and (|_module.__default.DividesBoth#canCall| |m#5| |b#0@@3| |a#0@@7|) (=> (_module.__default.DividesBoth |m#5| |b#0@@3| |a#0@@7|) (|_module.__default.DividesBoth#canCall| |m#5| |a#0@@7| |b#0@@3|)))))
 :qid |Problem2dfy.308:17|
 :skolemid |783|
 :pattern ( (_module.__default.DividesBoth |m#5| |a#0@@7| |b#0@@3|))
 :pattern ( (_module.__default.DividesBoth |m#5| |b#0@@3| |a#0@@7|))
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((|m#5@@0| Int) ) (!  (and (=> (_module.__default.DividesBoth |m#5@@0| |b#0@@3| |a#0@@7|) (<= |m#5@@0| |$rhs#1@0|)) (=> (_module.__default.DividesBoth |m#5@@0| |b#0@@3| |a#0@@7|) (_module.__default.DividesBoth |m#5@@0| |a#0@@7| |b#0@@3|)))
 :qid |Problem2dfy.308:17|
 :skolemid |785|
 :pattern ( (_module.__default.DividesBoth |m#5@@0| |a#0@@7| |b#0@@3|))
 :pattern ( (_module.__default.DividesBoth |m#5@@0| |b#0@@3| |a#0@@7|))
))) (=> (forall ((|m#5@@1| Int) ) (!  (and (=> (_module.__default.DividesBoth |m#5@@1| |b#0@@3| |a#0@@7|) (<= |m#5@@1| |$rhs#1@0|)) (=> (_module.__default.DividesBoth |m#5@@1| |b#0@@3| |a#0@@7|) (_module.__default.DividesBoth |m#5@@1| |a#0@@7| |b#0@@3|)))
 :qid |Problem2dfy.308:17|
 :skolemid |785|
 :pattern ( (_module.__default.DividesBoth |m#5@@1| |a#0@@7| |b#0@@3|))
 :pattern ( (_module.__default.DividesBoth |m#5@@1| |b#0@@3| |a#0@@7|))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= |$rhs#0@0| |$rhs#1@0|)) (=> (= |$rhs#0@0| |$rhs#1@0|) (=> (= (ControlFlow 0 4) 3) GeneratedUnifiedExit_correct))))))))
(let ((anon23_Else_correct  (=> (and (< |$rhs#1@0| |m#4@0|) (= (ControlFlow 0 11) 4)) anon14_correct)))
(let ((anon23_Then_correct  (=> (and (and (<= |m#4@0| |$rhs#1@0|) ($IsAlloc intType (int_2_U |m#4@0|) TInt $Heap@@1)) (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (> |b#0@@3| 0)) (=> (and (|_module.__default.DividesBoth#canCall| |m#4@0| |a#0@@7| |b#0@@3|) (= (ControlFlow 0 8) 4)) anon14_correct))))))
(let ((anon22_Then_correct  (=> (_module.__default.DividesBoth |m#4@0| |b#0@@3| |a#0@@7|) (and (=> (= (ControlFlow 0 12) 8) anon23_Then_correct) (=> (= (ControlFlow 0 12) 11) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (_module.__default.DividesBoth |m#4@0| |b#0@@3| |a#0@@7|)) (= (ControlFlow 0 7) 4)) anon14_correct)))
(let ((anon21_Then_correct  (=> ($IsAlloc intType (int_2_U |m#4@0|) TInt $Heap@@1) (=> (and ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (> |b#0@@3| 0)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (> |a#0@@7| 0)) (=> (|_module.__default.DividesBoth#canCall| |m#4@0| |b#0@@3| |a#0@@7|) (and (=> (= (ControlFlow 0 13) 12) anon22_Then_correct) (=> (= (ControlFlow 0 13) 7) anon22_Else_correct)))))))))
(let ((anon21_Else_correct true))
(let ((anon10_correct  (=> (and (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |b#0@@3| |a#0@@7|) (=> (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (forall ((|m#3| Int) ) (! (|_module.__default.DividesBoth#canCall| |m#3| |b#0@@3| |a#0@@7|)
 :qid |Problem2dfy.306:41|
 :skolemid |780|
 :pattern ( (_module.__default.DividesBoth |m#3| |b#0@@3| |a#0@@7|))
)))) (and (=> (= (ControlFlow 0 16) (- 0 25)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |b#0@@3| |a#0@@7|) (or (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (> |$rhs#1@0| 0)))) (and (=> (= (ControlFlow 0 16) (- 0 24)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |b#0@@3| |a#0@@7|) (or (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (_module.__default.Divides reveal__module._default.Divides |$rhs#1@0| |b#0@@3|)))) (and (=> (= (ControlFlow 0 16) (- 0 23)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |b#0@@3| |a#0@@7|) (or (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (_module.__default.Divides reveal__module._default.Divides |$rhs#1@0| |a#0@@7|)))) (and (=> (= (ControlFlow 0 16) (- 0 22)) (forall ((|m#3@@0| Int) ) (!  (=> (_module.__default.DividesBoth |m#3@@0| |b#0@@3| |a#0@@7|) (<= |m#3@@0| |$rhs#1@0|))
 :qid |Problem2dfy.306:41|
 :skolemid |781|
 :pattern ( (_module.__default.DividesBoth |m#3@@0| |b#0@@3| |a#0@@7|))
))) (=> (and (and (and (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (forall ((|m#3@@1| Int) ) (!  (=> (_module.__default.DividesBoth |m#3@@1| |b#0@@3| |a#0@@7|) (<= |m#3@@1| |$rhs#1@0|))
 :qid |Problem2dfy.306:41|
 :skolemid |782|
 :pattern ( (_module.__default.DividesBoth |m#3@@1| |b#0@@3| |a#0@@7|))
))) ($IsAlloc intType (int_2_U |$rhs#1@0|) TInt $Heap@@1)) (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1))) (and (=> (= (ControlFlow 0 16) (- 0 21)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 16) (- 0 20)) (> |b#0@@3| 0)) (=> (and (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |a#0@@7| |b#0@@3|) (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |a#0@@7| |b#0@@3|)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#1@0| |a#0@@7| |b#0@@3|) (> |$rhs#1@0| 0)))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#1@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |$rhs#1@0| |a#0@@7|)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#1@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |$rhs#1@0| |b#0@@3|)))) (=> (_module.__default.DividesBoth |$rhs#1@0| |a#0@@7| |b#0@@3|) (and (=> (= (ControlFlow 0 16) 13) anon21_Then_correct) (=> (= (ControlFlow 0 16) 1) anon21_Else_correct)))))))))))))))))
(let ((anon20_Else_correct  (=> (and (not (_module.__default.DividesBoth |m#2@0| |b#0@@3| |a#0@@7|)) (= (ControlFlow 0 29) 16)) anon10_correct)))
(let ((anon20_Then_correct  (=> (and (_module.__default.DividesBoth |m#2@0| |b#0@@3| |a#0@@7|) (= (ControlFlow 0 28) 16)) anon10_correct)))
(let ((anon19_Then_correct  (=> ($IsAlloc intType (int_2_U |m#2@0|) TInt $Heap@@1) (=> (and ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 30) (- 0 32)) (> |b#0@@3| 0)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (> |a#0@@7| 0)) (=> (|_module.__default.DividesBoth#canCall| |m#2@0| |b#0@@3| |a#0@@7|) (and (=> (= (ControlFlow 0 30) 28) anon20_Then_correct) (=> (= (ControlFlow 0 30) 29) anon20_Else_correct)))))))))
(let ((anon18_Then_correct  (=> (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|) (and (=> (= (ControlFlow 0 33) 30) anon19_Then_correct) (=> (= (ControlFlow 0 33) 27) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (_module.__default.DividesBoth |$rhs#1@0| |b#0@@3| |a#0@@7|)) (= (ControlFlow 0 26) 16)) anon10_correct)))
(let ((anon5_correct  (=> (and (|_module.__default.DividesBoth#canCall| |$rhs#0@0| |a#0@@7| |b#0@@3|) (=> (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (forall ((|m#1| Int) ) (! (|_module.__default.DividesBoth#canCall| |m#1| |a#0@@7| |b#0@@3|)
 :qid |Problem2dfy.305:41|
 :skolemid |777|
 :pattern ( (_module.__default.DividesBoth |m#1| |a#0@@7| |b#0@@3|))
)))) (and (=> (= (ControlFlow 0 34) (- 0 40)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (> |$rhs#0@0| 0)))) (and (=> (= (ControlFlow 0 34) (- 0 39)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |$rhs#0@0| |a#0@@7|)))) (and (=> (= (ControlFlow 0 34) (- 0 38)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#0@0| |a#0@@7| |b#0@@3|) (or (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (_module.__default.Divides reveal__module._default.Divides |$rhs#0@0| |b#0@@3|)))) (and (=> (= (ControlFlow 0 34) (- 0 37)) (forall ((|m#1@@0| Int) ) (!  (=> (_module.__default.DividesBoth |m#1@@0| |a#0@@7| |b#0@@3|) (<= |m#1@@0| |$rhs#0@0|))
 :qid |Problem2dfy.305:41|
 :skolemid |778|
 :pattern ( (_module.__default.DividesBoth |m#1@@0| |a#0@@7| |b#0@@3|))
))) (=> (and (and (and (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (forall ((|m#1@@1| Int) ) (!  (=> (_module.__default.DividesBoth |m#1@@1| |a#0@@7| |b#0@@3|) (<= |m#1@@1| |$rhs#0@0|))
 :qid |Problem2dfy.305:41|
 :skolemid |779|
 :pattern ( (_module.__default.DividesBoth |m#1@@1| |a#0@@7| |b#0@@3|))
))) ($IsAlloc intType (int_2_U |$rhs#1@0|) TInt $Heap@@1)) (and ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (> |b#0@@3| 0)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (> |a#0@@7| 0)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#1@0| |b#0@@3| |a#0@@7|) (and (=> (= (ControlFlow 0 34) 33) anon18_Then_correct) (=> (= (ControlFlow 0 34) 26) anon18_Else_correct)))))))))))))
(let ((anon17_Else_correct  (=> (and (not (_module.__default.DividesBoth |m#0@0| |a#0@@7| |b#0@@3|)) (= (ControlFlow 0 44) 34)) anon5_correct)))
(let ((anon17_Then_correct  (=> (and (_module.__default.DividesBoth |m#0@0| |a#0@@7| |b#0@@3|) (= (ControlFlow 0 43) 34)) anon5_correct)))
(let ((anon16_Then_correct  (=> ($IsAlloc intType (int_2_U |m#0@0|) TInt $Heap@@1) (=> (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 45) (- 0 47)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (> |b#0@@3| 0)) (=> (|_module.__default.DividesBoth#canCall| |m#0@0| |a#0@@7| |b#0@@3|) (and (=> (= (ControlFlow 0 45) 43) anon17_Then_correct) (=> (= (ControlFlow 0 45) 44) anon17_Else_correct)))))))))
(let ((anon15_Then_correct  (=> (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|) (and (=> (= (ControlFlow 0 48) 45) anon16_Then_correct) (=> (= (ControlFlow 0 48) 42) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not (_module.__default.DividesBoth |$rhs#0@0| |a#0@@7| |b#0@@3|)) (= (ControlFlow 0 41) 34)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1)) (and (=> (= (ControlFlow 0 49) (- 0 55)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 49) (- 0 54)) (> |b#0@@3| 0)) (=> (and (and (and (> |a#0@@7| 0) (> |b#0@@3| 0)) (|_module.__default.Gcd#canCall| |a#0@@7| |b#0@@3|)) (and (and (|_module.__default.Gcd#canCall| |a#0@@7| |b#0@@3|) (= |$rhs#0@0| (_module.__default.Gcd |a#0@@7| |b#0@@3|))) (and ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1)))) (and (=> (= (ControlFlow 0 49) (- 0 53)) (> |b#0@@3| 0)) (and (=> (= (ControlFlow 0 49) (- 0 52)) (> |a#0@@7| 0)) (=> (and (and (and (> |b#0@@3| 0) (> |a#0@@7| 0)) (and (|_module.__default.Gcd#canCall| |b#0@@3| |a#0@@7|) (|_module.__default.Gcd#canCall| |b#0@@3| |a#0@@7|))) (and (and (= |$rhs#1@0| (_module.__default.Gcd |b#0@@3| |a#0@@7|)) ($IsAlloc intType (int_2_U |$rhs#0@0|) TInt $Heap@@1)) (and ($IsAlloc intType (int_2_U |a#0@@7|) TInt $Heap@@1) ($IsAlloc intType (int_2_U |b#0@@3|) TInt $Heap@@1)))) (and (=> (= (ControlFlow 0 49) (- 0 51)) (> |a#0@@7| 0)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (> |b#0@@3| 0)) (=> (|_module.__default.DividesBoth#canCall| |$rhs#0@0| |a#0@@7| |b#0@@3|) (and (=> (= (ControlFlow 0 49) 48) anon15_Then_correct) (=> (= (ControlFlow 0 49) 41) anon15_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (= 6 $FunctionContextHeight) (> |a#0@@7| 0)) (and (> |b#0@@3| 0) (= (ControlFlow 0 56) 49))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
