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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.__default.Divides (Bool Int Int) Bool)
(declare-fun |_module.__default.Divides#canCall| (Int Int) Bool)
(declare-fun _module.__default.MulTriple (Int Int Int) Bool)
(declare-fun |_module.__default.MulTriple#canCall| (Int Int Int) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.DividesBoth (Int Int Int) Bool)
(declare-fun |_module.__default.DividesBoth#canCall| (Int Int Int) Bool)
(declare-fun reveal__module._default.Divides () Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
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
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
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
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |801|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
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
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |pc1#0@0| () Int)
(declare-fun |pc0#0@0| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun |b#0@0| () Int)
(declare-fun |a1#0@1| () Int)
(declare-fun |b1#0@1| () Int)
(declare-fun |b0#0@1| () Int)
(declare-fun |a0#0@1| () Int)
(declare-fun |A#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |B#0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |gcd#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0@1| () Int)
(declare-fun |b#0@1| () Int)
(declare-fun |pc0#0@3| () Int)
(declare-fun |pc1#0@3| () Int)
(declare-fun |a0#0@2| () Int)
(declare-fun |b1#0@2| () Int)
(declare-fun |b0#0@2| () Int)
(declare-fun |a1#0@2| () Int)
(declare-fun |pc1#0@1| () Int)
(declare-fun |pc1#0@2| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |a##0_2_2@1| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#0_2_0@1| () Int)
(declare-fun |$rhs#0_2_1@1| () Int)
(declare-fun |pc0#0@1| () Int)
(declare-fun |pc0#0@2| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#0_7_0@1| () Int)
(declare-fun |$rhs#0_7_1@1| () Int)
(declare-fun |$rhs#0_3_1@1| () Int)
(declare-fun |$rhs#0_4_1@1| () Int)
(declare-fun |$rhs#0_8_1@1| () Int)
(declare-fun |$rhs#0_9_1@1| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun null () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |a0#0@0| () Int)
(declare-fun |b1#0@0| () Int)
(declare-fun |b0#0@0| () Int)
(declare-fun |a1#0@0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ParallelGcd__WithoutTermination)
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
 (=> (= (ControlFlow 0 0) 120) (let ((anon27_correct true))
(let ((anon75_Else_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 3))) (not true)) (= (ControlFlow 0 62) 59)) anon27_correct)))
(let ((anon75_Then_correct  (=> (and (= |pc1#0@0| (LitInt 3)) (= (ControlFlow 0 61) 59)) anon27_correct)))
(let ((anon74_Then_correct  (=> (=> (= |pc0#0@0| (LitInt 3)) (= |a#0@0| |b#0@0|)) (and (=> (= (ControlFlow 0 63) 61) anon75_Then_correct) (=> (= (ControlFlow 0 63) 62) anon75_Else_correct)))))
(let ((anon74_Else_correct  (=> (and (not (=> (= |pc0#0@0| (LitInt 3)) (= |a#0@0| |b#0@0|))) (= (ControlFlow 0 60) 59)) anon27_correct)))
(let ((anon73_Else_correct  (=> (or (not (= |pc0#0@0| (LitInt 3))) (not true)) (and (=> (= (ControlFlow 0 65) 63) anon74_Then_correct) (=> (= (ControlFlow 0 65) 60) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (= |pc0#0@0| (LitInt 3)) (and (=> (= (ControlFlow 0 64) 63) anon74_Then_correct) (=> (= (ControlFlow 0 64) 60) anon74_Else_correct)))))
(let ((anon22_correct  (=> (=> (= |pc1#0@0| (LitInt 2)) (and (<= |a#0@0| |a1#0@1|) (=> (<= |a1#0@1| |b1#0@1|) (= |a1#0@1| |a#0@0|)))) (and (=> (= (ControlFlow 0 66) 64) anon73_Then_correct) (=> (= (ControlFlow 0 66) 65) anon73_Else_correct)))))
(let ((anon72_Else_correct  (=> (and (< |b1#0@1| |a1#0@1|) (= (ControlFlow 0 70) 66)) anon22_correct)))
(let ((anon72_Then_correct  (=> (and (<= |a1#0@1| |b1#0@1|) (= (ControlFlow 0 69) 66)) anon22_correct)))
(let ((anon71_Then_correct  (=> (<= |a#0@0| |a1#0@1|) (and (=> (= (ControlFlow 0 71) 69) anon72_Then_correct) (=> (= (ControlFlow 0 71) 70) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (< |a1#0@1| |a#0@0|) (= (ControlFlow 0 68) 66)) anon22_correct)))
(let ((anon70_Then_correct  (=> (= |pc1#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 72) 71) anon71_Then_correct) (=> (= (ControlFlow 0 72) 68) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 67) 66)) anon22_correct)))
(let ((anon18_correct  (=> (=> (= |pc0#0@0| (LitInt 2)) (and (<= |b#0@0| |b0#0@1|) (=> (<= |b0#0@1| |a0#0@1|) (= |b0#0@1| |b#0@0|)))) (and (=> (= (ControlFlow 0 73) 72) anon70_Then_correct) (=> (= (ControlFlow 0 73) 67) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (< |a0#0@1| |b0#0@1|) (= (ControlFlow 0 77) 73)) anon18_correct)))
(let ((anon69_Then_correct  (=> (and (<= |b0#0@1| |a0#0@1|) (= (ControlFlow 0 76) 73)) anon18_correct)))
(let ((anon68_Then_correct  (=> (<= |b#0@0| |b0#0@1|) (and (=> (= (ControlFlow 0 78) 76) anon69_Then_correct) (=> (= (ControlFlow 0 78) 77) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (< |b0#0@1| |b#0@0|) (= (ControlFlow 0 75) 73)) anon18_correct)))
(let ((anon67_Then_correct  (=> (= |pc0#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 79) 78) anon68_Then_correct) (=> (= (ControlFlow 0 79) 75) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (or (not (= |pc0#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 74) 73)) anon18_correct)))
(let ((anon14_correct  (=> (and (or (= |pc0#0@0| (LitInt 0)) (= |a0#0@1| |a#0@0|)) (or (= |pc1#0@0| (LitInt 0)) (= |b1#0@1| |b#0@0|))) (and (=> (= (ControlFlow 0 80) 79) anon67_Then_correct) (=> (= (ControlFlow 0 80) 74) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (= |pc1#0@0| (LitInt 0)) (= (ControlFlow 0 83) 80)) anon14_correct)))
(let ((anon66_Then_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 0))) (not true)) (= (ControlFlow 0 82) 80)) anon14_correct)))
(let ((anon65_Then_correct  (=> (or (= |pc0#0@0| (LitInt 0)) (= |a0#0@1| |a#0@0|)) (and (=> (= (ControlFlow 0 84) 82) anon66_Then_correct) (=> (= (ControlFlow 0 84) 83) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not (or (= |pc0#0@0| (LitInt 0)) (= |a0#0@1| |a#0@0|))) (= (ControlFlow 0 81) 80)) anon14_correct)))
(let ((anon64_Else_correct  (=> (= |pc0#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 86) 84) anon65_Then_correct) (=> (= (ControlFlow 0 86) 81) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (or (not (= |pc0#0@0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 85) 84) anon65_Then_correct) (=> (= (ControlFlow 0 85) 81) anon65_Else_correct)))))
(let ((anon9_correct  (=> (and (and (<= (LitInt 0) |pc0#0@0|) (< |pc0#0@0| 4)) (and (<= (LitInt 0) |pc1#0@0|) (< |pc1#0@0| 4))) (and (=> (= (ControlFlow 0 87) 85) anon64_Then_correct) (=> (= (ControlFlow 0 87) 86) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (< |pc1#0@0| (LitInt 0)) (= (ControlFlow 0 90) 87)) anon9_correct)))
(let ((anon63_Then_correct  (=> (and (<= (LitInt 0) |pc1#0@0|) (= (ControlFlow 0 89) 87)) anon9_correct)))
(let ((anon62_Then_correct  (=> (and (<= (LitInt 0) |pc0#0@0|) (< |pc0#0@0| 4)) (and (=> (= (ControlFlow 0 91) 89) anon63_Then_correct) (=> (= (ControlFlow 0 91) 90) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (and (<= (LitInt 0) |pc0#0@0|) (< |pc0#0@0| 4))) (= (ControlFlow 0 88) 87)) anon9_correct)))
(let ((anon61_Else_correct  (=> (< |pc0#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 93) 91) anon62_Then_correct) (=> (= (ControlFlow 0 93) 88) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (<= (LitInt 0) |pc0#0@0|) (and (=> (= (ControlFlow 0 92) 91) anon62_Then_correct) (=> (= (ControlFlow 0 92) 88) anon62_Else_correct)))))
(let ((anon4_correct  (=> (and (and (< 0 |a#0@0|) (< 0 |b#0@0|)) (and ($IsAlloc intType (int_2_U |A#0|) TInt $Heap@0) ($IsAlloc intType (int_2_U |B#0|) TInt $Heap@0))) (and (=> (= (ControlFlow 0 94) (- 0 98)) (> |A#0| 0)) (and (=> (= (ControlFlow 0 94) (- 0 97)) (> |B#0| 0)) (=> (|_module.__default.Gcd#canCall| |A#0| |B#0|) (=> (and ($IsAlloc intType (int_2_U |a#0@0|) TInt $Heap@0) ($IsAlloc intType (int_2_U |b#0@0|) TInt $Heap@0)) (and (=> (= (ControlFlow 0 94) (- 0 96)) (> |a#0@0| 0)) (and (=> (= (ControlFlow 0 94) (- 0 95)) (> |b#0@0| 0)) (=> (|_module.__default.Gcd#canCall| |a#0@0| |b#0@0|) (=> (and (and (|_module.__default.Gcd#canCall| |A#0| |B#0|) (|_module.__default.Gcd#canCall| |a#0@0| |b#0@0|)) (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |a#0@0| |b#0@0|))) (and (=> (= (ControlFlow 0 94) 92) anon61_Then_correct) (=> (= (ControlFlow 0 94) 93) anon61_Else_correct)))))))))))))
(let ((anon60_Else_correct  (=> (and (<= |a#0@0| 0) (= (ControlFlow 0 100) 94)) anon4_correct)))
(let ((anon60_Then_correct  (=> (and (< 0 |a#0@0|) (= (ControlFlow 0 99) 94)) anon4_correct)))
(let ((anon59_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 101) 99) anon60_Then_correct) (=> (= (ControlFlow 0 101) 100) anon60_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 52) (- 0 51)) (= |gcd#0@0| (_module.__default.Gcd |A#0| |B#0|)))))
(let ((anon77_Then_correct  (=> (and (= |pc0#0@0| (LitInt 3)) (= |pc1#0@0| (LitInt 3))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (> |a#0@0| 0)) (=> (> |a#0@0| 0) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.__default.Gcd#canCall| |a#0@0| |a#0@0|)) (and (and (= (_module.__default.Gcd |a#0@0| |a#0@0|) |a#0@0|) (= $Heap@0 $Heap@1)) (and (= |gcd#0@0| |a#0@0|) (= (ControlFlow 0 53) 52)))) GeneratedUnifiedExit_correct))))))
(let ((anon56_correct  (=> (=> (< 0 |a#0@1|) (=> (< 0 |b#0@1|) (and (|_module.__default.Gcd#canCall| |A#0| |B#0|) (|_module.__default.Gcd#canCall| |a#0@1| |b#0@1|)))) (and (=> (= (ControlFlow 0 5) (- 0 19)) (=> |$w$loop#0@0| (< 0 |a#0@1|))) (=> (=> |$w$loop#0@0| (< 0 |a#0@1|)) (and (=> (= (ControlFlow 0 5) (- 0 18)) (=> |$w$loop#0@0| (< 0 |b#0@1|))) (=> (=> |$w$loop#0@0| (< 0 |b#0@1|)) (and (=> (= (ControlFlow 0 5) (- 0 17)) (=> |$w$loop#0@0| (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |a#0@1| |b#0@1|)))) (=> (=> |$w$loop#0@0| (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |a#0@1| |b#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 16)) (=> |$w$loop#0@0| (<= (LitInt 0) |pc0#0@3|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |pc0#0@3|)) (and (=> (= (ControlFlow 0 5) (- 0 15)) (=> |$w$loop#0@0| (< |pc0#0@3| 4))) (=> (=> |$w$loop#0@0| (< |pc0#0@3| 4)) (and (=> (= (ControlFlow 0 5) (- 0 14)) (=> |$w$loop#0@0| (<= (LitInt 0) |pc1#0@3|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |pc1#0@3|)) (and (=> (= (ControlFlow 0 5) (- 0 13)) (=> |$w$loop#0@0| (< |pc1#0@3| 4))) (=> (=> |$w$loop#0@0| (< |pc1#0@3| 4)) (and (=> (= (ControlFlow 0 5) (- 0 12)) (=> |$w$loop#0@0| (or (= |pc0#0@3| (LitInt 0)) (= |a0#0@2| |a#0@1|)))) (=> (=> |$w$loop#0@0| (or (= |pc0#0@3| (LitInt 0)) (= |a0#0@2| |a#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (=> |$w$loop#0@0| (or (= |pc1#0@3| (LitInt 0)) (= |b1#0@2| |b#0@1|)))) (=> (=> |$w$loop#0@0| (or (= |pc1#0@3| (LitInt 0)) (= |b1#0@2| |b#0@1|))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 2)) (<= |b#0@1| |b0#0@2|)))) (=> (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 2)) (<= |b#0@1| |b0#0@2|))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 2)) (=> (<= |b0#0@2| |a0#0@2|) (= |b0#0@2| |b#0@1|))))) (=> (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 2)) (=> (<= |b0#0@2| |a0#0@2|) (= |b0#0@2| |b#0@1|)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (=> |$w$loop#0@0| (=> (= |pc1#0@3| (LitInt 2)) (<= |a#0@1| |a1#0@2|)))) (=> (=> |$w$loop#0@0| (=> (= |pc1#0@3| (LitInt 2)) (<= |a#0@1| |a1#0@2|))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> |$w$loop#0@0| (=> (= |pc1#0@3| (LitInt 2)) (=> (<= |a1#0@2| |b1#0@2|) (= |a1#0@2| |a#0@1|))))) (=> (=> |$w$loop#0@0| (=> (= |pc1#0@3| (LitInt 2)) (=> (<= |a1#0@2| |b1#0@2|) (= |a1#0@2| |a#0@1|)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 3)) (= |a#0@1| |b#0@1|)))) (=> (=> |$w$loop#0@0| (=> (= |pc0#0@3| (LitInt 3)) (= |a#0@1| |b#0@1|))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> |$w$loop#0@0| (=> (= |pc1#0@3| (LitInt 3)) (= |a#0@1| |b#0@1|)))))))))))))))))))))))))))))))))))
(let ((anon54_correct  (=> (and (and (= |pc1#0@0| (LitInt 2)) (= |b1#0@1| |a1#0@1|)) (and (= |pc1#0@1| (LitInt 3)) (= |pc1#0@3| |pc1#0@1|))) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@0|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 47) 5)))) anon56_correct))))
(let ((anon93_Else_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 49) 47)) anon54_correct)))
(let ((anon93_Then_correct  (=> (and (= |pc1#0@0| (LitInt 2)) (= (ControlFlow 0 48) 47)) anon54_correct)))
(let ((anon51_correct  (=> (and (and (= |pc1#0@0| (LitInt 2)) (< |b1#0@1| |a1#0@1|)) (and (= |pc1#0@2| (LitInt 0)) (= |pc1#0@3| |pc1#0@2|))) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@0|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 44) 5)))) anon56_correct))))
(let ((anon91_Else_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 46) 44)) anon51_correct)))
(let ((anon91_Then_correct  (=> (and (= |pc1#0@0| (LitInt 2)) (= (ControlFlow 0 45) 44)) anon51_correct)))
(let ((anon48_correct  (=> (and (= |pc1#0@0| (LitInt 2)) (> |b1#0@1| |a1#0@1|)) (and (=> (= (ControlFlow 0 35) (- 0 41)) (> |a#0@0| 0)) (=> (> |a#0@0| 0) (and (=> (= (ControlFlow 0 35) (- 0 40)) (> |b#0@0| 0)) (=> (> |b#0@0| 0) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (|_module.__default.Gcd#canCall| |a#0@0| |b#0@0|) (|_module.__default.Gcd#canCall| |b#0@0| |a#0@0|)) (and (= (_module.__default.Gcd |a#0@0| |b#0@0|) (_module.__default.Gcd |b#0@0| |a#0@0|)) (= $Heap@0 $Heap@2))) (and (=> (= (ControlFlow 0 35) (- 0 39)) (> |b#0@0| |a#0@0|)) (=> (> |b#0@0| |a#0@0|) (and (=> (= (ControlFlow 0 35) (- 0 38)) (> |a#0@0| 0)) (=> (> |a#0@0| 0) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.__default.Gcd#canCall| |b#0@0| |a#0@0|) (|_module.__default.Gcd#canCall| (- |b#0@0| |a#0@0|) |a#0@0|)) (= (_module.__default.Gcd |b#0@0| |a#0@0|) (_module.__default.Gcd (- |b#0@0| |a#0@0|) |a#0@0|))) (and (= $Heap@2 $Heap@3) (= |a##0_2_2@1| (- |b#0@0| |a#0@0|)))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (> |a##0_2_2@1| 0)) (=> (> |a##0_2_2@1| 0) (and (=> (= (ControlFlow 0 35) (- 0 36)) (> |a#0@0| 0)) (=> (> |a#0@0| 0) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and (|_module.__default.Gcd#canCall| |a##0_2_2@1| |a#0@0|) (|_module.__default.Gcd#canCall| |a#0@0| |a##0_2_2@1|)) (= (_module.__default.Gcd |a##0_2_2@1| |a#0@0|) (_module.__default.Gcd |a#0@0| |a##0_2_2@1|))) (and (and (= $Heap@3 $Heap@4) (= |$rhs#0_2_0@1| (- |b1#0@1| |a1#0@1|))) (and (= |$rhs#0_2_1@1| (LitInt 0)) (= |pc1#0@3| |$rhs#0_2_1@1|)))) (and (and (and (= |b#0@1| |$rhs#0_2_0@1|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@0|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 35) 5))))) anon56_correct)))))))))))))))))))))
(let ((anon89_Else_correct  (=> (and (or (not (= |pc1#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 43) 35)) anon48_correct)))
(let ((anon89_Then_correct  (=> (and (= |pc1#0@0| (LitInt 2)) (= (ControlFlow 0 42) 35)) anon48_correct)))
(let ((anon43_correct  (=> (and (and (= |pc0#0@0| (LitInt 2)) (= |a0#0@1| |b0#0@1|)) (and (= |pc0#0@1| (LitInt 3)) (= |pc1#0@3| |pc1#0@0|))) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@1|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 32) 5)))) anon56_correct))))
(let ((anon85_Else_correct  (=> (and (or (not (= |pc0#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 34) 32)) anon43_correct)))
(let ((anon85_Then_correct  (=> (and (= |pc0#0@0| (LitInt 2)) (= (ControlFlow 0 33) 32)) anon43_correct)))
(let ((anon40_correct  (=> (and (and (= |pc0#0@0| (LitInt 2)) (< |a0#0@1| |b0#0@1|)) (and (= |pc0#0@2| (LitInt 0)) (= |pc1#0@3| |pc1#0@0|))) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@2|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 29) 5)))) anon56_correct))))
(let ((anon83_Else_correct  (=> (and (or (not (= |pc0#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 31) 29)) anon40_correct)))
(let ((anon83_Then_correct  (=> (and (= |pc0#0@0| (LitInt 2)) (= (ControlFlow 0 30) 29)) anon40_correct)))
(let ((anon37_correct  (=> (and (= |pc0#0@0| (LitInt 2)) (> |a0#0@1| |b0#0@1|)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (> |a#0@0| |b#0@0|)) (=> (> |a#0@0| |b#0@0|) (and (=> (= (ControlFlow 0 24) (- 0 25)) (> |b#0@0| 0)) (=> (> |b#0@0| 0) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (and (and (|_module.__default.Gcd#canCall| |a#0@0| |b#0@0|) (|_module.__default.Gcd#canCall| (- |a#0@0| |b#0@0|) |b#0@0|)) (= (_module.__default.Gcd |a#0@0| |b#0@0|) (_module.__default.Gcd (- |a#0@0| |b#0@0|) |b#0@0|))) (and (and (= $Heap@0 $Heap@5) (= |$rhs#0_7_0@1| (- |a0#0@1| |b0#0@1|))) (and (= |$rhs#0_7_1@1| (LitInt 0)) (= |pc1#0@3| |pc1#0@0|)))) (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |$rhs#0_7_1@1|))) (and (and (= |a#0@1| |$rhs#0_7_0@1|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 24) 5))))) anon56_correct)))))))))
(let ((anon81_Else_correct  (=> (and (or (not (= |pc0#0@0| (LitInt 2))) (not true)) (= (ControlFlow 0 28) 24)) anon37_correct)))
(let ((anon81_Then_correct  (=> (and (= |pc0#0@0| (LitInt 2)) (= (ControlFlow 0 27) 24)) anon37_correct)))
(let ((anon87_Then_correct  (=> (= |pc1#0@0| (LitInt 1)) (=> (and (= |$rhs#0_3_1@1| (LitInt 2)) (= |pc1#0@3| |$rhs#0_3_1@1|)) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a#0@0|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |pc0#0@0|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 23) 5)))) anon56_correct)))))
(let ((anon86_Then_correct  (=> (= |pc1#0@0| (LitInt 0)) (=> (and (= |$rhs#0_4_1@1| (LitInt 1)) (= |pc1#0@3| |$rhs#0_4_1@1|)) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b#0@0|) (= |pc0#0@3| |pc0#0@0|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 22) 5)))) anon56_correct)))))
(let ((anon79_Then_correct  (=> (= |pc0#0@0| (LitInt 1)) (=> (and (= |$rhs#0_8_1@1| (LitInt 2)) (= |pc1#0@3| |pc1#0@0|)) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |$rhs#0_8_1@1|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b#0@0|)) (and (= |a0#0@2| |a0#0@1|) (= (ControlFlow 0 21) 5)))) anon56_correct)))))
(let ((anon78_Then_correct  (=> (= |pc0#0@0| (LitInt 0)) (=> (and (= |$rhs#0_9_1@1| (LitInt 1)) (= |pc1#0@3| |pc1#0@0|)) (=> (and (and (and (= |b#0@1| |b#0@0|) (= |a1#0@2| |a1#0@1|)) (and (= |b1#0@2| |b1#0@1|) (= |pc0#0@3| |$rhs#0_9_1@1|))) (and (and (= |a#0@1| |a#0@0|) (= |b0#0@2| |b0#0@1|)) (and (= |a0#0@2| |a#0@0|) (= (ControlFlow 0 20) 5)))) anon56_correct)))))
(let ((anon92_Else_correct  (=> (and (and (and (and (and (and (and (and (and (and (or (not (= |pc0#0@0| (LitInt 0))) (not true)) (or (not (= |pc0#0@0| (LitInt 1))) (not true))) (not (and (= |pc0#0@0| (LitInt 2)) (> |a0#0@1| |b0#0@1|)))) (not (and (= |pc0#0@0| (LitInt 2)) (< |a0#0@1| |b0#0@1|)))) (not (and (= |pc0#0@0| (LitInt 2)) (= |a0#0@1| |b0#0@1|)))) (or (not (= |pc1#0@0| (LitInt 0))) (not true))) (or (not (= |pc1#0@0| (LitInt 1))) (not true))) (not (and (= |pc1#0@0| (LitInt 2)) (> |b1#0@1| |a1#0@1|)))) (not (and (= |pc1#0@0| (LitInt 2)) (< |b1#0@1| |a1#0@1|)))) (not (and (= |pc1#0@0| (LitInt 2)) (= |b1#0@1| |a1#0@1|)))) (= (ControlFlow 0 3) (- 0 2))) false)))
(let ((anon77_Else_correct  (=> (not (and (= |pc0#0@0| (LitInt 3)) (= |pc1#0@0| (LitInt 3)))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 50) 20) anon78_Then_correct) (=> (= (ControlFlow 0 50) 21) anon79_Then_correct)) (=> (= (ControlFlow 0 50) 22) anon86_Then_correct)) (=> (= (ControlFlow 0 50) 23) anon87_Then_correct)) (=> (= (ControlFlow 0 50) 3) anon92_Else_correct)) (=> (= (ControlFlow 0 50) 48) anon93_Then_correct)) (=> (= (ControlFlow 0 50) 49) anon93_Else_correct)) (=> (= (ControlFlow 0 50) 45) anon91_Then_correct)) (=> (= (ControlFlow 0 50) 46) anon91_Else_correct)) (=> (= (ControlFlow 0 50) 42) anon89_Then_correct)) (=> (= (ControlFlow 0 50) 43) anon89_Else_correct)) (=> (= (ControlFlow 0 50) 33) anon85_Then_correct)) (=> (= (ControlFlow 0 50) 34) anon85_Else_correct)) (=> (= (ControlFlow 0 50) 30) anon83_Then_correct)) (=> (= (ControlFlow 0 50) 31) anon83_Else_correct)) (=> (= (ControlFlow 0 50) 27) anon81_Then_correct)) (=> (= (ControlFlow 0 50) 28) anon81_Else_correct)))))
(let ((anon30_correct  (and (=> (= (ControlFlow 0 55) 53) anon77_Then_correct) (=> (= (ControlFlow 0 55) 50) anon77_Else_correct))))
(let ((anon76_Else_correct  (=> (and (or (not (= |pc0#0@0| (LitInt 3))) (not true)) (= (ControlFlow 0 57) 55)) anon30_correct)))
(let ((anon76_Then_correct  (=> (and (= |pc0#0@0| (LitInt 3)) (= (ControlFlow 0 56) 55)) anon30_correct)))
(let ((anon59_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 58) 56) anon76_Then_correct) (=> (= (ControlFlow 0 58) 57) anon76_Else_correct)))))
(let ((anon58_LoopBody_correct  (and (=> (= (ControlFlow 0 102) 101) anon59_Then_correct) (=> (= (ControlFlow 0 102) 58) anon59_Else_correct))))
(let ((anon58_LoopDone_correct true))
(let ((anon58_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and (and (and (and (and (and (not false) (<= 1 |A#0|)) (<= 1 |B#0|)) (and (<= 0 |pc0#0@0|) (< |pc0#0@0| 4))) (and (<= 0 |pc1#0@0|) (< |pc1#0@0| 4))) (= |$rhs#2@0| 0)) (= |$rhs#3@0| 0)) (=> |$w$loop#0@0| (< 0 |a#0@0|))) (and (=> |$w$loop#0@0| (< 0 |b#0@0|)) (=> |$w$loop#0@0| (and (|_module.__default.Gcd#canCall| |A#0| |B#0|) (|_module.__default.Gcd#canCall| |a#0@0| |b#0@0|))))) (and (and (and (and (=> |$w$loop#0@0| (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |a#0@0| |b#0@0|))) (=> |$w$loop#0@0| (<= (LitInt 0) |pc0#0@0|))) (and (=> |$w$loop#0@0| (< |pc0#0@0| 4)) (=> |$w$loop#0@0| (<= (LitInt 0) |pc1#0@0|)))) (and (and (=> |$w$loop#0@0| (< |pc1#0@0| 4)) (=> |$w$loop#0@0| (or (= |pc0#0@0| (LitInt 0)) (= |a0#0@1| |a#0@0|)))) (and (=> |$w$loop#0@0| (or (= |pc1#0@0| (LitInt 0)) (= |b1#0@1| |b#0@0|))) (=> |$w$loop#0@0| (=> (= |pc0#0@0| (LitInt 2)) (<= |b#0@0| |b0#0@1|)))))) (and (and (and (=> |$w$loop#0@0| (=> (= |pc0#0@0| (LitInt 2)) (=> (<= |b0#0@1| |a0#0@1|) (= |b0#0@1| |b#0@0|)))) (=> |$w$loop#0@0| (=> (= |pc1#0@0| (LitInt 2)) (<= |a#0@0| |a1#0@1|)))) (and (=> |$w$loop#0@0| (=> (= |pc1#0@0| (LitInt 2)) (=> (<= |a1#0@1| |b1#0@1|) (= |a1#0@1| |a#0@0|)))) (=> |$w$loop#0@0| (=> (= |pc0#0@0| (LitInt 3)) (= |a#0@0| |b#0@0|))))) (and (and (=> |$w$loop#0@0| (=> (= |pc1#0@0| (LitInt 3)) (= |a#0@0| |b#0@0|))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@0)))
 :qid |Problem2dfy.79:3|
 :skolemid |665|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap@@1 $Heap@0) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Problem2dfy.79:3|
 :skolemid |666|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0))
))))))) (and (=> (= (ControlFlow 0 103) 1) anon58_LoopDone_correct) (=> (= (ControlFlow 0 103) 102) anon58_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (= |$rhs#2@0| (LitInt 0)) (= |$rhs#3@0| (LitInt 0))) (and (=> (= (ControlFlow 0 104) (- 0 119)) (=> |$w$loop#0@0| (< 0 |A#0|))) (=> (=> |$w$loop#0@0| (< 0 |A#0|)) (and (=> (= (ControlFlow 0 104) (- 0 118)) (=> |$w$loop#0@0| (< 0 |B#0|))) (=> (=> |$w$loop#0@0| (< 0 |B#0|)) (and (=> (= (ControlFlow 0 104) (- 0 117)) (=> |$w$loop#0@0| (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |A#0| |B#0|)))) (=> (=> |$w$loop#0@0| (= (_module.__default.Gcd |A#0| |B#0|) (_module.__default.Gcd |A#0| |B#0|))) (and (=> (= (ControlFlow 0 104) (- 0 116)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|)) (and (=> (= (ControlFlow 0 104) (- 0 115)) (=> |$w$loop#0@0| (< |$rhs#2@0| 4))) (=> (=> |$w$loop#0@0| (< |$rhs#2@0| 4)) (and (=> (= (ControlFlow 0 104) (- 0 114)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#3@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#3@0|)) (and (=> (= (ControlFlow 0 104) (- 0 113)) (=> |$w$loop#0@0| (< |$rhs#3@0| 4))) (=> (=> |$w$loop#0@0| (< |$rhs#3@0| 4)) (and (=> (= (ControlFlow 0 104) (- 0 112)) (=> |$w$loop#0@0| (or (= |$rhs#2@0| (LitInt 0)) (= |a0#0@0| |A#0|)))) (=> (=> |$w$loop#0@0| (or (= |$rhs#2@0| (LitInt 0)) (= |a0#0@0| |A#0|))) (and (=> (= (ControlFlow 0 104) (- 0 111)) (=> |$w$loop#0@0| (or (= |$rhs#3@0| (LitInt 0)) (= |b1#0@0| |B#0|)))) (=> (=> |$w$loop#0@0| (or (= |$rhs#3@0| (LitInt 0)) (= |b1#0@0| |B#0|))) (and (=> (= (ControlFlow 0 104) (- 0 110)) (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 2)) (<= |B#0| |b0#0@0|)))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 2)) (<= |B#0| |b0#0@0|))) (and (=> (= (ControlFlow 0 104) (- 0 109)) (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 2)) (=> (<= |b0#0@0| |a0#0@0|) (= |b0#0@0| |B#0|))))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 2)) (=> (<= |b0#0@0| |a0#0@0|) (= |b0#0@0| |B#0|)))) (and (=> (= (ControlFlow 0 104) (- 0 108)) (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 2)) (<= |A#0| |a1#0@0|)))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 2)) (<= |A#0| |a1#0@0|))) (and (=> (= (ControlFlow 0 104) (- 0 107)) (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 2)) (=> (<= |a1#0@0| |b1#0@0|) (= |a1#0@0| |A#0|))))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 2)) (=> (<= |a1#0@0| |b1#0@0|) (= |a1#0@0| |A#0|)))) (and (=> (= (ControlFlow 0 104) (- 0 106)) (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 3)) (= |A#0| |B#0|)))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#2@0| (LitInt 3)) (= |A#0| |B#0|))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 3)) (= |A#0| |B#0|)))) (=> (=> |$w$loop#0@0| (=> (= |$rhs#3@0| (LitInt 3)) (= |A#0| |B#0|))) (=> (= (ControlFlow 0 104) 103) anon58_LoopHead_correct)))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (= 7 $FunctionContextHeight) (> |A#0| 0)) (and (> |B#0| 0) (= (ControlFlow 0 120) 104))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
