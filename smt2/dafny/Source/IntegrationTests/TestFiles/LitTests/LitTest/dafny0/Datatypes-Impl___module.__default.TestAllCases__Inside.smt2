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
(declare-fun Tagclass._module.Fwd () T@U)
(declare-fun |##_module.Fwd.FwdNil| () T@U)
(declare-fun |##_module.Fwd.FwdCons| () T@U)
(declare-fun tytagFamily$Fwd () T@U)
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
(declare-fun |#_module.Fwd.FwdNil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Fwd () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Fwd.FwdNil_q (T@U) Bool)
(declare-fun _module.Fwd.FwdCons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Fwd.FwdCons| (Int T@U) T@U)
(declare-fun |$IsA#_module.Fwd| (T@U) Bool)
(declare-fun _module.Fwd.k (T@U) Int)
(declare-fun _module.Fwd.w (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Fwd |##_module.Fwd.FwdNil| |##_module.Fwd.FwdCons| tytagFamily$Fwd)
)
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#_module.Fwd.FwdNil|) |##_module.Fwd.FwdNil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Fwd.FwdNil| Tclass._module.Fwd))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1912|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Fwd.FwdNil_q d) (= (DatatypeCtorId d) |##_module.Fwd.FwdNil|))
 :qid |unknown.0:0|
 :skolemid |2694|
 :pattern ( (_module.Fwd.FwdNil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Fwd.FwdCons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Fwd.FwdCons|))
 :qid |unknown.0:0|
 :skolemid |2697|
 :pattern ( (_module.Fwd.FwdCons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1923|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Fwd.FwdCons_q d@@1) (exists ((|a#34#0#0| Int) (|a#34#1#0| T@U) ) (! (= d@@1 (|#_module.Fwd.FwdCons| |a#34#0#0| |a#34#1#0|))
 :qid |Datatypesdfy.252:33|
 :skolemid |2698|
)))
 :qid |unknown.0:0|
 :skolemid |2699|
 :pattern ( (_module.Fwd.FwdCons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Fwd.FwdNil_q d@@2) (= d@@2 |#_module.Fwd.FwdNil|))
 :qid |unknown.0:0|
 :skolemid |2695|
 :pattern ( (_module.Fwd.FwdNil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Fwd| d@@3) (or (_module.Fwd.FwdNil_q d@@3) (_module.Fwd.FwdCons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2708|
 :pattern ( (|$IsA#_module.Fwd| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Fwd) (or (_module.Fwd.FwdNil_q d@@4) (_module.Fwd.FwdCons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2709|
 :pattern ( (_module.Fwd.FwdCons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Fwd))
 :pattern ( (_module.Fwd.FwdNil_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Fwd))
)))
(assert (forall ((|a#33#0#0| Int) (|a#33#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Fwd.FwdCons| |a#33#0#0| |a#33#1#0|)) |##_module.Fwd.FwdCons|)
 :qid |Datatypesdfy.252:33|
 :skolemid |2696|
 :pattern ( (|#_module.Fwd.FwdCons| |a#33#0#0| |a#33#1#0|))
)))
(assert (forall ((|a#37#0#0| Int) (|a#37#1#0| T@U) ) (! (= (_module.Fwd.k (|#_module.Fwd.FwdCons| |a#37#0#0| |a#37#1#0|)) |a#37#0#0|)
 :qid |Datatypesdfy.252:33|
 :skolemid |2704|
 :pattern ( (|#_module.Fwd.FwdCons| |a#37#0#0| |a#37#1#0|))
)))
(assert (forall ((|a#38#0#0| Int) (|a#38#1#0| T@U) ) (! (= (_module.Fwd.w (|#_module.Fwd.FwdCons| |a#38#0#0| |a#38#1#0|)) |a#38#1#0|)
 :qid |Datatypesdfy.252:33|
 :skolemid |2705|
 :pattern ( (|#_module.Fwd.FwdCons| |a#38#0#0| |a#38#1#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1922|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#39#0#0| Int) (|a#39#1#0| T@U) ) (! (< (DtRank |a#39#1#0|) (DtRank (|#_module.Fwd.FwdCons| |a#39#0#0| |a#39#1#0|)))
 :qid |Datatypesdfy.252:33|
 :skolemid |2706|
 :pattern ( (|#_module.Fwd.FwdCons| |a#39#0#0| |a#39#1#0|))
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
 :skolemid |2849|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Fwd.FwdCons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Fwd $h))) ($IsAlloc intType (int_2_U (_module.Fwd.k d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2701|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Fwd.k d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@6 Tclass._module.Fwd)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Fwd $h@@0))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Fwd $h@@0))
)))
(assert (= (Tag Tclass._module.Fwd) Tagclass._module.Fwd))
(assert (= (TagFamily Tclass._module.Fwd) tytagFamily$Fwd))
(assert (= |#_module.Fwd.FwdNil| (Lit DatatypeTypeType |#_module.Fwd.FwdNil|)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Fwd.FwdCons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Fwd $h@@1))) ($IsAlloc DatatypeTypeType (_module.Fwd.w d@@7) Tclass._module.Fwd $h@@1))
 :qid |unknown.0:0|
 :skolemid |2702|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Fwd.w d@@7) Tclass._module.Fwd $h@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1913|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((|a#35#0#0| Int) (|a#35#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Fwd.FwdCons| |a#35#0#0| |a#35#1#0|) Tclass._module.Fwd)  (and ($Is intType (int_2_U |a#35#0#0|) TInt) ($Is DatatypeTypeType |a#35#1#0| Tclass._module.Fwd)))
 :qid |Datatypesdfy.252:33|
 :skolemid |2700|
 :pattern ( ($Is DatatypeTypeType (|#_module.Fwd.FwdCons| |a#35#0#0| |a#35#1#0|) Tclass._module.Fwd))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1958|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1937|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |f#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestAllCases__Inside)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (or (_module.Fwd.FwdNil_q (_module.Fwd.w |f#0|)) (_module.Fwd.FwdCons_q (_module.Fwd.w |f#0|))))))
(let ((anon6_Else_correct  (=> (and (_module.Fwd.FwdNil_q (_module.Fwd.w |f#0|)) (= (ControlFlow 0 6) 3)) anon3_correct)))
(let ((anon6_Then_correct  (=> (not (_module.Fwd.FwdNil_q (_module.Fwd.w |f#0|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (_module.Fwd.FwdCons_q |f#0|)) (=> (_module.Fwd.FwdCons_q |f#0|) (=> (= (ControlFlow 0 4) 3) anon3_correct))))))
(let ((anon5_Then_correct  (=> (_module.Fwd.FwdCons_q |f#0|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (_module.Fwd.FwdCons_q |f#0|)) (=> (_module.Fwd.FwdCons_q |f#0|) (and (=> (= (ControlFlow 0 7) 4) anon6_Then_correct) (=> (= (ControlFlow 0 7) 6) anon6_Else_correct)))))))
(let ((anon5_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 9) 7) anon5_Then_correct) (=> (= (ControlFlow 0 9) 1) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |f#0| Tclass._module.Fwd) ($IsAlloc DatatypeTypeType |f#0| Tclass._module.Fwd $Heap)) (|$IsA#_module.Fwd| |f#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
