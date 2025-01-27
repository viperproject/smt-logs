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
(declare-fun TagISet () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#5| (T@U Bool) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.OtherBindersInExpressions.C () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |OtherBindersInExpressions.__default.SetComprehension0#canCall| () Bool)
(declare-fun OtherBindersInExpressions.__default.SetComprehension0 () Int)
(declare-fun Div (Int Int) Int)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagISet alloc)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| Bool) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#5| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) |l#1|))
 :qid |gitissue851dfy.204:8|
 :skolemid |4110|
 :pattern ( (MapType0Select BoxType boolType (|lambda#5| |l#0| |l#1|) |$y#0|))
)))
(assert ($AlwaysAllocated Tclass.OtherBindersInExpressions.C))
(assert  (and (and (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |3049|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |3050|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3018|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3016|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3027|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3040|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@1 (TISet t0@@1) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@1 bx@@0)) ($IsAllocBox bx@@0 t0@@1 h@@0))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |3070|
 :pattern ( (MapType0Select BoxType boolType v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |3071|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@1 (TISet t0@@1) h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |OtherBindersInExpressions.__default.SetComprehension0#canCall| (< 1 $FunctionContextHeight)) (= OtherBindersInExpressions.__default.SetComprehension0 (LitInt (Div 40 (LitInt 0)))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |OtherBindersInExpressions.__default.SetComprehension0#canCall| (< 1 $FunctionContextHeight)) (= OtherBindersInExpressions.__default.SetComprehension0 (LitInt (Div 40 (LitInt 0)))))))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |3340|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3028|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3039|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@1 T@U) (v@@3 T@U) ) (!  (=> ($IsBox v@@3 ty) ($IsAllocBox v@@3 ty h@@1))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |3080|
 :pattern ( ($IsAllocBox v@@3 ty h@@1))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |3081|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TISet (TISet t@@1)) t@@1)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3004|
 :pattern ( (TISet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TISet t@@2)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |3005|
 :pattern ( (TISet t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3026|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert  (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |4109|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TISet t@@3)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@2)) bx@@2) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@2) (TISet t@@3))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |3034|
 :pattern ( ($IsBox bx@@2 (TISet t@@3)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3019|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3017|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3062|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3041|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |b#Z#0@0| () T@U)
(declare-fun |c#2@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$OtherBindersInExpressions.__default.SetComprehension0)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_correct  (=> (and (and (= |let#0#0#0| (|lambda#5| Tclass.OtherBindersInExpressions.C (= (LitInt (Div 5 (LitInt 0))) (LitInt 19)))) ($Is (MapType0Type BoxType boolType) |let#0#0#0| (TISet Tclass.OtherBindersInExpressions.C))) (and (= |b#Z#0@0| |let#0#0#0|) (= (ControlFlow 0 3) (- 0 2)))) (or (not (= (LitInt 0) 0)) (not true)))))
(let ((anon10_Else_correct  (=> (and (or (not (= (LitInt (Div 5 (LitInt 0))) (LitInt 19))) (not true)) (= (ControlFlow 0 6) 3)) anon6_correct)))
(let ((anon10_Then_correct  (=> (and (= (LitInt (Div 5 (LitInt 0))) (LitInt 19)) (= (ControlFlow 0 5) 3)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and ($IsBox |c#2@0| Tclass.OtherBindersInExpressions.C) ($IsAllocBox |c#2@0| Tclass.OtherBindersInExpressions.C $Heap)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (U_2_bool (Lit boolType (bool_2_U false))) (= $Heap $Heap@0))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= (LitInt 0) 0)) (not true))) (=> (or (not (= (LitInt 0) 0)) (not true)) (and (=> (= (ControlFlow 0 7) 5) anon10_Then_correct) (=> (= (ControlFlow 0 7) 6) anon10_Else_correct))))))))
(let ((anon9_Else_correct  (=> (and (not (and ($IsBox |c#2@0| Tclass.OtherBindersInExpressions.C) ($IsAllocBox |c#2@0| Tclass.OtherBindersInExpressions.C $Heap))) (= (ControlFlow 0 4) 3)) anon6_correct)))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 1) anon8_Then_correct) (=> (= (ControlFlow 0 9) 7) anon9_Then_correct)) (=> (= (ControlFlow 0 9) 4) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
