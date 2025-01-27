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
(declare-fun |$let#0$canCall| () Bool)
(declare-fun _module.__default.LetSuchThat__P (Int) Bool)
(declare-fun |$let#0_q| () Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(assert  (=> |$let#0$canCall| (_module.__default.LetSuchThat__P |$let#0_q|)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2651|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
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
 :skolemid |3849|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2652|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2695|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2674|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##x#5@0| () Int)
(declare-fun |u#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |_module.__default.LetSuchThat__P#canCall| (Int) Bool)
(declare-fun |t#0@0| () Int)
(declare-fun |a#0@0| () Int)
(declare-fun |b#0@0| () Int)
(declare-fun |q#1@0| () Int)
(declare-fun |t#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |g#0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.LetSuchThat0)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon12_correct  (=> (and (and (= |##x#5@0| (- |u#0@0| 1)) ($IsAlloc intType (int_2_U |##x#5@0|) TInt $Heap)) (and (|_module.__default.LetSuchThat__P#canCall| (- |u#0@0| 1)) (|_module.__default.LetSuchThat__P#canCall| (- |u#0@0| 1)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (_module.__default.LetSuchThat__P (- |u#0@0| 1))) (=> (_module.__default.LetSuchThat__P (- |u#0@0| 1)) (=> (and (and ($IsAlloc intType (int_2_U |u#0@0|) TInt $Heap) (|_module.__default.LetSuchThat__P#canCall| |u#0@0|)) (and (|_module.__default.LetSuchThat__P#canCall| |u#0@0|) (= (ControlFlow 0 5) (- 0 4)))) (_module.__default.LetSuchThat__P |u#0@0|)))))))
(let ((anon18_Else_correct  (=> (and (not (forall ((|a#1| Int) (|b#1| Int) ) (!  (=> (and (_module.__default.LetSuchThat__P |a#1|) (_module.__default.LetSuchThat__P |b#1|)) (= |a#1| |b#1|))
 :qid |SmallTestsdfy.683:14|
 :skolemid |3260|
 :pattern ( (_module.__default.LetSuchThat__P |b#1|) (_module.__default.LetSuchThat__P |a#1|))
))) (= (ControlFlow 0 9) 5)) anon12_correct)))
(let ((anon18_Then_correct  (=> (forall ((|a#1@@0| Int) (|b#1@@0| Int) ) (!  (=> (and (_module.__default.LetSuchThat__P |a#1@@0|) (_module.__default.LetSuchThat__P |b#1@@0|)) (= |a#1@@0| |b#1@@0|))
 :qid |SmallTestsdfy.683:14|
 :skolemid |3260|
 :pattern ( (_module.__default.LetSuchThat__P |b#1@@0|) (_module.__default.LetSuchThat__P |a#1@@0|))
)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< |t#0@0| |u#0@0|)) (=> (< |t#0@0| |u#0@0|) (=> (= (ControlFlow 0 7) 5) anon12_correct))))))
(let ((anon9_correct  (=> (forall ((|a#1@@1| Int) (|b#1@@1| Int) ) (!  (and (|_module.__default.LetSuchThat__P#canCall| |a#1@@1|) (=> (_module.__default.LetSuchThat__P |a#1@@1|) (|_module.__default.LetSuchThat__P#canCall| |b#1@@1|)))
 :qid |SmallTestsdfy.683:14|
 :skolemid |3259|
 :pattern ( (_module.__default.LetSuchThat__P |b#1@@1|) (_module.__default.LetSuchThat__P |a#1@@1|))
)) (and (=> (= (ControlFlow 0 10) 7) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (not (and (_module.__default.LetSuchThat__P |a#0@0|) (_module.__default.LetSuchThat__P |b#0@0|))) (= (ControlFlow 0 12) 10)) anon9_correct)))
(let ((anon17_Then_correct  (=> (and (and (_module.__default.LetSuchThat__P |a#0@0|) (_module.__default.LetSuchThat__P |b#0@0|)) (= (ControlFlow 0 11) 10)) anon9_correct)))
(let ((anon16_Else_correct  (=> (not (_module.__default.LetSuchThat__P |a#0@0|)) (and (=> (= (ControlFlow 0 14) 11) anon17_Then_correct) (=> (= (ControlFlow 0 14) 12) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (_module.__default.LetSuchThat__P |a#0@0|) (=> (and ($IsAlloc intType (int_2_U |b#0@0|) TInt $Heap) (|_module.__default.LetSuchThat__P#canCall| |b#0@0|)) (and (=> (= (ControlFlow 0 13) 11) anon17_Then_correct) (=> (= (ControlFlow 0 13) 12) anon17_Else_correct))))))
(let ((anon15_Then_correct  (=> (and ($IsAlloc intType (int_2_U |a#0@0|) TInt $Heap) (|_module.__default.LetSuchThat__P#canCall| |a#0@0|)) (and (=> (= (ControlFlow 0 15) 13) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct)))))
(let ((anon15_Else_correct true))
(let ((anon14_Then_correct  (=> (and ($IsAlloc intType (int_2_U |q#1@0|) TInt $Heap) (|_module.__default.LetSuchThat__P#canCall| |q#1@0|)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.LetSuchThat__P (LitInt 0))) (exists ((|q#0| Int) ) (! (_module.__default.LetSuchThat__P |q#0|)
 :qid |SmallTestsdfy.682:22|
 :skolemid |3258|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.LetSuchThat__P (LitInt 0))) (exists ((|q#0@@0| Int) ) (! (_module.__default.LetSuchThat__P |q#0@@0|)
 :qid |SmallTestsdfy.682:22|
 :skolemid |3258|
))) (=> (and (and (_module.__default.LetSuchThat__P |q#1@0|) |$let#0$canCall|) (and |$let#0$canCall| (= |u#0@0| (let ((|q#0@@1| |$let#0_q|))
(+ |q#0@@1| 1))))) (and (=> (= (ControlFlow 0 16) 15) anon15_Then_correct) (=> (= (ControlFlow 0 16) 3) anon15_Else_correct))))))))
(let ((anon14_Else_correct true))
(let ((anon13_Then_correct  (=> ($IsAlloc intType (int_2_U |t#1@0|) TInt $Heap) (=> (and (|_module.__default.LetSuchThat__P#canCall| |t#1@0|) (|_module.__default.LetSuchThat__P#canCall| |t#1@0|)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.LetSuchThat__P (LitInt 0))) (exists ((|$as#t0#0| Int) ) (! (_module.__default.LetSuchThat__P |$as#t0#0|)
 :qid |SmallTestsdfy.681:7|
 :skolemid |3257|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (_module.__default.LetSuchThat__P (LitInt 0))) (exists ((|$as#t0#0@@0| Int) ) (! (_module.__default.LetSuchThat__P |$as#t0#0@@0|)
 :qid |SmallTestsdfy.681:7|
 :skolemid |3257|
))) (=> (_module.__default.LetSuchThat__P |t#0@0|) (and (=> (= (ControlFlow 0 18) 16) anon14_Then_correct) (=> (= (ControlFlow 0 18) 2) anon14_Else_correct)))))))))
(let ((anon13_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 20) 18) anon13_Then_correct) (=> (= (ControlFlow 0 20) 1) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (= 1 $FunctionContextHeight)) (and (_module.__default.LetSuchThat__P |g#0|) (= (ControlFlow 0 21) 20))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
