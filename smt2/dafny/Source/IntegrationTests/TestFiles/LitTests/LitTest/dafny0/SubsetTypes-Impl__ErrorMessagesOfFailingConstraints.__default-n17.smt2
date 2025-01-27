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
(declare-fun Tagclass.ErrorMessagesOfFailingConstraints.C? () T@U)
(declare-fun Tagclass.ErrorMessagesOfFailingConstraints.C () T@U)
(declare-fun Tagclass.ErrorMessagesOfFailingConstraints.Y () T@U)
(declare-fun Tagclass.ErrorMessagesOfFailingConstraints.X () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Y () T@U)
(declare-fun tytagFamily$X () T@U)
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
(declare-fun Tclass.ErrorMessagesOfFailingConstraints.X () T@U)
(declare-fun Tclass.ErrorMessagesOfFailingConstraints.Y () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ErrorMessagesOfFailingConstraints.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ErrorMessagesOfFailingConstraints.C () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Mod (Int Int) Int)
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
(assert (distinct alloc Tagclass.ErrorMessagesOfFailingConstraints.C? Tagclass.ErrorMessagesOfFailingConstraints.C Tagclass.ErrorMessagesOfFailingConstraints.Y Tagclass.ErrorMessagesOfFailingConstraints.X tytagFamily$C tytagFamily$Y tytagFamily$X)
)
(assert (forall ((|u#0| T@U) ($h T@U) ) (! ($IsAlloc intType |u#0| Tclass.ErrorMessagesOfFailingConstraints.X $h)
 :qid |unknown.0:0|
 :skolemid |8952|
 :pattern ( ($IsAlloc intType |u#0| Tclass.ErrorMessagesOfFailingConstraints.X $h))
)))
(assert (forall ((|v#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |v#0| Tclass.ErrorMessagesOfFailingConstraints.Y $h@@0)
 :qid |unknown.0:0|
 :skolemid |8954|
 :pattern ( ($IsAlloc intType |v#0| Tclass.ErrorMessagesOfFailingConstraints.Y $h@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.ErrorMessagesOfFailingConstraints.C?)  (or (= $o null) (= (dtype $o) Tclass.ErrorMessagesOfFailingConstraints.C?)))
 :qid |unknown.0:0|
 :skolemid |8955|
 :pattern ( ($Is refType $o Tclass.ErrorMessagesOfFailingConstraints.C?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ErrorMessagesOfFailingConstraints.C $h@@1) ($IsAlloc refType |c#0| Tclass.ErrorMessagesOfFailingConstraints.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |8958|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ErrorMessagesOfFailingConstraints.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ErrorMessagesOfFailingConstraints.C? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.ErrorMessagesOfFailingConstraints.C? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |8956|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.ErrorMessagesOfFailingConstraints.C? $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |8476|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |8474|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |8485|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.ErrorMessagesOfFailingConstraints.C)  (and ($Is refType |c#0@@0| Tclass.ErrorMessagesOfFailingConstraints.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |8957|
 :pattern ( ($Is refType |c#0@@0| Tclass.ErrorMessagesOfFailingConstraints.C))
 :pattern ( ($Is refType |c#0@@0| Tclass.ErrorMessagesOfFailingConstraints.C?))
)))
(assert (forall ((|u#0@@0| T@U) ) (! (= ($Is intType |u#0@@0| Tclass.ErrorMessagesOfFailingConstraints.X) (= (Mod (U_2_int |u#0@@0|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |8951|
 :pattern ( ($Is intType |u#0@@0| Tclass.ErrorMessagesOfFailingConstraints.X))
)))
(assert (forall ((|v#0@@0| T@U) ) (! (= ($Is intType |v#0@@0| Tclass.ErrorMessagesOfFailingConstraints.Y)  (and (= (Mod (U_2_int |v#0@@0|) (LitInt 2)) (LitInt 0)) (= (Mod (U_2_int |v#0@@0|) (LitInt 3)) (LitInt 0))))
 :qid |unknown.0:0|
 :skolemid |8953|
 :pattern ( ($Is intType |v#0@@0| Tclass.ErrorMessagesOfFailingConstraints.Y))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |8484|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |10004|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |8799|
 :pattern ( (Mod x@@6 y))
)))
(assert (= (Tag Tclass.ErrorMessagesOfFailingConstraints.C?) Tagclass.ErrorMessagesOfFailingConstraints.C?))
(assert (= (TagFamily Tclass.ErrorMessagesOfFailingConstraints.C?) tytagFamily$C))
(assert (= (Tag Tclass.ErrorMessagesOfFailingConstraints.C) Tagclass.ErrorMessagesOfFailingConstraints.C))
(assert (= (TagFamily Tclass.ErrorMessagesOfFailingConstraints.C) tytagFamily$C))
(assert (= (Tag Tclass.ErrorMessagesOfFailingConstraints.Y) Tagclass.ErrorMessagesOfFailingConstraints.Y))
(assert (= (TagFamily Tclass.ErrorMessagesOfFailingConstraints.Y) tytagFamily$Y))
(assert (= (Tag Tclass.ErrorMessagesOfFailingConstraints.X) Tagclass.ErrorMessagesOfFailingConstraints.X))
(assert (= (TagFamily Tclass.ErrorMessagesOfFailingConstraints.X) tytagFamily$X))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |8477|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |8475|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0| () Int)
(declare-fun |c#0@@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#cc#0_0| () Bool)
(declare-fun |cc#0_0| () T@U)
(declare-fun |yy#1_0| () Int)
(declare-fun |yy#2_0| () Int)
(declare-fun |yy#3_0| () Int)
(declare-fun |xx#4_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ErrorMessagesOfFailingConstraints.__default.M0)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon11_Else_correct  (=> (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (or (not (= (Mod |x#0| (LitInt 3)) (LitInt 0))) (not true))) (or (not (= (Mod |x#0| (LitInt 2)) (LitInt 0))) (not true))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 14) (- 0 13))) false)))
(let ((anon11_Then_correct  (=> (= (ControlFlow 0 12) (- 0 11)) ($Is refType |c#0@@1| Tclass.ErrorMessagesOfFailingConstraints.C))))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (and (= (Mod |x#0| (LitInt 2)) (LitInt 0)) (= (ControlFlow 0 9) (- 0 8))) ($Is intType (int_2_U |x#0|) Tclass.ErrorMessagesOfFailingConstraints.Y))))))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (=> (and (= (Mod |x#0| (LitInt 3)) (LitInt 0)) (= (ControlFlow 0 6) (- 0 5))) ($Is intType (int_2_U |x#0|) Tclass.ErrorMessagesOfFailingConstraints.Y))))))
(let ((anon8_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) ($Is intType (int_2_U |x#0|) Tclass.ErrorMessagesOfFailingConstraints.Y))))
(let ((anon7_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) ($Is intType (int_2_U |x#0|) Tclass.ErrorMessagesOfFailingConstraints.X))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 15) 2) anon7_Then_correct) (=> (= (ControlFlow 0 15) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 15) 6) anon9_Then_correct)) (=> (= (ControlFlow 0 15) 9) anon10_Then_correct)) (=> (= (ControlFlow 0 15) 12) anon11_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |c#0@@1| Tclass.ErrorMessagesOfFailingConstraints.C?) ($IsAlloc refType |c#0@@1| Tclass.ErrorMessagesOfFailingConstraints.C? $Heap)) (and (=> |defass#cc#0_0| (and ($Is refType |cc#0_0| Tclass.ErrorMessagesOfFailingConstraints.C) ($IsAlloc refType |cc#0_0| Tclass.ErrorMessagesOfFailingConstraints.C $Heap))) true)) (=> (and (and (and (and (= (Mod |yy#1_0| (LitInt 2)) (LitInt 0)) (= (Mod |yy#1_0| (LitInt 3)) (LitInt 0))) true) (and (and (= (Mod |yy#2_0| (LitInt 2)) (LitInt 0)) (= (Mod |yy#2_0| (LitInt 3)) (LitInt 0))) true)) (and (and (and (= (Mod |yy#3_0| (LitInt 2)) (LitInt 0)) (= (Mod |yy#3_0| (LitInt 3)) (LitInt 0))) true) (and (and (= (Mod |xx#4_0| (LitInt 2)) (LitInt 0)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 15))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 9) (- 8))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
