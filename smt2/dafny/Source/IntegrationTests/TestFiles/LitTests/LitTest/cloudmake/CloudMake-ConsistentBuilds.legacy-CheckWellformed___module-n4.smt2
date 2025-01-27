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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Path () T@U)
(declare-fun Tagclass._module.Expression () T@U)
(declare-fun Tagclass._module.Triple () T@U)
(declare-fun Tagclass._module.StateC () T@U)
(declare-fun Tagclass._module.Primitive () T@U)
(declare-fun |##_module.StateC.S| () T@U)
(declare-fun |##_module.Expression.exprLiteral| () T@U)
(declare-fun Tagclass._module.Literal () T@U)
(declare-fun |##_module.Expression.exprIdentifier| () T@U)
(declare-fun |##_module.Expression.exprIf| () T@U)
(declare-fun |##_module.Expression.exprAnd| () T@U)
(declare-fun |##_module.Expression.exprOr| () T@U)
(declare-fun |##_module.Expression.exprInvocation| () T@U)
(declare-fun |##_module.Expression.exprError| () T@U)
(declare-fun Tagclass._module.Reason () T@U)
(declare-fun |##_module.Literal.litTrue| () T@U)
(declare-fun |##_module.Literal.litFalse| () T@U)
(declare-fun |##_module.Literal.litUndefined| () T@U)
(declare-fun |##_module.Literal.litNull| () T@U)
(declare-fun |##_module.Literal.litNumber| () T@U)
(declare-fun |##_module.Literal.litString| () T@U)
(declare-fun |##_module.Literal.litPrimitive| () T@U)
(declare-fun |##_module.Literal.litArrOfPaths| () T@U)
(declare-fun |##_module.Literal.litArrOfStrings| () T@U)
(declare-fun |##_module.Literal.litArray| () T@U)
(declare-fun |##_module.Triple.Trio| () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Triple () T@U)
(declare-fun tytagFamily$StateC () T@U)
(declare-fun tytagFamily$Primitive () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.StateC.S| (T@U T@U) T@U)
(declare-fun Tclass._module.StateC () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.State () T@U)
(declare-fun Tclass._module.Cache () T@U)
(declare-fun |#_module.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun Tclass._module.Expression () T@U)
(declare-fun |#_module.Expression.exprOr| (T@U T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |#_module.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |_module.Expression#Equal| (T@U T@U) Bool)
(declare-fun _module.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun _module.Expression.id (T@U) T@U)
(declare-fun |_module.Literal#Equal| (T@U T@U) Bool)
(declare-fun _module.Literal.litNumber_q (T@U) Bool)
(declare-fun _module.Literal.num (T@U) Int)
(declare-fun |#_module.Literal.litString| (T@U) T@U)
(declare-fun |#_module.Literal.litArray| (T@U) T@U)
(declare-fun Tclass._module.Triple (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Triple_0 (T@U) T@U)
(declare-fun Tclass._module.Triple_1 (T@U) T@U)
(declare-fun Tclass._module.Triple_2 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Expression.cond (T@U) T@U)
(declare-fun _module.Expression.ifTrue (T@U) T@U)
(declare-fun _module.Expression.ifFalse (T@U) T@U)
(declare-fun |#_module.Triple.Trio| (T@U T@U T@U) T@U)
(declare-fun _module.Triple.fst (T@U) T@U)
(declare-fun _module.Triple.snd (T@U) T@U)
(declare-fun _module.Triple.trd (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.HashValue () T@U)
(declare-fun Tclass._module.Identifier () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.__default.UpdateC (T@U T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.StateC#Equal| (T@U T@U) Bool)
(declare-fun _module.StateC.st (T@U) T@U)
(declare-fun _module.StateC.c (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_module.Literal.litTrue| () T@U)
(declare-fun |#_module.Literal.litFalse| () T@U)
(declare-fun |#_module.Literal.litUndefined| () T@U)
(declare-fun |#_module.Literal.litNull| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.StateC.S_q (T@U) Bool)
(declare-fun Tclass._module.Literal () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.Loc (T@U T@U T@U) T@U)
(declare-fun _module.__default.Hash (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun _module.Expression.exprIf_q (T@U) Bool)
(declare-fun |_module.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |_module.Reason#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.__default.UpdateC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Expression.exprLiteral_q (T@U) Bool)
(declare-fun _module.Literal.litString_q (T@U) Bool)
(declare-fun _module.Expression.lit (T@U) T@U)
(declare-fun _module.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun _module.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Literal.strs (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |_module.__default.Choose#canCall| (T@U) Bool)
(declare-fun _module.__default.Choose (T@U) T@U)
(declare-fun |_module.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.Hash#canCall| (T@U) Bool)
(declare-fun |_module.__default.SetC#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.SetC (T@U T@U T@U) T@U)
(declare-fun |#_module.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#_module.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Expression.exprAnd_q (T@U) Bool)
(declare-fun _module.Expression.exprOr_q (T@U) Bool)
(declare-fun _module.Expression.exprInvocation_q (T@U) Bool)
(declare-fun _module.Expression.exprError_q (T@U) Bool)
(declare-fun _module.Literal.litTrue_q (T@U) Bool)
(declare-fun _module.Literal.litFalse_q (T@U) Bool)
(declare-fun _module.Literal.litUndefined_q (T@U) Bool)
(declare-fun _module.Literal.litNull_q (T@U) Bool)
(declare-fun _module.Literal.litPrimitive_q (T@U) Bool)
(declare-fun _module.Literal.litArray_q (T@U) Bool)
(declare-fun _module.Triple.Trio_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |#_module.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#_module.Expression.exprError| (T@U) T@U)
(declare-fun |#_module.Literal.litNumber| (Int) T@U)
(declare-fun |#_module.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#_module.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun _module.__default.DomC (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$let#0_s| (T@U) T@U)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun Tclass._module.Path () T@U)
(declare-fun Tclass._module.Primitive () T@U)
(declare-fun Tclass._module.Reason () T@U)
(declare-fun _module.Expression.r (T@U) T@U)
(declare-fun _module.Literal.str (T@U) T@U)
(declare-fun _module.Literal.prim (T@U) T@U)
(declare-fun _module.Literal.paths (T@U) T@U)
(declare-fun _module.Literal.arr (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun _module.Expression.conj0 (T@U) T@U)
(declare-fun _module.Expression.conj1 (T@U) T@U)
(declare-fun _module.Expression.disj0 (T@U) T@U)
(declare-fun _module.Expression.disj1 (T@U) T@U)
(declare-fun _module.Expression.fun (T@U) T@U)
(declare-fun _module.Expression.args (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |_module.__default.DomC#canCall| (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass._module.Path Tagclass._module.Expression Tagclass._module.Triple Tagclass._module.StateC Tagclass._module.Primitive |##_module.StateC.S| |##_module.Expression.exprLiteral| Tagclass._module.Literal |##_module.Expression.exprIdentifier| |##_module.Expression.exprIf| |##_module.Expression.exprAnd| |##_module.Expression.exprOr| |##_module.Expression.exprInvocation| |##_module.Expression.exprError| Tagclass._module.Reason |##_module.Literal.litTrue| |##_module.Literal.litFalse| |##_module.Literal.litUndefined| |##_module.Literal.litNull| |##_module.Literal.litNumber| |##_module.Literal.litString| |##_module.Literal.litPrimitive| |##_module.Literal.litArrOfPaths| |##_module.Literal.litArrOfStrings| |##_module.Literal.litArray| |##_module.Triple.Trio| tytagFamily$Path tytagFamily$Expression tytagFamily$Triple tytagFamily$StateC tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.StateC.S| |a#2#0#0| |a#2#1#0|) Tclass._module.StateC)  (and ($IsBox |a#2#0#0| Tclass._module.State) ($IsBox |a#2#1#0| Tclass._module.Cache)))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1273|
 :pattern ( ($Is DatatypeTypeType (|#_module.StateC.S| |a#2#0#0| |a#2#1#0|) Tclass._module.StateC))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprAnd| |a#49#0#0| |a#49#1#0|) Tclass._module.Expression)  (and ($Is DatatypeTypeType |a#49#0#0| Tclass._module.Expression) ($Is DatatypeTypeType |a#49#1#0| Tclass._module.Expression)))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1362|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprAnd| |a#49#0#0| |a#49#1#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprOr| |a#57#0#0| |a#57#1#0|) Tclass._module.Expression)  (and ($Is DatatypeTypeType |a#57#0#0| Tclass._module.Expression) ($Is DatatypeTypeType |a#57#1#0| Tclass._module.Expression)))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1374|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprOr| |a#57#0#0| |a#57#1#0|) Tclass._module.Expression))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#70#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#70#1#0| i))) (DtRank (|#_module.Expression.exprInvocation| |a#70#0#0| |a#70#1#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1393|
 :pattern ( (|Seq#Index| |a#70#1#0| i) (|#_module.Expression.exprInvocation| |a#70#0#0| |a#70#1#0|))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|) Tclass._module.Expression)  (and (and ($Is DatatypeTypeType |a#39#0#0| Tclass._module.Expression) ($Is DatatypeTypeType |a#39#1#0| Tclass._module.Expression)) ($Is DatatypeTypeType |a#39#2#0| Tclass._module.Expression)))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1347|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|) Tclass._module.Expression))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Expression.exprIdentifier_q a@@4) (_module.Expression.exprIdentifier_q b@@1)) (= (|_module.Expression#Equal| a@@4 b@@1) (= (_module.Expression.id a@@4) (_module.Expression.id b@@1))))
 :qid |unknown.0:0|
 :skolemid |1409|
 :pattern ( (|_module.Expression#Equal| a@@4 b@@1) (_module.Expression.exprIdentifier_q a@@4))
 :pattern ( (|_module.Expression#Equal| a@@4 b@@1) (_module.Expression.exprIdentifier_q b@@1))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Literal.litNumber_q a@@5) (_module.Literal.litNumber_q b@@2)) (= (|_module.Literal#Equal| a@@5 b@@2) (= (_module.Literal.num a@@5) (_module.Literal.num b@@2))))
 :qid |unknown.0:0|
 :skolemid |1486|
 :pattern ( (|_module.Literal#Equal| a@@5 b@@2) (_module.Literal.litNumber_q a@@5))
 :pattern ( (|_module.Literal#Equal| a@@5 b@@2) (_module.Literal.litNumber_q b@@2))
)))
(assert (forall ((|a#104#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#104#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#104#0#0| i@@0))) (DtRank (|#_module.Literal.litString| |a#104#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1440|
 :pattern ( (|Seq#Index| |a#104#0#0| i@@0) (|#_module.Literal.litString| |a#104#0#0|))
)))
(assert (forall ((|a#129#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#129#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#129#0#0| i@@1))) (DtRank (|#_module.Literal.litArray| |a#129#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1477|
 :pattern ( (|Seq#Index| |a#129#0#0| i@@1) (|#_module.Literal.litArray| |a#129#0#0|))
)))
(assert (forall ((_module.Triple$A T@U) (_module.Triple$B T@U) (_module.Triple$C T@U) ) (! (= (Tclass._module.Triple_0 (Tclass._module.Triple _module.Triple$A _module.Triple$B _module.Triple$C)) _module.Triple$A)
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( (Tclass._module.Triple _module.Triple$A _module.Triple$B _module.Triple$C))
)))
(assert (forall ((_module.Triple$A@@0 T@U) (_module.Triple$B@@0 T@U) (_module.Triple$C@@0 T@U) ) (! (= (Tclass._module.Triple_1 (Tclass._module.Triple _module.Triple$A@@0 _module.Triple$B@@0 _module.Triple$C@@0)) _module.Triple$B@@0)
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@0 _module.Triple$B@@0 _module.Triple$C@@0))
)))
(assert (forall ((_module.Triple$A@@1 T@U) (_module.Triple$B@@1 T@U) (_module.Triple$C@@1 T@U) ) (! (= (Tclass._module.Triple_2 (Tclass._module.Triple _module.Triple$A@@1 _module.Triple$B@@1 _module.Triple$C@@1)) _module.Triple$C@@1)
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@1 _module.Triple$B@@1 _module.Triple$C@@1))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |##_module.Expression.exprIf|)
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1343|
 :pattern ( (|#_module.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (_module.Expression.cond (|#_module.Expression.exprIf| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1352|
 :pattern ( (|#_module.Expression.exprIf| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (= (_module.Expression.ifTrue (|#_module.Expression.exprIf| |a#43#0#0| |a#43#1#0| |a#43#2#0|)) |a#43#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1354|
 :pattern ( (|#_module.Expression.exprIf| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (= (_module.Expression.ifFalse (|#_module.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|)) |a#45#2#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1356|
 :pattern ( (|#_module.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#169#0#0| T@U) (|a#169#1#0| T@U) (|a#169#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Triple.Trio| |a#169#0#0| |a#169#1#0| |a#169#2#0|)) |##_module.Triple.Trio|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1557|
 :pattern ( (|#_module.Triple.Trio| |a#169#0#0| |a#169#1#0| |a#169#2#0|))
)))
(assert (forall ((|a#173#0#0| T@U) (|a#173#1#0| T@U) (|a#173#2#0| T@U) ) (! (= (_module.Triple.fst (|#_module.Triple.Trio| |a#173#0#0| |a#173#1#0| |a#173#2#0|)) |a#173#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1570|
 :pattern ( (|#_module.Triple.Trio| |a#173#0#0| |a#173#1#0| |a#173#2#0|))
)))
(assert (forall ((|a#175#0#0| T@U) (|a#175#1#0| T@U) (|a#175#2#0| T@U) ) (! (= (_module.Triple.snd (|#_module.Triple.Trio| |a#175#0#0| |a#175#1#0| |a#175#2#0|)) |a#175#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1572|
 :pattern ( (|#_module.Triple.Trio| |a#175#0#0| |a#175#1#0| |a#175#2#0|))
)))
(assert (forall ((|a#177#0#0| T@U) (|a#177#1#0| T@U) (|a#177#2#0| T@U) ) (! (= (_module.Triple.trd (|#_module.Triple.Trio| |a#177#0#0| |a#177#1#0| |a#177#2#0|)) |a#177#2#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1574|
 :pattern ( (|#_module.Triple.Trio| |a#177#0#0| |a#177#1#0| |a#177#2#0|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@6 b@@3) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@6 b@@3) (|Set#IsMember| b@@3 y@@2))
)))
(assert ($AlwaysAllocated Tclass._module.State))
(assert ($AlwaysAllocated Tclass._module.Cache))
(assert ($AlwaysAllocated Tclass._module.HashValue))
(assert ($AlwaysAllocated Tclass._module.Identifier))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($ly T@U) (|cmd#0| T@U) (|deps#0| T@U) (|exts#0| T@U) (|stC#0| T@U) ) (! (= (_module.__default.UpdateC ($LS $ly) |cmd#0| |deps#0| |exts#0| |stC#0|) (_module.__default.UpdateC $ly |cmd#0| |deps#0| |exts#0| |stC#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |733|
 :pattern ( (_module.__default.UpdateC ($LS $ly) |cmd#0| |deps#0| |exts#0| |stC#0|))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|_module.StateC#Equal| a@@7 b@@4)  (and (= (_module.StateC.st a@@7) (_module.StateC.st b@@4)) (= (_module.StateC.c a@@7) (_module.StateC.c b@@4))))
 :qid |unknown.0:0|
 :skolemid |1282|
 :pattern ( (|_module.StateC#Equal| a@@7 b@@4))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Literal.litTrue|) |##_module.Literal.litTrue|))
(assert (= (DatatypeCtorId |#_module.Literal.litFalse|) |##_module.Literal.litFalse|))
(assert (= (DatatypeCtorId |#_module.Literal.litUndefined|) |##_module.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#_module.Literal.litNull|) |##_module.Literal.litNull|))
(assert (= (Ctor SeqType) 4))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|) Tclass._module.Expression)  (and ($Is DatatypeTypeType |a#65#0#0| Tclass._module.Expression) ($Is SeqType |a#65#1#0| (TSeq Tclass._module.Expression))))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1386|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|) Tclass._module.Expression))
)))
(assert (forall ((_module.Triple$A@@2 T@U) (_module.Triple$B@@2 T@U) (_module.Triple$C@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2)) Tagclass._module.Triple) (= (TagFamily (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2)) tytagFamily$Triple))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( (Tclass._module.Triple _module.Triple$A@@2 _module.Triple$B@@2 _module.Triple$C@@2))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@8 b@@5) b@@5) (|Set#Union| a@@8 b@@5))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@8 b@@5) b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@9 b@@6) o@@1)  (and (|Set#IsMember| a@@9 o@@1) (not (|Set#IsMember| b@@6 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@9 b@@6) o@@1))
)))
(assert (forall ((_module.Triple$A@@3 T@U) (_module.Triple$B@@3 T@U) (_module.Triple$C@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)))
)))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.StateC) (_module.StateC.S_q d))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( (_module.StateC.S_q d) ($Is DatatypeTypeType d Tclass._module.StateC))
)))
(assert ($Is DatatypeTypeType |#_module.Literal.litTrue| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litFalse| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litUndefined| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litNull| Tclass._module.Literal))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|)) (exists ((|e#0| T@U) ) (!  (and (and ($Is SeqType |e#0| |l#0|) (|Set#IsMember| |l#1| ($Box SeqType |e#0|))) (= |$y#0| (_module.__default.Hash (_module.__default.Loc |l#2| |l#3| |e#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.48:27|
 :skolemid |736|
 :pattern ( (_module.__default.Loc |l#5| |l#6| |e#0|))
 :pattern ( (|Set#IsMember| |l#4| ($Box SeqType |e#0|)))
)))
 :qid |unknown.0:0|
 :skolemid |1581|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (and (_module.Expression.exprIf_q a@@10) (_module.Expression.exprIf_q b@@7)) (= (|_module.Expression#Equal| a@@10 b@@7)  (and (and (|_module.Expression#Equal| (_module.Expression.cond a@@10) (_module.Expression.cond b@@7)) (|_module.Expression#Equal| (_module.Expression.ifTrue a@@10) (_module.Expression.ifTrue b@@7))) (|_module.Expression#Equal| (_module.Expression.ifFalse a@@10) (_module.Expression.ifFalse b@@7)))))
 :qid |unknown.0:0|
 :skolemid |1410|
 :pattern ( (|_module.Expression#Equal| a@@10 b@@7) (_module.Expression.exprIf_q a@@10))
 :pattern ( (|_module.Expression#Equal| a@@10 b@@7) (_module.Expression.exprIf_q b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|_module.StateC#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |unknown.0:0|
 :skolemid |1283|
 :pattern ( (|_module.StateC#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|_module.Expression#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |1415|
 :pattern ( (|_module.Expression#Equal| a@@12 b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|_module.Literal#Equal| a@@13 b@@10) (= a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( (|_module.Literal#Equal| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|_module.Primitive#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (|_module.Primitive#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|_module.Reason#Equal| a@@15 b@@12) (= a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |1515|
 :pattern ( (|_module.Reason#Equal| a@@15 b@@12))
)))
(assert (= (Ctor SetType) 6))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|cmd#0@@0| T@U) (|deps#0@@0| T@U) (|exts#0@@0| T@U) (|stC#0@@0| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) (Lit DatatypeTypeType |exts#0@@0|) (Lit DatatypeTypeType |stC#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@0| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@0| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@0| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@0| Tclass._module.StateC)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@0|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@0|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@0|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@0|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@0|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@0|))))))))))) (and (let ((|strs#2| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@0|)))))))
 (=> (not (|Set#Equal| |strs#2| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#2|) (let ((|e#3| (_module.__default.Choose |strs#2|)))
 (and (and (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |e#3|) (|_module.__default.Hash#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |e#3|))) (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@0|))) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |e#3|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@0|)) ($Box SeqType |e#3|)) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@0|))))) (let ((|c'#2| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |e#3|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@0|)) ($Box SeqType |e#3|)) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@0|))))))
(let ((|exts'#2| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#3|)))))))
 (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@0|)) (|_module.__default.UpdateC#canCall| (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |exts'#2| (|#_module.StateC.S| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@0|))) |c'#2|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@0) (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) (Lit DatatypeTypeType |exts#0@@0|) (Lit DatatypeTypeType |stC#0@@0|)) (let ((|strs#2@@0| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@0|)))))))
(ite (|Set#Equal| |strs#2@@0| |Set#Empty|) |stC#0@@0| (let ((|e#3@@0| (Lit SeqType (_module.__default.Choose |strs#2@@0|))))
(let ((|c'#2@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |e#3@@0|)) (Lit DatatypeTypeType (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@0|)) ($Box SeqType |e#3@@0|))) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@0|))))))
(let ((|exts'#2@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#2@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#3@@0|)))))))
(_module.__default.UpdateC ($LS $ly@@0) (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) |exts'#2@@0| (|#_module.StateC.S| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@0|))) |c'#2@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@0) (Lit DatatypeTypeType |cmd#0@@0|) (Lit DatatypeTypeType |deps#0@@0|) (Lit DatatypeTypeType |exts#0@@0|) (Lit DatatypeTypeType |stC#0@@0|)))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Subset| a@@16 b@@13) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@16 o@@2) (|Set#IsMember| b@@13 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@16 o@@2))
 :pattern ( (|Set#IsMember| b@@13 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@16 b@@13))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.StateC.S_q d@@0) (= (DatatypeCtorId d@@0) |##_module.StateC.S|))
 :qid |unknown.0:0|
 :skolemid |1270|
 :pattern ( (_module.StateC.S_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Expression.exprLiteral_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1326|
 :pattern ( (_module.Expression.exprLiteral_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Expression.exprIdentifier_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1336|
 :pattern ( (_module.Expression.exprIdentifier_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Expression.exprIf_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( (_module.Expression.exprIf_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Expression.exprAnd_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1359|
 :pattern ( (_module.Expression.exprAnd_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Expression.exprOr_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1371|
 :pattern ( (_module.Expression.exprOr_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Expression.exprInvocation_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1383|
 :pattern ( (_module.Expression.exprInvocation_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Expression.exprError_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1396|
 :pattern ( (_module.Expression.exprError_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.Literal.litTrue_q d@@8) (= (DatatypeCtorId d@@8) |##_module.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1416|
 :pattern ( (_module.Literal.litTrue_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.Literal.litFalse_q d@@9) (= (DatatypeCtorId d@@9) |##_module.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1418|
 :pattern ( (_module.Literal.litFalse_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.Literal.litUndefined_q d@@10) (= (DatatypeCtorId d@@10) |##_module.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( (_module.Literal.litUndefined_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.Literal.litNull_q d@@11) (= (DatatypeCtorId d@@11) |##_module.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( (_module.Literal.litNull_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_module.Literal.litNumber_q d@@12) (= (DatatypeCtorId d@@12) |##_module.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |1425|
 :pattern ( (_module.Literal.litNumber_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (_module.Literal.litString_q d@@13) (= (DatatypeCtorId d@@13) |##_module.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |1433|
 :pattern ( (_module.Literal.litString_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (_module.Literal.litPrimitive_q d@@14) (= (DatatypeCtorId d@@14) |##_module.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |1443|
 :pattern ( (_module.Literal.litPrimitive_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (_module.Literal.litArrOfPaths_q d@@15) (= (DatatypeCtorId d@@15) |##_module.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |1452|
 :pattern ( (_module.Literal.litArrOfPaths_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (_module.Literal.litArrOfStrings_q d@@16) (= (DatatypeCtorId d@@16) |##_module.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |1461|
 :pattern ( (_module.Literal.litArrOfStrings_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (_module.Literal.litArray_q d@@17) (= (DatatypeCtorId d@@17) |##_module.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |1470|
 :pattern ( (_module.Literal.litArray_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (_module.Triple.Trio_q d@@18) (= (DatatypeCtorId d@@18) |##_module.Triple.Trio|))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( (_module.Triple.Trio_q d@@18))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (_module.Expression.exprIf_q d@@19) (exists ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= d@@19 (|#_module.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1345|
)))
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (_module.Expression.exprIf_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (_module.Triple.Trio_q d@@20) (exists ((|a#170#0#0| T@U) (|a#170#1#0| T@U) (|a#170#2#0| T@U) ) (! (= d@@20 (|#_module.Triple.Trio| |a#170#0#0| |a#170#1#0| |a#170#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1559|
)))
 :qid |unknown.0:0|
 :skolemid |1560|
 :pattern ( (_module.Triple.Trio_q d@@20))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Disjoint| a@@17 b@@14) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@17 o@@3)) (not (|Set#IsMember| b@@14 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@17 o@@3))
 :pattern ( (|Set#IsMember| b@@14 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@17 b@@14))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ss#0| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| |ss#0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |ss#0| (TSet (TSeq TChar))) (not (|Set#Equal| |ss#0| |Set#Empty|))))) ($Is SeqType (_module.__default.Choose |ss#0|) (TSeq TChar)))
 :qid |CloudMakeConsistentBuildslegacydfy.91:23|
 :skolemid |773|
 :pattern ( (_module.__default.Choose |ss#0|))
))))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (_module.StateC.S_q d@@21) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@21 (|#_module.StateC.S| |a#1#0#0| |a#1#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1271|
)))
 :qid |unknown.0:0|
 :skolemid |1272|
 :pattern ( (_module.StateC.S_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (_module.Expression.exprAnd_q d@@22) (exists ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= d@@22 (|#_module.Expression.exprAnd| |a#48#0#0| |a#48#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1360|
)))
 :qid |unknown.0:0|
 :skolemid |1361|
 :pattern ( (_module.Expression.exprAnd_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (_module.Expression.exprOr_q d@@23) (exists ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (= d@@23 (|#_module.Expression.exprOr| |a#56#0#0| |a#56#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1372|
)))
 :qid |unknown.0:0|
 :skolemid |1373|
 :pattern ( (_module.Expression.exprOr_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (_module.Expression.exprInvocation_q d@@24) (exists ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= d@@24 (|#_module.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1384|
)))
 :qid |unknown.0:0|
 :skolemid |1385|
 :pattern ( (_module.Expression.exprInvocation_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (_module.Literal.litTrue_q d@@25) (= d@@25 |#_module.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1417|
 :pattern ( (_module.Literal.litTrue_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (_module.Literal.litFalse_q d@@26) (= d@@26 |#_module.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1419|
 :pattern ( (_module.Literal.litFalse_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (_module.Literal.litUndefined_q d@@27) (= d@@27 |#_module.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( (_module.Literal.litUndefined_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (_module.Literal.litNull_q d@@28) (= d@@28 |#_module.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( (_module.Literal.litNull_q d@@28))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (_module.Expression.exprLiteral_q d@@29) (exists ((|a#27#0#0| T@U) ) (! (= d@@29 (|#_module.Expression.exprLiteral| |a#27#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1327|
)))
 :qid |unknown.0:0|
 :skolemid |1328|
 :pattern ( (_module.Expression.exprLiteral_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (_module.Expression.exprIdentifier_q d@@30) (exists ((|a#33#0#0| T@U) ) (! (= d@@30 (|#_module.Expression.exprIdentifier| |a#33#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1337|
)))
 :qid |unknown.0:0|
 :skolemid |1338|
 :pattern ( (_module.Expression.exprIdentifier_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (_module.Expression.exprError_q d@@31) (exists ((|a#73#0#0| T@U) ) (! (= d@@31 (|#_module.Expression.exprError| |a#73#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1397|
)))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( (_module.Expression.exprError_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (_module.Literal.litNumber_q d@@32) (exists ((|a#95#0#0| Int) ) (! (= d@@32 (|#_module.Literal.litNumber| |a#95#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1426|
)))
 :qid |unknown.0:0|
 :skolemid |1427|
 :pattern ( (_module.Literal.litNumber_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (_module.Literal.litString_q d@@33) (exists ((|a#100#0#0| T@U) ) (! (= d@@33 (|#_module.Literal.litString| |a#100#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1434|
)))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( (_module.Literal.litString_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (_module.Literal.litPrimitive_q d@@34) (exists ((|a#107#0#0| T@U) ) (! (= d@@34 (|#_module.Literal.litPrimitive| |a#107#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1444|
)))
 :qid |unknown.0:0|
 :skolemid |1445|
 :pattern ( (_module.Literal.litPrimitive_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (_module.Literal.litArrOfPaths_q d@@35) (exists ((|a#113#0#0| T@U) ) (! (= d@@35 (|#_module.Literal.litArrOfPaths| |a#113#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1453|
)))
 :qid |unknown.0:0|
 :skolemid |1454|
 :pattern ( (_module.Literal.litArrOfPaths_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (_module.Literal.litArrOfStrings_q d@@36) (exists ((|a#119#0#0| T@U) ) (! (= d@@36 (|#_module.Literal.litArrOfStrings| |a#119#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1462|
)))
 :qid |unknown.0:0|
 :skolemid |1463|
 :pattern ( (_module.Literal.litArrOfStrings_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (_module.Literal.litArray_q d@@37) (exists ((|a#125#0#0| T@U) ) (! (= d@@37 (|#_module.Literal.litArray| |a#125#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1471|
)))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( (_module.Literal.litArray_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> ($Is DatatypeTypeType d@@38 Tclass._module.Expression) (or (or (or (or (or (or (_module.Expression.exprLiteral_q d@@38) (_module.Expression.exprIdentifier_q d@@38)) (_module.Expression.exprIf_q d@@38)) (_module.Expression.exprAnd_q d@@38)) (_module.Expression.exprOr_q d@@38)) (_module.Expression.exprInvocation_q d@@38)) (_module.Expression.exprError_q d@@38)))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( (_module.Expression.exprError_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprInvocation_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprOr_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprAnd_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprIf_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprIdentifier_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprLiteral_q d@@38) ($Is DatatypeTypeType d@@38 Tclass._module.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|h#0| T@U) (|cmd#0@@1| T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.SetC#canCall| |h#0| |cmd#0@@1| |c#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |h#0| Tclass._module.HashValue) ($Is DatatypeTypeType |cmd#0@@1| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar)))) ($IsBox |c#0| Tclass._module.Cache)))) (and (|Set#Equal| (_module.__default.DomC (_module.__default.SetC |h#0| |cmd#0@@1| |c#0|)) (|Set#Union| (_module.__default.DomC |c#0|) (|Set#UnionOne| |Set#Empty| |h#0|))) ($IsBox (_module.__default.SetC |h#0| |cmd#0@@1| |c#0|) Tclass._module.Cache)))
 :qid |CloudMakeConsistentBuildslegacydfy.38:21|
 :skolemid |731|
 :pattern ( (_module.__default.SetC |h#0| |cmd#0@@1| |c#0|))
))))
(assert (forall ((_module.Triple$A@@4 T@U) (_module.Triple$B@@4 T@U) (_module.Triple$C@@4 T@U) (|a#171#0#0| T@U) (|a#171#1#0| T@U) (|a#171#2#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h)  (and (and ($IsAllocBox |a#171#0#0| _module.Triple$A@@4 $h) ($IsAllocBox |a#171#1#0| _module.Triple$B@@4 $h)) ($IsAllocBox |a#171#2#0| _module.Triple$C@@4 $h))))
 :qid |unknown.0:0|
 :skolemid |1562|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((ss T@U) ) (!  (=> (|$let#0$canCall| ss) (and ($Is SeqType (|$let#0_s| ss) (TSeq TChar)) (|Set#IsMember| ss ($Box SeqType (|$let#0_s| ss)))))
 :qid |CloudMakeConsistentBuildslegacydfy.94:3|
 :skolemid |775|
 :pattern ( (|$let#0_s| ss))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|ss#0@@0| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| |ss#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |ss#0@@0| (TSet (TSeq TChar)))) (not (|Set#Equal| |ss#0@@0| |Set#Empty|))))) (and (|$let#0$canCall| |ss#0@@0|) (= (_module.__default.Choose |ss#0@@0|) (let ((|s#0| (|$let#0_s| |ss#0@@0|)))
|s#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.91:16|
 :skolemid |776|
 :pattern ( (_module.__default.Choose |ss#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((d@@39 T@U) ) (!  (=> ($Is DatatypeTypeType d@@39 Tclass._module.Literal) (or (or (or (or (or (or (or (or (or (_module.Literal.litTrue_q d@@39) (_module.Literal.litFalse_q d@@39)) (_module.Literal.litUndefined_q d@@39)) (_module.Literal.litNull_q d@@39)) (_module.Literal.litNumber_q d@@39)) (_module.Literal.litString_q d@@39)) (_module.Literal.litPrimitive_q d@@39)) (_module.Literal.litArrOfPaths_q d@@39)) (_module.Literal.litArrOfStrings_q d@@39)) (_module.Literal.litArray_q d@@39)))
 :qid |unknown.0:0|
 :skolemid |1481|
 :pattern ( (_module.Literal.litArray_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litArrOfStrings_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litArrOfPaths_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litPrimitive_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litString_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litNumber_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litNull_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litUndefined_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litFalse_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
 :pattern ( (_module.Literal.litTrue_q d@@39) ($Is DatatypeTypeType d@@39 Tclass._module.Literal))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Path)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($IsBox bx@@2 Tclass._module.Path))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Expression)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($IsBox bx@@3 Tclass._module.Expression))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.StateC) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.StateC)))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($IsBox bx@@4 Tclass._module.StateC))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass._module.Primitive)))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( ($IsBox bx@@5 Tclass._module.Primitive))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Literal)))
 :qid |unknown.0:0|
 :skolemid |1329|
 :pattern ( ($IsBox bx@@6 Tclass._module.Literal))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.Reason)))
 :qid |unknown.0:0|
 :skolemid |1399|
 :pattern ( ($IsBox bx@@7 Tclass._module.Reason))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprLiteral| |a#28#0#0|) Tclass._module.Expression) ($Is DatatypeTypeType |a#28#0#0| Tclass._module.Literal))
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1330|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprLiteral| |a#28#0#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprIdentifier| |a#34#0#0|) Tclass._module.Expression) ($IsBox |a#34#0#0| Tclass._module.Identifier))
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1339|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprIdentifier| |a#34#0#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#74#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Expression.exprError| |a#74#0#0|) Tclass._module.Expression) ($Is DatatypeTypeType |a#74#0#0| Tclass._module.Reason))
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1400|
 :pattern ( ($Is DatatypeTypeType (|#_module.Expression.exprError| |a#74#0#0|) Tclass._module.Expression))
)))
(assert (forall ((|a#108#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litPrimitive| |a#108#0#0|) Tclass._module.Literal) ($Is DatatypeTypeType |a#108#0#0| Tclass._module.Primitive))
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1446|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litPrimitive| |a#108#0#0|) Tclass._module.Literal))
)))
(assert (forall ((_module.Triple$A@@5 T@U) (_module.Triple$B@@5 T@U) (_module.Triple$C@@5 T@U) (d@@40 T@U) ) (!  (=> ($Is DatatypeTypeType d@@40 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)) (_module.Triple.Trio_q d@@40))
 :qid |unknown.0:0|
 :skolemid |1577|
 :pattern ( (_module.Triple.Trio_q d@@40) ($Is DatatypeTypeType d@@40 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (_module.Expression.exprLiteral_q a@@18) (_module.Expression.exprLiteral_q b@@15)) (= (|_module.Expression#Equal| a@@18 b@@15) (|_module.Literal#Equal| (_module.Expression.lit a@@18) (_module.Expression.lit b@@15))))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( (|_module.Expression#Equal| a@@18 b@@15) (_module.Expression.exprLiteral_q a@@18))
 :pattern ( (|_module.Expression#Equal| a@@18 b@@15) (_module.Expression.exprLiteral_q b@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (and (_module.Expression.exprError_q a@@19) (_module.Expression.exprError_q b@@16)) (= (|_module.Expression#Equal| a@@19 b@@16) (|_module.Reason#Equal| (_module.Expression.r a@@19) (_module.Expression.r b@@16))))
 :qid |unknown.0:0|
 :skolemid |1414|
 :pattern ( (|_module.Expression#Equal| a@@19 b@@16) (_module.Expression.exprError_q a@@19))
 :pattern ( (|_module.Expression#Equal| a@@19 b@@16) (_module.Expression.exprError_q b@@16))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (and (_module.Literal.litString_q a@@20) (_module.Literal.litString_q b@@17)) (= (|_module.Literal#Equal| a@@20 b@@17) (|Seq#Equal| (_module.Literal.str a@@20) (_module.Literal.str b@@17))))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( (|_module.Literal#Equal| a@@20 b@@17) (_module.Literal.litString_q a@@20))
 :pattern ( (|_module.Literal#Equal| a@@20 b@@17) (_module.Literal.litString_q b@@17))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (and (_module.Literal.litPrimitive_q a@@21) (_module.Literal.litPrimitive_q b@@18)) (= (|_module.Literal#Equal| a@@21 b@@18) (|_module.Primitive#Equal| (_module.Literal.prim a@@21) (_module.Literal.prim b@@18))))
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( (|_module.Literal#Equal| a@@21 b@@18) (_module.Literal.litPrimitive_q a@@21))
 :pattern ( (|_module.Literal#Equal| a@@21 b@@18) (_module.Literal.litPrimitive_q b@@18))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (and (_module.Literal.litArrOfPaths_q a@@22) (_module.Literal.litArrOfPaths_q b@@19)) (= (|_module.Literal#Equal| a@@22 b@@19) (|Set#Equal| (_module.Literal.paths a@@22) (_module.Literal.paths b@@19))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( (|_module.Literal#Equal| a@@22 b@@19) (_module.Literal.litArrOfPaths_q a@@22))
 :pattern ( (|_module.Literal#Equal| a@@22 b@@19) (_module.Literal.litArrOfPaths_q b@@19))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (and (_module.Literal.litArrOfStrings_q a@@23) (_module.Literal.litArrOfStrings_q b@@20)) (= (|_module.Literal#Equal| a@@23 b@@20) (|Set#Equal| (_module.Literal.strs a@@23) (_module.Literal.strs b@@20))))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( (|_module.Literal#Equal| a@@23 b@@20) (_module.Literal.litArrOfStrings_q a@@23))
 :pattern ( (|_module.Literal#Equal| a@@23 b@@20) (_module.Literal.litArrOfStrings_q b@@20))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (and (_module.Literal.litArray_q a@@24) (_module.Literal.litArray_q b@@21)) (= (|_module.Literal#Equal| a@@24 b@@21) (|Seq#Equal| (_module.Literal.arr a@@24) (_module.Literal.arr b@@21))))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( (|_module.Literal#Equal| a@@24 b@@21) (_module.Literal.litArray_q a@@24))
 :pattern ( (|_module.Literal#Equal| a@@24 b@@21) (_module.Literal.litArray_q b@@21))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|cmd#0@@2| T@U) (|deps#0@@1| T@U) (|exts#0@@1| T@U) (|stC#0@@1| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@2| |deps#0@@1| |exts#0@@1| |stC#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@2| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@1| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@1| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@1| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@2|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@2|))) (_module.Expression.exprLiteral_q |deps#0@@1|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@1|))) (_module.Expression.exprLiteral_q |exts#0@@1|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@1|)))))) (and (let ((|stC'#0| (_module.__default.UpdateC $ly@@1 |cmd#0@@2| |deps#0@@1| |exts#0@@1| |stC#0@@1|)))
(let ((|hashValues#0| (|Set#FromBoogieMap| (|lambda#4| (TSeq TChar) (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) |cmd#0@@2| |deps#0@@1| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) |cmd#0@@2| |deps#0@@1|))))
 (and (= (_module.StateC.st |stC'#0|) (_module.StateC.st |stC#0@@1|)) (|Set#Equal| (|Set#Union| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |hashValues#0|) (_module.__default.DomC (_module.StateC.c |stC'#0|)))))) ($Is DatatypeTypeType (_module.__default.UpdateC $ly@@1 |cmd#0@@2| |deps#0@@1| |exts#0@@1| |stC#0@@1|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |737|
 :pattern ( (_module.__default.UpdateC $ly@@1 |cmd#0@@2| |deps#0@@1| |exts#0@@1| |stC#0@@1|))
))))
(assert (forall ((a@@25 T@U) (b@@22 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@25 b@@22) o@@4)  (or (|Set#IsMember| a@@25 o@@4) (|Set#IsMember| b@@22 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@25 b@@22) o@@4))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (|Set#Disjoint| a@@26 b@@23) (and (= (|Set#Difference| (|Set#Union| a@@26 b@@23) a@@26) b@@23) (= (|Set#Difference| (|Set#Union| a@@26 b@@23) b@@23) a@@26)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@26 b@@23))
)))
(assert (forall ((_module.Triple$A@@6 T@U) (_module.Triple$B@@6 T@U) (_module.Triple$C@@6 T@U) (|a#171#0#0@@0| T@U) (|a#171#1#0@@0| T@U) (|a#171#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6))  (and (and ($IsBox |a#171#0#0@@0| _module.Triple$A@@6) ($IsBox |a#171#1#0@@0| _module.Triple$B@@6)) ($IsBox |a#171#2#0@@0| _module.Triple$C@@6)))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@2| T@U) (|ext#0| T@U) ) (!  (=> (or (|_module.__default.Loc#canCall| |cmd#0@@3| |deps#0@@2| |ext#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |cmd#0@@3| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@2| Tclass._module.Expression)) ($Is SeqType |ext#0| (TSeq TChar))))) ($Is DatatypeTypeType (_module.__default.Loc |cmd#0@@3| |deps#0@@2| |ext#0|) Tclass._module.Path))
 :qid |CloudMakeConsistentBuildslegacydfy.228:20|
 :skolemid |966|
 :pattern ( (_module.__default.Loc |cmd#0@@3| |deps#0@@2| |ext#0|))
))))
(assert (forall ((|a#114#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litArrOfPaths| |a#114#0#0|) Tclass._module.Literal) ($Is SetType |a#114#0#0| (TSet Tclass._module.Path)))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1455|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litArrOfPaths| |a#114#0#0|) Tclass._module.Literal))
)))
(assert (forall ((|a#126#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litArray| |a#126#0#0|) Tclass._module.Literal) ($Is SeqType |a#126#0#0| (TSeq Tclass._module.Expression)))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1473|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litArray| |a#126#0#0|) Tclass._module.Literal))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (|Set#Equal| a@@27 b@@24) (= a@@27 b@@24))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@27 b@@24))
)))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (!  (=> (|Seq#Equal| a@@28 b@@25) (= a@@28 b@@25))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@28 b@@25))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|_module.__default.Hash#canCall| |p#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| Tclass._module.Path))) ($IsBox (_module.__default.Hash |p#0|) Tclass._module.HashValue))
 :qid |CloudMakeConsistentBuildslegacydfy.307:21|
 :skolemid |1071|
 :pattern ( (_module.__default.Hash |p#0|))
))))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (and (_module.Expression.exprAnd_q a@@29) (_module.Expression.exprAnd_q b@@26)) (= (|_module.Expression#Equal| a@@29 b@@26)  (and (|_module.Expression#Equal| (_module.Expression.conj0 a@@29) (_module.Expression.conj0 b@@26)) (|_module.Expression#Equal| (_module.Expression.conj1 a@@29) (_module.Expression.conj1 b@@26)))))
 :qid |unknown.0:0|
 :skolemid |1411|
 :pattern ( (|_module.Expression#Equal| a@@29 b@@26) (_module.Expression.exprAnd_q a@@29))
 :pattern ( (|_module.Expression#Equal| a@@29 b@@26) (_module.Expression.exprAnd_q b@@26))
)))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (and (_module.Expression.exprOr_q a@@30) (_module.Expression.exprOr_q b@@27)) (= (|_module.Expression#Equal| a@@30 b@@27)  (and (|_module.Expression#Equal| (_module.Expression.disj0 a@@30) (_module.Expression.disj0 b@@27)) (|_module.Expression#Equal| (_module.Expression.disj1 a@@30) (_module.Expression.disj1 b@@27)))))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( (|_module.Expression#Equal| a@@30 b@@27) (_module.Expression.exprOr_q a@@30))
 :pattern ( (|_module.Expression#Equal| a@@30 b@@27) (_module.Expression.exprOr_q b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (and (_module.Expression.exprInvocation_q a@@31) (_module.Expression.exprInvocation_q b@@28)) (= (|_module.Expression#Equal| a@@31 b@@28)  (and (|_module.Expression#Equal| (_module.Expression.fun a@@31) (_module.Expression.fun b@@28)) (|Seq#Equal| (_module.Expression.args a@@31) (_module.Expression.args b@@28)))))
 :qid |unknown.0:0|
 :skolemid |1413|
 :pattern ( (|_module.Expression#Equal| a@@31 b@@28) (_module.Expression.exprInvocation_q a@@31))
 :pattern ( (|_module.Expression#Equal| a@@31 b@@28) (_module.Expression.exprInvocation_q b@@28))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (!  (=> (and (_module.Literal.litTrue_q a@@32) (_module.Literal.litTrue_q b@@29)) (|_module.Literal#Equal| a@@32 b@@29))
 :qid |unknown.0:0|
 :skolemid |1482|
 :pattern ( (|_module.Literal#Equal| a@@32 b@@29) (_module.Literal.litTrue_q a@@32))
 :pattern ( (|_module.Literal#Equal| a@@32 b@@29) (_module.Literal.litTrue_q b@@29))
)))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (!  (=> (and (_module.Literal.litFalse_q a@@33) (_module.Literal.litFalse_q b@@30)) (|_module.Literal#Equal| a@@33 b@@30))
 :qid |unknown.0:0|
 :skolemid |1483|
 :pattern ( (|_module.Literal#Equal| a@@33 b@@30) (_module.Literal.litFalse_q a@@33))
 :pattern ( (|_module.Literal#Equal| a@@33 b@@30) (_module.Literal.litFalse_q b@@30))
)))
(assert (forall ((a@@34 T@U) (b@@31 T@U) ) (!  (=> (and (_module.Literal.litUndefined_q a@@34) (_module.Literal.litUndefined_q b@@31)) (|_module.Literal#Equal| a@@34 b@@31))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( (|_module.Literal#Equal| a@@34 b@@31) (_module.Literal.litUndefined_q a@@34))
 :pattern ( (|_module.Literal#Equal| a@@34 b@@31) (_module.Literal.litUndefined_q b@@31))
)))
(assert (forall ((a@@35 T@U) (b@@32 T@U) ) (!  (=> (and (_module.Literal.litNull_q a@@35) (_module.Literal.litNull_q b@@32)) (|_module.Literal#Equal| a@@35 b@@32))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( (|_module.Literal#Equal| a@@35 b@@32) (_module.Literal.litNull_q a@@35))
 :pattern ( (|_module.Literal#Equal| a@@35 b@@32) (_module.Literal.litNull_q b@@32))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.StateC.S| |a#0#0#0| |a#0#1#0|)) |##_module.StateC.S|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1269|
 :pattern ( (|#_module.StateC.S| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_module.StateC.st (|#_module.StateC.S| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1277|
 :pattern ( (|#_module.StateC.S| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (_module.StateC.c (|#_module.StateC.S| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1278|
 :pattern ( (|#_module.StateC.S| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprAnd| |a#47#0#0| |a#47#1#0|)) |##_module.Expression.exprAnd|)
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1358|
 :pattern ( (|#_module.Expression.exprAnd| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= (_module.Expression.conj0 (|#_module.Expression.exprAnd| |a#51#0#0| |a#51#1#0|)) |a#51#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1366|
 :pattern ( (|#_module.Expression.exprAnd| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (_module.Expression.conj1 (|#_module.Expression.exprAnd| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1368|
 :pattern ( (|#_module.Expression.exprAnd| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprOr| |a#55#0#0| |a#55#1#0|)) |##_module.Expression.exprOr|)
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1370|
 :pattern ( (|#_module.Expression.exprOr| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= (_module.Expression.disj0 (|#_module.Expression.exprOr| |a#59#0#0| |a#59#1#0|)) |a#59#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1378|
 :pattern ( (|#_module.Expression.exprOr| |a#59#0#0| |a#59#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (_module.Expression.disj1 (|#_module.Expression.exprOr| |a#61#0#0| |a#61#1#0|)) |a#61#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1380|
 :pattern ( (|#_module.Expression.exprOr| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|)) |##_module.Expression.exprInvocation|)
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1382|
 :pattern ( (|#_module.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#67#0#0| T@U) (|a#67#1#0| T@U) ) (! (= (_module.Expression.fun (|#_module.Expression.exprInvocation| |a#67#0#0| |a#67#1#0|)) |a#67#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1390|
 :pattern ( (|#_module.Expression.exprInvocation| |a#67#0#0| |a#67#1#0|))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) ) (! (= (_module.Expression.args (|#_module.Expression.exprInvocation| |a#69#0#0| |a#69#1#0|)) |a#69#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1392|
 :pattern ( (|#_module.Expression.exprInvocation| |a#69#0#0| |a#69#1#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|ss#0@@1| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| (Lit SetType |ss#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |ss#0@@1| (TSet (TSeq TChar)))) (not (|Set#Equal| |ss#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |ss#0@@1|)) (= (_module.__default.Choose (Lit SetType |ss#0@@1|)) (let ((|s#1| (|$let#0_s| (Lit SetType |ss#0@@1|))))
|s#1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.91:16|
 :weight 3
 :skolemid |777|
 :pattern ( (_module.__default.Choose (Lit SetType |ss#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@2) t0@@2 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= (|#_module.Expression.exprIf| (Lit DatatypeTypeType |a#40#0#0|) (Lit DatatypeTypeType |a#40#1#0|) (Lit DatatypeTypeType |a#40#2#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1351|
 :pattern ( (|#_module.Expression.exprIf| (Lit DatatypeTypeType |a#40#0#0|) (Lit DatatypeTypeType |a#40#1#0|) (Lit DatatypeTypeType |a#40#2#0|)))
)))
(assert (forall ((|a#172#0#0| T@U) (|a#172#1#0| T@U) (|a#172#2#0| T@U) ) (! (= (|#_module.Triple.Trio| (Lit BoxType |a#172#0#0|) (Lit BoxType |a#172#1#0|) (Lit BoxType |a#172#2#0|)) (Lit DatatypeTypeType (|#_module.Triple.Trio| |a#172#0#0| |a#172#1#0| |a#172#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1569|
 :pattern ( (|#_module.Triple.Trio| (Lit BoxType |a#172#0#0|) (Lit BoxType |a#172#1#0|) (Lit BoxType |a#172#2#0|)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|cmd#0@@4| T@U) (|deps#0@@3| T@U) (|exts#0@@2| T@U) (|stC#0@@2| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@4| |deps#0@@3| |exts#0@@2| |stC#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@4| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@3| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@2| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@2| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@4|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@4|))) (_module.Expression.exprLiteral_q |deps#0@@3|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@3|))) (_module.Expression.exprLiteral_q |exts#0@@2|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@2|)))))) (and (let ((|strs#0| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|))))
 (=> (not (|Set#Equal| |strs#0| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#0|) (let ((|e#1| (_module.__default.Choose |strs#0|)))
 (and (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@4| |deps#0@@3| |e#1|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@4| |deps#0@@3| |e#1|))) (_module.StateC.S_q |stC#0@@2|)) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@4| |deps#0@@3| |e#1|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@4|) ($Box DatatypeTypeType |deps#0@@3|) ($Box SeqType |e#1|)) (_module.StateC.c |stC#0@@2|))) (let ((|c'#0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@4| |deps#0@@3| |e#1|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@4|) ($Box DatatypeTypeType |deps#0@@3|) ($Box SeqType |e#1|)) (_module.StateC.c |stC#0@@2|))))
(let ((|exts'#0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#1|)))))))
 (and (_module.StateC.S_q |stC#0@@2|) (|_module.__default.UpdateC#canCall| |cmd#0@@4| |deps#0@@3| |exts'#0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@2|) |c'#0|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@2) |cmd#0@@4| |deps#0@@3| |exts#0@@2| |stC#0@@2|) (let ((|strs#0@@0| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|))))
(ite (|Set#Equal| |strs#0@@0| |Set#Empty|) |stC#0@@2| (let ((|e#1@@0| (_module.__default.Choose |strs#0@@0|)))
(let ((|c'#0@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@4| |deps#0@@3| |e#1@@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@4|) ($Box DatatypeTypeType |deps#0@@3|) ($Box SeqType |e#1@@0|)) (_module.StateC.c |stC#0@@2|))))
(let ((|exts'#0@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#1@@0|)))))))
(_module.__default.UpdateC $ly@@2 |cmd#0@@4| |deps#0@@3| |exts'#0@@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@2|) |c'#0@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |739|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@2) |cmd#0@@4| |deps#0@@3| |exts#0@@2| |stC#0@@2|))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprLiteral| |a#26#0#0|)) |##_module.Expression.exprLiteral|)
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1325|
 :pattern ( (|#_module.Expression.exprLiteral| |a#26#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (_module.Expression.lit (|#_module.Expression.exprLiteral| |a#30#0#0|)) |a#30#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1333|
 :pattern ( (|#_module.Expression.exprLiteral| |a#30#0#0|))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprIdentifier| |a#32#0#0|)) |##_module.Expression.exprIdentifier|)
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1335|
 :pattern ( (|#_module.Expression.exprIdentifier| |a#32#0#0|))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= (_module.Expression.id (|#_module.Expression.exprIdentifier| |a#36#0#0|)) |a#36#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1342|
 :pattern ( (|#_module.Expression.exprIdentifier| |a#36#0#0|))
)))
(assert (forall ((|a#72#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Expression.exprError| |a#72#0#0|)) |##_module.Expression.exprError|)
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1395|
 :pattern ( (|#_module.Expression.exprError| |a#72#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (_module.Expression.r (|#_module.Expression.exprError| |a#76#0#0|)) |a#76#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1403|
 :pattern ( (|#_module.Expression.exprError| |a#76#0#0|))
)))
(assert (forall ((|a#94#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Literal.litNumber| |a#94#0#0|)) |##_module.Literal.litNumber|)
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1424|
 :pattern ( (|#_module.Literal.litNumber| |a#94#0#0|))
)))
(assert (forall ((|a#98#0#0| Int) ) (! (= (_module.Literal.num (|#_module.Literal.litNumber| |a#98#0#0|)) |a#98#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1431|
 :pattern ( (|#_module.Literal.litNumber| |a#98#0#0|))
)))
(assert (forall ((|a#99#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Literal.litString| |a#99#0#0|)) |##_module.Literal.litString|)
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1432|
 :pattern ( (|#_module.Literal.litString| |a#99#0#0|))
)))
(assert (forall ((|a#103#0#0| T@U) ) (! (= (_module.Literal.str (|#_module.Literal.litString| |a#103#0#0|)) |a#103#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1439|
 :pattern ( (|#_module.Literal.litString| |a#103#0#0|))
)))
(assert (forall ((|a#106#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Literal.litPrimitive| |a#106#0#0|)) |##_module.Literal.litPrimitive|)
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1442|
 :pattern ( (|#_module.Literal.litPrimitive| |a#106#0#0|))
)))
(assert (forall ((|a#110#0#0| T@U) ) (! (= (_module.Literal.prim (|#_module.Literal.litPrimitive| |a#110#0#0|)) |a#110#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1449|
 :pattern ( (|#_module.Literal.litPrimitive| |a#110#0#0|))
)))
(assert (forall ((|a#112#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Literal.litArrOfPaths| |a#112#0#0|)) |##_module.Literal.litArrOfPaths|)
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1451|
 :pattern ( (|#_module.Literal.litArrOfPaths| |a#112#0#0|))
)))
(assert (forall ((|a#116#0#0| T@U) ) (! (= (_module.Literal.paths (|#_module.Literal.litArrOfPaths| |a#116#0#0|)) |a#116#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1458|
 :pattern ( (|#_module.Literal.litArrOfPaths| |a#116#0#0|))
)))
(assert (forall ((|a#118#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Literal.litArrOfStrings| |a#118#0#0|)) |##_module.Literal.litArrOfStrings|)
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1460|
 :pattern ( (|#_module.Literal.litArrOfStrings| |a#118#0#0|))
)))
(assert (forall ((|a#122#0#0| T@U) ) (! (= (_module.Literal.strs (|#_module.Literal.litArrOfStrings| |a#122#0#0|)) |a#122#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1467|
 :pattern ( (|#_module.Literal.litArrOfStrings| |a#122#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Literal.litArray| |a#124#0#0|)) |##_module.Literal.litArray|)
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1469|
 :pattern ( (|#_module.Literal.litArray| |a#124#0#0|))
)))
(assert (forall ((|a#128#0#0| T@U) ) (! (= (_module.Literal.arr (|#_module.Literal.litArray| |a#128#0#0|)) |a#128#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1476|
 :pattern ( (|#_module.Literal.litArray| |a#128#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (< (DtRank |a#42#0#0|) (DtRank (|#_module.Expression.exprIf| |a#42#0#0| |a#42#1#0| |a#42#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1353|
 :pattern ( (|#_module.Expression.exprIf| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (< (DtRank |a#44#1#0|) (DtRank (|#_module.Expression.exprIf| |a#44#0#0| |a#44#1#0| |a#44#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1355|
 :pattern ( (|#_module.Expression.exprIf| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) ) (! (< (DtRank |a#46#2#0|) (DtRank (|#_module.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1357|
 :pattern ( (|#_module.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|))
)))
(assert (forall ((|a#174#0#0| T@U) (|a#174#1#0| T@U) (|a#174#2#0| T@U) ) (! (< (BoxRank |a#174#0#0|) (DtRank (|#_module.Triple.Trio| |a#174#0#0| |a#174#1#0| |a#174#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1571|
 :pattern ( (|#_module.Triple.Trio| |a#174#0#0| |a#174#1#0| |a#174#2#0|))
)))
(assert (forall ((|a#176#0#0| T@U) (|a#176#1#0| T@U) (|a#176#2#0| T@U) ) (! (< (BoxRank |a#176#1#0|) (DtRank (|#_module.Triple.Trio| |a#176#0#0| |a#176#1#0| |a#176#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1573|
 :pattern ( (|#_module.Triple.Trio| |a#176#0#0| |a#176#1#0| |a#176#2#0|))
)))
(assert (forall ((|a#178#0#0| T@U) (|a#178#1#0| T@U) (|a#178#2#0| T@U) ) (! (< (BoxRank |a#178#2#0|) (DtRank (|#_module.Triple.Trio| |a#178#0#0| |a#178#1#0| |a#178#2#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1575|
 :pattern ( (|#_module.Triple.Trio| |a#178#0#0| |a#178#1#0| |a#178#2#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@0| T@U) ) (!  (=> (or (|_module.__default.DomC#canCall| |c#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |c#0@@0| Tclass._module.Cache))) ($Is SetType (_module.__default.DomC |c#0@@0|) (TSet Tclass._module.HashValue)))
 :qid |CloudMakeConsistentBuildslegacydfy.97:21|
 :skolemid |779|
 :pattern ( (_module.__default.DomC |c#0@@0|))
))))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (DtRank |a#52#0#0|) (DtRank (|#_module.Expression.exprAnd| |a#52#0#0| |a#52#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1367|
 :pattern ( (|#_module.Expression.exprAnd| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#1#0|) (DtRank (|#_module.Expression.exprAnd| |a#54#0#0| |a#54#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1369|
 :pattern ( (|#_module.Expression.exprAnd| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (< (DtRank |a#60#0#0|) (DtRank (|#_module.Expression.exprOr| |a#60#0#0| |a#60#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1379|
 :pattern ( (|#_module.Expression.exprOr| |a#60#0#0| |a#60#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (< (DtRank |a#62#1#0|) (DtRank (|#_module.Expression.exprOr| |a#62#0#0| |a#62#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1381|
 :pattern ( (|#_module.Expression.exprOr| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) ) (! (< (DtRank |a#68#0#0|) (DtRank (|#_module.Expression.exprInvocation| |a#68#0#0| |a#68#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1391|
 :pattern ( (|#_module.Expression.exprInvocation| |a#68#0#0| |a#68#1#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) ) (! (< (|Seq#Rank| |a#71#1#0|) (DtRank (|#_module.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1394|
 :pattern ( (|#_module.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|))
)))
(assert (forall ((a@@36 T@U) (b@@33 T@U) ) (! (= (|Set#Union| a@@36 (|Set#Union| a@@36 b@@33)) (|Set#Union| a@@36 b@@33))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@36 (|Set#Union| a@@36 b@@33)))
)))
(assert (forall ((|a#96#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litNumber| |a#96#0#0|) Tclass._module.Literal) ($Is intType (int_2_U |a#96#0#0|) TInt))
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1428|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litNumber| |a#96#0#0|) Tclass._module.Literal))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|cmd#0@@5| T@U) (|deps#0@@4| T@U) (|exts#0@@3| T@U) (|stC#0@@3| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@5| |deps#0@@4| (Lit DatatypeTypeType |exts#0@@3|) |stC#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@5| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@4| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@3| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@3| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@5|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@5|))) (_module.Expression.exprLiteral_q |deps#0@@4|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@4|))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@3|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@3|)))))))) (and (let ((|strs#1| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@3|)))))))
 (=> (not (|Set#Equal| |strs#1| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#1|) (let ((|e#2| (_module.__default.Choose |strs#1|)))
 (and (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@5| |deps#0@@4| |e#2|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@5| |deps#0@@4| |e#2|))) (_module.StateC.S_q |stC#0@@3|)) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@5| |deps#0@@4| |e#2|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@5|) ($Box DatatypeTypeType |deps#0@@4|) ($Box SeqType |e#2|)) (_module.StateC.c |stC#0@@3|))) (let ((|c'#1| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@5| |deps#0@@4| |e#2|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@5|) ($Box DatatypeTypeType |deps#0@@4|) ($Box SeqType |e#2|)) (_module.StateC.c |stC#0@@3|))))
(let ((|exts'#1| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#2|)))))))
 (and (_module.StateC.S_q |stC#0@@3|) (|_module.__default.UpdateC#canCall| |cmd#0@@5| |deps#0@@4| |exts'#1| (|#_module.StateC.S| (_module.StateC.st |stC#0@@3|) |c'#1|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@3) |cmd#0@@5| |deps#0@@4| (Lit DatatypeTypeType |exts#0@@3|) |stC#0@@3|) (let ((|strs#1@@0| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@3|)))))))
(ite (|Set#Equal| |strs#1@@0| |Set#Empty|) |stC#0@@3| (let ((|e#2@@0| (Lit SeqType (_module.__default.Choose |strs#1@@0|))))
(let ((|c'#1@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@5| |deps#0@@4| |e#2@@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@5|) ($Box DatatypeTypeType |deps#0@@4|) ($Box SeqType |e#2@@0|)) (_module.StateC.c |stC#0@@3|))))
(let ((|exts'#1@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#1@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#2@@0|)))))))
(_module.__default.UpdateC ($LS $ly@@3) |cmd#0@@5| |deps#0@@4| |exts'#1@@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@3|) |c'#1@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :weight 3
 :skolemid |740|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@3) |cmd#0@@5| |deps#0@@4| (Lit DatatypeTypeType |exts#0@@3|) |stC#0@@3|))
))))
(assert (forall ((|a#31#0#0| T@U) ) (! (< (DtRank |a#31#0#0|) (DtRank (|#_module.Expression.exprLiteral| |a#31#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1334|
 :pattern ( (|#_module.Expression.exprLiteral| |a#31#0#0|))
)))
(assert (forall ((|a#77#0#0| T@U) ) (! (< (DtRank |a#77#0#0|) (DtRank (|#_module.Expression.exprError| |a#77#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1404|
 :pattern ( (|#_module.Expression.exprError| |a#77#0#0|))
)))
(assert (forall ((|a#105#0#0| T@U) ) (! (< (|Seq#Rank| |a#105#0#0|) (DtRank (|#_module.Literal.litString| |a#105#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1441|
 :pattern ( (|#_module.Literal.litString| |a#105#0#0|))
)))
(assert (forall ((|a#111#0#0| T@U) ) (! (< (DtRank |a#111#0#0|) (DtRank (|#_module.Literal.litPrimitive| |a#111#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1450|
 :pattern ( (|#_module.Literal.litPrimitive| |a#111#0#0|))
)))
(assert (forall ((|a#130#0#0| T@U) ) (! (< (|Seq#Rank| |a#130#0#0|) (DtRank (|#_module.Literal.litArray| |a#130#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1478|
 :pattern ( (|#_module.Literal.litArray| |a#130#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1580|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((d@@41 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Literal.litNumber_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass._module.Literal $h@@0))) ($IsAlloc intType (int_2_U (_module.Literal.num d@@41)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |1429|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Literal.num d@@41)) TInt $h@@0))
)))
(assert (forall ((d@@42 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@42)) (DtRank d@@42))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@42)))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((bx@@12 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@12 (TSeq t@@6)))
)))
(assert (forall ((d@@43 T@U) (_module.Triple$A@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Triple.Trio_q d@@43) (exists ((_module.Triple$B@@7 T@U) (_module.Triple$C@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@43 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1563|
 :pattern ( ($IsAlloc DatatypeTypeType d@@43 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@1))
)))) ($IsAllocBox (_module.Triple.fst d@@43) _module.Triple$A@@7 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($IsAllocBox (_module.Triple.fst d@@43) _module.Triple$A@@7 $h@@1))
)))
(assert (forall ((d@@44 T@U) (_module.Triple$B@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Triple.Trio_q d@@44) (exists ((_module.Triple$A@@8 T@U) (_module.Triple$C@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@44 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@44 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@2))
)))) ($IsAllocBox (_module.Triple.snd d@@44) _module.Triple$B@@8 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1566|
 :pattern ( ($IsAllocBox (_module.Triple.snd d@@44) _module.Triple$B@@8 $h@@2))
)))
(assert (forall ((d@@45 T@U) (_module.Triple$C@@9 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Triple.Trio_q d@@45) (exists ((_module.Triple$A@@9 T@U) (_module.Triple$B@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@45 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@3)
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@45 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@3))
)))) ($IsAllocBox (_module.Triple.trd d@@45) _module.Triple$C@@9 $h@@3))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsAllocBox (_module.Triple.trd d@@45) _module.Triple$C@@9 $h@@3))
)))
(assert (forall ((d@@46 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@46 Tclass._module.StateC)) ($IsAlloc DatatypeTypeType d@@46 Tclass._module.StateC $h@@4))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($IsAlloc DatatypeTypeType d@@46 Tclass._module.StateC $h@@4))
)))
(assert (forall ((d@@47 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@47 Tclass._module.Expression)) ($IsAlloc DatatypeTypeType d@@47 Tclass._module.Expression $h@@5))
 :qid |unknown.0:0|
 :skolemid |1405|
 :pattern ( ($IsAlloc DatatypeTypeType d@@47 Tclass._module.Expression $h@@5))
)))
(assert (forall ((d@@48 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@48 Tclass._module.Literal)) ($IsAlloc DatatypeTypeType d@@48 Tclass._module.Literal $h@@6))
 :qid |unknown.0:0|
 :skolemid |1479|
 :pattern ( ($IsAlloc DatatypeTypeType d@@48 Tclass._module.Literal $h@@6))
)))
(assert (forall ((d@@49 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@49 Tclass._module.Primitive)) ($IsAlloc DatatypeTypeType d@@49 Tclass._module.Primitive $h@@7))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( ($IsAlloc DatatypeTypeType d@@49 Tclass._module.Primitive $h@@7))
)))
(assert (forall ((d@@50 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@50 Tclass._module.Reason)) ($IsAlloc DatatypeTypeType d@@50 Tclass._module.Reason $h@@8))
 :qid |unknown.0:0|
 :skolemid |1509|
 :pattern ( ($IsAlloc DatatypeTypeType d@@50 Tclass._module.Reason $h@@8))
)))
(assert (forall ((d@@51 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@51 Tclass._module.Path)) ($IsAlloc DatatypeTypeType d@@51 Tclass._module.Path $h@@9))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( ($IsAlloc DatatypeTypeType d@@51 Tclass._module.Path $h@@9))
)))
(assert (= (Tag Tclass._module.Path) Tagclass._module.Path))
(assert (= (TagFamily Tclass._module.Path) tytagFamily$Path))
(assert (= (Tag Tclass._module.Expression) Tagclass._module.Expression))
(assert (= (TagFamily Tclass._module.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass._module.StateC) Tagclass._module.StateC))
(assert (= (TagFamily Tclass._module.StateC) tytagFamily$StateC))
(assert (= (Tag Tclass._module.Primitive) Tagclass._module.Primitive))
(assert (= (TagFamily Tclass._module.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass._module.Literal) Tagclass._module.Literal))
(assert (= (TagFamily Tclass._module.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass._module.Reason) Tagclass._module.Reason))
(assert (= (TagFamily Tclass._module.Reason) tytagFamily$Reason))
(assert (= |#_module.Literal.litTrue| (Lit DatatypeTypeType |#_module.Literal.litTrue|)))
(assert (= |#_module.Literal.litFalse| (Lit DatatypeTypeType |#_module.Literal.litFalse|)))
(assert (= |#_module.Literal.litUndefined| (Lit DatatypeTypeType |#_module.Literal.litUndefined|)))
(assert (= |#_module.Literal.litNull| (Lit DatatypeTypeType |#_module.Literal.litNull|)))
(assert (forall ((|a#101#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litString| |a#101#0#0|) Tclass._module.Literal) ($Is SeqType |a#101#0#0| (TSeq TChar)))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1436|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litString| |a#101#0#0|) Tclass._module.Literal))
)))
(assert (forall ((d@@52 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_module.Literal.litString_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass._module.Literal $h@@10))) ($IsAlloc SeqType (_module.Literal.str d@@52) (TSeq TChar) $h@@10))
 :qid |unknown.0:0|
 :skolemid |1437|
 :pattern ( ($IsAlloc SeqType (_module.Literal.str d@@52) (TSeq TChar) $h@@10))
)))
(assert (forall ((|a#117#0#0| T@U) (d@@53 T@U) ) (!  (=> (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@53)) (< (DtRank d@@53) (DtRank (|#_module.Literal.litArrOfPaths| |a#117#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1459|
 :pattern ( (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@53)) (|#_module.Literal.litArrOfPaths| |a#117#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) (d@@54 T@U) ) (!  (=> (|Set#IsMember| |a#123#0#0| ($Box DatatypeTypeType d@@54)) (< (DtRank d@@54) (DtRank (|#_module.Literal.litArrOfStrings| |a#123#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1468|
 :pattern ( (|Set#IsMember| |a#123#0#0| ($Box DatatypeTypeType d@@54)) (|#_module.Literal.litArrOfStrings| |a#123#0#0|))
)))
(assert (forall ((a@@37 T@U) (b@@34 T@U) ) (! (= (|Set#Equal| a@@37 b@@34) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@37 o@@5) (|Set#IsMember| b@@34 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@37 o@@5))
 :pattern ( (|Set#IsMember| b@@34 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@37 b@@34))
)))
(assert (forall ((d@@55 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.StateC.S_q d@@55) ($IsAlloc DatatypeTypeType d@@55 Tclass._module.StateC $h@@11))) ($IsAllocBox (_module.StateC.st d@@55) Tclass._module.State $h@@11))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( ($IsAllocBox (_module.StateC.st d@@55) Tclass._module.State $h@@11))
)))
(assert (forall ((d@@56 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.StateC.S_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass._module.StateC $h@@12))) ($IsAllocBox (_module.StateC.c d@@56) Tclass._module.Cache $h@@12))
 :qid |unknown.0:0|
 :skolemid |1275|
 :pattern ( ($IsAllocBox (_module.StateC.c d@@56) Tclass._module.Cache $h@@12))
)))
(assert (forall ((d@@57 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Expression.exprLiteral_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass._module.Expression $h@@13))) ($IsAlloc DatatypeTypeType (_module.Expression.lit d@@57) Tclass._module.Literal $h@@13))
 :qid |unknown.0:0|
 :skolemid |1331|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.lit d@@57) Tclass._module.Literal $h@@13))
)))
(assert (forall ((d@@58 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Expression.exprIdentifier_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass._module.Expression $h@@14))) ($IsAllocBox (_module.Expression.id d@@58) Tclass._module.Identifier $h@@14))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($IsAllocBox (_module.Expression.id d@@58) Tclass._module.Identifier $h@@14))
)))
(assert (forall ((d@@59 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.Expression.exprIf_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass._module.Expression $h@@15))) ($IsAlloc DatatypeTypeType (_module.Expression.cond d@@59) Tclass._module.Expression $h@@15))
 :qid |unknown.0:0|
 :skolemid |1348|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.cond d@@59) Tclass._module.Expression $h@@15))
)))
(assert (forall ((d@@60 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.Expression.exprIf_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass._module.Expression $h@@16))) ($IsAlloc DatatypeTypeType (_module.Expression.ifTrue d@@60) Tclass._module.Expression $h@@16))
 :qid |unknown.0:0|
 :skolemid |1349|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.ifTrue d@@60) Tclass._module.Expression $h@@16))
)))
(assert (forall ((d@@61 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_module.Expression.exprIf_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass._module.Expression $h@@17))) ($IsAlloc DatatypeTypeType (_module.Expression.ifFalse d@@61) Tclass._module.Expression $h@@17))
 :qid |unknown.0:0|
 :skolemid |1350|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.ifFalse d@@61) Tclass._module.Expression $h@@17))
)))
(assert (forall ((d@@62 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_module.Expression.exprAnd_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass._module.Expression $h@@18))) ($IsAlloc DatatypeTypeType (_module.Expression.conj0 d@@62) Tclass._module.Expression $h@@18))
 :qid |unknown.0:0|
 :skolemid |1363|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.conj0 d@@62) Tclass._module.Expression $h@@18))
)))
(assert (forall ((d@@63 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_module.Expression.exprAnd_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass._module.Expression $h@@19))) ($IsAlloc DatatypeTypeType (_module.Expression.conj1 d@@63) Tclass._module.Expression $h@@19))
 :qid |unknown.0:0|
 :skolemid |1364|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.conj1 d@@63) Tclass._module.Expression $h@@19))
)))
(assert (forall ((d@@64 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_module.Expression.exprOr_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass._module.Expression $h@@20))) ($IsAlloc DatatypeTypeType (_module.Expression.disj0 d@@64) Tclass._module.Expression $h@@20))
 :qid |unknown.0:0|
 :skolemid |1375|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.disj0 d@@64) Tclass._module.Expression $h@@20))
)))
(assert (forall ((d@@65 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_module.Expression.exprOr_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass._module.Expression $h@@21))) ($IsAlloc DatatypeTypeType (_module.Expression.disj1 d@@65) Tclass._module.Expression $h@@21))
 :qid |unknown.0:0|
 :skolemid |1376|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.disj1 d@@65) Tclass._module.Expression $h@@21))
)))
(assert (forall ((d@@66 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.Expression.exprInvocation_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass._module.Expression $h@@22))) ($IsAlloc DatatypeTypeType (_module.Expression.fun d@@66) Tclass._module.Expression $h@@22))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.fun d@@66) Tclass._module.Expression $h@@22))
)))
(assert (forall ((d@@67 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (_module.Expression.exprError_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass._module.Expression $h@@23))) ($IsAlloc DatatypeTypeType (_module.Expression.r d@@67) Tclass._module.Reason $h@@23))
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.r d@@67) Tclass._module.Reason $h@@23))
)))
(assert (forall ((d@@68 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (_module.Literal.litPrimitive_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass._module.Literal $h@@24))) ($IsAlloc DatatypeTypeType (_module.Literal.prim d@@68) Tclass._module.Primitive $h@@24))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Literal.prim d@@68) Tclass._module.Primitive $h@@24))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_module.StateC.S| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.StateC.S| |a#3#0#0| |a#3#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1276|
 :pattern ( (|#_module.StateC.S| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (|#_module.Expression.exprAnd| (Lit DatatypeTypeType |a#50#0#0|) (Lit DatatypeTypeType |a#50#1#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprAnd| |a#50#0#0| |a#50#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1365|
 :pattern ( (|#_module.Expression.exprAnd| (Lit DatatypeTypeType |a#50#0#0|) (Lit DatatypeTypeType |a#50#1#0|)))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= (|#_module.Expression.exprOr| (Lit DatatypeTypeType |a#58#0#0|) (Lit DatatypeTypeType |a#58#1#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprOr| |a#58#0#0| |a#58#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1377|
 :pattern ( (|#_module.Expression.exprOr| (Lit DatatypeTypeType |a#58#0#0|) (Lit DatatypeTypeType |a#58#1#0|)))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (= (|#_module.Expression.exprInvocation| (Lit DatatypeTypeType |a#66#0#0|) (Lit SeqType |a#66#1#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprInvocation| |a#66#0#0| |a#66#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1389|
 :pattern ( (|#_module.Expression.exprInvocation| (Lit DatatypeTypeType |a#66#0#0|) (Lit SeqType |a#66#1#0|)))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |a#29#0#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| |a#29#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1332|
 :pattern ( (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |a#29#0#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) ) (! (= (|#_module.Expression.exprIdentifier| (Lit BoxType |a#35#0#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprIdentifier| |a#35#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1341|
 :pattern ( (|#_module.Expression.exprIdentifier| (Lit BoxType |a#35#0#0|)))
)))
(assert (forall ((|a#75#0#0| T@U) ) (! (= (|#_module.Expression.exprError| (Lit DatatypeTypeType |a#75#0#0|)) (Lit DatatypeTypeType (|#_module.Expression.exprError| |a#75#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1402|
 :pattern ( (|#_module.Expression.exprError| (Lit DatatypeTypeType |a#75#0#0|)))
)))
(assert (forall ((|a#102#0#0| T@U) ) (! (= (|#_module.Literal.litString| (Lit SeqType |a#102#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litString| |a#102#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1438|
 :pattern ( (|#_module.Literal.litString| (Lit SeqType |a#102#0#0|)))
)))
(assert (forall ((|a#109#0#0| T@U) ) (! (= (|#_module.Literal.litPrimitive| (Lit DatatypeTypeType |a#109#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litPrimitive| |a#109#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1448|
 :pattern ( (|#_module.Literal.litPrimitive| (Lit DatatypeTypeType |a#109#0#0|)))
)))
(assert (forall ((|a#115#0#0| T@U) ) (! (= (|#_module.Literal.litArrOfPaths| (Lit SetType |a#115#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litArrOfPaths| |a#115#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1457|
 :pattern ( (|#_module.Literal.litArrOfPaths| (Lit SetType |a#115#0#0|)))
)))
(assert (forall ((|a#121#0#0| T@U) ) (! (= (|#_module.Literal.litArrOfStrings| (Lit SetType |a#121#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litArrOfStrings| |a#121#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1466|
 :pattern ( (|#_module.Literal.litArrOfStrings| (Lit SetType |a#121#0#0|)))
)))
(assert (forall ((|a#127#0#0| T@U) ) (! (= (|#_module.Literal.litArray| (Lit SeqType |a#127#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litArray| |a#127#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1475|
 :pattern ( (|#_module.Literal.litArray| (Lit SeqType |a#127#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((d@@69 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_module.Literal.litArrOfStrings_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass._module.Literal $h@@25))) ($IsAlloc SetType (_module.Literal.strs d@@69) (TSet (TSeq TChar)) $h@@25))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($IsAlloc SetType (_module.Literal.strs d@@69) (TSet (TSeq TChar)) $h@@25))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|a#120#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litArrOfStrings| |a#120#0#0|) Tclass._module.Literal) ($Is SetType |a#120#0#0| (TSet (TSeq TChar))))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1464|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litArrOfStrings| |a#120#0#0|) Tclass._module.Literal))
)))
(assert (forall ((d@@70 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_module.Expression.exprInvocation_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass._module.Expression $h@@26))) ($IsAlloc SeqType (_module.Expression.args d@@70) (TSeq Tclass._module.Expression) $h@@26))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsAlloc SeqType (_module.Expression.args d@@70) (TSeq Tclass._module.Expression) $h@@26))
)))
(assert (forall ((d@@71 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_module.Literal.litArrOfPaths_q d@@71) ($IsAlloc DatatypeTypeType d@@71 Tclass._module.Literal $h@@27))) ($IsAlloc SetType (_module.Literal.paths d@@71) (TSet Tclass._module.Path) $h@@27))
 :qid |unknown.0:0|
 :skolemid |1456|
 :pattern ( ($IsAlloc SetType (_module.Literal.paths d@@71) (TSet Tclass._module.Path) $h@@27))
)))
(assert (forall ((d@@72 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (_module.Literal.litArray_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass._module.Literal $h@@28))) ($IsAlloc SeqType (_module.Literal.arr d@@72) (TSeq Tclass._module.Expression) $h@@28))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc SeqType (_module.Literal.arr d@@72) (TSeq Tclass._module.Expression) $h@@28))
)))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@4))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@9 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |stC'#Z#0@0| () T@U)
(declare-fun |stC#0@@4| () T@U)
(declare-fun |##c#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |##c#1@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |exts#0@@4| () T@U)
(declare-fun |cmd#0@@6| () T@U)
(declare-fun |deps#0@@5| () T@U)
(declare-fun |hashValues#Z#0@0| () T@U)
(declare-fun |e#5@0| () T@U)
(declare-fun |##p#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |strs#Z#0@0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |e#Z#0@0| () T@U)
(declare-fun |##p#1@0| () T@U)
(declare-fun |##h#0@0| () T@U)
(declare-fun |##cmd#3@0| () T@U)
(declare-fun |##c#2@0| () T@U)
(declare-fun |let#4#0#0| () T@U)
(declare-fun |c'#Z#0@0| () T@U)
(declare-fun |let#5#0#0| () T@U)
(declare-fun |exts'#Z#0@0| () T@U)
(declare-fun |##stC#1@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.UpdateC)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon7_correct true))
(let ((anon15_Else_correct  (=> (and (or (not (= (_module.StateC.st |stC'#Z#0@0|) (_module.StateC.st |stC#0@@4|))) (not true)) (= (ControlFlow 0 19) 17)) anon7_correct)))
(let ((anon15_Then_correct  (=> (and (= (_module.StateC.st |stC'#Z#0@0|) (_module.StateC.st |stC#0@@4|)) (_module.StateC.S_q |stC#0@@4|)) (=> (and (and (and (= |##c#0@0| (_module.StateC.c |stC#0@@4|)) ($IsAllocBox |##c#0@0| Tclass._module.Cache $Heap@@1)) (and (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@4|)) (_module.StateC.S_q |stC'#Z#0@0|))) (and (and (= |##c#1@0| (_module.StateC.c |stC'#Z#0@0|)) ($IsAllocBox |##c#1@0| Tclass._module.Cache $Heap@@1)) (and (|_module.__default.DomC#canCall| (_module.StateC.c |stC'#Z#0@0|)) (= (ControlFlow 0 18) 17)))) anon7_correct))))
(let ((anon5_correct  (=> (and (= |let#1#0#0| (|Set#FromBoogieMap| (|lambda#4| (TSeq TChar) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) |cmd#0@@6| |deps#0@@5| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) |cmd#0@@6| |deps#0@@5|))) (forall ((|e#6| T@U) ) (!  (=> ($Is SeqType |e#6| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#6|)) (and (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@5| |e#6|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#6|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.48:27|
 :skolemid |745|
 :pattern ( (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#6|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#6|)))
))) (=> (and (and ($Is SetType |let#1#0#0| (TSet Tclass._module.HashValue)) (= |hashValues#Z#0@0| |let#1#0#0|)) (and (_module.StateC.S_q |stC'#Z#0@0|) (_module.StateC.S_q |stC#0@@4|))) (and (=> (= (ControlFlow 0 20) 18) anon15_Then_correct) (=> (= (ControlFlow 0 20) 19) anon15_Else_correct))))))
(let ((anon14_Else_correct  (=> (and (not (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#5@0|))) (= (ControlFlow 0 23) 20)) anon5_correct)))
(let ((anon14_Then_correct  (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#5@0|)) (=> (and (and (and ($IsAlloc DatatypeTypeType |cmd#0@@6| Tclass._module.Expression $Heap@@1) ($IsAlloc DatatypeTypeType |deps#0@@5| Tclass._module.Expression $Heap@@1)) (and ($IsAlloc SeqType |e#5@0| (TSeq TChar) $Heap@@1) (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@5| |e#5@0|))) (and (and (= |##p#0@0| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#5@0|)) ($IsAlloc DatatypeTypeType |##p#0@0| Tclass._module.Path $Heap@@1)) (and (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#5@0|)) (= (ControlFlow 0 22) 20)))) anon5_correct))))
(let ((anon13_Then_correct  (=> (and ($Is SeqType |e#5@0| (TSeq TChar)) ($IsAlloc SeqType |e#5@0| (TSeq TChar) $Heap@@1)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (=> (_module.Expression.exprLiteral_q |exts#0@@4|) (and (=> (= (ControlFlow 0 24) (- 0 25)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|))) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|)) (and (=> (= (ControlFlow 0 24) 22) anon14_Then_correct) (=> (= (ControlFlow 0 24) 23) anon14_Else_correct)))))))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is SeqType |e#5@0| (TSeq TChar)) ($IsAlloc SeqType |e#5@0| (TSeq TChar) $Heap@@1))) (= (ControlFlow 0 21) 20)) anon5_correct)))
(let ((anon12_Then_correct  (=> ($Is DatatypeTypeType (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|) Tclass._module.StateC) (=> (and (and ($IsAlloc DatatypeTypeType |cmd#0@@6| Tclass._module.Expression $Heap@@1) ($IsAlloc DatatypeTypeType |deps#0@@5| Tclass._module.Expression $Heap@@1)) (and ($IsAlloc DatatypeTypeType |exts#0@@4| Tclass._module.Expression $Heap@@1) ($IsAlloc DatatypeTypeType |stC#0@@4| Tclass._module.StateC $Heap@@1))) (and (=> (= (ControlFlow 0 27) (- 0 34)) (_module.Expression.exprLiteral_q |cmd#0@@6|)) (and (=> (= (ControlFlow 0 27) (- 0 33)) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|))) (and (=> (= (ControlFlow 0 27) (- 0 32)) (_module.Expression.exprLiteral_q |deps#0@@5|)) (and (=> (= (ControlFlow 0 27) (- 0 31)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@5|))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|))) (=> (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@6|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|))) (_module.Expression.exprLiteral_q |deps#0@@5|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@5|))) (_module.Expression.exprLiteral_q |exts#0@@4|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (and (and (and (|_module.Expression#Equal| |cmd#0@@6| |cmd#0@@6|) (|_module.Expression#Equal| |deps#0@@5| |deps#0@@5|)) (|_module.Expression#Equal| |exts#0@@4| |exts#0@@4|)) (|_module.StateC#Equal| |stC#0@@4| |stC#0@@4|)) (and (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))) (not (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))))))) (=> (or (and (and (and (|_module.Expression#Equal| |cmd#0@@6| |cmd#0@@6|) (|_module.Expression#Equal| |deps#0@@5| |deps#0@@5|)) (|_module.Expression#Equal| |exts#0@@4| |exts#0@@4|)) (|_module.StateC#Equal| |stC#0@@4| |stC#0@@4|)) (and (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))) (not (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)))))) (=> (and (or (and (and (and (|_module.Expression#Equal| |cmd#0@@6| |cmd#0@@6|) (|_module.Expression#Equal| |deps#0@@5| |deps#0@@5|)) (|_module.Expression#Equal| |exts#0@@4| |exts#0@@4|)) (|_module.StateC#Equal| |stC#0@@4| |stC#0@@4|)) (|_module.__default.UpdateC#canCall| |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)) (_module.StateC.S_q (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|))) (=> (and (and (= |let#0#0#0| (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)) (|_module.__default.UpdateC#canCall| |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass._module.StateC) (= |stC'#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 27) 24) anon13_Then_correct) (=> (= (ControlFlow 0 27) 21) anon13_Else_correct)))))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|stC'#1| (_module.__default.UpdateC ($LS ($LS $LZ)) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)))
(= (_module.StateC.st |stC'#1|) (_module.StateC.st |stC#0@@4|)))) (=> (let ((|stC'#1@@0| (_module.__default.UpdateC ($LS ($LS $LZ)) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)))
(= (_module.StateC.st |stC'#1@@0|) (_module.StateC.st |stC#0@@4|))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|stC'#1@@1| (_module.__default.UpdateC ($LS ($LS $LZ)) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|)))
(let ((|hashValues#1| (|Set#FromBoogieMap| (|lambda#4| (TSeq TChar) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) |cmd#0@@6| |deps#0@@5| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) |cmd#0@@6| |deps#0@@5|))))
(|Set#Equal| (|Set#Union| (_module.__default.DomC (_module.StateC.c |stC#0@@4|)) |hashValues#1|) (_module.__default.DomC (_module.StateC.c |stC'#1@@1|))))))))))
(let ((anon16_Else_correct  (=> (and (not (|Set#Equal| |strs#Z#0@0| |Set#Empty|)) ($IsAlloc SetType |strs#Z#0@0| (TSet (TSeq TChar)) $Heap@@1)) (and (=> (= (ControlFlow 0 5) (- 0 13)) (not (|Set#Equal| |strs#Z#0@0| |Set#Empty|))) (=> (and (not (|Set#Equal| |strs#Z#0@0| |Set#Empty|)) (|_module.__default.Choose#canCall| |strs#Z#0@0|)) (=> (and (and (= |let#3#0#0| (_module.__default.Choose |strs#Z#0@0|)) (|_module.__default.Choose#canCall| |strs#Z#0@0|)) (and ($Is SeqType |let#3#0#0| (TSeq TChar)) (= |e#Z#0@0| |let#3#0#0|))) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |cmd#0@@6| Tclass._module.Expression $Heap@@1) ($IsAlloc DatatypeTypeType |deps#0@@5| Tclass._module.Expression $Heap@@1)) (and ($IsAlloc SeqType |e#Z#0@0| (TSeq TChar) $Heap@@1) (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@5| |e#Z#0@0|))) (and (and (= |##p#1@0| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)) ($IsAlloc DatatypeTypeType |##p#1@0| Tclass._module.Path $Heap@@1)) (and (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)) (= |##h#0@0| (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)))))) (and (and (and ($IsAllocBox |##h#0@0| Tclass._module.HashValue $Heap@@1) (= |##cmd#3@0| (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@6|) ($Box DatatypeTypeType |deps#0@@5|) ($Box SeqType |e#Z#0@0|)))) (and ($IsAlloc DatatypeTypeType |##cmd#3@0| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar)) $Heap@@1) (_module.StateC.S_q |stC#0@@4|))) (and (and (= |##c#2@0| (_module.StateC.c |stC#0@@4|)) ($IsAllocBox |##c#2@0| Tclass._module.Cache $Heap@@1)) (and (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@6|) ($Box DatatypeTypeType |deps#0@@5|) ($Box SeqType |e#Z#0@0|)) (_module.StateC.c |stC#0@@4|)) (= |let#4#0#0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@6|) ($Box DatatypeTypeType |deps#0@@5|) ($Box SeqType |e#Z#0@0|)) (_module.StateC.c |stC#0@@4|))))))) (=> (and (and (and (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@5| |e#Z#0@0|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|))) (_module.StateC.S_q |stC#0@@4|)) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@5| |e#Z#0@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@6|) ($Box DatatypeTypeType |deps#0@@5|) ($Box SeqType |e#Z#0@0|)) (_module.StateC.c |stC#0@@4|))) ($IsBox |let#4#0#0| Tclass._module.Cache)) (and (= |c'#Z#0@0| |let#4#0#0|) (= |let#5#0#0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#Z#0@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#Z#0@0|)))))))) (and (and (and ($Is DatatypeTypeType |let#5#0#0| Tclass._module.Expression) (= |exts'#Z#0@0| |let#5#0#0|)) (and ($IsAlloc DatatypeTypeType |cmd#0@@6| Tclass._module.Expression $Heap@@1) ($IsAlloc DatatypeTypeType |deps#0@@5| Tclass._module.Expression $Heap@@1))) (and (and ($IsAlloc DatatypeTypeType |exts'#Z#0@0| Tclass._module.Expression $Heap@@1) (_module.StateC.S_q |stC#0@@4|)) (and (= |##stC#1@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@4|) |c'#Z#0@0|)) ($IsAlloc DatatypeTypeType |##stC#1@0| Tclass._module.StateC $Heap@@1))))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (_module.Expression.exprLiteral_q |cmd#0@@6|)) (and (=> (= (ControlFlow 0 5) (- 0 11)) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (_module.Expression.exprLiteral_q |deps#0@@5|)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@5|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (_module.Expression.exprLiteral_q |exts'#Z#0@0|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts'#Z#0@0|))) (=> (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@6|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|))) (_module.Expression.exprLiteral_q |deps#0@@5|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@5|))) (_module.Expression.exprLiteral_q |exts'#Z#0@0|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts'#Z#0@0|))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts'#Z#0@0|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))) (not (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts'#Z#0@0|)))))) (=> (and (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts'#Z#0@0|)) (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))) (not (|Set#Subset| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) (_module.Literal.strs (_module.Expression.lit |exts'#Z#0@0|))))) (=> (|_module.__default.UpdateC#canCall| |cmd#0@@6| |deps#0@@5| |exts'#Z#0@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@4|) |c'#Z#0@0|)) (=> (and (_module.StateC.S_q (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts'#Z#0@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@4|) |c'#Z#0@0|))) (= (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|) (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts'#Z#0@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@4|) |c'#Z#0@0|)))) (=> (and (and (_module.StateC.S_q |stC#0@@4|) (|_module.__default.UpdateC#canCall| |cmd#0@@6| |deps#0@@5| |exts'#Z#0@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@4|) |c'#Z#0@0|))) (and ($Is DatatypeTypeType (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|) Tclass._module.StateC) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))))))))))))))))))
(let ((anon16_Then_correct  (=> (and (and (|Set#Equal| |strs#Z#0@0| |Set#Empty|) (= (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|) |stC#0@@4|)) (and ($Is DatatypeTypeType (_module.__default.UpdateC ($LS $LZ) |cmd#0@@6| |deps#0@@5| |exts#0@@4| |stC#0@@4|) Tclass._module.StateC) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct)))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 16)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (=> (_module.Expression.exprLiteral_q |exts#0@@4|) (and (=> (= (ControlFlow 0 14) (- 0 15)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|))) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|)) (=> (= |let#2#0#0| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|))) (=> (and ($Is SetType |let#2#0#0| (TSet (TSeq TChar))) (= |strs#Z#0@0| |let#2#0#0|)) (and (=> (= (ControlFlow 0 14) 4) anon16_Then_correct) (=> (= (ControlFlow 0 14) 5) anon16_Else_correct))))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (_module.Expression.exprLiteral_q |cmd#0@@6|)) (and (=> (= (ControlFlow 0 35) (- 0 40)) (_module.Expression.exprLiteral_q |cmd#0@@6|)) (=> (_module.Expression.exprLiteral_q |cmd#0@@6|) (=> (and (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|)) (_module.Expression.exprLiteral_q |deps#0@@5|)) (and (=> (= (ControlFlow 0 35) (- 0 39)) (_module.Expression.exprLiteral_q |deps#0@@5|)) (=> (_module.Expression.exprLiteral_q |deps#0@@5|) (=> (and (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@5|)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (and (=> (= (ControlFlow 0 35) (- 0 38)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (=> (_module.Expression.exprLiteral_q |exts#0@@4|) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (_module.Expression.exprLiteral_q |exts#0@@4|)) (=> (_module.Expression.exprLiteral_q |exts#0@@4|) (and (=> (= (ControlFlow 0 35) (- 0 36)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|))) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@4|)) (and (=> (= (ControlFlow 0 35) 27) anon12_Then_correct) (=> (= (ControlFlow 0 35) 14) anon12_Else_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and ($Is DatatypeTypeType |cmd#0@@6| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@5| Tclass._module.Expression))) (and (and ($Is DatatypeTypeType |exts#0@@4| Tclass._module.Expression) ($Is DatatypeTypeType |stC#0@@4| Tclass._module.StateC)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 41) 35)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
