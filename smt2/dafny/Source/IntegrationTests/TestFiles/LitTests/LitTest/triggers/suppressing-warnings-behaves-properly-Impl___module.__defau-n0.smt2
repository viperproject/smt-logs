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
 :skolemid |510|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_module.__default.f#canCall| (Int) Bool)
(declare-fun _module.__default.f (Int) Bool)
(declare-fun |n#16@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |n#14@0| () Int)
(declare-fun _module.__default.g (Int) Bool)
(declare-fun |_module.__default.g#canCall| (Int) Bool)
(declare-fun |n#12@0| () Int)
(declare-fun |##x#4@0| () Int)
(declare-fun |n#10@0| () Int)
(declare-fun |n#8@0| () Int)
(declare-fun |n#6@0| () Int)
(declare-fun |n#4@0| () Int)
(declare-fun |n#2@0| () Int)
(declare-fun |n#0@0| () Int)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon29_correct  (=> (and (forall ((|n#17| Int) ) (!  (=> (<= (LitInt 0) |n#17|) (|_module.__default.f#canCall| |n#17|))
 :qid |suppressingwarningsbehavesproperlydfy.20:17|
 :skolemid |507|
)) (= (ControlFlow 0 5) (- 0 4))) (forall ((|n#17@@0| Int) ) (!  (=> (<= (LitInt 0) |n#17@@0|) (or (=  (or (not (= |n#17@@0| 0)) (not true)) (_module.__default.f |n#17@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.20:17|
 :skolemid |509|
)))))
(let ((anon48_Else_correct  (=> (and (=  (or (not (= |n#16@0| 0)) (not true)) (_module.__default.f |n#16@0|)) (= (ControlFlow 0 8) 5)) anon29_correct)))
(let ((anon48_Then_correct  (=> (and (=  (or (not (= |n#16@0| 0)) (not true))  (not (_module.__default.f |n#16@0|))) (= (ControlFlow 0 7) 5)) anon29_correct)))
(let ((anon47_Then_correct  (=> (<= (LitInt 0) |n#16@0|) (=> (and ($IsAlloc intType (int_2_U |n#16@0|) TInt $Heap) (|_module.__default.f#canCall| |n#16@0|)) (and (=> (= (ControlFlow 0 9) 7) anon48_Then_correct) (=> (= (ControlFlow 0 9) 8) anon48_Else_correct))))))
(let ((anon47_Else_correct  (=> (and (< |n#16@0| (LitInt 0)) (= (ControlFlow 0 6) 5)) anon29_correct)))
(let ((anon26_correct  (=> (forall ((|n#15| Int) ) (!  (=> (<= (LitInt 0) |n#15|) (|_module.__default.f#canCall| |n#15|))
 :qid |suppressingwarningsbehavesproperlydfy.19:17|
 :skolemid |504|
 :pattern ( (_module.__default.f |n#15|))
)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((|n#15@@0| Int) ) (!  (=> (<= (LitInt 0) |n#15@@0|) (or (=  (or (not (= |n#15@@0| 0)) (not true)) (_module.__default.f |n#15@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.19:17|
 :skolemid |506|
 :pattern ( (_module.__default.f |n#15@@0|))
))) (=> (forall ((|n#15@@1| Int) ) (!  (=> (<= (LitInt 0) |n#15@@1|) (or (=  (or (not (= |n#15@@1| 0)) (not true)) (_module.__default.f |n#15@@1|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.19:17|
 :skolemid |506|
 :pattern ( (_module.__default.f |n#15@@1|))
)) (and (=> (= (ControlFlow 0 10) 9) anon47_Then_correct) (=> (= (ControlFlow 0 10) 6) anon47_Else_correct)))))))
(let ((anon46_Else_correct  (=> (and (=  (or (not (= |n#14@0| 0)) (not true)) (_module.__default.f |n#14@0|)) (= (ControlFlow 0 14) 10)) anon26_correct)))
(let ((anon46_Then_correct  (=> (and (=  (or (not (= |n#14@0| 0)) (not true))  (not (_module.__default.f |n#14@0|))) (= (ControlFlow 0 13) 10)) anon26_correct)))
(let ((anon45_Then_correct  (=> (<= (LitInt 0) |n#14@0|) (=> (and ($IsAlloc intType (int_2_U |n#14@0|) TInt $Heap) (|_module.__default.f#canCall| |n#14@0|)) (and (=> (= (ControlFlow 0 15) 13) anon46_Then_correct) (=> (= (ControlFlow 0 15) 14) anon46_Else_correct))))))
(let ((anon45_Else_correct  (=> (and (< |n#14@0| (LitInt 0)) (= (ControlFlow 0 12) 10)) anon26_correct)))
(let ((anon23_correct  (=> (forall ((|n#13| Int) (|_t#0#0| Int) ) (!  (=> (<= (LitInt 0) |n#13|) (=> (= |_t#0#0| (+ |n#13| 1)) (and (and (|_module.__default.f#canCall| |n#13|) (|_module.__default.f#canCall| |_t#0#0|)) (=> (= (_module.__default.f |n#13|)  (not (_module.__default.f |_t#0#0|))) (|_module.__default.g#canCall| |n#13|)))))
 :qid |suppressingwarningsbehavesproperlydfy.18:17|
 :skolemid |501|
 :pattern ( (_module.__default.g |n#13|) (_module.__default.f |_t#0#0|))
 :pattern ( (_module.__default.f |_t#0#0|) (_module.__default.f |n#13|))
)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((|n#13@@0| Int) (|_t#0#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |n#13@@0|) (= |_t#0#0@@0| (+ |n#13@@0| 1))) (or (or (= (_module.__default.f |n#13@@0|) (_module.__default.f |_t#0#0@@0|)) (_module.__default.g |n#13@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.18:17|
 :skolemid |503|
 :pattern ( (_module.__default.g |n#13@@0|) (_module.__default.f |_t#0#0@@0|))
 :pattern ( (_module.__default.f |_t#0#0@@0|) (_module.__default.f |n#13@@0|))
))) (=> (forall ((|n#13@@1| Int) (|_t#0#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |n#13@@1|) (= |_t#0#0@@1| (+ |n#13@@1| 1))) (or (or (= (_module.__default.f |n#13@@1|) (_module.__default.f |_t#0#0@@1|)) (_module.__default.g |n#13@@1|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.18:17|
 :skolemid |503|
 :pattern ( (_module.__default.g |n#13@@1|) (_module.__default.f |_t#0#0@@1|))
 :pattern ( (_module.__default.f |_t#0#0@@1|) (_module.__default.f |n#13@@1|))
)) (and (=> (= (ControlFlow 0 16) 15) anon45_Then_correct) (=> (= (ControlFlow 0 16) 12) anon45_Else_correct)))))))
(let ((anon44_Else_correct  (=> (and (or (= (_module.__default.f |n#12@0|) (_module.__default.f (+ |n#12@0| 1))) (_module.__default.g |n#12@0|)) (= (ControlFlow 0 20) 16)) anon23_correct)))
(let ((anon44_Then_correct  (=> (and (not (or (= (_module.__default.f |n#12@0|) (_module.__default.f (+ |n#12@0| 1))) (_module.__default.g |n#12@0|))) (= (ControlFlow 0 19) 16)) anon23_correct)))
(let ((anon43_Else_correct  (=> (= (_module.__default.f |n#12@0|) (_module.__default.f (+ |n#12@0| 1))) (and (=> (= (ControlFlow 0 22) 19) anon44_Then_correct) (=> (= (ControlFlow 0 22) 20) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (= (_module.__default.f |n#12@0|)  (not (_module.__default.f (+ |n#12@0| 1)))) (=> (and ($IsAlloc intType (int_2_U |n#12@0|) TInt $Heap) (|_module.__default.g#canCall| |n#12@0|)) (and (=> (= (ControlFlow 0 21) 19) anon44_Then_correct) (=> (= (ControlFlow 0 21) 20) anon44_Else_correct))))))
(let ((anon42_Then_correct  (=> (and (<= (LitInt 0) |n#12@0|) ($IsAlloc intType (int_2_U |n#12@0|) TInt $Heap)) (=> (and (and (|_module.__default.f#canCall| |n#12@0|) (= |##x#4@0| (+ |n#12@0| 1))) (and ($IsAlloc intType (int_2_U |##x#4@0|) TInt $Heap) (|_module.__default.f#canCall| (+ |n#12@0| 1)))) (and (=> (= (ControlFlow 0 23) 21) anon43_Then_correct) (=> (= (ControlFlow 0 23) 22) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (< |n#12@0| (LitInt 0)) (= (ControlFlow 0 18) 16)) anon23_correct)))
(let ((anon18_correct  (=> (forall ((|n#11| Int) ) (!  (=> (<= (LitInt 0) |n#11|) (|_module.__default.f#canCall| |n#11|))
 :qid |suppressingwarningsbehavesproperlydfy.16:17|
 :skolemid |498|
)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (forall ((|n#11@@0| Int) ) (!  (=> (<= (LitInt 0) |n#11@@0|) (or (=  (or (not (= |n#11@@0| 0)) (not true)) (_module.__default.f |n#11@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.16:17|
 :skolemid |500|
))) (=> (forall ((|n#11@@1| Int) ) (!  (=> (<= (LitInt 0) |n#11@@1|) (or (=  (or (not (= |n#11@@1| 0)) (not true)) (_module.__default.f |n#11@@1|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.16:17|
 :skolemid |500|
)) (and (=> (= (ControlFlow 0 24) 23) anon42_Then_correct) (=> (= (ControlFlow 0 24) 18) anon42_Else_correct)))))))
(let ((anon41_Else_correct  (=> (and (=  (or (not (= |n#10@0| 0)) (not true)) (_module.__default.f |n#10@0|)) (= (ControlFlow 0 28) 24)) anon18_correct)))
(let ((anon41_Then_correct  (=> (and (=  (or (not (= |n#10@0| 0)) (not true))  (not (_module.__default.f |n#10@0|))) (= (ControlFlow 0 27) 24)) anon18_correct)))
(let ((anon40_Then_correct  (=> (<= (LitInt 0) |n#10@0|) (=> (and ($IsAlloc intType (int_2_U |n#10@0|) TInt $Heap) (|_module.__default.f#canCall| |n#10@0|)) (and (=> (= (ControlFlow 0 29) 27) anon41_Then_correct) (=> (= (ControlFlow 0 29) 28) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (and (< |n#10@0| (LitInt 0)) (= (ControlFlow 0 26) 24)) anon18_correct)))
(let ((anon15_correct  (=> (forall ((|n#9| Int) ) (!  (=> (<= (LitInt 0) |n#9|) (|_module.__default.f#canCall| |n#9|))
 :qid |suppressingwarningsbehavesproperlydfy.15:17|
 :skolemid |495|
 :pattern ( (_module.__default.f |n#9|))
)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (forall ((|n#9@@0| Int) ) (!  (=> (<= (LitInt 0) |n#9@@0|) (or (=  (or (not (= |n#9@@0| 0)) (not true)) (_module.__default.f |n#9@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.15:17|
 :skolemid |497|
 :pattern ( (_module.__default.f |n#9@@0|))
))) (=> (forall ((|n#9@@1| Int) ) (!  (=> (<= (LitInt 0) |n#9@@1|) (or (=  (or (not (= |n#9@@1| 0)) (not true)) (_module.__default.f |n#9@@1|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.15:17|
 :skolemid |497|
 :pattern ( (_module.__default.f |n#9@@1|))
)) (and (=> (= (ControlFlow 0 30) 29) anon40_Then_correct) (=> (= (ControlFlow 0 30) 26) anon40_Else_correct)))))))
(let ((anon39_Else_correct  (=> (and (=  (or (not (= |n#8@0| 0)) (not true)) (_module.__default.f |n#8@0|)) (= (ControlFlow 0 34) 30)) anon15_correct)))
(let ((anon39_Then_correct  (=> (and (=  (or (not (= |n#8@0| 0)) (not true))  (not (_module.__default.f |n#8@0|))) (= (ControlFlow 0 33) 30)) anon15_correct)))
(let ((anon38_Then_correct  (=> (<= (LitInt 0) |n#8@0|) (=> (and ($IsAlloc intType (int_2_U |n#8@0|) TInt $Heap) (|_module.__default.f#canCall| |n#8@0|)) (and (=> (= (ControlFlow 0 35) 33) anon39_Then_correct) (=> (= (ControlFlow 0 35) 34) anon39_Else_correct))))))
(let ((anon38_Else_correct  (=> (and (< |n#8@0| (LitInt 0)) (= (ControlFlow 0 32) 30)) anon15_correct)))
(let ((anon12_correct  (=> (forall ((|n#7| Int) ) (!  (=> (<= (LitInt 0) |n#7|) (|_module.__default.f#canCall| |n#7|))
 :qid |suppressingwarningsbehavesproperlydfy.14:17|
 :skolemid |492|
 :pattern ( (_module.__default.f |n#7|))
)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((|n#7@@0| Int) ) (!  (=> (<= (LitInt 0) |n#7@@0|) (or (=  (or (not (= |n#7@@0| 0)) (not true)) (_module.__default.f |n#7@@0|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.14:17|
 :skolemid |494|
 :pattern ( (_module.__default.f |n#7@@0|))
))) (=> (forall ((|n#7@@1| Int) ) (!  (=> (<= (LitInt 0) |n#7@@1|) (or (=  (or (not (= |n#7@@1| 0)) (not true)) (_module.__default.f |n#7@@1|)) true))
 :qid |suppressingwarningsbehavesproperlydfy.14:17|
 :skolemid |494|
 :pattern ( (_module.__default.f |n#7@@1|))
)) (and (=> (= (ControlFlow 0 36) 35) anon38_Then_correct) (=> (= (ControlFlow 0 36) 32) anon38_Else_correct)))))))
(let ((anon37_Else_correct  (=> (and (=  (or (not (= |n#6@0| 0)) (not true)) (_module.__default.f |n#6@0|)) (= (ControlFlow 0 40) 36)) anon12_correct)))
(let ((anon37_Then_correct  (=> (and (=  (or (not (= |n#6@0| 0)) (not true))  (not (_module.__default.f |n#6@0|))) (= (ControlFlow 0 39) 36)) anon12_correct)))
(let ((anon36_Then_correct  (=> (<= (LitInt 0) |n#6@0|) (=> (and ($IsAlloc intType (int_2_U |n#6@0|) TInt $Heap) (|_module.__default.f#canCall| |n#6@0|)) (and (=> (= (ControlFlow 0 41) 39) anon37_Then_correct) (=> (= (ControlFlow 0 41) 40) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (< |n#6@0| (LitInt 0)) (= (ControlFlow 0 38) 36)) anon12_correct)))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((|n#5| Int) ) (!  (or (>= |n#5| (LitInt 0)) (< |n#5| 0))
 :qid |suppressingwarningsbehavesproperlydfy.12:17|
 :skolemid |491|
))) (=> (forall ((|n#5@@0| Int) ) (!  (or (>= |n#5@@0| (LitInt 0)) (< |n#5@@0| 0))
 :qid |suppressingwarningsbehavesproperlydfy.12:17|
 :skolemid |491|
)) (and (=> (= (ControlFlow 0 42) 41) anon36_Then_correct) (=> (= (ControlFlow 0 42) 38) anon36_Else_correct))))))
(let ((anon35_Else_correct  (=> (and (>= |n#4@0| (LitInt 0)) (= (ControlFlow 0 45) 42)) anon9_correct)))
(let ((anon35_Then_correct  (=> (and (> (LitInt 0) |n#4@0|) (= (ControlFlow 0 44) 42)) anon9_correct)))
(let ((anon34_Then_correct  (and (=> (= (ControlFlow 0 46) 44) anon35_Then_correct) (=> (= (ControlFlow 0 46) 45) anon35_Else_correct))))
(let ((anon34_Else_correct true))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 47) (- 0 48)) (forall ((|n#3| Int) ) (!  (or (>= |n#3| (LitInt 0)) (< |n#3| 0))
 :qid |suppressingwarningsbehavesproperlydfy.11:17|
 :skolemid |489|
))) (=> (forall ((|n#3@@0| Int) ) (!  (or (>= |n#3@@0| (LitInt 0)) (< |n#3@@0| 0))
 :qid |suppressingwarningsbehavesproperlydfy.11:17|
 :skolemid |489|
)) (and (=> (= (ControlFlow 0 47) 46) anon34_Then_correct) (=> (= (ControlFlow 0 47) 3) anon34_Else_correct))))))
(let ((anon33_Else_correct  (=> (and (>= |n#2@0| (LitInt 0)) (= (ControlFlow 0 50) 47)) anon6_correct)))
(let ((anon33_Then_correct  (=> (and (> (LitInt 0) |n#2@0|) (= (ControlFlow 0 49) 47)) anon6_correct)))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 51) 49) anon33_Then_correct) (=> (= (ControlFlow 0 51) 50) anon33_Else_correct))))
(let ((anon32_Else_correct true))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 52) (- 0 53)) (forall ((|n#1| Int) ) (!  (or (>= |n#1| (LitInt 0)) (< |n#1| 0))
 :qid |suppressingwarningsbehavesproperlydfy.10:17|
 :skolemid |487|
))) (=> (forall ((|n#1@@0| Int) ) (!  (or (>= |n#1@@0| (LitInt 0)) (< |n#1@@0| 0))
 :qid |suppressingwarningsbehavesproperlydfy.10:17|
 :skolemid |487|
)) (and (=> (= (ControlFlow 0 52) 51) anon32_Then_correct) (=> (= (ControlFlow 0 52) 2) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (and (>= |n#0@0| (LitInt 0)) (= (ControlFlow 0 55) 52)) anon3_correct)))
(let ((anon31_Then_correct  (=> (and (> (LitInt 0) |n#0@0|) (= (ControlFlow 0 54) 52)) anon3_correct)))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 56) 54) anon31_Then_correct) (=> (= (ControlFlow 0 56) 55) anon31_Else_correct))))
(let ((anon30_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 57) 56) anon30_Then_correct) (=> (= (ControlFlow 0 57) 1) anon30_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 58) 57))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
