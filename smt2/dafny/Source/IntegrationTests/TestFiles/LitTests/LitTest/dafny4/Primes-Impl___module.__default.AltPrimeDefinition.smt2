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
(declare-fun _module.__default.IsPrime__Alt (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.IsPrime__Alt#canCall| (Int) Bool)
(declare-fun _module.__default.IsPrime (Int) Bool)
(declare-fun |_module.__default.IsPrime#canCall| (Int) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
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
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|_module.__default.IsPrime__Alt#canCall| (LitInt |n#0|)) (< 1 $FunctionContextHeight)) (and (=> (<= (LitInt 2) (LitInt |n#0|)) (forall ((|m#1| Int) ) (!  (=> (<= (LitInt 2) |m#1|) (=> (< |m#1| |n#0|) (|_module.__default.IsPrime#canCall| |m#1|)))
 :qid |Primesdfy.137:20|
 :skolemid |644|
 :pattern ( (_module.__default.IsPrime |m#1|))
))) (= (_module.__default.IsPrime__Alt (LitInt |n#0|))  (and (<= (LitInt 2) (LitInt |n#0|)) (forall ((|m#1@@0| Int) ) (!  (=> (and (and (<= (LitInt 2) |m#1@@0|) (< |m#1@@0| |n#0|)) (_module.__default.IsPrime |m#1@@0|)) (or (not (= (Mod |n#0| |m#1@@0|) 0)) (not true)))
 :qid |Primesdfy.137:20|
 :skolemid |643|
 :pattern ( (_module.__default.IsPrime |m#1@@0|))
))))))
 :qid |Primesdfy.135:29|
 :weight 3
 :skolemid |645|
 :pattern ( (_module.__default.IsPrime__Alt (LitInt |n#0|)))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@0| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| |n#0@@0|) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime |n#0@@0|)  (and (<= (LitInt 2) |n#0@@0|) (forall ((|m#0| Int) ) (!  (=> (and (<= (LitInt 2) |m#0|) (< |m#0| |n#0@@0|)) (or (not (= (Mod |n#0@@0| |m#0|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |530|
 :pattern ( (Mod |n#0@@0| |m#0|))
)))))
 :qid |Primesdfy.4:25|
 :skolemid |531|
 :pattern ( (_module.__default.IsPrime |n#0@@0|))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@1| Int) ) (!  (=> (or (|_module.__default.IsPrime#canCall| (LitInt |n#0@@1|)) (< 0 $FunctionContextHeight)) (= (_module.__default.IsPrime (LitInt |n#0@@1|))  (and (<= (LitInt 2) (LitInt |n#0@@1|)) (forall ((|m#1@@1| Int) ) (!  (=> (and (<= (LitInt 2) |m#1@@1|) (< |m#1@@1| |n#0@@1|)) (or (not (= (Mod |n#0@@1| |m#1@@1|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |532|
 :pattern ( (Mod |n#0@@1| |m#1@@1|))
)))))
 :qid |Primesdfy.4:25|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.IsPrime (LitInt |n#0@@1|)))
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
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|n#0@@2| Int) ) (!  (=> (or (|_module.__default.IsPrime__Alt#canCall| |n#0@@2|) (< 1 $FunctionContextHeight)) (and (=> (<= (LitInt 2) |n#0@@2|) (forall ((|m#0@@0| Int) ) (!  (=> (<= (LitInt 2) |m#0@@0|) (=> (< |m#0@@0| |n#0@@2|) (|_module.__default.IsPrime#canCall| |m#0@@0|)))
 :qid |Primesdfy.137:20|
 :skolemid |641|
 :pattern ( (_module.__default.IsPrime |m#0@@0|))
))) (= (_module.__default.IsPrime__Alt |n#0@@2|)  (and (<= (LitInt 2) |n#0@@2|) (forall ((|m#0@@1| Int) ) (!  (=> (and (and (<= (LitInt 2) |m#0@@1|) (< |m#0@@1| |n#0@@2|)) (_module.__default.IsPrime |m#0@@1|)) (or (not (= (Mod |n#0@@2| |m#0@@1|) 0)) (not true)))
 :qid |Primesdfy.137:20|
 :skolemid |640|
 :pattern ( (_module.__default.IsPrime |m#0@@1|))
))))))
 :qid |Primesdfy.135:29|
 :skolemid |642|
 :pattern ( (_module.__default.IsPrime__Alt |n#0@@2|))
))))
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
(declare-fun |call2formal@a#0@0| () Int)
(declare-fun |n#0@@3| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |m#0_0@0| () Int)
(declare-fun |call3formal@b#0@0| () Int)
(declare-fun |k#0_0_0_0@0| () Int)
(declare-fun |b##0_0_0_0_3_0@0| () Int)
(declare-fun |j##0_0_0_0_3_0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.AltPrimeDefinition)
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
 (=> (= (ControlFlow 0 0) 64) (let ((anon17_correct  (=> (and (and (=> (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|)) (= (ControlFlow 0 46) (- 0 45))) (= (Mod |n#0@@3| |call2formal@a#0@0|) (LitInt 0))) (not (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) (_module.__default.IsPrime |call2formal@a#0@0|))))))
(let ((anon45_Else_correct  (=> (and (not (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|))) (= (ControlFlow 0 48) 46)) anon17_correct)))
(let ((anon45_Then_correct  (=> (and (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) ($IsAlloc intType (int_2_U |call2formal@a#0@0|) TInt $Heap@0)) (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (= (ControlFlow 0 47) 46))) anon17_correct)))
(let ((anon44_Else_correct  (=> (< |call2formal@a#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 50) 47) anon45_Then_correct) (=> (= (ControlFlow 0 50) 48) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (<= (LitInt 2) |call2formal@a#0@0|) (and (=> (= (ControlFlow 0 49) 47) anon45_Then_correct) (=> (= (ControlFlow 0 49) 48) anon45_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (or (not (= |call2formal@a#0@0| 0)) (not true)) (= (Mod |n#0@@3| |call2formal@a#0@0|) (LitInt 0))) (and (=> (= (ControlFlow 0 51) 49) anon44_Then_correct) (=> (= (ControlFlow 0 51) 50) anon44_Else_correct)))))
(let ((anon26_correct  (and (=> (= (ControlFlow 0 32) (- 0 35)) (<= (LitInt 2) |call2formal@a#0@0|)) (and (=> (= (ControlFlow 0 32) (- 0 34)) (< |call2formal@a#0@0| |m#0_0@0|)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (< |m#0_0@0| |n#0@@3|)) (=> (and (and (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |m#0_0@0|)) (< |m#0_0@0| |n#0@@3|)) (and ($IsAlloc intType (int_2_U |call2formal@a#0@0|) TInt $Heap@0) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|))) (and (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (= (ControlFlow 0 32) (- 0 31))) (not (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) (_module.__default.IsPrime |call2formal@a#0@0|))))) (not (_module.__default.IsPrime |call2formal@a#0@0|))))))))
(let ((anon50_Else_correct  (=> (and (not (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |m#0_0@0|))) (= (ControlFlow 0 37) 32)) anon26_correct)))
(let ((anon50_Then_correct  (=> (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |m#0_0@0|)) (= (ControlFlow 0 36) 32)) anon26_correct)))
(let ((anon49_Else_correct  (=> (< |call2formal@a#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 39) 36) anon50_Then_correct) (=> (= (ControlFlow 0 39) 37) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (<= (LitInt 2) |call2formal@a#0@0|) (and (=> (= (ControlFlow 0 38) 36) anon50_Then_correct) (=> (= (ControlFlow 0 38) 37) anon50_Else_correct)))))
(let ((anon22_correct  (=> (and (=> (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|)) (not (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) (_module.__default.IsPrime |call2formal@a#0@0|)))) (and (=> (= (ControlFlow 0 40) 38) anon49_Then_correct) (=> (= (ControlFlow 0 40) 39) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (not (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|))) (= (ControlFlow 0 42) 40)) anon22_correct)))
(let ((anon48_Then_correct  (=> (and (and (and (<= (LitInt 2) |call2formal@a#0@0|) (< |call2formal@a#0@0| |n#0@@3|)) ($IsAlloc intType (int_2_U |call2formal@a#0@0|) TInt $Heap@0)) (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (= (ControlFlow 0 41) 40))) anon22_correct)))
(let ((anon47_Else_correct  (=> (< |call2formal@a#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 44) 41) anon48_Then_correct) (=> (= (ControlFlow 0 44) 42) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (<= (LitInt 2) |call2formal@a#0@0|) (and (=> (= (ControlFlow 0 43) 41) anon48_Then_correct) (=> (= (ControlFlow 0 43) 42) anon48_Else_correct)))))
(let ((anon51_Then_correct  (=> ($IsAlloc intType (int_2_U |call2formal@a#0@0|) TInt $Heap@0) (=> (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|)) (=> (and (and (not (_module.__default.IsPrime |call2formal@a#0@0|)) (= (ControlFlow 0 29) (- 0 28))) (not (_module.__default.IsPrime |call2formal@a#0@0|))) (U_2_bool (Lit boolType (bool_2_U false))))))))
(let ((anon42_Then_correct  (=> (= (Mul (Mul |call2formal@a#0@0| |call3formal@b#0@0|) |k#0_0_0_0@0|) |n#0@@3|) (and (=> (= (ControlFlow 0 20) (- 0 27)) ($Is intType (int_2_U |call2formal@a#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |call2formal@a#0@0|) Tclass._System.nat) (and (=> (= (ControlFlow 0 20) (- 0 26)) ($Is intType (int_2_U (Mul |call3formal@b#0@0| |k#0_0_0_0@0|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (Mul |call3formal@b#0@0| |k#0_0_0_0@0|)) Tclass._System.nat) (=> (= |b##0_0_0_0_3_0@0| (Mul |call3formal@b#0@0| |k#0_0_0_0@0|)) (and (=> (= (ControlFlow 0 20) (- 0 25)) ($Is intType (int_2_U |n#0@@3|) Tclass._System.nat)) (=> ($Is intType (int_2_U |n#0@@3|) Tclass._System.nat) (and (=> (= (ControlFlow 0 20) (- 0 24)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |j##0_0_0_0_3_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (= (Mul |call2formal@a#0@0| |b##0_0_0_0_3_0@0|) |n#0@@3|)) (=> (= (Mul |call2formal@a#0@0| |b##0_0_0_0_3_0@0|) |n#0@@3|) (and (=> (= (ControlFlow 0 20) (- 0 22)) (< |j##0_0_0_0_3_0@0| |call2formal@a#0@0|)) (=> (< |j##0_0_0_0_3_0@0| |call2formal@a#0@0|) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= (Mod (+ |n#0@@3| |j##0_0_0_0_3_0@0|) |call2formal@a#0@0|) |j##0_0_0_0_3_0@0|) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= |call2formal@a#0@0| 0)) (not true))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> (= (Mul (Mul |call2formal@a#0@0| |call3formal@b#0@0|) |k#0_0_0_0@0|) |n#0@@3|) (= (Mod |n#0@@3| |call2formal@a#0@0|) (LitInt 0)))))))))))))))))))))))
(let ((anon41_Then_correct  (=> (and (and (= (Mul |m#0_0@0| |k#0_0_0_0@0|) |n#0@@3|) (= (ControlFlow 0 18) (- 0 17))) (= (Mul |m#0_0@0| |k#0_0_0_0@0|) |n#0@@3|)) (= (Mul (Mul |call2formal@a#0@0| |call3formal@b#0@0|) |k#0_0_0_0@0|) |n#0@@3|))))
(let ((anon40_Then_correct  (=> (or (not (= |m#0_0@0| 0)) (not true)) (=> (and (and (= |k#0_0_0_0@0| (Div |n#0@@3| |m#0_0@0|)) (= (ControlFlow 0 16) (- 0 15))) (= |k#0_0_0_0@0| (Div |n#0@@3| |m#0_0@0|))) (= (Mul |m#0_0@0| |k#0_0_0_0@0|) |n#0@@3|)))))
(let ((anon39_Then_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |m#0_0@0| 0)) (not true))) (=> (= (ControlFlow 0 13) (- 0 12)) (=> (U_2_bool (Lit boolType (bool_2_U true))) (= |k#0_0_0_0@0| (Div |n#0@@3| |m#0_0@0|)))))))
(let ((anon38_Then_correct true))
(let ((anon31_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (or (not (= (Mod |n#0@@3| |m#0_0@0|) 0)) (not true)))))
(let ((anon51_Else_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U  (=> true false)))) (= (ControlFlow 0 30) 8)) anon31_correct)))
(let ((anon37_Then_correct  (=> (= (Mod |n#0@@3| |m#0_0@0|) (LitInt 0)) (and (=> (= (ControlFlow 0 52) (- 0 53)) (or (not (= |m#0_0@0| 0)) (not true))) (=> (or (not (= |m#0_0@0| 0)) (not true)) (=> (= |k#0_0_0_0@0| (Div |n#0@@3| |m#0_0@0|)) (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 52) 11) anon38_Then_correct) (=> (= (ControlFlow 0 52) 13) anon39_Then_correct)) (=> (= (ControlFlow 0 52) 16) anon40_Then_correct)) (=> (= (ControlFlow 0 52) 18) anon41_Then_correct)) (=> (= (ControlFlow 0 52) 20) anon42_Then_correct)) (=> (= (ControlFlow 0 52) 51) anon43_Then_correct)) (=> (= (ControlFlow 0 52) 29) anon51_Then_correct)) (=> (= (ControlFlow 0 52) 30) anon51_Else_correct)) (=> (= (ControlFlow 0 52) 43) anon47_Then_correct)) (=> (= (ControlFlow 0 52) 44) anon47_Else_correct))))))))
(let ((anon37_Else_correct  (=> (and (or (not (= (Mod |n#0@@3| |m#0_0@0|) (LitInt 0))) (not true)) (= (ControlFlow 0 10) 8)) anon31_correct)))
(let ((anon36_Then_correct  (=> (not (_module.__default.IsPrime |m#0_0@0|)) (and (=> (= (ControlFlow 0 54) (- 0 57)) (<= (LitInt 2) |m#0_0@0|)) (=> (<= (LitInt 2) |m#0_0@0|) (and (=> (= (ControlFlow 0 54) (- 0 56)) (not (_module.__default.IsPrime |m#0_0@0|))) (=> (not (_module.__default.IsPrime |m#0_0@0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (<= (LitInt 2) |call2formal@a#0@0|)) (=> (and (and (and (< |call2formal@a#0@0| |m#0_0@0|) (<= (LitInt 2) |call3formal@b#0@0|)) (and (= (Mul |call2formal@a#0@0| |call3formal@b#0@0|) |m#0_0@0|) (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|))) (and (and (|_module.__default.IsPrime#canCall| |call2formal@a#0@0|) (and (_module.__default.IsPrime |call2formal@a#0@0|) (and (<= (LitInt 2) |call2formal@a#0@0|) (forall ((|m#0@@2| Int) ) (!  (=> (and (<= (LitInt 2) |m#0@@2|) (< |m#0@@2| |call2formal@a#0@0|)) (or (not (= (Mod |call2formal@a#0@0| |m#0@@2|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |662|
 :pattern ( (Mod |call2formal@a#0@0| |m#0@@2|))
))))) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (or (not (= |m#0_0@0| 0)) (not true))) (=> (or (not (= |m#0_0@0| 0)) (not true)) (and (=> (= (ControlFlow 0 54) 52) anon37_Then_correct) (=> (= (ControlFlow 0 54) 10) anon37_Else_correct)))))))))))))
(let ((anon36_Else_correct  (=> (and (_module.__default.IsPrime |m#0_0@0|) (= (ControlFlow 0 9) 8)) anon31_correct)))
(let ((anon35_Else_correct  (=> ($IsAlloc intType (int_2_U |m#0_0@0|) TInt $Heap) (=> (and (|_module.__default.IsPrime#canCall| |m#0_0@0|) (|_module.__default.IsPrime#canCall| |m#0_0@0|)) (and (=> (= (ControlFlow 0 58) 54) anon36_Then_correct) (=> (= (ControlFlow 0 58) 9) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (or (not (= |m#0_0@0| 0)) (not true)))))
(let ((anon3_correct  (=> (and (<= (LitInt 2) |m#0_0@0|) (< |m#0_0@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 59) 6) anon35_Then_correct) (=> (= (ControlFlow 0 59) 58) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (< |m#0_0@0| (LitInt 2)) (= (ControlFlow 0 61) 59)) anon3_correct)))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 2) |m#0_0@0|) (= (ControlFlow 0 60) 59)) anon3_correct)))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 62) 60) anon34_Then_correct) (=> (= (ControlFlow 0 62) 61) anon34_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.IsPrime#canCall| |n#0@@3|) (or (_module.__default.IsPrime |n#0@@3|) (<= (LitInt 2) |n#0@@3|)))) (=> (=> (|_module.__default.IsPrime#canCall| |n#0@@3|) (or (_module.__default.IsPrime |n#0@@3|) (<= (LitInt 2) |n#0@@3|))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.IsPrime#canCall| |n#0@@3|) (or (_module.__default.IsPrime |n#0@@3|) (forall ((|m#3| Int) ) (!  (=> (and (<= (LitInt 2) |m#3|) (< |m#3| |n#0@@3|)) (or (not (= (Mod |n#0@@3| |m#3|) 0)) (not true)))
 :qid |Primesdfy.6:20|
 :skolemid |656|
 :pattern ( (Mod |n#0@@3| |m#3|))
)))))))))
(let ((anon33_Else_correct  (=> (and (forall ((|m#0_1| Int) ) (!  (=> (and (<= (LitInt 2) |m#0_1|) (< |m#0_1| |n#0@@3|)) (or (not (= (Mod |n#0@@3| |m#0_1|) 0)) (not true)))
 :qid |Primesdfy.145:10|
 :skolemid |660|
 :pattern ( (Mod |n#0@@3| |m#0_1|))
)) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 63) 62) anon33_Then_correct) (=> (= (ControlFlow 0 63) 4) anon33_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 2 $FunctionContextHeight)) (and (and (|_module.__default.IsPrime__Alt#canCall| |n#0@@3|) (and (_module.__default.IsPrime__Alt |n#0@@3|) (and (<= (LitInt 2) |n#0@@3|) (forall ((|m#2| Int) ) (!  (=> (and (and (<= (LitInt 2) |m#2|) (< |m#2| |n#0@@3|)) (_module.__default.IsPrime |m#2|)) (or (not (= (Mod |n#0@@3| |m#2|) 0)) (not true)))
 :qid |Primesdfy.137:20|
 :skolemid |655|
 :pattern ( (_module.__default.IsPrime |m#2|))
))))) (= (ControlFlow 0 64) 63))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
