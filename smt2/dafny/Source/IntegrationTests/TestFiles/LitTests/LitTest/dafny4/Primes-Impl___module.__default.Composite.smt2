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
(declare-fun _module.__default.IsPrime (Int) Bool)
(declare-fun |_module.__default.IsPrime#canCall| (Int) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun Div (Int Int) Int)
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
(declare-fun Mul (Int Int) Int)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| |n#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime |n#0|)  (and (<= (LitInt 2) |n#0|) (forall ((|m#0| Int) ) (!  (=> (and (<= (LitInt 2) |m#0|) (< |m#0| |n#0|)) (or (not (= (Mod |n#0| |m#0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |530|
 :pattern ( (Mod |n#0| |m#0|))
)))))
 :qid |Primesdfy.4:25|
 :skolemid |531|
 :pattern ( (_module.__default.IsPrime |n#0|))
))))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@0| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| (LitInt |n#0@@0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime (LitInt |n#0@@0|))  (and (<= (LitInt 2) (LitInt |n#0@@0|)) (forall ((|m#1| Int) ) (!  (=> (and (<= (LitInt 2) |m#1|) (< |m#1| |n#0@@0|)) (or (not (= (Mod |n#0@@0| |m#1|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |532|
 :pattern ( (Mod |n#0@@0| |m#1|))
)))))
 :qid |Primesdfy.4:25|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.IsPrime (LitInt |n#0@@0|)))
))))
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
 :skolemid |700|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (forall ((x@@8 Int) (y@@1 Int) ) (! (= (Mul x@@8 y@@1) (* x@@8 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@8 y@@1))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@10)) (Lit BoxType ($Box T@@2 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@10)))
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
(declare-fun |c#0| () Int)
(declare-fun |m#0_1_0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |a#0@1| () Int)
(declare-fun |b#0@1| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun |b#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@a#0@0| () Int)
(declare-fun |call3formal@b#0@0| () Int)
(declare-fun |$rhs#1_1@0| () Int)
(declare-fun |a#1@0| () Int)
(declare-fun |m#0_0_2@0| () Int)
(declare-fun |m#0_0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Composite)
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
 (=> (= (ControlFlow 0 0) 70) (let ((anon43_Else_correct true))
(let ((anon10_correct  (=> (= (ControlFlow 0 58) (- 0 57)) (=> (not (_module.__default.IsPrime |c#0|)) (not (and (<= (LitInt 2) |c#0|) (forall ((|m#0_0_1| Int) ) (!  (=> (and (<= (LitInt 2) |m#0_0_1|) (< |m#0_0_1| |c#0|)) (or (not (= (Mod |c#0| |m#0_0_1|) 0)) (not true)))
 :qid |Primesdfy.178:24|
 :skolemid |669|
 :pattern ( (Mod |c#0| |m#0_0_1|))
))))))))
(let ((anon45_Else_correct  (=> (and (not (and (<= (LitInt 2) |m#0_1_0@0|) (< |m#0_1_0@0| |c#0|))) (= (ControlFlow 0 63) 58)) anon10_correct)))
(let ((anon45_Then_correct  (=> (and (<= (LitInt 2) |m#0_1_0@0|) (< |m#0_1_0@0| |c#0|)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (or (not (= |m#0_1_0@0| 0)) (not true))) (=> (= (ControlFlow 0 61) 58) anon10_correct)))))
(let ((anon44_Else_correct  (=> (< |m#0_1_0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 65) 61) anon45_Then_correct) (=> (= (ControlFlow 0 65) 63) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (<= (LitInt 2) |m#0_1_0@0|) (and (=> (= (ControlFlow 0 64) 61) anon45_Then_correct) (=> (= (ControlFlow 0 64) 63) anon45_Else_correct)))))
(let ((anon43_Then_correct  (and (=> (= (ControlFlow 0 66) 64) anon44_Then_correct) (=> (= (ControlFlow 0 66) 65) anon44_Else_correct))))
(let ((anon42_Then_correct  (=> (<= (LitInt 2) |c#0|) (and (=> (= (ControlFlow 0 67) 66) anon43_Then_correct) (=> (= (ControlFlow 0 67) 60) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (< |c#0| (LitInt 2)) (= (ControlFlow 0 59) 58)) anon10_correct)))
(let ((anon41_Then_correct  (=> (and (and ($IsAlloc intType (int_2_U |c#0|) TInt $Heap) (|_module.__default.IsPrime#canCall| |c#0|)) (and (|_module.__default.IsPrime#canCall| |c#0|) (not (_module.__default.IsPrime |c#0|)))) (and (=> (= (ControlFlow 0 68) 67) anon42_Then_correct) (=> (= (ControlFlow 0 68) 59) anon42_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 24) (- 0 29)) (<= (LitInt 2) |a#0@1|)) (=> (<= (LitInt 2) |a#0@1|) (and (=> (= (ControlFlow 0 24) (- 0 28)) (< |a#0@1| |c#0|)) (=> (< |a#0@1| |c#0|) (and (=> (= (ControlFlow 0 24) (- 0 27)) (<= (LitInt 2) |b#0@1|)) (=> (<= (LitInt 2) |b#0@1|) (and (=> (= (ControlFlow 0 24) (- 0 26)) (= (Mul |a#0@1| |b#0@1|) |c#0|)) (=> (= (Mul |a#0@1| |b#0@1|) |c#0|) (and (=> (= (ControlFlow 0 24) (- 0 25)) (=> (|_module.__default.IsPrime#canCall| |a#0@1|) (or (_module.__default.IsPrime |a#0@1|) (<= (LitInt 2) |a#0@1|)))) (=> (=> (|_module.__default.IsPrime#canCall| |a#0@1|) (or (_module.__default.IsPrime |a#0@1|) (<= (LitInt 2) |a#0@1|))) (=> (= (ControlFlow 0 24) (- 0 23)) (=> (|_module.__default.IsPrime#canCall| |a#0@1|) (or (_module.__default.IsPrime |a#0@1|) (forall ((|m#1@@0| Int) ) (!  (=> (and (<= (LitInt 2) |m#1@@0|) (< |m#1@@0| |a#0@1|)) (or (not (= (Mod |a#0@1| |m#1@@0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |663|
 :pattern ( (Mod |a#0@1| |m#1@@0|))
)))))))))))))))))
(let ((anon60_Else_correct  (=> (and (and (_module.__default.IsPrime |a#0@0|) (= |a#0@1| |a#0@0|)) (and (= |b#0@1| |b#0@0|) (= (ControlFlow 0 35) 24))) GeneratedUnifiedExit_correct)))
(let ((anon60_Then_correct  (=> (not (_module.__default.IsPrime |a#0@0|)) (and (=> (= (ControlFlow 0 30) (- 0 34)) (or (<= 0 |c#0|) (= |a#0@0| |c#0|))) (=> (or (<= 0 |c#0|) (= |a#0@0| |c#0|)) (and (=> (= (ControlFlow 0 30) (- 0 33)) (< |a#0@0| |c#0|)) (=> (< |a#0@0| |c#0|) (and (=> (= (ControlFlow 0 30) (- 0 32)) (<= (LitInt 2) |a#0@0|)) (=> (<= (LitInt 2) |a#0@0|) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (_module.__default.IsPrime |a#0@0|))) (=> (not (_module.__default.IsPrime |a#0@0|)) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (<= (LitInt 2) |call2formal@a#0@0|)) (and (and (< |call2formal@a#0@0| |a#0@0|) (<= (LitInt 2) |call3formal@b#0@0|)) (and (= (Mul |call2formal@a#0@0| |call3formal@b#0@0|) |a#0@0|) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|)))) (and (and (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (and (_module.__default.IsPrime |call2formal@a#0@0|) (and (<= (LitInt 2) |call2formal@a#0@0|) (forall ((|m#0@@0| Int) ) (!  (=> (and (<= (LitInt 2) |m#0@@0|) (< |m#0@@0| |call2formal@a#0@0|)) (or (not (= (Mod |call2formal@a#0@0| |m#0@@0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |662|
 :pattern ( (Mod |call2formal@a#0@0| |m#0@@0|))
))))) (= $Heap $Heap@0)) (and (and (= |$rhs#1_1@0| (Mul |call3formal@b#0@0| |b#0@0|)) (= |a#0@1| |call2formal@a#0@0|)) (and (= |b#0@1| |$rhs#1_1@0|) (= (ControlFlow 0 30) 24))))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon36_correct  (and (=> (= (ControlFlow 0 36) (- 0 40)) (<= (LitInt 2) |a#0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (< |a#0@0| |c#0|)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (<= (LitInt 2) |b#0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (= (Mul |a#0@0| |b#0@0|) |c#0|)) (=> (and (and (and (and (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|)) (<= (LitInt 2) |b#0@0|)) (= (Mul |a#0@0| |b#0@0|) |c#0|)) ($IsAlloc intType (int_2_U |a#0@0|) TInt $Heap)) (and (|_module.__default.IsPrime#canCall| |a#0@0|) (|_module.__default.IsPrime#canCall| |a#0@0|))) (and (=> (= (ControlFlow 0 36) 30) anon60_Then_correct) (=> (= (ControlFlow 0 36) 35) anon60_Else_correct)))))))))
(let ((anon59_Else_correct  (=> (and (not (and (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|)) (<= (LitInt 2) |b#0@0|))) (= (ControlFlow 0 42) 36)) anon36_correct)))
(let ((anon59_Then_correct  (=> (and (and (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|)) (<= (LitInt 2) |b#0@0|)) (= (ControlFlow 0 41) 36)) anon36_correct)))
(let ((anon58_Else_correct  (=> (not (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|))) (and (=> (= (ControlFlow 0 44) 41) anon59_Then_correct) (=> (= (ControlFlow 0 44) 42) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|)) (and (=> (= (ControlFlow 0 43) 41) anon59_Then_correct) (=> (= (ControlFlow 0 43) 42) anon59_Else_correct)))))
(let ((anon57_Else_correct  (=> (< |a#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 46) 43) anon58_Then_correct) (=> (= (ControlFlow 0 46) 44) anon58_Else_correct)))))
(let ((anon57_Then_correct  (=> (<= (LitInt 2) |a#0@0|) (and (=> (= (ControlFlow 0 45) 43) anon58_Then_correct) (=> (= (ControlFlow 0 45) 44) anon58_Else_correct)))))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 47) (- 0 49)) (or (and ($Is intType (int_2_U (- |c#0| 1)) TInt) (and (and (<= (LitInt 2) (- |c#0| 1)) (< (- |c#0| 1) |c#0|)) (= (Mod |c#0| (- |c#0| 1)) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (and (and (<= (LitInt 2) (LitInt 2)) (< 2 |c#0|)) (= (Mod |c#0| (LitInt 2)) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 2) (LitInt 0)) (< 0 |c#0|)) (= (Mod |c#0| (LitInt 0)) (LitInt 0)))) (exists ((|$as#a0#0| Int) ) (!  (and (and (<= (LitInt 2) |$as#a0#0|) (< |$as#a0#0| |c#0|)) (= (Mod |c#0| |$as#a0#0|) (LitInt 0)))
 :qid |Primesdfy.181:3|
 :skolemid |671|
)))))) (=> (or (and ($Is intType (int_2_U (- |c#0| 1)) TInt) (and (and (<= (LitInt 2) (- |c#0| 1)) (< (- |c#0| 1) |c#0|)) (= (Mod |c#0| (- |c#0| 1)) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (and (and (<= (LitInt 2) (LitInt 2)) (< 2 |c#0|)) (= (Mod |c#0| (LitInt 2)) (LitInt 0)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (and (<= (LitInt 2) (LitInt 0)) (< 0 |c#0|)) (= (Mod |c#0| (LitInt 0)) (LitInt 0)))) (exists ((|$as#a0#0@@0| Int) ) (!  (and (and (<= (LitInt 2) |$as#a0#0@@0|) (< |$as#a0#0@@0| |c#0|)) (= (Mod |c#0| |$as#a0#0@@0|) (LitInt 0)))
 :qid |Primesdfy.181:3|
 :skolemid |671|
))))) (=> (and (and (<= (LitInt 2) |a#0@0|) (< |a#0@0| |c#0|)) (= (Mod |c#0| |a#0@0|) (LitInt 0))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (or (not (= |a#0@0| 0)) (not true))) (=> (or (not (= |a#0@0| 0)) (not true)) (=> (= |b#0@0| (Div |c#0| |a#0@0|)) (and (=> (= (ControlFlow 0 47) 45) anon57_Then_correct) (=> (= (ControlFlow 0 47) 46) anon57_Else_correct))))))))))
(let ((anon56_Else_correct  (=> (and (not (and (<= (LitInt 2) |a#1@0|) (< |a#1@0| |c#0|))) (= (ControlFlow 0 52) 47)) anon29_correct)))
(let ((anon56_Then_correct  (=> (and (<= (LitInt 2) |a#1@0|) (< |a#1@0| |c#0|)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (or (not (= |a#1@0| 0)) (not true))) (=> (= (ControlFlow 0 50) 47) anon29_correct)))))
(let ((anon55_Else_correct  (=> (< |a#1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 54) 50) anon56_Then_correct) (=> (= (ControlFlow 0 54) 52) anon56_Else_correct)))))
(let ((anon55_Then_correct  (=> (<= (LitInt 2) |a#1@0|) (and (=> (= (ControlFlow 0 53) 50) anon56_Then_correct) (=> (= (ControlFlow 0 53) 52) anon56_Else_correct)))))
(let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 55) 53) anon55_Then_correct) (=> (= (ControlFlow 0 55) 54) anon55_Else_correct))))
(let ((anon54_Else_correct true))
(let ((anon46_Else_correct  (=> (=> true (exists ((|m#0_0_3| Int) ) (!  (and (and (<= (LitInt 2) |m#0_0_3|) (< |m#0_0_3| |c#0|)) (= (Mod |c#0| |m#0_0_3|) (LitInt 0)))
 :qid |Primesdfy.179:12|
 :skolemid |670|
 :pattern ( (Mod |c#0| |m#0_0_3|))
))) (and (=> (= (ControlFlow 0 56) 55) anon54_Then_correct) (=> (= (ControlFlow 0 56) 22) anon54_Else_correct)))))
(let ((anon48_Else_correct true))
(let ((anon23_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (not (and (<= (LitInt 2) |c#0|) (forall ((|m#0_0_1@@0| Int) ) (!  (=> (and (<= (LitInt 2) |m#0_0_1@@0|) (< |m#0_0_1@@0| |c#0|)) (or (not (= (Mod |c#0| |m#0_0_1@@0|) 0)) (not true)))
 :qid |Primesdfy.178:24|
 :skolemid |666|
 :pattern ( (Mod |c#0| |m#0_0_1@@0|))
)))) (exists ((|m#0_0_3@@0| Int) ) (!  (and (and (<= (LitInt 2) |m#0_0_3@@0|) (< |m#0_0_3@@0| |c#0|)) (= (Mod |c#0| |m#0_0_3@@0|) (LitInt 0)))
 :qid |Primesdfy.179:12|
 :skolemid |667|
 :pattern ( (Mod |c#0| |m#0_0_3@@0|))
))))))
(let ((anon53_Else_correct  (=> (and (not (and (<= (LitInt 2) |m#0_0_2@0|) (< |m#0_0_2@0| |c#0|))) (= (ControlFlow 0 9) 6)) anon23_correct)))
(let ((anon53_Then_correct  (=> (and (<= (LitInt 2) |m#0_0_2@0|) (< |m#0_0_2@0| |c#0|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= |m#0_0_2@0| 0)) (not true))) (=> (= (ControlFlow 0 7) 6) anon23_correct)))))
(let ((anon52_Else_correct  (=> (< |m#0_0_2@0| (LitInt 2)) (and (=> (= (ControlFlow 0 11) 7) anon53_Then_correct) (=> (= (ControlFlow 0 11) 9) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (<= (LitInt 2) |m#0_0_2@0|) (and (=> (= (ControlFlow 0 10) 7) anon53_Then_correct) (=> (= (ControlFlow 0 10) 9) anon53_Else_correct)))))
(let ((anon51_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon52_Then_correct) (=> (= (ControlFlow 0 12) 11) anon52_Else_correct))))
(let ((anon51_Else_correct true))
(let ((anon18_correct  (=> (not (and (<= (LitInt 2) |c#0|) (forall ((|m#0_0_1@@1| Int) ) (!  (=> (and (<= (LitInt 2) |m#0_0_1@@1|) (< |m#0_0_1@@1| |c#0|)) (or (not (= (Mod |c#0| |m#0_0_1@@1|) 0)) (not true)))
 :qid |Primesdfy.178:24|
 :skolemid |665|
 :pattern ( (Mod |c#0| |m#0_0_1@@1|))
)))) (and (=> (= (ControlFlow 0 13) 12) anon51_Then_correct) (=> (= (ControlFlow 0 13) 4) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (and (<= (LitInt 2) |m#0_0_0@0|) (< |m#0_0_0@0| |c#0|))) (= (ControlFlow 0 17) 13)) anon18_correct)))
(let ((anon50_Then_correct  (=> (and (and (<= (LitInt 2) |m#0_0_0@0|) (< |m#0_0_0@0| |c#0|)) (and (or (not (= |m#0_0_0@0| 0)) (not true)) (= (ControlFlow 0 16) 13))) anon18_correct)))
(let ((anon49_Else_correct  (=> (< |m#0_0_0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 19) 16) anon50_Then_correct) (=> (= (ControlFlow 0 19) 17) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (<= (LitInt 2) |m#0_0_0@0|) (and (=> (= (ControlFlow 0 18) 16) anon50_Then_correct) (=> (= (ControlFlow 0 18) 17) anon50_Else_correct)))))
(let ((anon48_Then_correct  (and (=> (= (ControlFlow 0 20) 18) anon49_Then_correct) (=> (= (ControlFlow 0 20) 19) anon49_Else_correct))))
(let ((anon47_Then_correct  (=> (<= (LitInt 2) |c#0|) (and (=> (= (ControlFlow 0 21) 20) anon48_Then_correct) (=> (= (ControlFlow 0 21) 15) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (< |c#0| (LitInt 2)) (= (ControlFlow 0 14) 13)) anon18_correct)))
(let ((anon40_Then_correct  (=> (and ($IsAlloc intType (int_2_U |c#0|) TInt $Heap) (|_module.__default.IsPrime#canCall| |c#0|)) (=> (and (and (|_module.__default.IsPrime#canCall| |c#0|) (= (ControlFlow 0 3) (- 0 2))) (U_2_bool (Lit boolType (bool_2_U true)))) (not (_module.__default.IsPrime |c#0|))))))
(let ((anon39_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 69) 1) anon39_Then_correct) (=> (= (ControlFlow 0 69) 3) anon40_Then_correct)) (=> (= (ControlFlow 0 69) 68) anon41_Then_correct)) (=> (= (ControlFlow 0 69) 56) anon46_Else_correct)) (=> (= (ControlFlow 0 69) 21) anon47_Then_correct)) (=> (= (ControlFlow 0 69) 14) anon47_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (= 1 $FunctionContextHeight) (<= (LitInt 2) |c#0|)) (and (not (_module.__default.IsPrime |c#0|)) (= (ControlFlow 0 70) 69))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
