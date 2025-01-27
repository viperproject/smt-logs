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
 :skolemid |489|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@4| () Int)
(declare-fun |newtype$check#1_1@1| () Int)
(declare-fun |newtype$check#1_2@1| () Int)
(declare-fun |x#0@5| () Int)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun |newtype$check#1_0@1| () Int)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |newtype$check#5@1| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newtype$check#2@1| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x#0@1| () Int)
(declare-fun |x#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |newtype$check#0_0@1| () Int)
(declare-fun |newtype$check#0_1@1| () Int)
(declare-fun |x#0@3| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon22_Else_correct  (=> (and (or (not (= |x#0@4| (LitInt 5))) (not true)) (= |newtype$check#1_1@1| (LitInt 1))) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= (LitInt 0) |newtype$check#1_1@1|) (< |newtype$check#1_1@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1_1@1|) (< |newtype$check#1_1@1| 4294967296)) (=> (= |newtype$check#1_2@1| (+ |x#0@4| 1)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (<= (LitInt 0) |newtype$check#1_2@1|) (< |newtype$check#1_2@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1_2@1|) (< |newtype$check#1_2@1| 4294967296)) (=> (= |x#0@5| (+ |x#0@4| 1)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (<= 0 |$decr$loop#10@1|) (= (- 10 |x#0@5|) |$decr$loop#10@1|))) (=> (or (<= 0 |$decr$loop#10@1|) (= (- 10 |x#0@5|) |$decr$loop#10@1|)) (=> (= (ControlFlow 0 15) (- 0 14)) (< (- 10 |x#0@5|) |$decr$loop#10@1|)))))))))))))
(let ((anon22_Then_correct true))
(let ((anon21_Else_correct  (=> (< |x#0@4| 10) (=> (and (= |$decr$loop#10@1| (- 10 |x#0@4|)) (= |newtype$check#1_0@1| (LitInt 5))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (and (<= (LitInt 0) |newtype$check#1_0@1|) (< |newtype$check#1_0@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#1_0@1|) (< |newtype$check#1_0@1| 4294967296)) (and (=> (= (ControlFlow 0 19) 13) anon22_Then_correct) (=> (= (ControlFlow 0 19) 15) anon22_Else_correct))))))))
(let ((anon21_Then_correct true))
(let ((anon20_Else_correct  (=> (and |$w$loop#1@0| (= |newtype$check#5@1| (LitInt 10))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (<= (LitInt 0) |newtype$check#5@1|) (< |newtype$check#5@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@1|) (< |newtype$check#5@1| 4294967296)) (and (=> (= (ControlFlow 0 21) 12) anon21_Then_correct) (=> (= (ControlFlow 0 21) 19) anon21_Else_correct)))))))
(let ((anon20_Then_correct  (=> (not |$w$loop#1@0|) (=> (and (= |newtype$check#4@0| (LitInt 10)) (= (ControlFlow 0 11) (- 0 10))) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))))))
(let ((anon19_LoopBody_correct  (and (=> (= (ControlFlow 0 23) 11) anon20_Then_correct) (=> (= (ControlFlow 0 23) 21) anon20_Else_correct))))
(let ((anon19_LoopDone_correct true))
(let ((anon19_LoopHead_correct  (=> (and (<= (LitInt 0) |x#0@4|) (< |x#0@4| 4294967296)) (=> (and (and (and (and (and (and (and (and (not false) (and (<= 0 |x#0@4|) (< |x#0@4| 11))) (= |newtype$check#0@0| 0)) (= |$decr_init$loop#00@0| 10)) |$w$loop#0@0|) (= |newtype$check#2@1| 10)) (= |newtype$check#3@0| 0)) (= |$decr_init$loop#10@0| 10)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |whiledfy.16:3|
 :skolemid |484|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |whiledfy.16:3|
 :skolemid |485|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- 10 |x#0@4|) |$decr_init$loop#10@0|)))) (and (=> (= (ControlFlow 0 24) 9) anon19_LoopDone_correct) (=> (= (ControlFlow 0 24) 23) anon19_LoopBody_correct))))))
(let ((anon18_Then_correct  (=> (and (<= 10 |x#0@1|) (= |newtype$check#3@0| (LitInt 0))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (= |x#0@2| (LitInt 0)) (=> (and (= |$decr_init$loop#10@0| (- 10 |x#0@2|)) (= (ControlFlow 0 25) 24)) anon19_LoopHead_correct)))))))
(let ((anon18_Else_correct  (=> (< |x#0@1| 10) (=> (and (= |$decr$loop#00@1| (- 10 |x#0@1|)) (= |newtype$check#0_0@1| (LitInt 1))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (and (<= (LitInt 0) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 4294967296)) (=> (= |newtype$check#0_1@1| (+ |x#0@1| 1)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= (LitInt 0) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 4294967296)) (=> (= |x#0@3| (+ |x#0@1| 1)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (- 10 |x#0@3|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 10 |x#0@3|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (- 10 |x#0@3|) |$decr$loop#00@1|))))))))))))))
(let ((anon17_Else_correct  (=> (and |$w$loop#0@0| (= |newtype$check#2@1| (LitInt 10))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= (LitInt 0) |newtype$check#2@1|) (< |newtype$check#2@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@1|) (< |newtype$check#2@1| 4294967296)) (and (=> (= (ControlFlow 0 27) 25) anon18_Then_correct) (=> (= (ControlFlow 0 27) 5) anon18_Else_correct)))))))
(let ((anon17_Then_correct  (=> (not |$w$loop#0@0|) (=> (and (= |newtype$check#1@0| (LitInt 10)) (= (ControlFlow 0 3) (- 0 2))) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))))))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 29) 3) anon17_Then_correct) (=> (= (ControlFlow 0 29) 27) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (and (<= (LitInt 0) |x#0@1|) (< |x#0@1| 4294967296)) (=> (and (and (and (and (not false) (and (<= 0 |x#0@1|) (< |x#0@1| 11))) (= |newtype$check#0@0| 0)) (= |$decr_init$loop#00@0| 10)) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |whiledfy.8:3|
 :skolemid |482|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |whiledfy.8:3|
 :skolemid |483|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
)) (<= (- 10 |x#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 30) 1) anon16_LoopDone_correct) (=> (= (ControlFlow 0 30) 29) anon16_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |x#0@0| (LitInt 0)) (=> (and (= |$decr_init$loop#00@0| (- 10 |x#0@0|)) (= (ControlFlow 0 31) 30)) anon16_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (<= (LitInt 0) |x#0|) (< |x#0| 4294967296)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 33) 31))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
