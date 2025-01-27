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
(declare-fun Tagclass.ErrorLocation.neg () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$neg () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun ErrorLocation.__default.P (Int) Bool)
(declare-fun |ErrorLocation.__default.P#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.ErrorLocation.neg () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun ErrorLocation.__default.Q (Int) Bool)
(declare-fun |ErrorLocation.__default.Q#canCall| (Int) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.ErrorLocation.neg tytagFamily$nat tytagFamily$neg)
)
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0| Int) ) (!  (=> (or (|ErrorLocation.__default.P#canCall| |n#0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0|))) (= (ErrorLocation.__default.P |n#0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |MiscTypeInferenceTestsdfy.10:21|
 :skolemid |481|
 :pattern ( (ErrorLocation.__default.P |n#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.ErrorLocation.neg $h@@0)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.ErrorLocation.neg $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|n#0@@0| Int) ) (!  (=> (or (|ErrorLocation.__default.P#canCall| (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |n#0@@0|))) (= (ErrorLocation.__default.P (LitInt |n#0@@0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |MiscTypeInferenceTestsdfy.10:21|
 :weight 3
 :skolemid |482|
 :pattern ( (ErrorLocation.__default.P (LitInt |n#0@@0|)))
))))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass.ErrorLocation.neg) (< (U_2_int |x#0@@1|) 0))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Is intType |x#0@@1| Tclass.ErrorLocation.neg))
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
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|y#0| Int) ) (!  (=> (or (|ErrorLocation.__default.Q#canCall| |y#0|) (and (< 1 $FunctionContextHeight) (< |y#0| 0))) (= (ErrorLocation.__default.Q |y#0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |MiscTypeInferenceTestsdfy.11:21|
 :skolemid |485|
 :pattern ( (ErrorLocation.__default.Q |y#0|))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|y#0@@0| Int) ) (!  (=> (or (|ErrorLocation.__default.Q#canCall| (LitInt |y#0@@0|)) (and (< 1 $FunctionContextHeight) (< |y#0@@0| 0))) (= (ErrorLocation.__default.Q (LitInt |y#0@@0|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |MiscTypeInferenceTestsdfy.11:21|
 :weight 3
 :skolemid |486|
 :pattern ( (ErrorLocation.__default.Q (LitInt |y#0@@0|)))
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
 :skolemid |4973|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.ErrorLocation.neg) Tagclass.ErrorLocation.neg))
(assert (= (TagFamily Tclass.ErrorLocation.neg) tytagFamily$neg))
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
(declare-fun |x#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$ErrorLocation.__default.Test)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon6_correct  (=> (and (forall ((|x#1| Int) ) (!  (and (=> (<= (LitInt 0) |x#1|) (|ErrorLocation.__default.P#canCall| |x#1|)) (=> (=> (<= (LitInt 0) |x#1|) (ErrorLocation.__default.P |x#1|)) (=> (< 100 |x#1|) (|ErrorLocation.__default.Q#canCall| |x#1|))))
 :qid |MiscTypeInferenceTestsdfy.14:19|
 :skolemid |488|
 :pattern ( (ErrorLocation.__default.Q |x#1|))
 :pattern ( (ErrorLocation.__default.P |x#1|))
)) (= (ControlFlow 0 3) (- 0 2))) (forall ((|x#1@@0| Int) ) (!  (and (=> (<= (LitInt 0) |x#1@@0|) (ErrorLocation.__default.P |x#1@@0|)) (=> (< 100 |x#1@@0|) (ErrorLocation.__default.Q |x#1@@0|)))
 :qid |MiscTypeInferenceTestsdfy.14:19|
 :skolemid |490|
 :pattern ( (ErrorLocation.__default.Q |x#1@@0|))
 :pattern ( (ErrorLocation.__default.P |x#1@@0|))
)))))
(let ((anon10_Else_correct  (=> (and (<= |x#0@0| 100) (= (ControlFlow 0 7) 3)) anon6_correct)))
(let ((anon10_Then_correct  (=> (< 100 |x#0@0|) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is intType (int_2_U |x#0@0|) Tclass.ErrorLocation.neg)) (=> ($Is intType (int_2_U |x#0@0|) Tclass.ErrorLocation.neg) (=> ($IsAlloc intType (int_2_U |x#0@0|) Tclass.ErrorLocation.neg $Heap) (=> (and (|ErrorLocation.__default.Q#canCall| |x#0@0|) (= (ControlFlow 0 5) 3)) anon6_correct)))))))
(let ((anon9_Then_correct  (=> (=> (<= (LitInt 0) |x#0@0|) (ErrorLocation.__default.P |x#0@0|)) (and (=> (= (ControlFlow 0 8) 5) anon10_Then_correct) (=> (= (ControlFlow 0 8) 7) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (=> (<= (LitInt 0) |x#0@0|) (ErrorLocation.__default.P |x#0@0|))) (= (ControlFlow 0 4) 3)) anon6_correct)))
(let ((anon8_Else_correct  (=> (< |x#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 11) 8) anon9_Then_correct) (=> (= (ControlFlow 0 11) 4) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (<= (LitInt 0) |x#0@0|) (and (=> (= (ControlFlow 0 9) (- 0 10)) ($Is intType (int_2_U |x#0@0|) Tclass._System.nat)) (=> ($Is intType (int_2_U |x#0@0|) Tclass._System.nat) (=> (and ($IsAlloc intType (int_2_U |x#0@0|) Tclass._System.nat $Heap) (|ErrorLocation.__default.P#canCall| |x#0@0|)) (and (=> (= (ControlFlow 0 9) 8) anon9_Then_correct) (=> (= (ControlFlow 0 9) 4) anon9_Else_correct))))))))
(let ((anon7_Then_correct  (and (=> (= (ControlFlow 0 12) 9) anon8_Then_correct) (=> (= (ControlFlow 0 12) 11) anon8_Else_correct))))
(let ((anon7_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 13) 12) anon7_Then_correct) (=> (= (ControlFlow 0 13) 1) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
