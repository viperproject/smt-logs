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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.EnsureRevealPreconditionForComparisonWithFunction (Int) Int)
(declare-fun |_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0| Int) ) (!  (=> (or (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| |i#0|) (and (< 0 $FunctionContextHeight) (>= |i#0| (LitInt 0)))) (= (_module.__default.EnsureRevealPreconditionForComparisonWithFunction |i#0|) |i#0|))
 :qid |gitissue3804bdfy.33:60|
 :skolemid |496|
 :pattern ( (_module.__default.EnsureRevealPreconditionForComparisonWithFunction |i#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0@@0| Int) ) (!  (=> (or (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| |i#0@@0|) (and (< 0 $FunctionContextHeight) (>= |i#0@@0| (LitInt 0)))) (>= (_module.__default.EnsureRevealPreconditionForComparisonWithFunction |i#0@@0|) (LitInt 0)))
 :qid |gitissue3804bdfy.33:60|
 :skolemid |494|
 :pattern ( (_module.__default.EnsureRevealPreconditionForComparisonWithFunction |i#0@@0|))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0@@1| Int) ) (!  (=> (or (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| (LitInt |i#0@@1|)) (and (< 0 $FunctionContextHeight) (>= (LitInt |i#0@@1|) (LitInt 0)))) (= (_module.__default.EnsureRevealPreconditionForComparisonWithFunction (LitInt |i#0@@1|)) (LitInt |i#0@@1|)))
 :qid |gitissue3804bdfy.33:60|
 :weight 3
 :skolemid |497|
 :pattern ( (_module.__default.EnsureRevealPreconditionForComparisonWithFunction (LitInt |i#0@@1|)))
))))
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
 :skolemid |499|
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@@2| () Int)
(declare-fun |r#0@2| () Int)
(declare-fun |r#0@1| () Int)
(declare-fun |r#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.EnsureRevealPreconditionForComparisonWithFunction)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon35_Else_correct true))
(let ((anon35_Then_correct  (=> (= (ControlFlow 0 31) (- 0 30)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon34_Then_correct  (=> (>= |i#0@@2| (LitInt 0)) (and (=> (= (ControlFlow 0 33) 31) anon35_Then_correct) (=> (= (ControlFlow 0 33) 32) anon35_Else_correct)))))
(let ((anon40_Else_correct true))
(let ((anon40_Then_correct  (=> (= (ControlFlow 0 24) (- 0 23)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon39_Then_correct  (=> (>= |i#0@@2| (LitInt 0)) (and (=> (= (ControlFlow 0 26) 24) anon40_Then_correct) (=> (= (ControlFlow 0 26) 25) anon40_Else_correct)))))
(let ((anon45_Else_correct true))
(let ((anon45_Then_correct  (=> (= (ControlFlow 0 17) (- 0 16)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon44_Then_correct  (=> (>= |i#0@@2| (LitInt 0)) (and (=> (= (ControlFlow 0 19) 17) anon45_Then_correct) (=> (= (ControlFlow 0 19) 18) anon45_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 11) (- 0 10)) (= |r#0@2| (_module.__default.EnsureRevealPreconditionForComparisonWithFunction |i#0@@2|)))))
(let ((anon46_Else_correct  (=> (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| |i#0@@2|) (=> (and (= |r#0@2| |i#0@@2|) (= (ControlFlow 0 14) 11)) GeneratedUnifiedExit_correct))))
(let ((anon42_Then_correct  (=> (< |i#0@@2| 0) (=> (and (and (= |r#0@1| (LitInt (- 0 1))) (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| |i#0@@2|)) (and (= |r#0@2| |r#0@1|) (= (ControlFlow 0 13) 11))) GeneratedUnifiedExit_correct))))
(let ((anon37_Then_correct  (=> (< |i#0@@2| (- 0 2)) (=> (and (and (= |r#0@0| (LitInt (- 0 1))) (|_module.__default.EnsureRevealPreconditionForComparisonWithFunction#canCall| |i#0@@2|)) (and (= |r#0@2| |r#0@0|) (= (ControlFlow 0 12) 11))) GeneratedUnifiedExit_correct))))
(let ((anon46_Then_correct true))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 15) 9) anon46_Then_correct) (=> (= (ControlFlow 0 15) 14) anon46_Else_correct))))
(let ((anon43_Then_correct  (=> (= (ControlFlow 0 8) (- 0 7)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon42_Else_correct  (=> (<= 0 |i#0@@2|) (and (and (=> (= (ControlFlow 0 20) 8) anon43_Then_correct) (=> (= (ControlFlow 0 20) 19) anon44_Then_correct)) (=> (= (ControlFlow 0 20) 15) anon44_Else_correct)))))
(let ((anon41_Else_correct  (and (=> (= (ControlFlow 0 21) 13) anon42_Then_correct) (=> (= (ControlFlow 0 21) 20) anon42_Else_correct))))
(let ((anon41_Then_correct true))
(let ((anon39_Else_correct  (and (=> (= (ControlFlow 0 22) 6) anon41_Then_correct) (=> (= (ControlFlow 0 22) 21) anon41_Else_correct))))
(let ((anon38_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon37_Else_correct  (=> (<= (- 0 2) |i#0@@2|) (and (and (=> (= (ControlFlow 0 27) 5) anon38_Then_correct) (=> (= (ControlFlow 0 27) 26) anon39_Then_correct)) (=> (= (ControlFlow 0 27) 22) anon39_Else_correct)))))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 28) 12) anon37_Then_correct) (=> (= (ControlFlow 0 28) 27) anon37_Else_correct))))
(let ((anon36_Then_correct true))
(let ((anon34_Else_correct  (and (=> (= (ControlFlow 0 29) 3) anon36_Then_correct) (=> (= (ControlFlow 0 29) 28) anon36_Else_correct))))
(let ((anon33_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (>= |i#0@@2| (LitInt 0)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 34) 2) anon33_Then_correct) (=> (= (ControlFlow 0 34) 33) anon34_Then_correct)) (=> (= (ControlFlow 0 34) 29) anon34_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 35) 34))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
