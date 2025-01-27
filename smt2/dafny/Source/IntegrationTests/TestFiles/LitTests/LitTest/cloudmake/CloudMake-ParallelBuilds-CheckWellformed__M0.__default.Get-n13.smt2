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
(declare-fun Tagclass.M0.Expression () T@U)
(declare-fun |##M0.Expression.exprLiteral| () T@U)
(declare-fun Tagclass.M0.Literal () T@U)
(declare-fun |##M0.Expression.exprIdentifier| () T@U)
(declare-fun |##M0.Expression.exprIf| () T@U)
(declare-fun |##M0.Expression.exprAnd| () T@U)
(declare-fun |##M0.Expression.exprOr| () T@U)
(declare-fun |##M0.Expression.exprInvocation| () T@U)
(declare-fun |##M0.Expression.exprError| () T@U)
(declare-fun Tagclass.M0.Reason () T@U)
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
(declare-fun |#M0.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun Tclass.M0.Expression () T@U)
(declare-fun |#M0.Expression.exprOr| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M0.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#M0.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M0.Expression.cond (T@U) T@U)
(declare-fun M0.Expression.ifTrue (T@U) T@U)
(declare-fun M0.Expression.ifFalse (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M0.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M0.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M0.Expression.exprIf_q (T@U) Bool)
(declare-fun M0.Expression.exprAnd_q (T@U) Bool)
(declare-fun M0.Expression.exprOr_q (T@U) Bool)
(declare-fun M0.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M0.Expression.exprError_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.__default.GetEnv (T@U T@U) T@U)
(declare-fun |M0.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.M0.Identifier () T@U)
(declare-fun Tclass.M0.Env () T@U)
(declare-fun M0.__default.ValidEnv (T@U) Bool)
(declare-fun M0.__default.Value (T@U) Bool)
(declare-fun |#M0.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M0.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M0.Expression.exprError| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.M0.Literal () T@U)
(declare-fun Tclass.M0.Reason () T@U)
(declare-fun |M0.__default.Value#canCall| (T@U) Bool)
(declare-fun M0.Expression.conj0 (T@U) T@U)
(declare-fun M0.Expression.conj1 (T@U) T@U)
(declare-fun M0.Expression.disj0 (T@U) T@U)
(declare-fun M0.Expression.disj1 (T@U) T@U)
(declare-fun M0.Expression.fun (T@U) T@U)
(declare-fun M0.Expression.args (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun M0.Expression.lit (T@U) T@U)
(declare-fun M0.Expression.id (T@U) T@U)
(declare-fun M0.Expression.r (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TagSeq alloc Tagclass.M0.Expression |##M0.Expression.exprLiteral| Tagclass.M0.Literal |##M0.Expression.exprIdentifier| |##M0.Expression.exprIf| |##M0.Expression.exprAnd| |##M0.Expression.exprOr| |##M0.Expression.exprInvocation| |##M0.Expression.exprError| Tagclass.M0.Reason tytagFamily$Expression tytagFamily$Literal tytagFamily$Reason)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0| |a#43#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#43#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#43#1#0| Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1202|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0| |a#43#1#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0| |a#51#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#51#1#0| Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1215|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0| |a#51#1#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#64#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#64#1#0| i))) (DtRank (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1236|
 :pattern ( (|Seq#Index| |a#64#1#0| i) (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression)  (and (and ($Is DatatypeTypeType |a#33#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#33#1#0| Tclass.M0.Expression)) ($Is DatatypeTypeType |a#33#2#0| Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1186|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprIf| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |##M0.Expression.exprIf|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1182|
 :pattern ( (|#M0.Expression.exprIf| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= (M0.Expression.cond (|#M0.Expression.exprIf| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#0#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1192|
 :pattern ( (|#M0.Expression.exprIf| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (M0.Expression.ifTrue (|#M0.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |a#37#1#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1194|
 :pattern ( (|#M0.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) ) (! (= (M0.Expression.ifFalse (|#M0.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|)) |a#39#2#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1196|
 :pattern ( (|#M0.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#43#0#0@@0| T@U) (|a#43#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h)  (and ($IsAlloc DatatypeTypeType |a#43#0#0@@0| Tclass.M0.Expression $h) ($IsAlloc DatatypeTypeType |a#43#1#0@@0| Tclass.M0.Expression $h))))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1203|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h))
)))
(assert (forall ((|a#51#0#0@@0| T@U) (|a#51#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@0)  (and ($IsAlloc DatatypeTypeType |a#51#0#0@@0| Tclass.M0.Expression $h@@0) ($IsAlloc DatatypeTypeType |a#51#1#0@@0| Tclass.M0.Expression $h@@0))))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1216|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 4))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#59#0#0| Tclass.M0.Expression) ($Is SeqType |a#59#1#0| (TSeq Tclass.M0.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#59#0#0@@0| T@U) (|a#59#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#59#0#0@@0| Tclass.M0.Expression $h@@1) ($IsAlloc SeqType |a#59#1#0@@0| (TSeq Tclass.M0.Expression) $h@@1))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (M0.Expression.exprLiteral_q d) (= (DatatypeCtorId d) |##M0.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (M0.Expression.exprLiteral_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M0.Expression.exprIdentifier_q d@@0) (= (DatatypeCtorId d@@0) |##M0.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (M0.Expression.exprIdentifier_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M0.Expression.exprIf_q d@@1) (= (DatatypeCtorId d@@1) |##M0.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (M0.Expression.exprIf_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M0.Expression.exprAnd_q d@@2) (= (DatatypeCtorId d@@2) |##M0.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( (M0.Expression.exprAnd_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M0.Expression.exprOr_q d@@3) (= (DatatypeCtorId d@@3) |##M0.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( (M0.Expression.exprOr_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M0.Expression.exprInvocation_q d@@4) (= (DatatypeCtorId d@@4) |##M0.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (M0.Expression.exprInvocation_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M0.Expression.exprError_q d@@5) (= (DatatypeCtorId d@@5) |##M0.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( (M0.Expression.exprError_q d@@5))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((|a#33#0#0@@0| T@U) (|a#33#1#0@@0| T@U) (|a#33#2#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@2)  (and (and ($IsAlloc DatatypeTypeType |a#33#0#0@@0| Tclass.M0.Expression $h@@2) ($IsAlloc DatatypeTypeType |a#33#1#0@@0| Tclass.M0.Expression $h@@2)) ($IsAlloc DatatypeTypeType |a#33#2#0@@0| Tclass.M0.Expression $h@@2))))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1187|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@2))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (M0.Expression.exprIf_q d@@6) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@6 (|#M0.Expression.exprIf| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1184|
)))
 :qid |unknown.0:0|
 :skolemid |1185|
 :pattern ( (M0.Expression.exprIf_q d@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0| T@U) ) (!  (=> (or (|M0.__default.GetEnv#canCall| |id#0| |env#0|) (and (< 3 $FunctionContextHeight) (and (and ($IsBox |id#0| Tclass.M0.Identifier) ($IsBox |env#0| Tclass.M0.Env)) (M0.__default.ValidEnv |env#0|)))) (and (M0.__default.Value (M0.__default.GetEnv |id#0| |env#0|)) ($Is DatatypeTypeType (M0.__default.GetEnv |id#0| |env#0|) Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |786|
 :pattern ( (M0.__default.GetEnv |id#0| |env#0|))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (M0.Expression.exprAnd_q d@@7) (exists ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= d@@7 (|#M0.Expression.exprAnd| |a#42#0#0| |a#42#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1200|
)))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (M0.Expression.exprAnd_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (M0.Expression.exprOr_q d@@8) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@8 (|#M0.Expression.exprOr| |a#50#0#0| |a#50#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1213|
)))
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( (M0.Expression.exprOr_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (M0.Expression.exprInvocation_q d@@9) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@9 (|#M0.Expression.exprInvocation| |a#58#0#0| |a#58#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (M0.Expression.exprInvocation_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (M0.Expression.exprLiteral_q d@@10) (exists ((|a#21#0#0| T@U) ) (! (= d@@10 (|#M0.Expression.exprLiteral| |a#21#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1164|
)))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (M0.Expression.exprLiteral_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (M0.Expression.exprIdentifier_q d@@11) (exists ((|a#27#0#0| T@U) ) (! (= d@@11 (|#M0.Expression.exprIdentifier| |a#27#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (M0.Expression.exprIdentifier_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (M0.Expression.exprError_q d@@12) (exists ((|a#67#0#0| T@U) ) (! (= d@@12 (|#M0.Expression.exprError| |a#67#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1240|
)))
 :qid |unknown.0:0|
 :skolemid |1241|
 :pattern ( (M0.Expression.exprError_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> ($Is DatatypeTypeType d@@13 Tclass.M0.Expression) (or (or (or (or (or (or (M0.Expression.exprLiteral_q d@@13) (M0.Expression.exprIdentifier_q d@@13)) (M0.Expression.exprIf_q d@@13)) (M0.Expression.exprAnd_q d@@13)) (M0.Expression.exprOr_q d@@13)) (M0.Expression.exprInvocation_q d@@13)) (M0.Expression.exprError_q d@@13)))
 :qid |unknown.0:0|
 :skolemid |1250|
 :pattern ( (M0.Expression.exprError_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprInvocation_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprOr_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprAnd_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIf_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIdentifier_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprLiteral_q d@@13) ($Is DatatypeTypeType d@@13 Tclass.M0.Expression))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (|id#0@@0| T@U) (|env#0@@0| T@U) ) (!  (=> (and (or (|M0.__default.GetEnv#canCall| |id#0@@0| |env#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@0| Tclass.M0.Identifier) ($IsAllocBox |id#0@@0| Tclass.M0.Identifier $Heap)) (and ($IsBox |env#0@@0| Tclass.M0.Env) ($IsAllocBox |env#0@@0| Tclass.M0.Env $Heap))) (M0.__default.ValidEnv |env#0@@0|)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (M0.__default.GetEnv |id#0@@0| |env#0@@0|) Tclass.M0.Expression $Heap))
 :qid |CloudMakeParallelBuildsdfy.61:18|
 :skolemid |787|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.GetEnv |id#0@@0| |env#0@@0|) Tclass.M0.Expression $Heap))
))))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.M0.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.M0.Expression)))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsBox bx Tclass.M0.Expression))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M0.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.M0.Literal)))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( ($IsBox bx@@0 Tclass.M0.Literal))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M0.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M0.Reason)))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( ($IsBox bx@@1 Tclass.M0.Reason))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0|) Tclass.M0.Expression) ($Is DatatypeTypeType |a#22#0#0| Tclass.M0.Literal))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1167|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0|) Tclass.M0.Expression) ($IsBox |a#28#0#0| Tclass.M0.Identifier))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1177|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#68#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0|) Tclass.M0.Expression) ($Is DatatypeTypeType |a#68#0#0| Tclass.M0.Reason))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1243|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0|) Tclass.M0.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0| T@U) ) (!  (=> (or (|M0.__default.Value#canCall| |expr#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0| Tclass.M0.Expression))) (= (M0.__default.Value |expr#0|) (M0.Expression.exprLiteral_q |expr#0|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |936|
 :pattern ( (M0.__default.Value |expr#0|))
))))
(assert (forall ((|a#22#0#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@3) ($IsAlloc DatatypeTypeType |a#22#0#0@@0| Tclass.M0.Literal $h@@3)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1168|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@3))
)))
(assert (forall ((|a#28#0#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@4) ($IsAllocBox |a#28#0#0@@0| Tclass.M0.Identifier $h@@4)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1178|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@4))
)))
(assert (forall ((|a#68#0#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@5) ($IsAlloc DatatypeTypeType |a#68#0#0@@0| Tclass.M0.Reason $h@@5)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1244|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@5))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprAnd| |a#41#0#0| |a#41#1#0|)) |##M0.Expression.exprAnd|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1198|
 :pattern ( (|#M0.Expression.exprAnd| |a#41#0#0| |a#41#1#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) ) (! (= (M0.Expression.conj0 (|#M0.Expression.exprAnd| |a#45#0#0| |a#45#1#0|)) |a#45#0#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1207|
 :pattern ( (|#M0.Expression.exprAnd| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (M0.Expression.conj1 (|#M0.Expression.exprAnd| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1209|
 :pattern ( (|#M0.Expression.exprAnd| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprOr| |a#49#0#0| |a#49#1#0|)) |##M0.Expression.exprOr|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1211|
 :pattern ( (|#M0.Expression.exprOr| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (M0.Expression.disj0 (|#M0.Expression.exprOr| |a#53#0#0| |a#53#1#0|)) |a#53#0#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1220|
 :pattern ( (|#M0.Expression.exprOr| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (M0.Expression.disj1 (|#M0.Expression.exprOr| |a#55#0#0| |a#55#1#0|)) |a#55#1#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1222|
 :pattern ( (|#M0.Expression.exprOr| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprInvocation| |a#57#0#0| |a#57#1#0|)) |##M0.Expression.exprInvocation|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1224|
 :pattern ( (|#M0.Expression.exprInvocation| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (M0.Expression.fun (|#M0.Expression.exprInvocation| |a#61#0#0| |a#61#1#0|)) |a#61#0#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1233|
 :pattern ( (|#M0.Expression.exprInvocation| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (= (M0.Expression.args (|#M0.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|)) |a#63#1#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1235|
 :pattern ( (|#M0.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprIf| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1191|
 :pattern ( (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprLiteral| |a#20#0#0|)) |##M0.Expression.exprLiteral|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1162|
 :pattern ( (|#M0.Expression.exprLiteral| |a#20#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (M0.Expression.lit (|#M0.Expression.exprLiteral| |a#24#0#0|)) |a#24#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1171|
 :pattern ( (|#M0.Expression.exprLiteral| |a#24#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprIdentifier| |a#26#0#0|)) |##M0.Expression.exprIdentifier|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1173|
 :pattern ( (|#M0.Expression.exprIdentifier| |a#26#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (M0.Expression.id (|#M0.Expression.exprIdentifier| |a#30#0#0|)) |a#30#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1181|
 :pattern ( (|#M0.Expression.exprIdentifier| |a#30#0#0|))
)))
(assert (forall ((|a#66#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprError| |a#66#0#0|)) |##M0.Expression.exprError|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1238|
 :pattern ( (|#M0.Expression.exprError| |a#66#0#0|))
)))
(assert (forall ((|a#70#0#0| T@U) ) (! (= (M0.Expression.r (|#M0.Expression.exprError| |a#70#0#0|)) |a#70#0#0|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1247|
 :pattern ( (|#M0.Expression.exprError| |a#70#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0|) (DtRank (|#M0.Expression.exprIf| |a#36#0#0| |a#36#1#0| |a#36#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1193|
 :pattern ( (|#M0.Expression.exprIf| |a#36#0#0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (< (DtRank |a#38#1#0|) (DtRank (|#M0.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1195|
 :pattern ( (|#M0.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (DtRank |a#40#2#0|) (DtRank (|#M0.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1197|
 :pattern ( (|#M0.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (< (DtRank |a#46#0#0|) (DtRank (|#M0.Expression.exprAnd| |a#46#0#0| |a#46#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1208|
 :pattern ( (|#M0.Expression.exprAnd| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#1#0|) (DtRank (|#M0.Expression.exprAnd| |a#48#0#0| |a#48#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1210|
 :pattern ( (|#M0.Expression.exprAnd| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#0#0|) (DtRank (|#M0.Expression.exprOr| |a#54#0#0| |a#54#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1221|
 :pattern ( (|#M0.Expression.exprOr| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#1#0|) (DtRank (|#M0.Expression.exprOr| |a#56#0#0| |a#56#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1223|
 :pattern ( (|#M0.Expression.exprOr| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (< (DtRank |a#62#0#0|) (DtRank (|#M0.Expression.exprInvocation| |a#62#0#0| |a#62#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1234|
 :pattern ( (|#M0.Expression.exprInvocation| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (< (|Seq#Rank| |a#65#1#0|) (DtRank (|#M0.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1237|
 :pattern ( (|#M0.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#M0.Expression.exprLiteral| |a#25#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1172|
 :pattern ( (|#M0.Expression.exprLiteral| |a#25#0#0|))
)))
(assert (forall ((|a#71#0#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#M0.Expression.exprError| |a#71#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1248|
 :pattern ( (|#M0.Expression.exprError| |a#71#0#0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7203|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@3)))
)))
(assert (forall ((d@@14 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@14 Tclass.M0.Reason)) ($IsAlloc DatatypeTypeType d@@14 Tclass.M0.Reason $h@@6))
 :qid |unknown.0:0|
 :skolemid |1359|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass.M0.Reason $h@@6))
)))
(assert (= (Tag Tclass.M0.Expression) Tagclass.M0.Expression))
(assert (= (TagFamily Tclass.M0.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M0.Literal) Tagclass.M0.Literal))
(assert (= (TagFamily Tclass.M0.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M0.Reason) Tagclass.M0.Reason))
(assert (= (TagFamily Tclass.M0.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@0| T@U) ) (!  (=> (or (|M0.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@0|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@0| Tclass.M0.Expression))) (= (M0.__default.Value (Lit DatatypeTypeType |expr#0@@0|)) (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |937|
 :pattern ( (M0.__default.Value (Lit DatatypeTypeType |expr#0@@0|)))
))))
(assert (forall ((d@@15 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (M0.Expression.exprLiteral_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.M0.Expression $h@@7))) ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@15) Tclass.M0.Literal $h@@7))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@15) Tclass.M0.Literal $h@@7))
)))
(assert (forall ((d@@16 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M0.Expression.exprIdentifier_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.M0.Expression $h@@8))) ($IsAllocBox (M0.Expression.id d@@16) Tclass.M0.Identifier $h@@8))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($IsAllocBox (M0.Expression.id d@@16) Tclass.M0.Identifier $h@@8))
)))
(assert (forall ((d@@17 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M0.Expression.exprIf_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass.M0.Expression $h@@9))) ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@17) Tclass.M0.Expression $h@@9))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@17) Tclass.M0.Expression $h@@9))
)))
(assert (forall ((d@@18 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M0.Expression.exprIf_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass.M0.Expression $h@@10))) ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@18) Tclass.M0.Expression $h@@10))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@18) Tclass.M0.Expression $h@@10))
)))
(assert (forall ((d@@19 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M0.Expression.exprIf_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass.M0.Expression $h@@11))) ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@19) Tclass.M0.Expression $h@@11))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@19) Tclass.M0.Expression $h@@11))
)))
(assert (forall ((d@@20 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (M0.Expression.exprAnd_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass.M0.Expression $h@@12))) ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@20) Tclass.M0.Expression $h@@12))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@20) Tclass.M0.Expression $h@@12))
)))
(assert (forall ((d@@21 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M0.Expression.exprAnd_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass.M0.Expression $h@@13))) ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@21) Tclass.M0.Expression $h@@13))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@21) Tclass.M0.Expression $h@@13))
)))
(assert (forall ((d@@22 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (M0.Expression.exprOr_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass.M0.Expression $h@@14))) ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@22) Tclass.M0.Expression $h@@14))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@22) Tclass.M0.Expression $h@@14))
)))
(assert (forall ((d@@23 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (M0.Expression.exprOr_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.M0.Expression $h@@15))) ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@23) Tclass.M0.Expression $h@@15))
 :qid |unknown.0:0|
 :skolemid |1218|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@23) Tclass.M0.Expression $h@@15))
)))
(assert (forall ((d@@24 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (M0.Expression.exprInvocation_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.M0.Expression $h@@16))) ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@24) Tclass.M0.Expression $h@@16))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@24) Tclass.M0.Expression $h@@16))
)))
(assert (forall ((d@@25 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M0.Expression.exprError_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.M0.Expression $h@@17))) ($IsAlloc DatatypeTypeType (M0.Expression.r d@@25) Tclass.M0.Reason $h@@17))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.r d@@25) Tclass.M0.Reason $h@@17))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= (|#M0.Expression.exprAnd| (Lit DatatypeTypeType |a#44#0#0|) (Lit DatatypeTypeType |a#44#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprAnd| |a#44#0#0| |a#44#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1206|
 :pattern ( (|#M0.Expression.exprAnd| (Lit DatatypeTypeType |a#44#0#0|) (Lit DatatypeTypeType |a#44#1#0|)))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (|#M0.Expression.exprOr| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprOr| |a#52#0#0| |a#52#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1219|
 :pattern ( (|#M0.Expression.exprOr| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (|#M0.Expression.exprInvocation| (Lit DatatypeTypeType |a#60#0#0|) (Lit SeqType |a#60#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprInvocation| |a#60#0#0| |a#60#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1232|
 :pattern ( (|#M0.Expression.exprInvocation| (Lit DatatypeTypeType |a#60#0#0|) (Lit SeqType |a#60#1#0|)))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |a#23#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| |a#23#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1170|
 :pattern ( (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |a#23#0#0|)))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (|#M0.Expression.exprIdentifier| (Lit BoxType |a#29#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#29#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1180|
 :pattern ( (|#M0.Expression.exprIdentifier| (Lit BoxType |a#29#0#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) ) (! (= (|#M0.Expression.exprError| (Lit DatatypeTypeType |a#69#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprError| |a#69#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1246|
 :pattern ( (|#M0.Expression.exprError| (Lit DatatypeTypeType |a#69#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((d@@26 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M0.Expression.exprInvocation_q d@@26) ($IsAlloc DatatypeTypeType d@@26 Tclass.M0.Expression $h@@18))) ($IsAlloc SeqType (M0.Expression.args d@@26) (TSeq Tclass.M0.Expression) $h@@18))
 :qid |unknown.0:0|
 :skolemid |1231|
 :pattern ( ($IsAlloc SeqType (M0.Expression.args d@@26) (TSeq Tclass.M0.Expression) $h@@18))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |id#0@@1| () T@U)
(declare-fun |env#0@@1| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |M0.__default.ValidEnv#canCall| (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.GetEnv)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_Else_correct true))
(let ((anon4_Then_correct  (=> ($Is DatatypeTypeType (M0.__default.GetEnv |id#0@@1| |env#0@@1|) Tclass.M0.Expression) (=> (and ($IsAllocBox |id#0@@1| Tclass.M0.Identifier $Heap@@0) ($IsAllocBox |env#0@@1| Tclass.M0.Env $Heap@@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (M0.__default.ValidEnv |env#0@@1|)) (=> (and (M0.__default.ValidEnv |env#0@@1|) (= (ControlFlow 0 2) (- 0 1))) (and (= |id#0@@1| |id#0@@1|) (= |env#0@@1| |env#0@@1|))))))))
(let ((anon0_correct  (=> (and (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) ($IsAllocBox |env#0@@1| Tclass.M0.Env $Heap@@0)) (and (|M0.__default.ValidEnv#canCall| |env#0@@1|) (M0.__default.ValidEnv |env#0@@1|))) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($IsBox |id#0@@1| Tclass.M0.Identifier) ($IsBox |env#0@@1| Tclass.M0.Env)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
