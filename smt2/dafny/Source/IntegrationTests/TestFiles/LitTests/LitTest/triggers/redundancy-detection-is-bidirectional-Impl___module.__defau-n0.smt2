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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@4))
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
 :skolemid |622|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.__default.P (Int Int) Bool)
(declare-fun _module.__default.R (Int) Bool)
(declare-fun _module.__default.Q (Int) Bool)
(declare-fun |_module.__default.Q#canCall| (Int) Bool)
(declare-fun |_module.__default.R#canCall| (Int) Bool)
(declare-fun |_module.__default.P#canCall| (Int Int) Bool)
(declare-fun |y#4@0| () Int)
(declare-fun |x#4@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |y#2@0| () Int)
(declare-fun |x#2@0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.M)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon21_correct  (=> (and (forall ((|x#5| Int) (|y#5| Int) ) (!  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (|_module.__default.Q#canCall| |y#5|) (=> (not (_module.__default.Q |y#5|)) (and (|_module.__default.R#canCall| |x#5|) (=> (not (_module.__default.R |x#5|)) (|_module.__default.P#canCall| |x#5| |y#5|))))))
 :qid |redundancydetectionisbidirectionaldfy.15:17|
 :skolemid |596|
 :pattern ( (_module.__default.P |x#5| |y#5|))
 :pattern ( (_module.__default.R |x#5|) (_module.__default.Q |y#5|))
)) (= (ControlFlow 0 5) (- 0 4))) (forall ((|x#5@@0| Int) (|y#5@@0| Int) ) (!  (or (or (or true (_module.__default.Q |y#5@@0|)) (_module.__default.R |x#5@@0|)) (_module.__default.P |x#5@@0| |y#5@@0|))
 :qid |redundancydetectionisbidirectionaldfy.15:17|
 :skolemid |598|
 :pattern ( (_module.__default.P |x#5@@0| |y#5@@0|))
 :pattern ( (_module.__default.R |x#5@@0|) (_module.__default.Q |y#5@@0|))
)))))
(let ((anon33_Else_correct  (=> (and (or (or true (_module.__default.Q |y#4@0|)) (_module.__default.R |x#4@0|)) (= (ControlFlow 0 7) 5)) anon21_correct)))
(let ((anon33_Then_correct  (=> (not (or (or true (_module.__default.Q |y#4@0|)) (_module.__default.R |x#4@0|))) (=> (and (and ($IsAlloc intType (int_2_U |x#4@0|) TInt $Heap) ($IsAlloc intType (int_2_U |y#4@0|) TInt $Heap)) (and (|_module.__default.P#canCall| |x#4@0| |y#4@0|) (= (ControlFlow 0 6) 5))) anon21_correct))))
(let ((anon32_Else_correct  (=> (or true (_module.__default.Q |y#4@0|)) (and (=> (= (ControlFlow 0 9) 6) anon33_Then_correct) (=> (= (ControlFlow 0 9) 7) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (not (or true (_module.__default.Q |y#4@0|))) (=> (and ($IsAlloc intType (int_2_U |x#4@0|) TInt $Heap) (|_module.__default.R#canCall| |x#4@0|)) (and (=> (= (ControlFlow 0 8) 6) anon33_Then_correct) (=> (= (ControlFlow 0 8) 7) anon33_Else_correct))))))
(let ((anon31_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 11) 8) anon32_Then_correct) (=> (= (ControlFlow 0 11) 9) anon32_Else_correct)))))
(let ((anon31_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($IsAlloc intType (int_2_U |y#4@0|) TInt $Heap) (|_module.__default.Q#canCall| |y#4@0|)) (and (=> (= (ControlFlow 0 10) 8) anon32_Then_correct) (=> (= (ControlFlow 0 10) 9) anon32_Else_correct))))))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 12) 10) anon31_Then_correct) (=> (= (ControlFlow 0 12) 11) anon31_Else_correct))))
(let ((anon30_Else_correct true))
(let ((anon14_correct  (=> (forall ((|x#3| Int) (|y#3| Int) ) (!  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (|_module.__default.Q#canCall| |y#3|) (=> (not (_module.__default.Q |y#3|)) (and (|_module.__default.P#canCall| |x#3| |y#3|) (=> (not (_module.__default.P |x#3| |y#3|)) (|_module.__default.R#canCall| |x#3|))))))
 :qid |redundancydetectionisbidirectionaldfy.14:17|
 :skolemid |593|
 :pattern ( (_module.__default.R |x#3|) (_module.__default.Q |y#3|))
 :pattern ( (_module.__default.P |x#3| |y#3|))
)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((|x#3@@0| Int) (|y#3@@0| Int) ) (!  (or (or (or true (_module.__default.Q |y#3@@0|)) (_module.__default.P |x#3@@0| |y#3@@0|)) (_module.__default.R |x#3@@0|))
 :qid |redundancydetectionisbidirectionaldfy.14:17|
 :skolemid |595|
 :pattern ( (_module.__default.R |x#3@@0|) (_module.__default.Q |y#3@@0|))
 :pattern ( (_module.__default.P |x#3@@0| |y#3@@0|))
))) (=> (forall ((|x#3@@1| Int) (|y#3@@1| Int) ) (!  (or (or (or true (_module.__default.Q |y#3@@1|)) (_module.__default.P |x#3@@1| |y#3@@1|)) (_module.__default.R |x#3@@1|))
 :qid |redundancydetectionisbidirectionaldfy.14:17|
 :skolemid |595|
 :pattern ( (_module.__default.R |x#3@@1|) (_module.__default.Q |y#3@@1|))
 :pattern ( (_module.__default.P |x#3@@1| |y#3@@1|))
)) (and (=> (= (ControlFlow 0 13) 12) anon30_Then_correct) (=> (= (ControlFlow 0 13) 3) anon30_Else_correct)))))))
(let ((anon29_Else_correct  (=> (and (or (or true (_module.__default.Q |y#2@0|)) (_module.__default.P |x#2@0| |y#2@0|)) (= (ControlFlow 0 16) 13)) anon14_correct)))
(let ((anon29_Then_correct  (=> (and (and (not (or (or true (_module.__default.Q |y#2@0|)) (_module.__default.P |x#2@0| |y#2@0|))) ($IsAlloc intType (int_2_U |x#2@0|) TInt $Heap)) (and (|_module.__default.R#canCall| |x#2@0|) (= (ControlFlow 0 15) 13))) anon14_correct)))
(let ((anon28_Else_correct  (=> (or true (_module.__default.Q |y#2@0|)) (and (=> (= (ControlFlow 0 18) 15) anon29_Then_correct) (=> (= (ControlFlow 0 18) 16) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (and (and (not (or true (_module.__default.Q |y#2@0|))) ($IsAlloc intType (int_2_U |x#2@0|) TInt $Heap)) (and ($IsAlloc intType (int_2_U |y#2@0|) TInt $Heap) (|_module.__default.P#canCall| |x#2@0| |y#2@0|))) (and (=> (= (ControlFlow 0 17) 15) anon29_Then_correct) (=> (= (ControlFlow 0 17) 16) anon29_Else_correct)))))
(let ((anon27_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 20) 17) anon28_Then_correct) (=> (= (ControlFlow 0 20) 18) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($IsAlloc intType (int_2_U |y#2@0|) TInt $Heap) (|_module.__default.Q#canCall| |y#2@0|)) (and (=> (= (ControlFlow 0 19) 17) anon28_Then_correct) (=> (= (ControlFlow 0 19) 18) anon28_Else_correct))))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 21) 19) anon27_Then_correct) (=> (= (ControlFlow 0 21) 20) anon27_Else_correct))))
(let ((anon26_Else_correct true))
(let ((anon7_correct  (=> (forall ((|x#1| Int) (|y#1| Int) ) (!  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (|_module.__default.P#canCall| |x#1| |y#1|) (=> (not (_module.__default.P |x#1| |y#1|)) (and (|_module.__default.Q#canCall| |y#1|) (=> (not (_module.__default.Q |y#1|)) (|_module.__default.R#canCall| |x#1|))))))
 :qid |redundancydetectionisbidirectionaldfy.13:17|
 :skolemid |590|
 :pattern ( (_module.__default.R |x#1|) (_module.__default.Q |y#1|))
 :pattern ( (_module.__default.P |x#1| |y#1|))
)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((|x#1@@0| Int) (|y#1@@0| Int) ) (!  (or (or (or true (_module.__default.P |x#1@@0| |y#1@@0|)) (_module.__default.Q |y#1@@0|)) (_module.__default.R |x#1@@0|))
 :qid |redundancydetectionisbidirectionaldfy.13:17|
 :skolemid |592|
 :pattern ( (_module.__default.R |x#1@@0|) (_module.__default.Q |y#1@@0|))
 :pattern ( (_module.__default.P |x#1@@0| |y#1@@0|))
))) (=> (forall ((|x#1@@1| Int) (|y#1@@1| Int) ) (!  (or (or (or true (_module.__default.P |x#1@@1| |y#1@@1|)) (_module.__default.Q |y#1@@1|)) (_module.__default.R |x#1@@1|))
 :qid |redundancydetectionisbidirectionaldfy.13:17|
 :skolemid |592|
 :pattern ( (_module.__default.R |x#1@@1|) (_module.__default.Q |y#1@@1|))
 :pattern ( (_module.__default.P |x#1@@1| |y#1@@1|))
)) (and (=> (= (ControlFlow 0 22) 21) anon26_Then_correct) (=> (= (ControlFlow 0 22) 2) anon26_Else_correct)))))))
(let ((anon25_Else_correct  (=> (and (or (or true (_module.__default.P |x#0@0| |y#0@0|)) (_module.__default.Q |y#0@0|)) (= (ControlFlow 0 25) 22)) anon7_correct)))
(let ((anon25_Then_correct  (=> (and (and (not (or (or true (_module.__default.P |x#0@0| |y#0@0|)) (_module.__default.Q |y#0@0|))) ($IsAlloc intType (int_2_U |x#0@0|) TInt $Heap)) (and (|_module.__default.R#canCall| |x#0@0|) (= (ControlFlow 0 24) 22))) anon7_correct)))
(let ((anon24_Else_correct  (=> (or true (_module.__default.P |x#0@0| |y#0@0|)) (and (=> (= (ControlFlow 0 27) 24) anon25_Then_correct) (=> (= (ControlFlow 0 27) 25) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (not (or true (_module.__default.P |x#0@0| |y#0@0|))) (=> (and ($IsAlloc intType (int_2_U |y#0@0|) TInt $Heap) (|_module.__default.Q#canCall| |y#0@0|)) (and (=> (= (ControlFlow 0 26) 24) anon25_Then_correct) (=> (= (ControlFlow 0 26) 25) anon25_Else_correct))))))
(let ((anon23_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 29) 26) anon24_Then_correct) (=> (= (ControlFlow 0 29) 27) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) ($IsAlloc intType (int_2_U |x#0@0|) TInt $Heap)) (and ($IsAlloc intType (int_2_U |y#0@0|) TInt $Heap) (|_module.__default.P#canCall| |x#0@0| |y#0@0|))) (and (=> (= (ControlFlow 0 28) 26) anon24_Then_correct) (=> (= (ControlFlow 0 28) 27) anon24_Else_correct)))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 30) 28) anon23_Then_correct) (=> (= (ControlFlow 0 30) 29) anon23_Else_correct))))
(let ((anon22_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 31) 30) anon22_Then_correct) (=> (= (ControlFlow 0 31) 1) anon22_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 32) 31))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
