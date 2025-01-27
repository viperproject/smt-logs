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
(declare-fun M0.__default.ExtendsLimit (T@U T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M0.__default.ExtendsLimit#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#12| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |#M0.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |#M0.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |$IsA#M0.Tuple| (T@U) Bool)
(declare-fun M0.Tuple.Pair_q (T@U) Bool)
(declare-fun M0.__default.Post (Bool T@U T@U T@U T@U) Bool)
(declare-fun |M0.__default.Post#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |M0.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun M0.__default.Oracle (T@U T@U) T@U)
(declare-fun |M0.Expression#Equal| (T@U T@U) Bool)
(declare-fun M0.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M0.Expression.id (T@U) T@U)
(declare-fun |M0.Literal#Equal| (T@U T@U) Bool)
(declare-fun M0.Literal.litNumber_q (T@U) Bool)
(declare-fun M0.Literal.num (T@U) Int)
(declare-fun |#M0.Literal.litString| (T@U) T@U)
(declare-fun |#M0.Literal.litArray| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M0.Expression.cond (T@U) T@U)
(declare-fun M0.Expression.ifTrue (T@U) T@U)
(declare-fun M0.Expression.ifFalse (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass.M0.Tuple (T@U T@U) T@U)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun |M0.Tuple#Equal| (T@U T@U) Bool)
(declare-fun M0.Tuple.fst (T@U) T@U)
(declare-fun M0.Tuple.snd (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#M0.Literal.litTrue| () T@U)
(declare-fun |#M0.Literal.litFalse| () T@U)
(declare-fun |#M0.Literal.litUndefined| () T@U)
(declare-fun |#M0.Literal.litNull| () T@U)
(declare-fun |#M0.Primitive.primCreatePath| () T@U)
(declare-fun |#M0.Primitive.primExec| () T@U)
(declare-fun |#M0.Reason.rValidity| () T@U)
(declare-fun |#M0.Reason.rInconsistentCache| () T@U)
(declare-fun M0.__default.ConsistentCache (T@U) Bool)
(declare-fun |M0.__default.ConsistentCache#canCall| (T@U) Bool)
(declare-fun |M0.__default.Hash#canCall| (T@U) Bool)
(declare-fun |M0.__default.DomC#canCall| (T@U) Bool)
(declare-fun M0.__default.DomC (T@U) T@U)
(declare-fun M0.__default.Hash (T@U) T@U)
(declare-fun |#M0.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Tclass.M0.Literal () T@U)
(declare-fun Tclass.M0.Reason () T@U)
(declare-fun M0.Expression.exprIf_q (T@U) Bool)
(declare-fun M0.__default.UpdateC (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.UpdateC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.StateCorrespondence (Bool T@U T@U) Bool)
(declare-fun |M0.__default.StateCorrespondence#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.Extends (Bool T@U T@U) Bool)
(declare-fun |M0.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun |M0.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |M0.Reason#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M0.__default.evalCore (T@U T@U T@U Bool) T@U)
(declare-fun |M0.__default.evalCore#canCall| (T@U T@U T@U Bool) Bool)
(declare-fun |M0.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.execC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M0.__default.execC (T@U T@U T@U T@U) T@U)
(declare-fun |#M0.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun |#M0.Expression.exprError| (T@U) T@U)
(declare-fun |$IsA#M0.Expression| (T@U) Bool)
(declare-fun M0.Expression.exprAnd_q (T@U) Bool)
(declare-fun M0.Expression.exprOr_q (T@U) Bool)
(declare-fun M0.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M0.Expression.exprError_q (T@U) Bool)
(declare-fun M0.__default.ValidState (T@U) Bool)
(declare-fun |M0.__default.ValidState#canCall| (T@U) Bool)
(declare-fun M0.__default.WellFounded (T@U) Bool)
(declare-fun |M0.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun M0.Literal.litTrue_q (T@U) Bool)
(declare-fun M0.Literal.litFalse_q (T@U) Bool)
(declare-fun M0.Literal.litUndefined_q (T@U) Bool)
(declare-fun M0.Literal.litNull_q (T@U) Bool)
(declare-fun M0.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M0.Literal.litArray_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M0.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M0.Literal.litNumber| (Int) T@U)
(declare-fun |#M0.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun Tclass.M0.Identifier () T@U)
(declare-fun M0.Expression.r (T@U) T@U)
(declare-fun M0.Literal.prim (T@U) T@U)
(declare-fun M0.Literal.arr (T@U) T@U)
(declare-fun M0.__default.OneToOne (T@U T@U T@U T@U) Bool)
(declare-fun |M0.__default.OneToOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass.M0.HashValue () T@U)
(declare-fun charType () T@T)
(declare-fun M0.Expression.conj0 (T@U) T@U)
(declare-fun M0.Expression.conj1 (T@U) T@U)
(declare-fun M0.Expression.disj0 (T@U) T@U)
(declare-fun M0.Expression.disj1 (T@U) T@U)
(declare-fun M0.Expression.fun (T@U) T@U)
(declare-fun M0.Expression.args (T@U) T@U)
(declare-fun Tclass.M0.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M0.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass.M0.Expression Tagclass.M0.Tuple Tagclass.M0.Primitive |##M0.Expression.exprLiteral| Tagclass.M0.Literal |##M0.Expression.exprIdentifier| |##M0.Expression.exprIf| |##M0.Expression.exprAnd| |##M0.Expression.exprOr| |##M0.Expression.exprInvocation| |##M0.Expression.exprError| Tagclass.M0.Reason |##M0.Literal.litTrue| |##M0.Literal.litFalse| |##M0.Literal.litUndefined| |##M0.Literal.litNull| |##M0.Literal.litNumber| |##M0.Literal.litString| |##M0.Literal.litPrimitive| |##M0.Literal.litArrOfPaths| |##M0.Literal.litArrOfStrings| |##M0.Literal.litArray| |##M0.Primitive.primCreatePath| |##M0.Primitive.primExec| |##M0.Reason.rValidity| |##M0.Reason.rInconsistentCache| |##M0.Tuple.Pair| tytagFamily$Expression tytagFamily$Tuple tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M0.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M0.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M0.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M0.Path))
 :qid |CloudMakeCachedBuildsdfy.248:22|
 :skolemid |1054|
 :pattern ( (M0.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exps#0@@0| T@U) (|st#0@@0| T@U) (|st'#0| T@U) ) (!  (=> (or (|M0.__default.ExtendsLimit#canCall| (Lit SeqType |cmd#0@@1|) (Lit SetType |deps#0@@1|) (Lit SetType |exps#0@@0|) |st#0@@0| |st'#0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@1| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($IsBox |st#0@@0| Tclass.M0.State)) ($IsBox |st'#0| Tclass.M0.State)))) (and (and (|M0.__default.DomSt#canCall| |st'#0|) (and (|M0.__default.DomSt#canCall| |st#0@@0|) (forall ((|e#1| T@U) ) (!  (=> ($Is SeqType |e#1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@0|) ($Box SeqType |e#1|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@1|) (Lit SetType |deps#0@@1|) |e#1|)))
 :qid |CloudMakeCachedBuildsdfy.179:35|
 :skolemid |973|
 :pattern ( (M0.__default.Loc |cmd#0@@1| |deps#0@@1| |e#1|))
 :pattern ( (|Set#IsMember| |exps#0@@0| ($Box SeqType |e#1|)))
)))) (= (M0.__default.ExtendsLimit (Lit SeqType |cmd#0@@1|) (Lit SetType |deps#0@@1|) (Lit SetType |exps#0@@0|) |st#0@@0| |st'#0|) (|Set#Equal| (M0.__default.DomSt |st'#0|) (|Set#Union| (M0.__default.DomSt |st#0@@0|) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@0|) (Lit SeqType |cmd#0@@1|) (Lit SetType |deps#0@@1|) |exps#0@@0| |cmd#0@@1| |deps#0@@1|)))))))
 :qid |CloudMakeCachedBuildsdfy.177:32|
 :weight 3
 :skolemid |974|
 :pattern ( (M0.__default.ExtendsLimit (Lit SeqType |cmd#0@@1|) (Lit SetType |deps#0@@1|) (Lit SetType |exps#0@@0|) |st#0@@0| |st'#0|))
))))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#64#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#64#1#0| i))) (DtRank (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1898|
 :pattern ( (|Seq#Index| |a#64#1#0| i) (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#1|)) (exists ((|e#1@@0| T@U) ) (!  (and (and ($Is SeqType |e#1@@0| |l#0|) (|Set#IsMember| |l#1| ($Box SeqType |e#1@@0|))) (= |$y#1| (M0.__default.Loc |l#2| |l#3| |e#1@@0|)))
 :qid |CloudMakeCachedBuildsdfy.179:35|
 :skolemid |912|
 :pattern ( (M0.__default.Loc |l#5| |l#6| |e#1@@0|))
 :pattern ( (|Set#IsMember| |l#4| ($Box SeqType |e#1@@0|)))
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
(assert (forall ((d T@U) ) (!  (=> (|$IsA#M0.Tuple| d) (M0.Tuple.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |2045|
 :pattern ( (|$IsA#M0.Tuple| d))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|exps#0@@1| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M0.__default.Post#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($IsBox |st#0@@1| Tclass.M0.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@1|)))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@1|)) (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (Lit BoxType |st#0@@1|))) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (Lit BoxType |st#0@@1|))))))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |956|
 :pattern ( (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2|)))
)) (= (M0.__default.Post true (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@1|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2@@0|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@1|)) (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2@@0|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|) (Lit BoxType |st#0@@1|)) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|) (Lit BoxType |st#0@@1|))))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |955|
 :pattern ( (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.171:34|
 :weight 3
 :skolemid |957|
 :pattern ( (M0.__default.Post true (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@1|)))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (M0.Expression.exprIdentifier_q a@@1) (M0.Expression.exprIdentifier_q b@@1)) (= (|M0.Expression#Equal| a@@1 b@@1) (= (M0.Expression.id a@@1) (M0.Expression.id b@@1))))
 :qid |unknown.0:0|
 :skolemid |1914|
 :pattern ( (|M0.Expression#Equal| a@@1 b@@1) (M0.Expression.exprIdentifier_q a@@1))
 :pattern ( (|M0.Expression#Equal| a@@1 b@@1) (M0.Expression.exprIdentifier_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (M0.Literal.litNumber_q a@@2) (M0.Literal.litNumber_q b@@2)) (= (|M0.Literal#Equal| a@@2 b@@2) (= (M0.Literal.num a@@2) (M0.Literal.num b@@2))))
 :qid |unknown.0:0|
 :skolemid |2000|
 :pattern ( (|M0.Literal#Equal| a@@2 b@@2) (M0.Literal.litNumber_q a@@2))
 :pattern ( (|M0.Literal#Equal| a@@2 b@@2) (M0.Literal.litNumber_q b@@2))
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
(assert (forall ((a@@3 T@U) (b@@3 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@3 b@@3) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@3 b@@3) (|Set#IsMember| b@@3 y@@1))
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
(assert (forall ((M0.Tuple$A T@U) (M0.Tuple$B T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)) (M0.Tuple.Pair_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2046|
 :pattern ( (M0.Tuple.Pair_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M0.__default.Oracle#canCall| |p#0| |st#0@@2|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0@@2| Tclass.M0.State)))) ($IsBox (M0.__default.Oracle |p#0| |st#0@@2|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.186:25|
 :skolemid |984|
 :pattern ( (M0.__default.Oracle |p#0| |st#0@@2|))
))))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|M0.Tuple#Equal| a@@4 b@@4)  (and (= (M0.Tuple.fst a@@4) (M0.Tuple.fst b@@4)) (= (M0.Tuple.snd a@@4) (M0.Tuple.snd b@@4))))
 :qid |unknown.0:0|
 :skolemid |2047|
 :pattern ( (|M0.Tuple#Equal| a@@4 b@@4))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M0.Literal.litTrue|) |##M0.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M0.Literal.litFalse|) |##M0.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M0.Literal.litUndefined|) |##M0.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M0.Literal.litNull|) |##M0.Literal.litNull|))
(assert (= (DatatypeCtorId |#M0.Primitive.primCreatePath|) |##M0.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M0.Primitive.primExec|) |##M0.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M0.Reason.rValidity|) |##M0.Reason.rValidity|))
(assert (= (DatatypeCtorId |#M0.Reason.rInconsistentCache|) |##M0.Reason.rInconsistentCache|))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#59#0#0| Tclass.M0.Expression) ($Is SeqType |a#59#1#0| (TSeq Tclass.M0.Expression))))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1890|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| |stC#0|) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0| Tclass.M0.State))) (and (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|e#0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M0.Path))) ($Is SeqType |e#0| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#0@@3| |deps#0@@3| |e#0|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0|))) (|M0.__default.DomC#canCall| |stC#0|)) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0|))) (and (|M0.__default.Loc#canCall| |cmd#0@@3| |deps#0@@3| |e#0|) (|M0.__default.DomSt#canCall| |stC#0|)))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |842|
 :pattern ( (M0.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0|))
)) (= (M0.__default.ConsistentCache |stC#0|) (forall ((|cmd#0@@4| T@U) (|deps#0@@4| T@U) (|e#0@@0| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#0@@4| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M0.Path))) ($Is SeqType |e#0@@0| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC |stC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|))) (|Set#IsMember| (M0.__default.DomSt |stC#0|) (M0.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |841|
 :pattern ( (M0.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :skolemid |843|
 :pattern ( (M0.__default.ConsistentCache |stC#0|))
))))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5) (|Set#Union| a@@5 b@@5))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@6) o)  (and (|Set#IsMember| a@@6 o) (not (|Set#IsMember| b@@6 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@6) o))
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
(assert ($Is DatatypeTypeType |#M0.Reason.rValidity| Tclass.M0.Reason))
(assert ($Is DatatypeTypeType |#M0.Reason.rInconsistentCache| Tclass.M0.Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@5| T@U) (|deps#0@@5| T@U) (|exps#0@@2| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M0.__default.Post#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@2|) |st#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@5| (TSeq TChar)) ($Is SetType |deps#0@@5| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($IsBox |st#0@@3| Tclass.M0.State)))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is SeqType |e#1@@1| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@1|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|) (|M0.__default.DomSt#canCall| |st#0@@3|))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@1|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@3|) (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|) |st#0@@3|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@1|) |st#0@@3|)))))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |953|
 :pattern ( (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#1@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1@@1|)))
)) (= (M0.__default.Post true (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@2|) |st#0@@3|) (forall ((|e#1@@2| T@U) ) (!  (=> ($Is SeqType |e#1@@2| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@2|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@3|) (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@2|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@2|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@2|) |st#0@@3|) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#1@@2|) |st#0@@3|)))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |952|
 :pattern ( (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#1@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1@@2|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.171:34|
 :weight 3
 :skolemid |954|
 :pattern ( (M0.__default.Post true (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@2|) |st#0@@3|))
))))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (M0.Expression.exprIf_q a@@7) (M0.Expression.exprIf_q b@@7)) (= (|M0.Expression#Equal| a@@7 b@@7)  (and (and (|M0.Expression#Equal| (M0.Expression.cond a@@7) (M0.Expression.cond b@@7)) (|M0.Expression#Equal| (M0.Expression.ifTrue a@@7) (M0.Expression.ifTrue b@@7))) (|M0.Expression#Equal| (M0.Expression.ifFalse a@@7) (M0.Expression.ifFalse b@@7)))))
 :qid |unknown.0:0|
 :skolemid |1915|
 :pattern ( (|M0.Expression#Equal| a@@7 b@@7) (M0.Expression.exprIf_q a@@7))
 :pattern ( (|M0.Expression#Equal| a@@7 b@@7) (M0.Expression.exprIf_q b@@7))
)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@6| T@U) (|deps#0@@6| T@U) (|exps#0@@3| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M0.__default.UpdateC#canCall| |cmd#0@@6| |deps#0@@6| |exps#0@@3| |st#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($Is SetType |deps#0@@6| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($IsBox |st#0@@4| Tclass.M0.State)))) (and (let ((|st'#0@@0| (M0.__default.UpdateC |cmd#0@@6| |deps#0@@6| |exps#0@@3| |st#0@@4|)))
 (and (and (and (|Set#Equal| (M0.__default.DomSt |st#0@@4|) (M0.__default.DomSt |st'#0@@0|)) (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@0|) (= (M0.__default.GetSt |p#0@@0| |st#0@@4|) (M0.__default.GetSt |p#0@@0| |st'#0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.25:42|
 :skolemid |711|
 :pattern ( (M0.__default.GetSt |p#0@@0| |st'#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@0| |st#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@0|))
))) (=> (M0.__default.ConsistentCache |st#0@@4|) (M0.__default.ConsistentCache |st'#0@@0|))) (forall ((|e#0@@1| T@U) ) (!  (=> ($Is SeqType |e#0@@1| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@1|)) (|Set#IsMember| (M0.__default.DomC |st'#0@@0|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@1|)))))
 :qid |CloudMakeCachedBuildsdfy.30:14|
 :skolemid |712|
 :pattern ( (M0.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@1|)))
)))) ($IsBox (M0.__default.UpdateC |cmd#0@@6| |deps#0@@6| |exps#0@@3| |st#0@@4|) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.22:26|
 :skolemid |713|
 :pattern ( (M0.__default.UpdateC |cmd#0@@6| |deps#0@@6| |exps#0@@3| |st#0@@4|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|stC#0@@0| T@U) ) (!  (=> (or (|M0.__default.StateCorrespondence#canCall| |st#0@@5| |stC#0@@0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@5| Tclass.M0.State) ($IsBox |stC#0@@0| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| |st#0@@5|) (|M0.__default.DomSt#canCall| |stC#0@@0|)) (=> (|Set#Subset| (M0.__default.DomSt |st#0@@5|) (M0.__default.DomSt |stC#0@@0|)) (and (forall ((|p#0@@1| T@U) ) (!  (=> ($IsBox |p#0@@1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@5|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@1|) (and (|M0.__default.GetSt#canCall| |p#0@@1| |stC#0@@0|) (|M0.__default.GetSt#canCall| |p#0@@1| |st#0@@5|)))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |859|
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@1| |stC#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@1|))
)) (=> (forall ((|p#0@@2| T@U) ) (!  (=> ($IsBox |p#0@@2| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@2|) (= (M0.__default.GetSt |p#0@@2| |stC#0@@0|) (M0.__default.GetSt |p#0@@2| |st#0@@5|))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |861|
 :pattern ( (M0.__default.GetSt |p#0@@2| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@2| |stC#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@2|))
)) (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@5|) (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1|)) (and (|M0.__default.DomSt#canCall| |stC#0@@0|) (=> (|Set#IsMember| (M0.__default.DomSt |stC#0@@0|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |stC#0@@0|) (|M0.__default.Oracle#canCall| |p#1| |st#0@@5|)))))))
 :qid |CloudMakeCachedBuildsdfy.124:13|
 :skolemid |860|
 :pattern ( (M0.__default.Oracle |p#1| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#1| |stC#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stC#0@@0|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1|))
)))))) (= (M0.__default.StateCorrespondence true |st#0@@5| |stC#0@@0|)  (and (and (|Set#Subset| (M0.__default.DomSt |st#0@@5|) (M0.__default.DomSt |stC#0@@0|)) (forall ((|p#0@@3| T@U) ) (!  (=> ($IsBox |p#0@@3| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@3|) (= (M0.__default.GetSt |p#0@@3| |stC#0@@0|) (M0.__default.GetSt |p#0@@3| |st#0@@5|))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |857|
 :pattern ( (M0.__default.GetSt |p#0@@3| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |stC#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#0@@3|))
))) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |stC#0@@0|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |stC#0@@0|) (M0.__default.Oracle |p#1@@0| |st#0@@5|))))
 :qid |CloudMakeCachedBuildsdfy.124:13|
 :skolemid |858|
 :pattern ( (M0.__default.Oracle |p#1@@0| |st#0@@5|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |stC#0@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stC#0@@0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@5|) |p#1@@0|))
))))))
 :qid |CloudMakeCachedBuildsdfy.119:49|
 :skolemid |862|
 :pattern ( (M0.__default.StateCorrespondence true |st#0@@5| |stC#0@@0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@6| T@U) (|st'#0@@1| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| |st#0@@6| |st'#0@@1|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@6| Tclass.M0.State) ($IsBox |st'#0@@1| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| |st#0@@6|) (|M0.__default.DomSt#canCall| |st'#0@@1|)) (=> (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|)) (and (forall ((|p#0@@4| T@U) ) (!  (=> ($IsBox |p#0@@4| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@6|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@4|) (and (|M0.__default.GetSt#canCall| |p#0@@4| |st'#0@@1|) (|M0.__default.GetSt#canCall| |p#0@@4| |st#0@@6|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |991|
 :pattern ( (M0.__default.GetSt |p#0@@4| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@4|))
)) (=> (forall ((|p#0@@5| T@U) ) (!  (=> ($IsBox |p#0@@5| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@5|) (= (M0.__default.GetSt |p#0@@5| |st'#0@@1|) (M0.__default.GetSt |p#0@@5| |st#0@@6|))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |993|
 :pattern ( (M0.__default.GetSt |p#0@@5| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#0@@5| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@5|))
)) (forall ((|p#1@@1| T@U) ) (!  (=> ($IsBox |p#1@@1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@6|) (=> (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#1@@1|)) (and (|M0.__default.DomSt#canCall| |st'#0@@1|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#1@@1|) (and (|M0.__default.GetSt#canCall| |p#1@@1| |st'#0@@1|) (|M0.__default.Oracle#canCall| |p#1@@1| |st#0@@6|)))))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |992|
 :pattern ( (M0.__default.Oracle |p#1@@1| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#1@@1| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#1@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#1@@1|))
)))))) (= (M0.__default.Extends true |st#0@@6| |st'#0@@1|)  (and (and (|Set#Subset| (M0.__default.DomSt |st#0@@6|) (M0.__default.DomSt |st'#0@@1|)) (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@6|) (= (M0.__default.GetSt |p#0@@6| |st'#0@@1|) (M0.__default.GetSt |p#0@@6| |st#0@@6|))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |989|
 :pattern ( (M0.__default.GetSt |p#0@@6| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#0@@6| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#0@@6|))
))) (forall ((|p#1@@2| T@U) ) (!  (=> ($IsBox |p#1@@2| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#1@@2|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#1@@2|)) (= (M0.__default.GetSt |p#1@@2| |st'#0@@1|) (M0.__default.Oracle |p#1@@2| |st#0@@6|))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |990|
 :pattern ( (M0.__default.Oracle |p#1@@2| |st#0@@6|))
 :pattern ( (M0.__default.GetSt |p#1@@2| |st'#0@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@1|) |p#1@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@6|) |p#1@@2|))
))))))
 :qid |CloudMakeCachedBuildsdfy.194:37|
 :skolemid |994|
 :pattern ( (M0.__default.Extends true |st#0@@6| |st'#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@7| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0@@7| |st#0@@7|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@7| Tclass.M0.Path) ($IsBox |st#0@@7| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0@@7|) |p#0@@7|)))) ($IsBox (M0.__default.GetSt |p#0@@7| |st#0@@7|) Tclass.M0.Artifact))
 :qid |CloudMakeCachedBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0@@7| |st#0@@7|))
))))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (! (= (|M0.Expression#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |unknown.0:0|
 :skolemid |1920|
 :pattern ( (|M0.Expression#Equal| a@@8 b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|M0.Literal#Equal| a@@9 b@@9) (= a@@9 b@@9))
 :qid |unknown.0:0|
 :skolemid |2006|
 :pattern ( (|M0.Literal#Equal| a@@9 b@@9))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|M0.Primitive#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |unknown.0:0|
 :skolemid |2016|
 :pattern ( (|M0.Primitive#Equal| a@@10 b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|M0.Reason#Equal| a@@11 b@@11) (= a@@11 b@@11))
 :qid |unknown.0:0|
 :skolemid |2029|
 :pattern ( (|M0.Reason#Equal| a@@11 b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|M0.Tuple#Equal| a@@12 b@@12) (= a@@12 b@@12))
 :qid |unknown.0:0|
 :skolemid |2048|
 :pattern ( (|M0.Tuple#Equal| a@@12 b@@12))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|p#0@@8| T@U) (|st#0@@8| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@8| |st#0@@8|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@8| Tclass.M0.Path) ($IsAllocBox |p#0@@8| Tclass.M0.Path $Heap)) (and ($IsBox |st#0@@8| Tclass.M0.State) ($IsAllocBox |st#0@@8| Tclass.M0.State $Heap))) (|Set#IsMember| (M0.__default.DomSt |st#0@@8|) |p#0@@8|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (M0.__default.GetSt |p#0@@8| |st#0@@8|) Tclass.M0.Artifact $Heap))
 :qid |CloudMakeCachedBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@8| |st#0@@8|) Tclass.M0.Artifact $Heap))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@0| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@9|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M0.Primitive) ($Is SeqType |args#0@@0| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@9| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@0|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@0|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#5|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#5|)) (=> (M0.Expression.exprLiteral_q |deps#5|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#5|)) (=> (M0.Expression.exprLiteral_q |exps#5|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#5|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@9|)) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.__default.DomSt (Lit BoxType |st#0@@9|))) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#5|)) (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.Literal.strs (M0.Expression.lit |exps#5|)) (Lit BoxType |st#0@@9|)))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@9|)) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@0|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#4|) (M0.Literal.litString_q (M0.Expression.lit |cmd#4|))) (M0.Expression.exprLiteral_q |deps#4|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#4|))) (M0.Expression.exprLiteral_q |exps#4|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#4|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.__default.DomSt (Lit BoxType |st#0@@9|)))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#4|)) (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.Literal.strs (M0.Expression.lit |exps#4|)) (Lit BoxType |st#0@@9|))))))))))
 :qid |CloudMakeCachedBuildsdfy.533:29|
 :weight 3
 :skolemid |1274|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@0|) (Lit BoxType |st#0@@9|)))
))))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0| T@U) (|stCombined#0| T@U) (|args#0@@1| T@U) (|useCache#0| Bool) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0| Tclass.M0.State) ($IsBox |stCombined#0| Tclass.M0.State)) ($Is SeqType |args#0@@1| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|))) (=> (and (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|)) (let ((|exps#0@@4| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))))
(let ((|deps#0@@7| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))))
(let ((|cmd#0@@7| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))))
 (and (=> (not |useCache#0|) (and (|M0.__default.exec#canCall| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stCombined#0|) (let ((|ps#0| (M0.__default.exec |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stCombined#0|)))
 (and (M0.Tuple.Pair_q |ps#0|) (M0.Tuple.Pair_q |ps#0|))))) (=> |useCache#0| (and (|M0.__default.ConsistentCache#canCall| |stCombined#0|) (=> (M0.__default.ConsistentCache |stCombined#0|) (and (|M0.__default.execC#canCall| |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stCombined#0|) (let ((|ps#1| (M0.__default.execC |cmd#0@@7| |deps#0@@7| |exps#0@@4| |stCombined#0|)))
 (and (M0.Tuple.Pair_q |ps#1|) (M0.Tuple.Pair_q |ps#1|))))))))))))) (= (M0.__default.evalCore |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0|) (ite  (and (= (|Seq#Length| |args#0@@1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@1| |stCombined#0|)) (let ((|exps#0@@5| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))))
(let ((|deps#0@@8| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))))
(let ((|cmd#0@@8| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))))
(ite  (not |useCache#0|) (let ((|ps#0@@0| (M0.__default.exec |cmd#0@@8| |deps#0@@8| |exps#0@@5| |stCombined#0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#0@@0|))))) (M0.Tuple.snd |ps#0@@0|))) (ite (M0.__default.ConsistentCache |stCombined#0|) (let ((|ps#1@@0| (M0.__default.execC |cmd#0@@8| |deps#0@@8| |exps#0@@5| |stCombined#0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#1@@0|))))) (M0.Tuple.snd |ps#1@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stOrig#0|)))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :skolemid |1240|
 :pattern ( (M0.__default.evalCore |stOrig#0| |stCombined#0| |args#0@@1| |useCache#0|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@9| T@U) (|exps#0@@6| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M0.__default.Post#canCall| |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@9| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($IsBox |st#0@@10| Tclass.M0.State)))) (and (forall ((|e#0@@2| T@U) ) (!  (=> ($Is SeqType |e#0@@2| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)) (and (|M0.__default.Loc#canCall| |cmd#0@@9| |deps#0@@9| |e#0@@2|) (|M0.__default.DomSt#canCall| |st#0@@10|))) (=> (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@10|) (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@2|))) (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@9| |deps#0@@9| |e#0@@2|) (|M0.__default.GetSt#canCall| (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@2|) |st#0@@10|)) (and (|M0.__default.Loc#canCall| |cmd#0@@9| |deps#0@@9| |e#0@@2|) (|M0.__default.Oracle#canCall| (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@2|) |st#0@@10|)))))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |950|
 :pattern ( (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)))
)) (= (M0.__default.Post true |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@10|) (forall ((|e#0@@3| T@U) ) (!  (=> ($Is SeqType |e#0@@3| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@3|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@10|) (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@3|))) (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@3|)) (= (M0.__default.GetSt (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@3|) |st#0@@10|) (M0.__default.Oracle (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@3|) |st#0@@10|)))))
 :qid |CloudMakeCachedBuildsdfy.173:12|
 :skolemid |949|
 :pattern ( (M0.__default.Loc |cmd#0@@9| |deps#0@@9| |e#0@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@3|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.171:34|
 :skolemid |951|
 :pattern ( (M0.__default.Post true |cmd#0@@9| |deps#0@@9| |exps#0@@6| |st#0@@10|))
))))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|Set#Subset| a@@13 b@@13) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@13 o@@0) (|Set#IsMember| b@@13 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@13 o@@0))
 :pattern ( (|Set#IsMember| b@@13 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@13 b@@13))
)))
(assert (forall ((M0.Tuple$A@@1 T@U) (M0.Tuple$B@@1 T@U) (|a#147#0#0@@0| T@U) (|a#147#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0@@0| |a#147#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@6)  (and ($IsAllocBox |a#147#0#0@@0| M0.Tuple$A@@1 $h@@6) ($IsAllocBox |a#147#1#0@@0| M0.Tuple$B@@1 $h@@6))))
 :qid |unknown.0:0|
 :skolemid |2035|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#147#0#0@@0| |a#147#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@6))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M0.Expression| d@@1) (or (or (or (or (or (or (M0.Expression.exprLiteral_q d@@1) (M0.Expression.exprIdentifier_q d@@1)) (M0.Expression.exprIf_q d@@1)) (M0.Expression.exprAnd_q d@@1)) (M0.Expression.exprOr_q d@@1)) (M0.Expression.exprInvocation_q d@@1)) (M0.Expression.exprError_q d@@1)))
 :qid |unknown.0:0|
 :skolemid |1911|
 :pattern ( (|$IsA#M0.Expression| d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@11| T@U) ) (!  (=> (or (|M0.__default.ValidState#canCall| |st#0@@11|) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@11| Tclass.M0.State))) (and (forall ((|p#0@@9| T@U) ) (!  (=> ($IsBox |p#0@@9| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| |st#0@@11|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@11|) |p#0@@9|) (|M0.__default.WellFounded#canCall| |p#0@@9|))))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |726|
 :pattern ( (M0.__default.WellFounded |p#0@@9|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@11|) |p#0@@9|))
)) (= (M0.__default.ValidState |st#0@@11|) (forall ((|p#0@@10| T@U) ) (!  (=> ($IsBox |p#0@@10| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@11|) |p#0@@10|) (M0.__default.WellFounded |p#0@@10|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |725|
 :pattern ( (M0.__default.WellFounded |p#0@@10|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@11|) |p#0@@10|))
)))))
 :qid |CloudMakeCachedBuildsdfy.33:30|
 :skolemid |727|
 :pattern ( (M0.__default.ValidState |st#0@@11|))
))))
(assert (forall ((d@@2 T@U) ) (! (= (M0.Expression.exprLiteral_q d@@2) (= (DatatypeCtorId d@@2) |##M0.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1825|
 :pattern ( (M0.Expression.exprLiteral_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M0.Expression.exprIdentifier_q d@@3) (= (DatatypeCtorId d@@3) |##M0.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (M0.Expression.exprIdentifier_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M0.Expression.exprIf_q d@@4) (= (DatatypeCtorId d@@4) |##M0.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( (M0.Expression.exprIf_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M0.Expression.exprAnd_q d@@5) (= (DatatypeCtorId d@@5) |##M0.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( (M0.Expression.exprAnd_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (M0.Expression.exprOr_q d@@6) (= (DatatypeCtorId d@@6) |##M0.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( (M0.Expression.exprOr_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (M0.Expression.exprInvocation_q d@@7) (= (DatatypeCtorId d@@7) |##M0.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( (M0.Expression.exprInvocation_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M0.Expression.exprError_q d@@8) (= (DatatypeCtorId d@@8) |##M0.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( (M0.Expression.exprError_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M0.Literal.litTrue_q d@@9) (= (DatatypeCtorId d@@9) |##M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1921|
 :pattern ( (M0.Literal.litTrue_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M0.Literal.litFalse_q d@@10) (= (DatatypeCtorId d@@10) |##M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1924|
 :pattern ( (M0.Literal.litFalse_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M0.Literal.litUndefined_q d@@11) (= (DatatypeCtorId d@@11) |##M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1927|
 :pattern ( (M0.Literal.litUndefined_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M0.Literal.litNull_q d@@12) (= (DatatypeCtorId d@@12) |##M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1930|
 :pattern ( (M0.Literal.litNull_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M0.Literal.litNumber_q d@@13) (= (DatatypeCtorId d@@13) |##M0.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |1934|
 :pattern ( (M0.Literal.litNumber_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M0.Literal.litString_q d@@14) (= (DatatypeCtorId d@@14) |##M0.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |1943|
 :pattern ( (M0.Literal.litString_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M0.Literal.litPrimitive_q d@@15) (= (DatatypeCtorId d@@15) |##M0.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |1954|
 :pattern ( (M0.Literal.litPrimitive_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M0.Literal.litArrOfPaths_q d@@16) (= (DatatypeCtorId d@@16) |##M0.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |1964|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M0.Literal.litArrOfStrings_q d@@17) (= (DatatypeCtorId d@@17) |##M0.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M0.Literal.litArray_q d@@18) (= (DatatypeCtorId d@@18) |##M0.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |1984|
 :pattern ( (M0.Literal.litArray_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M0.Primitive.primCreatePath_q d@@19) (= (DatatypeCtorId d@@19) |##M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2007|
 :pattern ( (M0.Primitive.primCreatePath_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (M0.Primitive.primExec_q d@@20) (= (DatatypeCtorId d@@20) |##M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2009|
 :pattern ( (M0.Primitive.primExec_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (M0.Tuple.Pair_q d@@21) (= (DatatypeCtorId d@@21) |##M0.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |2031|
 :pattern ( (M0.Tuple.Pair_q d@@21))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|a#33#0#0@@0| T@U) (|a#33#1#0@@0| T@U) (|a#33#2#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@7)  (and (and ($IsAlloc DatatypeTypeType |a#33#0#0@@0| Tclass.M0.Expression $h@@7) ($IsAlloc DatatypeTypeType |a#33#1#0@@0| Tclass.M0.Expression $h@@7)) ($IsAlloc DatatypeTypeType |a#33#2#0@@0| Tclass.M0.Expression $h@@7))))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1849|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@7))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (M0.Expression.exprIf_q d@@22) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@22 (|#M0.Expression.exprIf| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |CloudMakeCachedBuildsdfy.228:32|
 :skolemid |1846|
)))
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( (M0.Expression.exprIf_q d@@22))
)))
(assert (forall ((a@@14 T@U) (b@@14 T@U) ) (! (= (|Set#Disjoint| a@@14 b@@14) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@14 o@@1)) (not (|Set#IsMember| b@@14 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@14 o@@1))
 :pattern ( (|Set#IsMember| b@@14 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@14 b@@14))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (M0.Expression.exprAnd_q d@@23) (exists ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= d@@23 (|#M0.Expression.exprAnd| |a#42#0#0| |a#42#1#0|))
 :qid |CloudMakeCachedBuildsdfy.229:33|
 :skolemid |1862|
)))
 :qid |unknown.0:0|
 :skolemid |1863|
 :pattern ( (M0.Expression.exprAnd_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (M0.Expression.exprOr_q d@@24) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@24 (|#M0.Expression.exprOr| |a#50#0#0| |a#50#1#0|))
 :qid |CloudMakeCachedBuildsdfy.230:32|
 :skolemid |1875|
)))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( (M0.Expression.exprOr_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (M0.Expression.exprInvocation_q d@@25) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@25 (|#M0.Expression.exprInvocation| |a#58#0#0| |a#58#1#0|))
 :qid |CloudMakeCachedBuildsdfy.231:40|
 :skolemid |1888|
)))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (M0.Expression.exprInvocation_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (M0.Tuple.Pair_q d@@26) (exists ((|a#146#0#0| T@U) (|a#146#1#0| T@U) ) (! (= d@@26 (|#M0.Tuple.Pair| |a#146#0#0| |a#146#1#0|))
 :qid |CloudMakeCachedBuildsdfy.253:31|
 :skolemid |2032|
)))
 :qid |unknown.0:0|
 :skolemid |2033|
 :pattern ( (M0.Tuple.Pair_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (M0.Literal.litTrue_q d@@27) (= d@@27 |#M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1922|
 :pattern ( (M0.Literal.litTrue_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (M0.Literal.litFalse_q d@@28) (= d@@28 |#M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1925|
 :pattern ( (M0.Literal.litFalse_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (M0.Literal.litUndefined_q d@@29) (= d@@29 |#M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( (M0.Literal.litUndefined_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (M0.Literal.litNull_q d@@30) (= d@@30 |#M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1931|
 :pattern ( (M0.Literal.litNull_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (M0.Primitive.primCreatePath_q d@@31) (= d@@31 |#M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2008|
 :pattern ( (M0.Primitive.primCreatePath_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (M0.Primitive.primExec_q d@@32) (= d@@32 |#M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2010|
 :pattern ( (M0.Primitive.primExec_q d@@32))
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
(assert (forall ((d@@33 T@U) ) (!  (=> (M0.Expression.exprLiteral_q d@@33) (exists ((|a#21#0#0| T@U) ) (! (= d@@33 (|#M0.Expression.exprLiteral| |a#21#0#0|))
 :qid |CloudMakeCachedBuildsdfy.227:37|
 :skolemid |1826|
)))
 :qid |unknown.0:0|
 :skolemid |1827|
 :pattern ( (M0.Expression.exprLiteral_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (M0.Expression.exprIdentifier_q d@@34) (exists ((|a#27#0#0| T@U) ) (! (= d@@34 (|#M0.Expression.exprIdentifier| |a#27#0#0|))
 :qid |CloudMakeCachedBuildsdfy.227:68|
 :skolemid |1837|
)))
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( (M0.Expression.exprIdentifier_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (M0.Expression.exprError_q d@@35) (exists ((|a#67#0#0| T@U) ) (! (= d@@35 (|#M0.Expression.exprError| |a#67#0#0|))
 :qid |CloudMakeCachedBuildsdfy.232:35|
 :skolemid |1902|
)))
 :qid |unknown.0:0|
 :skolemid |1903|
 :pattern ( (M0.Expression.exprError_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (M0.Literal.litNumber_q d@@36) (exists ((|a#89#0#0| Int) ) (! (= d@@36 (|#M0.Literal.litNumber| |a#89#0#0|))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1935|
)))
 :qid |unknown.0:0|
 :skolemid |1936|
 :pattern ( (M0.Literal.litNumber_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (M0.Literal.litString_q d@@37) (exists ((|a#94#0#0| T@U) ) (! (= d@@37 (|#M0.Literal.litString| |a#94#0#0|))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1944|
)))
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( (M0.Literal.litString_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (M0.Literal.litPrimitive_q d@@38) (exists ((|a#101#0#0| T@U) ) (! (= d@@38 (|#M0.Literal.litPrimitive| |a#101#0#0|))
 :qid |CloudMakeCachedBuildsdfy.236:35|
 :skolemid |1955|
)))
 :qid |unknown.0:0|
 :skolemid |1956|
 :pattern ( (M0.Literal.litPrimitive_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (M0.Literal.litArrOfPaths_q d@@39) (exists ((|a#107#0#0| T@U) ) (! (= d@@39 (|#M0.Literal.litArrOfPaths| |a#107#0#0|))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1965|
)))
 :qid |unknown.0:0|
 :skolemid |1966|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (M0.Literal.litArrOfStrings_q d@@40) (exists ((|a#113#0#0| T@U) ) (! (= d@@40 (|#M0.Literal.litArrOfStrings| |a#113#0#0|))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1975|
)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (M0.Literal.litArray_q d@@41) (exists ((|a#119#0#0| T@U) ) (! (= d@@41 (|#M0.Literal.litArray| |a#119#0#0|))
 :qid |CloudMakeCachedBuildsdfy.241:31|
 :skolemid |1985|
)))
 :qid |unknown.0:0|
 :skolemid |1986|
 :pattern ( (M0.Literal.litArray_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> ($Is DatatypeTypeType d@@42 Tclass.M0.Expression) (or (or (or (or (or (or (M0.Expression.exprLiteral_q d@@42) (M0.Expression.exprIdentifier_q d@@42)) (M0.Expression.exprIf_q d@@42)) (M0.Expression.exprAnd_q d@@42)) (M0.Expression.exprOr_q d@@42)) (M0.Expression.exprInvocation_q d@@42)) (M0.Expression.exprError_q d@@42)))
 :qid |unknown.0:0|
 :skolemid |1912|
 :pattern ( (M0.Expression.exprError_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprInvocation_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprOr_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprAnd_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIf_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIdentifier_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprLiteral_q d@@42) ($Is DatatypeTypeType d@@42 Tclass.M0.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@10| T@U) (|deps#0@@10| T@U) (|exps#0@@7| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@7|) (Lit BoxType |st#0@@12|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is SetType |deps#0@@10| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@7| (TSet (TSeq TChar)))) ($IsBox |st#0@@12| Tclass.M0.State)))) (and (forall ((|e#2@@1| T@U) ) (!  (=> ($Is SeqType |e#2@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@7|) ($Box SeqType |e#2@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|) (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@12|))) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@12|)) (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|) (Lit BoxType |st#0@@12|))) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@1|) (Lit BoxType |st#0@@12|))))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |924|
 :pattern ( (M0.__default.Loc |cmd#0@@10| |deps#0@@10| |e#2@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#2@@1|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@7|) (Lit BoxType |st#0@@12|)) (forall ((|e#2@@2| T@U) ) (!  (=> ($Is SeqType |e#2@@2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@7|) ($Box SeqType |e#2@@2|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@12|)) (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@2|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@2|) (Lit BoxType |st#0@@12|)) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) |e#2@@2|) (Lit BoxType |st#0@@12|))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |923|
 :pattern ( (M0.__default.Loc |cmd#0@@10| |deps#0@@10| |e#2@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@7| ($Box SeqType |e#2@@2|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :weight 3
 :skolemid |925|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@7|) (Lit BoxType |st#0@@12|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@11| T@U) (|exps#0@@8| T@U) (|stC#0@@1| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@11| (TSeq TChar)) ($Is SetType |deps#0@@11| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@8| (TSet (TSeq TChar)))) ($IsBox |stC#0@@1| Tclass.M0.State)))) (and (and (and (forall ((|e#0@@4| T@U) ) (!  (=> ($Is SeqType |e#0@@4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@4|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@11| |deps#0@@11| |e#0@@4|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@4|))) (|M0.__default.DomC#canCall| |stC#0@@1|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1025|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@4|)))
)) (=> (forall ((|e#0@@5| T@U) ) (!  (=> (and ($Is SeqType |e#0@@5| (TSeq TChar)) (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@5|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@5|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1026|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@5|)))
)) (forall ((|e#1@@3| T@U) ) (!  (=> ($Is SeqType |e#1@@3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#1@@3|)) (|M0.__default.Loc#canCall| |cmd#0@@11| |deps#0@@11| |e#1@@3|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1027|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#1@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#1@@3|)))
)))) (=> (not (forall ((|e#0@@6| T@U) ) (!  (=> (and ($Is SeqType |e#0@@6| (TSeq TChar)) (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@6|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@6|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1026|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@6|)))
))) (and (|M0.__default.exec#canCall| |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|) (let ((|result#0| (M0.__default.exec |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|)))
 (and (and (M0.Tuple.Pair_q |result#0|) (M0.Tuple.Pair_q |result#0|)) (let ((|st'#0@@2| (M0.Tuple.snd |result#0|)))
(|M0.__default.UpdateC#canCall| |cmd#0@@11| |deps#0@@11| |exps#0@@8| |st'#0@@2|))))))) (= (M0.__default.execC |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|) (ite (forall ((|e#0@@7| T@U) ) (!  (=> (and ($Is SeqType |e#0@@7| (TSeq TChar)) (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@7|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@1|) (M0.__default.Hash (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@7|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1023|
 :pattern ( (M0.__default.Loc |cmd#0@@11| |deps#0@@11| |e#0@@7|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#0@@7|)))
)) (let ((|paths#0| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |exps#0@@8| |cmd#0@@11| |deps#0@@11| |exps#0@@8| |cmd#0@@11| |deps#0@@11|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#0|) |stC#0@@1|)) (let ((|result#0@@0| (M0.__default.exec |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|)))
(let ((|st'#0@@3| (M0.Tuple.snd |result#0@@0|)))
(let ((|expr'#0| ($Unbox SetType (M0.Tuple.fst |result#0@@0|))))
(let ((|stC'#0| (M0.__default.UpdateC |cmd#0@@11| |deps#0@@11| |exps#0@@8| |st'#0@@3|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#0|) |stC'#0|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :skolemid |1029|
 :pattern ( (M0.__default.execC |cmd#0@@11| |deps#0@@11| |exps#0@@8| |stC#0@@1|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@12| T@U) (|exps#0@@9| T@U) (|stC#0@@2| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@12| (TSeq TChar)) ($Is SetType |deps#0@@12| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@9| (TSet (TSeq TChar)))) ($IsBox |stC#0@@2| Tclass.M0.State)))) (and (and (and (forall ((|e#2@@3| T@U) ) (!  (=> ($Is SeqType |e#2@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#2@@3|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#2@@3|) (|M0.__default.Hash#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#2@@3|))) (|M0.__default.DomC#canCall| |stC#0@@2|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1032|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#2@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#2@@3|)))
)) (=> (forall ((|e#2@@4| T@U) ) (!  (=> (and ($Is SeqType |e#2@@4| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#2@@4|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@2|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#2@@4|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1033|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#2@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#2@@4|)))
)) (forall ((|e#3| T@U) ) (!  (=> ($Is SeqType |e#3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#3|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#3|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1034|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#3|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#3|)))
)))) (=> (not (forall ((|e#2@@5| T@U) ) (!  (=> (and ($Is SeqType |e#2@@5| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#2@@5|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@2|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#2@@5|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1033|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#2@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#2@@5|)))
))) (and (|M0.__default.exec#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|) (let ((|result#1| (M0.__default.exec (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|)))
 (and (and (M0.Tuple.Pair_q |result#1|) (M0.Tuple.Pair_q |result#1|)) (let ((|st'#1| (M0.Tuple.snd |result#1|)))
(|M0.__default.UpdateC#canCall| (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |st'#1|))))))) (= (M0.__default.execC (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|) (ite (forall ((|e#2@@6| T@U) ) (!  (=> (and ($Is SeqType |e#2@@6| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@9|) ($Box SeqType |e#2@@6|))) (|Set#IsMember| (M0.__default.DomC |stC#0@@2|) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |e#2@@6|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1030|
 :pattern ( (M0.__default.Loc |cmd#0@@12| |deps#0@@12| |e#2@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@9| ($Box SeqType |e#2@@6|)))
)) (let ((|paths#1| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@9|) (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) |exps#0@@9| |cmd#0@@12| |deps#0@@12|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#1|) |stC#0@@2|)) (let ((|result#1@@0| (M0.__default.exec (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|)))
(let ((|st'#1@@0| (M0.Tuple.snd |result#1@@0|)))
(let ((|expr'#1| ($Unbox SetType (M0.Tuple.fst |result#1@@0|))))
(let ((|stC'#1| (M0.__default.UpdateC (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |st'#1@@0|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#1|) |stC'#1|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :weight 3
 :skolemid |1036|
 :pattern ( (M0.__default.execC (Lit SeqType |cmd#0@@12|) (Lit SetType |deps#0@@12|) (Lit SetType |exps#0@@9|) |stC#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@13| T@U) (|deps#0@@13| T@U) (|exps#0@@10| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M0.__default.exec#canCall| |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@13|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@13| (TSeq TChar)) ($Is SetType |deps#0@@13| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($IsBox |st#0@@13| Tclass.M0.State)))) ($Is DatatypeTypeType (M0.__default.exec |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@13|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.140:23|
 :skolemid |903|
 :pattern ( (M0.__default.exec |cmd#0@@13| |deps#0@@13| |exps#0@@10| |st#0@@13|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@14| T@U) (|deps#0@@14| T@U) (|exps#0@@11| T@U) (|stC#0@@3| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| |cmd#0@@14| |deps#0@@14| |exps#0@@11| |stC#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@14| (TSeq TChar)) ($Is SetType |deps#0@@14| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@11| (TSet (TSeq TChar)))) ($IsBox |stC#0@@3| Tclass.M0.State)))) ($Is DatatypeTypeType (M0.__default.execC |cmd#0@@14| |deps#0@@14| |exps#0@@11| |stC#0@@3|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :skolemid |1021|
 :pattern ( (M0.__default.execC |cmd#0@@14| |deps#0@@14| |exps#0@@11| |stC#0@@3|))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> ($Is DatatypeTypeType d@@43 Tclass.M0.Literal) (or (or (or (or (or (or (or (or (or (M0.Literal.litTrue_q d@@43) (M0.Literal.litFalse_q d@@43)) (M0.Literal.litUndefined_q d@@43)) (M0.Literal.litNull_q d@@43)) (M0.Literal.litNumber_q d@@43)) (M0.Literal.litString_q d@@43)) (M0.Literal.litPrimitive_q d@@43)) (M0.Literal.litArrOfPaths_q d@@43)) (M0.Literal.litArrOfStrings_q d@@43)) (M0.Literal.litArray_q d@@43)))
 :qid |unknown.0:0|
 :skolemid |1995|
 :pattern ( (M0.Literal.litArray_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfStrings_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfPaths_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litPrimitive_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litString_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNumber_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNull_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litUndefined_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litFalse_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litTrue_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.M0.Literal))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@15| T@U) (|deps#0@@15| T@U) (|exps#0@@12| T@U) (|stC#0@@4| T@U) ) (!  (=> (or (|M0.__default.execC#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@15| (TSeq TChar)) ($Is SetType |deps#0@@15| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@12| (TSet (TSeq TChar)))) ($IsBox |stC#0@@4| Tclass.M0.State)))) (and (and (and (forall ((|e#4| T@U) ) (!  (=> ($Is SeqType |e#4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@12|) ($Box SeqType |e#4|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#4|) (|M0.__default.Hash#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#4|))) (|M0.__default.DomC#canCall| (Lit BoxType |stC#0@@4|)))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1039|
 :pattern ( (M0.__default.Loc |cmd#0@@15| |deps#0@@15| |e#4|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is SeqType |e#4@@0| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@12|) ($Box SeqType |e#4@@0|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@4|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#4@@0|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1040|
 :pattern ( (M0.__default.Loc |cmd#0@@15| |deps#0@@15| |e#4@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4@@0|)))
)) (forall ((|e#5| T@U) ) (!  (=> ($Is SeqType |e#5| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@12|) ($Box SeqType |e#5|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#5|)))
 :qid |CloudMakeCachedBuildsdfy.212:24|
 :skolemid |1041|
 :pattern ( (M0.__default.Loc |cmd#0@@15| |deps#0@@15| |e#5|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#5|)))
)))) (=> (not (forall ((|e#4@@1| T@U) ) (!  (=> (and ($Is SeqType |e#4@@1| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@12|) ($Box SeqType |e#4@@1|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@4|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#4@@1|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1040|
 :pattern ( (M0.__default.Loc |cmd#0@@15| |deps#0@@15| |e#4@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4@@1|)))
))) (and (|M0.__default.exec#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|)) (let ((|result#2| (M0.__default.exec (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|))))
 (and (and (M0.Tuple.Pair_q |result#2|) (M0.Tuple.Pair_q |result#2|)) (let ((|st'#2| (M0.Tuple.snd |result#2|)))
(|M0.__default.UpdateC#canCall| (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) |st'#2|))))))) (= (M0.__default.execC (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|)) (ite (forall ((|e#4@@2| T@U) ) (!  (=> (and ($Is SeqType |e#4@@2| (TSeq TChar)) (|Set#IsMember| (Lit SetType |exps#0@@12|) ($Box SeqType |e#4@@2|))) (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@4|)) (M0.__default.Hash (M0.__default.Loc (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |e#4@@2|))))
 :qid |CloudMakeCachedBuildsdfy.211:15|
 :skolemid |1037|
 :pattern ( (M0.__default.Loc |cmd#0@@15| |deps#0@@15| |e#4@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@12| ($Box SeqType |e#4@@2|)))
)) (let ((|paths#2| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@12|) (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) |exps#0@@12| |cmd#0@@15| |deps#0@@15|))))
(|#M0.Tuple.Pair| ($Box SetType |paths#2|) (Lit BoxType |stC#0@@4|))) (let ((|result#2@@0| (M0.__default.exec (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|))))
(let ((|st'#2@@0| (M0.Tuple.snd |result#2@@0|)))
(let ((|expr'#2| ($Unbox SetType (M0.Tuple.fst |result#2@@0|))))
(let ((|stC'#2| (M0.__default.UpdateC (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) |st'#2@@0|)))
(|#M0.Tuple.Pair| ($Box SetType |expr'#2|) |stC'#2|)))))))))
 :qid |CloudMakeCachedBuildsdfy.209:24|
 :weight 3
 :skolemid |1043|
 :pattern ( (M0.__default.execC (Lit SeqType |cmd#0@@15|) (Lit SetType |deps#0@@15|) (Lit SetType |exps#0@@12|) (Lit BoxType |stC#0@@4|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@16| T@U) (|deps#0@@16| T@U) (|exps#0@@13| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@13|) |st#0@@14|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@16| (TSeq TChar)) ($Is SetType |deps#0@@16| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@13| (TSet (TSeq TChar)))) ($IsBox |st#0@@14| Tclass.M0.State)))) (and (forall ((|e#1@@4| T@U) ) (!  (=> ($Is SeqType |e#1@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@13|) ($Box SeqType |e#1@@4|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|) (|M0.__default.DomSt#canCall| |st#0@@14|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@14|) (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|) |st#0@@14|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@4|) |st#0@@14|)))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |921|
 :pattern ( (M0.__default.Loc |cmd#0@@16| |deps#0@@16| |e#1@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@13| ($Box SeqType |e#1@@4|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@13|) |st#0@@14|) (forall ((|e#1@@5| T@U) ) (!  (=> ($Is SeqType |e#1@@5| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@13|) ($Box SeqType |e#1@@5|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@14|) (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@5|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@5|) |st#0@@14|) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) |e#1@@5|) |st#0@@14|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |920|
 :pattern ( (M0.__default.Loc |cmd#0@@16| |deps#0@@16| |e#1@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@13| ($Box SeqType |e#1@@5|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :weight 3
 :skolemid |922|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@16|) (Lit SetType |exps#0@@13|) |st#0@@14|))
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
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (!  (=> (and (M0.Expression.exprLiteral_q a@@15) (M0.Expression.exprLiteral_q b@@15)) (= (|M0.Expression#Equal| a@@15 b@@15) (|M0.Literal#Equal| (M0.Expression.lit a@@15) (M0.Expression.lit b@@15))))
 :qid |unknown.0:0|
 :skolemid |1913|
 :pattern ( (|M0.Expression#Equal| a@@15 b@@15) (M0.Expression.exprLiteral_q a@@15))
 :pattern ( (|M0.Expression#Equal| a@@15 b@@15) (M0.Expression.exprLiteral_q b@@15))
)))
(assert (forall ((a@@16 T@U) (b@@16 T@U) ) (!  (=> (and (M0.Expression.exprError_q a@@16) (M0.Expression.exprError_q b@@16)) (= (|M0.Expression#Equal| a@@16 b@@16) (|M0.Reason#Equal| (M0.Expression.r a@@16) (M0.Expression.r b@@16))))
 :qid |unknown.0:0|
 :skolemid |1919|
 :pattern ( (|M0.Expression#Equal| a@@16 b@@16) (M0.Expression.exprError_q a@@16))
 :pattern ( (|M0.Expression#Equal| a@@16 b@@16) (M0.Expression.exprError_q b@@16))
)))
(assert (forall ((a@@17 T@U) (b@@17 T@U) ) (!  (=> (and (M0.Literal.litString_q a@@17) (M0.Literal.litString_q b@@17)) (= (|M0.Literal#Equal| a@@17 b@@17) (|Seq#Equal| (M0.Literal.str a@@17) (M0.Literal.str b@@17))))
 :qid |unknown.0:0|
 :skolemid |2001|
 :pattern ( (|M0.Literal#Equal| a@@17 b@@17) (M0.Literal.litString_q a@@17))
 :pattern ( (|M0.Literal#Equal| a@@17 b@@17) (M0.Literal.litString_q b@@17))
)))
(assert (forall ((a@@18 T@U) (b@@18 T@U) ) (!  (=> (and (M0.Literal.litPrimitive_q a@@18) (M0.Literal.litPrimitive_q b@@18)) (= (|M0.Literal#Equal| a@@18 b@@18) (|M0.Primitive#Equal| (M0.Literal.prim a@@18) (M0.Literal.prim b@@18))))
 :qid |unknown.0:0|
 :skolemid |2002|
 :pattern ( (|M0.Literal#Equal| a@@18 b@@18) (M0.Literal.litPrimitive_q a@@18))
 :pattern ( (|M0.Literal#Equal| a@@18 b@@18) (M0.Literal.litPrimitive_q b@@18))
)))
(assert (forall ((a@@19 T@U) (b@@19 T@U) ) (!  (=> (and (M0.Literal.litArrOfPaths_q a@@19) (M0.Literal.litArrOfPaths_q b@@19)) (= (|M0.Literal#Equal| a@@19 b@@19) (|Set#Equal| (M0.Literal.paths a@@19) (M0.Literal.paths b@@19))))
 :qid |unknown.0:0|
 :skolemid |2003|
 :pattern ( (|M0.Literal#Equal| a@@19 b@@19) (M0.Literal.litArrOfPaths_q a@@19))
 :pattern ( (|M0.Literal#Equal| a@@19 b@@19) (M0.Literal.litArrOfPaths_q b@@19))
)))
(assert (forall ((a@@20 T@U) (b@@20 T@U) ) (!  (=> (and (M0.Literal.litArrOfStrings_q a@@20) (M0.Literal.litArrOfStrings_q b@@20)) (= (|M0.Literal#Equal| a@@20 b@@20) (|Set#Equal| (M0.Literal.strs a@@20) (M0.Literal.strs b@@20))))
 :qid |unknown.0:0|
 :skolemid |2004|
 :pattern ( (|M0.Literal#Equal| a@@20 b@@20) (M0.Literal.litArrOfStrings_q a@@20))
 :pattern ( (|M0.Literal#Equal| a@@20 b@@20) (M0.Literal.litArrOfStrings_q b@@20))
)))
(assert (forall ((a@@21 T@U) (b@@21 T@U) ) (!  (=> (and (M0.Literal.litArray_q a@@21) (M0.Literal.litArray_q b@@21)) (= (|M0.Literal#Equal| a@@21 b@@21) (|Seq#Equal| (M0.Literal.arr a@@21) (M0.Literal.arr b@@21))))
 :qid |unknown.0:0|
 :skolemid |2005|
 :pattern ( (|M0.Literal#Equal| a@@21 b@@21) (M0.Literal.litArray_q a@@21))
 :pattern ( (|M0.Literal#Equal| a@@21 b@@21) (M0.Literal.litArray_q b@@21))
)))
(assert (forall ((a@@22 T@U) (b@@22 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@22 b@@22) o@@2)  (or (|Set#IsMember| a@@22 o@@2) (|Set#IsMember| b@@22 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@22 b@@22) o@@2))
)))
(assert (forall ((a@@23 T@U) (b@@23 T@U) ) (!  (=> (|Set#Disjoint| a@@23 b@@23) (and (= (|Set#Difference| (|Set#Union| a@@23 b@@23) a@@23) b@@23) (= (|Set#Difference| (|Set#Union| a@@23 b@@23) b@@23) a@@23)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@23 b@@23))
)))
(assert (forall ((|a#90#0#0| Int) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@8) ($IsAlloc intType (int_2_U |a#90#0#0|) TInt $h@@8)))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1938|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@8))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|stOrig#0@@0| T@U) (|stCombined#0@@0| T@U) (|args#0@@2| T@U) (|useCache#0@@0| Bool) ) (!  (=> (and (or (|M0.__default.evalCore#canCall| |stOrig#0@@0| |stCombined#0@@0| |args#0@@2| |useCache#0@@0|) (and (< 4 $FunctionContextHeight) (and (and (and ($IsBox |stOrig#0@@0| Tclass.M0.State) ($IsAllocBox |stOrig#0@@0| Tclass.M0.State $Heap@@0)) (and ($IsBox |stCombined#0@@0| Tclass.M0.State) ($IsAllocBox |stCombined#0@@0| Tclass.M0.State $Heap@@0))) (and ($Is SeqType |args#0@@2| (TSeq Tclass.M0.Expression)) ($IsAlloc SeqType |args#0@@2| (TSeq Tclass.M0.Expression) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M0.__default.evalCore |stOrig#0@@0| |stCombined#0@@0| |args#0@@2| |useCache#0@@0|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@0))
 :qid |CloudMakeCachedBuildsdfy.495:18|
 :skolemid |1238|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.evalCore |stOrig#0@@0| |stCombined#0@@0| |args#0@@2| |useCache#0@@0|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@0))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@17| T@U) (|deps#0@@17| T@U) (|exps#0@@14| T@U) (|paths#0@@0| T@U) ) (!  (=> (or (|M0.__default.OneToOne#canCall| (Lit SeqType |cmd#0@@17|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@14|) (Lit SetType |paths#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@17| (TSeq TChar)) ($Is SetType |deps#0@@17| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@14| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@0| (TSet Tclass.M0.Path))))) (and (forall ((|e#1@@6| T@U) ) (!  (=> ($Is SeqType |e#1@@6| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@14|) ($Box SeqType |e#1@@6|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@17|) (Lit SetType |deps#0@@17|) |e#1@@6|)))
 :qid |CloudMakeCachedBuildsdfy.168:18|
 :skolemid |941|
 :pattern ( (M0.__default.Loc |cmd#0@@17| |deps#0@@17| |e#1@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@14| ($Box SeqType |e#1@@6|)))
)) (= (M0.__default.OneToOne (Lit SeqType |cmd#0@@17|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@14|) (Lit SetType |paths#0@@0|)) (|Set#Equal| |paths#0@@0| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@14|) (Lit SeqType |cmd#0@@17|) (Lit SetType |deps#0@@17|) |exps#0@@14| |cmd#0@@17| |deps#0@@17|))))))
 :qid |CloudMakeCachedBuildsdfy.162:28|
 :weight 3
 :skolemid |942|
 :pattern ( (M0.__default.OneToOne (Lit SeqType |cmd#0@@17|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@14|) (Lit SetType |paths#0@@0|)))
))))
(assert (forall ((|a#95#0#0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@9) ($IsAlloc SeqType |a#95#0#0| (TSeq TChar) $h@@9)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1947|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@9))
)))
(assert (forall ((a@@24 T@U) (b@@24 T@U) ) (!  (=> (|Set#Equal| a@@24 b@@24) (= a@@24 b@@24))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@24 b@@24))
)))
(assert (forall ((a@@25 T@U) (b@@25 T@U) ) (!  (=> (|Seq#Equal| a@@25 b@@25) (= a@@25 b@@25))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@25 b@@25))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@15| T@U) (|stC#0@@5| T@U) ) (!  (=> (or (|M0.__default.StateCorrespondence#canCall| (Lit BoxType |st#0@@15|) (Lit BoxType |stC#0@@5|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@15| Tclass.M0.State) ($IsBox |stC#0@@5| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@15|)) (|M0.__default.DomSt#canCall| (Lit BoxType |stC#0@@5|))) (=> (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) (M0.__default.DomSt (Lit BoxType |stC#0@@5|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@15|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) |p#2|) (and (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |stC#0@@5|)) (|M0.__default.GetSt#canCall| |p#2| (Lit BoxType |st#0@@15|))))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |865|
 :pattern ( (M0.__default.GetSt |p#2| |st#0@@15|))
 :pattern ( (M0.__default.GetSt |p#2| |stC#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) |p#2@@0|) (= (M0.__default.GetSt |p#2@@0| (Lit BoxType |stC#0@@5|)) (M0.__default.GetSt |p#2@@0| (Lit BoxType |st#0@@15|)))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |867|
 :pattern ( (M0.__default.GetSt |p#2@@0| |st#0@@15|))
 :pattern ( (M0.__default.GetSt |p#2@@0| |stC#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@15|)) (=> (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) |p#3|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |stC#0@@5|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |stC#0@@5|)) |p#3|) (and (|M0.__default.GetSt#canCall| |p#3| (Lit BoxType |stC#0@@5|)) (|M0.__default.Oracle#canCall| |p#3| (Lit BoxType |st#0@@15|))))))))
 :qid |CloudMakeCachedBuildsdfy.124:13|
 :skolemid |866|
 :pattern ( (M0.__default.Oracle |p#3| |st#0@@15|))
 :pattern ( (M0.__default.GetSt |p#3| |stC#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stC#0@@5|) |p#3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) |p#3|))
)))))) (= (M0.__default.StateCorrespondence true (Lit BoxType |st#0@@15|) (Lit BoxType |stC#0@@5|))  (and (and (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) (M0.__default.DomSt (Lit BoxType |stC#0@@5|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) |p#2@@1|) (= (M0.__default.GetSt |p#2@@1| (Lit BoxType |stC#0@@5|)) (M0.__default.GetSt |p#2@@1| (Lit BoxType |st#0@@15|)))))
 :qid |CloudMakeCachedBuildsdfy.123:13|
 :skolemid |863|
 :pattern ( (M0.__default.GetSt |p#2@@1| |st#0@@15|))
 :pattern ( (M0.__default.GetSt |p#2@@1| |stC#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@15|)) |p#3@@0|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |stC#0@@5|)) |p#3@@0|)) (= (M0.__default.GetSt |p#3@@0| (Lit BoxType |stC#0@@5|)) (M0.__default.Oracle |p#3@@0| (Lit BoxType |st#0@@15|)))))
 :qid |CloudMakeCachedBuildsdfy.124:13|
 :skolemid |864|
 :pattern ( (M0.__default.Oracle |p#3@@0| |st#0@@15|))
 :pattern ( (M0.__default.GetSt |p#3@@0| |stC#0@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stC#0@@5|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@15|) |p#3@@0|))
))))))
 :qid |CloudMakeCachedBuildsdfy.119:49|
 :weight 3
 :skolemid |868|
 :pattern ( (M0.__default.StateCorrespondence true (Lit BoxType |st#0@@15|) (Lit BoxType |stC#0@@5|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@16| T@U) (|st'#0@@4| T@U) ) (!  (=> (or (|M0.__default.Extends#canCall| (Lit BoxType |st#0@@16|) (Lit BoxType |st'#0@@4|)) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@16| Tclass.M0.State) ($IsBox |st'#0@@4| Tclass.M0.State)))) (and (and (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@16|)) (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0@@4|))) (=> (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) (M0.__default.DomSt (Lit BoxType |st'#0@@4|))) (and (forall ((|p#2@@2| T@U) ) (!  (=> ($IsBox |p#2@@2| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@16|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) |p#2@@2|) (and (|M0.__default.GetSt#canCall| |p#2@@2| (Lit BoxType |st'#0@@4|)) (|M0.__default.GetSt#canCall| |p#2@@2| (Lit BoxType |st#0@@16|))))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |997|
 :pattern ( (M0.__default.GetSt |p#2@@2| |st#0@@16|))
 :pattern ( (M0.__default.GetSt |p#2@@2| |st'#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@16|) |p#2@@2|))
)) (=> (forall ((|p#2@@3| T@U) ) (!  (=> ($IsBox |p#2@@3| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) |p#2@@3|) (= (M0.__default.GetSt |p#2@@3| (Lit BoxType |st'#0@@4|)) (M0.__default.GetSt |p#2@@3| (Lit BoxType |st#0@@16|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |999|
 :pattern ( (M0.__default.GetSt |p#2@@3| |st#0@@16|))
 :pattern ( (M0.__default.GetSt |p#2@@3| |st'#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@16|) |p#2@@3|))
)) (forall ((|p#3@@1| T@U) ) (!  (=> ($IsBox |p#3@@1| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@16|)) (=> (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) |p#3@@1|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0@@4|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0@@4|)) |p#3@@1|) (and (|M0.__default.GetSt#canCall| |p#3@@1| (Lit BoxType |st'#0@@4|)) (|M0.__default.Oracle#canCall| |p#3@@1| (Lit BoxType |st#0@@16|))))))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |998|
 :pattern ( (M0.__default.Oracle |p#3@@1| |st#0@@16|))
 :pattern ( (M0.__default.GetSt |p#3@@1| |st'#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@4|) |p#3@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@16|) |p#3@@1|))
)))))) (= (M0.__default.Extends true (Lit BoxType |st#0@@16|) (Lit BoxType |st'#0@@4|))  (and (and (|Set#Subset| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) (M0.__default.DomSt (Lit BoxType |st'#0@@4|))) (forall ((|p#2@@4| T@U) ) (!  (=> ($IsBox |p#2@@4| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) |p#2@@4|) (= (M0.__default.GetSt |p#2@@4| (Lit BoxType |st'#0@@4|)) (M0.__default.GetSt |p#2@@4| (Lit BoxType |st#0@@16|)))))
 :qid |CloudMakeCachedBuildsdfy.197:13|
 :skolemid |995|
 :pattern ( (M0.__default.GetSt |p#2@@4| |st#0@@16|))
 :pattern ( (M0.__default.GetSt |p#2@@4| |st'#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@16|) |p#2@@4|))
))) (forall ((|p#3@@2| T@U) ) (!  (=> ($IsBox |p#3@@2| Tclass.M0.Path) (=> (and (not (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@16|)) |p#3@@2|)) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st'#0@@4|)) |p#3@@2|)) (= (M0.__default.GetSt |p#3@@2| (Lit BoxType |st'#0@@4|)) (M0.__default.Oracle |p#3@@2| (Lit BoxType |st#0@@16|)))))
 :qid |CloudMakeCachedBuildsdfy.198:13|
 :skolemid |996|
 :pattern ( (M0.__default.Oracle |p#3@@2| |st#0@@16|))
 :pattern ( (M0.__default.GetSt |p#3@@2| |st'#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@4|) |p#3@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@16|) |p#3@@2|))
))))))
 :qid |CloudMakeCachedBuildsdfy.194:37|
 :weight 3
 :skolemid |1000|
 :pattern ( (M0.__default.Extends true (Lit BoxType |st#0@@16|) (Lit BoxType |st'#0@@4|)))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@11| T@U) ) (!  (=> (or (|M0.__default.Hash#canCall| |p#0@@11|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@11| Tclass.M0.Path))) ($IsBox (M0.__default.Hash |p#0@@11|) Tclass.M0.HashValue))
 :qid |CloudMakeCachedBuildsdfy.16:23|
 :skolemid |708|
 :pattern ( (M0.__default.Hash |p#0@@11|))
))))
(assert (forall ((d@@44 T@U) ) (!  (=> ($Is DatatypeTypeType d@@44 Tclass.M0.Primitive) (or (M0.Primitive.primCreatePath_q d@@44) (M0.Primitive.primExec_q d@@44)))
 :qid |unknown.0:0|
 :skolemid |2013|
 :pattern ( (M0.Primitive.primExec_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.M0.Primitive))
 :pattern ( (M0.Primitive.primCreatePath_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.M0.Primitive))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TChar) (and (= ($Box charType ($Unbox charType bx@@6)) bx@@6) ($Is charType ($Unbox charType bx@@6) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@6 TChar))
)))
(assert (forall ((a@@26 T@U) (b@@26 T@U) ) (!  (=> (and (M0.Expression.exprAnd_q a@@26) (M0.Expression.exprAnd_q b@@26)) (= (|M0.Expression#Equal| a@@26 b@@26)  (and (|M0.Expression#Equal| (M0.Expression.conj0 a@@26) (M0.Expression.conj0 b@@26)) (|M0.Expression#Equal| (M0.Expression.conj1 a@@26) (M0.Expression.conj1 b@@26)))))
 :qid |unknown.0:0|
 :skolemid |1916|
 :pattern ( (|M0.Expression#Equal| a@@26 b@@26) (M0.Expression.exprAnd_q a@@26))
 :pattern ( (|M0.Expression#Equal| a@@26 b@@26) (M0.Expression.exprAnd_q b@@26))
)))
(assert (forall ((a@@27 T@U) (b@@27 T@U) ) (!  (=> (and (M0.Expression.exprOr_q a@@27) (M0.Expression.exprOr_q b@@27)) (= (|M0.Expression#Equal| a@@27 b@@27)  (and (|M0.Expression#Equal| (M0.Expression.disj0 a@@27) (M0.Expression.disj0 b@@27)) (|M0.Expression#Equal| (M0.Expression.disj1 a@@27) (M0.Expression.disj1 b@@27)))))
 :qid |unknown.0:0|
 :skolemid |1917|
 :pattern ( (|M0.Expression#Equal| a@@27 b@@27) (M0.Expression.exprOr_q a@@27))
 :pattern ( (|M0.Expression#Equal| a@@27 b@@27) (M0.Expression.exprOr_q b@@27))
)))
(assert (forall ((a@@28 T@U) (b@@28 T@U) ) (!  (=> (and (M0.Expression.exprInvocation_q a@@28) (M0.Expression.exprInvocation_q b@@28)) (= (|M0.Expression#Equal| a@@28 b@@28)  (and (|M0.Expression#Equal| (M0.Expression.fun a@@28) (M0.Expression.fun b@@28)) (|Seq#Equal| (M0.Expression.args a@@28) (M0.Expression.args b@@28)))))
 :qid |unknown.0:0|
 :skolemid |1918|
 :pattern ( (|M0.Expression#Equal| a@@28 b@@28) (M0.Expression.exprInvocation_q a@@28))
 :pattern ( (|M0.Expression#Equal| a@@28 b@@28) (M0.Expression.exprInvocation_q b@@28))
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
(assert (forall ((a@@29 T@U) (b@@29 T@U) ) (!  (=> (and (M0.Literal.litTrue_q a@@29) (M0.Literal.litTrue_q b@@29)) (|M0.Literal#Equal| a@@29 b@@29))
 :qid |unknown.0:0|
 :skolemid |1996|
 :pattern ( (|M0.Literal#Equal| a@@29 b@@29) (M0.Literal.litTrue_q a@@29))
 :pattern ( (|M0.Literal#Equal| a@@29 b@@29) (M0.Literal.litTrue_q b@@29))
)))
(assert (forall ((a@@30 T@U) (b@@30 T@U) ) (!  (=> (and (M0.Literal.litFalse_q a@@30) (M0.Literal.litFalse_q b@@30)) (|M0.Literal#Equal| a@@30 b@@30))
 :qid |unknown.0:0|
 :skolemid |1997|
 :pattern ( (|M0.Literal#Equal| a@@30 b@@30) (M0.Literal.litFalse_q a@@30))
 :pattern ( (|M0.Literal#Equal| a@@30 b@@30) (M0.Literal.litFalse_q b@@30))
)))
(assert (forall ((a@@31 T@U) (b@@31 T@U) ) (!  (=> (and (M0.Literal.litUndefined_q a@@31) (M0.Literal.litUndefined_q b@@31)) (|M0.Literal#Equal| a@@31 b@@31))
 :qid |unknown.0:0|
 :skolemid |1998|
 :pattern ( (|M0.Literal#Equal| a@@31 b@@31) (M0.Literal.litUndefined_q a@@31))
 :pattern ( (|M0.Literal#Equal| a@@31 b@@31) (M0.Literal.litUndefined_q b@@31))
)))
(assert (forall ((a@@32 T@U) (b@@32 T@U) ) (!  (=> (and (M0.Literal.litNull_q a@@32) (M0.Literal.litNull_q b@@32)) (|M0.Literal#Equal| a@@32 b@@32))
 :qid |unknown.0:0|
 :skolemid |1999|
 :pattern ( (|M0.Literal#Equal| a@@32 b@@32) (M0.Literal.litNull_q a@@32))
 :pattern ( (|M0.Literal#Equal| a@@32 b@@32) (M0.Literal.litNull_q b@@32))
)))
(assert (forall ((a@@33 T@U) (b@@33 T@U) ) (!  (=> (and (M0.Primitive.primCreatePath_q a@@33) (M0.Primitive.primCreatePath_q b@@33)) (|M0.Primitive#Equal| a@@33 b@@33))
 :qid |unknown.0:0|
 :skolemid |2014|
 :pattern ( (|M0.Primitive#Equal| a@@33 b@@33) (M0.Primitive.primCreatePath_q a@@33))
 :pattern ( (|M0.Primitive#Equal| a@@33 b@@33) (M0.Primitive.primCreatePath_q b@@33))
)))
(assert (forall ((a@@34 T@U) (b@@34 T@U) ) (!  (=> (and (M0.Primitive.primExec_q a@@34) (M0.Primitive.primExec_q b@@34)) (|M0.Primitive#Equal| a@@34 b@@34))
 :qid |unknown.0:0|
 :skolemid |2015|
 :pattern ( (|M0.Primitive#Equal| a@@34 b@@34) (M0.Primitive.primExec_q a@@34))
 :pattern ( (|M0.Primitive#Equal| a@@34 b@@34) (M0.Primitive.primExec_q b@@34))
)))
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
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@12| T@U) ) (!  (=> (and (or (|M0.__default.Hash#canCall| |p#0@@12|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0@@12| Tclass.M0.Path) ($IsAllocBox |p#0@@12| Tclass.M0.Path $Heap@@1)))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (M0.__default.Hash |p#0@@12|) Tclass.M0.HashValue $Heap@@1))
 :qid |CloudMakeCachedBuildsdfy.16:18|
 :skolemid |709|
 :pattern ( ($IsAllocBox (M0.__default.Hash |p#0@@12|) Tclass.M0.HashValue $Heap@@1))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@17| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@17|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@17| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@17|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeCachedBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@17|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@18| T@U) ) (!  (=> (or (|M0.__default.DomC#canCall| |st#0@@18|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@18| Tclass.M0.State))) ($Is SetType (M0.__default.DomC |st#0@@18|) (TSet Tclass.M0.HashValue)))
 :qid |CloudMakeCachedBuildsdfy.15:23|
 :skolemid |705|
 :pattern ( (M0.__default.DomC |st#0@@18|))
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
(assert (forall ((a@@35 T@U) (b@@35 T@U) ) (! (= (|Set#Union| a@@35 (|Set#Union| a@@35 b@@35)) (|Set#Union| a@@35 b@@35))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@35 (|Set#Union| a@@35 b@@35)))
)))
(assert (forall ((|a#90#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal) ($Is intType (int_2_U |a#90#0#0@@0|) TInt))
 :qid |CloudMakeCachedBuildsdfy.235:32|
 :skolemid |1937|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@18| T@U) (|deps#0@@18| T@U) (|exps#0@@15| T@U) (|st#0@@19| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| |cmd#0@@18| |deps#0@@18| |exps#0@@15| |st#0@@19|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@18| (TSeq TChar)) ($Is SetType |deps#0@@18| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@15| (TSet (TSeq TChar)))) ($IsBox |st#0@@19| Tclass.M0.State)))) (and (forall ((|e#0@@8| T@U) ) (!  (=> ($Is SeqType |e#0@@8| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#0@@8|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@18| |deps#0@@18| |e#0@@8|) (|M0.__default.DomSt#canCall| |st#0@@19|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@19|) (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@8|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@18| |deps#0@@18| |e#0@@8|) (|M0.__default.GetSt#canCall| (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@8|) |st#0@@19|)) (and (|M0.__default.Loc#canCall| |cmd#0@@18| |deps#0@@18| |e#0@@8|) (|M0.__default.Oracle#canCall| (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@8|) |st#0@@19|)))))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |918|
 :pattern ( (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@8|))
 :pattern ( (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#0@@8|)))
)) (= (M0.__default.Pre |cmd#0@@18| |deps#0@@18| |exps#0@@15| |st#0@@19|) (forall ((|e#0@@9| T@U) ) (!  (=> ($Is SeqType |e#0@@9| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#0@@9|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@19|) (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@9|)) (= (M0.__default.GetSt (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@9|) |st#0@@19|) (M0.__default.Oracle (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@9|) |st#0@@19|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |917|
 :pattern ( (M0.__default.Loc |cmd#0@@18| |deps#0@@18| |e#0@@9|))
 :pattern ( (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#0@@9|)))
)))))
 :qid |CloudMakeCachedBuildsdfy.156:23|
 :skolemid |919|
 :pattern ( (M0.__default.Pre |cmd#0@@18| |deps#0@@18| |exps#0@@15| |st#0@@19|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@19| T@U) (|deps#0@@19| T@U) (|exps#0@@16| T@U) (|st#0@@20| T@U) (|st'#0@@5| T@U) ) (!  (=> (or (|M0.__default.ExtendsLimit#canCall| |cmd#0@@19| |deps#0@@19| |exps#0@@16| |st#0@@20| |st'#0@@5|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@19| (TSeq TChar)) ($Is SetType |deps#0@@19| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@16| (TSet (TSeq TChar)))) ($IsBox |st#0@@20| Tclass.M0.State)) ($IsBox |st'#0@@5| Tclass.M0.State)))) (and (and (|M0.__default.DomSt#canCall| |st'#0@@5|) (and (|M0.__default.DomSt#canCall| |st#0@@20|) (forall ((|e#0@@10| T@U) ) (!  (=> ($Is SeqType |e#0@@10| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@16| ($Box SeqType |e#0@@10|)) (|M0.__default.Loc#canCall| |cmd#0@@19| |deps#0@@19| |e#0@@10|)))
 :qid |CloudMakeCachedBuildsdfy.179:35|
 :skolemid |970|
 :pattern ( (M0.__default.Loc |cmd#0@@19| |deps#0@@19| |e#0@@10|))
 :pattern ( (|Set#IsMember| |exps#0@@16| ($Box SeqType |e#0@@10|)))
)))) (= (M0.__default.ExtendsLimit |cmd#0@@19| |deps#0@@19| |exps#0@@16| |st#0@@20| |st'#0@@5|) (|Set#Equal| (M0.__default.DomSt |st'#0@@5|) (|Set#Union| (M0.__default.DomSt |st#0@@20|) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |exps#0@@16| |cmd#0@@19| |deps#0@@19| |exps#0@@16| |cmd#0@@19| |deps#0@@19|)))))))
 :qid |CloudMakeCachedBuildsdfy.177:32|
 :skolemid |971|
 :pattern ( (M0.__default.ExtendsLimit |cmd#0@@19| |deps#0@@19| |exps#0@@16| |st#0@@20| |st'#0@@5|))
))))
(assert (forall ((M0.Tuple$A@@4 T@U) (M0.Tuple$B@@4 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( ($IsBox bx@@8 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|st#0@@21| T@U) ) (!  (=> (and (or (|M0.__default.DomC#canCall| |st#0@@21|) (and (< 0 $FunctionContextHeight) (and ($IsBox |st#0@@21| Tclass.M0.State) ($IsAllocBox |st#0@@21| Tclass.M0.State $Heap@@2)))) ($IsGoodHeap $Heap@@2)) ($IsAlloc SetType (M0.__default.DomC |st#0@@21|) (TSet Tclass.M0.HashValue) $Heap@@2))
 :qid |CloudMakeCachedBuildsdfy.15:18|
 :skolemid |706|
 :pattern ( ($IsAlloc SetType (M0.__default.DomC |st#0@@21|) (TSet Tclass.M0.HashValue) $Heap@@2))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@3| T@U) (|st#0@@22| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@3|) |st#0@@22|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M0.Primitive) ($Is SeqType |args#0@@3| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@22| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#3|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#3|)) (=> (M0.Expression.exprLiteral_q |deps#3|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#3|)) (=> (M0.Expression.exprLiteral_q |exps#3|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#3|)) (and (|M0.__default.DomSt#canCall| |st#0@@22|) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.__default.DomSt |st#0@@22|)) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#3|)) (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.Literal.strs (M0.Expression.lit |exps#3|)) |st#0@@22|))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@3|) |st#0@@22|) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#2|) (M0.Literal.litString_q (M0.Expression.lit |cmd#2|))) (M0.Expression.exprLiteral_q |deps#2|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#2|))) (M0.Expression.exprLiteral_q |exps#2|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#2|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.__default.DomSt |st#0@@22|))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#2|)) (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.Literal.strs (M0.Expression.lit |exps#2|)) |st#0@@22|)))))))))
 :qid |CloudMakeCachedBuildsdfy.533:29|
 :weight 3
 :skolemid |1273|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@3|) |st#0@@22|))
))))
(assert (forall ((M0.Tuple$A@@5 T@U) (M0.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) Tagclass.M0.Tuple) (= (TagFamily (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5))
)))
(assert (forall ((d@@45 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M0.Literal.litNumber_q d@@45) ($IsAlloc DatatypeTypeType d@@45 Tclass.M0.Literal $h@@17))) ($IsAlloc intType (int_2_U (M0.Literal.num d@@45)) TInt $h@@17))
 :qid |unknown.0:0|
 :skolemid |1939|
 :pattern ( ($IsAlloc intType (int_2_U (M0.Literal.num d@@45)) TInt $h@@17))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@13| T@U) (|st#0@@23| T@U) ) (!  (=> (and (or (|M0.__default.Oracle#canCall| |p#0@@13| |st#0@@23|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |p#0@@13| Tclass.M0.Path) ($IsAllocBox |p#0@@13| Tclass.M0.Path $Heap@@3)) (and ($IsBox |st#0@@23| Tclass.M0.State) ($IsAllocBox |st#0@@23| Tclass.M0.State $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M0.__default.Oracle |p#0@@13| |st#0@@23|) Tclass.M0.Artifact $Heap@@3))
 :qid |CloudMakeCachedBuildsdfy.186:18|
 :skolemid |985|
 :pattern ( ($IsAllocBox (M0.__default.Oracle |p#0@@13| |st#0@@23|) Tclass.M0.Artifact $Heap@@3))
))))
(assert (forall ((d@@46 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@46)) (DtRank d@@46))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@46)))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((bx@@10 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@10 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@10)) bx@@10) ($Is SeqType ($Unbox SeqType bx@@10) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@10 (TSeq t@@6)))
)))
(assert (forall ((d@@47 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) ($Is DatatypeTypeType d@@47 Tclass.M0.Primitive)) ($IsAlloc DatatypeTypeType d@@47 Tclass.M0.Primitive $h@@18))
 :qid |unknown.0:0|
 :skolemid |2011|
 :pattern ( ($IsAlloc DatatypeTypeType d@@47 Tclass.M0.Primitive $h@@18))
)))
(assert (forall ((d@@48 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) ($Is DatatypeTypeType d@@48 Tclass.M0.Reason)) ($IsAlloc DatatypeTypeType d@@48 Tclass.M0.Reason $h@@19))
 :qid |unknown.0:0|
 :skolemid |2023|
 :pattern ( ($IsAlloc DatatypeTypeType d@@48 Tclass.M0.Reason $h@@19))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@20| T@U) (|deps#0@@20| T@U) (|exps#0@@17| T@U) (|st#0@@24| T@U) (|st'#0@@6| T@U) ) (!  (=> (or (|M0.__default.ExtendsLimit#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@20|) (Lit SetType |exps#0@@17|) (Lit BoxType |st#0@@24|) (Lit BoxType |st'#0@@6|)) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@20| (TSeq TChar)) ($Is SetType |deps#0@@20| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@17| (TSet (TSeq TChar)))) ($IsBox |st#0@@24| Tclass.M0.State)) ($IsBox |st'#0@@6| Tclass.M0.State)))) (and (and (|M0.__default.DomSt#canCall| (Lit BoxType |st'#0@@6|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@24|)) (forall ((|e#2@@7| T@U) ) (!  (=> ($Is SeqType |e#2@@7| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#2@@7|)) (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@20|) |e#2@@7|)))
 :qid |CloudMakeCachedBuildsdfy.179:35|
 :skolemid |976|
 :pattern ( (M0.__default.Loc |cmd#0@@20| |deps#0@@20| |e#2@@7|))
 :pattern ( (|Set#IsMember| |exps#0@@17| ($Box SeqType |e#2@@7|)))
)))) (= (M0.__default.ExtendsLimit (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@20|) (Lit SetType |exps#0@@17|) (Lit BoxType |st#0@@24|) (Lit BoxType |st'#0@@6|)) (|Set#Equal| (M0.__default.DomSt (Lit BoxType |st'#0@@6|)) (|Set#Union| (M0.__default.DomSt (Lit BoxType |st#0@@24|)) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) (Lit SetType |exps#0@@17|) (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@20|) |exps#0@@17| |cmd#0@@20| |deps#0@@20|)))))))
 :qid |CloudMakeCachedBuildsdfy.177:32|
 :weight 3
 :skolemid |977|
 :pattern ( (M0.__default.ExtendsLimit (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@20|) (Lit SetType |exps#0@@17|) (Lit BoxType |st#0@@24|) (Lit BoxType |st'#0@@6|)))
))))
(assert (= (Tag Tclass.M0.Expression) Tagclass.M0.Expression))
(assert (= (TagFamily Tclass.M0.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M0.Primitive) Tagclass.M0.Primitive))
(assert (= (TagFamily Tclass.M0.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M0.Literal) Tagclass.M0.Literal))
(assert (= (TagFamily Tclass.M0.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M0.Reason) Tagclass.M0.Reason))
(assert (= (TagFamily Tclass.M0.Reason) tytagFamily$Reason))
(assert (= |#M0.Literal.litTrue| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))
(assert (= |#M0.Literal.litFalse| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))
(assert (= |#M0.Literal.litUndefined| (Lit DatatypeTypeType |#M0.Literal.litUndefined|)))
(assert (= |#M0.Literal.litNull| (Lit DatatypeTypeType |#M0.Literal.litNull|)))
(assert (= |#M0.Primitive.primCreatePath| (Lit DatatypeTypeType |#M0.Primitive.primCreatePath|)))
(assert (= |#M0.Primitive.primExec| (Lit DatatypeTypeType |#M0.Primitive.primExec|)))
(assert (= |#M0.Reason.rValidity| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))
(assert (= |#M0.Reason.rInconsistentCache| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))
(assert (forall ((|a#95#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal) ($Is SeqType |a#95#0#0@@0| (TSeq TChar)))
 :qid |CloudMakeCachedBuildsdfy.235:54|
 :skolemid |1946|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@49 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (M0.Literal.litString_q d@@49) ($IsAlloc DatatypeTypeType d@@49 Tclass.M0.Literal $h@@20))) ($IsAlloc SeqType (M0.Literal.str d@@49) (TSeq TChar) $h@@20))
 :qid |unknown.0:0|
 :skolemid |1948|
 :pattern ( ($IsAlloc SeqType (M0.Literal.str d@@49) (TSeq TChar) $h@@20))
)))
(assert (forall ((|a#111#0#0| T@U) (d@@50 T@U) ) (!  (=> (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@50)) (< (DtRank d@@50) (DtRank (|#M0.Literal.litArrOfPaths| |a#111#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.239:36|
 :skolemid |1972|
 :pattern ( (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@50)) (|#M0.Literal.litArrOfPaths| |a#111#0#0|))
)))
(assert (forall ((|a#117#0#0| T@U) (d@@51 T@U) ) (!  (=> (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@51)) (< (DtRank d@@51) (DtRank (|#M0.Literal.litArrOfStrings| |a#117#0#0|))))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1982|
 :pattern ( (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@51)) (|#M0.Literal.litArrOfStrings| |a#117#0#0|))
)))
(assert (forall ((a@@36 T@U) (b@@36 T@U) ) (! (= (|Set#Equal| a@@36 b@@36) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@36 o@@3) (|Set#IsMember| b@@36 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@36 o@@3))
 :pattern ( (|Set#IsMember| b@@36 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@36 b@@36))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@1| T@U) (|stCombined#0@@1| T@U) (|args#0@@4| T@U) (|useCache#0@@1| T@U) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0@@1| |stCombined#0@@1| (Lit SeqType |args#0@@4|) (U_2_bool (Lit boolType |useCache#0@@1|))) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@1| Tclass.M0.State) ($IsBox |stCombined#0@@1| Tclass.M0.State)) ($Is SeqType |args#0@@4| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| (Lit SeqType |args#0@@4|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@4|) |stCombined#0@@1|))) (=> (and (= (|Seq#Length| (Lit SeqType |args#0@@4|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@4|) |stCombined#0@@1|)) (let ((|exps#1@@0| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 2)))))))
(let ((|deps#1@@0| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 1)))))))
(let ((|cmd#1@@0| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0)))))))
 (and (=> (not (U_2_bool (Lit boolType |useCache#0@@1|))) (and (|M0.__default.exec#canCall| |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@1|) (let ((|ps#2| (M0.__default.exec |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@1|)))
 (and (M0.Tuple.Pair_q |ps#2|) (M0.Tuple.Pair_q |ps#2|))))) (=> (U_2_bool (Lit boolType |useCache#0@@1|)) (and (|M0.__default.ConsistentCache#canCall| |stCombined#0@@1|) (=> (M0.__default.ConsistentCache |stCombined#0@@1|) (and (|M0.__default.execC#canCall| |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@1|) (let ((|ps#3| (M0.__default.execC |cmd#1@@0| |deps#1@@0| |exps#1@@0| |stCombined#0@@1|)))
 (and (M0.Tuple.Pair_q |ps#3|) (M0.Tuple.Pair_q |ps#3|))))))))))))) (= (M0.__default.evalCore |stOrig#0@@1| |stCombined#0@@1| (Lit SeqType |args#0@@4|) (U_2_bool (Lit boolType |useCache#0@@1|))) (ite  (and (= (|Seq#Length| (Lit SeqType |args#0@@4|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@4|) |stCombined#0@@1|)) (let ((|exps#1@@1| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 2)))))))
(let ((|deps#1@@1| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 1)))))))
(let ((|cmd#1@@1| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0)))))))
(ite  (not (U_2_bool (Lit boolType |useCache#0@@1|))) (let ((|ps#2@@0| (M0.__default.exec |cmd#1@@1| |deps#1@@1| |exps#1@@1| |stCombined#0@@1|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#2@@0|))))) (M0.Tuple.snd |ps#2@@0|))) (ite (M0.__default.ConsistentCache |stCombined#0@@1|) (let ((|ps#3@@0| (M0.__default.execC |cmd#1@@1| |deps#1@@1| |exps#1@@1| |stCombined#0@@1|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#3@@0|))))) (M0.Tuple.snd |ps#3@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |stOrig#0@@1|)))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stOrig#0@@1|)))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :weight 3
 :skolemid |1241|
 :pattern ( (M0.__default.evalCore |stOrig#0@@1| |stCombined#0@@1| (Lit SeqType |args#0@@4|) (U_2_bool (Lit boolType |useCache#0@@1|))))
))))
(assert (forall ((d@@52 T@U) (M0.Tuple$A@@6 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (M0.Tuple.Pair_q d@@52) (exists ((M0.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@52 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@21)
 :qid |unknown.0:0|
 :skolemid |2036|
 :pattern ( ($IsAlloc DatatypeTypeType d@@52 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@21))
)))) ($IsAllocBox (M0.Tuple.fst d@@52) M0.Tuple$A@@6 $h@@21))
 :qid |unknown.0:0|
 :skolemid |2037|
 :pattern ( ($IsAllocBox (M0.Tuple.fst d@@52) M0.Tuple$A@@6 $h@@21))
)))
(assert (forall ((d@@53 T@U) (M0.Tuple$B@@7 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (M0.Tuple.Pair_q d@@53) (exists ((M0.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@53 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@22)
 :qid |unknown.0:0|
 :skolemid |2038|
 :pattern ( ($IsAlloc DatatypeTypeType d@@53 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@22))
)))) ($IsAllocBox (M0.Tuple.snd d@@53) M0.Tuple$B@@7 $h@@22))
 :qid |unknown.0:0|
 :skolemid |2039|
 :pattern ( ($IsAllocBox (M0.Tuple.snd d@@53) M0.Tuple$B@@7 $h@@22))
)))
(assert (forall ((d@@54 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (M0.Expression.exprLiteral_q d@@54) ($IsAlloc DatatypeTypeType d@@54 Tclass.M0.Expression $h@@23))) ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@54) Tclass.M0.Literal $h@@23))
 :qid |unknown.0:0|
 :skolemid |1831|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@54) Tclass.M0.Literal $h@@23))
)))
(assert (forall ((d@@55 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (M0.Expression.exprIdentifier_q d@@55) ($IsAlloc DatatypeTypeType d@@55 Tclass.M0.Expression $h@@24))) ($IsAllocBox (M0.Expression.id d@@55) Tclass.M0.Identifier $h@@24))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAllocBox (M0.Expression.id d@@55) Tclass.M0.Identifier $h@@24))
)))
(assert (forall ((d@@56 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (M0.Expression.exprIf_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.M0.Expression $h@@25))) ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@56) Tclass.M0.Expression $h@@25))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@56) Tclass.M0.Expression $h@@25))
)))
(assert (forall ((d@@57 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (M0.Expression.exprIf_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.M0.Expression $h@@26))) ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@57) Tclass.M0.Expression $h@@26))
 :qid |unknown.0:0|
 :skolemid |1851|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@57) Tclass.M0.Expression $h@@26))
)))
(assert (forall ((d@@58 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (M0.Expression.exprIf_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass.M0.Expression $h@@27))) ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@58) Tclass.M0.Expression $h@@27))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@58) Tclass.M0.Expression $h@@27))
)))
(assert (forall ((d@@59 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (M0.Expression.exprAnd_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass.M0.Expression $h@@28))) ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@59) Tclass.M0.Expression $h@@28))
 :qid |unknown.0:0|
 :skolemid |1866|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@59) Tclass.M0.Expression $h@@28))
)))
(assert (forall ((d@@60 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M0.Expression.exprAnd_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.M0.Expression $h@@29))) ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@60) Tclass.M0.Expression $h@@29))
 :qid |unknown.0:0|
 :skolemid |1867|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@60) Tclass.M0.Expression $h@@29))
)))
(assert (forall ((d@@61 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M0.Expression.exprOr_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.M0.Expression $h@@30))) ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@61) Tclass.M0.Expression $h@@30))
 :qid |unknown.0:0|
 :skolemid |1879|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@61) Tclass.M0.Expression $h@@30))
)))
(assert (forall ((d@@62 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M0.Expression.exprOr_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.M0.Expression $h@@31))) ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@62) Tclass.M0.Expression $h@@31))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@62) Tclass.M0.Expression $h@@31))
)))
(assert (forall ((d@@63 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M0.Expression.exprInvocation_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.M0.Expression $h@@32))) ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@63) Tclass.M0.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@63) Tclass.M0.Expression $h@@32))
)))
(assert (forall ((d@@64 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M0.Expression.exprError_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.M0.Expression $h@@33))) ($IsAlloc DatatypeTypeType (M0.Expression.r d@@64) Tclass.M0.Reason $h@@33))
 :qid |unknown.0:0|
 :skolemid |1907|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.r d@@64) Tclass.M0.Reason $h@@33))
)))
(assert (forall ((d@@65 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M0.Literal.litPrimitive_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.M0.Literal $h@@34))) ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@65) Tclass.M0.Primitive $h@@34))
 :qid |unknown.0:0|
 :skolemid |1959|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@65) Tclass.M0.Primitive $h@@34))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|stC#0@@6| T@U) ) (!  (=> (or (|M0.__default.ConsistentCache#canCall| (Lit BoxType |stC#0@@6|)) (and (< 1 $FunctionContextHeight) ($IsBox |stC#0@@6| Tclass.M0.State))) (and (forall ((|cmd#1@@2| T@U) (|deps#1@@2| T@U) (|e#1@@7| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@2| (TSeq TChar)) ($Is SetType |deps#1@@2| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@7| (TSeq TChar))) (and (and (and (|M0.__default.Loc#canCall| |cmd#1@@2| |deps#1@@2| |e#1@@7|) (|M0.__default.Hash#canCall| (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@7|))) (|M0.__default.DomC#canCall| (Lit BoxType |stC#0@@6|))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@6|)) (M0.__default.Hash (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@7|))) (and (|M0.__default.Loc#canCall| |cmd#1@@2| |deps#1@@2| |e#1@@7|) (|M0.__default.DomSt#canCall| (Lit BoxType |stC#0@@6|))))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |845|
 :pattern ( (M0.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@7|))
)) (= (M0.__default.ConsistentCache (Lit BoxType |stC#0@@6|)) (forall ((|cmd#1@@3| T@U) (|deps#1@@3| T@U) (|e#1@@8| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@3| (TSeq TChar)) ($Is SetType |deps#1@@3| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@8| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC (Lit BoxType |stC#0@@6|)) (M0.__default.Hash (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@8|))) (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |stC#0@@6|)) (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@8|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |844|
 :pattern ( (M0.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@8|))
)))))
 :qid |CloudMakeCachedBuildsdfy.114:35|
 :weight 3
 :skolemid |846|
 :pattern ( (M0.__default.ConsistentCache (Lit BoxType |stC#0@@6|)))
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
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((d@@66 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M0.Literal.litArrOfStrings_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.M0.Literal $h@@35))) ($IsAlloc SetType (M0.Literal.strs d@@66) (TSet (TSeq TChar)) $h@@35))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsAlloc SetType (M0.Literal.strs d@@66) (TSet (TSeq TChar)) $h@@35))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@25| T@U) ) (!  (=> (or (|M0.__default.ValidState#canCall| (Lit BoxType |st#0@@25|)) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@25| Tclass.M0.State))) (and (forall ((|p#1@@3| T@U) ) (!  (=> ($IsBox |p#1@@3| Tclass.M0.Path) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@25|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@25|)) |p#1@@3|) (|M0.__default.WellFounded#canCall| |p#1@@3|))))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |729|
 :pattern ( (M0.__default.WellFounded |p#1@@3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@25|) |p#1@@3|))
)) (= (M0.__default.ValidState (Lit BoxType |st#0@@25|)) (forall ((|p#1@@4| T@U) ) (!  (=> ($IsBox |p#1@@4| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@25|)) |p#1@@4|) (M0.__default.WellFounded |p#1@@4|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |728|
 :pattern ( (M0.__default.WellFounded |p#1@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@25|) |p#1@@4|))
)))))
 :qid |CloudMakeCachedBuildsdfy.33:30|
 :weight 3
 :skolemid |730|
 :pattern ( (M0.__default.ValidState (Lit BoxType |st#0@@25|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@2| T@U) (|stCombined#0@@2| T@U) (|args#0@@5| T@U) (|useCache#0@@2| T@U) ) (!  (=> (or (|M0.__default.evalCore#canCall| (Lit BoxType |stOrig#0@@2|) (Lit BoxType |stCombined#0@@2|) (Lit SeqType |args#0@@5|) (U_2_bool (Lit boolType |useCache#0@@2|))) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@2| Tclass.M0.State) ($IsBox |stCombined#0@@2| Tclass.M0.State)) ($Is SeqType |args#0@@5| (TSeq Tclass.M0.Expression))))) (and (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| (Lit SeqType |args#0@@5|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@5|) (Lit BoxType |stCombined#0@@2|)))) (=> (and (= (|Seq#Length| (Lit SeqType |args#0@@5|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@5|) (Lit BoxType |stCombined#0@@2|))) (let ((|exps#2@@0| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 2)))))))
(let ((|deps#2@@0| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 1)))))))
(let ((|cmd#2@@0| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))))
 (and (=> (not (U_2_bool (Lit boolType |useCache#0@@2|))) (and (|M0.__default.exec#canCall| |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@2|)) (let ((|ps#4| (M0.__default.exec |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@2|))))
 (and (M0.Tuple.Pair_q |ps#4|) (M0.Tuple.Pair_q |ps#4|))))) (=> (U_2_bool (Lit boolType |useCache#0@@2|)) (and (|M0.__default.ConsistentCache#canCall| (Lit BoxType |stCombined#0@@2|)) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.ConsistentCache (Lit BoxType |stCombined#0@@2|))))) (and (|M0.__default.execC#canCall| |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@2|)) (let ((|ps#5| (M0.__default.execC |cmd#2@@0| |deps#2@@0| |exps#2@@0| (Lit BoxType |stCombined#0@@2|))))
 (and (M0.Tuple.Pair_q |ps#5|) (M0.Tuple.Pair_q |ps#5|))))))))))))) (= (M0.__default.evalCore (Lit BoxType |stOrig#0@@2|) (Lit BoxType |stCombined#0@@2|) (Lit SeqType |args#0@@5|) (U_2_bool (Lit boolType |useCache#0@@2|))) (ite  (and (= (|Seq#Length| (Lit SeqType |args#0@@5|)) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) (Lit SeqType |args#0@@5|) (Lit BoxType |stCombined#0@@2|))) (let ((|exps#2@@1| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 2)))))))
(let ((|deps#2@@1| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 1)))))))
(let ((|cmd#2@@1| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))))
(ite  (not (U_2_bool (Lit boolType |useCache#0@@2|))) (let ((|ps#4@@0| (M0.__default.exec |cmd#2@@1| |deps#2@@1| |exps#2@@1| (Lit BoxType |stCombined#0@@2|))))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#4@@0|))))) (M0.Tuple.snd |ps#4@@0|))) (ite (M0.__default.ConsistentCache (Lit BoxType |stCombined#0@@2|)) (let ((|ps#5@@0| (M0.__default.execC |cmd#2@@1| |deps#2@@1| |exps#2@@1| (Lit BoxType |stCombined#0@@2|))))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#5@@0|))))) (M0.Tuple.snd |ps#5@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |stOrig#0@@2|))))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) (Lit BoxType |stOrig#0@@2|))))))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :weight 3
 :skolemid |1242|
 :pattern ( (M0.__default.evalCore (Lit BoxType |stOrig#0@@2|) (Lit BoxType |stCombined#0@@2|) (Lit SeqType |args#0@@5|) (U_2_bool (Lit boolType |useCache#0@@2|))))
))))
(assert (forall ((|a#114#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal) ($Is SetType |a#114#0#0@@0| (TSet (TSeq TChar))))
 :qid |CloudMakeCachedBuildsdfy.240:38|
 :skolemid |1977|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@67 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M0.Expression.exprInvocation_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.M0.Expression $h@@36))) ($IsAlloc SeqType (M0.Expression.args d@@67) (TSeq Tclass.M0.Expression) $h@@36))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( ($IsAlloc SeqType (M0.Expression.args d@@67) (TSeq Tclass.M0.Expression) $h@@36))
)))
(assert (forall ((d@@68 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M0.Literal.litArrOfPaths_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.M0.Literal $h@@37))) ($IsAlloc SetType (M0.Literal.paths d@@68) (TSet Tclass.M0.Path) $h@@37))
 :qid |unknown.0:0|
 :skolemid |1969|
 :pattern ( ($IsAlloc SetType (M0.Literal.paths d@@68) (TSet Tclass.M0.Path) $h@@37))
)))
(assert (forall ((d@@69 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M0.Literal.litArray_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass.M0.Literal $h@@38))) ($IsAlloc SeqType (M0.Literal.arr d@@69) (TSeq Tclass.M0.Expression) $h@@38))
 :qid |unknown.0:0|
 :skolemid |1989|
 :pattern ( ($IsAlloc SeqType (M0.Literal.arr d@@69) (TSeq Tclass.M0.Expression) $h@@38))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|stOrig#0@@3| T@U) (|stCombined#0@@3| T@U) (|args#0@@6| T@U) (|useCache#0@@3| Bool) ) (!  (=> (or (|M0.__default.evalCore#canCall| |stOrig#0@@3| |stCombined#0@@3| |args#0@@6| |useCache#0@@3|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |stOrig#0@@3| Tclass.M0.State) ($IsBox |stCombined#0@@3| Tclass.M0.State)) ($Is SeqType |args#0@@6| (TSeq Tclass.M0.Expression))))) ($Is DatatypeTypeType (M0.__default.evalCore |stOrig#0@@3| |stCombined#0@@3| |args#0@@6| |useCache#0@@3|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeCachedBuildsdfy.495:27|
 :skolemid |1237|
 :pattern ( (M0.__default.evalCore |stOrig#0@@3| |stCombined#0@@3| |args#0@@6| |useCache#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@21| T@U) (|deps#0@@21| T@U) (|exps#0@@18| T@U) (|paths#0@@1| T@U) ) (!  (=> (or (|M0.__default.OneToOne#canCall| |cmd#0@@21| |deps#0@@21| |exps#0@@18| |paths#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@21| (TSeq TChar)) ($Is SetType |deps#0@@21| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@18| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@1| (TSet Tclass.M0.Path))))) (and (forall ((|e#0@@11| T@U) ) (!  (=> ($Is SeqType |e#0@@11| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@18| ($Box SeqType |e#0@@11|)) (|M0.__default.Loc#canCall| |cmd#0@@21| |deps#0@@21| |e#0@@11|)))
 :qid |CloudMakeCachedBuildsdfy.168:18|
 :skolemid |938|
 :pattern ( (M0.__default.Loc |cmd#0@@21| |deps#0@@21| |e#0@@11|))
 :pattern ( (|Set#IsMember| |exps#0@@18| ($Box SeqType |e#0@@11|)))
)) (= (M0.__default.OneToOne |cmd#0@@21| |deps#0@@21| |exps#0@@18| |paths#0@@1|) (|Set#Equal| |paths#0@@1| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |exps#0@@18| |cmd#0@@21| |deps#0@@21| |exps#0@@18| |cmd#0@@21| |deps#0@@21|))))))
 :qid |CloudMakeCachedBuildsdfy.162:28|
 :skolemid |939|
 :pattern ( (M0.__default.OneToOne |cmd#0@@21| |deps#0@@21| |exps#0@@18| |paths#0@@1|))
))))
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
(declare-fun |pth#0_0_0_0@0| () T@U)
(declare-fun |p#0@@14| () T@U)
(declare-fun |stCombinedC#0| () T@U)
(declare-fun |$rhs#0_2@0| () T@U)
(declare-fun |$rhs#0_0@0| () T@U)
(declare-fun |$rhs#0_1@0| () T@U)
(declare-fun |e#0_0_0_1_2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |##st#0_0_0_1_0@0| () T@U)
(declare-fun reveal_M0._default.Post () Bool)
(declare-fun $Heap@11 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##st#0_0_0_1_1@0| () T@U)
(declare-fun |##st#0_0_0_1_2@0| () T@U)
(declare-fun |e#0_0_0_1_3@0| () T@U)
(declare-fun |e#0_0_0_1_0@0| () T@U)
(declare-fun |stCombined#0@@4| () T@U)
(declare-fun |newPaths#0_0@0| () T@U)
(declare-fun |##st#0_0_0_1@0| () T@U)
(declare-fun |##st#0_0_0_0@0| () T@U)
(declare-fun |pth#0_1_0_0@0| () T@U)
(declare-fun |ps#0_0@0| () T@U)
(declare-fun |$rhs#0_1_1@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun reveal_M0._default.Extends () Bool)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |##st#0_1_0_1_0_3_0@0| () T@U)
(declare-fun |st1##0_1_0_1_0_3_0@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |##st#0_1_0_1_0_4_0@0| () T@U)
(declare-fun |##st#0_1_0_1_0_4_1@0| () T@U)
(declare-fun |##st#0_1_0_1_0_0@0| () T@U)
(declare-fun |e#0_1_0_1_2@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |##st#0_1_0_1_0@0| () T@U)
(declare-fun |e#0_1_0_1_3@0| () T@U)
(declare-fun |e#0_1_0_1_0@0| () T@U)
(declare-fun |##st#0_1_0_1@0| () T@U)
(declare-fun |##st#0_1_0_0@0| () T@U)
(declare-fun |pth#0_1_1_0@0| () T@U)
(declare-fun |st1##0_1_1_0_0_0_0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |##st#0_1_1_0_0_0_1@0| () T@U)
(declare-fun |##st#0_1_1_0@0| () T@U)
(declare-fun |pC#0| () T@U)
(declare-fun reveal_M0._default.StateCorrespondence () Bool)
(declare-fun |psC#0_0@0| () T@U)
(declare-fun |##st#0_6@0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |##stC#0_1@0| () T@U)
(declare-fun |st'##0_0_0@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |##st#0_0_6@0| () T@U)
(declare-fun |paths#0_0_0@0| () T@U)
(declare-fun |##st#0_0_4@0| () T@U)
(declare-fun |##st#0_0_5@0| () T@U)
(declare-fun |e#0_0_1@0| () T@U)
(declare-fun |##st#0_1_8@0| () T@U)
(declare-fun |##st#0_1_9@0| () T@U)
(declare-fun |##stC#0_1_1@0| () T@U)
(declare-fun |stC'#0_1_0@0| () T@U)
(declare-fun |##st#0_1_4@0| () T@U)
(declare-fun |$rhs#0_1_0@0| () T@U)
(declare-fun |result#0_1_0@0| () T@U)
(declare-fun |##st'#0_1_0@0| () T@U)
(declare-fun |e#0_3@0| () T@U)
(declare-fun |##p#0_0@0| () T@U)
(declare-fun |##st#0_3@0| () T@U)
(declare-fun |e#0_2@0| () T@U)
(declare-fun |args#0@@7| () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##st'#0_0@0| () T@U)
(declare-fun |##st'#0_1@0| () T@U)
(declare-fun |st#0@@26| () T@U)
(declare-fun |stC#0@@7| () T@U)
(declare-fun |##prim#4@0| () T@U)
(declare-fun |##prim#3@0| () T@U)
(declare-fun |##prim#1@0| () T@U)
(declare-fun |##prim#2@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |##prim#0@0| () T@U)
(declare-fun |fun#0| () T@U)
(declare-fun |cmd#0_0| () T@U)
(declare-fun |deps#0_0| () T@U)
(declare-fun |exts#0_0| () T@U)
(declare-fun |defass#ps#0_0| () Bool)
(declare-fun |ps#0_0| () T@U)
(declare-fun |defass#psC#0_0| () Bool)
(declare-fun |psC#0_0| () T@U)
(declare-fun |newPaths#0_0| () T@U)
(declare-fun |paths#0_0_0| () T@U)
(declare-fun |e#0_0_0_1_2| () T@U)
(declare-fun |defass#result#0_1_0| () Bool)
(declare-fun |result#0_1_0| () T@U)
(declare-fun |expr'#0_1_0| () T@U)
(declare-fun |defass#st'#0_1_0| () Bool)
(declare-fun |st'#0_1_0| () T@U)
(declare-fun |defass#stC'#0_1_0| () Bool)
(declare-fun |stC'#0_1_0| () T@U)
(declare-fun |e#0_1_0_1_2| () T@U)
(set-info :boogie-vc-id Impl$$M0.__default.EvalCoreDeepen)
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
 (=> (= (ControlFlow 0 0) 231) (let ((anon28_correct  (=> (= (ControlFlow 0 143) (- 0 142)) (= (M0.__default.GetSt |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.GetSt |pth#0_0_0_0@0| |stCombinedC#0|)))))
(let ((anon27_correct  (and (=> (= (ControlFlow 0 145) (- 0 149)) (or (and ($Is SeqType (Lit SeqType |Seq#Empty|) (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType (Lit SeqType |Seq#Empty|))) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| (Lit SeqType |Seq#Empty|))))) (exists ((|$as#e0_0_0_1_0#0_0_0_1_0| T@U) ) (!  (and ($Is SeqType |$as#e0_0_0_1_0#0_0_0_1_0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |$as#e0_0_0_1_0#0_0_0_1_0|)) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |$as#e0_0_0_1_0#0_0_0_1_0|))))
 :qid |CloudMakeCachedBuildsdfy.998:17|
 :skolemid |1617|
)))) (=> (or (and ($Is SeqType (Lit SeqType |Seq#Empty|) (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType (Lit SeqType |Seq#Empty|))) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| (Lit SeqType |Seq#Empty|))))) (exists ((|$as#e0_0_0_1_0#0_0_0_1_0@@0| T@U) ) (!  (and ($Is SeqType |$as#e0_0_0_1_0#0_0_0_1_0@@0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |$as#e0_0_0_1_0#0_0_0_1_0@@0|)) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |$as#e0_0_0_1_0#0_0_0_1_0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.998:17|
 :skolemid |1617|
))) (=> (and ($Is SeqType |e#0_0_0_1_2@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_2@0| (TSeq TChar) $Heap@2)) (=> (and (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_2@0|)) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_2@0|))) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (=> (and (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@2)) (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_0_0_1_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and ($IsAllocBox |##st#0_0_0_1_0@0| Tclass.M0.State $Heap@2) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))) (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))))) (and (=> (= (ControlFlow 0 145) (- 0 148)) (M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))) (=> (M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|)) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and (= $Heap@2 $Heap@11) reveal_M0._default.Post)) (and (and ($IsAllocBox |pth#0_0_0_0@0| Tclass.M0.Path $Heap@11) (M0.Tuple.Pair_q |p#0@@14|)) (and (= |##st#0_0_0_1_1@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |##st#0_0_0_1_1@0| Tclass.M0.State $Heap@11)))) (and (=> (= (ControlFlow 0 145) (- 0 147)) (|Set#IsMember| (M0.__default.DomSt |##st#0_0_0_1_1@0|) |pth#0_0_0_0@0|)) (=> (and (|M0.__default.GetSt#canCall| |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |pth#0_0_0_0@0| Tclass.M0.Path $Heap@11)) (=> (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_0_0_1_2@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_0_0_1_2@0| Tclass.M0.State $Heap@11) (|M0.__default.Oracle#canCall| |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.GetSt#canCall| |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|))) (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Oracle#canCall| |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|))))) (and (=> (= (ControlFlow 0 145) (- 0 146)) (= (M0.__default.GetSt |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.Oracle |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (=> (= (M0.__default.GetSt |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.Oracle |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|))) (=> (= (ControlFlow 0 145) 143) anon28_correct))))))))))))))))
(let ((anon26_correct  (=> (and (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_3@0|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_3@0|)) (= (ControlFlow 0 151) 145)) anon27_correct)))
(let ((anon93_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_3@0|))) (= (ControlFlow 0 153) 151)) anon26_correct)))
(let ((anon93_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_3@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SeqType |e#0_0_0_1_3@0| (TSeq TChar) $Heap@2)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_3@0|) (= (ControlFlow 0 152) 151))) anon26_correct))))
(let ((anon92_Then_correct  (=> (and ($Is SeqType |e#0_0_0_1_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_3@0| (TSeq TChar) $Heap@2)) (and (=> (= (ControlFlow 0 154) 152) anon93_Then_correct) (=> (= (ControlFlow 0 154) 153) anon93_Else_correct)))))
(let ((anon92_Else_correct  (=> (and (not (and ($Is SeqType |e#0_0_0_1_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_3@0| (TSeq TChar) $Heap@2))) (= (ControlFlow 0 150) 145)) anon27_correct)))
(let ((anon23_correct  (=> (forall ((|e#0_0_0_1_1| T@U) ) (!  (=> ($Is SeqType |e#0_0_0_1_1| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1|)))
 :qid |CloudMakeCachedBuildsdfy.997:27|
 :skolemid |1614|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1|)))
)) (and (=> (= (ControlFlow 0 155) (- 0 156)) (exists ((|e#0_0_0_1_1@@0| T@U) ) (!  (and ($Is SeqType |e#0_0_0_1_1@@0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1@@0|)) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1@@0|))))
 :qid |CloudMakeCachedBuildsdfy.997:27|
 :skolemid |1616|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1@@0|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1@@0|)))
))) (=> (exists ((|e#0_0_0_1_1@@1| T@U) ) (!  (and ($Is SeqType |e#0_0_0_1_1@@1| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1@@1|)) (= |pth#0_0_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1@@1|))))
 :qid |CloudMakeCachedBuildsdfy.997:27|
 :skolemid |1616|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_1@@1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_1@@1|)))
)) (and (=> (= (ControlFlow 0 155) 154) anon92_Then_correct) (=> (= (ControlFlow 0 155) 150) anon92_Else_correct)))))))
(let ((anon91_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_0@0|))) (= (ControlFlow 0 159) 155)) anon23_correct)))
(let ((anon91_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0_1_0@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SeqType |e#0_0_0_1_0@0| (TSeq TChar) $Heap@2)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0_1_0@0|) (= (ControlFlow 0 158) 155))) anon23_correct))))
(let ((anon90_Then_correct  (=> (and ($Is SeqType |e#0_0_0_1_0@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_0@0| (TSeq TChar) $Heap@2)) (and (=> (= (ControlFlow 0 160) 158) anon91_Then_correct) (=> (= (ControlFlow 0 160) 159) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (not (and ($Is SeqType |e#0_0_0_1_0@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_0@0| (TSeq TChar) $Heap@2))) (= (ControlFlow 0 157) 155)) anon23_correct)))
(let ((anon89_Else_correct  (=> (not (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_0_0_0@0|)) (and (=> (= (ControlFlow 0 161) (- 0 162)) (|Set#IsMember| |newPaths#0_0@0| |pth#0_0_0_0@0|)) (=> (|Set#IsMember| |newPaths#0_0@0| |pth#0_0_0_0@0|) (and (=> (= (ControlFlow 0 161) 160) anon90_Then_correct) (=> (= (ControlFlow 0 161) 157) anon90_Else_correct)))))))
(let ((anon89_Then_correct  (=> (and (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_0_0_0@0|) (= (ControlFlow 0 144) 143)) anon28_correct)))
(let ((anon88_Else_correct  (=> ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2) (=> (and (|M0.__default.DomSt#canCall| |stCombined#0@@4|) (|M0.__default.DomSt#canCall| |stCombined#0@@4|)) (and (=> (= (ControlFlow 0 163) 144) anon89_Then_correct) (=> (= (ControlFlow 0 163) 161) anon89_Else_correct))))))
(let ((anon88_Then_correct  (=> (and (and ($IsAllocBox |pth#0_0_0_0@0| Tclass.M0.Path $Heap@2) (M0.Tuple.Pair_q |p#0@@14|)) (and (= |##st#0_0_0_1@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |##st#0_0_0_1@0| Tclass.M0.State $Heap@2))) (and (=> (= (ControlFlow 0 140) (- 0 141)) (|Set#IsMember| (M0.__default.DomSt |##st#0_0_0_1@0|) |pth#0_0_0_0@0|)) (=> (and (and (|M0.__default.GetSt#canCall| |pth#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |pth#0_0_0_0@0| Tclass.M0.Path $Heap@2)) (and ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2) (= (ControlFlow 0 140) (- 0 139)))) (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |pth#0_0_0_0@0|))))))
(let ((anon87_Then_correct  (=> ($IsBox |pth#0_0_0_0@0| Tclass.M0.Path) (=> (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_0_0_0@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_0_0_0@0| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|))) (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_0_0_0@0|))) (and (=> (= (ControlFlow 0 164) 140) anon88_Then_correct) (=> (= (ControlFlow 0 164) 163) anon88_Else_correct))))))
(let ((anon57_correct  (=> (= (ControlFlow 0 75) (- 0 74)) (= (M0.__default.GetSt |pth#0_1_0_0@0| (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.GetSt |pth#0_1_0_0@0| |$rhs#0_1_1@0|)))))
(let ((anon109_Else_correct  (=> (and (= (M0.__default.GetSt |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.GetSt |pth#0_1_0_0@0| |$rhs#0_1_1@0|)) (= (ControlFlow 0 77) 75)) anon57_correct)))
(let ((anon99_Then_correct  (=> (and (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_1_0_0@0|) (= (ControlFlow 0 76) 75)) anon57_correct)))
(let ((anon109_Then_correct  (=> ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) (=> (and (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@5) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5))) (and (=> (= (ControlFlow 0 71) (- 0 73)) true) (=> ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@5) (and (=> (= (ControlFlow 0 71) (- 0 72)) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_0_0@0|)) (=> (|M0.__default.GetSt#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|) (=> (and (|M0.__default.GetSt#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|) (= (ControlFlow 0 71) (- 0 70))) (= (M0.__default.Oracle |pth#0_1_0_0@0| |$rhs#0_1_1@0|) (M0.__default.GetSt |pth#0_1_0_0@0| |$rhs#0_1_1@0|)))))))))))
(let ((anon108_Then_correct  (=> (and (and ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@5)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|))) (and (=> (= (ControlFlow 0 66) (- 0 69)) true) (and (=> (= (ControlFlow 0 66) (- 0 68)) (M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |$rhs#0_1_1@0|)) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |$rhs#0_1_1@0|) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|)) (= (M0.__default.Oracle |pth#0_1_0_0@0| |stCombinedC#0|) (M0.__default.Oracle |pth#0_1_0_0@0| |$rhs#0_1_1@0|))) (and (= $Heap@5 $Heap@8) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@8))) (and (=> (= (ControlFlow 0 66) (- 0 67)) true) (=> (and (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@8) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |$rhs#0_1_1@0|) (= (ControlFlow 0 66) (- 0 65)))) (= (M0.__default.Oracle |pth#0_1_0_0@0| |stCombinedC#0|) (M0.__default.Oracle |pth#0_1_0_0@0| |$rhs#0_1_1@0|))))))))))))
(let ((anon107_Then_correct  (=> (and (and ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@5)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |stCombinedC#0|)) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |stCombinedC#0|) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|)) (= (M0.__default.Oracle |pth#0_1_0_0@0| |stCombined#0@@4|) (M0.__default.Oracle |pth#0_1_0_0@0| |stCombinedC#0|))) (and (= $Heap@5 $Heap@7) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@7))) (and (and ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@7) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombinedC#0|) (= (ControlFlow 0 63) (- 0 62))))) (= (M0.__default.Oracle |pth#0_1_0_0@0| |stCombined#0@@4|) (M0.__default.Oracle |pth#0_1_0_0@0| |stCombinedC#0|)))))))))
(let ((anon106_Then_correct  (=> ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) (=> (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_0_1_0_3_0@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_1_0_1_0_3_0@0| Tclass.M0.State $Heap@5) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (=> (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|))) (M0.Tuple.Pair_q |p#0@@14|)) (and (M0.Tuple.Pair_q |p#0@@14|) (= |st1##0_1_0_1_0_3_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st1##0_1_0_1_0_3_0@0|)) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st1##0_1_0_1_0_3_0@0|) (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |st1##0_1_0_1_0_3_0@0|)) (= (M0.__default.Oracle |pth#0_1_0_0@0| |stCombined#0@@4|) (M0.__default.Oracle |pth#0_1_0_0@0| |st1##0_1_0_1_0_3_0@0|))) (and (= $Heap@5 $Heap@6) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@6))) (and (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@6) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|)) (and (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| |stCombined#0@@4|) (= (ControlFlow 0 60) (- 0 59))))) (= (M0.__default.Oracle |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.Oracle |pth#0_1_0_0@0| |stCombined#0@@4|)))))))))))
(let ((anon105_Then_correct  (=> (and ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) (M0.Tuple.Pair_q |p#0@@14|)) (=> (and (and (and (and (= |##st#0_1_0_1_0_4_0@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |##st#0_1_0_1_0_4_0@0| Tclass.M0.State $Heap@5)) (and (|Set#IsMember| (M0.__default.DomSt |##st#0_1_0_1_0_4_0@0|) |pth#0_1_0_0@0|) (|M0.__default.GetSt#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.GetSt#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|))) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5))) (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_0_1_0_4_1@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_1_0_1_0_4_1@0| Tclass.M0.State $Heap@5) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Oracle#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|))) (= (ControlFlow 0 58) (- 0 57))))) (= (M0.__default.GetSt |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)) (M0.__default.Oracle |pth#0_1_0_0@0| (M0.Tuple.snd |p#0@@14|)))))))
(let ((anon104_Then_correct  (=> ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@5) (=> (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_0_1_0_0@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_1_0_1_0_0@0| Tclass.M0.State $Heap@5) (= (ControlFlow 0 56) (- 0 55)))) (|Set#IsMember| (M0.__default.DomSt |##st#0_1_0_1_0_0@0|) |pth#0_1_0_0@0|)))))
(let ((anon49_correct  (and (=> (= (ControlFlow 0 78) (- 0 80)) (or (and ($Is SeqType (Lit SeqType |Seq#Empty|) (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType (Lit SeqType |Seq#Empty|))) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| (Lit SeqType |Seq#Empty|))))) (exists ((|$as#e0_1_0_1_0#0_1_0_1_0| T@U) ) (!  (and ($Is SeqType |$as#e0_1_0_1_0#0_1_0_1_0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |$as#e0_1_0_1_0#0_1_0_1_0|)) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |$as#e0_1_0_1_0#0_1_0_1_0|))))
 :qid |CloudMakeCachedBuildsdfy.1024:17|
 :skolemid |1625|
)))) (=> (or (and ($Is SeqType (Lit SeqType |Seq#Empty|) (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType (Lit SeqType |Seq#Empty|))) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| (Lit SeqType |Seq#Empty|))))) (exists ((|$as#e0_1_0_1_0#0_1_0_1_0@@0| T@U) ) (!  (and ($Is SeqType |$as#e0_1_0_1_0#0_1_0_1_0@@0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |$as#e0_1_0_1_0#0_1_0_1_0@@0|)) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |$as#e0_1_0_1_0#0_1_0_1_0@@0|))))
 :qid |CloudMakeCachedBuildsdfy.1024:17|
 :skolemid |1625|
))) (=> (and ($Is SeqType |e#0_1_0_1_2@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_2@0| (TSeq TChar) $Heap@3)) (=> (and (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_2@0|)) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_2@0|))) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@3)) (=> (and (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@3) ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@3)) (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_0_1_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and ($IsAllocBox |##st#0_1_0_1_0@0| Tclass.M0.State $Heap@3) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))) (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))))) (and (=> (= (ControlFlow 0 78) (- 0 79)) (M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|))) (=> (M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| (M0.Tuple.snd |p#0@@14|)) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (= $Heap@3 $Heap@5) reveal_M0._default.Post)) (and (and (and (and (and (and (=> (= (ControlFlow 0 78) 56) anon104_Then_correct) (=> (= (ControlFlow 0 78) 58) anon105_Then_correct)) (=> (= (ControlFlow 0 78) 60) anon106_Then_correct)) (=> (= (ControlFlow 0 78) 63) anon107_Then_correct)) (=> (= (ControlFlow 0 78) 66) anon108_Then_correct)) (=> (= (ControlFlow 0 78) 71) anon109_Then_correct)) (=> (= (ControlFlow 0 78) 77) anon109_Else_correct))))))))))))
(let ((anon48_correct  (=> (and (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_3@0|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_3@0|)) (= (ControlFlow 0 82) 78)) anon49_correct)))
(let ((anon103_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_3@0|))) (= (ControlFlow 0 84) 82)) anon48_correct)))
(let ((anon103_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_3@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@3)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@3) ($IsAlloc SeqType |e#0_1_0_1_3@0| (TSeq TChar) $Heap@3)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_3@0|) (= (ControlFlow 0 83) 82))) anon48_correct))))
(let ((anon102_Then_correct  (=> (and ($Is SeqType |e#0_1_0_1_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_3@0| (TSeq TChar) $Heap@3)) (and (=> (= (ControlFlow 0 85) 83) anon103_Then_correct) (=> (= (ControlFlow 0 85) 84) anon103_Else_correct)))))
(let ((anon102_Else_correct  (=> (and (not (and ($Is SeqType |e#0_1_0_1_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_3@0| (TSeq TChar) $Heap@3))) (= (ControlFlow 0 81) 78)) anon49_correct)))
(let ((anon45_correct  (=> (forall ((|e#0_1_0_1_1| T@U) ) (!  (=> ($Is SeqType |e#0_1_0_1_1| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1|)))
 :qid |CloudMakeCachedBuildsdfy.1023:27|
 :skolemid |1622|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1|)))
)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (exists ((|e#0_1_0_1_1@@0| T@U) ) (!  (and ($Is SeqType |e#0_1_0_1_1@@0| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1@@0|)) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1@@0|))))
 :qid |CloudMakeCachedBuildsdfy.1023:27|
 :skolemid |1624|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1@@0|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1@@0|)))
))) (=> (exists ((|e#0_1_0_1_1@@1| T@U) ) (!  (and ($Is SeqType |e#0_1_0_1_1@@1| (TSeq TChar)) (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1@@1|)) (= |pth#0_1_0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1@@1|))))
 :qid |CloudMakeCachedBuildsdfy.1023:27|
 :skolemid |1624|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_1@@1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_1@@1|)))
)) (and (=> (= (ControlFlow 0 86) 85) anon102_Then_correct) (=> (= (ControlFlow 0 86) 81) anon102_Else_correct)))))))
(let ((anon101_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_0@0|))) (= (ControlFlow 0 90) 86)) anon45_correct)))
(let ((anon101_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1_0_1_0@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@3)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@3) ($IsAlloc SeqType |e#0_1_0_1_0@0| (TSeq TChar) $Heap@3)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1_0_1_0@0|) (= (ControlFlow 0 89) 86))) anon45_correct))))
(let ((anon100_Then_correct  (=> (and ($Is SeqType |e#0_1_0_1_0@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_0@0| (TSeq TChar) $Heap@3)) (and (=> (= (ControlFlow 0 91) 89) anon101_Then_correct) (=> (= (ControlFlow 0 91) 90) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (not (and ($Is SeqType |e#0_1_0_1_0@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_0@0| (TSeq TChar) $Heap@3))) (= (ControlFlow 0 88) 86)) anon45_correct)))
(let ((anon99_Else_correct  (=> (not (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_1_0_0@0|)) (and (=> (= (ControlFlow 0 92) (- 0 93)) (|Set#IsMember| |newPaths#0_0@0| |pth#0_1_0_0@0|)) (=> (|Set#IsMember| |newPaths#0_0@0| |pth#0_1_0_0@0|) (and (=> (= (ControlFlow 0 92) 91) anon100_Then_correct) (=> (= (ControlFlow 0 92) 88) anon100_Else_correct)))))))
(let ((anon98_Else_correct  (=> ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.DomSt#canCall| |stCombined#0@@4|) (|M0.__default.DomSt#canCall| |stCombined#0@@4|)) (and (=> (= (ControlFlow 0 94) 76) anon99_Then_correct) (=> (= (ControlFlow 0 94) 92) anon99_Else_correct))))))
(let ((anon98_Then_correct  (=> ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@3) (and (=> (= (ControlFlow 0 51) (- 0 54)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (= |##st#0_1_0_1@0| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |##st#0_1_0_1@0| Tclass.M0.State $Heap@3)) (and (=> (= (ControlFlow 0 51) (- 0 53)) (|Set#IsMember| (M0.__default.DomSt |##st#0_1_0_1@0|) |pth#0_1_0_0@0|)) (=> (and (|M0.__default.GetSt#canCall| |pth#0_1_0_0@0| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |pth#0_1_0_0@0| Tclass.M0.Path $Heap@3)) (and (=> (= (ControlFlow 0 51) (- 0 52)) true) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (= (ControlFlow 0 51) (- 0 50))) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_0_0@0|)))))))))))
(let ((anon97_Then_correct  (=> ($IsBox |pth#0_1_0_0@0| Tclass.M0.Path) (and (=> (= (ControlFlow 0 95) (- 0 96)) true) (=> (and (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (= |##st#0_1_0_0@0| (M0.Tuple.snd |ps#0_0@0|))) (and ($IsAllocBox |##st#0_1_0_0@0| Tclass.M0.State $Heap@3) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |ps#0_0@0|)))) (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |ps#0_0@0|))) (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) |pth#0_1_0_0@0|))) (and (=> (= (ControlFlow 0 95) 51) anon98_Then_correct) (=> (= (ControlFlow 0 95) 94) anon98_Else_correct)))))))
(let ((anon117_Then_correct  (=> ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) (=> (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@3) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombined#0@@4|)) (=> (and (and (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombined#0@@4|) (M0.Tuple.Pair_q |p#0@@14|)) (and (M0.Tuple.Pair_q |p#0@@14|) (= |st1##0_1_1_0_0_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st1##0_1_1_0_0_0_0@0|)) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st1##0_1_1_0_0_0_0@0|) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombined#0@@4|) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |st1##0_1_1_0_0_0_0@0|)) (= (M0.__default.Oracle |pth#0_1_1_0@0| |stCombined#0@@4|) (M0.__default.Oracle |pth#0_1_1_0@0| |st1##0_1_1_0_0_0_0@0|))) (and (= $Heap@3 $Heap@4) ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@4))) (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_1_0_0_0_1@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_1_1_0_0_0_1@0| Tclass.M0.State $Heap@4) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|))) (= (ControlFlow 0 38) (- 0 37))))) (= (M0.__default.Oracle |pth#0_1_1_0@0| |stCombined#0@@4|) (M0.__default.Oracle |pth#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|))))))))))))
(let ((anon116_Then_correct  (=> (and ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@3)) (=> (and (and (and (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |pth#0_1_1_0@0|) (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |stCombinedC#0|)) (and (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |stCombinedC#0|) ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3))) (and (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@3) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombined#0@@4|)) (and (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombined#0@@4|) (= (ControlFlow 0 36) (- 0 35))))) (= (M0.__default.GetSt |pth#0_1_1_0@0| |stCombinedC#0|) (M0.__default.Oracle |pth#0_1_1_0@0| |stCombined#0@@4|))))))
(let ((anon115_Then_correct  (=> ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_0@0|)) (=> (and (and (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |$rhs#0_1_1@0|)) (and ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@3))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |pth#0_1_1_0@0|)) (=> (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |stCombinedC#0|) (=> (and (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |stCombinedC#0|) (= (ControlFlow 0 33) (- 0 32))) (= (M0.__default.GetSt |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (M0.__default.GetSt |pth#0_1_1_0@0| |stCombinedC#0|))))))))))
(let ((anon114_Then_correct  (=> ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) (and (=> (= (ControlFlow 0 30) (- 0 31)) true) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (= (ControlFlow 0 30) (- 0 29))) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_0@0|))))))
(let ((anon72_correct  (=> (= (ControlFlow 0 24) (- 0 23)) (= (M0.__default.GetSt |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (M0.__default.Oracle |pth#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|))))))
(let ((anon117_Else_correct  (=> (and (= (M0.__default.GetSt |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (M0.__default.Oracle |pth#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|))) (= (ControlFlow 0 40) 24)) anon72_correct)))
(let ((anon113_Then_correct  (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |pth#0_1_1_0@0|) (and (and (and (and (=> (= (ControlFlow 0 41) 30) anon114_Then_correct) (=> (= (ControlFlow 0 41) 33) anon115_Then_correct)) (=> (= (ControlFlow 0 41) 36) anon116_Then_correct)) (=> (= (ControlFlow 0 41) 38) anon117_Then_correct)) (=> (= (ControlFlow 0 41) 40) anon117_Else_correct)))))
(let ((anon113_Else_correct  (=> (and (not (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |pth#0_1_1_0@0|)) ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3)) (and (=> (= (ControlFlow 0 25) (- 0 28)) true) (=> ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (and (=> (= (ControlFlow 0 25) (- 0 27)) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_0@0|)) (=> (and (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |$rhs#0_1_1@0|) ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3)) (=> (and (and ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@3) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombinedC#0|)) (and (|M0.__default.GetSt#canCall| |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (|M0.__default.Oracle#canCall| |pth#0_1_1_0@0| |stCombinedC#0|))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (= (M0.__default.GetSt |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (M0.__default.Oracle |pth#0_1_1_0@0| |stCombinedC#0|))) (=> (= (M0.__default.GetSt |pth#0_1_1_0@0| |$rhs#0_1_1@0|) (M0.__default.Oracle |pth#0_1_1_0@0| |stCombinedC#0|)) (=> (= (ControlFlow 0 25) 24) anon72_correct)))))))))))
(let ((anon112_Else_correct  (=> ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.DomSt#canCall| |stCombined#0@@4|) (|M0.__default.DomSt#canCall| |stCombined#0@@4|)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (not (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_1_1_0@0|))) (=> (not (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |pth#0_1_1_0@0|)) (=> ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.DomSt#canCall| |stCombinedC#0|) (|M0.__default.DomSt#canCall| |stCombinedC#0|)) (and (=> (= (ControlFlow 0 42) 41) anon113_Then_correct) (=> (= (ControlFlow 0 42) 25) anon113_Else_correct))))))))))
(let ((anon112_Then_correct  (=> ($IsAllocBox |pth#0_1_1_0@0| Tclass.M0.Path $Heap@3) (and (=> (= (ControlFlow 0 21) (- 0 22)) true) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (= (ControlFlow 0 21) (- 0 20))) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_0@0|))))))
(let ((anon62_correct  (=> (and (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|))) (=> (not (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_0@0|)) (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|))) (and (not (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_0@0|)) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_0@0|))) (and (=> (= (ControlFlow 0 44) 21) anon112_Then_correct) (=> (= (ControlFlow 0 44) 42) anon112_Else_correct)))))
(let ((anon111_Else_correct  (=> (and (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_0@0|) (= (ControlFlow 0 47) 44)) anon62_correct)))
(let ((anon111_Then_correct  (=> (not (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_0@0|)) (and (=> (= (ControlFlow 0 45) (- 0 46)) true) (=> ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|) (= (ControlFlow 0 45) 44)) anon62_correct))))))
(let ((anon110_Then_correct  (=> ($IsBox |pth#0_1_1_0@0| Tclass.M0.Path) (=> (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_1_1_0@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_1_1_0@0| Tclass.M0.State $Heap@3) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|)))) (and (=> (= (ControlFlow 0 48) 45) anon111_Then_correct) (=> (= (ControlFlow 0 48) 47) anon111_Else_correct))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (|M0.Expression#Equal| ($Unbox DatatypeTypeType (M0.Tuple.fst |p#0@@14|)) ($Unbox DatatypeTypeType (M0.Tuple.fst |pC#0|)))) (=> (|M0.Expression#Equal| ($Unbox DatatypeTypeType (M0.Tuple.fst |p#0@@14|)) ($Unbox DatatypeTypeType (M0.Tuple.fst |pC#0|))) (=> (= (ControlFlow 0 2) (- 0 1)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |p#0@@14|) (M0.Tuple.snd |pC#0|)))))))
(let ((anon75_correct  (and (=> (= (ControlFlow 0 7) (- 0 13)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (and (=> (= (ControlFlow 0 7) (- 0 12)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (=> (and (M0.Tuple.Pair_q |ps#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)))) (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 10)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (= |##st#0_6@0| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |##st#0_6@0| Tclass.M0.State $Heap@10)) (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (=> (and (and (and (M0.Tuple.Pair_q |psC#0_0@0|) (= |##stC#0_1@0| (M0.Tuple.snd |psC#0_0@0|))) (and ($IsAllocBox |##stC#0_1@0| Tclass.M0.State $Heap@10) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)))) (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|))) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)) (=> (= (ControlFlow 0 7) 2) GeneratedUnifiedExit_correct)))))))))))))))))
(let ((anon87_Else_correct  (=> (and (and (forall ((|pth#0_0_0_1| T@U) ) (!  (=> (and ($IsBox |pth#0_0_0_1| Tclass.M0.Path) (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_0_0_1|)) (= (M0.__default.GetSt |pth#0_0_0_1| (M0.Tuple.snd |p#0@@14|)) (M0.__default.GetSt |pth#0_0_0_1| |stCombinedC#0|)))
 :qid |CloudMakeCachedBuildsdfy.990:16|
 :skolemid |1619|
 :pattern ( (M0.__default.GetSt |pth#0_0_0_1| |stCombinedC#0|))
 :pattern ( (M0.__default.GetSt |pth#0_0_0_1| (M0.Tuple.snd |p#0@@14|)))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_0_0_1|))
)) (M0.Tuple.Pair_q |p#0@@14|)) (and (M0.Tuple.Pair_q |p#0@@14|) (= |st'##0_0_0@0| (M0.Tuple.snd |p#0@@14|)))) (and (=> (= (ControlFlow 0 133) (- 0 138)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st'##0_0_0@0|)) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st'##0_0_0@0|) (and (=> (= (ControlFlow 0 133) (- 0 137)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |stCombined#0@@4| |stCombinedC#0|)) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |stCombined#0@@4| |stCombinedC#0|) (and (=> (= (ControlFlow 0 133) (- 0 136)) (|Set#Subset| (M0.__default.DomSt |st'##0_0_0@0|) (M0.__default.DomSt |stCombinedC#0|))) (=> (|Set#Subset| (M0.__default.DomSt |st'##0_0_0@0|) (M0.__default.DomSt |stCombinedC#0|)) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (|M0.__default.StateCorrespondence#canCall| |st'##0_0_0@0| |stCombinedC#0|)) (and (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |st'##0_0_0@0| |stCombinedC#0|) (= $Heap@2 $Heap@9))) (and (=> (= (ControlFlow 0 133) (- 0 135)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (= |##st#0_0_6@0| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |##st#0_0_6@0| Tclass.M0.State $Heap@9)) (=> (and (and ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@9) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) |stCombinedC#0|)) (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) |stCombinedC#0|))) (and (=> (= (ControlFlow 0 133) (- 0 134)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) |stCombinedC#0|)) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) |stCombinedC#0|) (=> (and (= $Heap@10 $Heap@9) (= (ControlFlow 0 133) 7)) anon75_correct)))))))))))))))))
(let ((anon15_correct  (=> (and (forall ((|e#0_0_0| T@U) ) (!  (=> ($Is SeqType |e#0_0_0| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0|)))
 :qid |CloudMakeCachedBuildsdfy.980:26|
 :skolemid |1613|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_0|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_0|)))
)) (= |paths#0_0_0@0| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|)))) (and (=> (= (ControlFlow 0 165) (- 0 178)) true) (=> (and (M0.Tuple.Pair_q |psC#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (and (=> (= (ControlFlow 0 165) (- 0 177)) (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |paths#0_0_0@0|)) (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |paths#0_0_0@0|) (and (=> (= (ControlFlow 0 165) (- 0 176)) true) (=> (|$IsA#M0.Tuple| |psC#0_0@0|) (and (=> (= (ControlFlow 0 165) (- 0 175)) (|M0.Tuple#Equal| |psC#0_0@0| (|#M0.Tuple.Pair| ($Box SetType |paths#0_0_0@0|) |stCombinedC#0|))) (=> (|M0.Tuple#Equal| |psC#0_0@0| (|#M0.Tuple.Pair| ($Box SetType |paths#0_0_0@0|) |stCombinedC#0|)) (and (=> (= (ControlFlow 0 165) (- 0 174)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (and (=> (= (ControlFlow 0 165) (- 0 173)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (=> (and (M0.Tuple.Pair_q |ps#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (and (=> (= (ControlFlow 0 165) (- 0 172)) (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)))) (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|))) (and (=> (= (ControlFlow 0 165) (- 0 171)) true) (=> (and (M0.Tuple.Pair_q |psC#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (and (=> (= (ControlFlow 0 165) (- 0 170)) (= (M0.Tuple.snd |psC#0_0@0|) |stCombinedC#0|)) (=> (= (M0.Tuple.snd |psC#0_0@0|) |stCombinedC#0|) (=> (and (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2)) (and (|M0.__default.StateCorrespondence#canCall| |stCombined#0@@4| |stCombinedC#0|) (|M0.__default.StateCorrespondence#canCall| |stCombined#0@@4| |stCombinedC#0|))) (and (=> (= (ControlFlow 0 165) (- 0 169)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |stCombined#0@@4| |stCombinedC#0|)) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |stCombined#0@@4| |stCombinedC#0|) (=> (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| |stCombined#0@@4|)) (=> (and (and ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| |stCombinedC#0|)) (and (|M0.__default.DomSt#canCall| |stCombined#0@@4|) (|M0.__default.DomSt#canCall| |stCombinedC#0|))) (and (=> (= (ControlFlow 0 165) (- 0 168)) (|Set#Subset| (M0.__default.DomSt |stCombined#0@@4|) (M0.__default.DomSt |stCombinedC#0|))) (=> (|Set#Subset| (M0.__default.DomSt |stCombined#0@@4|) (M0.__default.DomSt |stCombinedC#0|)) (=> ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2) (=> (and (|M0.__default.DomSt#canCall| |stCombinedC#0|) (|M0.__default.DomSt#canCall| |stCombinedC#0|)) (and (=> (= (ControlFlow 0 165) (- 0 167)) (|Set#Subset| |newPaths#0_0@0| (M0.__default.DomSt |stCombinedC#0|))) (=> (|Set#Subset| |newPaths#0_0@0| (M0.__default.DomSt |stCombinedC#0|)) (=> (and (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_0_4@0| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |##st#0_0_4@0| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|)))) (=> (and (and (and (M0.Tuple.Pair_q |pC#0|) (= |##st#0_0_5@0| (M0.Tuple.snd |pC#0|))) (and ($IsAllocBox |##st#0_0_5@0| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |pC#0|)))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|))) (and (M0.Tuple.Pair_q |pC#0|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |pC#0|))))) (and (=> (= (ControlFlow 0 165) (- 0 166)) (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) (M0.__default.DomSt (M0.Tuple.snd |pC#0|)))) (=> (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) (M0.__default.DomSt (M0.Tuple.snd |pC#0|))) (and (=> (= (ControlFlow 0 165) 164) anon87_Then_correct) (=> (= (ControlFlow 0 165) 133) anon87_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((anon86_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_1@0|))) (= (ControlFlow 0 181) 165)) anon15_correct)))
(let ((anon86_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_0_1@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SeqType |e#0_0_1@0| (TSeq TChar) $Heap@2)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_0_1@0|) (= (ControlFlow 0 180) 165))) anon15_correct))))
(let ((anon85_Then_correct  (=> (and ($Is SeqType |e#0_0_1@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_1@0| (TSeq TChar) $Heap@2)) (and (=> (= (ControlFlow 0 182) 180) anon86_Then_correct) (=> (= (ControlFlow 0 182) 181) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (and ($Is SeqType |e#0_0_1@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_1@0| (TSeq TChar) $Heap@2))) (= (ControlFlow 0 179) 165)) anon15_correct)))
(let ((anon84_Then_correct  (=> (forall ((|e#0_4| T@U) ) (!  (=> (and ($Is SeqType |e#0_4| (TSeq TChar)) (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4|))) (|Set#IsMember| (M0.__default.DomC |stCombinedC#0|) (M0.__default.Hash (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4|))))
 :qid |CloudMakeCachedBuildsdfy.979:17|
 :skolemid |1633|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4|)))
)) (and (=> (= (ControlFlow 0 183) 182) anon85_Then_correct) (=> (= (ControlFlow 0 183) 179) anon85_Else_correct)))))
(let ((anon110_Else_correct  (=> (and (and (forall ((|pth#0_1_1_1| T@U) ) (!  (=> (and ($IsBox |pth#0_1_1_1| Tclass.M0.Path) (and (not (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_1|)) (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_1|))) (= (M0.__default.GetSt |pth#0_1_1_1| |$rhs#0_1_1@0|) (M0.__default.Oracle |pth#0_1_1_1| (M0.Tuple.snd |p#0@@14|))))
 :qid |CloudMakeCachedBuildsdfy.1042:16|
 :skolemid |1632|
 :pattern ( (M0.__default.Oracle |pth#0_1_1_1| (M0.Tuple.snd |p#0@@14|)))
 :pattern ( (M0.__default.GetSt |pth#0_1_1_1| |$rhs#0_1_1@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |$rhs#0_1_1@0|) |pth#0_1_1_1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) |pth#0_1_1_1|))
)) (M0.Tuple.Pair_q |p#0@@14|)) (and (= |##st#0_1_8@0| (M0.Tuple.snd |p#0@@14|)) ($IsAllocBox |##st#0_1_8@0| Tclass.M0.State $Heap@3))) (and (=> (= (ControlFlow 0 14) (- 0 19)) true) (=> (and (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |p#0@@14|) |$rhs#0_1_1@0|)) (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |p#0@@14|) |$rhs#0_1_1@0|))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |p#0@@14|) |$rhs#0_1_1@0|)) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |p#0@@14|) |$rhs#0_1_1@0|) (and (=> (= (ControlFlow 0 14) (- 0 17)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (= |##st#0_1_9@0| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |##st#0_1_9@0| Tclass.M0.State $Heap@3)) (and (=> (= (ControlFlow 0 14) (- 0 16)) true) (=> (and (and (and (M0.Tuple.Pair_q |psC#0_0@0|) (= |##stC#0_1_1@0| (M0.Tuple.snd |psC#0_0@0|))) (and ($IsAllocBox |##stC#0_1_1@0| Tclass.M0.State $Heap@3) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)))) (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|)) (|M0.__default.StateCorrespondence#canCall| (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|))) (=> (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence (M0.Tuple.snd |ps#0_0@0|) (M0.Tuple.snd |psC#0_0@0|)) (=> (and (= $Heap@10 $Heap@3) (= (ControlFlow 0 14) 7)) anon75_correct)))))))))))))))
(let ((anon97_Else_correct  (=> (forall ((|pth#0_1_0_1| T@U) ) (!  (=> (and ($IsBox |pth#0_1_0_1| Tclass.M0.Path) (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) |pth#0_1_0_1|)) (= (M0.__default.GetSt |pth#0_1_0_1| (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.GetSt |pth#0_1_0_1| |$rhs#0_1_1@0|)))
 :qid |CloudMakeCachedBuildsdfy.1017:16|
 :skolemid |1630|
 :pattern ( (M0.__default.GetSt |pth#0_1_0_1| |$rhs#0_1_1@0|))
 :pattern ( (M0.__default.GetSt |pth#0_1_0_1| (M0.Tuple.snd |ps#0_0@0|)))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) |pth#0_1_0_1|))
)) (and (=> (= (ControlFlow 0 49) 48) anon110_Then_correct) (=> (= (ControlFlow 0 49) 14) anon110_Else_correct)))))
(let ((anon37_correct  (=> (and (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |ps#0_0@0|))) (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|)) (=> (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.DomSt |$rhs#0_1_1@0|)) (and (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|) (|M0.__default.DomSt#canCall| |stC'#0_1_0@0|)))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.DomSt |$rhs#0_1_1@0|))) (and (=> (= (ControlFlow 0 97) (- 0 98)) (|Set#Equal| (M0.__default.DomSt |$rhs#0_1_1@0|) (M0.__default.DomSt |stC'#0_1_0@0|))) (=> (and (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.DomSt |$rhs#0_1_1@0|)) (|Set#Equal| (M0.__default.DomSt |$rhs#0_1_1@0|) (M0.__default.DomSt |stC'#0_1_0@0|))) (and (=> (= (ControlFlow 0 97) 95) anon97_Then_correct) (=> (= (ControlFlow 0 97) 49) anon97_Else_correct))))))))
(let ((anon96_Else_correct  (=> (and (not (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.DomSt |$rhs#0_1_1@0|))) (= (ControlFlow 0 103) 97)) anon37_correct)))
(let ((anon96_Then_correct  (=> (|Set#Subset| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.DomSt |$rhs#0_1_1@0|)) (and (=> (= (ControlFlow 0 100) (- 0 102)) true) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|)) (and (=> (= (ControlFlow 0 100) (- 0 101)) true) (=> ($IsAllocBox |stC'#0_1_0@0| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.DomSt#canCall| |stC'#0_1_0@0|) (= (ControlFlow 0 100) 97)) anon37_correct))))))))
(let ((anon35_correct  (=> (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.Extends#canCall| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (|M0.__default.Extends#canCall| |stCombinedC#0| |stC'#0_1_0@0|))) (and (=> (= (ControlFlow 0 104) (- 0 108)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (and (=> (= (ControlFlow 0 104) (- 0 107)) (M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |stC'#0_1_0@0|)) (=> (and (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |stC'#0_1_0@0|)) (and (=> (= (ControlFlow 0 104) (- 0 106)) true) (=> (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (= |##st#0_1_4@0| (M0.Tuple.snd |ps#0_0@0|))) (and ($IsAllocBox |##st#0_1_4@0| Tclass.M0.State $Heap@3) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |ps#0_0@0|)))) (and (=> (= (ControlFlow 0 104) (- 0 105)) true) (=> (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@3) (|M0.__default.DomSt#canCall| |$rhs#0_1_1@0|)) (and (=> (= (ControlFlow 0 104) 100) anon96_Then_correct) (=> (= (ControlFlow 0 104) 103) anon96_Else_correct))))))))))))
(let ((anon95_Else_correct  (=> (and (not (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (= (ControlFlow 0 111) 104)) anon35_correct)))
(let ((anon95_Then_correct  (=> (and (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@3)) (and (=> (= (ControlFlow 0 109) (- 0 110)) true) (=> ($IsAllocBox |stC'#0_1_0@0| Tclass.M0.State $Heap@3) (=> (and (|M0.__default.Extends#canCall| |stCombinedC#0| |stC'#0_1_0@0|) (= (ControlFlow 0 109) 104)) anon35_correct))))))
(let ((anon33_correct  (=> (and (M0.Tuple.Pair_q |psC#0_0@0|) (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |$rhs#0_1_0@0|) (M0.Tuple.Pair_q |result#0_1_0@0|))) (and (=> (= (ControlFlow 0 112) (- 0 121)) (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |$rhs#0_1_0@0|)) (and (=> (= (ControlFlow 0 112) (- 0 120)) (|Set#Equal| |$rhs#0_1_0@0| ($Unbox SetType (M0.Tuple.fst |result#0_1_0@0|)))) (=> (and (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |$rhs#0_1_0@0|) (|Set#Equal| |$rhs#0_1_0@0| ($Unbox SetType (M0.Tuple.fst |result#0_1_0@0|)))) (and (=> (= (ControlFlow 0 112) (- 0 119)) (=> (|M0.__default.ValidState#canCall| |stCombinedC#0|) (or (M0.__default.ValidState |stCombinedC#0|) (forall ((|p#0@@15| T@U) ) (!  (=> ($IsBox |p#0@@15| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#0@@15|) (M0.__default.WellFounded |p#0@@15|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |905|
 :pattern ( (M0.__default.WellFounded |p#0@@15|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#0@@15|))
))))) (=> (=> (|M0.__default.ValidState#canCall| |stCombinedC#0|) (or (M0.__default.ValidState |stCombinedC#0|) (forall ((|p#0@@16| T@U) ) (!  (=> ($IsBox |p#0@@16| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#0@@16|) (M0.__default.WellFounded |p#0@@16|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |905|
 :pattern ( (M0.__default.WellFounded |p#0@@16|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#0@@16|))
)))) (and (=> (= (ControlFlow 0 112) (- 0 118)) (|Set#Subset| |$rhs#0_1@0| (M0.__default.DomSt |stCombinedC#0|))) (=> (|Set#Subset| |$rhs#0_1@0| (M0.__default.DomSt |stCombinedC#0|)) (and (=> (= (ControlFlow 0 112) (- 0 117)) (=> (|M0.__default.Pre#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (or (M0.__default.Pre |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (forall ((|e#0@@12| T@U) ) (!  (=> ($Is SeqType |e#0@@12| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@12|)) (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@12|)) (= (M0.__default.GetSt (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@12|) |stCombinedC#0|) (M0.__default.Oracle (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@12|) |stCombinedC#0|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |907|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@12|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@12|)))
))))) (=> (=> (|M0.__default.Pre#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (or (M0.__default.Pre |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (forall ((|e#0@@13| T@U) ) (!  (=> ($Is SeqType |e#0@@13| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@13|)) (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@13|)) (= (M0.__default.GetSt (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@13|) |stCombinedC#0|) (M0.__default.Oracle (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@13|) |stCombinedC#0|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |907|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@13|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@13|)))
)))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (let ((|result#0@@1| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
 (and (and (M0.Tuple.Pair_q |result#0@@1|) (M0.Tuple.Pair_q |result#0@@1|)) (let ((|st'#0@@7| (M0.Tuple.snd |result#0@@1|)))
(let ((|paths#0@@2| ($Unbox SetType (M0.Tuple.fst |result#0@@1|))))
 (and (|M0.__default.ValidState#canCall| |st'#0@@7|) (=> (M0.__default.ValidState |st'#0@@7|) (and (|M0.__default.Extends#canCall| |stCombinedC#0| |st'#0@@7|) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |st'#0@@7|) (and (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0| |st'#0@@7|) (=> (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0| |st'#0@@7|) (and (and (|M0.__default.DomC#canCall| |stCombinedC#0|) (|M0.__default.DomC#canCall| |st'#0@@7|)) (=> (|Set#Equal| (M0.__default.DomC |stCombinedC#0|) (M0.__default.DomC |st'#0@@7|)) (and (|M0.__default.OneToOne#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@2|) (=> (M0.__default.OneToOne |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@2|) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |st'#0@@7|)))))))))))))))) (let ((|result#0@@2| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|st'#0@@8| (M0.Tuple.snd |result#0@@2|)))
 (and (|M0.__default.ValidState#canCall| |st'#0@@8|) (and (M0.__default.ValidState |st'#0@@8|) (forall ((|p#1@@5| T@U) ) (!  (=> ($IsBox |p#1@@5| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@8|) |p#1@@5|) (M0.__default.WellFounded |p#1@@5|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |910|
 :pattern ( (M0.__default.WellFounded |p#1@@5|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@8|) |p#1@@5|))
))))))) (and (let ((|result#0@@3| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|st'#0@@9| (M0.Tuple.snd |result#0@@3|)))
(M0.__default.Extends reveal_M0._default.Extends |stCombinedC#0| |st'#0@@9|))) (let ((|result#0@@4| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|st'#0@@10| (M0.Tuple.snd |result#0@@4|)))
 (and (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0| |st'#0@@10|) (and (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0| |st'#0@@10|) (|Set#Equal| (M0.__default.DomSt |st'#0@@10|) (|Set#Union| (M0.__default.DomSt |stCombinedC#0|) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|)))))))))) (and (and (let ((|result#0@@5| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|st'#0@@11| (M0.Tuple.snd |result#0@@5|)))
(|Set#Equal| (M0.__default.DomC |stCombinedC#0|) (M0.__default.DomC |st'#0@@11|)))) (let ((|result#0@@6| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|paths#0@@3| ($Unbox SetType (M0.Tuple.fst |result#0@@6|))))
 (and (|M0.__default.OneToOne#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@3|) (and (M0.__default.OneToOne |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@3|) (|Set#Equal| |paths#0@@3| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|)))))))) (and (let ((|result#0@@7| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))
(let ((|st'#0@@12| (M0.Tuple.snd |result#0@@7|)))
(M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |st'#0@@12|))) (= $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 112) (- 0 116)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (and (=> (= (ControlFlow 0 112) (- 0 115)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (M0.Tuple.Pair_q |psC#0_0@0|) (M0.Tuple.Pair_q |ps#0_0@0|)) (and (=> (= (ControlFlow 0 112) (- 0 114)) (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|)))) (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|))) (=> ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@3) (and (=> (= (ControlFlow 0 112) (- 0 113)) true) (=> (and (and (M0.Tuple.Pair_q |ps#0_0@0|) (= |##st'#0_1_0@0| (M0.Tuple.snd |ps#0_0@0|))) (and ($IsAllocBox |##st'#0_1_0@0| Tclass.M0.State $Heap@3) (|M0.__default.Extends#canCall| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)))) (and (=> (= (ControlFlow 0 112) 109) anon95_Then_correct) (=> (= (ControlFlow 0 112) 111) anon95_Else_correct))))))))))))))))))))))))))
(let ((anon94_Else_correct  (=> (and (not (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |$rhs#0_1_0@0|)) (= (ControlFlow 0 124) 112)) anon33_correct)))
(let ((anon94_Then_correct  (=> (|Set#Equal| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|)) |$rhs#0_1_0@0|) (and (=> (= (ControlFlow 0 122) (- 0 123)) true) (=> (and (M0.Tuple.Pair_q |result#0_1_0@0|) (= (ControlFlow 0 122) 112)) anon33_correct)))))
(let ((anon84_Else_correct  (=> (not (forall ((|e#0_4@@0| T@U) ) (!  (=> (and ($Is SeqType |e#0_4@@0| (TSeq TChar)) (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4@@0|))) (|Set#IsMember| (M0.__default.DomC |stCombinedC#0|) (M0.__default.Hash (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4@@0|))))
 :qid |CloudMakeCachedBuildsdfy.979:17|
 :skolemid |1633|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4@@0|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4@@0|)))
))) (=> (and (and (and ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2) ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2)) (and ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@2) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2))) (and (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (M0.Tuple.Pair_q (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|))) (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (= |result#0_1_0@0| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|))))) (and (=> (= (ControlFlow 0 125) (- 0 132)) true) (=> (M0.Tuple.Pair_q |result#0_1_0@0|) (=> (and (M0.Tuple.Pair_q |result#0_1_0@0|) (= |$rhs#0_1_0@0| ($Unbox SetType (M0.Tuple.fst |result#0_1_0@0|)))) (and (=> (= (ControlFlow 0 125) (- 0 131)) true) (=> (and (M0.Tuple.Pair_q |result#0_1_0@0|) (M0.Tuple.Pair_q |result#0_1_0@0|)) (=> (and (and (= |$rhs#0_1_1@0| (M0.Tuple.snd |result#0_1_0@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@2))) (and (=> (= (ControlFlow 0 125) (- 0 130)) true) (=> (and (and ($IsAllocBox |$rhs#0_1_1@0| Tclass.M0.State $Heap@2) (|M0.__default.UpdateC#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_1_1@0|)) (and (|M0.__default.UpdateC#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_1_1@0|) (= |stC'#0_1_0@0| (M0.__default.UpdateC |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_1_1@0|)))) (and (=> (= (ControlFlow 0 125) (- 0 129)) true) (and (=> (= (ControlFlow 0 125) (- 0 128)) true) (=> (|$IsA#M0.Tuple| |psC#0_0@0|) (and (=> (= (ControlFlow 0 125) (- 0 127)) (|M0.Tuple#Equal| |psC#0_0@0| (|#M0.Tuple.Pair| ($Box SetType |$rhs#0_1_0@0|) |stC'#0_1_0@0|))) (=> (|M0.Tuple#Equal| |psC#0_0@0| (|#M0.Tuple.Pair| ($Box SetType |$rhs#0_1_0@0|) |stC'#0_1_0@0|)) (and (=> (= (ControlFlow 0 125) (- 0 126)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (and (=> (= (ControlFlow 0 125) 122) anon94_Then_correct) (=> (= (ControlFlow 0 125) 124) anon94_Else_correct)))))))))))))))))))))
(let ((anon11_correct  (=> (forall ((|e#0_4@@1| T@U) ) (!  (=> ($Is SeqType |e#0_4@@1| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4@@1|)) (and (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4@@1|) (|M0.__default.Hash#canCall| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4@@1|))) (|M0.__default.DomC#canCall| |stCombinedC#0|))))
 :qid |CloudMakeCachedBuildsdfy.979:17|
 :skolemid |1611|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_4@@1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_4@@1|)))
)) (and (=> (= (ControlFlow 0 184) 183) anon84_Then_correct) (=> (= (ControlFlow 0 184) 125) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_3@0|))) (= (ControlFlow 0 187) 184)) anon11_correct)))
(let ((anon83_Then_correct  (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_3@0|)) (=> (and ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2) ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2)) (=> (and (and (and ($IsAlloc SeqType |e#0_3@0| (TSeq TChar) $Heap@2) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_3@0|)) (and (= |##p#0_0@0| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_3@0|)) ($IsAllocBox |##p#0_0@0| Tclass.M0.Path $Heap@2))) (and (and (|M0.__default.Hash#canCall| (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_3@0|)) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@2)) (and (|M0.__default.DomC#canCall| |stCombinedC#0|) (= (ControlFlow 0 186) 184)))) anon11_correct)))))
(let ((anon82_Then_correct  (=> (and ($Is SeqType |e#0_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_3@0| (TSeq TChar) $Heap@2)) (and (=> (= (ControlFlow 0 188) 186) anon83_Then_correct) (=> (= (ControlFlow 0 188) 187) anon83_Else_correct)))))
(let ((anon82_Else_correct  (=> (and (not (and ($Is SeqType |e#0_3@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_3@0| (TSeq TChar) $Heap@2))) (= (ControlFlow 0 185) 184)) anon11_correct)))
(let ((anon8_correct  (=> (and (and (forall ((|e#0_1| T@U) ) (!  (=> ($Is SeqType |e#0_1| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1|)) (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1|)))
 :qid |CloudMakeCachedBuildsdfy.977:27|
 :skolemid |1610|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0_1|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_1|)))
)) (= |newPaths#0_0@0| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|)))) (and (M0.Tuple.Pair_q |p#0@@14|) (= |##st#0_3@0| (M0.Tuple.snd |p#0@@14|)))) (=> (and (and (and ($IsAllocBox |##st#0_3@0| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|))) (and ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2) (|M0.__default.DomSt#canCall| |stCombined#0@@4|))) (and (and (M0.Tuple.Pair_q |p#0@@14|) (|M0.__default.DomSt#canCall| (M0.Tuple.snd |p#0@@14|))) (|M0.__default.DomSt#canCall| |stCombined#0@@4|))) (and (=> (= (ControlFlow 0 189) (- 0 190)) (|Set#Equal| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) (|Set#Union| (M0.__default.DomSt |stCombined#0@@4|) |newPaths#0_0@0|))) (=> (|Set#Equal| (M0.__default.DomSt (M0.Tuple.snd |p#0@@14|)) (|Set#Union| (M0.__default.DomSt |stCombined#0@@4|) |newPaths#0_0@0|)) (and (=> (= (ControlFlow 0 189) 188) anon82_Then_correct) (=> (= (ControlFlow 0 189) 185) anon82_Else_correct))))))))
(let ((anon81_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_2@0|))) (= (ControlFlow 0 193) 189)) anon8_correct)))
(let ((anon81_Then_correct  (=> (and (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0_2@0|)) ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2)) (=> (and (and ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2) ($IsAlloc SeqType |e#0_2@0| (TSeq TChar) $Heap@2)) (and (|M0.__default.Loc#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |e#0_2@0|) (= (ControlFlow 0 192) 189))) anon8_correct))))
(let ((anon80_Then_correct  (=> (and ($Is SeqType |e#0_2@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_2@0| (TSeq TChar) $Heap@2)) (and (=> (= (ControlFlow 0 194) 192) anon81_Then_correct) (=> (= (ControlFlow 0 194) 193) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (not (and ($Is SeqType |e#0_2@0| (TSeq TChar)) ($IsAlloc SeqType |e#0_2@0| (TSeq TChar) $Heap@2))) (= (ControlFlow 0 191) 189)) anon8_correct)))
(let ((anon79_Then_correct  (=> (and (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|)) (and (=> (= (ControlFlow 0 195) (- 0 217)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |args#0@@7|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |args#0@@7|))) (and (=> (= (ControlFlow 0 195) (- 0 216)) (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))))) (=> (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0)))) (and (=> (= (ControlFlow 0 195) (- 0 215)) (M0.Literal.litString_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0)))))) (=> (M0.Literal.litString_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))))) (=> (= |$rhs#0_0@0| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0)))))) (and (=> (= (ControlFlow 0 195) (- 0 214)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |args#0@@7|)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |args#0@@7|))) (and (=> (= (ControlFlow 0 195) (- 0 213)) (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 1))))) (=> (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 1)))) (and (=> (= (ControlFlow 0 195) (- 0 212)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 1)))))) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 1))))) (=> (= |$rhs#0_1@0| (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 1)))))) (and (=> (= (ControlFlow 0 195) (- 0 211)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |args#0@@7|)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |args#0@@7|))) (and (=> (= (ControlFlow 0 195) (- 0 210)) (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 2))))) (=> (M0.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 2)))) (and (=> (= (ControlFlow 0 195) (- 0 209)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 2)))))) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 2))))) (=> (= |$rhs#0_2@0| (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 2)))))) (=> (and (and (and (and ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@@4) ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@@4)) (and ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@@4) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@@4))) (and (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (M0.Tuple.Pair_q (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|))) (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (= |ps#0_0@0| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|))))) (and (and (and ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@@4) ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@@4)) (and ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@@4) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@@4))) (and (and (|M0.__default.execC#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (M0.Tuple.Pair_q (M0.__default.execC |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|))) (and (|M0.__default.execC#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|) (= |psC#0_0@0| (M0.__default.execC |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombinedC#0|)))))) (and (=> (= (ControlFlow 0 195) (- 0 208)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (and (=> (= (ControlFlow 0 195) (- 0 207)) true) (=> (M0.Tuple.Pair_q |ps#0_0@0|) (=> (and (|$IsA#M0.Tuple| |p#0@@14|) (and (M0.Tuple.Pair_q |ps#0_0@0|) (M0.Tuple.Pair_q |ps#0_0@0|))) (and (=> (= (ControlFlow 0 195) (- 0 206)) (|M0.Tuple#Equal| |p#0@@14| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|))))) (M0.Tuple.snd |ps#0_0@0|)))) (=> (|M0.Tuple#Equal| |p#0@@14| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#0_0@0|))))) (M0.Tuple.snd |ps#0_0@0|))) (and (=> (= (ControlFlow 0 195) (- 0 205)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (and (=> (= (ControlFlow 0 195) (- 0 204)) true) (=> (M0.Tuple.Pair_q |psC#0_0@0|) (=> (and (|$IsA#M0.Tuple| |pC#0|) (and (M0.Tuple.Pair_q |psC#0_0@0|) (M0.Tuple.Pair_q |psC#0_0@0|))) (and (=> (= (ControlFlow 0 195) (- 0 203)) (|M0.Tuple#Equal| |pC#0| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|))))) (M0.Tuple.snd |psC#0_0@0|)))) (=> (|M0.Tuple#Equal| |pC#0| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |psC#0_0@0|))))) (M0.Tuple.snd |psC#0_0@0|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@4 $Heap@0) reveal_M0._default.Extends)) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (= $Heap@0 $Heap@1) reveal_M0._default.StateCorrespondence))) (and (=> (= (ControlFlow 0 195) (- 0 202)) (=> (|M0.__default.ValidState#canCall| |stCombined#0@@4|) (or (M0.__default.ValidState |stCombined#0@@4|) (forall ((|p#0@@17| T@U) ) (!  (=> ($IsBox |p#0@@17| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#0@@17|) (M0.__default.WellFounded |p#0@@17|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |905|
 :pattern ( (M0.__default.WellFounded |p#0@@17|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#0@@17|))
))))) (=> (=> (|M0.__default.ValidState#canCall| |stCombined#0@@4|) (or (M0.__default.ValidState |stCombined#0@@4|) (forall ((|p#0@@18| T@U) ) (!  (=> ($IsBox |p#0@@18| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#0@@18|) (M0.__default.WellFounded |p#0@@18|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |905|
 :pattern ( (M0.__default.WellFounded |p#0@@18|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#0@@18|))
)))) (and (=> (= (ControlFlow 0 195) (- 0 201)) (|Set#Subset| |$rhs#0_1@0| (M0.__default.DomSt |stCombined#0@@4|))) (=> (|Set#Subset| |$rhs#0_1@0| (M0.__default.DomSt |stCombined#0@@4|)) (and (=> (= (ControlFlow 0 195) (- 0 200)) (=> (|M0.__default.Pre#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (or (M0.__default.Pre |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (forall ((|e#0@@14| T@U) ) (!  (=> ($Is SeqType |e#0@@14| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@14|)) (=> (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@14|)) (= (M0.__default.GetSt (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@14|) |stCombined#0@@4|) (M0.__default.Oracle (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@14|) |stCombined#0@@4|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |907|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@14|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@14|)))
))))) (=> (=> (|M0.__default.Pre#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (or (M0.__default.Pre |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (forall ((|e#0@@15| T@U) ) (!  (=> ($Is SeqType |e#0@@15| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@15|)) (=> (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@15|)) (= (M0.__default.GetSt (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@15|) |stCombined#0@@4|) (M0.__default.Oracle (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@15|) |stCombined#0@@4|)))))
 :qid |CloudMakeCachedBuildsdfy.158:12|
 :skolemid |907|
 :pattern ( (M0.__default.Loc |$rhs#0_0@0| |$rhs#0_1@0| |e#0@@15|))
 :pattern ( (|Set#IsMember| |$rhs#0_2@0| ($Box SeqType |e#0@@15|)))
)))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (|M0.__default.exec#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|) (let ((|result#0@@8| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
 (and (and (M0.Tuple.Pair_q |result#0@@8|) (M0.Tuple.Pair_q |result#0@@8|)) (let ((|st'#0@@13| (M0.Tuple.snd |result#0@@8|)))
(let ((|paths#0@@4| ($Unbox SetType (M0.Tuple.fst |result#0@@8|))))
 (and (|M0.__default.ValidState#canCall| |st'#0@@13|) (=> (M0.__default.ValidState |st'#0@@13|) (and (|M0.__default.Extends#canCall| |stCombined#0@@4| |st'#0@@13|) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st'#0@@13|) (and (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| |st'#0@@13|) (=> (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| |st'#0@@13|) (and (and (|M0.__default.DomC#canCall| |stCombined#0@@4|) (|M0.__default.DomC#canCall| |st'#0@@13|)) (=> (|Set#Equal| (M0.__default.DomC |stCombined#0@@4|) (M0.__default.DomC |st'#0@@13|)) (and (|M0.__default.OneToOne#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@4|) (=> (M0.__default.OneToOne |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@4|) (|M0.__default.Post#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |st'#0@@13|))))))))))))))))) (=> (and (and (and (let ((|result#0@@9| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|st'#0@@14| (M0.Tuple.snd |result#0@@9|)))
 (and (|M0.__default.ValidState#canCall| |st'#0@@14|) (and (M0.__default.ValidState |st'#0@@14|) (forall ((|p#1@@6| T@U) ) (!  (=> ($IsBox |p#1@@6| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@14|) |p#1@@6|) (M0.__default.WellFounded |p#1@@6|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |910|
 :pattern ( (M0.__default.WellFounded |p#1@@6|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@14|) |p#1@@6|))
)))))) (let ((|result#0@@10| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|st'#0@@15| (M0.Tuple.snd |result#0@@10|)))
(M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| |st'#0@@15|)))) (and (let ((|result#0@@11| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|st'#0@@16| (M0.Tuple.snd |result#0@@11|)))
 (and (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| |st'#0@@16|) (and (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| |st'#0@@16|) (|Set#Equal| (M0.__default.DomSt |st'#0@@16|) (|Set#Union| (M0.__default.DomSt |stCombined#0@@4|) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|)))))))) (let ((|result#0@@12| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|st'#0@@17| (M0.Tuple.snd |result#0@@12|)))
(|Set#Equal| (M0.__default.DomC |stCombined#0@@4|) (M0.__default.DomC |st'#0@@17|)))))) (and (and (let ((|result#0@@13| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|paths#0@@5| ($Unbox SetType (M0.Tuple.fst |result#0@@13|))))
 (and (|M0.__default.OneToOne#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@5|) (and (M0.__default.OneToOne |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |paths#0@@5|) (|Set#Equal| |paths#0@@5| (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|))))))) (let ((|result#0@@14| (M0.__default.exec |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4|)))
(let ((|st'#0@@18| (M0.Tuple.snd |result#0@@14|)))
(M0.__default.Post reveal_M0._default.Post |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |st'#0@@18|)))) (and (= $Heap@1 $Heap@2) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2)))) (and (=> (= (ControlFlow 0 195) (- 0 199)) true) (=> (and (M0.Tuple.Pair_q |ps#0_0@0|) (= |##st'#0_0@0| (M0.Tuple.snd |ps#0_0@0|))) (=> (and (and ($IsAllocBox |##st'#0_0@0| Tclass.M0.State $Heap@2) (|M0.__default.Extends#canCall| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.Extends#canCall| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)))) (and (=> (= (ControlFlow 0 195) (- 0 198)) (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (=> (M0.__default.Extends reveal_M0._default.Extends |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (=> (and (and ($IsAlloc SeqType |$rhs#0_0@0| (TSeq TChar) $Heap@2) ($IsAlloc SetType |$rhs#0_1@0| (TSet Tclass.M0.Path) $Heap@2)) (and ($IsAlloc SetType |$rhs#0_2@0| (TSet (TSeq TChar)) $Heap@2) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@2))) (and (=> (= (ControlFlow 0 195) (- 0 197)) true) (=> (and (M0.Tuple.Pair_q |ps#0_0@0|) (= |##st'#0_1@0| (M0.Tuple.snd |ps#0_0@0|))) (=> (and (and ($IsAllocBox |##st'#0_1@0| Tclass.M0.State $Heap@2) (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|))) (and (M0.Tuple.Pair_q |ps#0_0@0|) (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)))) (and (=> (= (ControlFlow 0 195) (- 0 196)) (=> (|M0.__default.ExtendsLimit#canCall| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (or (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (|Set#Equal| (M0.__default.DomSt (M0.Tuple.snd |ps#0_0@0|)) (|Set#Union| (M0.__default.DomSt |stCombined#0@@4|) (|Set#FromBoogieMap| (|lambda#12| (TSeq TChar) |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |$rhs#0_0@0| |$rhs#0_1@0|))))))) (=> (M0.__default.ExtendsLimit |$rhs#0_0@0| |$rhs#0_1@0| |$rhs#0_2@0| |stCombined#0@@4| (M0.Tuple.snd |ps#0_0@0|)) (and (=> (= (ControlFlow 0 195) 194) anon80_Then_correct) (=> (= (ControlFlow 0 195) 191) anon80_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon79_Else_correct  (=> (and (not (and (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|))) (|$IsA#M0.Tuple| |p#0@@14|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (|M0.Tuple#Equal| |p#0@@14| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |st#0@@26|))) (=> (|M0.Tuple#Equal| |p#0@@14| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |st#0@@26|)) (=> (|$IsA#M0.Tuple| |pC#0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|M0.Tuple#Equal| |pC#0| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stC#0@@7|))) (=> (|M0.Tuple#Equal| |pC#0| (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rInconsistentCache|)))) |stC#0@@7|)) (=> (= (ControlFlow 0 4) 2) GeneratedUnifiedExit_correct)))))))))
(let ((anon4_correct  (=> (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|))) (and (=> (= (ControlFlow 0 218) 195) anon79_Then_correct) (=> (= (ControlFlow 0 218) 4) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (or (not (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|))))) (not true)) (= (ControlFlow 0 222) 218)) anon4_correct)))
(let ((anon78_Then_correct  (=> (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (=> (and (and (= |##prim#4@0| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) ($IsAlloc DatatypeTypeType |##prim#4@0| Tclass.M0.Primitive $Heap@@4)) (and ($IsAlloc SeqType |args#0@@7| (TSeq Tclass.M0.Expression) $Heap@@4) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@@4))) (and (=> (= (ControlFlow 0 219) (- 0 221)) (=> (M0.Primitive.primExec_q |##prim#4@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 3)))) (=> (=> (M0.Primitive.primExec_q |##prim#4@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 3))) (and (=> (= (ControlFlow 0 219) (- 0 220)) (=> (M0.Primitive.primCreatePath_q |##prim#4@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 1)))) (=> (=> (M0.Primitive.primCreatePath_q |##prim#4@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 1))) (=> (and (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|) (= (ControlFlow 0 219) 218)) anon4_correct)))))))))
(let ((anon2_correct  (=> (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (and (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombinedC#0|)))) (=> (and (and (=> (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombinedC#0|))) (= |##prim#3@0| (Lit DatatypeTypeType |#M0.Primitive.primExec|))) (and ($IsAlloc DatatypeTypeType |##prim#3@0| Tclass.M0.Primitive $Heap@@4) (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (and (=> (= (ControlFlow 0 223) 219) anon78_Then_correct) (=> (= (ControlFlow 0 223) 222) anon78_Else_correct))))))
(let ((anon77_Else_correct  (=> (and (or (not (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|))))) (not true)) (= (ControlFlow 0 229) 223)) anon2_correct)))
(let ((anon77_Then_correct  (=> (= (|Seq#Length| |args#0@@7|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (=> (and (and (= |##prim#1@0| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) ($IsAlloc DatatypeTypeType |##prim#1@0| Tclass.M0.Primitive $Heap@@4)) (and ($IsAlloc SeqType |args#0@@7| (TSeq Tclass.M0.Expression) $Heap@@4) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@@4))) (and (=> (= (ControlFlow 0 224) (- 0 228)) (=> (M0.Primitive.primExec_q |##prim#1@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 3)))) (and (=> (= (ControlFlow 0 224) (- 0 227)) (=> (M0.Primitive.primCreatePath_q |##prim#1@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 1)))) (=> (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombined#0@@4|) (=> (and (and (= |##prim#2@0| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) ($IsAlloc DatatypeTypeType |##prim#2@0| Tclass.M0.Primitive $Heap@@4)) (and ($IsAlloc SeqType |args#0@@7| (TSeq Tclass.M0.Expression) $Heap@@4) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@@4))) (and (=> (= (ControlFlow 0 224) (- 0 226)) (=> (M0.Primitive.primExec_q |##prim#2@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 3)))) (and (=> (= (ControlFlow 0 224) (- 0 225)) (=> (M0.Primitive.primCreatePath_q |##prim#2@0|) (= (|Seq#Length| |args#0@@7|) (LitInt 1)))) (=> (and (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args#0@@7| |stCombinedC#0|) (= (ControlFlow 0 224) 223)) anon2_correct)))))))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@4 alloc false)) (= |##prim#0@0| (Lit DatatypeTypeType |#M0.Primitive.primExec|))) (and ($IsAlloc DatatypeTypeType |##prim#0@0| Tclass.M0.Primitive $Heap@@4) (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (and (=> (= (ControlFlow 0 230) 224) anon77_Then_correct) (=> (= (ControlFlow 0 230) 229) anon77_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (and (and (and (and (and ($Is DatatypeTypeType |p#0@@14| (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)) ($IsAlloc DatatypeTypeType |p#0@@14| (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@4)) (|$IsA#M0.Tuple| |p#0@@14|)) (and (and ($IsBox |st#0@@26| Tclass.M0.State) ($IsAllocBox |st#0@@26| Tclass.M0.State $Heap@@4)) (and ($IsBox |stCombined#0@@4| Tclass.M0.State) ($IsAllocBox |stCombined#0@@4| Tclass.M0.State $Heap@@4)))) (and (and (and ($Is DatatypeTypeType |pC#0| (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)) ($IsAlloc DatatypeTypeType |pC#0| (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@4)) (|$IsA#M0.Tuple| |pC#0|)) (and (and ($IsBox |stC#0@@7| Tclass.M0.State) ($IsAllocBox |stC#0@@7| Tclass.M0.State $Heap@@4)) (and ($IsBox |stCombinedC#0| Tclass.M0.State) ($IsAllocBox |stCombinedC#0| Tclass.M0.State $Heap@@4))))) (and (and (and (and ($Is DatatypeTypeType |fun#0| Tclass.M0.Expression) ($IsAlloc DatatypeTypeType |fun#0| Tclass.M0.Expression $Heap@@4)) (|$IsA#M0.Expression| |fun#0|)) (and ($Is SeqType |args#0@@7| (TSeq Tclass.M0.Expression)) ($IsAlloc SeqType |args#0@@7| (TSeq Tclass.M0.Expression) $Heap@@4))) (and (and (and ($Is SeqType |cmd#0_0| (TSeq TChar)) ($IsAlloc SeqType |cmd#0_0| (TSeq TChar) $Heap@@4)) true) (and (and ($Is SetType |deps#0_0| (TSet Tclass.M0.Path)) ($IsAlloc SetType |deps#0_0| (TSet Tclass.M0.Path) $Heap@@4)) true)))) (and (and (and (and (and ($Is SetType |exts#0_0| (TSet (TSeq TChar))) ($IsAlloc SetType |exts#0_0| (TSet (TSeq TChar)) $Heap@@4)) true) (and (and (=> |defass#ps#0_0| (and ($Is DatatypeTypeType |ps#0_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)) ($IsAlloc DatatypeTypeType |ps#0_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State) $Heap@@4))) true) (and (=> |defass#psC#0_0| (and ($Is DatatypeTypeType |psC#0_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)) ($IsAlloc DatatypeTypeType |psC#0_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State) $Heap@@4))) true))) (and (and (and ($Is SetType |newPaths#0_0| (TSet Tclass.M0.Path)) ($IsAlloc SetType |newPaths#0_0| (TSet Tclass.M0.Path) $Heap@@4)) true) (and (and ($Is SetType |paths#0_0_0| (TSet Tclass.M0.Path)) ($IsAlloc SetType |paths#0_0_0| (TSet Tclass.M0.Path) $Heap@@4)) true))) (and (and (and (and ($Is SeqType |e#0_0_0_1_2| (TSeq TChar)) ($IsAlloc SeqType |e#0_0_0_1_2| (TSeq TChar) $Heap@@4)) true) (and (=> |defass#result#0_1_0| (and ($Is DatatypeTypeType |result#0_1_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)) ($IsAlloc DatatypeTypeType |result#0_1_0| (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State) $Heap@@4))) true)) (and (and (and ($Is SetType |expr'#0_1_0| (TSet Tclass.M0.Path)) ($IsAlloc SetType |expr'#0_1_0| (TSet Tclass.M0.Path) $Heap@@4)) true) (and (and (=> |defass#st'#0_1_0| (and ($IsBox |st'#0_1_0| Tclass.M0.State) ($IsAllocBox |st'#0_1_0| Tclass.M0.State $Heap@@4))) true) (and (=> |defass#stC'#0_1_0| (and ($IsBox |stC'#0_1_0| Tclass.M0.State) ($IsAllocBox |stC'#0_1_0| Tclass.M0.State $Heap@@4))) true)))))) (and (and (and (and (and (and ($Is SeqType |e#0_1_0_1_2| (TSeq TChar)) ($IsAlloc SeqType |e#0_1_0_1_2| (TSeq TChar) $Heap@@4)) true) (= 5 $FunctionContextHeight)) (and (|M0.Tuple#Equal| |p#0@@14| (M0.__default.evalCore |st#0@@26| |stCombined#0@@4| |args#0@@7| (U_2_bool (Lit boolType (bool_2_U false))))) (|M0.Tuple#Equal| |pC#0| (M0.__default.evalCore |stC#0@@7| |stCombinedC#0| |args#0@@7| (U_2_bool (Lit boolType (bool_2_U true))))))) (and (and (|M0.__default.ValidState#canCall| |stCombined#0@@4|) (and (M0.__default.ValidState |stCombined#0@@4|) (forall ((|p#3@@3| T@U) ) (!  (=> ($IsBox |p#3@@3| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#3@@3|) (M0.__default.WellFounded |p#3@@3|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |1599|
 :pattern ( (M0.__default.WellFounded |p#3@@3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombined#0@@4|) |p#3@@3|))
)))) (and (|M0.__default.ValidState#canCall| |stCombinedC#0|) (and (M0.__default.ValidState |stCombinedC#0|) (forall ((|p#4| T@U) ) (!  (=> ($IsBox |p#4| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#4|) (M0.__default.WellFounded |p#4|)))
 :qid |CloudMakeCachedBuildsdfy.35:12|
 :skolemid |1601|
 :pattern ( (M0.__default.WellFounded |p#4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) |p#4|))
)))))) (and (and (and (|M0.__default.ConsistentCache#canCall| |stCombinedC#0|) (and (M0.__default.ConsistentCache |stCombinedC#0|) (forall ((|cmd#1@@4| T@U) (|deps#1@@4| T@U) (|e#1@@9| T@U) ) (!  (=> (and (and ($Is SeqType |cmd#1@@4| (TSeq TChar)) ($Is SetType |deps#1@@4| (TSet Tclass.M0.Path))) ($Is SeqType |e#1@@9| (TSeq TChar))) (=> (|Set#IsMember| (M0.__default.DomC |stCombinedC#0|) (M0.__default.Hash (M0.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@9|))) (|Set#IsMember| (M0.__default.DomSt |stCombinedC#0|) (M0.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@9|))))
 :qid |CloudMakeCachedBuildsdfy.116:12|
 :skolemid |1603|
 :pattern ( (M0.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@9|))
)))) (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |st#0@@26| |stC#0@@7|)) (and (M0.__default.StateCorrespondence reveal_M0._default.StateCorrespondence |stCombined#0@@4| |stCombinedC#0|) (= (ControlFlow 0 231) 230))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
