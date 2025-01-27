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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun alloc () T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun boolType () T@T)
(declare-fun Ctor (T@T) Int)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
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
))) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |715|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@6 y))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#0_0@1| () Int)
(declare-fun |k#0| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$decr$loop#0_01@2| () Int)
(declare-fun |j#0_0@6| () Int)
(declare-fun |$decr$loop#0_00@2| () Bool)
(declare-fun |j#0_0@5| () Int)
(declare-fun |j#0_0@3| () Int)
(declare-fun |j#0_0@2| () Int)
(declare-fun |j#0_0@4| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun |i#0#lo@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#0_00@1| () Bool)
(declare-fun |$decr_init$loop#0_01@1| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |m#0| () Int)
(declare-fun |p#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ContinueA0)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon14_correct true))
(let ((anon49_Else_correct  (=> (and (<= 0 |j#0_0@1|) (= (ControlFlow 0 40) 38)) anon14_correct)))
(let ((anon49_Then_correct  (=> (and (< |j#0_0@1| 0) (= (ControlFlow 0 39) 38)) anon14_correct)))
(let ((anon11_correct  (=> (=> (or (not (= |k#0| 0)) (not true)) (or (not (= |j#0_0@1| 0)) (not true))) (and (=> (= (ControlFlow 0 41) 39) anon49_Then_correct) (=> (= (ControlFlow 0 41) 40) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (= |k#0| 0) (= (ControlFlow 0 43) 41)) anon11_correct)))
(let ((anon48_Then_correct  (=> (and (or (not (= |k#0| 0)) (not true)) (= (ControlFlow 0 42) 41)) anon11_correct)))
(let ((anon9_correct  (=> (=> (= |k#0| (LitInt 0)) (= |j#0_0@1| (LitInt 0))) (and (=> (= (ControlFlow 0 44) 42) anon48_Then_correct) (=> (= (ControlFlow 0 44) 43) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (or (not (= |k#0| (LitInt 0))) (not true)) (= (ControlFlow 0 46) 44)) anon9_correct)))
(let ((anon47_Then_correct  (=> (and (= |k#0| (LitInt 0)) (= (ControlFlow 0 45) 44)) anon9_correct)))
(let ((anon46_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 47) 45) anon47_Then_correct) (=> (= (ControlFlow 0 47) 46) anon47_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (and (and (and (and (or (not (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 0))) (not true)) (or (not (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 1))) (not true))) (or (not (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 2))) (not true))) (or (not (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 3))) (not true))) (< (Mod |j#0_0@1| (LitInt 17)) (LitInt 4))) (= (ControlFlow 0 34) (- 0 33))) false)))
(let ((anon53_Then_correct  (=> (= (ControlFlow 0 26) (- 0 25)) (or (not (= (LitInt 17) 0)) (not true)))))
(let ((anon52_Then_correct  (=> (= (ControlFlow 0 24) (- 0 23)) (or (not (= (LitInt 17) 0)) (not true)))))
(let ((continue_0_0_correct  (and (=> (= (ControlFlow 0 15) (- 0 18)) (or (or (<= 0 |$decr$loop#0_01@2|) (and (<= 0 |j#0_0@6|) |$decr$loop#0_00@2|)) (= (ite (< |j#0_0@6| 0) (- 0 |j#0_0@6|) |j#0_0@6|) |$decr$loop#0_01@2|))) (=> (or (or (<= 0 |$decr$loop#0_01@2|) (and (<= 0 |j#0_0@6|) |$decr$loop#0_00@2|)) (= (ite (< |j#0_0@6| 0) (- 0 |j#0_0@6|) |j#0_0@6|) |$decr$loop#0_01@2|)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (and (<= 0 |j#0_0@6|) |$decr$loop#0_00@2|) (and (= (< |j#0_0@6| 0) |$decr$loop#0_00@2|) (< (ite (< |j#0_0@6| 0) (- 0 |j#0_0@6|) |j#0_0@6|) |$decr$loop#0_01@2|)))) (=> (or (and (<= 0 |j#0_0@6|) |$decr$loop#0_00@2|) (and (= (< |j#0_0@6| 0) |$decr$loop#0_00@2|) (< (ite (< |j#0_0@6| 0) (- 0 |j#0_0@6|) |j#0_0@6|) |$decr$loop#0_01@2|))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (=> |$w$loop#0_0@1| (=> (= |k#0| (LitInt 0)) (= |j#0_0@6| (LitInt 0))))) (=> (=> |$w$loop#0_0@1| (=> (= |k#0| (LitInt 0)) (= |j#0_0@6| (LitInt 0)))) (=> (= (ControlFlow 0 15) (- 0 14)) (=> |$w$loop#0_0@1| (=> (or (not (= |k#0| 0)) (not true)) (or (not (= |j#0_0@6| 0)) (not true)))))))))))))
(let ((anon56_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= (LitInt 17) 0)) (not true))) (=> (or (not (= (LitInt 17) 0)) (not true)) (=> (and (and (<= (LitInt 4) (Mod |j#0_0@1| (LitInt 17))) (= |j#0_0@5| (LitInt 58))) (and (= |j#0_0@6| |j#0_0@5|) (= (ControlFlow 0 31) 15))) continue_0_0_correct)))))
(let ((anon58_Else_correct  (=> (and (and (or (not (= |j#0_0@1| (LitInt 2))) (not true)) (= |j#0_0@3| (- |j#0_0@1| 2))) (and (= |j#0_0@6| |j#0_0@3|) (= (ControlFlow 0 21) 15))) continue_0_0_correct)))
(let ((anon59_Then_correct  (=> (and (and (= |j#0_0@1| (LitInt 8)) (= |j#0_0@2| (LitInt 5))) (and (= |j#0_0@6| |j#0_0@2|) (= (ControlFlow 0 19) 15))) continue_0_0_correct)))
(let ((continue_0_correct true))
(let ((anon55_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= (LitInt 17) 0)) (not true))) (=> (or (not (= (LitInt 17) 0)) (not true)) (=> (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 3)) (=> (and (= |j#0_0@4| (LitInt 3)) (= (ControlFlow 0 29) 5)) continue_0_correct))))))
(let ((anon54_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (not (= (LitInt 17) 0)) (not true))) (=> (or (not (= (LitInt 17) 0)) (not true)) (=> (and (= (Mod |j#0_0@1| (LitInt 17)) (LitInt 2)) (= (ControlFlow 0 27) 5)) continue_0_correct)))))
(let ((anon51_Then_correct  (=> (< |j#0_0@1| 0) (and (and (and (and (and (=> (= (ControlFlow 0 35) 24) anon52_Then_correct) (=> (= (ControlFlow 0 35) 26) anon53_Then_correct)) (=> (= (ControlFlow 0 35) 27) anon54_Then_correct)) (=> (= (ControlFlow 0 35) 29) anon55_Then_correct)) (=> (= (ControlFlow 0 35) 31) anon56_Then_correct)) (=> (= (ControlFlow 0 35) 34) anon56_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (= |j#0_0@1| (LitInt 2)) (= (ControlFlow 0 20) 5)) continue_0_correct)))
(let ((anon57_Then_correct  (=> (<= (LitInt 2) |j#0_0@1|) (and (=> (= (ControlFlow 0 22) 20) anon58_Then_correct) (=> (= (ControlFlow 0 22) 21) anon58_Else_correct)))))
(let ((anon41_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (= |j#0_0@1| (LitInt 1)) (and (= |j#0_0@1| |k#0|) (= |k#0| (LitInt 0))))) (=> (or (= |j#0_0@1| (LitInt 1)) (and (= |j#0_0@1| |k#0|) (= |k#0| (LitInt 0)))) (=> (= (ControlFlow 0 6) 5) continue_0_correct)))))
(let ((anon61_Else_correct  (=> (and (or (not (= |j#0_0@1| |k#0|)) (not true)) (= (ControlFlow 0 10) 6)) anon41_correct)))
(let ((anon61_Then_correct  (=> (and (= |j#0_0@1| |k#0|) (= (ControlFlow 0 9) 6)) anon41_correct)))
(let ((anon60_Then_correct  (=> (or (not (= |j#0_0@1| (LitInt 1))) (not true)) (and (=> (= (ControlFlow 0 11) 9) anon61_Then_correct) (=> (= (ControlFlow 0 11) 10) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (= |j#0_0@1| (LitInt 1)) (= (ControlFlow 0 8) 6)) anon41_correct)))
(let ((anon59_Else_correct  (=> (and (and (<= 0 |j#0_0@1|) (< |j#0_0@1| (LitInt 2))) (or (not (= |j#0_0@1| (LitInt 8))) (not true))) (and (=> (= (ControlFlow 0 13) 11) anon60_Then_correct) (=> (= (ControlFlow 0 13) 8) anon60_Else_correct)))))
(let ((anon50_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (and (= |$decr$loop#0_00@2| (< |j#0_0@1| 0)) (= |$decr$loop#0_01@2| (ite (< |j#0_0@1| 0) (- 0 |j#0_0@1|) |j#0_0@1|))) (and (and (and (=> (= (ControlFlow 0 36) 35) anon51_Then_correct) (=> (= (ControlFlow 0 36) 22) anon57_Then_correct)) (=> (= (ControlFlow 0 36) 19) anon59_Then_correct)) (=> (= (ControlFlow 0 36) 13) anon59_Else_correct))))))
(let ((anon50_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 12) 11) anon60_Then_correct) (=> (= (ControlFlow 0 12) 8) anon60_Else_correct)))))
(let ((anon46_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 37) 12) anon50_Then_correct) (=> (= (ControlFlow 0 37) 36) anon50_Else_correct)))))
(let ((anon45_LoopBody_correct  (and (=> (= (ControlFlow 0 48) 47) anon46_Then_correct) (=> (= (ControlFlow 0 48) 37) anon46_Else_correct))))
(let ((anon45_LoopDone_correct true))
(let ((anon45_LoopHead_correct  (=> (and (and (and (and (and (and (and (not false) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |n#0|)) |$w$loop#0@0|) (=> |$w$loop#0_0@1| (=> (= |k#0| (LitInt 0)) (= |j#0_0@1| (LitInt 0))))) (and (=> |$w$loop#0_0@1| (=> (or (not (= |k#0| 0)) (not true)) (or (not (= |j#0_0@1| 0)) (not true)))) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |ControlStructuresdfy.537:5|
 :skolemid |697|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)))) (and (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |ControlStructuresdfy.537:5|
 :skolemid |698|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
))) (and (=> (< |j#0_0@1| 0) |$decr_init$loop#0_00@1|) (=> (= (< |j#0_0@1| 0) |$decr_init$loop#0_00@1|) (<= (ite (< |j#0_0@1| 0) (- 0 |j#0_0@1|) |j#0_0@1|) |$decr_init$loop#0_01@1|))))) (and (=> (= (ControlFlow 0 49) 4) anon45_LoopDone_correct) (=> (= (ControlFlow 0 49) 48) anon45_LoopBody_correct)))))
(let ((anon44_Else_correct  (=> (or (not (= |i#0@0| |n#0|)) (not true)) (=> (and (= |$decr_init$loop#0_00@1| (< |k#0| 0)) (= |$decr_init$loop#0_01@1| (ite (< |k#0| 0) (- 0 |k#0|) |k#0|))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (=> |$w$loop#0_0@1| (=> (= |k#0| (LitInt 0)) (= |k#0| (LitInt 0))))) (=> (=> |$w$loop#0_0@1| (=> (= |k#0| (LitInt 0)) (= |k#0| (LitInt 0)))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (=> |$w$loop#0_0@1| (=> (or (not (= |k#0| 0)) (not true)) (or (not (= |k#0| 0)) (not true))))) (=> (=> |$w$loop#0_0@1| (=> (or (not (= |k#0| 0)) (not true)) (or (not (= |k#0| 0)) (not true)))) (=> (= (ControlFlow 0 50) 49) anon45_LoopHead_correct)))))))))
(let ((anon44_Then_correct true))
(let ((anon43_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 53) 3) anon44_Then_correct) (=> (= (ControlFlow 0 53) 50) anon44_Else_correct)))))
(let ((anon43_Then_correct true))
(let ((anon42_LoopBody_correct  (and (=> (= (ControlFlow 0 54) 2) anon43_Then_correct) (=> (= (ControlFlow 0 54) 53) anon43_Else_correct))))
(let ((anon42_LoopDone_correct true))
(let ((anon42_LoopHead_correct  (=> (and (and (and (and (not false) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |n#0|)) (and (and (and (<= |i#0#lo@0| |i#0@0|) (<= |i#0@0| |n#0|)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |ControlStructuresdfy.535:3|
 :skolemid |695|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |ControlStructuresdfy.535:3|
 :skolemid |696|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
))))) (and (=> (= (ControlFlow 0 55) 1) anon42_LoopDone_correct) (=> (= (ControlFlow 0 55) 54) anon42_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |i#0#lo@0| (LitInt 0))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (<= |i#0#lo@0| |n#0|)) (=> (<= |i#0#lo@0| |n#0|) (=> (= (ControlFlow 0 56) 55) anon42_LoopHead_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (<= (LitInt 0) |n#0|) (<= (LitInt 0) |k#0|))) (and (and (<= (LitInt 0) |m#0|) (<= (LitInt 0) |p#0|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 58) 56)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
