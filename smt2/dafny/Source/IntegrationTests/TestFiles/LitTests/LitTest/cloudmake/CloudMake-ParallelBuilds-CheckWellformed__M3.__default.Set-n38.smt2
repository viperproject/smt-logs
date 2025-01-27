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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M3.Env () T@U)
(declare-fun Tagclass.M3.Identifier () T@U)
(declare-fun Tagclass.M3.Expression () T@U)
(declare-fun Tagclass.M3.Literal () T@U)
(declare-fun |##M3.Env.EnvCons| () T@U)
(declare-fun |##M3.Expression.exprLiteral| () T@U)
(declare-fun |##M3.Expression.exprIdentifier| () T@U)
(declare-fun |##M3.Expression.exprIf| () T@U)
(declare-fun |##M3.Expression.exprAnd| () T@U)
(declare-fun |##M3.Expression.exprOr| () T@U)
(declare-fun |##M3.Expression.exprInvocation| () T@U)
(declare-fun |##M3.Expression.exprError| () T@U)
(declare-fun Tagclass.M3.Reason () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Env () T@U)
(declare-fun tytagFamily$Identifier () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M3.Env.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Identifier () T@U)
(declare-fun Tclass.M3.Expression () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M3.Env.EnvCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.Env () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#M3.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun |#M3.Expression.exprOr| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#M3.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#M3.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Expression.cond (T@U) T@U)
(declare-fun M3.Expression.ifTrue (T@U) T@U)
(declare-fun M3.Expression.ifFalse (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.SetEnv (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M3.__default.SetEnv#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.ValidEnv (T@U) Bool)
(declare-fun M3.__default.Value (T@U) Bool)
(declare-fun |#M3.Env.EnvCons| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |M3.Expression#Equal| (T@U T@U) Bool)
(declare-fun M3.Expression.exprIf_q (T@U) Bool)
(declare-fun |M3.Identifier#Equal| (T@U T@U) Bool)
(declare-fun |M3.Env#Equal| (T@U T@U) Bool)
(declare-fun |M3.Literal#Equal| (T@U T@U) Bool)
(declare-fun |M3.Reason#Equal| (T@U T@U) Bool)
(declare-fun |M3.__default.ValidEnv#canCall| (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |M3.__default.Value#canCall| (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M3.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M3.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M3.Expression.exprAnd_q (T@U) Bool)
(declare-fun M3.Expression.exprOr_q (T@U) Bool)
(declare-fun M3.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M3.Expression.exprError_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#M3.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M3.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M3.Expression.exprError| (T@U) T@U)
(declare-fun M3.Identifier._h12 (T@U) Int)
(declare-fun Tclass.M3.Literal () T@U)
(declare-fun Tclass.M3.Reason () T@U)
(declare-fun M3.Expression.lit (T@U) T@U)
(declare-fun M3.Expression.id (T@U) T@U)
(declare-fun M3.Expression.r (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun M3.Expression.conj0 (T@U) T@U)
(declare-fun M3.Expression.conj1 (T@U) T@U)
(declare-fun M3.Expression.disj0 (T@U) T@U)
(declare-fun M3.Expression.disj1 (T@U) T@U)
(declare-fun M3.Expression.fun (T@U) T@U)
(declare-fun M3.Expression.args (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.Env Tagclass.M3.Identifier Tagclass.M3.Expression Tagclass.M3.Literal |##M3.Env.EnvCons| |##M3.Expression.exprLiteral| |##M3.Expression.exprIdentifier| |##M3.Expression.exprIf| |##M3.Expression.exprAnd| |##M3.Expression.exprOr| |##M3.Expression.exprInvocation| |##M3.Expression.exprError| Tagclass.M3.Reason |tytagFamily$_tuple#2| tytagFamily$Env tytagFamily$Identifier tytagFamily$Expression tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M3.Env.EnvCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M3.Env $h))) ($IsAlloc MapType (M3.Env.m d) (TMap Tclass.M3.Identifier Tclass.M3.Expression) $h))
 :qid |unknown.0:0|
 :skolemid |6910|
 :pattern ( ($IsAlloc MapType (M3.Env.m d) (TMap Tclass.M3.Identifier Tclass.M3.Expression) $h))
)))
(assert (forall ((|a#96#0#0| T@U) (|a#96#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprAnd| |a#96#0#0| |a#96#1#0|) Tclass.M3.Expression)  (and ($Is DatatypeTypeType |a#96#0#0| Tclass.M3.Expression) ($Is DatatypeTypeType |a#96#1#0| Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7031|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprAnd| |a#96#0#0| |a#96#1#0|) Tclass.M3.Expression))
)))
(assert (forall ((|a#104#0#0| T@U) (|a#104#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprOr| |a#104#0#0| |a#104#1#0|) Tclass.M3.Expression)  (and ($Is DatatypeTypeType |a#104#0#0| Tclass.M3.Expression) ($Is DatatypeTypeType |a#104#1#0| Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7043|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprOr| |a#104#0#0| |a#104#1#0|) Tclass.M3.Expression))
)))
(assert (forall ((|a#117#0#0| T@U) (|a#117#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#117#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#117#1#0| i))) (DtRank (|#M3.Expression.exprInvocation| |a#117#0#0| |a#117#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7062|
 :pattern ( (|Seq#Index| |a#117#1#0| i) (|#M3.Expression.exprInvocation| |a#117#0#0| |a#117#1#0|))
)))
(assert (forall ((|a#86#0#0| T@U) (|a#86#1#0| T@U) (|a#86#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprIf| |a#86#0#0| |a#86#1#0| |a#86#2#0|) Tclass.M3.Expression)  (and (and ($Is DatatypeTypeType |a#86#0#0| Tclass.M3.Expression) ($Is DatatypeTypeType |a#86#1#0| Tclass.M3.Expression)) ($Is DatatypeTypeType |a#86#2#0| Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7016|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprIf| |a#86#0#0| |a#86#1#0| |a#86#2#0|) Tclass.M3.Expression))
)))
(assert (forall ((|a#84#0#0| T@U) (|a#84#1#0| T@U) (|a#84#2#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprIf| |a#84#0#0| |a#84#1#0| |a#84#2#0|)) |##M3.Expression.exprIf|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7012|
 :pattern ( (|#M3.Expression.exprIf| |a#84#0#0| |a#84#1#0| |a#84#2#0|))
)))
(assert (forall ((|a#88#0#0| T@U) (|a#88#1#0| T@U) (|a#88#2#0| T@U) ) (! (= (M3.Expression.cond (|#M3.Expression.exprIf| |a#88#0#0| |a#88#1#0| |a#88#2#0|)) |a#88#0#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7021|
 :pattern ( (|#M3.Expression.exprIf| |a#88#0#0| |a#88#1#0| |a#88#2#0|))
)))
(assert (forall ((|a#90#0#0| T@U) (|a#90#1#0| T@U) (|a#90#2#0| T@U) ) (! (= (M3.Expression.ifTrue (|#M3.Expression.exprIf| |a#90#0#0| |a#90#1#0| |a#90#2#0|)) |a#90#1#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7023|
 :pattern ( (|#M3.Expression.exprIf| |a#90#0#0| |a#90#1#0| |a#90#2#0|))
)))
(assert (forall ((|a#92#0#0| T@U) (|a#92#1#0| T@U) (|a#92#2#0| T@U) ) (! (= (M3.Expression.ifFalse (|#M3.Expression.exprIf| |a#92#0#0| |a#92#1#0| |a#92#2#0|)) |a#92#2#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7025|
 :pattern ( (|#M3.Expression.exprIf| |a#92#0#0| |a#92#1#0| |a#92#2#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |5423|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 5))
(assert (forall ((|a#112#0#0| T@U) (|a#112#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprInvocation| |a#112#0#0| |a#112#1#0|) Tclass.M3.Expression)  (and ($Is DatatypeTypeType |a#112#0#0| Tclass.M3.Expression) ($Is SeqType |a#112#1#0| (TSeq Tclass.M3.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7055|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprInvocation| |a#112#0#0| |a#112#1#0|) Tclass.M3.Expression))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.M3.Env) (M3.Env.EnvCons_q d@@1))
 :qid |unknown.0:0|
 :skolemid |6917|
 :pattern ( (M3.Env.EnvCons_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.M3.Env))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |5411|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0| T@U) (|expr#0| T@U) (|env#0| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0| (Lit DatatypeTypeType |expr#0|) |env#0|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0|) (M3.__default.Value (Lit DatatypeTypeType |expr#0|)))))) (and (M3.Env.EnvCons_q |env#0|) (= (M3.__default.SetEnv |id#0| (Lit DatatypeTypeType |expr#0|) |env#0|) (|#M3.Env.EnvCons| (|Map#Build| (M3.Env.m |env#0|) ($Box DatatypeTypeType |id#0|) ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :weight 3
 :skolemid |5709|
 :pattern ( (M3.__default.SetEnv |id#0| (Lit DatatypeTypeType |expr#0|) |env#0|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (M3.Expression.exprIf_q a) (M3.Expression.exprIf_q b)) (= (|M3.Expression#Equal| a b)  (and (and (|M3.Expression#Equal| (M3.Expression.cond a) (M3.Expression.cond b)) (|M3.Expression#Equal| (M3.Expression.ifTrue a) (M3.Expression.ifTrue b))) (|M3.Expression#Equal| (M3.Expression.ifFalse a) (M3.Expression.ifFalse b)))))
 :qid |unknown.0:0|
 :skolemid |7079|
 :pattern ( (|M3.Expression#Equal| a b) (M3.Expression.exprIf_q a))
 :pattern ( (|M3.Expression#Equal| a b) (M3.Expression.exprIf_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|M3.Identifier#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |6871|
 :pattern ( (|M3.Identifier#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|M3.Env#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |6919|
 :pattern ( (|M3.Env#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|M3.Expression#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |7084|
 :pattern ( (|M3.Expression#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|M3.Literal#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |7161|
 :pattern ( (|M3.Literal#Equal| a@@3 b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|M3.Reason#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |7181|
 :pattern ( (|M3.Reason#Equal| a@@4 b@@4))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@2))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|env#0@@0| T@U) ) (!  (=> (or (|M3.__default.ValidEnv#canCall| (Lit DatatypeTypeType |env#0@@0|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |env#0@@0| Tclass.M3.Env))) (and (forall ((|id#1| T@U) ) (!  (=> ($Is DatatypeTypeType |id#1| Tclass.M3.Identifier) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@0|)) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@0|))) ($Box DatatypeTypeType |id#1|)) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@0|)) (|M3.__default.Value#canCall| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@0|)))) ($Box DatatypeTypeType |id#1|))))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5721|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@0|)) ($Box DatatypeTypeType |id#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@0|)) ($Box DatatypeTypeType |id#1|)))
)) (= (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@0|)) (forall ((|id#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |id#1@@0| Tclass.M3.Identifier) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@0|))) ($Box DatatypeTypeType |id#1@@0|)) (M3.__default.Value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@0|)))) ($Box DatatypeTypeType |id#1@@0|))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5720|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@0|)) ($Box DatatypeTypeType |id#1@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@0|)) ($Box DatatypeTypeType |id#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.58:28|
 :weight 3
 :skolemid |5722|
 :pattern ( (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@0|)))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |5412|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |5404|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M3.Env.EnvCons_q d@@3) (= (DatatypeCtorId d@@3) |##M3.Env.EnvCons|))
 :qid |unknown.0:0|
 :skolemid |6906|
 :pattern ( (M3.Env.EnvCons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M3.Expression.exprLiteral_q d@@4) (= (DatatypeCtorId d@@4) |##M3.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |6995|
 :pattern ( (M3.Expression.exprLiteral_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M3.Expression.exprIdentifier_q d@@5) (= (DatatypeCtorId d@@5) |##M3.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |7004|
 :pattern ( (M3.Expression.exprIdentifier_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (M3.Expression.exprIf_q d@@6) (= (DatatypeCtorId d@@6) |##M3.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |7013|
 :pattern ( (M3.Expression.exprIf_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (M3.Expression.exprAnd_q d@@7) (= (DatatypeCtorId d@@7) |##M3.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |7028|
 :pattern ( (M3.Expression.exprAnd_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M3.Expression.exprOr_q d@@8) (= (DatatypeCtorId d@@8) |##M3.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |7040|
 :pattern ( (M3.Expression.exprOr_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M3.Expression.exprInvocation_q d@@9) (= (DatatypeCtorId d@@9) |##M3.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |7052|
 :pattern ( (M3.Expression.exprInvocation_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M3.Expression.exprError_q d@@10) (= (DatatypeCtorId d@@10) |##M3.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |7065|
 :pattern ( (M3.Expression.exprError_q d@@10))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |5194|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |5195|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (M3.Expression.exprIf_q d@@11) (exists ((|a#85#0#0| T@U) (|a#85#1#0| T@U) (|a#85#2#0| T@U) ) (! (= d@@11 (|#M3.Expression.exprIf| |a#85#0#0| |a#85#1#0| |a#85#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7014|
)))
 :qid |unknown.0:0|
 :skolemid |7015|
 :pattern ( (M3.Expression.exprIf_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@12) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@12 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5405|
)))
 :qid |unknown.0:0|
 :skolemid |5406|
 :pattern ( (_System.Tuple2.___hMake2_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (M3.Expression.exprAnd_q d@@13) (exists ((|a#95#0#0| T@U) (|a#95#1#0| T@U) ) (! (= d@@13 (|#M3.Expression.exprAnd| |a#95#0#0| |a#95#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7029|
)))
 :qid |unknown.0:0|
 :skolemid |7030|
 :pattern ( (M3.Expression.exprAnd_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (M3.Expression.exprOr_q d@@14) (exists ((|a#103#0#0| T@U) (|a#103#1#0| T@U) ) (! (= d@@14 (|#M3.Expression.exprOr| |a#103#0#0| |a#103#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7041|
)))
 :qid |unknown.0:0|
 :skolemid |7042|
 :pattern ( (M3.Expression.exprOr_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (M3.Expression.exprInvocation_q d@@15) (exists ((|a#111#0#0| T@U) (|a#111#1#0| T@U) ) (! (= d@@15 (|#M3.Expression.exprInvocation| |a#111#0#0| |a#111#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7053|
)))
 :qid |unknown.0:0|
 :skolemid |7054|
 :pattern ( (M3.Expression.exprInvocation_q d@@15))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (M3.Env.EnvCons_q d@@16) (exists ((|a#30#0#0| T@U) ) (! (= d@@16 (|#M3.Env.EnvCons| |a#30#0#0|))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6907|
)))
 :qid |unknown.0:0|
 :skolemid |6908|
 :pattern ( (M3.Env.EnvCons_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (M3.Expression.exprLiteral_q d@@17) (exists ((|a#73#0#0| T@U) ) (! (= d@@17 (|#M3.Expression.exprLiteral| |a#73#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |6996|
)))
 :qid |unknown.0:0|
 :skolemid |6997|
 :pattern ( (M3.Expression.exprLiteral_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (M3.Expression.exprIdentifier_q d@@18) (exists ((|a#79#0#0| T@U) ) (! (= d@@18 (|#M3.Expression.exprIdentifier| |a#79#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7005|
)))
 :qid |unknown.0:0|
 :skolemid |7006|
 :pattern ( (M3.Expression.exprIdentifier_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (M3.Expression.exprError_q d@@19) (exists ((|a#120#0#0| T@U) ) (! (= d@@19 (|#M3.Expression.exprError| |a#120#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7066|
)))
 :qid |unknown.0:0|
 :skolemid |7067|
 :pattern ( (M3.Expression.exprError_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> ($Is DatatypeTypeType d@@20 Tclass.M3.Expression) (or (or (or (or (or (or (M3.Expression.exprLiteral_q d@@20) (M3.Expression.exprIdentifier_q d@@20)) (M3.Expression.exprIf_q d@@20)) (M3.Expression.exprAnd_q d@@20)) (M3.Expression.exprOr_q d@@20)) (M3.Expression.exprInvocation_q d@@20)) (M3.Expression.exprError_q d@@20)))
 :qid |unknown.0:0|
 :skolemid |7076|
 :pattern ( (M3.Expression.exprError_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprInvocation_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprOr_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprAnd_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprIf_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprIdentifier_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprLiteral_q d@@20) ($Is DatatypeTypeType d@@20 Tclass.M3.Expression))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|env#0@@1| T@U) ) (!  (=> (or (|M3.__default.ValidEnv#canCall| |env#0@@1|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |env#0@@1| Tclass.M3.Env))) (and (forall ((|id#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |id#0@@0| Tclass.M3.Identifier) (and (M3.Env.EnvCons_q |env#0@@1|) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@0|)) (and (M3.Env.EnvCons_q |env#0@@1|) (|M3.__default.Value#canCall| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@0|))))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5718|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@0|)))
)) (= (M3.__default.ValidEnv |env#0@@1|) (forall ((|id#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |id#0@@1| Tclass.M3.Identifier) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@1|)) (M3.__default.Value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5717|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@1|)) ($Box DatatypeTypeType |id#0@@1|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.58:28|
 :skolemid |5719|
 :pattern ( (M3.__default.ValidEnv |env#0@@1|))
))))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|M3.Identifier#Equal| a@@5 b@@5) (= (M3.Identifier._h12 a@@5) (M3.Identifier._h12 b@@5)))
 :qid |unknown.0:0|
 :skolemid |6870|
 :pattern ( (|M3.Identifier#Equal| a@@5 b@@5))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@2| T@U) (|expr#0@@0| T@U) (|env#0@@2| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| (Lit DatatypeTypeType |id#0@@2|) (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |env#0@@2|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@2| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@0| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@2| Tclass.M3.Env)) (U_2_bool (Lit boolType (bool_2_U  (and (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@2|)) (M3.__default.Value (Lit DatatypeTypeType |expr#0@@0|))))))))) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@2|)) (= (M3.__default.SetEnv (Lit DatatypeTypeType |id#0@@2|) (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |env#0@@2|)) (|#M3.Env.EnvCons| (|Map#Build| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@2|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |id#0@@2|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :weight 3
 :skolemid |5710|
 :pattern ( (M3.__default.SetEnv (Lit DatatypeTypeType |id#0@@2|) (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |env#0@@2|)))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M3.Env) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.M3.Env)))
 :qid |unknown.0:0|
 :skolemid |5695|
 :pattern ( ($IsBox bx@@0 Tclass.M3.Env))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M3.Identifier) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M3.Identifier)))
 :qid |unknown.0:0|
 :skolemid |5696|
 :pattern ( ($IsBox bx@@1 Tclass.M3.Identifier))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M3.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M3.Expression)))
 :qid |unknown.0:0|
 :skolemid |5699|
 :pattern ( ($IsBox bx@@2 Tclass.M3.Expression))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M3.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M3.Literal)))
 :qid |unknown.0:0|
 :skolemid |5702|
 :pattern ( ($IsBox bx@@3 Tclass.M3.Literal))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M3.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M3.Reason)))
 :qid |unknown.0:0|
 :skolemid |7068|
 :pattern ( ($IsBox bx@@4 Tclass.M3.Reason))
)))
(assert (forall ((|a#74#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprLiteral| |a#74#0#0|) Tclass.M3.Expression) ($Is DatatypeTypeType |a#74#0#0| Tclass.M3.Literal))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |6998|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprLiteral| |a#74#0#0|) Tclass.M3.Expression))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprIdentifier| |a#80#0#0|) Tclass.M3.Expression) ($Is DatatypeTypeType |a#80#0#0| Tclass.M3.Identifier))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7007|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprIdentifier| |a#80#0#0|) Tclass.M3.Expression))
)))
(assert (forall ((|a#121#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprError| |a#121#0#0|) Tclass.M3.Expression) ($Is DatatypeTypeType |a#121#0#0| Tclass.M3.Reason))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7069|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprError| |a#121#0#0|) Tclass.M3.Expression))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (M3.Expression.exprLiteral_q a@@6) (M3.Expression.exprLiteral_q b@@6)) (= (|M3.Expression#Equal| a@@6 b@@6) (|M3.Literal#Equal| (M3.Expression.lit a@@6) (M3.Expression.lit b@@6))))
 :qid |unknown.0:0|
 :skolemid |7077|
 :pattern ( (|M3.Expression#Equal| a@@6 b@@6) (M3.Expression.exprLiteral_q a@@6))
 :pattern ( (|M3.Expression#Equal| a@@6 b@@6) (M3.Expression.exprLiteral_q b@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (M3.Expression.exprIdentifier_q a@@7) (M3.Expression.exprIdentifier_q b@@7)) (= (|M3.Expression#Equal| a@@7 b@@7) (|M3.Identifier#Equal| (M3.Expression.id a@@7) (M3.Expression.id b@@7))))
 :qid |unknown.0:0|
 :skolemid |7078|
 :pattern ( (|M3.Expression#Equal| a@@7 b@@7) (M3.Expression.exprIdentifier_q a@@7))
 :pattern ( (|M3.Expression#Equal| a@@7 b@@7) (M3.Expression.exprIdentifier_q b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (M3.Expression.exprError_q a@@8) (M3.Expression.exprError_q b@@8)) (= (|M3.Expression#Equal| a@@8 b@@8) (|M3.Reason#Equal| (M3.Expression.r a@@8) (M3.Expression.r b@@8))))
 :qid |unknown.0:0|
 :skolemid |7083|
 :pattern ( (|M3.Expression#Equal| a@@8 b@@8) (M3.Expression.exprError_q a@@8))
 :pattern ( (|M3.Expression#Equal| a@@8 b@@8) (M3.Expression.exprError_q b@@8))
)))
(assert (forall ((|a#35#0#0| T@U) (bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#35#0#0|) bx@@5) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#35#0#0|) bx@@5))) (DtRank (|#M3.Env.EnvCons| |a#35#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6914|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#35#0#0|) bx@@5) (|#M3.Env.EnvCons| |a#35#0#0|))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |5252|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |5253|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |5254|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@3| T@U) (|expr#0@@1| T@U) (|env#0@@3| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0@@3| |expr#0@@1| |env#0@@3|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@3| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@1| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@3| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@3|) (M3.__default.Value |expr#0@@1|))))) (and (M3.Env.EnvCons_q |env#0@@3|) (= (M3.__default.SetEnv |id#0@@3| |expr#0@@1| |env#0@@3|) (|#M3.Env.EnvCons| (|Map#Build| (M3.Env.m |env#0@@3|) ($Box DatatypeTypeType |id#0@@3|) ($Box DatatypeTypeType |expr#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |5708|
 :pattern ( (M3.__default.SetEnv |id#0@@3| |expr#0@@1| |env#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@2| T@U) ) (!  (=> (or (|M3.__default.Value#canCall| |expr#0@@2|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@2| Tclass.M3.Expression))) (= (M3.__default.Value |expr#0@@2|) (M3.Expression.exprLiteral_q |expr#0@@2|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |6668|
 :pattern ( (M3.__default.Value |expr#0@@2|))
))))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|Seq#Equal| a@@9 b@@9) (= a@@9 b@@9))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5196|
 :pattern ( (|Seq#Equal| a@@9 b@@9))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |5255|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Env.EnvCons| |a#31#0#0|) Tclass.M3.Env) ($Is MapType |a#31#0#0| (TMap Tclass.M3.Identifier Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6909|
 :pattern ( ($Is DatatypeTypeType (|#M3.Env.EnvCons| |a#31#0#0|) Tclass.M3.Env))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (!  (=> (and (M3.Expression.exprAnd_q a@@10) (M3.Expression.exprAnd_q b@@10)) (= (|M3.Expression#Equal| a@@10 b@@10)  (and (|M3.Expression#Equal| (M3.Expression.conj0 a@@10) (M3.Expression.conj0 b@@10)) (|M3.Expression#Equal| (M3.Expression.conj1 a@@10) (M3.Expression.conj1 b@@10)))))
 :qid |unknown.0:0|
 :skolemid |7080|
 :pattern ( (|M3.Expression#Equal| a@@10 b@@10) (M3.Expression.exprAnd_q a@@10))
 :pattern ( (|M3.Expression#Equal| a@@10 b@@10) (M3.Expression.exprAnd_q b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (!  (=> (and (M3.Expression.exprOr_q a@@11) (M3.Expression.exprOr_q b@@11)) (= (|M3.Expression#Equal| a@@11 b@@11)  (and (|M3.Expression#Equal| (M3.Expression.disj0 a@@11) (M3.Expression.disj0 b@@11)) (|M3.Expression#Equal| (M3.Expression.disj1 a@@11) (M3.Expression.disj1 b@@11)))))
 :qid |unknown.0:0|
 :skolemid |7081|
 :pattern ( (|M3.Expression#Equal| a@@11 b@@11) (M3.Expression.exprOr_q a@@11))
 :pattern ( (|M3.Expression#Equal| a@@11 b@@11) (M3.Expression.exprOr_q b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (!  (=> (and (M3.Expression.exprInvocation_q a@@12) (M3.Expression.exprInvocation_q b@@12)) (= (|M3.Expression#Equal| a@@12 b@@12)  (and (|M3.Expression#Equal| (M3.Expression.fun a@@12) (M3.Expression.fun b@@12)) (|Seq#Equal| (M3.Expression.args a@@12) (M3.Expression.args b@@12)))))
 :qid |unknown.0:0|
 :skolemid |7082|
 :pattern ( (|M3.Expression#Equal| a@@12 b@@12) (M3.Expression.exprInvocation_q a@@12))
 :pattern ( (|M3.Expression#Equal| a@@12 b@@12) (M3.Expression.exprInvocation_q b@@12))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |4964|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |4965|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |4966|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |5403|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |5408|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |5409|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |5418|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |5420|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#94#0#0| T@U) (|a#94#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprAnd| |a#94#0#0| |a#94#1#0|)) |##M3.Expression.exprAnd|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7027|
 :pattern ( (|#M3.Expression.exprAnd| |a#94#0#0| |a#94#1#0|))
)))
(assert (forall ((|a#98#0#0| T@U) (|a#98#1#0| T@U) ) (! (= (M3.Expression.conj0 (|#M3.Expression.exprAnd| |a#98#0#0| |a#98#1#0|)) |a#98#0#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7035|
 :pattern ( (|#M3.Expression.exprAnd| |a#98#0#0| |a#98#1#0|))
)))
(assert (forall ((|a#100#0#0| T@U) (|a#100#1#0| T@U) ) (! (= (M3.Expression.conj1 (|#M3.Expression.exprAnd| |a#100#0#0| |a#100#1#0|)) |a#100#1#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7037|
 :pattern ( (|#M3.Expression.exprAnd| |a#100#0#0| |a#100#1#0|))
)))
(assert (forall ((|a#102#0#0| T@U) (|a#102#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprOr| |a#102#0#0| |a#102#1#0|)) |##M3.Expression.exprOr|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7039|
 :pattern ( (|#M3.Expression.exprOr| |a#102#0#0| |a#102#1#0|))
)))
(assert (forall ((|a#106#0#0| T@U) (|a#106#1#0| T@U) ) (! (= (M3.Expression.disj0 (|#M3.Expression.exprOr| |a#106#0#0| |a#106#1#0|)) |a#106#0#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7047|
 :pattern ( (|#M3.Expression.exprOr| |a#106#0#0| |a#106#1#0|))
)))
(assert (forall ((|a#108#0#0| T@U) (|a#108#1#0| T@U) ) (! (= (M3.Expression.disj1 (|#M3.Expression.exprOr| |a#108#0#0| |a#108#1#0|)) |a#108#1#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7049|
 :pattern ( (|#M3.Expression.exprOr| |a#108#0#0| |a#108#1#0|))
)))
(assert (forall ((|a#110#0#0| T@U) (|a#110#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprInvocation| |a#110#0#0| |a#110#1#0|)) |##M3.Expression.exprInvocation|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7051|
 :pattern ( (|#M3.Expression.exprInvocation| |a#110#0#0| |a#110#1#0|))
)))
(assert (forall ((|a#114#0#0| T@U) (|a#114#1#0| T@U) ) (! (= (M3.Expression.fun (|#M3.Expression.exprInvocation| |a#114#0#0| |a#114#1#0|)) |a#114#0#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7059|
 :pattern ( (|#M3.Expression.exprInvocation| |a#114#0#0| |a#114#1#0|))
)))
(assert (forall ((|a#116#0#0| T@U) (|a#116#1#0| T@U) ) (! (= (M3.Expression.args (|#M3.Expression.exprInvocation| |a#116#0#0| |a#116#1#0|)) |a#116#1#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7061|
 :pattern ( (|#M3.Expression.exprInvocation| |a#116#0#0| |a#116#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5028|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5029|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#87#0#0| T@U) (|a#87#1#0| T@U) (|a#87#2#0| T@U) ) (! (= (|#M3.Expression.exprIf| (Lit DatatypeTypeType |a#87#0#0|) (Lit DatatypeTypeType |a#87#1#0|) (Lit DatatypeTypeType |a#87#2#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprIf| |a#87#0#0| |a#87#1#0| |a#87#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7020|
 :pattern ( (|#M3.Expression.exprIf| (Lit DatatypeTypeType |a#87#0#0|) (Lit DatatypeTypeType |a#87#1#0|) (Lit DatatypeTypeType |a#87#2#0|)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@4| T@U) (|expr#0@@3| T@U) (|env#0@@4| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0@@4| |expr#0@@3| |env#0@@4|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@4| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@3| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@4| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@4|) (M3.__default.Value |expr#0@@3|))))) (and (M3.__default.ValidEnv (M3.__default.SetEnv |id#0@@4| |expr#0@@3| |env#0@@4|)) ($Is DatatypeTypeType (M3.__default.SetEnv |id#0@@4| |expr#0@@3| |env#0@@4|) Tclass.M3.Env)))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |5706|
 :pattern ( (M3.__default.SetEnv |id#0@@4| |expr#0@@3| |env#0@@4|))
))))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4962|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4963|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Env.EnvCons| |a#29#0#0|)) |##M3.Env.EnvCons|)
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6905|
 :pattern ( (|#M3.Env.EnvCons| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (M3.Env.m (|#M3.Env.EnvCons| |a#33#0#0|)) |a#33#0#0|)
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6912|
 :pattern ( (|#M3.Env.EnvCons| |a#33#0#0|))
)))
(assert (forall ((|a#72#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprLiteral| |a#72#0#0|)) |##M3.Expression.exprLiteral|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |6994|
 :pattern ( (|#M3.Expression.exprLiteral| |a#72#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (M3.Expression.lit (|#M3.Expression.exprLiteral| |a#76#0#0|)) |a#76#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |7001|
 :pattern ( (|#M3.Expression.exprLiteral| |a#76#0#0|))
)))
(assert (forall ((|a#78#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprIdentifier| |a#78#0#0|)) |##M3.Expression.exprIdentifier|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7003|
 :pattern ( (|#M3.Expression.exprIdentifier| |a#78#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (= (M3.Expression.id (|#M3.Expression.exprIdentifier| |a#82#0#0|)) |a#82#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7010|
 :pattern ( (|#M3.Expression.exprIdentifier| |a#82#0#0|))
)))
(assert (forall ((|a#119#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Expression.exprError| |a#119#0#0|)) |##M3.Expression.exprError|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7064|
 :pattern ( (|#M3.Expression.exprError| |a#119#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) ) (! (= (M3.Expression.r (|#M3.Expression.exprError| |a#123#0#0|)) |a#123#0#0|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7072|
 :pattern ( (|#M3.Expression.exprError| |a#123#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@7) t1@@0 h@@2) ($IsAllocBox bx@@7 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |5030|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |5031|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#89#0#0| T@U) (|a#89#1#0| T@U) (|a#89#2#0| T@U) ) (! (< (DtRank |a#89#0#0|) (DtRank (|#M3.Expression.exprIf| |a#89#0#0| |a#89#1#0| |a#89#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7022|
 :pattern ( (|#M3.Expression.exprIf| |a#89#0#0| |a#89#1#0| |a#89#2#0|))
)))
(assert (forall ((|a#91#0#0| T@U) (|a#91#1#0| T@U) (|a#91#2#0| T@U) ) (! (< (DtRank |a#91#1#0|) (DtRank (|#M3.Expression.exprIf| |a#91#0#0| |a#91#1#0| |a#91#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7024|
 :pattern ( (|#M3.Expression.exprIf| |a#91#0#0| |a#91#1#0| |a#91#2#0|))
)))
(assert (forall ((|a#93#0#0| T@U) (|a#93#1#0| T@U) (|a#93#2#0| T@U) ) (! (< (DtRank |a#93#2#0|) (DtRank (|#M3.Expression.exprIf| |a#93#0#0| |a#93#1#0| |a#93#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7026|
 :pattern ( (|#M3.Expression.exprIf| |a#93#0#0| |a#93#1#0| |a#93#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5419|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5421|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#99#0#0| T@U) (|a#99#1#0| T@U) ) (! (< (DtRank |a#99#0#0|) (DtRank (|#M3.Expression.exprAnd| |a#99#0#0| |a#99#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7036|
 :pattern ( (|#M3.Expression.exprAnd| |a#99#0#0| |a#99#1#0|))
)))
(assert (forall ((|a#101#0#0| T@U) (|a#101#1#0| T@U) ) (! (< (DtRank |a#101#1#0|) (DtRank (|#M3.Expression.exprAnd| |a#101#0#0| |a#101#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7038|
 :pattern ( (|#M3.Expression.exprAnd| |a#101#0#0| |a#101#1#0|))
)))
(assert (forall ((|a#107#0#0| T@U) (|a#107#1#0| T@U) ) (! (< (DtRank |a#107#0#0|) (DtRank (|#M3.Expression.exprOr| |a#107#0#0| |a#107#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7048|
 :pattern ( (|#M3.Expression.exprOr| |a#107#0#0| |a#107#1#0|))
)))
(assert (forall ((|a#109#0#0| T@U) (|a#109#1#0| T@U) ) (! (< (DtRank |a#109#1#0|) (DtRank (|#M3.Expression.exprOr| |a#109#0#0| |a#109#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7050|
 :pattern ( (|#M3.Expression.exprOr| |a#109#0#0| |a#109#1#0|))
)))
(assert (forall ((|a#115#0#0| T@U) (|a#115#1#0| T@U) ) (! (< (DtRank |a#115#0#0|) (DtRank (|#M3.Expression.exprInvocation| |a#115#0#0| |a#115#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7060|
 :pattern ( (|#M3.Expression.exprInvocation| |a#115#0#0| |a#115#1#0|))
)))
(assert (forall ((|a#118#0#0| T@U) (|a#118#1#0| T@U) ) (! (< (|Seq#Rank| |a#118#1#0|) (DtRank (|#M3.Expression.exprInvocation| |a#118#0#0| |a#118#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7063|
 :pattern ( (|#M3.Expression.exprInvocation| |a#118#0#0| |a#118#1#0|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |5240|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@8 T@U) (s@@0 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@0 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@0 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@8 (TMap s@@0 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5410|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#77#0#0| T@U) ) (! (< (DtRank |a#77#0#0|) (DtRank (|#M3.Expression.exprLiteral| |a#77#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |7002|
 :pattern ( (|#M3.Expression.exprLiteral| |a#77#0#0|))
)))
(assert (forall ((|a#83#0#0| T@U) ) (! (< (DtRank |a#83#0#0|) (DtRank (|#M3.Expression.exprIdentifier| |a#83#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7011|
 :pattern ( (|#M3.Expression.exprIdentifier| |a#83#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) ) (! (< (DtRank |a#124#0#0|) (DtRank (|#M3.Expression.exprError| |a#124#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7073|
 :pattern ( (|#M3.Expression.exprError| |a#124#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|M3.Env#Equal| a@@13 b@@13) (|Map#Equal| (M3.Env.m a@@13) (M3.Env.m b@@13)))
 :qid |unknown.0:0|
 :skolemid |6918|
 :pattern ( (|M3.Env#Equal| a@@13 b@@13))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5407|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |5228|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |5229|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |5230|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |5231|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |5239|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |5237|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |5238|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@6))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |5245|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@7)) |u'|))
)))
(assert (forall ((d@@21 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@21)) (DtRank d@@21))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5039|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@21)))
)))
(assert (forall ((bx@@10 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@10 (TSet t@@9)))
)))
(assert (forall ((bx@@11 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@11 (TSeq t@@10)))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@5 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12) t1@@2) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |5010|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |5011|
 :pattern ( ($Is MapType v@@8 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@22 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@22 Tclass.M3.Identifier)) ($IsAlloc DatatypeTypeType d@@22 Tclass.M3.Identifier $h@@1))
 :qid |unknown.0:0|
 :skolemid |6867|
 :pattern ( ($IsAlloc DatatypeTypeType d@@22 Tclass.M3.Identifier $h@@1))
)))
(assert (forall ((d@@23 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@23 Tclass.M3.Env)) ($IsAlloc DatatypeTypeType d@@23 Tclass.M3.Env $h@@2))
 :qid |unknown.0:0|
 :skolemid |6915|
 :pattern ( ($IsAlloc DatatypeTypeType d@@23 Tclass.M3.Env $h@@2))
)))
(assert (forall ((d@@24 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@24 Tclass.M3.Expression)) ($IsAlloc DatatypeTypeType d@@24 Tclass.M3.Expression $h@@3))
 :qid |unknown.0:0|
 :skolemid |7074|
 :pattern ( ($IsAlloc DatatypeTypeType d@@24 Tclass.M3.Expression $h@@3))
)))
(assert (forall ((d@@25 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@25 Tclass.M3.Literal)) ($IsAlloc DatatypeTypeType d@@25 Tclass.M3.Literal $h@@4))
 :qid |unknown.0:0|
 :skolemid |7148|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 Tclass.M3.Literal $h@@4))
)))
(assert (forall ((d@@26 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@26 Tclass.M3.Reason)) ($IsAlloc DatatypeTypeType d@@26 Tclass.M3.Reason $h@@5))
 :qid |unknown.0:0|
 :skolemid |7176|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass.M3.Reason $h@@5))
)))
(assert (= (Tag Tclass.M3.Env) Tagclass.M3.Env))
(assert (= (TagFamily Tclass.M3.Env) tytagFamily$Env))
(assert (= (Tag Tclass.M3.Identifier) Tagclass.M3.Identifier))
(assert (= (TagFamily Tclass.M3.Identifier) tytagFamily$Identifier))
(assert (= (Tag Tclass.M3.Expression) Tagclass.M3.Expression))
(assert (= (TagFamily Tclass.M3.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M3.Literal) Tagclass.M3.Literal))
(assert (= (TagFamily Tclass.M3.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M3.Reason) Tagclass.M3.Reason))
(assert (= (TagFamily Tclass.M3.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@4| T@U) ) (!  (=> (or (|M3.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@4|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@4| Tclass.M3.Expression))) (= (M3.__default.Value (Lit DatatypeTypeType |expr#0@@4|)) (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@4|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |6669|
 :pattern ( (M3.__default.Value (Lit DatatypeTypeType |expr#0@@4|)))
))))
(assert (forall ((d@@27 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@27) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._0 d@@27) |_System._tuple#2$T0@@6| $h@@6))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@27) |_System._tuple#2$T0@@6| $h@@6))
)))
(assert (forall ((d@@28 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@28) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |5415|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._1 d@@28) |_System._tuple#2$T1@@7| $h@@7))
 :qid |unknown.0:0|
 :skolemid |5416|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@28) |_System._tuple#2$T1@@7| $h@@7))
)))
(assert (forall ((d@@29 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (M3.Expression.exprLiteral_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.M3.Expression $h@@8))) ($IsAlloc DatatypeTypeType (M3.Expression.lit d@@29) Tclass.M3.Literal $h@@8))
 :qid |unknown.0:0|
 :skolemid |6999|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.lit d@@29) Tclass.M3.Literal $h@@8))
)))
(assert (forall ((d@@30 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M3.Expression.exprIdentifier_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass.M3.Expression $h@@9))) ($IsAlloc DatatypeTypeType (M3.Expression.id d@@30) Tclass.M3.Identifier $h@@9))
 :qid |unknown.0:0|
 :skolemid |7008|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.id d@@30) Tclass.M3.Identifier $h@@9))
)))
(assert (forall ((d@@31 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M3.Expression.exprIf_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.M3.Expression $h@@10))) ($IsAlloc DatatypeTypeType (M3.Expression.cond d@@31) Tclass.M3.Expression $h@@10))
 :qid |unknown.0:0|
 :skolemid |7017|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.cond d@@31) Tclass.M3.Expression $h@@10))
)))
(assert (forall ((d@@32 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M3.Expression.exprIf_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass.M3.Expression $h@@11))) ($IsAlloc DatatypeTypeType (M3.Expression.ifTrue d@@32) Tclass.M3.Expression $h@@11))
 :qid |unknown.0:0|
 :skolemid |7018|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.ifTrue d@@32) Tclass.M3.Expression $h@@11))
)))
(assert (forall ((d@@33 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (M3.Expression.exprIf_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass.M3.Expression $h@@12))) ($IsAlloc DatatypeTypeType (M3.Expression.ifFalse d@@33) Tclass.M3.Expression $h@@12))
 :qid |unknown.0:0|
 :skolemid |7019|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.ifFalse d@@33) Tclass.M3.Expression $h@@12))
)))
(assert (forall ((d@@34 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (M3.Expression.exprAnd_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass.M3.Expression $h@@13))) ($IsAlloc DatatypeTypeType (M3.Expression.conj0 d@@34) Tclass.M3.Expression $h@@13))
 :qid |unknown.0:0|
 :skolemid |7032|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.conj0 d@@34) Tclass.M3.Expression $h@@13))
)))
(assert (forall ((d@@35 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (M3.Expression.exprAnd_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass.M3.Expression $h@@14))) ($IsAlloc DatatypeTypeType (M3.Expression.conj1 d@@35) Tclass.M3.Expression $h@@14))
 :qid |unknown.0:0|
 :skolemid |7033|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.conj1 d@@35) Tclass.M3.Expression $h@@14))
)))
(assert (forall ((d@@36 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (M3.Expression.exprOr_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass.M3.Expression $h@@15))) ($IsAlloc DatatypeTypeType (M3.Expression.disj0 d@@36) Tclass.M3.Expression $h@@15))
 :qid |unknown.0:0|
 :skolemid |7044|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.disj0 d@@36) Tclass.M3.Expression $h@@15))
)))
(assert (forall ((d@@37 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (M3.Expression.exprOr_q d@@37) ($IsAlloc DatatypeTypeType d@@37 Tclass.M3.Expression $h@@16))) ($IsAlloc DatatypeTypeType (M3.Expression.disj1 d@@37) Tclass.M3.Expression $h@@16))
 :qid |unknown.0:0|
 :skolemid |7045|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.disj1 d@@37) Tclass.M3.Expression $h@@16))
)))
(assert (forall ((d@@38 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M3.Expression.exprInvocation_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.M3.Expression $h@@17))) ($IsAlloc DatatypeTypeType (M3.Expression.fun d@@38) Tclass.M3.Expression $h@@17))
 :qid |unknown.0:0|
 :skolemid |7056|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.fun d@@38) Tclass.M3.Expression $h@@17))
)))
(assert (forall ((d@@39 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M3.Expression.exprError_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass.M3.Expression $h@@18))) ($IsAlloc DatatypeTypeType (M3.Expression.r d@@39) Tclass.M3.Reason $h@@18))
 :qid |unknown.0:0|
 :skolemid |7070|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.r d@@39) Tclass.M3.Reason $h@@18))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5417|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#97#0#0| T@U) (|a#97#1#0| T@U) ) (! (= (|#M3.Expression.exprAnd| (Lit DatatypeTypeType |a#97#0#0|) (Lit DatatypeTypeType |a#97#1#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprAnd| |a#97#0#0| |a#97#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7034|
 :pattern ( (|#M3.Expression.exprAnd| (Lit DatatypeTypeType |a#97#0#0|) (Lit DatatypeTypeType |a#97#1#0|)))
)))
(assert (forall ((|a#105#0#0| T@U) (|a#105#1#0| T@U) ) (! (= (|#M3.Expression.exprOr| (Lit DatatypeTypeType |a#105#0#0|) (Lit DatatypeTypeType |a#105#1#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprOr| |a#105#0#0| |a#105#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7046|
 :pattern ( (|#M3.Expression.exprOr| (Lit DatatypeTypeType |a#105#0#0|) (Lit DatatypeTypeType |a#105#1#0|)))
)))
(assert (forall ((|a#113#0#0| T@U) (|a#113#1#0| T@U) ) (! (= (|#M3.Expression.exprInvocation| (Lit DatatypeTypeType |a#113#0#0|) (Lit SeqType |a#113#1#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprInvocation| |a#113#0#0| |a#113#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7058|
 :pattern ( (|#M3.Expression.exprInvocation| (Lit DatatypeTypeType |a#113#0#0|) (Lit SeqType |a#113#1#0|)))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (|#M3.Env.EnvCons| (Lit MapType |a#32#0#0|)) (Lit DatatypeTypeType (|#M3.Env.EnvCons| |a#32#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6911|
 :pattern ( (|#M3.Env.EnvCons| (Lit MapType |a#32#0#0|)))
)))
(assert (forall ((|a#75#0#0| T@U) ) (! (= (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |a#75#0#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| |a#75#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |7000|
 :pattern ( (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |a#75#0#0|)))
)))
(assert (forall ((|a#81#0#0| T@U) ) (! (= (|#M3.Expression.exprIdentifier| (Lit DatatypeTypeType |a#81#0#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprIdentifier| |a#81#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7009|
 :pattern ( (|#M3.Expression.exprIdentifier| (Lit DatatypeTypeType |a#81#0#0|)))
)))
(assert (forall ((|a#122#0#0| T@U) ) (! (= (|#M3.Expression.exprError| (Lit DatatypeTypeType |a#122#0#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprError| |a#122#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7071|
 :pattern ( (|#M3.Expression.exprError| (Lit DatatypeTypeType |a#122#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|a#34#0#0| T@U) (d@@40 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#34#0#0|) ($Box DatatypeTypeType d@@40)) (< (DtRank d@@40) (DtRank (|#M3.Env.EnvCons| |a#34#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6913|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#34#0#0|) ($Box DatatypeTypeType d@@40)) (|#M3.Env.EnvCons| |a#34#0#0|))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((d@@41 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (M3.Expression.exprInvocation_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.M3.Expression $h@@19))) ($IsAlloc SeqType (M3.Expression.args d@@41) (TSeq Tclass.M3.Expression) $h@@19))
 :qid |unknown.0:0|
 :skolemid |7057|
 :pattern ( ($IsAlloc SeqType (M3.Expression.args d@@41) (TSeq Tclass.M3.Expression) $h@@19))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@6)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@1) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@9 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@6)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@10 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@10)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |5232|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |5233|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@11 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@11 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@11) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@11) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@11) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |5012|
 :pattern ( ($Is MapType v@@11 (TMap t0@@7 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |id#0@@5| () T@U)
(declare-fun |expr#0@@5| () T@U)
(declare-fun |env#0@@5| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M3.__default.SetEnv)
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
 (=> (= (ControlFlow 0 0) 9) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (|M3.__default.ValidEnv#canCall| (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|)) (or (M3.__default.ValidEnv (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|)) (forall ((|id#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |id#1@@1| Tclass.M3.Identifier) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|))) ($Box DatatypeTypeType |id#1@@1|)) (M3.__default.Value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|))) ($Box DatatypeTypeType |id#1@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5711|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|))) ($Box DatatypeTypeType |id#1@@1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|))) ($Box DatatypeTypeType |id#1@@1|)))
)))))))
(let ((anon5_Else_correct  (=> (M3.Env.EnvCons_q |env#0@@5|) (=> (and (and (= (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|) (|#M3.Env.EnvCons| (|Map#Build| (M3.Env.m |env#0@@5|) ($Box DatatypeTypeType |id#0@@5|) ($Box DatatypeTypeType |expr#0@@5|)))) (M3.Env.EnvCons_q |env#0@@5|)) (and ($Is DatatypeTypeType (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|) Tclass.M3.Env) (= (ControlFlow 0 7) 6))) GeneratedUnifiedExit_correct))))
(let ((anon5_Then_correct  (=> (and (and ($Is DatatypeTypeType (M3.__default.SetEnv |id#0@@5| |expr#0@@5| |env#0@@5|) Tclass.M3.Env) ($IsAlloc DatatypeTypeType |id#0@@5| Tclass.M3.Identifier $Heap)) (and ($IsAlloc DatatypeTypeType |expr#0@@5| Tclass.M3.Expression $Heap) ($IsAlloc DatatypeTypeType |env#0@@5| Tclass.M3.Env $Heap))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (M3.__default.ValidEnv |env#0@@5|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M3.__default.Value#canCall| |expr#0@@5|) (or (M3.__default.Value |expr#0@@5|) (M3.Expression.exprLiteral_q |expr#0@@5|)))) (=> (and (and (M3.__default.ValidEnv |env#0@@5|) (M3.__default.Value |expr#0@@5|)) (= (ControlFlow 0 2) (- 0 1))) (or (and (and (|M3.Identifier#Equal| |id#0@@5| |id#0@@5|) (|M3.Expression#Equal| |expr#0@@5| |expr#0@@5|)) (|M3.Env#Equal| |env#0@@5| |env#0@@5|)) (< (DtRank |expr#0@@5|) (DtRank |expr#0@@5|)))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap alloc false)) (=> (and ($IsAlloc DatatypeTypeType |env#0@@5| Tclass.M3.Env $Heap) (|M3.__default.ValidEnv#canCall| |env#0@@5|)) (=> (and (and (M3.__default.ValidEnv |env#0@@5|) ($IsAlloc DatatypeTypeType |expr#0@@5| Tclass.M3.Expression $Heap)) (and (|M3.__default.Value#canCall| |expr#0@@5|) (M3.__default.Value |expr#0@@5|))) (and (=> (= (ControlFlow 0 8) 2) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |id#0@@5| Tclass.M3.Identifier)) (and (and ($Is DatatypeTypeType |expr#0@@5| Tclass.M3.Expression) ($Is DatatypeTypeType |env#0@@5| Tclass.M3.Env)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 9) 8)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
