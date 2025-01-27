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
 :skolemid |569|
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
(declare-fun |y1#0@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |y1#0@1| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$w$loop#0_1@1| () Bool)
(declare-fun |y2#0@1| () Int)
(declare-fun |$decr$loop#0_10@2| () Int)
(declare-fun |y2#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#0_10@1| () Int)
(declare-fun |y2#0@0| () Int)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun |y1#0@2| () Int)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun |x1#0| () Int)
(declare-fun |x2#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Gcd)
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
 (=> (= (ControlFlow 0 0) 50) (let ((anon4_correct true))
(let ((anon26_Else_correct  (=> (and (< |y1#0@0| (LitInt 1)) (= (ControlFlow 0 43) 41)) anon4_correct)))
(let ((anon26_Then_correct  (=> (and (<= (LitInt 1) |y1#0@0|) (= (ControlFlow 0 42) 41)) anon4_correct)))
(let ((anon25_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 44) 42) anon26_Then_correct) (=> (= (ControlFlow 0 44) 43) anon26_Else_correct)))))
(let ((anon11_correct true))
(let ((anon30_Else_correct  (=> (and (< |y1#0@1| (LitInt 1)) (= (ControlFlow 0 33) 31)) anon11_correct)))
(let ((anon30_Then_correct  (=> (and (<= (LitInt 1) |y1#0@1|) (= (ControlFlow 0 32) 31)) anon11_correct)))
(let ((anon29_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 34) 32) anon30_Then_correct) (=> (= (ControlFlow 0 34) 33) anon30_Else_correct)))))
(let ((anon19_correct true))
(let ((anon34_Else_correct  (=> (and (< |y1#0@1| (LitInt 1)) (= (ControlFlow 0 23) 21)) anon19_correct)))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 1) |y1#0@1|) (= (ControlFlow 0 22) 21)) anon19_correct)))
(let ((anon33_Then_correct  (=> (not |$w$loop#0_1@1|) (and (=> (= (ControlFlow 0 24) 22) anon34_Then_correct) (=> (= (ControlFlow 0 24) 23) anon34_Else_correct)))))
(let ((anon35_Else_correct  (=> (> |y2#0@1| |y1#0@1|) (=> (and (= |$decr$loop#0_10@2| (- |y2#0@1| |y1#0@1|)) (= |y2#0@2| (- |y2#0@1| |y1#0@1|))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (<= 0 |$decr$loop#0_10@2|) (= (- |y2#0@2| |y1#0@1|) |$decr$loop#0_10@2|))) (=> (or (<= 0 |$decr$loop#0_10@2|) (= (- |y2#0@2| |y1#0@1|) |$decr$loop#0_10@2|)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (< (- |y2#0@2| |y1#0@1|) |$decr$loop#0_10@2|)) (=> (< (- |y2#0@2| |y1#0@1|) |$decr$loop#0_10@2|) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> |$w$loop#0_1@1| (<= (LitInt 1) |y1#0@1|))) (=> (=> |$w$loop#0_1@1| (<= (LitInt 1) |y1#0@1|)) (=> (= (ControlFlow 0 16) (- 0 15)) (=> |$w$loop#0_1@1| (<= (LitInt 1) |y2#0@2|)))))))))))))
(let ((anon35_Then_correct  (=> (>= |y1#0@1| |y2#0@1|) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (<= 0 |$decr$loop#00@1|) (= (+ |y1#0@1| |y2#0@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (+ |y1#0@1| |y2#0@1|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< (+ |y1#0@1| |y2#0@1|) |$decr$loop#00@1|)) (=> (< (+ |y1#0@1| |y2#0@1|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> |$w$loop#0@0| (<= (LitInt 1) |y1#0@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 1) |y1#0@1|)) (=> (= (ControlFlow 0 11) (- 0 10)) (=> |$w$loop#0@0| (<= (LitInt 1) |y2#0@1|))))))))))))
(let ((anon33_Else_correct  (=> |$w$loop#0_1@1| (and (=> (= (ControlFlow 0 20) 11) anon35_Then_correct) (=> (= (ControlFlow 0 20) 16) anon35_Else_correct)))))
(let ((anon32_LoopBody_correct  (and (=> (= (ControlFlow 0 25) 24) anon33_Then_correct) (=> (= (ControlFlow 0 25) 20) anon33_Else_correct))))
(let ((anon32_LoopDone_correct true))
(let ((anon32_LoopHead_correct  (=> (and (and (and (and (and (not false) (<= 2 |$decr_init$loop#00@0|)) |$w$loop#0@0|) |$w$loop#0_0@1|) (and (=> |$w$loop#0_1@1| (<= (LitInt 1) |y1#0@1|)) (=> |$w$loop#0_1@1| (<= (LitInt 1) |y2#0@1|)))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |KatzMannadfy.46:5|
 :skolemid |558|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |KatzMannadfy.46:5|
 :skolemid |559|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- |y2#0@1| |y1#0@1|) |$decr_init$loop#0_10@1|)))) (and (=> (= (ControlFlow 0 26) 9) anon32_LoopDone_correct) (=> (= (ControlFlow 0 26) 25) anon32_LoopBody_correct)))))
(let ((anon31_Then_correct  (=> (and (>= |y2#0@0| |y1#0@1|) (= |$decr_init$loop#0_10@1| (- |y2#0@0| |y1#0@1|))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> |$w$loop#0_1@1| (<= (LitInt 1) |y1#0@1|))) (=> (=> |$w$loop#0_1@1| (<= (LitInt 1) |y1#0@1|)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> |$w$loop#0_1@1| (<= (LitInt 1) |y2#0@0|))) (=> (=> |$w$loop#0_1@1| (<= (LitInt 1) |y2#0@0|)) (=> (= (ControlFlow 0 27) 26) anon32_LoopHead_correct))))))))
(let ((anon31_Else_correct  (=> (> |y1#0@1| |y2#0@0|) (=> (and (= |$decr$loop#0_00@2| (- |y1#0@1| |y2#0@0|)) (= |y1#0@2| (- |y1#0@1| |y2#0@0|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (<= 0 |$decr$loop#0_00@2|) (= (- |y1#0@2| |y2#0@0|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- |y1#0@2| |y2#0@0|) |$decr$loop#0_00@2|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (< (- |y1#0@2| |y2#0@0|) |$decr$loop#0_00@2|)) (=> (< (- |y1#0@2| |y2#0@0|) |$decr$loop#0_00@2|) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |y1#0@2|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 1) |y1#0@2|)) (=> (= (ControlFlow 0 5) (- 0 4)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |y2#0@0|)))))))))))))
(let ((anon29_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 30) 27) anon31_Then_correct) (=> (= (ControlFlow 0 30) 5) anon31_Else_correct)))))
(let ((anon28_LoopBody_correct  (and (=> (= (ControlFlow 0 35) 34) anon29_Then_correct) (=> (= (ControlFlow 0 35) 30) anon29_Else_correct))))
(let ((anon28_LoopDone_correct true))
(let ((anon28_LoopHead_correct  (=> (and (and (and (and (not false) (<= 2 |$decr_init$loop#00@0|)) |$w$loop#0@0|) (and (=> |$w$loop#0_0@1| (<= (LitInt 1) |y1#0@1|)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |y2#0@0|)))) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |KatzMannadfy.41:5|
 :skolemid |556|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |KatzMannadfy.41:5|
 :skolemid |557|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
)) (<= (- |y1#0@1| |y2#0@0|) |$decr_init$loop#0_00@1|)))) (and (=> (= (ControlFlow 0 36) 3) anon28_LoopDone_correct) (=> (= (ControlFlow 0 36) 35) anon28_LoopBody_correct)))))
(let ((anon27_Else_correct  (=> (or (not (= |y1#0@0| |y2#0@0|)) (not true)) (=> (and (= |$decr$loop#00@1| (+ |y1#0@0| |y2#0@0|)) (= |$decr_init$loop#0_00@1| (- |y1#0@0| |y2#0@0|))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |y1#0@0|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 1) |y1#0@0|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |y2#0@0|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 1) |y2#0@0|)) (=> (= (ControlFlow 0 37) 36) anon28_LoopHead_correct)))))))))
(let ((anon27_Then_correct true))
(let ((anon25_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 40) 2) anon27_Then_correct) (=> (= (ControlFlow 0 40) 37) anon27_Else_correct)))))
(let ((anon24_LoopBody_correct  (and (=> (= (ControlFlow 0 45) 44) anon25_Then_correct) (=> (= (ControlFlow 0 45) 40) anon25_Else_correct))))
(let ((anon24_LoopDone_correct true))
(let ((anon24_LoopHead_correct  (=> (and (and (and (not false) (<= 2 |$decr_init$loop#00@0|)) (and (=> |$w$loop#0@0| (<= (LitInt 1) |y1#0@0|)) (=> |$w$loop#0@0| (<= (LitInt 1) |y2#0@0|)))) (and (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |KatzMannadfy.37:3|
 :skolemid |554|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@5 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@5 $f@@2))))
 :qid |KatzMannadfy.37:3|
 :skolemid |555|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) $f@@2))
)) (<= (+ |y1#0@0| |y2#0@0|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 46) 1) anon24_LoopDone_correct) (=> (= (ControlFlow 0 46) 45) anon24_LoopBody_correct)))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$decr_init$loop#00@0| (+ |x1#0| |x2#0|))) (and (=> (= (ControlFlow 0 47) (- 0 49)) (=> |$w$loop#0@0| (<= (LitInt 1) |x1#0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 1) |x1#0|)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (=> |$w$loop#0@0| (<= (LitInt 1) |x2#0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 1) |x2#0|)) (=> (= (ControlFlow 0 47) 46) anon24_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (= 0 $FunctionContextHeight) (<= (LitInt 1) |x1#0|)) (and (<= (LitInt 1) |x2#0|) (= (ControlFlow 0 50) 47))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
