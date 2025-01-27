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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M0.Expression () T@U)
(declare-fun Tagclass.M0.Tuple () T@U)
(declare-fun Tagclass.M0.Primitive () T@U)
(declare-fun |##M0.Expression.exprLiteral| () T@U)
(declare-fun Tagclass.M0.Literal () T@U)
(declare-fun |##M0.Expression.exprIdentifier| () T@U)
(declare-fun |##M0.Expression.exprIf| () T@U)
(declare-fun |##M0.Expression.exprAnd| () T@U)
(declare-fun |##M0.Expression.exprOr| () T@U)
(declare-fun |##M0.Expression.exprInvocation| () T@U)
(declare-fun |##M0.Expression.exprError| () T@U)
(declare-fun Tagclass.M0.Reason () T@U)
(declare-fun |##M0.Literal.litTrue| () T@U)
(declare-fun |##M0.Literal.litFalse| () T@U)
(declare-fun |##M0.Literal.litUndefined| () T@U)
(declare-fun |##M0.Literal.litNull| () T@U)
(declare-fun |##M0.Literal.litNumber| () T@U)
(declare-fun |##M0.Literal.litString| () T@U)
(declare-fun |##M0.Literal.litPrimitive| () T@U)
(declare-fun |##M0.Literal.litArrOfPaths| () T@U)
(declare-fun |##M0.Literal.litArrOfStrings| () T@U)
(declare-fun |##M0.Literal.litArray| () T@U)
(declare-fun |##M0.Primitive.primCreatePath| () T@U)
(declare-fun |##M0.Primitive.primExec| () T@U)
(declare-fun |##M0.Reason.rCompatibility| () T@U)
(declare-fun |##M0.Reason.rValidity| () T@U)
(declare-fun |##M0.Reason.rInconsistentCache| () T@U)
(declare-fun |##M0.Tuple.Pair| () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Tuple () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M0.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M0.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun M0.__default.Arity (T@U) Int)
(declare-fun |M0.__default.Arity#canCall| (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M0.Primitive () T@U)
(declare-fun M0.Primitive.primCreatePath_q (T@U) Bool)
(declare-fun |#M0.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun Tclass.M0.Expression () T@U)
(declare-fun |#M0.Expression.exprOr| (T@U T@U) T@U)
(declare-fun M0.__default.ValidArgs (T@U T@U T@U) Bool)
(declare-fun |M0.__default.ValidArgs#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.M0.State () T@U)
(declare-fun M0.Primitive.primExec_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun M0.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M0.Literal.litString_q (T@U) Bool)
(declare-fun M0.Expression.lit (T@U) T@U)
(declare-fun M0.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun M0.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun |M0.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M0.Literal.paths (T@U) T@U)
(declare-fun M0.__default.DomSt (T@U) T@U)
(declare-fun |M0.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.Literal.str (T@U) T@U)
(declare-fun M0.Literal.strs (T@U) T@U)
(declare-fun M0.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |#M0.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M0.__default.PickOne (T@U T@U) T@U)
(declare-fun |M0.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#12| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#M0.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |#M0.Literal.litString| (T@U) T@U)
(declare-fun |#M0.Literal.litArray| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M0.Expression.cond (T@U) T@U)
(declare-fun M0.Expression.ifTrue (T@U) T@U)
(declare-fun M0.Expression.ifFalse (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun M0.Tuple.Pair_q (T@U) Bool)
(declare-fun Tclass.M0.Tuple (T@U T@U) T@U)
(declare-fun M0.__default.Oracle (T@U T@U) T@U)
(declare-fun |M0.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#M0.Literal.litTrue| () T@U)
(declare-fun |#M0.Literal.litFalse| () T@U)
(declare-fun |#M0.Literal.litUndefined| () T@U)
(declare-fun |#M0.Literal.litNull| () T@U)
(declare-fun |#M0.Primitive.primCreatePath| () T@U)
(declare-fun |#M0.Primitive.primExec| () T@U)
(declare-fun |#M0.Reason.rCompatibility| () T@U)
(declare-fun |#M0.Reason.rValidity| () T@U)
(declare-fun |#M0.Reason.rInconsistentCache| () T@U)
(declare-fun M0.__default.Combine (T@U Bool T@U Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M0.__default.Combine#canCall| (T@U Bool) Bool)
(declare-fun |M0.__default.Union#canCall| (T@U T@U Bool) Bool)
(declare-fun reveal_M0._default.Combine () Bool)
(declare-fun M0.__default.Union (T@U T@U Bool) T@U)
(declare-fun M0.__default.ConsistentCache (T@U) Bool)
(declare-fun |M0.__default.ConsistentCache#canCall| (T@U) Bool)
(declare-fun |M0.__default.Hash#canCall| (T@U) Bool)
(declare-fun |M0.__default.DomC#canCall| (T@U) Bool)
(declare-fun M0.__default.DomC (T@U) T@U)
(declare-fun M0.__default.Hash (T@U) T@U)
(declare-fun |#M0.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Tclass.M0.Literal () T@U)
(declare-fun Tclass.M0.Reason () T@U)
(declare-fun M0.__default.UpdateC (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.UpdateC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.evalCore (T@U T@U T@U Bool) T@U)
(declare-fun |M0.__default.evalCore#canCall| (T@U T@U T@U Bool) Bool)
(declare-fun |M0.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.execC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.execC (T@U T@U T@U T@U) T@U)
(declare-fun |#M0.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun M0.Tuple.fst (T@U) T@U)
(declare-fun M0.Tuple.snd (T@U) T@U)
(declare-fun |#M0.Expression.exprError| (T@U) T@U)
(declare-fun M0.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M0.Expression.exprIf_q (T@U) Bool)
(declare-fun M0.Expression.exprAnd_q (T@U) Bool)
(declare-fun M0.Expression.exprOr_q (T@U) Bool)
(declare-fun M0.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M0.Expression.exprError_q (T@U) Bool)
(declare-fun M0.Literal.litTrue_q (T@U) Bool)
(declare-fun M0.Literal.litFalse_q (T@U) Bool)
(declare-fun M0.Literal.litUndefined_q (T@U) Bool)
(declare-fun M0.Literal.litNull_q (T@U) Bool)
(declare-fun M0.Literal.litNumber_q (T@U) Bool)
(declare-fun M0.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M0.Literal.litArray_q (T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |#M0.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M0.Literal.litNumber| (Int) T@U)
(declare-fun |#M0.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun M0.__default.Compatible (T@U) Bool)
(declare-fun |M0.__default.Compatible#canCall| (T@U) Bool)
(declare-fun Tclass.M0.Identifier () T@U)
(declare-fun M0.__default.evalCompatCheckCore (T@U T@U T@U T@U Bool) T@U)
(declare-fun |M0.__default.evalCompatCheckCore#canCall| (T@U T@U T@U T@U Bool) Bool)
(declare-fun $LZ () T@U)
(declare-fun M0.Literal.prim (T@U) T@U)
(declare-fun Tclass.M0.HashValue () T@U)
(declare-fun charType () T@T)
(declare-fun Tclass.M0.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M0.Tuple_1 (T@U) T@U)
(declare-fun M0.Expression.conj0 (T@U) T@U)
(declare-fun M0.Expression.conj1 (T@U) T@U)
(declare-fun M0.Expression.disj0 (T@U) T@U)
(declare-fun M0.Expression.disj1 (T@U) T@U)
(declare-fun M0.Expression.fun (T@U) T@U)
(declare-fun M0.Expression.args (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M0.Expression.id (T@U) T@U)
(declare-fun M0.Expression.r (T@U) T@U)
(declare-fun M0.Literal.num (T@U) Int)
(declare-fun M0.Literal.arr (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq alloc Tagclass.M0.Expression Tagclass.M0.Tuple Tagclass.M0.Primitive |##M0.Expression.exprLiteral| Tagclass.M0.Literal |##M0.Expression.exprIdentifier| |##M0.Expression.exprIf| |##M0.Expression.exprAnd| |##M0.Expression.exprOr| |##M0.Expression.exprInvocation| |##M0.Expression.exprError| Tagclass.M0.Reason |##M0.Literal.litTrue| |##M0.Literal.litFalse| |##M0.Literal.litUndefined| |##M0.Literal.litNull| |##M0.Literal.litNumber| |##M0.Literal.litString| |##M0.Literal.litPrimitive| |##M0.Literal.litArrOfPaths| |##M0.Literal.litArrOfStrings| |##M0.Literal.litArray| |##M0.Primitive.primCreatePath| |##M0.Primitive.primExec| |##M0.Reason.rCompatibility| |##M0.Reason.rValidity| |##M0.Reason.rInconsistentCache| |##M0.Tuple.Pair| tytagFamily$Expression tytagFamily$Tuple tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M0.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M0.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M0.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M0.Path))
 :qid |CloudMakeCachedBuildsdfy.248:22|
 :skolemid |1054|
 :pattern ( (M0.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass.M0.Primitive))) (= (M0.__default.Arity |prim#0|) (ite (M0.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeCachedBuildsdfy.526:24|
 :skolemid |1268|
 :pattern ( (M0.__default.Arity |prim#0|))
))))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0| |a#43#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#43#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#43#1#0| Tclass.M0.Expression)))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1864|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0| |a#43#1#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0| |a#51#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#51#1#0| Tclass.M0.Expression)))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1877|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0| |a#51#1#0|) Tclass.M0.Expression))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) (|args#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| |prim#0@@0| |args#0| |st#0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@0| Tclass.M0.Primitive) ($Is SeqType |args#0| (TSeq Tclass.M0.Expression))) ($IsBox |st#0| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q |prim#0@@0|) (= (|Seq#Length| |args#0|) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q |prim#0@@0|) (= (|Seq#Length| |args#0|) (LitInt 1))))))) (and (=> (not (M0.Primitive.primCreatePath_q |prim#0@@0|)) (let ((|exps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#1|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#1|)) (=> (M0.Expression.exprLiteral_q |deps#1|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#1|)) (=> (M0.Expression.exprLiteral_q |exps#1|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#1|)) (and (|M0.__default.DomSt#canCall| |st#0|) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#1|)) (M0.__default.DomSt |st#0|)) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#1|)) (M0.Literal.paths (M0.Expression.lit |deps#1|)) (M0.Literal.strs (M0.Expression.lit |exps#1|)) |st#0|))))))))))))) (= (M0.__default.ValidArgs |prim#0@@0| |args#0| |st#0|) (ite (M0.Primitive.primCreatePath_q |prim#0@@0|) false (let ((|exps#0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 2)))))
(let ((|deps#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 1)))))
(let ((|cmd#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#0@@0|) (M0.Literal.litString_q (M0.Expression.lit |cmd#0@@0|))) (M0.Expression.exprLiteral_q |deps#0@@0|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#0@@0|))) (M0.Expression.exprLiteral_q |exps#0|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#0|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#0@@0|)) (M0.__default.DomSt |st#0|))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#0@@0|)) (M0.Literal.paths (M0.Expression.lit |deps#0@@0|)) (M0.Literal.strs (M0.Expression.lit |exps#0|)) |st#0|)))))))))
 :qid |CloudMakeCachedBuildsdfy.533:29|
 :skolemid |1272|
 :pattern ( (M0.__default.ValidArgs |prim#0@@0| |args#0| |st#0|))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#64#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#64#1#0| i))) (DtRank (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1898|
 :pattern ( (|Seq#Index| |a#64#1#0| i) (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (M0._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M0._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M0._default.PickOne$T) $Heap)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap)) ($IsAllocBox (M0.__default.PickOne M0._default.PickOne$T |s#0|) M0._default.PickOne$T $Heap))
 :qid |CloudMakeCachedBuildsdfy.73:18|
 :skolemid |788|
 :pattern ( ($IsAllocBox (M0.__default.PickOne M0._default.PickOne$T |s#0|) M0._default.PickOne$T $Heap))
))))
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
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#1|)) (exists ((|e#1| T@U) ) (!  (and (and ($Is SeqType |e#1| |l#0|) (|Set#IsMember| |l#1| ($Box SeqType |e#1|))) (= |$y#1| (M0.__default.Loc |l#2| |l#3| |e#1|)))
 :qid |CloudMakeCachedBuildsdfy.179:35|
 :skolemid |912|
 :pattern ( (M0.__default.Loc |l#5| |l#6| |e#1|))
 :pattern ( (|Set#IsMember| |l#4| ($Box SeqType |e#1|)))
)))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( (MapType0Select BoxType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#1|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression)  (and (and ($Is DatatypeTypeType |a#33#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#33#1#0| Tclass.M0.Expression)) ($Is DatatypeTypeType |a#33#2#0| Tclass.M0.Expression)))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1848|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((|a#98#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#98#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#98#0#0| i@@0))) (DtRank (|#M0.Literal.litString| |a#98#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1951|
 :pattern ( (|Seq#Index| |a#98#0#0| i@@0) (|#M0.Literal.litString| |a#98#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#123#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#123#0#0| i@@1))) (DtRank (|#M0.Literal.litArray| |a#123#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1992|
 :pattern ( (|Seq#Index| |a#123#0#0| i@@1) (|#M0.Literal.litArray| |a#123#0#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprIf| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |##M0.Expression.exprIf|)
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1844|
 :pattern ( (|#M0.Expression.exprIf| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= (M0.Expression.cond (|#M0.Expression.exprIf| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#0#0|)
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1854|
 :pattern ( (|#M0.Expression.exprIf| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (M0.Expression.ifTrue (|#M0.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |a#37#1#0|)
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1856|
 :pattern ( (|#M0.Expression.exprIf| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) ) (! (= (M0.Expression.ifFalse (|#M0.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|)) |a#39#2#0|)
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1858|
 :pattern ( (|#M0.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((M0._default.PickOne$T@@0 T@U) (s T@U) ) (!  (=> (|$let#0$canCall| M0._default.PickOne$T@@0 s) (|Set#IsMember| s (|$let#0_x| M0._default.PickOne$T@@0 s)))
 :qid |CloudMakeCachedBuildsdfy.76:5|
 :skolemid |790|
 :pattern ( (|$let#0_x| M0._default.PickOne$T@@0 s))
)))
(assert (forall ((|a#43#0#0@@0| T@U) (|a#43#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h)  (and ($IsAlloc DatatypeTypeType |a#43#0#0@@0| Tclass.M0.Expression $h) ($IsAlloc DatatypeTypeType |a#43#1#0@@0| Tclass.M0.Expression $h))))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1865|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h))
)))
(assert (forall ((|a#51#0#0@@0| T@U) (|a#51#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@0)  (and ($IsAlloc DatatypeTypeType |a#51#0#0@@0| Tclass.M0.Expression $h@@0) ($IsAlloc DatatypeTypeType |a#51#1#0@@0| Tclass.M0.Expression $h@@0))))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1878|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@0))
)))
(assert ($AlwaysAllocated Tclass.M0.State))
(assert ($AlwaysAllocated Tclass.M0.Path))
(assert (forall ((M0.Tuple$A T@U) (M0.Tuple$B T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)) (M0.Tuple.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( (M0.Tuple.Pair_q d) ($Is DatatypeTypeType d (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M0.__default.Oracle#canCall| |p#0| |st#0@@0|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0@@0| Tclass.M0.State)))) ($IsBox (M0.__default.Oracle |p#0| |st#0@@0|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.186:25|
 :skolemid |984|
 :pattern ( (M0.__default.Oracle |p#0| |st#0@@0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M0.Literal.litTrue|) |##M0.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M0.Literal.litFalse|) |##M0.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M0.Literal.litUndefined|) |##M0.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M0.Literal.litNull|) |##M0.Literal.litNull|))
(assert (= (DatatypeCtorId |#M0.Primitive.primCreatePath|) |##M0.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M0.Primitive.primExec|) |##M0.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M0.Reason.rCompatibility|) |##M0.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#M0.Reason.rValidity|) |##M0.Reason.rValidity|))
(assert (= (DatatypeCtorId |#M0.Reason.rInconsistentCache|) |##M0.Reason.rInconsistentCache|))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) (|sts#0| T@U) (|useCache#0| T@U) ) (!  (=> (or (|M0.__default.Combine#canCall| (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|M0.__default.PickOne#canCall| Tclass.M0.State (Lit SetType |sts#0|)) (let ((|st#1| (Lit BoxType (M0.__default.PickOne Tclass.M0.State (Lit SetType |sts#0|)))))
 (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|)) (U_2_bool (Lit boolType |useCache#0|))) (|M0.__default.Union#canCall| (M0.__default.Combine ($LS $ly) reveal_M0._default.Combine (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1|)) (U_2_bool (Lit boolType |useCache#0|))) |st#1| (U_2_bool (Lit boolType |useCache#0|))))))) (= (M0.__default.Combine ($LS $ly) true (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))) (let ((|st#1@@0| (Lit BoxType (M0.__default.PickOne Tclass.M0.State (Lit SetType |sts#0|)))))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1@@0|)) |st#1@@0| (M0.__default.Union (M0.__default.Combine ($LS $ly) reveal_M0._default.Combine (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| |st#1@@0|)) (U_2_bool (Lit boolType |useCache#0|))) |st#1@@0| (U_2_bool (Lit boolType |useCache#0|))))))))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :weight 3
 :skolemid |783|
 :pattern ( (M0.__default.Combine ($LS $ly) true (Lit SetType |sts#0|) (U_2_bool (Lit boolType |useCache#0|))))
))))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#59#0#0| Tclass.M0.Expression) ($Is SeqType |a#59#1#0| (TSeq Tclass.M0.Expression))))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1890|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| |stC#0|) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0| Tclass.M0.State))) (and (forall ((|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|e#0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@1| (TSet Tclass.M0.Path))) ($Is SeqType |e#0| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#0@@1| |deps#0@@1| |e#0|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0|))) (|M0.__default.DomC#canCall| |stC#0|)) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0|))) (and (|M0.__default.Loc#canCall| |cmd#0@@1| |deps#0@@1| |e#0|) (|M0.__default.DomSt#canCall| |stC#0|)))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |842|
 :pattern ( (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#0|))
)) (= (M0.__default.ConsistentCache |stC#0|) (forall ((|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|e#0@@0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M0.Path))) ($Is SeqType |e#0@@0| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|))) (|Set#IsMember| (M0.__default.DomSt |stC#0|) (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |841|
 :pattern ( (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :skolemid |843|
 :pattern ( (M0.__default.ConsistentCache |stC#0|))
))))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|a#59#0#0@@0| T@U) (|a#59#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#59#0#0@@0| Tclass.M0.Expression $h@@1) ($IsAlloc SeqType |a#59#1#0@@0| (TSeq Tclass.M0.Expression) $h@@1))))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1891|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@1))
)))
(assert (forall ((M0.Tuple$A@@0 T@U) (M0.Tuple$B@@0 T@U) (|a#147#0#0| T@U) (|a#147#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0| |a#147#1#0|) (Tclass.M0.Tuple M0.Tuple$A@@0 M0.Tuple$B@@0))  (and ($IsBox |a#147#0#0| M0.Tuple$A@@0) ($IsBox |a#147#1#0| M0.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |2034|
 :pattern ( ($Is DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0| |a#147#1#0|) (Tclass.M0.Tuple M0.Tuple$A@@0 M0.Tuple$B@@0)))
)))
(assert ($Is DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Primitive.primCreatePath| Tclass.M0.Primitive))
(assert ($Is DatatypeTypeType |#M0.Primitive.primExec| Tclass.M0.Primitive))
(assert ($Is DatatypeTypeType |#M0.Reason.rCompatibility| Tclass.M0.Reason))
(assert ($Is DatatypeTypeType |#M0.Reason.rValidity| Tclass.M0.Reason))
(assert ($Is DatatypeTypeType |#M0.Reason.rInconsistentCache| Tclass.M0.Reason))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@1| Tclass.M0.Primitive))) (= (M0.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@1|)) 1 3)))
 :qid |CloudMakeCachedBuildsdfy.526:24|
 :weight 3
 :skolemid |1269|
 :pattern ( (M0.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)))
))))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1923|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal $h@@2))
)))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1926|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal $h@@3))
)))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1929|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal $h@@4))
)))
(assert (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1932|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal $h@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|exps#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M0.__default.UpdateC#canCall| |cmd#0@@3| |deps#0@@3| |exps#0@@0| |st#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($IsBox |st#0@@1| Tclass.M0.State)))) (and (let ((|st'#0| (M0.__default.UpdateC |cmd#0@@3| |deps#0@@3| |exps#0@@0| |st#0@@1|)))
 (and (and (and (|Set#Equal| (M0.__default.DomSt |st#0@@1|) (M0.__default.DomSt |st'#0|)) (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@0|) (= (M0.__default.GetSt |p#0@@0| |st#0@@1|) (M0.__default.GetSt |p#0@@0| |st'#0|))))
 :qid |CloudMakeCachedBuildsdfy.25:42|
 :skolemid |711|
 :pattern ( (M0.__default.GetSt |p#0@@0| |st'#0|))
 :pattern ( (M0.__default.GetSt |p#0@@0| |st#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@1|) |p#0@@0|))
))) (=> (M0.__default.ConsistentCache |st#0@@1|) (M0.__default.ConsistentCache |st'#0|))) (forall ((|e#0@@1| T@U) ) (!  (=> ($Is SeqType |e#0@@1| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0@@1|)) (|Set#IsMember| (M0.__default.DomC |st'#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0@@1|)))))
 :qid |CloudMakeCachedBuildsdfy.30:14|
 :skolemid |712|
 :pattern ( (M0.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#0@@1|)))
)))) ($IsBox (M0.__default.UpdateC |cmd#0@@3| |deps#0@@3| |exps#0@@0| |st#0@@1|) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.22:26|
 :skolemid |713|
 :pattern ( (M0.__default.UpdateC |cmd#0@@3| |deps#0@@3| |exps#0@@0| |st#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0@@1| |st#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M0.Path) ($IsBox |st#0@@2| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@1|)))) ($IsBox (M0.__default.GetSt |p#0@@1| |st#0@@2|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@2| T@U) (|st#0@@3| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@2| |st#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@2| Tclass.M0.Path) ($IsAllocBox |p#0@@2| Tclass.M0.Path $Heap@@0)) (and ($IsBox |st#0@@3| Tclass.M0.State) ($IsAllocBox |st#0@@3| Tclass.M0.State $Heap@@0))) (|Set#IsMember| (M0.__default.DomSt |st#0@@3|) |p#0@@2|)))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M0.__default.GetSt |p#0@@2| |st#0@@3|) Tclass.M0.Artifact $Heap@@0))
 :qid |CloudMakeCachedBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@2| |st#0@@3|) Tclass.M0.Artifact $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@0| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M0.Primitive) ($Is SeqType |args#0@@0| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@4| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@0|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@0|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#5|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#5|)) (=> (M0.Expression.exprLiteral_q |deps#5|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#5|)) (=> (M0.Expression.exprLiteral_q |exps#5|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#5|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@4|)) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.__default.DomSt (Lit BoxType |st#0@@4|))) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#5|)) (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.Literal.strs (M0.Expression.lit |exps#5|)) (Lit BoxType |st#0@@4|)))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@4|)) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#4|) (M0.Literal.litString_q (M0.Expression.lit |cmd#4|))) (M0.Expression.exprLiteral_q |deps#4|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#4|))) (M0.Expression.exprLiteral_q |exps#4|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#4|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.__default.DomSt (Lit BoxType |st#0@@4|)))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#4|)) (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.Literal.strs (M0.Expression.lit |exps#4|)) (Lit BoxType |st#0@@4|))))))))))
 :qid |CloudMakeCachedBuildsdfy.533:29|
 :weight 3
 :skolemid |1274|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@4|)))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0| T@U) (|stCombined#0| T@U) (|args#0@@1| T@U) (|useCache#0@@0| Bool) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0@@0|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0| Tclass.M0.State) ($IsBox |stCombined#0| Tclass.M0.State)) ($Is SeqType |args#0@@1| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|))) (=> (and (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|)) (let ((|exps#0@@1| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))))
(let ((|deps#0@@4| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))))
(let ((|cmd#0@@4| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))))
 (and (=> (not |useCache#0@@0|) (and (|M0.__default.exec#canCall| |cmd#0@@4| |deps#0@@4| |exps#0@@1| |stCombined#0|) (let ((|ps#0| (M0.__default.exec |cmd#0@@4| |deps#0@@4| |exps#0@@1| |stCombined#0|)))
 (and (M0.Tuple.Pair_q |ps#0|) (M0.Tuple.Pair_q |ps#0|))))) (=> |useCache#0@@0| (and (|M0.__default.ConsistentCache#canCall| |stCombined#0|) (=> (M0.__default.ConsistentCache |stCombined#0|) (and (|M0.__default.execC#canCall| |cmd#0@@4| |deps#0@@4| |exps#0@@1| |stCombined#0|) (let ((|ps#1| (M0.__default.execC |cmd#0@@4| |deps#0@@4| |exps#0@@1| |stCombined#0|)))
 (and (M0.Tuple.Pair_q |ps#1|) (M0.Tuple.Pair_q |ps#1|))))))))))))) (= (M0.__default.evalCore |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0@@0|) (ite  (and (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|)) (let ((|exps#0@@2| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))))
(let ((|deps#0@@5| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))))
(let ((|cmd#0@@5| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))))
(ite  (not |useCache#0@@0|) (let ((|ps#0@@0| (M0.__default.exec |cmd#0@@5| |deps#0@@5| |exps#0@@2| |stCombined#0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#0@@0|))))) (M0.Tuple.snd |ps#0@@0|))) (ite (M0.__default.ConsistentCache |stCombined#0|) (let ((|ps#1@@0| (M0.__default.execC |cmd#0@@5| |deps#0@@5| |exps#0@@2| |stCombined#0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#1@@0|))))) (M0.Tuple.snd |ps#1@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stOrig#0|)))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :skolemid |1240|
 :pattern ( (M0.__default.evalCore |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0@@0|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|st'#0@@0| T@U) (|useCache#0@@1| Bool) ) (!  (=> (or (|M0.__default.Union#canCall| |st#0@@5| |st'#0@@0| |useCache#0@@1|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@5| Tclass.M0.State) ($IsBox |st'#0@@0| Tclass.M0.State)))) (and (let ((|result#0| (M0.__default.Union |st#0@@5| |st'#0@@0| |useCache#0@@1|)))
 (and (and (|Set#Equal| (M0.__default.DomSt |result#0|) (|Set#Union| (M0.__default.DomSt |st#0@@5|) (M0.__default.DomSt |st'#0@@0|))) (forall ((|p#0@@3| T@U) ) (!  (=> ($IsBox |p#0@@3| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@3|) (= (M0.__default.GetSt |p#0@@3| |result#0|) (M0.__default.GetSt |p#0@@3| (ite (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@3|) |st'#0@@0| |st#0@@5|)))))
 :qid |CloudMakeCachedBuildsdfy.47:15|
 :skolemid |738|
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@0|) |p#0@@3|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |result#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@3|))
))) (=> |useCache#0@@1| (|Set#Equal| (M0.__default.DomC |result#0|) (|Set#Union| (M0.__default.DomC |st#0@@5|) (M0.__default.DomC |st'#0@@0|)))))) ($IsBox (M0.__default.Union |st#0@@5| |st'#0@@0| |useCache#0@@1|) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.43:24|
 :skolemid |739|
 :pattern ( (M0.__default.Union |st#0@@5| |st'#0@@0| |useCache#0@@1|))
))))
(assert (forall ((M0.Tuple$A@@1 T@U) (M0.Tuple$B@@1 T@U) (|a#147#0#0@@0| T@U) (|a#147#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0@@0| |a#147#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@6)  (and ($IsAllocBox |a#147#0#0@@0| M0.Tuple$A@@1 $h@@6) ($IsAllocBox |a#147#1#0@@0| M0.Tuple$B@@1 $h@@6))))
 :qid |unknown.0:0|
 :skolemid |2035|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0@@0| |a#147#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M0.Expression.exprLiteral_q d@@0) (= (DatatypeCtorId d@@0) |##M0.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1825|
 :pattern ( (M0.Expression.exprLiteral_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (M0.Expression.exprIdentifier_q d@@1) (= (DatatypeCtorId d@@1) |##M0.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (M0.Expression.exprIdentifier_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M0.Expression.exprIf_q d@@2) (= (DatatypeCtorId d@@2) |##M0.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( (M0.Expression.exprIf_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M0.Expression.exprAnd_q d@@3) (= (DatatypeCtorId d@@3) |##M0.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( (M0.Expression.exprAnd_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M0.Expression.exprOr_q d@@4) (= (DatatypeCtorId d@@4) |##M0.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( (M0.Expression.exprOr_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M0.Expression.exprInvocation_q d@@5) (= (DatatypeCtorId d@@5) |##M0.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( (M0.Expression.exprInvocation_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (M0.Expression.exprError_q d@@6) (= (DatatypeCtorId d@@6) |##M0.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( (M0.Expression.exprError_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (M0.Literal.litTrue_q d@@7) (= (DatatypeCtorId d@@7) |##M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1921|
 :pattern ( (M0.Literal.litTrue_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M0.Literal.litFalse_q d@@8) (= (DatatypeCtorId d@@8) |##M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1924|
 :pattern ( (M0.Literal.litFalse_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M0.Literal.litUndefined_q d@@9) (= (DatatypeCtorId d@@9) |##M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1927|
 :pattern ( (M0.Literal.litUndefined_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M0.Literal.litNull_q d@@10) (= (DatatypeCtorId d@@10) |##M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1930|
 :pattern ( (M0.Literal.litNull_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M0.Literal.litNumber_q d@@11) (= (DatatypeCtorId d@@11) |##M0.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |1934|
 :pattern ( (M0.Literal.litNumber_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M0.Literal.litString_q d@@12) (= (DatatypeCtorId d@@12) |##M0.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |1943|
 :pattern ( (M0.Literal.litString_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M0.Literal.litPrimitive_q d@@13) (= (DatatypeCtorId d@@13) |##M0.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |1954|
 :pattern ( (M0.Literal.litPrimitive_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M0.Literal.litArrOfPaths_q d@@14) (= (DatatypeCtorId d@@14) |##M0.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |1964|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M0.Literal.litArrOfStrings_q d@@15) (= (DatatypeCtorId d@@15) |##M0.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M0.Literal.litArray_q d@@16) (= (DatatypeCtorId d@@16) |##M0.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |1984|
 :pattern ( (M0.Literal.litArray_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M0.Primitive.primCreatePath_q d@@17) (= (DatatypeCtorId d@@17) |##M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2007|
 :pattern ( (M0.Primitive.primCreatePath_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M0.Primitive.primExec_q d@@18) (= (DatatypeCtorId d@@18) |##M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2009|
 :pattern ( (M0.Primitive.primExec_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M0.Tuple.Pair_q d@@19) (= (DatatypeCtorId d@@19) |##M0.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( (M0.Tuple.Pair_q d@@19))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((|a#33#0#0@@0| T@U) (|a#33#1#0@@0| T@U) (|a#33#2#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@7)  (and (and ($IsAlloc DatatypeTypeType |a#33#0#0@@0| Tclass.M0.Expression $h@@7) ($IsAlloc DatatypeTypeType |a#33#1#0@@0| Tclass.M0.Expression $h@@7)) ($IsAlloc DatatypeTypeType |a#33#2#0@@0| Tclass.M0.Expression $h@@7))))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1849|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@7))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (M0.Expression.exprIf_q d@@20) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@20 (|#M0.Expression.exprIf| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1846|
)))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( (M0.Expression.exprIf_q d@@20))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (M0.Expression.exprAnd_q d@@21) (exists ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= d@@21 (|#M0.Expression.exprAnd| |a#42#0#0| |a#42#1#0|))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1862|
)))
 :qid |unknown.0:0|
 :skolemid |1863|
 :pattern ( (M0.Expression.exprAnd_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (M0.Expression.exprOr_q d@@22) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@22 (|#M0.Expression.exprOr| |a#50#0#0| |a#50#1#0|))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1875|
)))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( (M0.Expression.exprOr_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (M0.Expression.exprInvocation_q d@@23) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@23 (|#M0.Expression.exprInvocation| |a#58#0#0| |a#58#1#0|))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1888|
)))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (M0.Expression.exprInvocation_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (M0.Tuple.Pair_q d@@24) (exists ((|a#146#0#0| T@U) (|a#146#1#0| T@U) ) (! (= d@@24 (|#M0.Tuple.Pair| |a#146#0#0| |a#146#1#0|))
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2032|
)))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( (M0.Tuple.Pair_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (M0.Literal.litTrue_q d@@25) (= d@@25 |#M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1922|
 :pattern ( (M0.Literal.litTrue_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (M0.Literal.litFalse_q d@@26) (= d@@26 |#M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1925|
 :pattern ( (M0.Literal.litFalse_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (M0.Literal.litUndefined_q d@@27) (= d@@27 |#M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( (M0.Literal.litUndefined_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (M0.Literal.litNull_q d@@28) (= d@@28 |#M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1931|
 :pattern ( (M0.Literal.litNull_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (M0.Primitive.primCreatePath_q d@@29) (= d@@29 |#M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2008|
 :pattern ( (M0.Primitive.primCreatePath_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (M0.Primitive.primExec_q d@@30) (= d@@30 |#M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2010|
 :pattern ( (M0.Primitive.primExec_q d@@30))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (M0.Expression.exprLiteral_q d@@31) (exists ((|a#21#0#0| T@U) ) (! (= d@@31 (|#M0.Expression.exprLiteral| |a#21#0#0|))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1826|
)))
 :qid |unknown.0:0|
 :skolemid |1827|
 :pattern ( (M0.Expression.exprLiteral_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (M0.Expression.exprIdentifier_q d@@32) (exists ((|a#27#0#0| T@U) ) (! (= d@@32 (|#M0.Expression.exprIdentifier| |a#27#0#0|))
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1837|
)))
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( (M0.Expression.exprIdentifier_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (M0.Expression.exprError_q d@@33) (exists ((|a#67#0#0| T@U) ) (! (= d@@33 (|#M0.Expression.exprError| |a#67#0#0|))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1902|
)))
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( (M0.Expression.exprError_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (M0.Literal.litNumber_q d@@34) (exists ((|a#89#0#0| Int) ) (! (= d@@34 (|#M0.Literal.litNumber| |a#89#0#0|))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1935|
)))
 :qid |unknown.0:0|
 :skolemid |1936|
 :pattern ( (M0.Literal.litNumber_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (M0.Literal.litString_q d@@35) (exists ((|a#94#0#0| T@U) ) (! (= d@@35 (|#M0.Literal.litString| |a#94#0#0|))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1944|
)))
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( (M0.Literal.litString_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (M0.Literal.litPrimitive_q d@@36) (exists ((|a#101#0#0| T@U) ) (! (= d@@36 (|#M0.Literal.litPrimitive| |a#101#0#0|))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1955|
)))
 :qid |unknown.0:0|
 :skolemid |1956|
 :pattern ( (M0.Literal.litPrimitive_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (M0.Literal.litArrOfPaths_q d@@37) (exists ((|a#107#0#0| T@U) ) (! (= d@@37 (|#M0.Literal.litArrOfPaths| |a#107#0#0|))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1965|
)))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (M0.Literal.litArrOfStrings_q d@@38) (exists ((|a#113#0#0| T@U) ) (! (= d@@38 (|#M0.Literal.litArrOfStrings| |a#113#0#0|))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1975|
)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (M0.Literal.litArray_q d@@39) (exists ((|a#119#0#0| T@U) ) (! (= d@@39 (|#M0.Literal.litArray| |a#119#0#0|))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1985|
)))
 :qid |unknown.0:0|
 :skolemid |1986|
 :pattern ( (M0.Literal.litArray_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> ($Is DatatypeTypeType d@@40 Tclass.M0.Expression) (or (or (or (or (or (or (M0.Expression.exprLiteral_q d@@40) (M0.Expression.exprIdentifier_q d@@40)) (M0.Expression.exprIf_q d@@40)) (M0.Expression.exprAnd_q d@@40)) (M0.Expression.exprOr_q d@@40)) (M0.Expression.exprInvocation_q d@@40)) (M0.Expression.exprError_q d@@40)))
 :qid |unknown.0:0|
 :skolemid |1912|
 :pattern ( (M0.Expression.exprError_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprInvocation_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprOr_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprAnd_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIf_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIdentifier_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprLiteral_q d@@40) ($Is DatatypeTypeType d@@40 Tclass.M0.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@6| T@U) (|deps#0@@6| T@U) (|exps#0@@3| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) (Lit SetType |exps#0@@3|) (Lit BoxType |st#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($Is SetType |deps#0@@6| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($IsBox |st#0@@6| Tclass.M0.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|) (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@6|))) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@6|)) (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|) (Lit BoxType |st#0@@6|))) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2|) (Lit BoxType |st#0@@6|))))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |924|
 :pattern ( (M0.__default.Loc |cmd#0@@6| |deps#0@@6| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#2|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) (Lit SetType |exps#0@@3|) (Lit BoxType |st#0@@6|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#2@@0|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@6|)) (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2@@0|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2@@0|) (Lit BoxType |st#0@@6|)) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) |e#2@@0|) (Lit BoxType |st#0@@6|))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |923|
 :pattern ( (M0.__default.Loc |cmd#0@@6| |deps#0@@6| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :weight 3
 :skolemid |925|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@6|) (Lit SetType |deps#0@@6|) (Lit SetType |exps#0@@3|) (Lit BoxType |st#0@@6|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@7| T@U) (|deps#0@@7| T@U) (|exps#0@@4| T@U) (|stC#0@@0| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@7| (TSeq TChar)) ($Is SetType |deps#0@@7| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($IsBox |stC#0@@0| Tclass.M0.State)))) (and (and (and (forall ((|e#0@@2| T@U) ) (!  (=> ($Is SeqType |e#0@@2| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@2|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@7| |deps#0@@7| |e#0@@2|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@2|))) (|M0.__default.DomC#canCall| |stC#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1025|
 :pattern ( (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@2|)))
)) (=> (forall ((|e#0@@3| T@U) ) (!  (=> (and ($Is SeqType |e#0@@3| (TSeq TChar)) (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@3|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@3|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1026|
 :pattern ( (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@3|)))
)) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#1@@0|)) (|M0.__default.Loc#canCall| |cmd#0@@7| |deps#0@@7| |e#1@@0|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1027|
 :pattern ( (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#1@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#1@@0|)))
)))) (=> (not (forall ((|e#0@@4| T@U) ) (!  (=> (and ($Is SeqType |e#0@@4| (TSeq TChar)) (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@4|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@4|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1026|
 :pattern ( (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@4|)))
))) (and (|M0.__default.exec#canCall| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|) (let ((|result#0@@0| (M0.__default.exec |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|)))
 (and (and (M0.Tuple.Pair_q |result#0@@0|) (M0.Tuple.Pair_q |result#0@@0|)) (let ((|st'#0@@1| (M0.Tuple.snd |result#0@@0|)))
(|M0.__default.UpdateC#canCall| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |st'#0@@1|))))))) (= (M0.__default.execC |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|) (ite (forall ((|e#0@@5| T@U) ) (!  (=> (and ($Is SeqType |e#0@@5| (TSeq TChar)) (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@5|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@5|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1023|
 :pattern ( (M0.__default.Loc |cmd#0@@7| |deps#0@@7| |e#0@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@5|)))
)) (let ((|paths#0| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |exps#0@@4| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |cmd#0@@7| |deps#0@@7|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#0|) |stC#0@@0|)) (let ((|result#0@@1| (M0.__default.exec |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|)))
(let ((|st'#0@@2| (M0.Tuple.snd |result#0@@1|)))
(let ((|expr'#0| ($Unbox SetType (M0.Tuple.fst |result#0@@1|))))
(let ((|stC'#0| (M0.__default.UpdateC |cmd#0@@7| |deps#0@@7| |exps#0@@4| |st'#0@@2|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#0|) |stC'#0|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :skolemid |1029|
 :pattern ( (M0.__default.execC |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stC#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0@@0| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| |sts#0@@0|) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0@@0| (TSet Tclass.M0.State)))) (and (forall ((|st#0@@7| T@U) (|st'#0@@3| T@U) ) (!  (=> (and ($IsBox |st#0@@7| Tclass.M0.State) ($IsBox |st'#0@@3| Tclass.M0.State)) (=> (|Set#IsMember| |sts#0@@0| |st#0@@7|) (=> (|Set#IsMember| |sts#0@@0| |st'#0@@3|) (forall ((|p#0@@4| T@U) ) (!  (=> ($IsBox |p#0@@4| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@7|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#0@@4|) (and (|M0.__default.DomSt#canCall| |st'#0@@3|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@3|) |p#0@@4|) (and (|M0.__default.GetSt#canCall| |p#0@@4| |st#0@@7|) (|M0.__default.GetSt#canCall| |p#0@@4| |st'#0@@3|)))))))
 :qid |CloudMakeCachedBuildsdfy.55:14|
 :skolemid |748|
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@3|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st#0@@7|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@3|) |p#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#0@@4|))
)))))
 :qid |CloudMakeCachedBuildsdfy.54:12|
 :skolemid |749|
 :pattern ( (M0.__default.DomSt |st'#0@@3|) (M0.__default.DomSt |st#0@@7|))
 :pattern ( (M0.__default.DomSt |st'#0@@3|) (|Set#IsMember| |sts#0@@0| |st#0@@7|))
 :pattern ( (M0.__default.DomSt |st#0@@7|) (|Set#IsMember| |sts#0@@0| |st'#0@@3|))
 :pattern ( (|Set#IsMember| |sts#0@@0| |st'#0@@3|) (|Set#IsMember| |sts#0@@0| |st#0@@7|))
)) (= (M0.__default.Compatible |sts#0@@0|) (forall ((|st#0@@8| T@U) (|st'#0@@4| T@U) ) (!  (=> (and ($IsBox |st#0@@8| Tclass.M0.State) ($IsBox |st'#0@@4| Tclass.M0.State)) (=> (and (|Set#IsMember| |sts#0@@0| |st#0@@8|) (|Set#IsMember| |sts#0@@0| |st'#0@@4|)) (forall ((|p#0@@5| T@U) ) (!  (=> ($IsBox |p#0@@5| Tclass.M0.Path) (=> (and (|Set#IsMember| (M0.__default.DomSt |st#0@@8|) |p#0@@5|) (|Set#IsMember| (M0.__default.DomSt |st'#0@@4|) |p#0@@5|)) (= (M0.__default.GetSt |p#0@@5| |st#0@@8|) (M0.__default.GetSt |p#0@@5| |st'#0@@4|))))
 :qid |CloudMakeCachedBuildsdfy.55:14|
 :skolemid |746|
 :pattern ( (M0.__default.GetSt |p#0@@5| |st'#0@@4|))
 :pattern ( (M0.__default.GetSt |p#0@@5| |st#0@@8|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@4|) |p#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@8|) |p#0@@5|))
))))
 :qid |CloudMakeCachedBuildsdfy.54:12|
 :skolemid |747|
 :pattern ( (M0.__default.DomSt |st'#0@@4|) (M0.__default.DomSt |st#0@@8|))
 :pattern ( (M0.__default.DomSt |st'#0@@4|) (|Set#IsMember| |sts#0@@0| |st#0@@8|))
 :pattern ( (M0.__default.DomSt |st#0@@8|) (|Set#IsMember| |sts#0@@0| |st'#0@@4|))
 :pattern ( (|Set#IsMember| |sts#0@@0| |st'#0@@4|) (|Set#IsMember| |sts#0@@0| |st#0@@8|))
)))))
 :qid |CloudMakeCachedBuildsdfy.52:30|
 :skolemid |750|
 :pattern ( (M0.__default.Compatible |sts#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@8| T@U) (|deps#0@@8| T@U) (|exps#0@@5| T@U) (|stC#0@@1| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@8| (TSeq TChar)) ($Is SetType |deps#0@@8| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@5| (TSet (TSeq TChar)))) ($IsBox |stC#0@@1| Tclass.M0.State)))) (and (and (and (forall ((|e#2@@1| T@U) ) (!  (=> ($Is SeqType |e#2@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@5|) ($Box SeqType |e#2@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#2@@1|) (|M0.__default.Hash#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#2@@1|))) (|M0.__default.DomC#canCall| |stC#0@@1|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1032|
 :pattern ( (M0.__default.Loc |cmd#0@@8| |deps#0@@8| |e#2@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#2@@1|)))
)) (=> (forall ((|e#2@@2| T@U) ) (!  (=> (and ($Is SeqType |e#2@@2| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@5|) ($Box SeqType |e#2@@2|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#2@@2|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1033|
 :pattern ( (M0.__default.Loc |cmd#0@@8| |deps#0@@8| |e#2@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#2@@2|)))
)) (forall ((|e#3| T@U) ) (!  (=> ($Is SeqType |e#3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@5|) ($Box SeqType |e#3|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#3|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1034|
 :pattern ( (M0.__default.Loc |cmd#0@@8| |deps#0@@8| |e#3|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#3|)))
)))) (=> (not (forall ((|e#2@@3| T@U) ) (!  (=> (and ($Is SeqType |e#2@@3| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@5|) ($Box SeqType |e#2@@3|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#2@@3|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1033|
 :pattern ( (M0.__default.Loc |cmd#0@@8| |deps#0@@8| |e#2@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#2@@3|)))
))) (and (|M0.__default.exec#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|) (let ((|result#1| (M0.__default.exec (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|)))
 (and (and (M0.Tuple.Pair_q |result#1|) (M0.Tuple.Pair_q |result#1|)) (let ((|st'#1| (M0.Tuple.snd |result#1|)))
(|M0.__default.UpdateC#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |st'#1|))))))) (= (M0.__default.execC (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|) (ite (forall ((|e#2@@4| T@U) ) (!  (=> (and ($Is SeqType |e#2@@4| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@5|) ($Box SeqType |e#2@@4|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |e#2@@4|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1030|
 :pattern ( (M0.__default.Loc |cmd#0@@8| |deps#0@@8| |e#2@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@5| ($Box SeqType |e#2@@4|)))
)) (let ((|paths#1| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@5|) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) |exps#0@@5| |cmd#0@@8| |deps#0@@8|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#1|) |stC#0@@1|)) (let ((|result#1@@0| (M0.__default.exec (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|)))
(let ((|st'#1@@0| (M0.Tuple.snd |result#1@@0|)))
(let ((|expr'#1| ($Unbox SetType (M0.Tuple.fst |result#1@@0|))))
(let ((|stC'#1| (M0.__default.UpdateC (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |st'#1@@0|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#1|) |stC'#1|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :weight 3
 :skolemid |1036|
 :pattern ( (M0.__default.execC (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@5|) |stC#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@9| T@U) (|exps#0@@6| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M0.__default.exec#canCall| |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@9|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@9| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($IsBox |st#0@@9| Tclass.M0.State)))) ($Is DatatypeTypeType (M0.__default.exec |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@9|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.140:23|
 :skolemid |903|
 :pattern ( (M0.__default.exec |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@9|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@10| T@U) (|deps#0@@10| T@U) (|exps#0@@7| T@U) (|stC#0@@2| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| |cmd#0@@10| |deps#0@@10| |exps#0@@7| |stC#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is SetType |deps#0@@10| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@7| (TSet (TSeq TChar)))) ($IsBox |stC#0@@2| Tclass.M0.State)))) ($Is DatatypeTypeType (M0.__default.execC |cmd#0@@10| |deps#0@@10| |exps#0@@7| |stC#0@@2|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :skolemid |1021|
 :pattern ( (M0.__default.execC |cmd#0@@10| |deps#0@@10| |exps#0@@7| |stC#0@@2|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> ($Is DatatypeTypeType d@@41 Tclass.M0.Literal) (or (or (or (or (or (or (or (or (or (M0.Literal.litTrue_q d@@41) (M0.Literal.litFalse_q d@@41)) (M0.Literal.litUndefined_q d@@41)) (M0.Literal.litNull_q d@@41)) (M0.Literal.litNumber_q d@@41)) (M0.Literal.litString_q d@@41)) (M0.Literal.litPrimitive_q d@@41)) (M0.Literal.litArrOfPaths_q d@@41)) (M0.Literal.litArrOfStrings_q d@@41)) (M0.Literal.litArray_q d@@41)))
 :qid |unknown.0:0|
 :skolemid |1995|
 :pattern ( (M0.Literal.litArray_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfStrings_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfPaths_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litPrimitive_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litString_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNumber_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNull_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litUndefined_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litFalse_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litTrue_q d@@41) ($Is DatatypeTypeType d@@41 Tclass.M0.Literal))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@11| T@U) (|exps#0@@8| T@U) (|stC#0@@3| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@11| (TSeq TChar)) ($Is SetType |deps#0@@11| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@8| (TSet (TSeq TChar)))) ($IsBox |stC#0@@3| Tclass.M0.State)))) (and (and (and (forall ((|e#4| T@U) ) (!  (=> ($Is SeqType |e#4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#4|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#4|) (|M0.__default.Hash#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#4|))) (|M0.__default.DomC#canCall| (Lit BoxType |stC#0@@3|)))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1039|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#4|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is SeqType |e#4@@0| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#4@@0|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@3|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#4@@0|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1040|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#4@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#4@@0|)))
)) (forall ((|e#5| T@U) ) (!  (=> ($Is SeqType |e#5| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#5|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#5|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1041|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#5|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#5|)))
)))) (=> (not (forall ((|e#4@@1| T@U) ) (!  (=> (and ($Is SeqType |e#4@@1| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#4@@1|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@3|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#4@@1|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1040|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#4@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#4@@1|)))
))) (and (|M0.__default.exec#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|)) (let ((|result#2| (M0.__default.exec (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|))))
 (and (and (M0.Tuple.Pair_q |result#2|) (M0.Tuple.Pair_q |result#2|)) (let ((|st'#2| (M0.Tuple.snd |result#2|)))
(|M0.__default.UpdateC#canCall| (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) |st'#2|))))))) (= (M0.__default.execC (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|)) (ite (forall ((|e#4@@2| T@U) ) (!  (=> (and ($Is SeqType |e#4@@2| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#4@@2|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@3|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |e#4@@2|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1037|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#4@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#4@@2|)))
)) (let ((|paths#2| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@8|) (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) |exps#0@@8| |cmd#0@@11| |deps#0@@11|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#2|) (Lit BoxType |stC#0@@3|))) (let ((|result#2@@0| (M0.__default.exec (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|))))
(let ((|st'#2@@0| (M0.Tuple.snd |result#2@@0|)))
(let ((|expr'#2| ($Unbox SetType (M0.Tuple.fst |result#2@@0|))))
(let ((|stC'#2| (M0.__default.UpdateC (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) |st'#2@@0|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#2|) |stC'#2|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :weight 3
 :skolemid |1043|
 :pattern ( (M0.__default.execC (Lit SeqType |cmd#0@@11|) (Lit SetType |deps#0@@11|) (Lit SetType |exps#0@@8|) (Lit BoxType |stC#0@@3|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|sts#0@@1| T@U) (|useCache#0@@2| Bool) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@1| |useCache#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0@@1| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0@@1| |Set#Empty|))))) (and (and (|M0.__default.PickOne#canCall| Tclass.M0.State |sts#0@@1|) (let ((|st#0@@10| (M0.__default.PickOne Tclass.M0.State |sts#0@@1|)))
 (=> (not (|Set#Equal| |sts#0@@1| (|Set#UnionOne| |Set#Empty| |st#0@@10|))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| |st#0@@10|)) |useCache#0@@2|) (|M0.__default.Union#canCall| (M0.__default.Combine $ly@@0 reveal_M0._default.Combine (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| |st#0@@10|)) |useCache#0@@2|) |st#0@@10| |useCache#0@@2|))))) (= (M0.__default.Combine ($LS $ly@@0) true |sts#0@@1| |useCache#0@@2|) (let ((|st#0@@11| (M0.__default.PickOne Tclass.M0.State |sts#0@@1|)))
(ite (|Set#Equal| |sts#0@@1| (|Set#UnionOne| |Set#Empty| |st#0@@11|)) |st#0@@11| (M0.__default.Union (M0.__default.Combine $ly@@0 reveal_M0._default.Combine (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| |st#0@@11|)) |useCache#0@@2|) |st#0@@11| |useCache#0@@2|))))))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |782|
 :pattern ( (M0.__default.Combine ($LS $ly@@0) true |sts#0@@1| |useCache#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@12| T@U) (|exps#0@@9| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |st#0@@12|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@12| (TSeq TChar)) ($Is SetType |deps#0@@12| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@9| (TSet (TSeq TChar)))) ($IsBox |st#0@@12| Tclass.M0.State)))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is SeqType |e#1@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|) (|M0.__default.DomSt#canCall| |st#0@@12|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@12|) (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|) |st#0@@12|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@1|) |st#0@@12|)))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |921|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#1@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#1@@1|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |st#0@@12|) (forall ((|e#1@@2| T@U) ) (!  (=> ($Is SeqType |e#1@@2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#1@@2|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@12|) (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@2|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@2|) |st#0@@12|) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#1@@2|) |st#0@@12|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |920|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#1@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#1@@2|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :weight 3
 :skolemid |922|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |st#0@@12|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M0.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M0.Expression)))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( ($IsBox bx@@1 Tclass.M0.Expression))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M0.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M0.Primitive)))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( ($IsBox bx@@2 Tclass.M0.Primitive))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M0.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M0.Literal)))
 :qid |unknown.0:0|
 :skolemid |1828|
 :pattern ( ($IsBox bx@@3 Tclass.M0.Literal))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M0.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M0.Reason)))
 :qid |unknown.0:0|
 :skolemid |1904|
 :pattern ( ($IsBox bx@@4 Tclass.M0.Reason))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0|) Tclass.M0.Expression) ($Is DatatypeTypeType |a#22#0#0| Tclass.M0.Literal))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1829|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0|) Tclass.M0.Expression) ($IsBox |a#28#0#0| Tclass.M0.Identifier))
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1839|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#68#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0|) Tclass.M0.Expression) ($Is DatatypeTypeType |a#68#0#0| Tclass.M0.Reason))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1905|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0|) Tclass.M0.Expression))
)))
(assert (forall ((|a#102#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0|) Tclass.M0.Literal) ($Is DatatypeTypeType |a#102#0#0| Tclass.M0.Primitive))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1957|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0|) Tclass.M0.Literal))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|stOrig#0@@0| T@U) (|sts#0@@2| T@U) (|fun#0| T@U) (|args#0@@2| T@U) (|useCache#0@@3| Bool) ) (!  (=> (or (|M0.__default.evalCompatCheckCore#canCall| |stOrig#0@@0| |sts#0@@2| |fun#0| |args#0@@2| |useCache#0@@3|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsBox |stOrig#0@@0| Tclass.M0.State) ($Is SetType |sts#0@@2| (TSet Tclass.M0.State))) ($Is DatatypeTypeType |fun#0| Tclass.M0.Expression)) ($Is SeqType |args#0@@2| (TSeq Tclass.M0.Expression))) (not (|Set#Equal| |sts#0@@2| |Set#Empty|))))) (and (and (|M0.__default.Compatible#canCall| |sts#0@@2|) (=> (M0.__default.Compatible |sts#0@@2|) (and (|M0.__default.Combine#canCall| |sts#0@@2| |useCache#0@@3|) (let ((|stCombined#0@@0| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine |sts#0@@2| |useCache#0@@3|)))
 (=> (and (M0.Expression.exprLiteral_q |fun#0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun#0|))) (=> (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun#0|))) (|M0.__default.evalCore#canCall| |stOrig#0@@0| |stCombined#0@@0| |args#0@@2| |useCache#0@@3|))))))) (= (M0.__default.evalCompatCheckCore |stOrig#0@@0| |sts#0@@2| |fun#0| |args#0@@2| |useCache#0@@3|) (ite  (not (M0.__default.Compatible |sts#0@@2|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) |stOrig#0@@0|) (let ((|stCombined#0@@1| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine |sts#0@@2| |useCache#0@@3|)))
(ite  (and (M0.Expression.exprLiteral_q |fun#0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun#0|))) (ite (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun#0|))) (M0.__default.evalCore |stOrig#0@@0| |stCombined#0@@1| |args#0@@2| |useCache#0@@3|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@0|)))))))
 :qid |CloudMakeCachedBuildsdfy.479:38|
 :skolemid |1231|
 :pattern ( (M0.__default.evalCompatCheckCore |stOrig#0@@0| |sts#0@@2| |fun#0| |args#0@@2| |useCache#0@@3|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|stOrig#0@@1| T@U) (|sts#0@@3| T@U) (|fun#0@@0| T@U) (|args#0@@3| T@U) (|useCache#0@@4| T@U) ) (!  (=> (or (|M0.__default.evalCompatCheckCore#canCall| (Lit BoxType |stOrig#0@@1|) (Lit SetType |sts#0@@3|) (Lit DatatypeTypeType |fun#0@@0|) (Lit SeqType |args#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsBox |stOrig#0@@1| Tclass.M0.State) ($Is SetType |sts#0@@3| (TSet Tclass.M0.State))) ($Is DatatypeTypeType |fun#0@@0| Tclass.M0.Expression)) ($Is SeqType |args#0@@3| (TSeq Tclass.M0.Expression))) (not (|Set#Equal| |sts#0@@3| |Set#Empty|))))) (and (and (|M0.__default.Compatible#canCall| (Lit SetType |sts#0@@3|)) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.Compatible (Lit SetType |sts#0@@3|))))) (and (|M0.__default.Combine#canCall| (Lit SetType |sts#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))) (let ((|stCombined#2| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine (Lit SetType |sts#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (and (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |fun#0@@0|)) (M0.Literal.litPrimitive_q (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primExec_q (Lit DatatypeTypeType (M0.Literal.prim (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@0|))))))))) (|M0.__default.evalCore#canCall| (Lit BoxType |stOrig#0@@1|) |stCombined#2| (Lit SeqType |args#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))))))))) (= (M0.__default.evalCompatCheckCore (Lit BoxType |stOrig#0@@1|) (Lit SetType |sts#0@@3|) (Lit DatatypeTypeType |fun#0@@0|) (Lit SeqType |args#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))) (ite  (not (U_2_bool (Lit boolType (bool_2_U (M0.__default.Compatible (Lit SetType |sts#0@@3|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) (Lit BoxType |stOrig#0@@1|)) (let ((|stCombined#2@@0| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine (Lit SetType |sts#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|)))))
(ite  (and (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |fun#0@@0|)) (M0.Literal.litPrimitive_q (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@0|))))) (ite (M0.Primitive.primExec_q (Lit DatatypeTypeType (M0.Literal.prim (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@0|)))))) (M0.__default.evalCore (Lit BoxType |stOrig#0@@1|) |stCombined#2@@0| (Lit SeqType |args#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |stOrig#0@@1|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |stOrig#0@@1|))))))))
 :qid |CloudMakeCachedBuildsdfy.479:38|
 :weight 3
 :skolemid |1233|
 :pattern ( (M0.__default.evalCompatCheckCore (Lit BoxType |stOrig#0@@1|) (Lit SetType |sts#0@@3|) (Lit DatatypeTypeType |fun#0@@0|) (Lit SeqType |args#0@@3|) (U_2_bool (Lit boolType |useCache#0@@4|))))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((|a#90#0#0| Int) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@8) ($IsAlloc intType (int_2_U |a#90#0#0|) TInt $h@@8)))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1938|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@8))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M0._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M0.__default.PickOne M0._default.PickOne$T@@1 |s#0@@0|) M0._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@1 |s#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|stOrig#0@@2| T@U) (|stCombined#0@@2| T@U) (|args#0@@4| T@U) (|useCache#0@@5| Bool) ) (!  (=> (and (or (|M0.__default.evalCore#canCall| |stOrig#0@@2| |stCombined#0@@2| |args#0@@4| |useCache#0@@5|) (and (< 4 $FunctionContextHeight) (and (and (and ($IsBox |stOrig#0@@2| Tclass.M0.State) ($IsAllocBox |stOrig#0@@2| Tclass.M0.State $Heap@@1)) (and ($IsBox |stCombined#0@@2| Tclass.M0.State) ($IsAllocBox |stCombined#0@@2| Tclass.M0.State $Heap@@1))) (and ($Is SeqType |args#0@@4| (TSeq Tclass.M0.Expression)) ($IsAlloc SeqType |args#0@@4| (TSeq Tclass.M0.Expression) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (M0.__default.evalCore |stOrig#0@@2| |stCombined#0@@2| |args#0@@4| |useCache#0@@5|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@1))
 :qid |CloudMakeCachedBuildsdfy.495:18|
 :skolemid |1238|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.evalCore |stOrig#0@@2| |stCombined#0@@2| |args#0@@4| |useCache#0@@5|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@1))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|stOrig#0@@3| T@U) (|sts#0@@4| T@U) (|fun#0@@1| T@U) (|args#0@@5| T@U) (|useCache#0@@6| Bool) ) (!  (=> (and (or (|M0.__default.evalCompatCheckCore#canCall| |stOrig#0@@3| |sts#0@@4| |fun#0@@1| |args#0@@5| |useCache#0@@6|) (and (< 5 $FunctionContextHeight) (and (and (and (and (and ($IsBox |stOrig#0@@3| Tclass.M0.State) ($IsAllocBox |stOrig#0@@3| Tclass.M0.State $Heap@@2)) (and ($Is SetType |sts#0@@4| (TSet Tclass.M0.State)) ($IsAlloc SetType |sts#0@@4| (TSet Tclass.M0.State) $Heap@@2))) (and ($Is DatatypeTypeType |fun#0@@1| Tclass.M0.Expression) ($IsAlloc DatatypeTypeType |fun#0@@1| Tclass.M0.Expression $Heap@@2))) (and ($Is SeqType |args#0@@5| (TSeq Tclass.M0.Expression)) ($IsAlloc SeqType |args#0@@5| (TSeq Tclass.M0.Expression) $Heap@@2))) (not (|Set#Equal| |sts#0@@4| |Set#Empty|))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (M0.__default.evalCompatCheckCore |stOrig#0@@3| |sts#0@@4| |fun#0@@1| |args#0@@5| |useCache#0@@6|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@2))
 :qid |CloudMakeCachedBuildsdfy.479:18|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.evalCompatCheckCore |stOrig#0@@3| |sts#0@@4| |fun#0@@1| |args#0@@5| |useCache#0@@6|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@2))
))))
(assert (forall ((|a#108#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0|) Tclass.M0.Literal) ($Is SetType |a#108#0#0| (TSet Tclass.M0.Path)))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1967|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0|) Tclass.M0.Literal))
)))
(assert (forall ((|a#120#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0|) Tclass.M0.Literal) ($Is SeqType |a#120#0#0| (TSeq Tclass.M0.Expression)))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1987|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0|) Tclass.M0.Literal))
)))
(assert (forall ((|a#95#0#0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@9) ($IsAlloc SeqType |a#95#0#0| (TSeq TChar) $h@@9)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1947|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@9))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| |prim#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@3| Tclass.M0.Primitive))) (<= (LitInt 0) (M0.__default.Arity |prim#0@@3|)))
 :qid |CloudMakeCachedBuildsdfy.526:24|
 :skolemid |1266|
 :pattern ( (M0.__default.Arity |prim#0@@3|))
))))
(assert (forall ((|a#22#0#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@10) ($IsAlloc DatatypeTypeType |a#22#0#0@@0| Tclass.M0.Literal $h@@10)))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1830|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@10))
)))
(assert (forall ((|a#28#0#0@@0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@11) ($IsAllocBox |a#28#0#0@@0| Tclass.M0.Identifier $h@@11)))
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1840|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@11))
)))
(assert (forall ((|a#68#0#0@@0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@12) ($IsAlloc DatatypeTypeType |a#68#0#0@@0| Tclass.M0.Reason $h@@12)))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1906|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@12))
)))
(assert (forall ((|a#102#0#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0@@0|) Tclass.M0.Literal $h@@13) ($IsAlloc DatatypeTypeType |a#102#0#0@@0| Tclass.M0.Primitive $h@@13)))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1958|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0@@0|) Tclass.M0.Literal $h@@13))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@6| T@U) ) (!  (=> (or (|M0.__default.Hash#canCall| |p#0@@6|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@6| Tclass.M0.Path))) ($IsBox (M0.__default.Hash |p#0@@6|) Tclass.M0.HashValue))
 :qid |CloudMakeCachedBuildsdfy.16:23|
 :skolemid |708|
 :pattern ( (M0.__default.Hash |p#0@@6|))
))))
(assert (forall ((d@@42 T@U) ) (!  (=> ($Is DatatypeTypeType d@@42 Tclass.M0.Primitive) (or (M0.Primitive.primCreatePath_q d@@42) (M0.Primitive.primExec_q d@@42)))
 :qid |unknown.0:0|
 :skolemid |2013|
 :pattern ( (M0.Primitive.primExec_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Primitive))
 :pattern ( (M0.Primitive.primCreatePath_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Primitive))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) ($reveal Bool) (|sts#0@@5| T@U) (|useCache#0@@7| Bool) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@5| |useCache#0@@7|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0@@5| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0@@5| |Set#Empty|))))) ($IsBox (M0.__default.Combine $ly@@1 $reveal |sts#0@@5| |useCache#0@@7|) Tclass.M0.State))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |780|
 :pattern ( (M0.__default.Combine $ly@@1 $reveal |sts#0@@5| |useCache#0@@7|))
))))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((|a#114#0#0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0|) Tclass.M0.Literal $h@@14) ($IsAlloc SetType |a#114#0#0| (TSet (TSeq TChar)) $h@@14)))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1978|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0|) Tclass.M0.Literal $h@@14))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@2 T@U) ($Heap@@3 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is SetType |s#0@@1| (TSet M0._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| M0._default.PickOne$T@@2 |s#0@@1|) (= (M0.__default.PickOne M0._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#0_x| M0._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |791|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((|a#108#0#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0@@0|) Tclass.M0.Literal $h@@15) ($IsAlloc SetType |a#108#0#0@@0| (TSet Tclass.M0.Path) $h@@15)))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1968|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0@@0|) Tclass.M0.Literal $h@@15))
)))
(assert (forall ((|a#120#0#0@@0| T@U) ($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0@@0|) Tclass.M0.Literal $h@@16) ($IsAlloc SeqType |a#120#0#0@@0| (TSeq Tclass.M0.Expression) $h@@16)))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1988|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0@@0|) Tclass.M0.Literal $h@@16))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1))
)))
(assert (forall ((M0.Tuple$A@@2 T@U) (M0.Tuple$B@@2 T@U) ) (! (= (Tclass.M0.Tuple_0 (Tclass.M0.Tuple M0.Tuple$A@@2 M0.Tuple$B@@2)) M0.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@2 M0.Tuple$B@@2))
)))
(assert (forall ((M0.Tuple$A@@3 T@U) (M0.Tuple$B@@3 T@U) ) (! (= (Tclass.M0.Tuple_1 (Tclass.M0.Tuple M0.Tuple$A@@3 M0.Tuple$B@@3)) M0.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@3 M0.Tuple$B@@3))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprAnd| |a#41#0#0| |a#41#1#0|)) |##M0.Expression.exprAnd|)
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1860|
 :pattern ( (|#M0.Expression.exprAnd| |a#41#0#0| |a#41#1#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) ) (! (= (M0.Expression.conj0 (|#M0.Expression.exprAnd| |a#45#0#0| |a#45#1#0|)) |a#45#0#0|)
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1869|
 :pattern ( (|#M0.Expression.exprAnd| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (M0.Expression.conj1 (|#M0.Expression.exprAnd| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1871|
 :pattern ( (|#M0.Expression.exprAnd| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprOr| |a#49#0#0| |a#49#1#0|)) |##M0.Expression.exprOr|)
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1873|
 :pattern ( (|#M0.Expression.exprOr| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (M0.Expression.disj0 (|#M0.Expression.exprOr| |a#53#0#0| |a#53#1#0|)) |a#53#0#0|)
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1882|
 :pattern ( (|#M0.Expression.exprOr| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (M0.Expression.disj1 (|#M0.Expression.exprOr| |a#55#0#0| |a#55#1#0|)) |a#55#1#0|)
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1884|
 :pattern ( (|#M0.Expression.exprOr| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprInvocation| |a#57#0#0| |a#57#1#0|)) |##M0.Expression.exprInvocation|)
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1886|
 :pattern ( (|#M0.Expression.exprInvocation| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (M0.Expression.fun (|#M0.Expression.exprInvocation| |a#61#0#0| |a#61#1#0|)) |a#61#0#0|)
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1895|
 :pattern ( (|#M0.Expression.exprInvocation| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (= (M0.Expression.args (|#M0.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|)) |a#63#1#0|)
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1897|
 :pattern ( (|#M0.Expression.exprInvocation| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#145#0#0| T@U) (|a#145#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Tuple.Pair| |a#145#0#0| |a#145#1#0|)) |##M0.Tuple.Pair|)
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2030|
 :pattern ( (|#M0.Tuple.Pair| |a#145#0#0| |a#145#1#0|))
)))
(assert (forall ((|a#149#0#0| T@U) (|a#149#1#0| T@U) ) (! (= (M0.Tuple.fst (|#M0.Tuple.Pair| |a#149#0#0| |a#149#1#0|)) |a#149#0#0|)
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2041|
 :pattern ( (|#M0.Tuple.Pair| |a#149#0#0| |a#149#1#0|))
)))
(assert (forall ((|a#151#0#0| T@U) (|a#151#1#0| T@U) ) (! (= (M0.Tuple.snd (|#M0.Tuple.Pair| |a#151#0#0| |a#151#1#0|)) |a#151#1#0|)
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2043|
 :pattern ( (|#M0.Tuple.Pair| |a#151#0#0| |a#151#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@2) t0@@2 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@2))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprIf| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1853|
 :pattern ( (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|p#0@@7| T@U) ) (!  (=> (and (or (|M0.__default.Hash#canCall| |p#0@@7|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0@@7| Tclass.M0.Path) ($IsAllocBox |p#0@@7| Tclass.M0.Path $Heap@@4)))) ($IsGoodHeap $Heap@@4)) ($IsAllocBox (M0.__default.Hash |p#0@@7|) Tclass.M0.HashValue $Heap@@4))
 :qid |CloudMakeCachedBuildsdfy.16:18|
 :skolemid |709|
 :pattern ( ($IsAllocBox (M0.__default.Hash |p#0@@7|) Tclass.M0.HashValue $Heap@@4))
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
(assert (forall ((|a#20#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprLiteral| |a#20#0#0|)) |##M0.Expression.exprLiteral|)
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1824|
 :pattern ( (|#M0.Expression.exprLiteral| |a#20#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (M0.Expression.lit (|#M0.Expression.exprLiteral| |a#24#0#0|)) |a#24#0#0|)
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1833|
 :pattern ( (|#M0.Expression.exprLiteral| |a#24#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprIdentifier| |a#26#0#0|)) |##M0.Expression.exprIdentifier|)
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1835|
 :pattern ( (|#M0.Expression.exprIdentifier| |a#26#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (M0.Expression.id (|#M0.Expression.exprIdentifier| |a#30#0#0|)) |a#30#0#0|)
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1843|
 :pattern ( (|#M0.Expression.exprIdentifier| |a#30#0#0|))
)))
(assert (forall ((|a#66#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Expression.exprError| |a#66#0#0|)) |##M0.Expression.exprError|)
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1900|
 :pattern ( (|#M0.Expression.exprError| |a#66#0#0|))
)))
(assert (forall ((|a#70#0#0| T@U) ) (! (= (M0.Expression.r (|#M0.Expression.exprError| |a#70#0#0|)) |a#70#0#0|)
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1909|
 :pattern ( (|#M0.Expression.exprError| |a#70#0#0|))
)))
(assert (forall ((|a#88#0#0| Int) ) (! (= (DatatypeCtorId (|#M0.Literal.litNumber| |a#88#0#0|)) |##M0.Literal.litNumber|)
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1933|
 :pattern ( (|#M0.Literal.litNumber| |a#88#0#0|))
)))
(assert (forall ((|a#92#0#0| Int) ) (! (= (M0.Literal.num (|#M0.Literal.litNumber| |a#92#0#0|)) |a#92#0#0|)
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1941|
 :pattern ( (|#M0.Literal.litNumber| |a#92#0#0|))
)))
(assert (forall ((|a#93#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litString| |a#93#0#0|)) |##M0.Literal.litString|)
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1942|
 :pattern ( (|#M0.Literal.litString| |a#93#0#0|))
)))
(assert (forall ((|a#97#0#0| T@U) ) (! (= (M0.Literal.str (|#M0.Literal.litString| |a#97#0#0|)) |a#97#0#0|)
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1950|
 :pattern ( (|#M0.Literal.litString| |a#97#0#0|))
)))
(assert (forall ((|a#100#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litPrimitive| |a#100#0#0|)) |##M0.Literal.litPrimitive|)
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1953|
 :pattern ( (|#M0.Literal.litPrimitive| |a#100#0#0|))
)))
(assert (forall ((|a#104#0#0| T@U) ) (! (= (M0.Literal.prim (|#M0.Literal.litPrimitive| |a#104#0#0|)) |a#104#0#0|)
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1961|
 :pattern ( (|#M0.Literal.litPrimitive| |a#104#0#0|))
)))
(assert (forall ((|a#106#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArrOfPaths| |a#106#0#0|)) |##M0.Literal.litArrOfPaths|)
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1963|
 :pattern ( (|#M0.Literal.litArrOfPaths| |a#106#0#0|))
)))
(assert (forall ((|a#110#0#0| T@U) ) (! (= (M0.Literal.paths (|#M0.Literal.litArrOfPaths| |a#110#0#0|)) |a#110#0#0|)
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1971|
 :pattern ( (|#M0.Literal.litArrOfPaths| |a#110#0#0|))
)))
(assert (forall ((|a#112#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArrOfStrings| |a#112#0#0|)) |##M0.Literal.litArrOfStrings|)
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1973|
 :pattern ( (|#M0.Literal.litArrOfStrings| |a#112#0#0|))
)))
(assert (forall ((|a#116#0#0| T@U) ) (! (= (M0.Literal.strs (|#M0.Literal.litArrOfStrings| |a#116#0#0|)) |a#116#0#0|)
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1981|
 :pattern ( (|#M0.Literal.litArrOfStrings| |a#116#0#0|))
)))
(assert (forall ((|a#118#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArray| |a#118#0#0|)) |##M0.Literal.litArray|)
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1983|
 :pattern ( (|#M0.Literal.litArray| |a#118#0#0|))
)))
(assert (forall ((|a#122#0#0| T@U) ) (! (= (M0.Literal.arr (|#M0.Literal.litArray| |a#122#0#0|)) |a#122#0#0|)
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1991|
 :pattern ( (|#M0.Literal.litArray| |a#122#0#0|))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0|) (DtRank (|#M0.Expression.exprIf| |a#36#0#0| |a#36#1#0| |a#36#2#0|)))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1855|
 :pattern ( (|#M0.Expression.exprIf| |a#36#0#0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (< (DtRank |a#38#1#0|) (DtRank (|#M0.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|)))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1857|
 :pattern ( (|#M0.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (DtRank |a#40#2#0|) (DtRank (|#M0.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1859|
 :pattern ( (|#M0.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@13| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@13|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@13| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@13|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeCachedBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@13|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@14| T@U) ) (!  (=> (or (|M0.__default.DomC#canCall| |st#0@@14|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@14| Tclass.M0.State))) ($Is SetType (M0.__default.DomC |st#0@@14|) (TSet Tclass.M0.HashValue)))
 :qid |CloudMakeCachedBuildsdfy.15:23|
 :skolemid |705|
 :pattern ( (M0.__default.DomC |st#0@@14|))
))))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (< (DtRank |a#46#0#0|) (DtRank (|#M0.Expression.exprAnd| |a#46#0#0| |a#46#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1870|
 :pattern ( (|#M0.Expression.exprAnd| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#1#0|) (DtRank (|#M0.Expression.exprAnd| |a#48#0#0| |a#48#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1872|
 :pattern ( (|#M0.Expression.exprAnd| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#0#0|) (DtRank (|#M0.Expression.exprOr| |a#54#0#0| |a#54#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1883|
 :pattern ( (|#M0.Expression.exprOr| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#1#0|) (DtRank (|#M0.Expression.exprOr| |a#56#0#0| |a#56#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1885|
 :pattern ( (|#M0.Expression.exprOr| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (< (DtRank |a#62#0#0|) (DtRank (|#M0.Expression.exprInvocation| |a#62#0#0| |a#62#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1896|
 :pattern ( (|#M0.Expression.exprInvocation| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (< (|Seq#Rank| |a#65#1#0|) (DtRank (|#M0.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1899|
 :pattern ( (|#M0.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|))
)))
(assert (forall ((|a#150#0#0| T@U) (|a#150#1#0| T@U) ) (! (< (BoxRank |a#150#0#0|) (DtRank (|#M0.Tuple.Pair| |a#150#0#0| |a#150#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2042|
 :pattern ( (|#M0.Tuple.Pair| |a#150#0#0| |a#150#1#0|))
)))
(assert (forall ((|a#152#0#0| T@U) (|a#152#1#0| T@U) ) (! (< (BoxRank |a#152#1#0|) (DtRank (|#M0.Tuple.Pair| |a#152#0#0| |a#152#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2044|
 :pattern ( (|#M0.Tuple.Pair| |a#152#0#0| |a#152#1#0|))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((|a#90#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal) ($Is intType (int_2_U |a#90#0#0@@0|) TInt))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1937|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@13| T@U) (|deps#0@@13| T@U) (|exps#0@@10| T@U) (|st#0@@15| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@15|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@13| (TSeq TChar)) ($Is SetType |deps#0@@13| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($IsBox |st#0@@15| Tclass.M0.State)))) (and (forall ((|e#0@@6| T@U) ) (!  (=> ($Is SeqType |e#0@@6| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#0@@6|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@13| |deps#0@@13| |e#0@@6|) (|M0.__default.DomSt#canCall| |st#0@@15|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@6|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@13| |deps#0@@13| |e#0@@6|) (|M0.__default.GetSt#canCall| (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@6|) |st#0@@15|)) (and (|M0.__default.Loc#canCall| |cmd#0@@13| |deps#0@@13| |e#0@@6|) (|M0.__default.Oracle#canCall| (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@6|) |st#0@@15|)))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |918|
 :pattern ( (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#0@@6|)))
)) (= (M0.__default.Pre |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@15|) (forall ((|e#0@@7| T@U) ) (!  (=> ($Is SeqType |e#0@@7| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#0@@7|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@7|)) (= (M0.__default.GetSt (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@7|) |st#0@@15|) (M0.__default.Oracle (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@7|) |st#0@@15|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |917|
 :pattern ( (M0.__default.Loc |cmd#0@@13| |deps#0@@13| |e#0@@7|))
 :pattern ( (|Set#IsMember| |exps#0@@10| ($Box SeqType |e#0@@7|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :skolemid |919|
 :pattern ( (M0.__default.Pre |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@15|))
))))
(assert (forall (($ly@@2 T@U) ($reveal@@0 Bool) (|sts#0@@6| T@U) (|useCache#0@@8| Bool) ) (! (= (M0.__default.Combine ($LS $ly@@2) $reveal@@0 |sts#0@@6| |useCache#0@@8|) (M0.__default.Combine $ly@@2 $reveal@@0 |sts#0@@6| |useCache#0@@8|))
 :qid |CloudMakeCachedBuildsdfy.64:28|
 :skolemid |778|
 :pattern ( (M0.__default.Combine ($LS $ly@@2) $reveal@@0 |sts#0@@6| |useCache#0@@8|))
)))
(assert (forall ((M0.Tuple$A@@4 T@U) (M0.Tuple$B@@4 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( ($IsBox bx@@9 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|st#0@@16| T@U) ) (!  (=> (and (or (|M0.__default.DomC#canCall| |st#0@@16|) (and (< 0 $FunctionContextHeight) (and ($IsBox |st#0@@16| Tclass.M0.State) ($IsAllocBox |st#0@@16| Tclass.M0.State $Heap@@5)))) ($IsGoodHeap $Heap@@5)) ($IsAlloc SetType (M0.__default.DomC |st#0@@16|) (TSet Tclass.M0.HashValue) $Heap@@5))
 :qid |CloudMakeCachedBuildsdfy.15:18|
 :skolemid |706|
 :pattern ( ($IsAlloc SetType (M0.__default.DomC |st#0@@16|) (TSet Tclass.M0.HashValue) $Heap@@5))
))))
(assert (forall ((|a#25#0#0| T@U) ) (! (< (DtRank |a#25#0#0|) (DtRank (|#M0.Expression.exprLiteral| |a#25#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1834|
 :pattern ( (|#M0.Expression.exprLiteral| |a#25#0#0|))
)))
(assert (forall ((|a#71#0#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#M0.Expression.exprError| |a#71#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1910|
 :pattern ( (|#M0.Expression.exprError| |a#71#0#0|))
)))
(assert (forall ((|a#99#0#0| T@U) ) (! (< (|Seq#Rank| |a#99#0#0|) (DtRank (|#M0.Literal.litString| |a#99#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1952|
 :pattern ( (|#M0.Literal.litString| |a#99#0#0|))
)))
(assert (forall ((|a#105#0#0| T@U) ) (! (< (DtRank |a#105#0#0|) (DtRank (|#M0.Literal.litPrimitive| |a#105#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1962|
 :pattern ( (|#M0.Literal.litPrimitive| |a#105#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) ) (! (< (|Seq#Rank| |a#124#0#0|) (DtRank (|#M0.Literal.litArray| |a#124#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1993|
 :pattern ( (|#M0.Literal.litArray| |a#124#0#0|))
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
 :skolemid |2072|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@6| T@U) (|st#0@@17| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@17|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M0.Primitive) ($Is SeqType |args#0@@6| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@17| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#3|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#3|)) (=> (M0.Expression.exprLiteral_q |deps#3|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#3|)) (=> (M0.Expression.exprLiteral_q |exps#3|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#3|)) (and (|M0.__default.DomSt#canCall| |st#0@@17|) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.__default.DomSt |st#0@@17|)) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#3|)) (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.Literal.strs (M0.Expression.lit |exps#3|)) |st#0@@17|))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@17|) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#2|) (M0.Literal.litString_q (M0.Expression.lit |cmd#2|))) (M0.Expression.exprLiteral_q |deps#2|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#2|))) (M0.Expression.exprLiteral_q |exps#2|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#2|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.__default.DomSt |st#0@@17|))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#2|)) (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.Literal.strs (M0.Expression.lit |exps#2|)) |st#0@@17|)))))))))
 :qid |CloudMakeCachedBuildsdfy.533:29|
 :weight 3
 :skolemid |1273|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@17|))
))))
(assert (forall ((M0.Tuple$A@@5 T@U) (M0.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) Tagclass.M0.Tuple) (= (TagFamily (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5))
)))
(assert (forall ((d@@43 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M0.Literal.litNumber_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass.M0.Literal $h@@17))) ($IsAlloc intType (int_2_U (M0.Literal.num d@@43)) TInt $h@@17))
 :qid |unknown.0:0|
 :skolemid |1939|
 :pattern ( ($IsAlloc intType (int_2_U (M0.Literal.num d@@43)) TInt $h@@17))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@8| T@U) (|st#0@@18| T@U) ) (!  (=> (and (or (|M0.__default.Oracle#canCall| |p#0@@8| |st#0@@18|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M0.Path) ($IsAllocBox |p#0@@8| Tclass.M0.Path $Heap@@6)) (and ($IsBox |st#0@@18| Tclass.M0.State) ($IsAllocBox |st#0@@18| Tclass.M0.State $Heap@@6))))) ($IsGoodHeap $Heap@@6)) ($IsAllocBox (M0.__default.Oracle |p#0@@8| |st#0@@18|) Tclass.M0.Artifact $Heap@@6))
 :qid |CloudMakeCachedBuildsdfy.186:18|
 :skolemid |985|
 :pattern ( ($IsAllocBox (M0.__default.Oracle |p#0@@8| |st#0@@18|) Tclass.M0.Artifact $Heap@@6))
))))
(assert (forall ((d@@44 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@44)) (DtRank d@@44))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@44)))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((bx@@11 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@6)))
)))
(assert (forall ((d@@45 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) ($Is DatatypeTypeType d@@45 Tclass.M0.Primitive)) ($IsAlloc DatatypeTypeType d@@45 Tclass.M0.Primitive $h@@18))
 :qid |unknown.0:0|
 :skolemid |2011|
 :pattern ( ($IsAlloc DatatypeTypeType d@@45 Tclass.M0.Primitive $h@@18))
)))
(assert (forall ((d@@46 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) ($Is DatatypeTypeType d@@46 Tclass.M0.Reason)) ($IsAlloc DatatypeTypeType d@@46 Tclass.M0.Reason $h@@19))
 :qid |unknown.0:0|
 :skolemid |2023|
 :pattern ( ($IsAlloc DatatypeTypeType d@@46 Tclass.M0.Reason $h@@19))
)))
(assert (= (Tag Tclass.M0.Expression) Tagclass.M0.Expression))
(assert (= (TagFamily Tclass.M0.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M0.Primitive) Tagclass.M0.Primitive))
(assert (= (TagFamily Tclass.M0.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M0.Literal) Tagclass.M0.Literal))
(assert (= (TagFamily Tclass.M0.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M0.Reason) Tagclass.M0.Reason))
(assert (= (TagFamily Tclass.M0.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0@@7| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| (Lit SetType |sts#0@@7|)) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0@@7| (TSet Tclass.M0.State)))) (and (forall ((|st#1@@1| T@U) (|st'#1@@1| T@U) ) (!  (=> (and ($IsBox |st#1@@1| Tclass.M0.State) ($IsBox |st'#1@@1| Tclass.M0.State)) (=> (|Set#IsMember| (Lit SetType |sts#0@@7|) |st#1@@1|) (=> (|Set#IsMember| (Lit SetType |sts#0@@7|) |st'#1@@1|) (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#1@@1|) (=> (|Set#IsMember| (M0.__default.DomSt |st#1@@1|) |p#1|) (and (|M0.__default.DomSt#canCall| |st'#1@@1|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#1@@1|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |st#1@@1|) (|M0.__default.GetSt#canCall| |p#1| |st'#1@@1|)))))))
 :qid |CloudMakeCachedBuildsdfy.55:14|
 :skolemid |753|
 :pattern ( (M0.__default.GetSt |p#1| |st'#1@@1|))
 :pattern ( (M0.__default.GetSt |p#1| |st#1@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@1|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1@@1|) |p#1|))
)))))
 :qid |CloudMakeCachedBuildsdfy.54:12|
 :skolemid |754|
 :pattern ( (M0.__default.DomSt |st'#1@@1|) (M0.__default.DomSt |st#1@@1|))
 :pattern ( (M0.__default.DomSt |st'#1@@1|) (|Set#IsMember| |sts#0@@7| |st#1@@1|))
 :pattern ( (M0.__default.DomSt |st#1@@1|) (|Set#IsMember| |sts#0@@7| |st'#1@@1|))
 :pattern ( (|Set#IsMember| |sts#0@@7| |st'#1@@1|) (|Set#IsMember| |sts#0@@7| |st#1@@1|))
)) (= (M0.__default.Compatible (Lit SetType |sts#0@@7|)) (forall ((|st#1@@2| T@U) (|st'#1@@2| T@U) ) (!  (=> (and ($IsBox |st#1@@2| Tclass.M0.State) ($IsBox |st'#1@@2| Tclass.M0.State)) (=> (and (|Set#IsMember| (Lit SetType |sts#0@@7|) |st#1@@2|) (|Set#IsMember| (Lit SetType |sts#0@@7|) |st'#1@@2|)) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M0.Path) (=> (and (|Set#IsMember| (M0.__default.DomSt |st#1@@2|) |p#1@@0|) (|Set#IsMember| (M0.__default.DomSt |st'#1@@2|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |st#1@@2|) (M0.__default.GetSt |p#1@@0| |st'#1@@2|))))
 :qid |CloudMakeCachedBuildsdfy.55:14|
 :skolemid |751|
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@2|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st#1@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@2|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1@@2|) |p#1@@0|))
))))
 :qid |CloudMakeCachedBuildsdfy.54:12|
 :skolemid |752|
 :pattern ( (M0.__default.DomSt |st'#1@@2|) (M0.__default.DomSt |st#1@@2|))
 :pattern ( (M0.__default.DomSt |st'#1@@2|) (|Set#IsMember| |sts#0@@7| |st#1@@2|))
 :pattern ( (M0.__default.DomSt |st#1@@2|) (|Set#IsMember| |sts#0@@7| |st'#1@@2|))
 :pattern ( (|Set#IsMember| |sts#0@@7| |st'#1@@2|) (|Set#IsMember| |sts#0@@7| |st#1@@2|))
)))))
 :qid |CloudMakeCachedBuildsdfy.52:30|
 :weight 3
 :skolemid |755|
 :pattern ( (M0.__default.Compatible (Lit SetType |sts#0@@7|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|stOrig#0@@4| T@U) (|sts#0@@8| T@U) (|fun#0@@2| T@U) (|args#0@@7| T@U) (|useCache#0@@9| T@U) ) (!  (=> (or (|M0.__default.evalCompatCheckCore#canCall| |stOrig#0@@4| (Lit SetType |sts#0@@8|) (Lit DatatypeTypeType |fun#0@@2|) (Lit SeqType |args#0@@7|) (U_2_bool (Lit boolType |useCache#0@@9|))) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsBox |stOrig#0@@4| Tclass.M0.State) ($Is SetType |sts#0@@8| (TSet Tclass.M0.State))) ($Is DatatypeTypeType |fun#0@@2| Tclass.M0.Expression)) ($Is SeqType |args#0@@7| (TSeq Tclass.M0.Expression))) (not (|Set#Equal| |sts#0@@8| |Set#Empty|))))) (and (and (|M0.__default.Compatible#canCall| (Lit SetType |sts#0@@8|)) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.Compatible (Lit SetType |sts#0@@8|))))) (and (|M0.__default.Combine#canCall| (Lit SetType |sts#0@@8|) (U_2_bool (Lit boolType |useCache#0@@9|))) (let ((|stCombined#1| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine (Lit SetType |sts#0@@8|) (U_2_bool (Lit boolType |useCache#0@@9|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U  (and (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |fun#0@@2|)) (M0.Literal.litPrimitive_q (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@2|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primExec_q (Lit DatatypeTypeType (M0.Literal.prim (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@2|))))))))) (|M0.__default.evalCore#canCall| |stOrig#0@@4| |stCombined#1| (Lit SeqType |args#0@@7|) (U_2_bool (Lit boolType |useCache#0@@9|))))))))) (= (M0.__default.evalCompatCheckCore |stOrig#0@@4| (Lit SetType |sts#0@@8|) (Lit DatatypeTypeType |fun#0@@2|) (Lit SeqType |args#0@@7|) (U_2_bool (Lit boolType |useCache#0@@9|))) (ite  (not (U_2_bool (Lit boolType (bool_2_U (M0.__default.Compatible (Lit SetType |sts#0@@8|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) |stOrig#0@@4|) (let ((|stCombined#1@@0| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine (Lit SetType |sts#0@@8|) (U_2_bool (Lit boolType |useCache#0@@9|)))))
(ite  (and (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |fun#0@@2|)) (M0.Literal.litPrimitive_q (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@2|))))) (ite (M0.Primitive.primExec_q (Lit DatatypeTypeType (M0.Literal.prim (Lit DatatypeTypeType (M0.Expression.lit (Lit DatatypeTypeType |fun#0@@2|)))))) (M0.__default.evalCore |stOrig#0@@4| |stCombined#1@@0| (Lit SeqType |args#0@@7|) (U_2_bool (Lit boolType |useCache#0@@9|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@4|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@4|)))))))
 :qid |CloudMakeCachedBuildsdfy.479:38|
 :weight 3
 :skolemid |1232|
 :pattern ( (M0.__default.evalCompatCheckCore |stOrig#0@@4| (Lit SetType |sts#0@@8|) (Lit DatatypeTypeType |fun#0@@2|) (Lit SeqType |args#0@@7|) (U_2_bool (Lit boolType |useCache#0@@9|))))
))))
(assert (= |#M0.Literal.litTrue| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))
(assert (= |#M0.Literal.litFalse| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))
(assert (= |#M0.Literal.litUndefined| (Lit DatatypeTypeType |#M0.Literal.litUndefined|)))
(assert (= |#M0.Literal.litNull| (Lit DatatypeTypeType |#M0.Literal.litNull|)))
(assert (= |#M0.Primitive.primCreatePath| (Lit DatatypeTypeType |#M0.Primitive.primCreatePath|)))
(assert (= |#M0.Primitive.primExec| (Lit DatatypeTypeType |#M0.Primitive.primExec|)))
(assert (= |#M0.Reason.rCompatibility| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))
(assert (= |#M0.Reason.rValidity| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))
(assert (= |#M0.Reason.rInconsistentCache| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))
(assert (forall ((|a#95#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal) ($Is SeqType |a#95#0#0@@0| (TSeq TChar)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1946|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@47 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (M0.Literal.litString_q d@@47) ($IsAlloc DatatypeTypeType d@@47 Tclass.M0.Literal $h@@20))) ($IsAlloc SeqType (M0.Literal.str d@@47) (TSeq TChar) $h@@20))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( ($IsAlloc SeqType (M0.Literal.str d@@47) (TSeq TChar) $h@@20))
)))
(assert (forall ((|a#111#0#0| T@U) (d@@48 T@U) ) (!  (=> (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@48)) (< (DtRank d@@48) (DtRank (|#M0.Literal.litArrOfPaths| |a#111#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1972|
 :pattern ( (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@48)) (|#M0.Literal.litArrOfPaths| |a#111#0#0|))
)))
(assert (forall ((|a#117#0#0| T@U) (d@@49 T@U) ) (!  (=> (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@49)) (< (DtRank d@@49) (DtRank (|#M0.Literal.litArrOfStrings| |a#117#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1982|
 :pattern ( (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@49)) (|#M0.Literal.litArrOfStrings| |a#117#0#0|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@5| T@U) (|stCombined#0@@3| T@U) (|args#0@@8| T@U) (|useCache#0@@10| T@U) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0@@5| |stCombined#0@@3| (Lit SeqType |args#0@@8|) (U_2_bool (Lit boolType |useCache#0@@10|))) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@5| Tclass.M0.State) ($IsBox |stCombined#0@@3| Tclass.M0.State)) ($Is SeqType |args#0@@8| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| (Lit SeqType |args#0@@8|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@8|) |stCombined#0@@3|))) (=> (and (= (|Seq#Length| (Lit SeqType |args#0@@8|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@8|) |stCombined#0@@3|)) (let ((|exps#1@@0| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 2)))))))
(let ((|deps#1@@0| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 1)))))))
(let ((|cmd#1@@0| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 0)))))))
 (and (=> (not (U_2_bool (Lit boolType |useCache#0@@10|))) (and (|M0.__default.exec#canCall| |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@3|) (let ((|ps#2| (M0.__default.exec |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@3|)))
 (and (M0.Tuple.Pair_q |ps#2|) (M0.Tuple.Pair_q |ps#2|))))) (=> (U_2_bool (Lit boolType |useCache#0@@10|)) (and (|M0.__default.ConsistentCache#canCall| |stCombined#0@@3|) (=> (M0.__default.ConsistentCache |stCombined#0@@3|) (and (|M0.__default.execC#canCall| |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@3|) (let ((|ps#3| (M0.__default.execC |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@3|)))
 (and (M0.Tuple.Pair_q |ps#3|) (M0.Tuple.Pair_q |ps#3|))))))))))))) (= (M0.__default.evalCore |stOrig#0@@5| |stCombined#0@@3| (Lit SeqType |args#0@@8|) (U_2_bool (Lit boolType |useCache#0@@10|))) (ite  (and (= (|Seq#Length| (Lit SeqType |args#0@@8|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@8|) |stCombined#0@@3|)) (let ((|exps#1@@1| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 2)))))))
(let ((|deps#1@@1| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 1)))))))
(let ((|cmd#1@@1| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@8|) (LitInt 0)))))))
(ite  (not (U_2_bool (Lit boolType |useCache#0@@10|))) (let ((|ps#2@@0| (M0.__default.exec |cmd#1@@1| |deps#1@@1| |exps#1@@1| |stCombined#0@@3|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#2@@0|))))) (M0.Tuple.snd |ps#2@@0|))) (ite (M0.__default.ConsistentCache |stCombined#0@@3|) (let ((|ps#3@@0| (M0.__default.execC |cmd#1@@1| |deps#1@@1| |exps#1@@1| |stCombined#0@@3|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#3@@0|))))) (M0.Tuple.snd |ps#3@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@5|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stOrig#0@@5|)))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :weight 3
 :skolemid |1241|
 :pattern ( (M0.__default.evalCore |stOrig#0@@5| |stCombined#0@@3| (Lit SeqType |args#0@@8|) (U_2_bool (Lit boolType |useCache#0@@10|))))
))))
(assert (forall ((d@@50 T@U) (M0.Tuple$A@@6 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (M0.Tuple.Pair_q d@@50) (exists ((M0.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@50 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@21)
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($IsAlloc DatatypeTypeType d@@50 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@21))
)))) ($IsAllocBox (M0.Tuple.fst d@@50) M0.Tuple$A@@6 $h@@21))
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($IsAllocBox (M0.Tuple.fst d@@50) M0.Tuple$A@@6 $h@@21))
)))
(assert (forall ((d@@51 T@U) (M0.Tuple$B@@7 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (M0.Tuple.Pair_q d@@51) (exists ((M0.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@51 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@22)
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($IsAlloc DatatypeTypeType d@@51 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@22))
)))) ($IsAllocBox (M0.Tuple.snd d@@51) M0.Tuple$B@@7 $h@@22))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( ($IsAllocBox (M0.Tuple.snd d@@51) M0.Tuple$B@@7 $h@@22))
)))
(assert (forall ((d@@52 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (M0.Expression.exprLiteral_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass.M0.Expression $h@@23))) ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@52) Tclass.M0.Literal $h@@23))
 :qid |unknown.0:0|
 :skolemid |1831|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@52) Tclass.M0.Literal $h@@23))
)))
(assert (forall ((d@@53 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (M0.Expression.exprIdentifier_q d@@53) ($IsAlloc DatatypeTypeType d@@53 Tclass.M0.Expression $h@@24))) ($IsAllocBox (M0.Expression.id d@@53) Tclass.M0.Identifier $h@@24))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAllocBox (M0.Expression.id d@@53) Tclass.M0.Identifier $h@@24))
)))
(assert (forall ((d@@54 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (M0.Expression.exprIf_q d@@54) ($IsAlloc DatatypeTypeType d@@54 Tclass.M0.Expression $h@@25))) ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@54) Tclass.M0.Expression $h@@25))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@54) Tclass.M0.Expression $h@@25))
)))
(assert (forall ((d@@55 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (M0.Expression.exprIf_q d@@55) ($IsAlloc DatatypeTypeType d@@55 Tclass.M0.Expression $h@@26))) ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@55) Tclass.M0.Expression $h@@26))
 :qid |unknown.0:0|
 :skolemid |1851|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@55) Tclass.M0.Expression $h@@26))
)))
(assert (forall ((d@@56 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (M0.Expression.exprIf_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.M0.Expression $h@@27))) ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@56) Tclass.M0.Expression $h@@27))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@56) Tclass.M0.Expression $h@@27))
)))
(assert (forall ((d@@57 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (M0.Expression.exprAnd_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.M0.Expression $h@@28))) ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@57) Tclass.M0.Expression $h@@28))
 :qid |unknown.0:0|
 :skolemid |1866|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@57) Tclass.M0.Expression $h@@28))
)))
(assert (forall ((d@@58 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M0.Expression.exprAnd_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass.M0.Expression $h@@29))) ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@58) Tclass.M0.Expression $h@@29))
 :qid |unknown.0:0|
 :skolemid |1867|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@58) Tclass.M0.Expression $h@@29))
)))
(assert (forall ((d@@59 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M0.Expression.exprOr_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass.M0.Expression $h@@30))) ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@59) Tclass.M0.Expression $h@@30))
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@59) Tclass.M0.Expression $h@@30))
)))
(assert (forall ((d@@60 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M0.Expression.exprOr_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.M0.Expression $h@@31))) ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@60) Tclass.M0.Expression $h@@31))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@60) Tclass.M0.Expression $h@@31))
)))
(assert (forall ((d@@61 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M0.Expression.exprInvocation_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.M0.Expression $h@@32))) ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@61) Tclass.M0.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@61) Tclass.M0.Expression $h@@32))
)))
(assert (forall ((d@@62 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M0.Expression.exprError_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.M0.Expression $h@@33))) ($IsAlloc DatatypeTypeType (M0.Expression.r d@@62) Tclass.M0.Reason $h@@33))
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.r d@@62) Tclass.M0.Reason $h@@33))
)))
(assert (forall ((d@@63 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M0.Literal.litPrimitive_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.M0.Literal $h@@34))) ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@63) Tclass.M0.Primitive $h@@34))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@63) Tclass.M0.Primitive $h@@34))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0@@4| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| (Lit BoxType |stC#0@@4|)) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0@@4| Tclass.M0.State))) (and (forall ((|cmd#1@@2| T@U) (|deps#1@@2| T@U) (|e#1@@3| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@2| (TSeq TChar)) ($Is SetType |deps#1@@2| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@3| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#1@@2| |deps#1@@2| |e#1@@3|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@3|))) (|M0.__default.DomC#canCall| (Lit BoxType |stC#0@@4|))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@4|)) (M0.__default.Hash (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@3|))) (and (|M0.__default.Loc#canCall| |cmd#1@@2| |deps#1@@2| |e#1@@3|) (|M0.__default.DomSt#canCall| (Lit BoxType |stC#0@@4|))))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |845|
 :pattern ( (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@3|))
)) (= (M0.__default.ConsistentCache (Lit BoxType |stC#0@@4|)) (forall ((|cmd#1@@3| T@U) (|deps#1@@3| T@U) (|e#1@@4| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@3| (TSeq TChar)) ($Is SetType |deps#1@@3| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@4| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@4|)) (M0.__default.Hash (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@4|))) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |stC#0@@4|)) (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@4|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |844|
 :pattern ( (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@4|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :weight 3
 :skolemid |846|
 :pattern ( (M0.__default.ConsistentCache (Lit BoxType |stC#0@@4|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|stOrig#0@@6| T@U) (|sts#0@@9| T@U) (|fun#0@@3| T@U) (|args#0@@9| T@U) (|useCache#0@@11| Bool) ) (!  (=> (or (|M0.__default.evalCompatCheckCore#canCall| |stOrig#0@@6| |sts#0@@9| |fun#0@@3| |args#0@@9| |useCache#0@@11|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($IsBox |stOrig#0@@6| Tclass.M0.State) ($Is SetType |sts#0@@9| (TSet Tclass.M0.State))) ($Is DatatypeTypeType |fun#0@@3| Tclass.M0.Expression)) ($Is SeqType |args#0@@9| (TSeq Tclass.M0.Expression))) (not (|Set#Equal| |sts#0@@9| |Set#Empty|))))) ($Is DatatypeTypeType (M0.__default.evalCompatCheckCore |stOrig#0@@6| |sts#0@@9| |fun#0@@3| |args#0@@9| |useCache#0@@11|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.479:38|
 :skolemid |1228|
 :pattern ( (M0.__default.evalCompatCheckCore |stOrig#0@@6| |sts#0@@9| |fun#0@@3| |args#0@@9| |useCache#0@@11|))
))))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= (|#M0.Expression.exprAnd| (Lit DatatypeTypeType |a#44#0#0|) (Lit DatatypeTypeType |a#44#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprAnd| |a#44#0#0| |a#44#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1868|
 :pattern ( (|#M0.Expression.exprAnd| (Lit DatatypeTypeType |a#44#0#0|) (Lit DatatypeTypeType |a#44#1#0|)))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (|#M0.Expression.exprOr| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprOr| |a#52#0#0| |a#52#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1881|
 :pattern ( (|#M0.Expression.exprOr| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (|#M0.Expression.exprInvocation| (Lit DatatypeTypeType |a#60#0#0|) (Lit SeqType |a#60#1#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprInvocation| |a#60#0#0| |a#60#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1894|
 :pattern ( (|#M0.Expression.exprInvocation| (Lit DatatypeTypeType |a#60#0#0|) (Lit SeqType |a#60#1#0|)))
)))
(assert (forall ((|a#148#0#0| T@U) (|a#148#1#0| T@U) ) (! (= (|#M0.Tuple.Pair| (Lit BoxType |a#148#0#0|) (Lit BoxType |a#148#1#0|)) (Lit DatatypeTypeType (|#M0.Tuple.Pair| |a#148#0#0| |a#148#1#0|)))
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2040|
 :pattern ( (|#M0.Tuple.Pair| (Lit BoxType |a#148#0#0|) (Lit BoxType |a#148#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |a#23#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| |a#23#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1832|
 :pattern ( (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |a#23#0#0|)))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (|#M0.Expression.exprIdentifier| (Lit BoxType |a#29#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#29#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1842|
 :pattern ( (|#M0.Expression.exprIdentifier| (Lit BoxType |a#29#0#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) ) (! (= (|#M0.Expression.exprError| (Lit DatatypeTypeType |a#69#0#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprError| |a#69#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1908|
 :pattern ( (|#M0.Expression.exprError| (Lit DatatypeTypeType |a#69#0#0|)))
)))
(assert (forall ((|a#91#0#0| Int) ) (! (= (|#M0.Literal.litNumber| (LitInt |a#91#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litNumber| |a#91#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1940|
 :pattern ( (|#M0.Literal.litNumber| (LitInt |a#91#0#0|)))
)))
(assert (forall ((|a#96#0#0| T@U) ) (! (= (|#M0.Literal.litString| (Lit SeqType |a#96#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litString| |a#96#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1949|
 :pattern ( (|#M0.Literal.litString| (Lit SeqType |a#96#0#0|)))
)))
(assert (forall ((|a#103#0#0| T@U) ) (! (= (|#M0.Literal.litPrimitive| (Lit DatatypeTypeType |a#103#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litPrimitive| |a#103#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1960|
 :pattern ( (|#M0.Literal.litPrimitive| (Lit DatatypeTypeType |a#103#0#0|)))
)))
(assert (forall ((|a#109#0#0| T@U) ) (! (= (|#M0.Literal.litArrOfPaths| (Lit SetType |a#109#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#109#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1970|
 :pattern ( (|#M0.Literal.litArrOfPaths| (Lit SetType |a#109#0#0|)))
)))
(assert (forall ((|a#115#0#0| T@U) ) (! (= (|#M0.Literal.litArrOfStrings| (Lit SetType |a#115#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#115#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1980|
 :pattern ( (|#M0.Literal.litArrOfStrings| (Lit SetType |a#115#0#0|)))
)))
(assert (forall ((|a#121#0#0| T@U) ) (! (= (|#M0.Literal.litArray| (Lit SeqType |a#121#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArray| |a#121#0#0|)))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1990|
 :pattern ( (|#M0.Literal.litArray| (Lit SeqType |a#121#0#0|)))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((d@@64 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M0.Literal.litArrOfStrings_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.M0.Literal $h@@35))) ($IsAlloc SetType (M0.Literal.strs d@@64) (TSet (TSeq TChar)) $h@@35))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsAlloc SetType (M0.Literal.strs d@@64) (TSet (TSeq TChar)) $h@@35))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@7| T@U) (|stCombined#0@@4| T@U) (|args#0@@10| T@U) (|useCache#0@@12| T@U) ) (!  (=> (or (|M0.__default.evalCore#canCall| (Lit BoxType |stOrig#0@@7|) (Lit BoxType |stCombined#0@@4|) (Lit SeqType |args#0@@10|) (U_2_bool (Lit boolType |useCache#0@@12|))) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@7| Tclass.M0.State) ($IsBox |stCombined#0@@4| Tclass.M0.State)) ($Is SeqType |args#0@@10| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| (Lit SeqType |args#0@@10|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@10|) (Lit BoxType |stCombined#0@@4|)))) (=> (and (= (|Seq#Length| (Lit SeqType |args#0@@10|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@10|) (Lit BoxType |stCombined#0@@4|))) (let ((|exps#2@@0| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 2)))))))
(let ((|deps#2@@0| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 1)))))))
(let ((|cmd#2@@0| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 0)))))))
 (and (=> (not (U_2_bool (Lit boolType |useCache#0@@12|))) (and (|M0.__default.exec#canCall| |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@4|)) (let ((|ps#4| (M0.__default.exec |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@4|))))
 (and (M0.Tuple.Pair_q |ps#4|) (M0.Tuple.Pair_q |ps#4|))))) (=> (U_2_bool (Lit boolType |useCache#0@@12|)) (and (|M0.__default.ConsistentCache#canCall| (Lit BoxType |stCombined#0@@4|)) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.ConsistentCache (Lit BoxType |stCombined#0@@4|))))) (and (|M0.__default.execC#canCall| |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@4|)) (let ((|ps#5| (M0.__default.execC |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@4|))))
 (and (M0.Tuple.Pair_q |ps#5|) (M0.Tuple.Pair_q |ps#5|))))))))))))) (= (M0.__default.evalCore (Lit BoxType |stOrig#0@@7|) (Lit BoxType |stCombined#0@@4|) (Lit SeqType |args#0@@10|) (U_2_bool (Lit boolType |useCache#0@@12|))) (ite  (and (= (|Seq#Length| (Lit SeqType |args#0@@10|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@10|) (Lit BoxType |stCombined#0@@4|))) (let ((|exps#2@@1| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 2)))))))
(let ((|deps#2@@1| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 1)))))))
(let ((|cmd#2@@1| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@10|) (LitInt 0)))))))
(ite  (not (U_2_bool (Lit boolType |useCache#0@@12|))) (let ((|ps#4@@0| (M0.__default.exec |cmd#2@@1| |deps#2@@1| |exps#2@@1| (Lit BoxType |stCombined#0@@4|))))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#4@@0|))))) (M0.Tuple.snd |ps#4@@0|))) (ite (M0.__default.ConsistentCache (Lit BoxType |stCombined#0@@4|)) (let ((|ps#5@@0| (M0.__default.execC |cmd#2@@1| |deps#2@@1| |exps#2@@1| (Lit BoxType |stCombined#0@@4|))))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#5@@0|))))) (M0.Tuple.snd |ps#5@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |stOrig#0@@7|))))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) (Lit BoxType |stOrig#0@@7|))))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :weight 3
 :skolemid |1242|
 :pattern ( (M0.__default.evalCore (Lit BoxType |stOrig#0@@7|) (Lit BoxType |stCombined#0@@4|) (Lit SeqType |args#0@@10|) (U_2_bool (Lit boolType |useCache#0@@12|))))
))))
(assert (forall ((|a#114#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal) ($Is SetType |a#114#0#0@@0| (TSet (TSeq TChar))))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1977|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@65 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M0.Expression.exprInvocation_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.M0.Expression $h@@36))) ($IsAlloc SeqType (M0.Expression.args d@@65) (TSeq Tclass.M0.Expression) $h@@36))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( ($IsAlloc SeqType (M0.Expression.args d@@65) (TSeq Tclass.M0.Expression) $h@@36))
)))
(assert (forall ((d@@66 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M0.Literal.litArrOfPaths_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.M0.Literal $h@@37))) ($IsAlloc SetType (M0.Literal.paths d@@66) (TSet Tclass.M0.Path) $h@@37))
 :qid |unknown.0:0|
 :skolemid |1969|
 :pattern ( ($IsAlloc SetType (M0.Literal.paths d@@66) (TSet Tclass.M0.Path) $h@@37))
)))
(assert (forall ((d@@67 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M0.Literal.litArray_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.M0.Literal $h@@38))) ($IsAlloc SeqType (M0.Literal.arr d@@67) (TSeq Tclass.M0.Expression) $h@@38))
 :qid |unknown.0:0|
 :skolemid |1989|
 :pattern ( ($IsAlloc SeqType (M0.Literal.arr d@@67) (TSeq Tclass.M0.Expression) $h@@38))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M0._default.PickOne$T@@3 T@U) ($Heap@@7 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M0.__default.PickOne#canCall| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@7) ($Is SetType |s#0@@2| (TSet M0._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M0.__default.PickOne M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |792|
 :pattern ( (M0.__default.PickOne M0._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((h@@3 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc boolType v@@6 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@6 TBool h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc charType v@@7 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@7 TChar h@@5))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@8| T@U) (|stCombined#0@@5| T@U) (|args#0@@11| T@U) (|useCache#0@@13| Bool) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0@@8| |stCombined#0@@5| |args#0@@11| |useCache#0@@13|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@8| Tclass.M0.State) ($IsBox |stCombined#0@@5| Tclass.M0.State)) ($Is SeqType |args#0@@11| (TSeq Tclass.M0.Expression))))) ($Is DatatypeTypeType (M0.__default.evalCore |stOrig#0@@8| |stCombined#0@@5| |args#0@@11| |useCache#0@@13|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :skolemid |1237|
 :pattern ( (M0.__default.evalCore |stOrig#0@@8| |stCombined#0@@5| |args#0@@11| |useCache#0@@13|))
))))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((s@@2 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@4))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@4))))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |fun#0@@4| () T@U)
(declare-fun |sts#0@@10| () T@U)
(declare-fun $Heap@@8 () T@U)
(declare-fun |useCache#0@@14| () Bool)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |stCombined#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |stOrig#0@@9| () T@U)
(declare-fun |args#0@@12| () T@U)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.evalCompatCheckCore)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon17_Else_correct true))
(let ((anon17_Then_correct true))
(let ((anon16_Then_correct  (=> (and (M0.Expression.exprLiteral_q |fun#0@@4|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun#0@@4|))) (and (=> (= (ControlFlow 0 6) (- 0 8)) (M0.Expression.exprLiteral_q |fun#0@@4|)) (=> (M0.Expression.exprLiteral_q |fun#0@@4|) (and (=> (= (ControlFlow 0 6) (- 0 7)) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun#0@@4|))) (=> (M0.Literal.litPrimitive_q (M0.Expression.lit |fun#0@@4|)) (and (=> (= (ControlFlow 0 6) 4) anon17_Then_correct) (=> (= (ControlFlow 0 6) 5) anon17_Else_correct)))))))))
(let ((anon16_Else_correct true))
(let ((anon15_Else_correct  (=> (not (M0.Expression.exprLiteral_q |fun#0@@4|)) (and (=> (= (ControlFlow 0 11) 6) anon16_Then_correct) (=> (= (ControlFlow 0 11) 3) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (M0.Expression.exprLiteral_q |fun#0@@4|) (and (=> (= (ControlFlow 0 9) (- 0 10)) (M0.Expression.exprLiteral_q |fun#0@@4|)) (=> (M0.Expression.exprLiteral_q |fun#0@@4|) (and (=> (= (ControlFlow 0 9) 6) anon16_Then_correct) (=> (= (ControlFlow 0 9) 3) anon16_Else_correct)))))))
(let ((anon14_Else_correct  (=> (M0.__default.Compatible |sts#0@@10|) (=> (and ($IsAlloc SetType |sts#0@@10| (TSet Tclass.M0.State) $Heap@@8) ($IsAlloc boolType (bool_2_U |useCache#0@@14|) TBool $Heap@@8)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (not (|Set#Equal| |sts#0@@10| |Set#Empty|))) (=> (and (not (|Set#Equal| |sts#0@@10| |Set#Empty|)) (|M0.__default.Combine#canCall| |sts#0@@10| |useCache#0@@14|)) (=> (and (and (= |let#0#0#0| (M0.__default.Combine ($LS $LZ) reveal_M0._default.Combine |sts#0@@10| |useCache#0@@14|)) (|M0.__default.Combine#canCall| |sts#0@@10| |useCache#0@@14|)) (and ($IsBox |let#0#0#0| Tclass.M0.State) (= |stCombined#Z#0@0| |let#0#0#0|))) (and (=> (= (ControlFlow 0 12) 9) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct)))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (and ($IsAlloc SetType |sts#0@@10| (TSet Tclass.M0.State) $Heap@@8) (|M0.__default.Compatible#canCall| |sts#0@@10|)) (and (=> (= (ControlFlow 0 14) 2) anon14_Then_correct) (=> (= (ControlFlow 0 14) 12) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@8 alloc false)) (not (|Set#Equal| |sts#0@@10| |Set#Empty|))) (and (=> (= (ControlFlow 0 15) 1) anon13_Then_correct) (=> (= (ControlFlow 0 15) 14) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@8) ($IsHeapAnchor $Heap@@8)) (and ($IsBox |stOrig#0@@9| Tclass.M0.State) ($Is SetType |sts#0@@10| (TSet Tclass.M0.State)))) (and (and ($Is DatatypeTypeType |fun#0@@4| Tclass.M0.Expression) ($Is SeqType |args#0@@12| (TSeq Tclass.M0.Expression))) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
