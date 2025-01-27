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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M2.Expression () T@U)
(declare-fun |##M2.Expression.exprLiteral| () T@U)
(declare-fun Tagclass.M2.Literal () T@U)
(declare-fun |##M2.Expression.exprIdentifier| () T@U)
(declare-fun |##M2.Expression.exprIf| () T@U)
(declare-fun |##M2.Expression.exprAnd| () T@U)
(declare-fun |##M2.Expression.exprOr| () T@U)
(declare-fun |##M2.Expression.exprInvocation| () T@U)
(declare-fun |##M2.Expression.exprError| () T@U)
(declare-fun Tagclass.M2.Reason () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Literal () T@U)
(declare-fun tytagFamily$Reason () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#M2.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun Tclass.M2.Expression () T@U)
(declare-fun |#M2.Expression.exprOr| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M2.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#M2.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M2.Expression.cond (T@U) T@U)
(declare-fun M2.Expression.ifTrue (T@U) T@U)
(declare-fun M2.Expression.ifFalse (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M2.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M2.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M2.Expression.exprIf_q (T@U) Bool)
(declare-fun M2.Expression.exprAnd_q (T@U) Bool)
(declare-fun M2.Expression.exprOr_q (T@U) Bool)
(declare-fun M2.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M2.Expression.exprError_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M2.__default.GetEnv (T@U T@U) T@U)
(declare-fun |M2.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.M2.Identifier () T@U)
(declare-fun Tclass.M2.Env () T@U)
(declare-fun M2.__default.ValidEnv (T@U) Bool)
(declare-fun M2.__default.Value (T@U) Bool)
(declare-fun |#M2.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M2.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M2.Expression.exprError| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Literal () T@U)
(declare-fun Tclass.M2.Reason () T@U)
(declare-fun |M2.__default.Value#canCall| (T@U) Bool)
(declare-fun M2.Expression.conj0 (T@U) T@U)
(declare-fun M2.Expression.conj1 (T@U) T@U)
(declare-fun M2.Expression.disj0 (T@U) T@U)
(declare-fun M2.Expression.disj1 (T@U) T@U)
(declare-fun M2.Expression.fun (T@U) T@U)
(declare-fun M2.Expression.args (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun M2.Expression.lit (T@U) T@U)
(declare-fun M2.Expression.id (T@U) T@U)
(declare-fun M2.Expression.r (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TagSeq alloc Tagclass.M2.Expression |##M2.Expression.exprLiteral| Tagclass.M2.Literal |##M2.Expression.exprIdentifier| |##M2.Expression.exprIf| |##M2.Expression.exprAnd| |##M2.Expression.exprOr| |##M2.Expression.exprInvocation| |##M2.Expression.exprError| Tagclass.M2.Reason tytagFamily$Expression tytagFamily$Literal tytagFamily$Reason)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0| |a#57#1#0|) Tclass.M2.Expression)  (and ($Is DatatypeTypeType |a#57#0#0| Tclass.M2.Expression) ($Is DatatypeTypeType |a#57#1#0| Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4773|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0| |a#57#1#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0| |a#65#1#0|) Tclass.M2.Expression)  (and ($Is DatatypeTypeType |a#65#0#0| Tclass.M2.Expression) ($Is DatatypeTypeType |a#65#1#0| Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4786|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0| |a#65#1#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#78#0#0| T@U) (|a#78#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#78#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#78#1#0| i))) (DtRank (|#M2.Expression.exprInvocation| |a#78#0#0| |a#78#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4807|
 :pattern ( (|Seq#Index| |a#78#1#0| i) (|#M2.Expression.exprInvocation| |a#78#0#0| |a#78#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) (|a#47#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|) Tclass.M2.Expression)  (and (and ($Is DatatypeTypeType |a#47#0#0| Tclass.M2.Expression) ($Is DatatypeTypeType |a#47#1#0| Tclass.M2.Expression)) ($Is DatatypeTypeType |a#47#2#0| Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4757|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|)) |##M2.Expression.exprIf|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4753|
 :pattern ( (|#M2.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) (|a#49#2#0| T@U) ) (! (= (M2.Expression.cond (|#M2.Expression.exprIf| |a#49#0#0| |a#49#1#0| |a#49#2#0|)) |a#49#0#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4763|
 :pattern ( (|#M2.Expression.exprIf| |a#49#0#0| |a#49#1#0| |a#49#2#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (|a#51#2#0| T@U) ) (! (= (M2.Expression.ifTrue (|#M2.Expression.exprIf| |a#51#0#0| |a#51#1#0| |a#51#2#0|)) |a#51#1#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4765|
 :pattern ( (|#M2.Expression.exprIf| |a#51#0#0| |a#51#1#0| |a#51#2#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) (|a#53#2#0| T@U) ) (! (= (M2.Expression.ifFalse (|#M2.Expression.exprIf| |a#53#0#0| |a#53#1#0| |a#53#2#0|)) |a#53#2#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4767|
 :pattern ( (|#M2.Expression.exprIf| |a#53#0#0| |a#53#1#0| |a#53#2#0|))
)))
(assert (forall ((|a#57#0#0@@0| T@U) (|a#57#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0@@0| |a#57#1#0@@0|) Tclass.M2.Expression $h)  (and ($IsAlloc DatatypeTypeType |a#57#0#0@@0| Tclass.M2.Expression $h) ($IsAlloc DatatypeTypeType |a#57#1#0@@0| Tclass.M2.Expression $h))))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4774|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0@@0| |a#57#1#0@@0|) Tclass.M2.Expression $h))
)))
(assert (forall ((|a#65#0#0@@0| T@U) (|a#65#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0@@0| |a#65#1#0@@0|) Tclass.M2.Expression $h@@0)  (and ($IsAlloc DatatypeTypeType |a#65#0#0@@0| Tclass.M2.Expression $h@@0) ($IsAlloc DatatypeTypeType |a#65#1#0@@0| Tclass.M2.Expression $h@@0))))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4787|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0@@0| |a#65#1#0@@0|) Tclass.M2.Expression $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 4))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0| |a#73#1#0|) Tclass.M2.Expression)  (and ($Is DatatypeTypeType |a#73#0#0| Tclass.M2.Expression) ($Is SeqType |a#73#1#0| (TSeq Tclass.M2.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4799|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0| |a#73#1#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#73#0#0@@0| T@U) (|a#73#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0@@0| |a#73#1#0@@0|) Tclass.M2.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#73#0#0@@0| Tclass.M2.Expression $h@@1) ($IsAlloc SeqType |a#73#1#0@@0| (TSeq Tclass.M2.Expression) $h@@1))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4800|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0@@0| |a#73#1#0@@0|) Tclass.M2.Expression $h@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (M2.Expression.exprLiteral_q d) (= (DatatypeCtorId d) |##M2.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |4734|
 :pattern ( (M2.Expression.exprLiteral_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M2.Expression.exprIdentifier_q d@@0) (= (DatatypeCtorId d@@0) |##M2.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |4745|
 :pattern ( (M2.Expression.exprIdentifier_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M2.Expression.exprIf_q d@@1) (= (DatatypeCtorId d@@1) |##M2.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |4754|
 :pattern ( (M2.Expression.exprIf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M2.Expression.exprAnd_q d@@2) (= (DatatypeCtorId d@@2) |##M2.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |4770|
 :pattern ( (M2.Expression.exprAnd_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M2.Expression.exprOr_q d@@3) (= (DatatypeCtorId d@@3) |##M2.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |4783|
 :pattern ( (M2.Expression.exprOr_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M2.Expression.exprInvocation_q d@@4) (= (DatatypeCtorId d@@4) |##M2.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |4796|
 :pattern ( (M2.Expression.exprInvocation_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M2.Expression.exprError_q d@@5) (= (DatatypeCtorId d@@5) |##M2.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |4810|
 :pattern ( (M2.Expression.exprError_q d@@5))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((|a#47#0#0@@0| T@U) (|a#47#1#0@@0| T@U) (|a#47#2#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0@@0| |a#47#1#0@@0| |a#47#2#0@@0|) Tclass.M2.Expression $h@@2)  (and (and ($IsAlloc DatatypeTypeType |a#47#0#0@@0| Tclass.M2.Expression $h@@2) ($IsAlloc DatatypeTypeType |a#47#1#0@@0| Tclass.M2.Expression $h@@2)) ($IsAlloc DatatypeTypeType |a#47#2#0@@0| Tclass.M2.Expression $h@@2))))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4758|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0@@0| |a#47#1#0@@0| |a#47#2#0@@0|) Tclass.M2.Expression $h@@2))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (M2.Expression.exprIf_q d@@6) (exists ((|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) ) (! (= d@@6 (|#M2.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4755|
)))
 :qid |unknown.0:0|
 :skolemid |4756|
 :pattern ( (M2.Expression.exprIf_q d@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0| T@U) ) (!  (=> (or (|M2.__default.GetEnv#canCall| |id#0| |env#0|) (and (< 3 $FunctionContextHeight) (and (and ($IsBox |id#0| Tclass.M2.Identifier) ($IsBox |env#0| Tclass.M2.Env)) (M2.__default.ValidEnv |env#0|)))) (and (M2.__default.Value (M2.__default.GetEnv |id#0| |env#0|)) ($Is DatatypeTypeType (M2.__default.GetEnv |id#0| |env#0|) Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |4356|
 :pattern ( (M2.__default.GetEnv |id#0| |env#0|))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (M2.Expression.exprAnd_q d@@7) (exists ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (= d@@7 (|#M2.Expression.exprAnd| |a#56#0#0| |a#56#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4771|
)))
 :qid |unknown.0:0|
 :skolemid |4772|
 :pattern ( (M2.Expression.exprAnd_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (M2.Expression.exprOr_q d@@8) (exists ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= d@@8 (|#M2.Expression.exprOr| |a#64#0#0| |a#64#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4784|
)))
 :qid |unknown.0:0|
 :skolemid |4785|
 :pattern ( (M2.Expression.exprOr_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (M2.Expression.exprInvocation_q d@@9) (exists ((|a#72#0#0| T@U) (|a#72#1#0| T@U) ) (! (= d@@9 (|#M2.Expression.exprInvocation| |a#72#0#0| |a#72#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4797|
)))
 :qid |unknown.0:0|
 :skolemid |4798|
 :pattern ( (M2.Expression.exprInvocation_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (M2.Expression.exprLiteral_q d@@10) (exists ((|a#35#0#0| T@U) ) (! (= d@@10 (|#M2.Expression.exprLiteral| |a#35#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4735|
)))
 :qid |unknown.0:0|
 :skolemid |4736|
 :pattern ( (M2.Expression.exprLiteral_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (M2.Expression.exprIdentifier_q d@@11) (exists ((|a#41#0#0| T@U) ) (! (= d@@11 (|#M2.Expression.exprIdentifier| |a#41#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4746|
)))
 :qid |unknown.0:0|
 :skolemid |4747|
 :pattern ( (M2.Expression.exprIdentifier_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (M2.Expression.exprError_q d@@12) (exists ((|a#81#0#0| T@U) ) (! (= d@@12 (|#M2.Expression.exprError| |a#81#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4811|
)))
 :qid |unknown.0:0|
 :skolemid |4812|
 :pattern ( (M2.Expression.exprError_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass.M2.Expression) (or (or (or (or (or (or (M2.Expression.exprLiteral_q d@@13) (M2.Expression.exprIdentifier_q d@@13)) (M2.Expression.exprIf_q d@@13)) (M2.Expression.exprAnd_q d@@13)) (M2.Expression.exprOr_q d@@13)) (M2.Expression.exprInvocation_q d@@13)) (M2.Expression.exprError_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |4821|
 :pattern ( (M2.Expression.exprError_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprInvocation_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprOr_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprAnd_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprIf_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprIdentifier_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprLiteral_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M2.Expression))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (|id#0@@0| T@U) (|env#0@@0| T@U) ) (!  (=> (and (or (|M2.__default.GetEnv#canCall| |id#0@@0| |env#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@0| Tclass.M2.Identifier) ($IsAllocBox |id#0@@0| Tclass.M2.Identifier $Heap)) (and ($IsBox |env#0@@0| Tclass.M2.Env) ($IsAllocBox |env#0@@0| Tclass.M2.Env $Heap))) (M2.__default.ValidEnv |env#0@@0|)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (M2.__default.GetEnv |id#0@@0| |env#0@@0|) Tclass.M2.Expression $Heap))
 :qid |CloudMakeParallelBuildsdfy.61:18|
 :skolemid |4357|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.GetEnv |id#0@@0| |env#0@@0|) Tclass.M2.Expression $Heap))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.M2.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.M2.Expression)))
 :qid |unknown.0:0|
 :skolemid |4273|
 :pattern ( ($IsBox bx Tclass.M2.Expression))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M2.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.M2.Literal)))
 :qid |unknown.0:0|
 :skolemid |4737|
 :pattern ( ($IsBox bx@@0 Tclass.M2.Literal))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M2.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M2.Reason)))
 :qid |unknown.0:0|
 :skolemid |4813|
 :pattern ( ($IsBox bx@@1 Tclass.M2.Reason))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0|) Tclass.M2.Expression) ($Is DatatypeTypeType |a#36#0#0| Tclass.M2.Literal))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4738|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#42#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0|) Tclass.M2.Expression) ($IsBox |a#42#0#0| Tclass.M2.Identifier))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4748|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0|) Tclass.M2.Expression))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0|) Tclass.M2.Expression) ($Is DatatypeTypeType |a#82#0#0| Tclass.M2.Reason))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4814|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0|) Tclass.M2.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0| T@U) ) (!  (=> (or (|M2.__default.Value#canCall| |expr#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0| Tclass.M2.Expression))) (= (M2.__default.Value |expr#0|) (M2.Expression.exprLiteral_q |expr#0|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |4478|
 :pattern ( (M2.__default.Value |expr#0|))
))))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0@@0|) Tclass.M2.Expression $h@@3) ($IsAlloc DatatypeTypeType |a#36#0#0@@0| Tclass.M2.Literal $h@@3)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4739|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0@@0|) Tclass.M2.Expression $h@@3))
)))
(assert (forall ((|a#42#0#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0@@0|) Tclass.M2.Expression $h@@4) ($IsAllocBox |a#42#0#0@@0| Tclass.M2.Identifier $h@@4)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4749|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0@@0|) Tclass.M2.Expression $h@@4))
)))
(assert (forall ((|a#82#0#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0@@0|) Tclass.M2.Expression $h@@5) ($IsAlloc DatatypeTypeType |a#82#0#0@@0| Tclass.M2.Reason $h@@5)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4815|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0@@0|) Tclass.M2.Expression $h@@5))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2835|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3018|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprAnd| |a#55#0#0| |a#55#1#0|)) |##M2.Expression.exprAnd|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4769|
 :pattern ( (|#M2.Expression.exprAnd| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= (M2.Expression.conj0 (|#M2.Expression.exprAnd| |a#59#0#0| |a#59#1#0|)) |a#59#0#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4778|
 :pattern ( (|#M2.Expression.exprAnd| |a#59#0#0| |a#59#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (M2.Expression.conj1 (|#M2.Expression.exprAnd| |a#61#0#0| |a#61#1#0|)) |a#61#1#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4780|
 :pattern ( (|#M2.Expression.exprAnd| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprOr| |a#63#0#0| |a#63#1#0|)) |##M2.Expression.exprOr|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4782|
 :pattern ( (|#M2.Expression.exprOr| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#67#0#0| T@U) (|a#67#1#0| T@U) ) (! (= (M2.Expression.disj0 (|#M2.Expression.exprOr| |a#67#0#0| |a#67#1#0|)) |a#67#0#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4791|
 :pattern ( (|#M2.Expression.exprOr| |a#67#0#0| |a#67#1#0|))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) ) (! (= (M2.Expression.disj1 (|#M2.Expression.exprOr| |a#69#0#0| |a#69#1#0|)) |a#69#1#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4793|
 :pattern ( (|#M2.Expression.exprOr| |a#69#0#0| |a#69#1#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|)) |##M2.Expression.exprInvocation|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4795|
 :pattern ( (|#M2.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) ) (! (= (M2.Expression.fun (|#M2.Expression.exprInvocation| |a#75#0#0| |a#75#1#0|)) |a#75#0#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4804|
 :pattern ( (|#M2.Expression.exprInvocation| |a#75#0#0| |a#75#1#0|))
)))
(assert (forall ((|a#77#0#0| T@U) (|a#77#1#0| T@U) ) (! (= (M2.Expression.args (|#M2.Expression.exprInvocation| |a#77#0#0| |a#77#1#0|)) |a#77#1#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4806|
 :pattern ( (|#M2.Expression.exprInvocation| |a#77#0#0| |a#77#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2870|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2871|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) (|a#48#2#0| T@U) ) (! (= (|#M2.Expression.exprIf| (Lit DatatypeTypeType |a#48#0#0|) (Lit DatatypeTypeType |a#48#1#0|) (Lit DatatypeTypeType |a#48#2#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprIf| |a#48#0#0| |a#48#1#0| |a#48#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4762|
 :pattern ( (|#M2.Expression.exprIf| (Lit DatatypeTypeType |a#48#0#0|) (Lit DatatypeTypeType |a#48#1#0|) (Lit DatatypeTypeType |a#48#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2804|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2805|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprLiteral| |a#34#0#0|)) |##M2.Expression.exprLiteral|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4733|
 :pattern ( (|#M2.Expression.exprLiteral| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (M2.Expression.lit (|#M2.Expression.exprLiteral| |a#38#0#0|)) |a#38#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4742|
 :pattern ( (|#M2.Expression.exprLiteral| |a#38#0#0|))
)))
(assert (forall ((|a#40#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprIdentifier| |a#40#0#0|)) |##M2.Expression.exprIdentifier|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4744|
 :pattern ( (|#M2.Expression.exprIdentifier| |a#40#0#0|))
)))
(assert (forall ((|a#44#0#0| T@U) ) (! (= (M2.Expression.id (|#M2.Expression.exprIdentifier| |a#44#0#0|)) |a#44#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4752|
 :pattern ( (|#M2.Expression.exprIdentifier| |a#44#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Expression.exprError| |a#80#0#0|)) |##M2.Expression.exprError|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4809|
 :pattern ( (|#M2.Expression.exprError| |a#80#0#0|))
)))
(assert (forall ((|a#84#0#0| T@U) ) (! (= (M2.Expression.r (|#M2.Expression.exprError| |a#84#0#0|)) |a#84#0#0|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4818|
 :pattern ( (|#M2.Expression.exprError| |a#84#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) (|a#50#2#0| T@U) ) (! (< (DtRank |a#50#0#0|) (DtRank (|#M2.Expression.exprIf| |a#50#0#0| |a#50#1#0| |a#50#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4764|
 :pattern ( (|#M2.Expression.exprIf| |a#50#0#0| |a#50#1#0| |a#50#2#0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) (|a#52#2#0| T@U) ) (! (< (DtRank |a#52#1#0|) (DtRank (|#M2.Expression.exprIf| |a#52#0#0| |a#52#1#0| |a#52#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4766|
 :pattern ( (|#M2.Expression.exprIf| |a#52#0#0| |a#52#1#0| |a#52#2#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (|a#54#2#0| T@U) ) (! (< (DtRank |a#54#2#0|) (DtRank (|#M2.Expression.exprIf| |a#54#0#0| |a#54#1#0| |a#54#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4768|
 :pattern ( (|#M2.Expression.exprIf| |a#54#0#0| |a#54#1#0| |a#54#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (< (DtRank |a#60#0#0|) (DtRank (|#M2.Expression.exprAnd| |a#60#0#0| |a#60#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4779|
 :pattern ( (|#M2.Expression.exprAnd| |a#60#0#0| |a#60#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (< (DtRank |a#62#1#0|) (DtRank (|#M2.Expression.exprAnd| |a#62#0#0| |a#62#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4781|
 :pattern ( (|#M2.Expression.exprAnd| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) ) (! (< (DtRank |a#68#0#0|) (DtRank (|#M2.Expression.exprOr| |a#68#0#0| |a#68#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4792|
 :pattern ( (|#M2.Expression.exprOr| |a#68#0#0| |a#68#1#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) ) (! (< (DtRank |a#70#1#0|) (DtRank (|#M2.Expression.exprOr| |a#70#0#0| |a#70#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4794|
 :pattern ( (|#M2.Expression.exprOr| |a#70#0#0| |a#70#1#0|))
)))
(assert (forall ((|a#76#0#0| T@U) (|a#76#1#0| T@U) ) (! (< (DtRank |a#76#0#0|) (DtRank (|#M2.Expression.exprInvocation| |a#76#0#0| |a#76#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4805|
 :pattern ( (|#M2.Expression.exprInvocation| |a#76#0#0| |a#76#1#0|))
)))
(assert (forall ((|a#79#0#0| T@U) (|a#79#1#0| T@U) ) (! (< (|Seq#Rank| |a#79#1#0|) (DtRank (|#M2.Expression.exprInvocation| |a#79#0#0| |a#79#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4808|
 :pattern ( (|#M2.Expression.exprInvocation| |a#79#0#0| |a#79#1#0|))
)))
(assert (forall ((|a#39#0#0| T@U) ) (! (< (DtRank |a#39#0#0|) (DtRank (|#M2.Expression.exprLiteral| |a#39#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4743|
 :pattern ( (|#M2.Expression.exprLiteral| |a#39#0#0|))
)))
(assert (forall ((|a#85#0#0| T@U) ) (! (< (DtRank |a#85#0#0|) (DtRank (|#M2.Expression.exprError| |a#85#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4819|
 :pattern ( (|#M2.Expression.exprError| |a#85#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7213|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2832|
 :pattern ( ($IsBox bx@@2 (TSeq t@@3)))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@14 Tclass.M2.Reason)) ($IsAlloc DatatypeTypeType d@@14 Tclass.M2.Reason $h@@6))
 :qid |unknown.0:0|
 :skolemid |4930|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass.M2.Reason $h@@6))
)))
(assert (= (Tag Tclass.M2.Expression) Tagclass.M2.Expression))
(assert (= (TagFamily Tclass.M2.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M2.Literal) Tagclass.M2.Literal))
(assert (= (TagFamily Tclass.M2.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M2.Reason) Tagclass.M2.Reason))
(assert (= (TagFamily Tclass.M2.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@0| T@U) ) (!  (=> (or (|M2.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@0| Tclass.M2.Expression))) (= (M2.__default.Value (Lit DatatypeTypeType |expr#0@@0|)) (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |4479|
 :pattern ( (M2.__default.Value (Lit DatatypeTypeType |expr#0@@0|)))
))))
(assert (forall ((d@@15 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (M2.Expression.exprLiteral_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.M2.Expression $h@@7))) ($IsAlloc DatatypeTypeType (M2.Expression.lit d@@15) Tclass.M2.Literal $h@@7))
 :qid |unknown.0:0|
 :skolemid |4740|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.lit d@@15) Tclass.M2.Literal $h@@7))
)))
(assert (forall ((d@@16 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M2.Expression.exprIdentifier_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.M2.Expression $h@@8))) ($IsAllocBox (M2.Expression.id d@@16) Tclass.M2.Identifier $h@@8))
 :qid |unknown.0:0|
 :skolemid |4750|
 :pattern ( ($IsAllocBox (M2.Expression.id d@@16) Tclass.M2.Identifier $h@@8))
)))
(assert (forall ((d@@17 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M2.Expression.exprIf_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.M2.Expression $h@@9))) ($IsAlloc DatatypeTypeType (M2.Expression.cond d@@17) Tclass.M2.Expression $h@@9))
 :qid |unknown.0:0|
 :skolemid |4759|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.cond d@@17) Tclass.M2.Expression $h@@9))
)))
(assert (forall ((d@@18 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M2.Expression.exprIf_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass.M2.Expression $h@@10))) ($IsAlloc DatatypeTypeType (M2.Expression.ifTrue d@@18) Tclass.M2.Expression $h@@10))
 :qid |unknown.0:0|
 :skolemid |4760|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.ifTrue d@@18) Tclass.M2.Expression $h@@10))
)))
(assert (forall ((d@@19 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M2.Expression.exprIf_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.M2.Expression $h@@11))) ($IsAlloc DatatypeTypeType (M2.Expression.ifFalse d@@19) Tclass.M2.Expression $h@@11))
 :qid |unknown.0:0|
 :skolemid |4761|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.ifFalse d@@19) Tclass.M2.Expression $h@@11))
)))
(assert (forall ((d@@20 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (M2.Expression.exprAnd_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.M2.Expression $h@@12))) ($IsAlloc DatatypeTypeType (M2.Expression.conj0 d@@20) Tclass.M2.Expression $h@@12))
 :qid |unknown.0:0|
 :skolemid |4775|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.conj0 d@@20) Tclass.M2.Expression $h@@12))
)))
(assert (forall ((d@@21 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M2.Expression.exprAnd_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.M2.Expression $h@@13))) ($IsAlloc DatatypeTypeType (M2.Expression.conj1 d@@21) Tclass.M2.Expression $h@@13))
 :qid |unknown.0:0|
 :skolemid |4776|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.conj1 d@@21) Tclass.M2.Expression $h@@13))
)))
(assert (forall ((d@@22 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (M2.Expression.exprOr_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.M2.Expression $h@@14))) ($IsAlloc DatatypeTypeType (M2.Expression.disj0 d@@22) Tclass.M2.Expression $h@@14))
 :qid |unknown.0:0|
 :skolemid |4788|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.disj0 d@@22) Tclass.M2.Expression $h@@14))
)))
(assert (forall ((d@@23 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (M2.Expression.exprOr_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.M2.Expression $h@@15))) ($IsAlloc DatatypeTypeType (M2.Expression.disj1 d@@23) Tclass.M2.Expression $h@@15))
 :qid |unknown.0:0|
 :skolemid |4789|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.disj1 d@@23) Tclass.M2.Expression $h@@15))
)))
(assert (forall ((d@@24 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (M2.Expression.exprInvocation_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.M2.Expression $h@@16))) ($IsAlloc DatatypeTypeType (M2.Expression.fun d@@24) Tclass.M2.Expression $h@@16))
 :qid |unknown.0:0|
 :skolemid |4801|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.fun d@@24) Tclass.M2.Expression $h@@16))
)))
(assert (forall ((d@@25 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M2.Expression.exprError_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.M2.Expression $h@@17))) ($IsAlloc DatatypeTypeType (M2.Expression.r d@@25) Tclass.M2.Reason $h@@17))
 :qid |unknown.0:0|
 :skolemid |4816|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.r d@@25) Tclass.M2.Reason $h@@17))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= (|#M2.Expression.exprAnd| (Lit DatatypeTypeType |a#58#0#0|) (Lit DatatypeTypeType |a#58#1#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprAnd| |a#58#0#0| |a#58#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4777|
 :pattern ( (|#M2.Expression.exprAnd| (Lit DatatypeTypeType |a#58#0#0|) (Lit DatatypeTypeType |a#58#1#0|)))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (= (|#M2.Expression.exprOr| (Lit DatatypeTypeType |a#66#0#0|) (Lit DatatypeTypeType |a#66#1#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprOr| |a#66#0#0| |a#66#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4790|
 :pattern ( (|#M2.Expression.exprOr| (Lit DatatypeTypeType |a#66#0#0|) (Lit DatatypeTypeType |a#66#1#0|)))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) ) (! (= (|#M2.Expression.exprInvocation| (Lit DatatypeTypeType |a#74#0#0|) (Lit SeqType |a#74#1#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprInvocation| |a#74#0#0| |a#74#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4803|
 :pattern ( (|#M2.Expression.exprInvocation| (Lit DatatypeTypeType |a#74#0#0|) (Lit SeqType |a#74#1#0|)))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |a#37#0#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| |a#37#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4741|
 :pattern ( (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |a#37#0#0|)))
)))
(assert (forall ((|a#43#0#0| T@U) ) (! (= (|#M2.Expression.exprIdentifier| (Lit BoxType |a#43#0#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#43#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4751|
 :pattern ( (|#M2.Expression.exprIdentifier| (Lit BoxType |a#43#0#0|)))
)))
(assert (forall ((|a#83#0#0| T@U) ) (! (= (|#M2.Expression.exprError| (Lit DatatypeTypeType |a#83#0#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprError| |a#83#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4817|
 :pattern ( (|#M2.Expression.exprError| (Lit DatatypeTypeType |a#83#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3019|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@26 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M2.Expression.exprInvocation_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass.M2.Expression $h@@18))) ($IsAlloc SeqType (M2.Expression.args d@@26) (TSeq Tclass.M2.Expression) $h@@18))
 :qid |unknown.0:0|
 :skolemid |4802|
 :pattern ( ($IsAlloc SeqType (M2.Expression.args d@@26) (TSeq Tclass.M2.Expression) $h@@18))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2850|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2851|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3064|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |id#0@@1| () T@U)
(declare-fun |env#0@@1| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |M2.__default.ValidEnv#canCall| (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M2.__default.GetEnv)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon4_Else_correct true))
(let ((anon4_Then_correct  (=> ($Is DatatypeTypeType (M2.__default.GetEnv |id#0@@1| |env#0@@1|) Tclass.M2.Expression) (=> (and (and ($IsAllocBox |id#0@@1| Tclass.M2.Identifier $Heap@@0) ($IsAllocBox |env#0@@1| Tclass.M2.Env $Heap@@0)) (and (M2.__default.ValidEnv |env#0@@1|) (= (ControlFlow 0 2) (- 0 1)))) (and (= |id#0@@1| |id#0@@1|) (= |env#0@@1| |env#0@@1|))))))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#4| null $Heap@@0 alloc false)) ($IsAllocBox |env#0@@1| Tclass.M2.Env $Heap@@0)) (and (|M2.__default.ValidEnv#canCall| |env#0@@1|) (M2.__default.ValidEnv |env#0@@1|))) (and (=> (= (ControlFlow 0 4) 2) anon4_Then_correct) (=> (= (ControlFlow 0 4) 3) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($IsBox |id#0@@1| Tclass.M2.Identifier) ($IsBox |env#0@@1| Tclass.M2.Env)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
