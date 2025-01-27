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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Dtz () T@U)
(declare-fun |##_module.Dtz.Cons0| () T@U)
(declare-fun |##_module.Dtz.Cons1| () T@U)
(declare-fun tytagFamily$Dtz () T@U)
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
(declare-fun _module.Dtz.Cons0_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Dtz.Cons1_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Dtz.Cons0| (Int) T@U)
(declare-fun |#_module.Dtz.Cons1| (Bool) T@U)
(declare-fun _module.Dtz._h3 (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dtz () T@U)
(declare-fun _module.Dtz._h2 (T@U) Int)
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
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._module.Dtz |##_module.Dtz.Cons0| |##_module.Dtz.Cons1| tytagFamily$Dtz)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((d T@U) ) (! (= (_module.Dtz.Cons0_q d) (= (DatatypeCtorId d) |##_module.Dtz.Cons0|))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (_module.Dtz.Cons0_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Dtz.Cons1_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Dtz.Cons1|))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (_module.Dtz.Cons1_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Dtz.Cons0_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#_module.Dtz.Cons0| |a#1#0#0|))
 :qid |StatementExpressionsdfy.119:22|
 :skolemid |688|
)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (_module.Dtz.Cons0_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Dtz.Cons1_q d@@2) (exists ((|a#6#0#0| Bool) ) (! (= d@@2 (|#_module.Dtz.Cons1| |a#6#0#0|))
 :qid |StatementExpressionsdfy.119:35|
 :skolemid |696|
)))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Dtz.Cons1_q d@@2))
)))
(assert (forall ((|a#9#0#0| Bool) ) (! (= (_module.Dtz._h3 (|#_module.Dtz.Cons1| |a#9#0#0|)) |a#9#0#0|)
 :qid |StatementExpressionsdfy.119:35|
 :skolemid |701|
 :pattern ( (|#_module.Dtz.Cons1| |a#9#0#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Dtz) (or (_module.Dtz.Cons0_q d@@3) (_module.Dtz.Cons1_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (_module.Dtz.Cons1_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Dtz))
 :pattern ( (_module.Dtz.Cons0_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Dtz))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Dtz.Cons0| |a#0#0#0|)) |##_module.Dtz.Cons0|)
 :qid |StatementExpressionsdfy.119:22|
 :skolemid |686|
 :pattern ( (|#_module.Dtz.Cons0| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.Dtz._h2 (|#_module.Dtz.Cons0| |a#4#0#0|)) |a#4#0#0|)
 :qid |StatementExpressionsdfy.119:22|
 :skolemid |693|
 :pattern ( (|#_module.Dtz.Cons0| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Bool) ) (! (= (DatatypeCtorId (|#_module.Dtz.Cons1| |a#5#0#0|)) |##_module.Dtz.Cons1|)
 :qid |StatementExpressionsdfy.119:35|
 :skolemid |694|
 :pattern ( (|#_module.Dtz.Cons1| |a#5#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Unbox T@@0 ($Box T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@0 x@@3))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Dtz.Cons0| |a#2#0#0|) Tclass._module.Dtz) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |StatementExpressionsdfy.119:22|
 :skolemid |690|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dtz.Cons0| |a#2#0#0|) Tclass._module.Dtz))
)))
(assert (forall ((|a#7#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#_module.Dtz.Cons1| |a#7#0#0|) Tclass._module.Dtz) ($Is boolType (bool_2_U |a#7#0#0|) TBool))
 :qid |StatementExpressionsdfy.119:35|
 :skolemid |698|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dtz.Cons1| |a#7#0#0|) Tclass._module.Dtz))
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
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |708|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Dtz.Cons0_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Dtz $h))) ($IsAlloc intType (int_2_U (_module.Dtz._h2 d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Dtz._h2 d@@4)) TInt $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Dtz.Cons1_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Dtz $h@@0))) ($IsAlloc boolType (bool_2_U (_module.Dtz._h3 d@@5)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Dtz._h3 d@@5)) TBool $h@@0))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@6 Tclass._module.Dtz)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Dtz $h@@1))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Dtz $h@@1))
)))
(assert (= (Tag Tclass._module.Dtz) Tagclass._module.Dtz))
(assert (= (TagFamily Tclass._module.Dtz) tytagFamily$Dtz))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |d#0@0| () T@U)
(declare-fun |_mcc#0#0_1_0@0| () Int)
(declare-fun |x#0| () Int)
(declare-fun |y#0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |d#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MyLemma)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct true))
(let ((anon7_Else_correct  (=> (or (not (= |d#0@0| (|#_module.Dtz.Cons0| |_mcc#0#0_1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 5) 3) anon8_Then_correct) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((anon7_Then_correct true))
(let ((anon6_Then_correct  (=> (< 0 |x#0|) (and (=> (= (ControlFlow 0 6) (- 0 8)) (or (<= 0 |x#0|) (= |y#0_0@0| |x#0|))) (=> (or (<= 0 |x#0|) (= |y#0_0@0| |x#0|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< |y#0_0@0| |x#0|)) (=> (< |y#0_0@0| |x#0|) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and (=> (= (ControlFlow 0 6) 2) anon7_Then_correct) (=> (= (ControlFlow 0 6) 5) anon7_Else_correct))))))))))
(let ((anon6_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($Is DatatypeTypeType |d#0@0| Tclass._module.Dtz) ($IsAlloc DatatypeTypeType |d#0@0| Tclass._module.Dtz $Heap)) (and (=> (= (ControlFlow 0 9) 6) anon6_Then_correct) (=> (= (ControlFlow 0 9) 1) anon6_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |d#0| Tclass._module.Dtz) ($IsAlloc DatatypeTypeType |d#0| Tclass._module.Dtz $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
