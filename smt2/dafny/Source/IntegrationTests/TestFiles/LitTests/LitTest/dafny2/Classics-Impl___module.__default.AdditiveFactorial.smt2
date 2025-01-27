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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Factorial (T@U Int) Int)
(declare-fun |_module.__default.Factorial#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|_module.__default.Factorial#canCall| |n#0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) (<= (LitInt 0) (_module.__default.Factorial $ly |n#0|)))
 :qid |Classicsdfy.7:16|
 :skolemid |481|
 :pattern ( (_module.__default.Factorial $ly |n#0|))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Factorial#canCall| |n#0@@0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (|_module.__default.Factorial#canCall| (- |n#0@@0| 1))) (= (_module.__default.Factorial ($LS $ly@@0) |n#0@@0|) (ite (= |n#0@@0| (LitInt 0)) 1 (Mul |n#0@@0| (_module.__default.Factorial $ly@@0 (- |n#0@@0| 1)))))))
 :qid |Classicsdfy.7:16|
 :skolemid |483|
 :pattern ( (_module.__default.Factorial ($LS $ly@@0) |n#0@@0|))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($ly@@1 T@U) (|n#0@@1| Int) ) (! (= (_module.__default.Factorial ($LS $ly@@1) |n#0@@1|) (_module.__default.Factorial $ly@@1 |n#0@@1|))
 :qid |Classicsdfy.7:16|
 :skolemid |479|
 :pattern ( (_module.__default.Factorial ($LS $ly@@1) |n#0@@1|))
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
 :skolemid |558|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Factorial#canCall| (LitInt |n#0@@2|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@2|))) (and (=> (or (not (= (LitInt |n#0@@2|) (LitInt 0))) (not true)) (|_module.__default.Factorial#canCall| (LitInt (- |n#0@@2| 1)))) (= (_module.__default.Factorial ($LS $ly@@2) (LitInt |n#0@@2|)) (ite (= (LitInt |n#0@@2|) (LitInt 0)) 1 (Mul (LitInt |n#0@@2|) (LitInt (_module.__default.Factorial ($LS $ly@@2) (LitInt (- |n#0@@2| 1)))))))))
 :qid |Classicsdfy.7:16|
 :weight 3
 :skolemid |484|
 :pattern ( (_module.__default.Factorial ($LS $ly@@2) (LitInt |n#0@@2|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |r#0@1| () Int)
(declare-fun |n#0@@3| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |u#0@4| () Int)
(declare-fun $LZ () T@U)
(declare-fun |u#0@1| () Int)
(declare-fun |s#0_0@2| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun |u#0@2| () Int)
(declare-fun |u#0@3| () Int)
(declare-fun |s#0_0@3| () Int)
(declare-fun |r#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#0_0@1| () Int)
(declare-fun |v#0_0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |u#0@0| () Int)
(declare-fun |r#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |u#0| () Int)
(declare-fun |v#0_0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.AdditiveFactorial)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon4_correct  (=> (and (and (<= (LitInt 0) |r#0@1|) (<= |r#0@1| |n#0@@3|)) (= (ControlFlow 0 33) (- 0 32))) ($Is intType (int_2_U |r#0@1|) Tclass._System.nat))))
(let ((anon18_Else_correct  (=> (and (< |r#0@1| (LitInt 0)) (= (ControlFlow 0 35) 33)) anon4_correct)))
(let ((anon18_Then_correct  (=> (and (<= (LitInt 0) |r#0@1|) (= (ControlFlow 0 34) 33)) anon4_correct)))
(let ((anon17_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 36) 34) anon18_Then_correct) (=> (= (ControlFlow 0 36) 35) anon18_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 29) (- 0 28)) (= |u#0@4| (_module.__default.Factorial ($LS ($LS $LZ)) |n#0@@3|)))))
(let ((anon19_Then_correct  (=> (<= |n#0@@3| |r#0@1|) (=> (and (= |u#0@4| |u#0@1|) (= (ControlFlow 0 30) 29)) GeneratedUnifiedExit_correct))))
(let ((anon11_correct  (=> (and (and (<= (LitInt 1) |s#0_0@2|) (<= |s#0_0@2| (+ |r#0@1| 1))) (= (ControlFlow 0 18) (- 0 17))) ($Is intType (int_2_U |r#0@1|) Tclass._System.nat))))
(let ((anon22_Else_correct  (=> (and (< |s#0_0@2| (LitInt 1)) (= (ControlFlow 0 20) 18)) anon11_correct)))
(let ((anon22_Then_correct  (=> (and (<= (LitInt 1) |s#0_0@2|) (= (ControlFlow 0 19) 18)) anon11_correct)))
(let ((anon21_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 21) 19) anon22_Then_correct) (=> (= (ControlFlow 0 21) 20) anon22_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (<= |s#0_0@2| |r#0@1|) (= |$decr$loop#0_00@2| (- |r#0@1| |s#0_0@2|))) (and (=> (= (ControlFlow 0 10) (- 0 15)) ($Is intType (int_2_U (+ |u#0@2| |u#0@1|)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |u#0@2| |u#0@1|)) Tclass._System.nat) (=> (and (= |u#0@3| (+ |u#0@2| |u#0@1|)) (= |s#0_0@3| (+ |s#0_0@2| 1))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (or (<= 0 |$decr$loop#0_00@2|) (= (- |r#0@1| |s#0_0@3|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- |r#0@1| |s#0_0@3|) |$decr$loop#0_00@2|)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (< (- |r#0@1| |s#0_0@3|) |$decr$loop#0_00@2|)) (=> (< (- |r#0@1| |s#0_0@3|) |$decr$loop#0_00@2|) (=> (=> (and (<= (LitInt 1) |s#0_0@3|) (<= |s#0_0@3| (+ |r#0@1| 1))) (|_module.__default.Factorial#canCall| |r#0@1|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |s#0_0@3|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 1) |s#0_0@3|)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> |$w$loop#0_0@1| (<= |s#0_0@3| (+ |r#0@1| 1)))) (=> (=> |$w$loop#0_0@1| (<= |s#0_0@3| (+ |r#0@1| 1))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> |$w$loop#0_0@1| (= |u#0@3| (Mul |s#0_0@3| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@1|))))))))))))))))))))
(let ((anon23_Then_correct  (=> (and (< |r#0@1| |s#0_0@2|) (= |r#0@2| (+ |r#0@1| 1))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (- |n#0@@3| |r#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |n#0@@3| |r#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 4) (- 0 7)) (< (- |n#0@@3| |r#0@2|) |$decr$loop#00@1|)) (=> (< (- |n#0@@3| |r#0@2|) |$decr$loop#00@1|) (=> (=> (and (<= (LitInt 0) |r#0@2|) (<= |r#0@2| |n#0@@3|)) (|_module.__default.Factorial#canCall| |r#0@2|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0@0| (<= (LitInt 0) |r#0@2|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |r#0@2|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0@0| (<= |r#0@2| |n#0@@3|))) (=> (=> |$w$loop#0@0| (<= |r#0@2| |n#0@@3|)) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0@0| (= |u#0@2| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@2|))))))))))))))))
(let ((anon21_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 16) 4) anon23_Then_correct) (=> (= (ControlFlow 0 16) 10) anon23_Else_correct)))))
(let ((anon20_LoopBody_correct  (and (=> (= (ControlFlow 0 22) 21) anon21_Then_correct) (=> (= (ControlFlow 0 22) 16) anon21_Else_correct))))
(let ((anon20_LoopDone_correct true))
(let ((anon20_LoopHead_correct  (=> (<= (LitInt 0) |u#0@2|) (=> (and (and (and (and (and (and (and (<= 1 |u#0@2|) (not false)) (<= 0 |r#0@1|)) |$w$loop#0@0|) (<= 1 |u#0@1|)) (<= 1 |s#0_0@2|)) (<= (- 0 1) |$decr_init$loop#0_00@1|)) (and (and (and (=> |$w$loop#0_0@1| (<= (LitInt 1) |s#0_0@2|)) (=> |$w$loop#0_0@1| (<= |s#0_0@2| (+ |r#0@1| 1)))) (and (=> |$w$loop#0_0@1| (|_module.__default.Factorial#canCall| |r#0@1|)) (=> |$w$loop#0_0@1| (= |u#0@2| (Mul |s#0_0@2| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@1|)))))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Classicsdfy.23:5|
 :skolemid |491|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Classicsdfy.23:5|
 :skolemid |492|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (<= (- |r#0@1| |s#0_0@2|) |$decr_init$loop#0_00@1|))))) (and (=> (= (ControlFlow 0 23) 2) anon20_LoopDone_correct) (=> (= (ControlFlow 0 23) 22) anon20_LoopBody_correct))))))
(let ((anon19_Else_correct  (=> (and (and (< |r#0@1| |n#0@@3|) (= |$decr$loop#00@1| (- |n#0@@3| |r#0@1|))) (and (= |s#0_0@1| (LitInt 1)) (= |$decr_init$loop#0_00@1| (- |r#0@1| |s#0_0@1|)))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (=> |$w$loop#0_0@1| (<= (LitInt 1) |s#0_0@1|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 1) |s#0_0@1|)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (=> |$w$loop#0_0@1| (<= |s#0_0@1| (+ |r#0@1| 1)))) (=> (=> |$w$loop#0_0@1| (<= |s#0_0@1| (+ |r#0@1| 1))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (=> |$w$loop#0_0@1| (= |u#0@1| (Mul |s#0_0@1| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@1|))))) (=> (=> |$w$loop#0_0@1| (= |u#0@1| (Mul |s#0_0@1| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@1|)))) (=> (= (ControlFlow 0 24) 23) anon20_LoopHead_correct))))))))))
(let ((anon17_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 31) 30) anon19_Then_correct) (=> (= (ControlFlow 0 31) 24) anon19_Else_correct)))))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 37) 36) anon17_Then_correct) (=> (= (ControlFlow 0 37) 31) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (and (<= (LitInt 0) |u#0@1|) (<= (LitInt 0) |v#0_0@0|)) (=> (and (and (<= 1 |u#0@1|) (not false)) (<= 0 |r#0@1|)) (=> (and (and (and (=> |$w$loop#0@0| (<= (LitInt 0) |r#0@1|)) (=> |$w$loop#0@0| (<= |r#0@1| |n#0@@3|))) (and (=> |$w$loop#0@0| (|_module.__default.Factorial#canCall| |r#0@1|)) (=> |$w$loop#0@0| (= |u#0@1| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@1|))))) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |Classicsdfy.17:3|
 :skolemid |489|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@1))))
 :qid |Classicsdfy.17:3|
 :skolemid |490|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@3) $f@@1))
)) (<= (- |n#0@@3| |r#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 38) 1) anon16_LoopDone_correct) (=> (= (ControlFlow 0 38) 37) anon16_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 39) (- 0 43)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |u#0@0| (LitInt 1)) (=> (and (= |r#0@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- |n#0@@3| |r#0@0|))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (=> |$w$loop#0@0| (<= (LitInt 0) |r#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |r#0@0|)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (=> |$w$loop#0@0| (<= |r#0@0| |n#0@@3|))) (=> (=> |$w$loop#0@0| (<= |r#0@0| |n#0@@3|)) (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> |$w$loop#0@0| (= |u#0@0| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@0|)))) (=> (=> |$w$loop#0@0| (= |u#0@0| (_module.__default.Factorial ($LS ($LS $LZ)) |r#0@0|))) (=> (= (ControlFlow 0 39) 38) anon16_LoopHead_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (<= (LitInt 0) |n#0@@3|) (<= (LitInt 0) |u#0|))) (and (and (<= (LitInt 0) |v#0_0|) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 44) 39)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
