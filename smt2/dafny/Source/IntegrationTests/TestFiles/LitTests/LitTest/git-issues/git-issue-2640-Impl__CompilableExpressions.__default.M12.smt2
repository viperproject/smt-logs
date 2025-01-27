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
(declare-fun Tagclass.CompilableExpressions.Color () T@U)
(declare-fun |##CompilableExpressions.Color.Red| () T@U)
(declare-fun |##CompilableExpressions.Color.Blue| () T@U)
(declare-fun |##CompilableExpressions.Color.Green| () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#CompilableExpressions.Color.Red| () T@U)
(declare-fun |#CompilableExpressions.Color.Blue| () T@U)
(declare-fun |#CompilableExpressions.Color.Green| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.CompilableExpressions.Color () T@U)
(declare-fun |$let#15$canCall| () Bool)
(declare-fun CompilableExpressions.__default.P (Int) Bool)
(declare-fun |$let#15_x| () Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun CompilableExpressions.Color.Red_q (T@U) Bool)
(declare-fun CompilableExpressions.Color.Blue_q (T@U) Bool)
(declare-fun CompilableExpressions.Color.Green_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$IsA#CompilableExpressions.Color| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.CompilableExpressions.Color |##CompilableExpressions.Color.Red| |##CompilableExpressions.Color.Blue| |##CompilableExpressions.Color.Green| tytagFamily$Color)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#CompilableExpressions.Color.Red|) |##CompilableExpressions.Color.Red|))
(assert (= (DatatypeCtorId |#CompilableExpressions.Color.Blue|) |##CompilableExpressions.Color.Blue|))
(assert (= (DatatypeCtorId |#CompilableExpressions.Color.Green|) |##CompilableExpressions.Color.Green|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#CompilableExpressions.Color.Red| Tclass.CompilableExpressions.Color))
(assert ($Is DatatypeTypeType |#CompilableExpressions.Color.Blue| Tclass.CompilableExpressions.Color))
(assert ($Is DatatypeTypeType |#CompilableExpressions.Color.Green| Tclass.CompilableExpressions.Color))
(assert  (=> |$let#15$canCall| (CompilableExpressions.__default.P |$let#15_x|)))
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
(assert (forall ((d T@U) ) (! (= (CompilableExpressions.Color.Red_q d) (= (DatatypeCtorId d) |##CompilableExpressions.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (CompilableExpressions.Color.Red_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (CompilableExpressions.Color.Blue_q d@@0) (= (DatatypeCtorId d@@0) |##CompilableExpressions.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (CompilableExpressions.Color.Blue_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (CompilableExpressions.Color.Green_q d@@1) (= (DatatypeCtorId d@@1) |##CompilableExpressions.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (CompilableExpressions.Color.Green_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (CompilableExpressions.Color.Red_q d@@2) (= d@@2 |#CompilableExpressions.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (CompilableExpressions.Color.Red_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (CompilableExpressions.Color.Blue_q d@@3) (= d@@3 |#CompilableExpressions.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (CompilableExpressions.Color.Blue_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (CompilableExpressions.Color.Green_q d@@4) (= d@@4 |#CompilableExpressions.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (CompilableExpressions.Color.Green_q d@@4))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#CompilableExpressions.Color| d@@5) (or (or (CompilableExpressions.Color.Red_q d@@5) (CompilableExpressions.Color.Blue_q d@@5)) (CompilableExpressions.Color.Green_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (|$IsA#CompilableExpressions.Color| d@@5))
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
 :skolemid |560|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.CompilableExpressions.Color) (or (or (CompilableExpressions.Color.Red_q d@@6) (CompilableExpressions.Color.Blue_q d@@6)) (CompilableExpressions.Color.Green_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (CompilableExpressions.Color.Green_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.CompilableExpressions.Color))
 :pattern ( (CompilableExpressions.Color.Blue_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.CompilableExpressions.Color))
 :pattern ( (CompilableExpressions.Color.Red_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.CompilableExpressions.Color))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass.CompilableExpressions.Color)) ($IsAlloc DatatypeTypeType d@@7 Tclass.CompilableExpressions.Color $h))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.CompilableExpressions.Color $h))
)))
(assert (= (Tag Tclass.CompilableExpressions.Color) Tagclass.CompilableExpressions.Color))
(assert (= (TagFamily Tclass.CompilableExpressions.Color) tytagFamily$Color))
(assert (= |#CompilableExpressions.Color.Red| (Lit DatatypeTypeType |#CompilableExpressions.Color.Red|)))
(assert (= |#CompilableExpressions.Color.Blue| (Lit DatatypeTypeType |#CompilableExpressions.Color.Blue|)))
(assert (= |#CompilableExpressions.Color.Green| (Lit DatatypeTypeType |#CompilableExpressions.Color.Green|)))
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
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0| () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |CompilableExpressions.__default.P#canCall| (Int) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |y#0| () Int)
(set-info :boogie-vc-id Impl$$CompilableExpressions.__default.M12)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon14_Else_correct true))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (or (not (= (ite (= (let ((|x#1| |$let#15_x|))
|x#1|) (LitInt 0)) |c#0| |c#0|) |#CompilableExpressions.Color.Blue|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon14_Then_correct) (=> (= (ControlFlow 0 6) 5) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (or (not (= (ite (= (let ((|x#1@@0| |$let#15_x|))
|x#1@@0|) (LitInt 0)) |c#0| |c#0|) |#CompilableExpressions.Color.Red|)) (not true)) (and (=> (= (ControlFlow 0 7) 3) anon13_Then_correct) (=> (= (ControlFlow 0 7) 6) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon5_correct  (=> |$let#15$canCall| (and (=> (= (ControlFlow 0 8) 2) anon12_Then_correct) (=> (= (ControlFlow 0 8) 7) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (or (not (= (let ((|x#1@@1| |$let#15_x|))
|x#1@@1|) (LitInt 0))) (not true)) (= (ControlFlow 0 10) 8)) anon5_correct)))
(let ((anon11_Then_correct  (=> (and (= (let ((|x#1@@2| |$let#15_x|))
|x#1@@2|) (LitInt 0)) (= (ControlFlow 0 9) 8)) anon5_correct)))
(let ((anon10_Then_correct  (=> (and ($IsAlloc intType (int_2_U |x#0@0|) TInt $Heap) (|CompilableExpressions.__default.P#canCall| |x#0@0|)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (CompilableExpressions.__default.P (LitInt 0))) (exists ((|x#1@@3| Int) ) (! (CompilableExpressions.__default.P |x#1@@3|)
 :qid |gitissue2640dfy.123:19|
 :skolemid |546|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (CompilableExpressions.__default.P (LitInt 0))) (exists ((|x#1@@4| Int) ) (! (CompilableExpressions.__default.P |x#1@@4|)
 :qid |gitissue2640dfy.123:19|
 :skolemid |546|
))) (=> (and (CompilableExpressions.__default.P |x#0@0|) |$let#15$canCall|) (and (=> (= (ControlFlow 0 11) 9) anon11_Then_correct) (=> (= (ControlFlow 0 11) 10) anon11_Else_correct))))))))
(let ((anon10_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 13) 11) anon10_Then_correct) (=> (= (ControlFlow 0 13) 1) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |c#0| Tclass.CompilableExpressions.Color) ($IsAlloc DatatypeTypeType |c#0| Tclass.CompilableExpressions.Color $Heap)) (|$IsA#CompilableExpressions.Color| |c#0|)) (= 1 $FunctionContextHeight)) (and (CompilableExpressions.__default.P |y#0|) (= (ControlFlow 0 14) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
