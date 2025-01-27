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
(declare-fun Tagclass.M0.Program () T@U)
(declare-fun Tagclass.M0.Statement () T@U)
(declare-fun Tagclass.M0.Primitive () T@U)
(declare-fun |##M0.Program.Program| () T@U)
(declare-fun |##M0.Statement.stmtVariable| () T@U)
(declare-fun |##M0.Statement.stmtReturn| () T@U)
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
(declare-fun |##M0.Tuple.Pair| () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Tuple () T@U)
(declare-fun tytagFamily$Program () T@U)
(declare-fun tytagFamily$Statement () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun M0.__default.evalArgs (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.M0.Tuple (T@U T@U) T@U)
(declare-fun Tclass.M0.Expression () T@U)
(declare-fun Tclass.M0.State () T@U)
(declare-fun |M0.__default.evalArgs#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.M0.Env () T@U)
(declare-fun M0.__default.ValidEnv (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#M0.Statement.stmtVariable| (T@U T@U) T@U)
(declare-fun Tclass.M0.Statement () T@U)
(declare-fun Tclass.M0.Identifier () T@U)
(declare-fun |#M0.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun |#M0.Expression.exprOr| (T@U T@U) T@U)
(declare-fun M0.__default.ValidArgs (T@U T@U T@U) Bool)
(declare-fun |M0.__default.ValidArgs#canCall| (T@U T@U T@U) Bool)
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
(declare-fun M0.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |#M0.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun M0.__default.Combine (T@U T@U) T@U)
(declare-fun |M0.__default.Combine#canCall| (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |M0.Literal#Equal| (T@U T@U) Bool)
(declare-fun M0.Literal.litNumber_q (T@U) Bool)
(declare-fun M0.Literal.num (T@U) Int)
(declare-fun |#M0.Program.Program| (T@U) T@U)
(declare-fun |#M0.Literal.litString| (T@U) T@U)
(declare-fun |#M0.Literal.litArray| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M0.Expression.cond (T@U) T@U)
(declare-fun M0.Expression.ifTrue (T@U) T@U)
(declare-fun M0.Expression.ifFalse (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun M0.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M0.__default.Oracle (T@U T@U) T@U)
(declare-fun |M0.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M0.Artifact () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |#M0.Literal.litTrue| () T@U)
(declare-fun |#M0.Literal.litFalse| () T@U)
(declare-fun |#M0.Literal.litUndefined| () T@U)
(declare-fun |#M0.Literal.litNull| () T@U)
(declare-fun |#M0.Primitive.primCreatePath| () T@U)
(declare-fun |#M0.Primitive.primExec| () T@U)
(declare-fun |#M0.Reason.rCompatibility| () T@U)
(declare-fun |#M0.Reason.rValidity| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun M0.Program.Program_q (T@U) Bool)
(declare-fun Tclass.M0.Program () T@U)
(declare-fun M0.__default.Union (T@U T@U) T@U)
(declare-fun |M0.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.GetSt (T@U T@U) T@U)
(declare-fun |#M0.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Tclass.M0.Literal () T@U)
(declare-fun Tclass.M0.Reason () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M0.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |M0.Primitive#Equal| (T@U T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun M0.__default.Legal (T@U) Bool)
(declare-fun |M0.__default.Legal#canCall| (T@U) Bool)
(declare-fun M0.__default.do (T@U T@U T@U T@U) T@U)
(declare-fun |M0.__default.do#canCall| (T@U T@U T@U) Bool)
(declare-fun M0.Statement.stmtVariable_q (T@U) Bool)
(declare-fun M0.Statement.stmtReturn_q (T@U) Bool)
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
(declare-fun M0.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M0.Literal.litArray_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun M0.__default.GetEnv (T@U T@U) T@U)
(declare-fun |M0.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun M0.__default.Value (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |$let#0_st| (T@U) T@U)
(declare-fun |M0.__default.eval#canCall| (T@U T@U T@U) Bool)
(declare-fun M0.Statement.expr (T@U) T@U)
(declare-fun M0.Tuple.snd (T@U) T@U)
(declare-fun M0.__default.eval (T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun M0.Tuple.fst (T@U) T@U)
(declare-fun |M0.__default.Value#canCall| (T@U) Bool)
(declare-fun |M0.__default.SetEnv#canCall| (T@U T@U T@U) Bool)
(declare-fun M0.Statement.id (T@U) T@U)
(declare-fun M0.__default.SetEnv (T@U T@U T@U) T@U)
(declare-fun M0.Statement.ret (T@U) T@U)
(declare-fun |#M0.Expression.exprError| (T@U) T@U)
(declare-fun |$IsA#M0.Literal| (T@U) Bool)
(declare-fun M0.Expression.id (T@U) T@U)
(declare-fun M0.Expression.conj0 (T@U) T@U)
(declare-fun M0.Expression.conj1 (T@U) T@U)
(declare-fun M0.Expression.disj0 (T@U) T@U)
(declare-fun M0.Expression.disj1 (T@U) T@U)
(declare-fun M0.Expression.fun (T@U) T@U)
(declare-fun M0.Expression.args (T@U) T@U)
(declare-fun |M0.__default.Compatible#canCall| (T@U) Bool)
(declare-fun M0.__default.Compatible (T@U) Bool)
(declare-fun M0.Literal.prim (T@U) T@U)
(declare-fun |#M0.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun |#M0.Statement.stmtReturn| (T@U) T@U)
(declare-fun |#M0.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M0.Literal.litNumber| (Int) T@U)
(declare-fun |#M0.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M0.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun |M0.__default.EmptyEnv#canCall| () Bool)
(declare-fun M0.__default.EmptyEnv () T@U)
(declare-fun M0.__default.build (T@U T@U) T@U)
(declare-fun |M0.__default.build#canCall| (T@U T@U) Bool)
(declare-fun M0.Program.stmts (T@U) T@U)
(declare-fun M0.Literal.arr (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Tclass.M0.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M0.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M0.Expression.r (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass.M0.Expression Tagclass.M0.Tuple Tagclass.M0.Program Tagclass.M0.Statement Tagclass.M0.Primitive |##M0.Program.Program| |##M0.Statement.stmtVariable| |##M0.Statement.stmtReturn| |##M0.Expression.exprLiteral| Tagclass.M0.Literal |##M0.Expression.exprIdentifier| |##M0.Expression.exprIf| |##M0.Expression.exprAnd| |##M0.Expression.exprOr| |##M0.Expression.exprInvocation| |##M0.Expression.exprError| Tagclass.M0.Reason |##M0.Literal.litTrue| |##M0.Literal.litFalse| |##M0.Literal.litUndefined| |##M0.Literal.litNull| |##M0.Literal.litNumber| |##M0.Literal.litString| |##M0.Literal.litPrimitive| |##M0.Literal.litArrOfPaths| |##M0.Literal.litArrOfStrings| |##M0.Literal.litArray| |##M0.Primitive.primCreatePath| |##M0.Primitive.primExec| |##M0.Reason.rCompatibility| |##M0.Reason.rValidity| |##M0.Tuple.Pair| tytagFamily$Expression tytagFamily$Tuple tytagFamily$Program tytagFamily$Statement tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M0.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M0.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M0.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M0.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |932|
 :pattern ( (M0.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass.M0.Primitive))) (= (M0.__default.Arity |prim#0|) (ite (M0.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |1017|
 :pattern ( (M0.__default.Arity |prim#0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap T@U) ($ly T@U) (|context#0| T@U) (|args#0| T@U) (|stOrig#0| T@U) (|env#0| T@U) ) (!  (=> (and (or (|M0.__default.evalArgs#canCall| |context#0| |args#0| |stOrig#0| |env#0|) (and (< 4 $FunctionContextHeight) (and (and (and (and (and ($Is DatatypeTypeType |context#0| Tclass.M0.Expression) ($IsAlloc DatatypeTypeType |context#0| Tclass.M0.Expression $Heap)) (and ($Is SeqType |args#0| (TSeq Tclass.M0.Expression)) ($IsAlloc SeqType |args#0| (TSeq Tclass.M0.Expression) $Heap))) (and ($IsBox |stOrig#0| Tclass.M0.State) ($IsAllocBox |stOrig#0| Tclass.M0.State $Heap))) (and ($IsBox |env#0| Tclass.M0.Env) ($IsAllocBox |env#0| Tclass.M0.Env $Heap))) (and (M0.__default.ValidEnv |env#0|) (forall ((|arg#0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0| Tclass.M0.Expression) (=> (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)) (< (DtRank |arg#0|) (DtRank |context#0|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |999|
 :pattern ( (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)))
)))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (M0.__default.evalArgs $ly |context#0| |args#0| |stOrig#0| |env#0|) (Tclass.M0.Tuple (TSeq Tclass.M0.Expression) (TSet Tclass.M0.State)) $Heap))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |1001|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.evalArgs $ly |context#0| |args#0| |stOrig#0| |env#0|) (Tclass.M0.Tuple (TSeq Tclass.M0.Expression) (TSet Tclass.M0.State)) $Heap))
))))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Statement.stmtVariable| |a#9#0#0| |a#9#1#0|) Tclass.M0.Statement)  (and ($IsBox |a#9#0#0| Tclass.M0.Identifier) ($Is DatatypeTypeType |a#9#1#0| Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1139|
 :pattern ( ($Is DatatypeTypeType (|#M0.Statement.stmtVariable| |a#9#0#0| |a#9#1#0|) Tclass.M0.Statement))
)))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) (|args#0@@0| T@U) (|st#0| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| |prim#0@@0| |args#0@@0| |st#0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@0| Tclass.M0.Primitive) ($Is SeqType |args#0@@0| (TSeq Tclass.M0.Expression))) ($IsBox |st#0| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 1))))))) (and (=> (not (M0.Primitive.primCreatePath_q |prim#0@@0|)) (let ((|exps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#1|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#1|)) (=> (M0.Expression.exprLiteral_q |deps#1|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#1|)) (=> (M0.Expression.exprLiteral_q |exps#1|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#1|)) (and (|M0.__default.DomSt#canCall| |st#0|) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#1|)) (M0.__default.DomSt |st#0|)) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#1|)) (M0.Literal.paths (M0.Expression.lit |deps#1|)) (M0.Literal.strs (M0.Expression.lit |exps#1|)) |st#0|))))))))))))) (= (M0.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0|) (ite (M0.Primitive.primCreatePath_q |prim#0@@0|) false (let ((|exps#0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#0@@0|) (M0.Literal.litString_q (M0.Expression.lit |cmd#0@@0|))) (M0.Expression.exprLiteral_q |deps#0@@0|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#0@@0|))) (M0.Expression.exprLiteral_q |exps#0|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#0|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#0@@0|)) (M0.__default.DomSt |st#0|))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#0@@0|)) (M0.Literal.paths (M0.Expression.lit |deps#0@@0|)) (M0.Literal.strs (M0.Expression.lit |exps#0|)) |st#0|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :skolemid |1021|
 :pattern ( (M0.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0|))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#64#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#64#1#0| i))) (DtRank (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1236|
 :pattern ( (|Seq#Index| |a#64#1#0| i) (|#M0.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exps#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (and (or (|M0.__default.exec#canCall| |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@1| (TSeq TChar) $Heap@@0)) (and ($Is SetType |deps#0@@1| (TSet Tclass.M0.Path)) ($IsAlloc SetType |deps#0@@1| (TSet Tclass.M0.Path) $Heap@@0))) (and ($Is SetType |exps#0@@0| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@0| (TSet (TSeq TChar)) $Heap@@0))) (and ($IsBox |st#0@@0| Tclass.M0.State) ($IsAllocBox |st#0@@0| Tclass.M0.State $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M0.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@0|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State) $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.69:18|
 :skolemid |800|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@0|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State) $Heap@@0))
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
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression)  (and (and ($Is DatatypeTypeType |a#33#0#0| Tclass.M0.Expression) ($Is DatatypeTypeType |a#33#1#0| Tclass.M0.Expression)) ($Is DatatypeTypeType |a#33#2#0| Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1186|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.M0.Expression))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) ($ly@@0 T@U) (|sts#0| T@U) ) (!  (=> (and (or (|M0.__default.Combine#canCall| |sts#0|) (and (< 3 $FunctionContextHeight) (and (and ($Is SetType |sts#0| (TSet Tclass.M0.State)) ($IsAlloc SetType |sts#0| (TSet Tclass.M0.State) $Heap@@1)) (not (|Set#Equal| |sts#0| |Set#Empty|))))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (M0.__default.Combine $ly@@0 |sts#0|) Tclass.M0.State $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |744|
 :pattern ( ($IsAllocBox (M0.__default.Combine $ly@@0 |sts#0|) Tclass.M0.State $Heap@@1))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (M0.Literal.litNumber_q a@@4) (M0.Literal.litNumber_q b@@1)) (= (|M0.Literal#Equal| a@@4 b@@1) (= (M0.Literal.num a@@4) (M0.Literal.num b@@1))))
 :qid |unknown.0:0|
 :skolemid |1338|
 :pattern ( (|M0.Literal#Equal| a@@4 b@@1) (M0.Literal.litNumber_q a@@4))
 :pattern ( (|M0.Literal#Equal| a@@4 b@@1) (M0.Literal.litNumber_q b@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#5#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#5#0#0| i@@0))) (DtRank (|#M0.Program.Program| |a#5#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1129|
 :pattern ( (|Seq#Index| |a#5#0#0| i@@0) (|#M0.Program.Program| |a#5#0#0|))
)))
(assert (forall ((|a#98#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#98#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#98#0#0| i@@1))) (DtRank (|#M0.Literal.litString| |a#98#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1289|
 :pattern ( (|Seq#Index| |a#98#0#0| i@@1) (|#M0.Literal.litString| |a#98#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#123#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#123#0#0| i@@2))) (DtRank (|#M0.Literal.litArray| |a#123#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1330|
 :pattern ( (|Seq#Index| |a#123#0#0| i@@2) (|#M0.Literal.litArray| |a#123#0#0|))
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
(assert (forall ((a@@5 T@U) (b@@2 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@2 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@5 b@@2) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@5 b@@2) (|Set#IsMember| b@@2 y@@2))
)))
(assert (forall ((|a#9#0#0@@0| T@U) (|a#9#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#M0.Statement.stmtVariable| |a#9#0#0@@0| |a#9#1#0@@0|) Tclass.M0.Statement $h)  (and ($IsAllocBox |a#9#0#0@@0| Tclass.M0.Identifier $h) ($IsAlloc DatatypeTypeType |a#9#1#0@@0| Tclass.M0.Expression $h))))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1140|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Statement.stmtVariable| |a#9#0#0@@0| |a#9#1#0@@0|) Tclass.M0.Statement $h))
)))
(assert (forall ((|a#43#0#0@@0| T@U) (|a#43#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h@@0)  (and ($IsAlloc DatatypeTypeType |a#43#0#0@@0| Tclass.M0.Expression $h@@0) ($IsAlloc DatatypeTypeType |a#43#1#0@@0| Tclass.M0.Expression $h@@0))))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1203|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprAnd| |a#43#0#0@@0| |a#43#1#0@@0|) Tclass.M0.Expression $h@@0))
)))
(assert (forall ((|a#51#0#0@@0| T@U) (|a#51#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#51#0#0@@0| Tclass.M0.Expression $h@@1) ($IsAlloc DatatypeTypeType |a#51#1#0@@0| Tclass.M0.Expression $h@@1))))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1216|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprOr| |a#51#0#0@@0| |a#51#1#0@@0|) Tclass.M0.Expression $h@@1))
)))
(assert ($AlwaysAllocated Tclass.M0.Path))
(assert (forall ((M0.Tuple$A T@U) (M0.Tuple$B T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)) (M0.Tuple.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |1381|
 :pattern ( (M0.Tuple.Pair_q d) ($Is DatatypeTypeType d (Tclass.M0.Tuple M0.Tuple$A M0.Tuple$B)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M0.__default.Oracle#canCall| |p#0| |st#0@@1|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0| Tclass.M0.Path) ($IsBox |st#0@@1| Tclass.M0.State)))) ($IsBox (M0.__default.Oracle |p#0| |st#0@@1|) Tclass.M0.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |868|
 :pattern ( (M0.__default.Oracle |p#0| |st#0@@1|))
))))
(assert (forall (($ly@@1 T@U) (|context#0@@0| T@U) (|args#0@@1| T@U) (|stOrig#0@@0| T@U) (|env#0@@0| T@U) ) (! (= (M0.__default.evalArgs ($LS $ly@@1) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|) (M0.__default.evalArgs $ly@@1 |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |997|
 :pattern ( (M0.__default.evalArgs ($LS $ly@@1) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M0.Literal.litTrue|) |##M0.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M0.Literal.litFalse|) |##M0.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M0.Literal.litUndefined|) |##M0.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M0.Literal.litNull|) |##M0.Literal.litNull|))
(assert (= (DatatypeCtorId |#M0.Primitive.primCreatePath|) |##M0.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M0.Primitive.primExec|) |##M0.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M0.Reason.rCompatibility|) |##M0.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#M0.Reason.rValidity|) |##M0.Reason.rValidity|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression)  (and ($Is DatatypeTypeType |a#59#0#0| Tclass.M0.Expression) ($Is SeqType |a#59#1#0| (TSeq Tclass.M0.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0| |a#59#1#0|) Tclass.M0.Expression))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1)  (and (|Set#IsMember| a@@7 o@@1) (not (|Set#IsMember| b@@4 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.M0.Program) (M0.Program.Program_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (M0.Program.Program_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.M0.Program))
)))
(assert (forall ((|a#59#0#0@@0| T@U) (|a#59#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@2)  (and ($IsAlloc DatatypeTypeType |a#59#0#0@@0| Tclass.M0.Expression $h@@2) ($IsAlloc SeqType |a#59#1#0@@0| (TSeq Tclass.M0.Expression) $h@@2))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1229|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprInvocation| |a#59#0#0@@0| |a#59#1#0@@0|) Tclass.M0.Expression $h@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@2| T@U) (|st'#0| T@U) ) (!  (=> (or (|M0.__default.Union#canCall| |st#0@@2| |st'#0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |st#0@@2| Tclass.M0.State) ($IsBox |st'#0| Tclass.M0.State)))) (and (let ((|result#0| (M0.__default.Union |st#0@@2| |st'#0|)))
 (and (|Set#Equal| (M0.__default.DomSt |result#0|) (|Set#Union| (M0.__default.DomSt |st#0@@2|) (M0.__default.DomSt |st'#0|))) (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M0.Path) (=> (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@0|) (= (M0.__default.GetSt |p#0@@0| |result#0|) (M0.__default.GetSt |p#0@@0| (ite (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@0|) |st#0@@2| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |720|
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@2|) |p#0@@0|))
 :pattern ( (M0.__default.GetSt |p#0@@0| |result#0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |result#0|) |p#0@@0|))
)))) ($IsBox (M0.__default.Union |st#0@@2| |st'#0|) Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |721|
 :pattern ( (M0.__default.Union |st#0@@2| |st'#0|))
))))
(assert (forall ((M0.Tuple$A@@0 T@U) (M0.Tuple$B@@0 T@U) (|a#143#0#0| T@U) (|a#143#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Tuple.Pair| |a#143#0#0| |a#143#1#0|) (Tclass.M0.Tuple M0.Tuple$A@@0 M0.Tuple$B@@0))  (and ($IsBox |a#143#0#0| M0.Tuple$A@@0) ($IsBox |a#143#1#0| M0.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |1369|
 :pattern ( ($Is DatatypeTypeType (|#M0.Tuple.Pair| |a#143#0#0| |a#143#1#0|) (Tclass.M0.Tuple M0.Tuple$A@@0 M0.Tuple$B@@0)))
)))
(assert ($Is DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal))
(assert ($Is DatatypeTypeType |#M0.Primitive.primCreatePath| Tclass.M0.Primitive))
(assert ($Is DatatypeTypeType |#M0.Primitive.primExec| Tclass.M0.Primitive))
(assert ($Is DatatypeTypeType |#M0.Reason.rCompatibility| Tclass.M0.Reason))
(assert ($Is DatatypeTypeType |#M0.Reason.rValidity| Tclass.M0.Reason))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@1| Tclass.M0.Primitive))) (= (M0.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@1|)) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :weight 3
 :skolemid |1018|
 :pattern ( (M0.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)))
))))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1261|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litTrue| Tclass.M0.Literal $h@@3))
)))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1264|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litFalse| Tclass.M0.Literal $h@@4))
)))
(assert (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1267|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litUndefined| Tclass.M0.Literal $h@@5))
)))
(assert (forall (($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) ($IsAlloc DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1270|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Literal.litNull| Tclass.M0.Literal $h@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@2 T@U) (|context#0@@1| T@U) (|args#0@@2| T@U) (|stOrig#0@@1| T@U) (|env#0@@1| T@U) ) (!  (=> (or (|M0.__default.evalArgs#canCall| |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@1| Tclass.M0.Expression) ($Is SeqType |args#0@@2| (TSeq Tclass.M0.Expression))) ($IsBox |stOrig#0@@1| Tclass.M0.State)) ($IsBox |env#0@@1| Tclass.M0.Env)) (and (M0.__default.ValidEnv |env#0@@1|) (forall ((|arg#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0@@0| Tclass.M0.Expression) (=> (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)) (< (DtRank |arg#0@@0|) (DtRank |context#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |999|
 :pattern ( (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)))
)))))) ($Is DatatypeTypeType (M0.__default.evalArgs $ly@@2 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|) (Tclass.M0.Tuple (TSeq Tclass.M0.Expression) (TSet Tclass.M0.State))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |1000|
 :pattern ( (M0.__default.evalArgs $ly@@2 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M0.__default.GetSt#canCall| |p#0@@1| |st#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M0.Path) ($IsBox |st#0@@3| Tclass.M0.State)) (|Set#IsMember| (M0.__default.DomSt |st#0@@3|) |p#0@@1|)))) ($IsBox (M0.__default.GetSt |p#0@@1| |st#0@@3|) Tclass.M0.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |701|
 :pattern ( (M0.__default.GetSt |p#0@@1| |st#0@@3|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|M0.Literal#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( (|M0.Literal#Equal| a@@8 b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|M0.Primitive#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |unknown.0:0|
 :skolemid |1354|
 :pattern ( (|M0.Primitive#Equal| a@@9 b@@6))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|p#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (and (or (|M0.__default.GetSt#canCall| |p#0@@2| |st#0@@4|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@2| Tclass.M0.Path) ($IsAllocBox |p#0@@2| Tclass.M0.Path $Heap@@2)) (and ($IsBox |st#0@@4| Tclass.M0.State) ($IsAllocBox |st#0@@4| Tclass.M0.State $Heap@@2))) (|Set#IsMember| (M0.__default.DomSt |st#0@@4|) |p#0@@2|)))) ($IsGoodHeap $Heap@@2)) ($IsAllocBox (M0.__default.GetSt |p#0@@2| |st#0@@4|) Tclass.M0.Artifact $Heap@@2))
 :qid |CloudMakeParallelBuildsdfy.10:18|
 :skolemid |702|
 :pattern ( ($IsAllocBox (M0.__default.GetSt |p#0@@2| |st#0@@4|) Tclass.M0.Artifact $Heap@@2))
))))
(assert (= (Ctor BoxType) 6))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@3| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit BoxType |st#0@@5|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M0.Primitive) ($Is SeqType |args#0@@3| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@5| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#5|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#5|)) (=> (M0.Expression.exprLiteral_q |deps#5|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#5|)) (=> (M0.Expression.exprLiteral_q |exps#5|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#5|)) (and (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@5|)) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.__default.DomSt (Lit BoxType |st#0@@5|))) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#5|)) (M0.Literal.paths (M0.Expression.lit |deps#5|)) (M0.Literal.strs (M0.Expression.lit |exps#5|)) (Lit BoxType |st#0@@5|)))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit BoxType |st#0@@5|)) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#4|) (M0.Literal.litString_q (M0.Expression.lit |cmd#4|))) (M0.Expression.exprLiteral_q |deps#4|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#4|))) (M0.Expression.exprLiteral_q |exps#4|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#4|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.__default.DomSt (Lit BoxType |st#0@@5|)))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#4|)) (M0.Literal.paths (M0.Expression.lit |deps#4|)) (M0.Literal.strs (M0.Expression.lit |exps#4|)) (Lit BoxType |st#0@@5|))))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |1023|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit BoxType |st#0@@5|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0| T@U) ) (!  (=> (or (|M0.__default.Legal#canCall| |stmts#0|) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0| (TSeq Tclass.M0.Statement)))) (= (M0.__default.Legal |stmts#0|)  (or (not (= (|Seq#Length| |stmts#0|) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :skolemid |967|
 :pattern ( (M0.__default.Legal |stmts#0|))
))))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((s@@3 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@2) (|Set#IsMember| b@@7 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@10 o@@2))
 :pattern ( (|Set#IsMember| b@@7 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((M0.Tuple$A@@1 T@U) (M0.Tuple$B@@1 T@U) (|a#143#0#0@@0| T@U) (|a#143#1#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#143#0#0@@0| |a#143#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@7)  (and ($IsAllocBox |a#143#0#0@@0| M0.Tuple$A@@1 $h@@7) ($IsAllocBox |a#143#1#0@@0| M0.Tuple$B@@1 $h@@7))))
 :qid |unknown.0:0|
 :skolemid |1370|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Tuple.Pair| |a#143#0#0@@0| |a#143#1#0@@0|) (Tclass.M0.Tuple M0.Tuple$A@@1 M0.Tuple$B@@1) $h@@7))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@3 T@U) ($ly@@3 T@U) (|stmts#0@@0| T@U) (|st#0@@6| T@U) (|env#0@@2| T@U) ) (!  (=> (and (or (|M0.__default.do#canCall| |stmts#0@@0| |st#0@@6| |env#0@@2|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is SeqType |stmts#0@@0| (TSeq Tclass.M0.Statement)) ($IsAlloc SeqType |stmts#0@@0| (TSeq Tclass.M0.Statement) $Heap@@3)) (and ($IsBox |st#0@@6| Tclass.M0.State) ($IsAllocBox |st#0@@6| Tclass.M0.State $Heap@@3))) (and ($IsBox |env#0@@2| Tclass.M0.Env) ($IsAllocBox |env#0@@2| Tclass.M0.Env $Heap@@3))) (and (M0.__default.Legal |stmts#0@@0|) (M0.__default.ValidEnv |env#0@@2|))))) ($IsGoodHeap $Heap@@3)) ($IsAlloc DatatypeTypeType (M0.__default.do $ly@@3 |stmts#0@@0| |st#0@@6| |env#0@@2|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |952|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.do $ly@@3 |stmts#0@@0| |st#0@@6| |env#0@@2|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@3))
))))
(assert (forall ((d@@1 T@U) ) (! (= (M0.Program.Program_q d@@1) (= (DatatypeCtorId d@@1) |##M0.Program.Program|))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( (M0.Program.Program_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (M0.Statement.stmtVariable_q d@@2) (= (DatatypeCtorId d@@2) |##M0.Statement.stmtVariable|))
 :qid |unknown.0:0|
 :skolemid |1136|
 :pattern ( (M0.Statement.stmtVariable_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (M0.Statement.stmtReturn_q d@@3) (= (DatatypeCtorId d@@3) |##M0.Statement.stmtReturn|))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( (M0.Statement.stmtReturn_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M0.Expression.exprLiteral_q d@@4) (= (DatatypeCtorId d@@4) |##M0.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1163|
 :pattern ( (M0.Expression.exprLiteral_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M0.Expression.exprIdentifier_q d@@5) (= (DatatypeCtorId d@@5) |##M0.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( (M0.Expression.exprIdentifier_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (M0.Expression.exprIf_q d@@6) (= (DatatypeCtorId d@@6) |##M0.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1183|
 :pattern ( (M0.Expression.exprIf_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (M0.Expression.exprAnd_q d@@7) (= (DatatypeCtorId d@@7) |##M0.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1199|
 :pattern ( (M0.Expression.exprAnd_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M0.Expression.exprOr_q d@@8) (= (DatatypeCtorId d@@8) |##M0.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1212|
 :pattern ( (M0.Expression.exprOr_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M0.Expression.exprInvocation_q d@@9) (= (DatatypeCtorId d@@9) |##M0.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (M0.Expression.exprInvocation_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M0.Expression.exprError_q d@@10) (= (DatatypeCtorId d@@10) |##M0.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( (M0.Expression.exprError_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M0.Literal.litTrue_q d@@11) (= (DatatypeCtorId d@@11) |##M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1259|
 :pattern ( (M0.Literal.litTrue_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M0.Literal.litFalse_q d@@12) (= (DatatypeCtorId d@@12) |##M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( (M0.Literal.litFalse_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M0.Literal.litUndefined_q d@@13) (= (DatatypeCtorId d@@13) |##M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1265|
 :pattern ( (M0.Literal.litUndefined_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M0.Literal.litNull_q d@@14) (= (DatatypeCtorId d@@14) |##M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1268|
 :pattern ( (M0.Literal.litNull_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M0.Literal.litNumber_q d@@15) (= (DatatypeCtorId d@@15) |##M0.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |1272|
 :pattern ( (M0.Literal.litNumber_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M0.Literal.litString_q d@@16) (= (DatatypeCtorId d@@16) |##M0.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( (M0.Literal.litString_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M0.Literal.litPrimitive_q d@@17) (= (DatatypeCtorId d@@17) |##M0.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |1292|
 :pattern ( (M0.Literal.litPrimitive_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M0.Literal.litArrOfPaths_q d@@18) (= (DatatypeCtorId d@@18) |##M0.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |1302|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M0.Literal.litArrOfStrings_q d@@19) (= (DatatypeCtorId d@@19) |##M0.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |1312|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (M0.Literal.litArray_q d@@20) (= (DatatypeCtorId d@@20) |##M0.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |1322|
 :pattern ( (M0.Literal.litArray_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (M0.Primitive.primCreatePath_q d@@21) (= (DatatypeCtorId d@@21) |##M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |1345|
 :pattern ( (M0.Primitive.primCreatePath_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (M0.Primitive.primExec_q d@@22) (= (DatatypeCtorId d@@22) |##M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |1347|
 :pattern ( (M0.Primitive.primExec_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (M0.Tuple.Pair_q d@@23) (= (DatatypeCtorId d@@23) |##M0.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |1366|
 :pattern ( (M0.Tuple.Pair_q d@@23))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (forall ((|a#33#0#0@@0| T@U) (|a#33#1#0@@0| T@U) (|a#33#2#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@8)  (and (and ($IsAlloc DatatypeTypeType |a#33#0#0@@0| Tclass.M0.Expression $h@@8) ($IsAlloc DatatypeTypeType |a#33#1#0@@0| Tclass.M0.Expression $h@@8)) ($IsAlloc DatatypeTypeType |a#33#2#0@@0| Tclass.M0.Expression $h@@8))))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1187|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIf| |a#33#0#0@@0| |a#33#1#0@@0| |a#33#2#0@@0|) Tclass.M0.Expression $h@@8))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (M0.Expression.exprIf_q d@@24) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@24 (|#M0.Expression.exprIf| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1184|
)))
 :qid |unknown.0:0|
 :skolemid |1185|
 :pattern ( (M0.Expression.exprIf_q d@@24))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0@@3| T@U) ) (!  (=> (or (|M0.__default.GetEnv#canCall| |id#0| |env#0@@3|) (and (< 3 $FunctionContextHeight) (and (and ($IsBox |id#0| Tclass.M0.Identifier) ($IsBox |env#0@@3| Tclass.M0.Env)) (M0.__default.ValidEnv |env#0@@3|)))) (and (M0.__default.Value (M0.__default.GetEnv |id#0| |env#0@@3|)) ($Is DatatypeTypeType (M0.__default.GetEnv |id#0| |env#0@@3|) Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |786|
 :pattern ( (M0.__default.GetEnv |id#0| |env#0@@3|))
))))
(assert (forall ((s@@6 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i@@3)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i@@3)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@3)) (not (|Set#IsMember| b@@8 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@11 o@@3))
 :pattern ( (|Set#IsMember| b@@8 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (M0.Statement.stmtVariable_q d@@25) (exists ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= d@@25 (|#M0.Statement.stmtVariable| |a#8#0#0| |a#8#1#0|))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1137|
)))
 :qid |unknown.0:0|
 :skolemid |1138|
 :pattern ( (M0.Statement.stmtVariable_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (M0.Expression.exprAnd_q d@@26) (exists ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= d@@26 (|#M0.Expression.exprAnd| |a#42#0#0| |a#42#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |1200|
)))
 :qid |unknown.0:0|
 :skolemid |1201|
 :pattern ( (M0.Expression.exprAnd_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (M0.Expression.exprOr_q d@@27) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@27 (|#M0.Expression.exprOr| |a#50#0#0| |a#50#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |1213|
)))
 :qid |unknown.0:0|
 :skolemid |1214|
 :pattern ( (M0.Expression.exprOr_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (M0.Expression.exprInvocation_q d@@28) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@28 (|#M0.Expression.exprInvocation| |a#58#0#0| |a#58#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (M0.Expression.exprInvocation_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (M0.Tuple.Pair_q d@@29) (exists ((|a#142#0#0| T@U) (|a#142#1#0| T@U) ) (! (= d@@29 (|#M0.Tuple.Pair| |a#142#0#0| |a#142#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1367|
)))
 :qid |unknown.0:0|
 :skolemid |1368|
 :pattern ( (M0.Tuple.Pair_q d@@29))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@4 T@U) ($Heap@@4 T@U) (|sts#0@@0| T@U) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@0|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@4) ($Is SetType |sts#0@@0| (TSet Tclass.M0.State))) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) (and (and (|$let#0$canCall| |sts#0@@0|) (=> (not (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| (|$let#0_st| |sts#0@@0|)))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| (|$let#0_st| |sts#0@@0|)))) (|M0.__default.Union#canCall| (|$let#0_st| |sts#0@@0|) (M0.__default.Combine $ly@@4 (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| (|$let#0_st| |sts#0@@0|)))))))) (= (M0.__default.Combine ($LS $ly@@4) |sts#0@@0|) (let ((|st#0@@7| (|$let#0_st| |sts#0@@0|)))
(ite (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@7|)) |st#0@@7| (M0.__default.Union |st#0@@7| (M0.__default.Combine $ly@@4 (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| |st#0@@7|)))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |747|
 :pattern ( (M0.__default.Combine ($LS $ly@@4) |sts#0@@0|) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@5 T@U) (|stmts#0@@1| T@U) (|st#0@@8| T@U) (|env#0@@4| T@U) ) (!  (=> (or (|M0.__default.do#canCall| |stmts#0@@1| |st#0@@8| |env#0@@4|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@1| (TSeq Tclass.M0.Statement)) ($IsBox |st#0@@8| Tclass.M0.State)) ($IsBox |env#0@@4| Tclass.M0.Env)) (and (M0.__default.Legal |stmts#0@@1|) (M0.__default.ValidEnv |env#0@@4|))))) (and (let ((|stmt#0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@1| (LitInt 0)))))
 (and (=> (M0.Statement.stmtVariable_q |stmt#0|) (and (|M0.__default.eval#canCall| (M0.Statement.expr |stmt#0|) |st#0@@8| |env#0@@4|) (let ((|st'#0@@0| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#0|) |st#0@@8| |env#0@@4|))))
(let ((|expr'#0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#0|) |st#0@@8| |env#0@@4|)))))
 (and (|M0.__default.Value#canCall| |expr'#0|) (=> (M0.__default.Value |expr'#0|) (and (|M0.__default.SetEnv#canCall| (M0.Statement.id |stmt#0|) |expr'#0| |env#0@@4|) (let ((|env'#0| (M0.__default.SetEnv (M0.Statement.id |stmt#0|) |expr'#0| |env#0@@4|)))
 (and (|M0.__default.Legal#canCall| (|Seq#Drop| |stmts#0@@1| (LitInt 1))) (=> (M0.__default.Legal (|Seq#Drop| |stmts#0@@1| (LitInt 1))) (|M0.__default.do#canCall| (|Seq#Drop| |stmts#0@@1| (LitInt 1)) |st'#0@@0| |env'#0|))))))))))) (=> (not (M0.Statement.stmtVariable_q |stmt#0|)) (|M0.__default.eval#canCall| (M0.Statement.ret |stmt#0|) |st#0@@8| |env#0@@4|)))) (= (M0.__default.do ($LS $ly@@5) |stmts#0@@1| |st#0@@8| |env#0@@4|) (let ((|stmt#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@1| (LitInt 0)))))
(ite (M0.Statement.stmtVariable_q |stmt#0@@0|) (let ((|st'#0@@1| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#0@@0|) |st#0@@8| |env#0@@4|))))
(let ((|expr'#0@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#0@@0|) |st#0@@8| |env#0@@4|)))))
(ite (M0.__default.Value |expr'#0@@0|) (let ((|env'#0@@0| (M0.__default.SetEnv (M0.Statement.id |stmt#0@@0|) |expr'#0@@0| |env#0@@4|)))
(ite (M0.__default.Legal (|Seq#Drop| |stmts#0@@1| (LitInt 1))) (M0.__default.do $ly@@5 (|Seq#Drop| |stmts#0@@1| (LitInt 1)) |st'#0@@1| |env'#0@@0|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType |expr'#0@@0|) |st'#0@@1|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@8|)))) (M0.__default.eval ($LS $LZ) (M0.Statement.ret |stmt#0@@0|) |st#0@@8| |env#0@@4|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |954|
 :pattern ( (M0.__default.do ($LS $ly@@5) |stmts#0@@1| |st#0@@8| |env#0@@4|))
))))
(assert (forall ((sts T@U) ) (!  (=> (|$let#0$canCall| sts) (and ($IsBox (|$let#0_st| sts) Tclass.M0.State) (|Set#IsMember| sts (|$let#0_st| sts))))
 :qid |CloudMakeParallelBuildsdfy.39:5|
 :skolemid |746|
 :pattern ( (|$let#0_st| sts))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (M0.Literal.litTrue_q d@@30) (= d@@30 |#M0.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1260|
 :pattern ( (M0.Literal.litTrue_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (M0.Literal.litFalse_q d@@31) (= d@@31 |#M0.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1263|
 :pattern ( (M0.Literal.litFalse_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (M0.Literal.litUndefined_q d@@32) (= d@@32 |#M0.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1266|
 :pattern ( (M0.Literal.litUndefined_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (M0.Literal.litNull_q d@@33) (= d@@33 |#M0.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1269|
 :pattern ( (M0.Literal.litNull_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (M0.Primitive.primCreatePath_q d@@34) (= d@@34 |#M0.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (M0.Primitive.primCreatePath_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (M0.Primitive.primExec_q d@@35) (= d@@35 |#M0.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |1348|
 :pattern ( (M0.Primitive.primExec_q d@@35))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) ) (! (= ($Is SetType v@@1 (TSet t0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@1 (TSet t0)))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (|$IsA#M0.Literal| d@@36) (or (or (or (or (or (or (or (or (or (M0.Literal.litTrue_q d@@36) (M0.Literal.litFalse_q d@@36)) (M0.Literal.litUndefined_q d@@36)) (M0.Literal.litNull_q d@@36)) (M0.Literal.litNumber_q d@@36)) (M0.Literal.litString_q d@@36)) (M0.Literal.litPrimitive_q d@@36)) (M0.Literal.litArrOfPaths_q d@@36)) (M0.Literal.litArrOfStrings_q d@@36)) (M0.Literal.litArray_q d@@36)))
 :qid |unknown.0:0|
 :skolemid |1332|
 :pattern ( (|$IsA#M0.Literal| d@@36))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@6 T@U) (|expr#0| T@U) (|st#0@@9| T@U) (|env#0@@5| T@U) ) (!  (=> (or (|M0.__default.eval#canCall| (Lit DatatypeTypeType |expr#0|) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0| Tclass.M0.Expression) ($IsBox |st#0@@9| Tclass.M0.State)) ($IsBox |env#0@@5| Tclass.M0.Env)) (M0.__default.ValidEnv (Lit BoxType |env#0@@5|))))) (and (and (|M0.__default.Value#canCall| (Lit DatatypeTypeType |expr#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.__default.Value (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|))))) (|M0.__default.GetEnv#canCall| (Lit BoxType (M0.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@5|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (let ((|st'#8| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|cond'#2| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
 (and (and (=> (M0.Expression.exprLiteral_q |cond'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#2|))) (=> (and (M0.Expression.exprLiteral_q |cond'#2|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#2|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@5|)))) (=> (not (and (M0.Expression.exprLiteral_q |cond'#2|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#2|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |cond'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#2|))) (=> (and (M0.Expression.exprLiteral_q |cond'#2|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#2|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@5|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (let ((|st'#9| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|conj0'#2| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
 (and (and (=> (M0.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#2|))) (=> (and (M0.Expression.exprLiteral_q |conj0'#2|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#2|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9| (Lit BoxType |env#0@@5|)))) (=> (not (and (M0.Expression.exprLiteral_q |conj0'#2|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#2|) |#M0.Literal.litTrue|))) (=> (M0.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#2|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (let ((|st'#10| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|disj0'#2| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
 (and (=> (M0.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#2|))) (=> (not (and (M0.Expression.exprLiteral_q |disj0'#2|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#2|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#2|))) (=> (and (M0.Expression.exprLiteral_q |disj0'#2|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#2|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10| (Lit BoxType |env#0@@5|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (let ((|st'#11| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|fun'#2| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
 (and (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (let ((|sts'#2| ($Unbox SetType (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(let ((|args'#2| ($Unbox SeqType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(let ((|sts''#2| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#11|) |sts'#2|)))
 (and (|M0.__default.Compatible#canCall| |sts''#2|) (=> (M0.__default.Compatible |sts''#2|) (and (|M0.__default.Combine#canCall| |sts''#2|) (let ((|stCombined#2| (M0.__default.Combine ($LS $LZ) |sts''#2|)))
 (=> (and (M0.Expression.exprLiteral_q |fun'#2|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#2|))) (=> (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#2|))) (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#2|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#2| |stCombined#2|))) (=> (and (= (|Seq#Length| |args'#2|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#2| |stCombined#2|)) (and (|M0.__default.exec#canCall| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|) (let ((|ps#2| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|)))
 (and (M0.Tuple.Pair_q |ps#2|) (M0.Tuple.Pair_q |ps#2|)))))))))))))))))))))))))))))) (= (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)) (ite (M0.__default.Value (Lit DatatypeTypeType |expr#0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0|)) (Lit BoxType |st#0@@9|)) (ite (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (M0.__default.GetEnv (Lit BoxType (M0.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@5|))) (Lit BoxType |st#0@@9|)) (ite (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#8@@0| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|cond'#2@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(ite  (and (M0.Expression.exprLiteral_q |cond'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#2@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@5|)) (ite  (and (M0.Expression.exprLiteral_q |cond'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#2@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@5|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|)))))) (ite (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#9@@0| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|conj0'#2@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(ite  (and (M0.Expression.exprLiteral_q |conj0'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#2@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9@@0| (Lit BoxType |env#0@@5|)) (ite  (and (M0.Expression.exprLiteral_q |conj0'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#2@@0|) |#M0.Literal.litFalse|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))) |st'#9@@0|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|)))))) (ite (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#10@@0| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|disj0'#2@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(ite  (and (M0.Expression.exprLiteral_q |disj0'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#2@@0|) |#M0.Literal.litTrue|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))) |st'#10@@0|) (ite  (and (M0.Expression.exprLiteral_q |disj0'#2@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#2@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10@@0| (Lit BoxType |env#0@@5|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|)))))) (ite (M0.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#11@@0| (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|))))))
(let ((|fun'#2@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(let ((|sts'#2@@0| ($Unbox SetType (M0.Tuple.snd (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(let ((|args'#2@@0| ($Unbox SeqType (M0.Tuple.fst (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))))))
(let ((|sts''#2@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#11@@0|) |sts'#2@@0|)))
(ite  (not (M0.__default.Compatible |sts''#2@@0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) (Lit BoxType |st#0@@9|)) (let ((|stCombined#2@@0| (M0.__default.Combine ($LS $LZ) |sts''#2@@0|)))
(ite  (and (M0.Expression.exprLiteral_q |fun'#2@@0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#2@@0|))) (ite (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#2@@0|))) (ite  (and (= (|Seq#Length| |args'#2@@0|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#2@@0| |stCombined#2@@0|)) (let ((|ps#2@@0| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 2))))) |stCombined#2@@0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#2@@0|))))) (M0.Tuple.snd |ps#2@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|)))))))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@9|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |976|
 :pattern ( (M0.__default.eval ($LS $ly@@6) (Lit DatatypeTypeType |expr#0|) (Lit BoxType |st#0@@9|) (Lit BoxType |env#0@@5|)))
))))
(assert (forall ((s@@7 T@U) (i@@4 Int) ) (!  (=> (and (< 0 i@@4) (<= i@@4 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@4)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@4)))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (M0.Program.Program_q d@@37) (exists ((|a#1#0#0| T@U) ) (! (= d@@37 (|#M0.Program.Program| |a#1#0#0|))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1122|
)))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( (M0.Program.Program_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (M0.Statement.stmtReturn_q d@@38) (exists ((|a#15#0#0| T@U) ) (! (= d@@38 (|#M0.Statement.stmtReturn| |a#15#0#0|))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1149|
)))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( (M0.Statement.stmtReturn_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (M0.Expression.exprLiteral_q d@@39) (exists ((|a#21#0#0| T@U) ) (! (= d@@39 (|#M0.Expression.exprLiteral| |a#21#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1164|
)))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (M0.Expression.exprLiteral_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (M0.Expression.exprIdentifier_q d@@40) (exists ((|a#27#0#0| T@U) ) (! (= d@@40 (|#M0.Expression.exprIdentifier| |a#27#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1175|
)))
 :qid |unknown.0:0|
 :skolemid |1176|
 :pattern ( (M0.Expression.exprIdentifier_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (M0.Expression.exprError_q d@@41) (exists ((|a#67#0#0| T@U) ) (! (= d@@41 (|#M0.Expression.exprError| |a#67#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1240|
)))
 :qid |unknown.0:0|
 :skolemid |1241|
 :pattern ( (M0.Expression.exprError_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (M0.Literal.litNumber_q d@@42) (exists ((|a#89#0#0| Int) ) (! (= d@@42 (|#M0.Literal.litNumber| |a#89#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1273|
)))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( (M0.Literal.litNumber_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (M0.Literal.litString_q d@@43) (exists ((|a#94#0#0| T@U) ) (! (= d@@43 (|#M0.Literal.litString| |a#94#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1282|
)))
 :qid |unknown.0:0|
 :skolemid |1283|
 :pattern ( (M0.Literal.litString_q d@@43))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (M0.Literal.litPrimitive_q d@@44) (exists ((|a#101#0#0| T@U) ) (! (= d@@44 (|#M0.Literal.litPrimitive| |a#101#0#0|))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1293|
)))
 :qid |unknown.0:0|
 :skolemid |1294|
 :pattern ( (M0.Literal.litPrimitive_q d@@44))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> (M0.Literal.litArrOfPaths_q d@@45) (exists ((|a#107#0#0| T@U) ) (! (= d@@45 (|#M0.Literal.litArrOfPaths| |a#107#0#0|))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1303|
)))
 :qid |unknown.0:0|
 :skolemid |1304|
 :pattern ( (M0.Literal.litArrOfPaths_q d@@45))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> (M0.Literal.litArrOfStrings_q d@@46) (exists ((|a#113#0#0| T@U) ) (! (= d@@46 (|#M0.Literal.litArrOfStrings| |a#113#0#0|))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1313|
)))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( (M0.Literal.litArrOfStrings_q d@@46))
)))
(assert (forall ((d@@47 T@U) ) (!  (=> (M0.Literal.litArray_q d@@47) (exists ((|a#119#0#0| T@U) ) (! (= d@@47 (|#M0.Literal.litArray| |a#119#0#0|))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1323|
)))
 :qid |unknown.0:0|
 :skolemid |1324|
 :pattern ( (M0.Literal.litArray_q d@@47))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> ($Is DatatypeTypeType d@@48 Tclass.M0.Expression) (or (or (or (or (or (or (M0.Expression.exprLiteral_q d@@48) (M0.Expression.exprIdentifier_q d@@48)) (M0.Expression.exprIf_q d@@48)) (M0.Expression.exprAnd_q d@@48)) (M0.Expression.exprOr_q d@@48)) (M0.Expression.exprInvocation_q d@@48)) (M0.Expression.exprError_q d@@48)))
 :qid |unknown.0:0|
 :skolemid |1250|
 :pattern ( (M0.Expression.exprError_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprInvocation_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprOr_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprAnd_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIf_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprIdentifier_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
 :pattern ( (M0.Expression.exprLiteral_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.M0.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |M0.__default.EmptyEnv#canCall| (< 1 $FunctionContextHeight)) (and (M0.__default.ValidEnv M0.__default.EmptyEnv) ($IsBox M0.__default.EmptyEnv Tclass.M0.Env)))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|exps#0@@1| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@10|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($IsBox |st#0@@10| Tclass.M0.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.DomSt#canCall| (Lit BoxType |st#0@@10|))) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@10|)) (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (Lit BoxType |st#0@@10|))) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2|) (Lit BoxType |st#0@@10|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |825|
 :pattern ( (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@10|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@1|) ($Box SeqType |e#2@@0|)) (=> (|Set#IsMember| (M0.__default.DomSt (Lit BoxType |st#0@@10|)) (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|) (Lit BoxType |st#0@@10|)) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) |e#2@@0|) (Lit BoxType |st#0@@10|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |824|
 :pattern ( (M0.__default.Loc |cmd#0@@2| |deps#0@@2| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@1| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |826|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@2|) (Lit SetType |deps#0@@2|) (Lit SetType |exps#0@@1|) (Lit BoxType |st#0@@10|)))
))))
(assert (forall ((s@@8 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@2)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@8 v@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|exps#0@@2| T@U) (|st#0@@11| T@U) ) (!  (=> (or (|M0.__default.exec#canCall| |cmd#0@@3| |deps#0@@3| |exps#0@@2| |st#0@@11|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($IsBox |st#0@@11| Tclass.M0.State)))) ($Is DatatypeTypeType (M0.__default.exec |cmd#0@@3| |deps#0@@3| |exps#0@@2| |st#0@@11|) (Tclass.M0.Tuple (TSet Tclass.M0.Path) Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |799|
 :pattern ( (M0.__default.exec |cmd#0@@3| |deps#0@@3| |exps#0@@2| |st#0@@11|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|id#0@@0| T@U) (|env#0@@6| T@U) ) (!  (=> (and (or (|M0.__default.GetEnv#canCall| |id#0@@0| |env#0@@6|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@0| Tclass.M0.Identifier) ($IsAllocBox |id#0@@0| Tclass.M0.Identifier $Heap@@5)) (and ($IsBox |env#0@@6| Tclass.M0.Env) ($IsAllocBox |env#0@@6| Tclass.M0.Env $Heap@@5))) (M0.__default.ValidEnv |env#0@@6|)))) ($IsGoodHeap $Heap@@5)) ($IsAlloc DatatypeTypeType (M0.__default.GetEnv |id#0@@0| |env#0@@6|) Tclass.M0.Expression $Heap@@5))
 :qid |CloudMakeParallelBuildsdfy.61:18|
 :skolemid |787|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.GetEnv |id#0@@0| |env#0@@6|) Tclass.M0.Expression $Heap@@5))
))))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0@@2| T@U) ) (!  (=> (or (|M0.__default.Legal#canCall| (Lit SeqType |stmts#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0@@2| (TSeq Tclass.M0.Statement)))) (= (M0.__default.Legal (Lit SeqType |stmts#0@@2|))  (or (not (= (|Seq#Length| (Lit SeqType |stmts#0@@2|)) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :weight 3
 :skolemid |968|
 :pattern ( (M0.__default.Legal (Lit SeqType |stmts#0@@2|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prog#0| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M0.__default.build#canCall| |prog#0| |st#0@@12|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0| Tclass.M0.Program) ($IsBox |st#0@@12| Tclass.M0.State)) (M0.__default.Legal (M0.Program.stmts |prog#0|))))) ($Is DatatypeTypeType (M0.__default.build |prog#0| |st#0@@12|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |939|
 :pattern ( (M0.__default.build |prog#0| |st#0@@12|))
))))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall ((d@@49 T@U) ) (!  (=> ($Is DatatypeTypeType d@@49 Tclass.M0.Literal) (or (or (or (or (or (or (or (or (or (M0.Literal.litTrue_q d@@49) (M0.Literal.litFalse_q d@@49)) (M0.Literal.litUndefined_q d@@49)) (M0.Literal.litNull_q d@@49)) (M0.Literal.litNumber_q d@@49)) (M0.Literal.litString_q d@@49)) (M0.Literal.litPrimitive_q d@@49)) (M0.Literal.litArrOfPaths_q d@@49)) (M0.Literal.litArrOfStrings_q d@@49)) (M0.Literal.litArray_q d@@49)))
 :qid |unknown.0:0|
 :skolemid |1333|
 :pattern ( (M0.Literal.litArray_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfStrings_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litArrOfPaths_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litPrimitive_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litString_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNumber_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litNull_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litUndefined_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litFalse_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
 :pattern ( (M0.Literal.litTrue_q d@@49) ($Is DatatypeTypeType d@@49 Tclass.M0.Literal))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@7 T@U) (|stmts#0@@3| T@U) (|st#0@@13| T@U) (|env#0@@7| T@U) ) (!  (=> (or (|M0.__default.do#canCall| (Lit SeqType |stmts#0@@3|) |st#0@@13| |env#0@@7|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@3| (TSeq Tclass.M0.Statement)) ($IsBox |st#0@@13| Tclass.M0.State)) ($IsBox |env#0@@7| Tclass.M0.Env)) (and (M0.__default.Legal (Lit SeqType |stmts#0@@3|)) (M0.__default.ValidEnv |env#0@@7|))))) (and (let ((|stmt#1| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@3|) (LitInt 0)))))
 (and (=> (M0.Statement.stmtVariable_q |stmt#1|) (and (|M0.__default.eval#canCall| (M0.Statement.expr |stmt#1|) |st#0@@13| |env#0@@7|) (let ((|st'#1| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#1|) |st#0@@13| |env#0@@7|))))
(let ((|expr'#1| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#1|) |st#0@@13| |env#0@@7|)))))
 (and (|M0.__default.Value#canCall| |expr'#1|) (=> (M0.__default.Value |expr'#1|) (and (|M0.__default.SetEnv#canCall| (M0.Statement.id |stmt#1|) |expr'#1| |env#0@@7|) (let ((|env'#1| (M0.__default.SetEnv (M0.Statement.id |stmt#1|) |expr'#1| |env#0@@7|)))
 (and (|M0.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))))))) (|M0.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))) |st'#1| |env'#1|))))))))))) (=> (not (M0.Statement.stmtVariable_q |stmt#1|)) (|M0.__default.eval#canCall| (M0.Statement.ret |stmt#1|) |st#0@@13| |env#0@@7|)))) (= (M0.__default.do ($LS $ly@@7) (Lit SeqType |stmts#0@@3|) |st#0@@13| |env#0@@7|) (let ((|stmt#1@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@3|) (LitInt 0)))))
(ite (M0.Statement.stmtVariable_q |stmt#1@@0|) (let ((|st'#1@@0| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#1@@0|) |st#0@@13| |env#0@@7|))))
(let ((|expr'#1@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#1@@0|) |st#0@@13| |env#0@@7|)))))
(ite (M0.__default.Value |expr'#1@@0|) (let ((|env'#1@@0| (M0.__default.SetEnv (M0.Statement.id |stmt#1@@0|) |expr'#1@@0| |env#0@@7|)))
(ite (M0.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1)))) (M0.__default.do ($LS $ly@@7) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))) |st'#1@@0| |env'#1@@0|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType |expr'#1@@0|) |st'#1@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@13|)))) (M0.__default.eval ($LS $LZ) (M0.Statement.ret |stmt#1@@0|) |st#0@@13| |env#0@@7|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |955|
 :pattern ( (M0.__default.do ($LS $ly@@7) (Lit SeqType |stmts#0@@3|) |st#0@@13| |env#0@@7|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@8 T@U) (|context#0@@2| T@U) (|args#0@@4| T@U) (|stOrig#0@@2| T@U) (|env#0@@8| T@U) ) (!  (=> (or (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@2| Tclass.M0.Expression) ($Is SeqType |args#0@@4| (TSeq Tclass.M0.Expression))) ($IsBox |stOrig#0@@2| Tclass.M0.State)) ($IsBox |env#0@@8| Tclass.M0.Env)) (and (M0.__default.ValidEnv (Lit BoxType |env#0@@8|)) (forall ((|arg#3| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3| Tclass.M0.Expression) (=> (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)) (< (DtRank |arg#3|) (DtRank |context#0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |1007|
 :pattern ( (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@4| |Seq#Empty|)) (and (|M0.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)) (let ((|r#2| (M0.__default.eval ($LS $ly@@8) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|))))
 (and (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)) (let ((|rr#2| (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@8) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)))))
 (and (and (M0.Tuple.Pair_q |r#2|) (M0.Tuple.Pair_q |rr#2|)) (and (M0.Tuple.Pair_q |r#2|) (M0.Tuple.Pair_q |rr#2|)))))))) (= (M0.__default.evalArgs ($LS $ly@@8) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)) (ite (|Seq#Equal| |args#0@@4| |Seq#Empty|) (|#M0.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#2@@0| (M0.__default.eval ($LS $ly@@8) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|))))
(let ((|rr#2@@0| (Lit DatatypeTypeType (M0.__default.evalArgs ($LS $ly@@8) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)))))
(|#M0.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M0.Tuple.fst |r#2@@0|)) ($Unbox SeqType (M0.Tuple.fst |rr#2@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M0.Tuple.snd |r#2@@0|)) ($Unbox SetType (M0.Tuple.snd |rr#2@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |1008|
 :pattern ( (M0.__default.evalArgs ($LS $ly@@8) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit BoxType |stOrig#0@@2|) (Lit BoxType |env#0@@8|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@4| T@U) (|deps#0@@4| T@U) (|exps#0@@3| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@3|) |st#0@@14|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@4| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($IsBox |st#0@@14| Tclass.M0.State)))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is SeqType |e#1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|) (|M0.__default.DomSt#canCall| |st#0@@14|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@14|) (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|)) (and (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|) (|M0.__default.GetSt#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|) |st#0@@14|)) (and (|M0.__default.Loc#canCall| (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|) (|M0.__default.Oracle#canCall| (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1|) |st#0@@14|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |822|
 :pattern ( (M0.__default.Loc |cmd#0@@4| |deps#0@@4| |e#1|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#1|)))
)) (= (M0.__default.Pre (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@3|) |st#0@@14|) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#1@@0|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@14|) (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1@@0|)) (= (M0.__default.GetSt (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1@@0|) |st#0@@14|) (M0.__default.Oracle (M0.__default.Loc (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) |e#1@@0|) |st#0@@14|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |821|
 :pattern ( (M0.__default.Loc |cmd#0@@4| |deps#0@@4| |e#1@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |823|
 :pattern ( (M0.__default.Pre (Lit SeqType |cmd#0@@4|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@3|) |st#0@@14|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M0.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M0.Expression)))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( ($IsBox bx@@1 Tclass.M0.Expression))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M0.Program) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M0.Program)))
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( ($IsBox bx@@2 Tclass.M0.Program))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M0.Statement) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M0.Statement)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( ($IsBox bx@@3 Tclass.M0.Statement))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M0.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M0.Primitive)))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsBox bx@@4 Tclass.M0.Primitive))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M0.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M0.Literal)))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( ($IsBox bx@@5 Tclass.M0.Literal))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M0.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.M0.Reason)))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( ($IsBox bx@@6 Tclass.M0.Reason))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Statement.stmtReturn| |a#16#0#0|) Tclass.M0.Statement) ($Is DatatypeTypeType |a#16#0#0| Tclass.M0.Expression))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1151|
 :pattern ( ($Is DatatypeTypeType (|#M0.Statement.stmtReturn| |a#16#0#0|) Tclass.M0.Statement))
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
(assert (forall ((|a#102#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0|) Tclass.M0.Literal) ($Is DatatypeTypeType |a#102#0#0| Tclass.M0.Primitive))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1295|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0|) Tclass.M0.Literal))
)))
(assert (forall ((s@@10 T@U) (i@@5 Int) (v@@4 T@U) ) (!  (and (=> (= i@@5 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5) v@@4)) (=> (or (not (= i@@5 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5) (|Seq#Index| s@@10 i@@5))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (and (M0.Literal.litString_q a@@12) (M0.Literal.litString_q b@@9)) (= (|M0.Literal#Equal| a@@12 b@@9) (|Seq#Equal| (M0.Literal.str a@@12) (M0.Literal.str b@@9))))
 :qid |unknown.0:0|
 :skolemid |1339|
 :pattern ( (|M0.Literal#Equal| a@@12 b@@9) (M0.Literal.litString_q a@@12))
 :pattern ( (|M0.Literal#Equal| a@@12 b@@9) (M0.Literal.litString_q b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (and (M0.Literal.litPrimitive_q a@@13) (M0.Literal.litPrimitive_q b@@10)) (= (|M0.Literal#Equal| a@@13 b@@10) (|M0.Primitive#Equal| (M0.Literal.prim a@@13) (M0.Literal.prim b@@10))))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( (|M0.Literal#Equal| a@@13 b@@10) (M0.Literal.litPrimitive_q a@@13))
 :pattern ( (|M0.Literal#Equal| a@@13 b@@10) (M0.Literal.litPrimitive_q b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (M0.Literal.litArrOfPaths_q a@@14) (M0.Literal.litArrOfPaths_q b@@11)) (= (|M0.Literal#Equal| a@@14 b@@11) (|Set#Equal| (M0.Literal.paths a@@14) (M0.Literal.paths b@@11))))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( (|M0.Literal#Equal| a@@14 b@@11) (M0.Literal.litArrOfPaths_q a@@14))
 :pattern ( (|M0.Literal#Equal| a@@14 b@@11) (M0.Literal.litArrOfPaths_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (M0.Literal.litArrOfStrings_q a@@15) (M0.Literal.litArrOfStrings_q b@@12)) (= (|M0.Literal#Equal| a@@15 b@@12) (|Set#Equal| (M0.Literal.strs a@@15) (M0.Literal.strs b@@12))))
 :qid |unknown.0:0|
 :skolemid |1342|
 :pattern ( (|M0.Literal#Equal| a@@15 b@@12) (M0.Literal.litArrOfStrings_q a@@15))
 :pattern ( (|M0.Literal#Equal| a@@15 b@@12) (M0.Literal.litArrOfStrings_q b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (and (M0.Literal.litArray_q a@@16) (M0.Literal.litArray_q b@@13)) (= (|M0.Literal#Equal| a@@16 b@@13) (|Seq#Equal| (M0.Literal.arr a@@16) (M0.Literal.arr b@@13))))
 :qid |unknown.0:0|
 :skolemid |1343|
 :pattern ( (|M0.Literal#Equal| a@@16 b@@13) (M0.Literal.litArray_q a@@16))
 :pattern ( (|M0.Literal#Equal| a@@16 b@@13) (M0.Literal.litArray_q b@@13))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@17 b@@14) o@@4)  (or (|Set#IsMember| a@@17 o@@4) (|Set#IsMember| b@@14 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@17 b@@14) o@@4))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@11 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11) (exists ((i@@6 Int) ) (!  (and (and (and (<= 0 i@@6) (< i@@6 n@@5)) (< i@@6 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@6) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@11 i@@6))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (|Set#Disjoint| a@@18 b@@15) (and (= (|Set#Difference| (|Set#Union| a@@18 b@@15) a@@18) b@@15) (= (|Set#Difference| (|Set#Union| a@@18 b@@15) b@@15) a@@18)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@18 b@@15))
)))
(assert (forall ((|a#90#0#0| Int) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@9) ($IsAlloc intType (int_2_U |a#90#0#0|) TInt $h@@9)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1276|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0|) Tclass.M0.Literal $h@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) ) (!  (=> (and (or |M0.__default.EmptyEnv#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap@@6)) ($IsAllocBox M0.__default.EmptyEnv Tclass.M0.Env $Heap@@6))
 :qid |CloudMakeParallelBuildsdfy.59:18|
 :skolemid |784|
 :pattern ( ($IsAllocBox M0.__default.EmptyEnv Tclass.M0.Env $Heap@@6))
))))
(assert (forall ((s@@12 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@12 x@@12) (exists ((i@@7 Int) ) (!  (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@7) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@12 i@@7))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@12 x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@0| T@U) ) (!  (=> (or (|M0.__default.Value#canCall| |expr#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@0| Tclass.M0.Expression))) (= (M0.__default.Value |expr#0@@0|) (M0.Expression.exprLiteral_q |expr#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |936|
 :pattern ( (M0.__default.Value |expr#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@9 T@U) (|context#0@@3| T@U) (|args#0@@5| T@U) (|stOrig#0@@3| T@U) (|env#0@@9| T@U) ) (!  (=> (or (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@3| Tclass.M0.Expression) ($Is SeqType |args#0@@5| (TSeq Tclass.M0.Expression))) ($IsBox |stOrig#0@@3| Tclass.M0.State)) ($IsBox |env#0@@9| Tclass.M0.Env)) (and (M0.__default.ValidEnv |env#0@@9|) (forall ((|arg#2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#2| Tclass.M0.Expression) (=> (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)) (< (DtRank |arg#2|) (DtRank |context#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |1005|
 :pattern ( (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@5| |Seq#Empty|)) (and (|M0.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|) (let ((|r#1| (M0.__default.eval ($LS $ly@@9) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|)))
 (and (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|) (let ((|rr#1| (M0.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|)))
 (and (and (M0.Tuple.Pair_q |r#1|) (M0.Tuple.Pair_q |rr#1|)) (and (M0.Tuple.Pair_q |r#1|) (M0.Tuple.Pair_q |rr#1|)))))))) (= (M0.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|) (ite (|Seq#Equal| |args#0@@5| |Seq#Empty|) (|#M0.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#1@@0| (M0.__default.eval ($LS $ly@@9) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|)))
(let ((|rr#1@@0| (M0.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|)))
(|#M0.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M0.Tuple.fst |r#1@@0|)) ($Unbox SeqType (M0.Tuple.fst |rr#1@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M0.Tuple.snd |r#1@@0|)) ($Unbox SetType (M0.Tuple.snd |rr#1@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |1006|
 :pattern ( (M0.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|prog#0@@0| T@U) (|st#0@@15| T@U) ) (!  (=> (and (or (|M0.__default.build#canCall| |prog#0@@0| |st#0@@15|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prog#0@@0| Tclass.M0.Program) ($IsAlloc DatatypeTypeType |prog#0@@0| Tclass.M0.Program $Heap@@7)) (and ($IsBox |st#0@@15| Tclass.M0.State) ($IsAllocBox |st#0@@15| Tclass.M0.State $Heap@@7))) (M0.__default.Legal (M0.Program.stmts |prog#0@@0|))))) ($IsGoodHeap $Heap@@7)) ($IsAlloc DatatypeTypeType (M0.__default.build |prog#0@@0| |st#0@@15|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@7))
 :qid |CloudMakeParallelBuildsdfy.170:18|
 :skolemid |940|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.build |prog#0@@0| |st#0@@15|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@7))
))))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Program.Program| |a#2#0#0|) Tclass.M0.Program) ($Is SeqType |a#2#0#0| (TSeq Tclass.M0.Statement)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1124|
 :pattern ( ($Is DatatypeTypeType (|#M0.Program.Program| |a#2#0#0|) Tclass.M0.Program))
)))
(assert (forall ((|a#108#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0|) Tclass.M0.Literal) ($Is SetType |a#108#0#0| (TSet Tclass.M0.Path)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1305|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0|) Tclass.M0.Literal))
)))
(assert (forall ((|a#120#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0|) Tclass.M0.Literal) ($Is SeqType |a#120#0#0| (TSeq Tclass.M0.Expression)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1325|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0|) Tclass.M0.Literal))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prog#0@@1| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M0.__default.build#canCall| |prog#0@@1| |st#0@@16|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@1| Tclass.M0.Program) ($IsBox |st#0@@16| Tclass.M0.State)) (M0.__default.Legal (M0.Program.stmts |prog#0@@1|))))) (and (and (and (M0.Program.Program_q |prog#0@@1|) |M0.__default.EmptyEnv#canCall|) (|M0.__default.do#canCall| (M0.Program.stmts |prog#0@@1|) |st#0@@16| M0.__default.EmptyEnv)) (= (M0.__default.build |prog#0@@1| |st#0@@16|) (M0.__default.do ($LS $LZ) (M0.Program.stmts |prog#0@@1|) |st#0@@16| M0.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |942|
 :pattern ( (M0.__default.build |prog#0@@1| |st#0@@16|))
))))
(assert (forall ((|a#95#0#0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@10) ($IsAlloc SeqType |a#95#0#0| (TSeq TChar) $h@@10)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1285|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0|) Tclass.M0.Literal $h@@10))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0@@1| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| (Lit SetType |sts#0@@1|)) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0@@1| (TSet Tclass.M0.State)))) (and (forall ((|st#1| T@U) (|st'#1@@1| T@U) (|p#1| T@U) ) (!  (=> (and (and ($IsBox |st#1| Tclass.M0.State) ($IsBox |st'#1@@1| Tclass.M0.State)) ($IsBox |p#1| Tclass.M0.Path)) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) |st#1|) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) |st'#1@@1|) (and (|M0.__default.DomSt#canCall| |st#1|) (=> (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|) (and (|M0.__default.DomSt#canCall| |st'#1@@1|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#1@@1|) |p#1|) (and (|M0.__default.GetSt#canCall| |p#1| |st#1|) (|M0.__default.GetSt#canCall| |p#1| |st'#1@@1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |732|
 :pattern ( (M0.__default.GetSt |p#1| |st'#1@@1|) (M0.__default.GetSt |p#1| |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#1@@1|) (M0.__default.DomSt |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st'#1@@1|) (|Set#IsMember| |sts#0@@1| |st#1|))
 :pattern ( (M0.__default.GetSt |p#1| |st#1|) (M0.__default.DomSt |st'#1@@1|))
 :pattern ( (M0.__default.GetSt |p#1| |st#1|) (|Set#IsMember| |sts#0@@1| |st'#1@@1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@1|) |p#1|) (M0.__default.DomSt |st#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@1|) |p#1|) (|Set#IsMember| |sts#0@@1| |st#1|))
 :pattern ( (M0.__default.DomSt |st'#1@@1|) (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1|) |p#1|) (|Set#IsMember| |sts#0@@1| |st'#1@@1|))
)) (= (M0.__default.Compatible (Lit SetType |sts#0@@1|)) (forall ((|st#1@@0| T@U) (|st'#1@@2| T@U) (|p#1@@0| T@U) ) (!  (=> (and (and ($IsBox |st#1@@0| Tclass.M0.State) ($IsBox |st'#1@@2| Tclass.M0.State)) ($IsBox |p#1@@0| Tclass.M0.Path)) (=> (and (and (and (|Set#IsMember| (Lit SetType |sts#0@@1|) |st#1@@0|) (|Set#IsMember| (Lit SetType |sts#0@@1|) |st'#1@@2|)) (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|)) (|Set#IsMember| (M0.__default.DomSt |st'#1@@2|) |p#1@@0|)) (= (M0.__default.GetSt |p#1@@0| |st#1@@0|) (M0.__default.GetSt |p#1@@0| |st'#1@@2|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |731|
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@2|) (M0.__default.GetSt |p#1@@0| |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@2|) (M0.__default.DomSt |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st'#1@@2|) (|Set#IsMember| |sts#0@@1| |st#1@@0|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st#1@@0|) (M0.__default.DomSt |st'#1@@2|))
 :pattern ( (M0.__default.GetSt |p#1@@0| |st#1@@0|) (|Set#IsMember| |sts#0@@1| |st'#1@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@2|) |p#1@@0|) (M0.__default.DomSt |st#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#1@@2|) |p#1@@0|) (|Set#IsMember| |sts#0@@1| |st#1@@0|))
 :pattern ( (M0.__default.DomSt |st'#1@@2|) (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#1@@0|) |p#1@@0|) (|Set#IsMember| |sts#0@@1| |st'#1@@2|))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :weight 3
 :skolemid |733|
 :pattern ( (M0.__default.Compatible (Lit SetType |sts#0@@1|)))
))))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (|Set#Equal| a@@19 b@@16) (= a@@19 b@@16))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@19 b@@16))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (|Seq#Equal| a@@20 b@@17) (= a@@20 b@@17))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@20 b@@17))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) ) (!  (=> (or (|M0.__default.Arity#canCall| |prim#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@3| Tclass.M0.Primitive))) (<= (LitInt 0) (M0.__default.Arity |prim#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |1015|
 :pattern ( (M0.__default.Arity |prim#0@@3|))
))))
(assert (forall ((|a#16#0#0@@0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#M0.Statement.stmtReturn| |a#16#0#0@@0|) Tclass.M0.Statement $h@@11) ($IsAlloc DatatypeTypeType |a#16#0#0@@0| Tclass.M0.Expression $h@@11)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1152|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Statement.stmtReturn| |a#16#0#0@@0|) Tclass.M0.Statement $h@@11))
)))
(assert (forall ((|a#22#0#0@@0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@12) ($IsAlloc DatatypeTypeType |a#22#0#0@@0| Tclass.M0.Literal $h@@12)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |1168|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprLiteral| |a#22#0#0@@0|) Tclass.M0.Expression $h@@12))
)))
(assert (forall ((|a#28#0#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@13) ($IsAllocBox |a#28#0#0@@0| Tclass.M0.Identifier $h@@13)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |1178|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprIdentifier| |a#28#0#0@@0|) Tclass.M0.Expression $h@@13))
)))
(assert (forall ((|a#68#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@14) ($IsAlloc DatatypeTypeType |a#68#0#0@@0| Tclass.M0.Reason $h@@14)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |1244|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Expression.exprError| |a#68#0#0@@0|) Tclass.M0.Expression $h@@14))
)))
(assert (forall ((|a#102#0#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0@@0|) Tclass.M0.Literal $h@@15) ($IsAlloc DatatypeTypeType |a#102#0#0@@0| Tclass.M0.Primitive $h@@15)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1296|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litPrimitive| |a#102#0#0@@0|) Tclass.M0.Literal $h@@15))
)))
(assert (forall ((s@@13 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@6)))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> ($Is DatatypeTypeType d@@50 Tclass.M0.Statement) (or (M0.Statement.stmtVariable_q d@@50) (M0.Statement.stmtReturn_q d@@50)))
 :qid |unknown.0:0|
 :skolemid |1158|
 :pattern ( (M0.Statement.stmtReturn_q d@@50) ($Is DatatypeTypeType d@@50 Tclass.M0.Statement))
 :pattern ( (M0.Statement.stmtVariable_q d@@50) ($Is DatatypeTypeType d@@50 Tclass.M0.Statement))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> ($Is DatatypeTypeType d@@51 Tclass.M0.Primitive) (or (M0.Primitive.primCreatePath_q d@@51) (M0.Primitive.primExec_q d@@51)))
 :qid |unknown.0:0|
 :skolemid |1351|
 :pattern ( (M0.Primitive.primExec_q d@@51) ($Is DatatypeTypeType d@@51 Tclass.M0.Primitive))
 :pattern ( (M0.Primitive.primCreatePath_q d@@51) ($Is DatatypeTypeType d@@51 Tclass.M0.Primitive))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|id#0@@1| T@U) (|expr#0@@1| T@U) (|env#0@@10| T@U) ) (!  (=> (and (or (|M0.__default.SetEnv#canCall| |id#0@@1| |expr#0@@1| |env#0@@10|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |id#0@@1| Tclass.M0.Identifier) ($IsAllocBox |id#0@@1| Tclass.M0.Identifier $Heap@@8)) (and ($Is DatatypeTypeType |expr#0@@1| Tclass.M0.Expression) ($IsAlloc DatatypeTypeType |expr#0@@1| Tclass.M0.Expression $Heap@@8))) (and ($IsBox |env#0@@10| Tclass.M0.Env) ($IsAllocBox |env#0@@10| Tclass.M0.Env $Heap@@8))) (and (M0.__default.ValidEnv |env#0@@10|) (M0.__default.Value |expr#0@@1|))))) ($IsGoodHeap $Heap@@8)) ($IsAllocBox (M0.__default.SetEnv |id#0@@1| |expr#0@@1| |env#0@@10|) Tclass.M0.Env $Heap@@8))
 :qid |CloudMakeParallelBuildsdfy.64:18|
 :skolemid |791|
 :pattern ( ($IsAllocBox (M0.__default.SetEnv |id#0@@1| |expr#0@@1| |env#0@@10|) Tclass.M0.Env $Heap@@8))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prog#0@@2| T@U) (|st#0@@17| T@U) ) (!  (=> (or (|M0.__default.build#canCall| (Lit DatatypeTypeType |prog#0@@2|) |st#0@@17|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@2| Tclass.M0.Program) ($IsBox |st#0@@17| Tclass.M0.State)) (U_2_bool (Lit boolType (bool_2_U (M0.__default.Legal (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@2|)))))))))) (and (and (and (M0.Program.Program_q (Lit DatatypeTypeType |prog#0@@2|)) |M0.__default.EmptyEnv#canCall|) (|M0.__default.do#canCall| (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@17| M0.__default.EmptyEnv)) (= (M0.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@17|) (M0.__default.do ($LS $LZ) (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@17| M0.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |943|
 :pattern ( (M0.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@17|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@10 T@U) (|expr#0@@2| T@U) (|st#0@@18| T@U) (|env#0@@11| T@U) ) (!  (=> (or (|M0.__default.eval#canCall| |expr#0@@2| |st#0@@18| |env#0@@11|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@2| Tclass.M0.Expression) ($IsBox |st#0@@18| Tclass.M0.State)) ($IsBox |env#0@@11| Tclass.M0.Env)) (M0.__default.ValidEnv |env#0@@11|)))) ($Is DatatypeTypeType (M0.__default.eval $ly@@10 |expr#0@@2| |st#0@@18| |env#0@@11|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |971|
 :pattern ( (M0.__default.eval $ly@@10 |expr#0@@2| |st#0@@18| |env#0@@11|))
))))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TChar) (and (= ($Box charType ($Unbox charType bx@@8)) bx@@8) ($Is charType ($Unbox charType bx@@8) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@8 TChar))
)))
(assert (forall ((|a#114#0#0| T@U) ($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0|) Tclass.M0.Literal $h@@16) ($IsAlloc SetType |a#114#0#0| (TSet (TSeq TChar)) $h@@16)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1316|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0|) Tclass.M0.Literal $h@@16))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@11 T@U) (|stmts#0@@4| T@U) (|st#0@@19| T@U) (|env#0@@12| T@U) ) (!  (=> (or (|M0.__default.do#canCall| |stmts#0@@4| |st#0@@19| |env#0@@12|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@4| (TSeq Tclass.M0.Statement)) ($IsBox |st#0@@19| Tclass.M0.State)) ($IsBox |env#0@@12| Tclass.M0.Env)) (and (M0.__default.Legal |stmts#0@@4|) (M0.__default.ValidEnv |env#0@@12|))))) ($Is DatatypeTypeType (M0.__default.do $ly@@11 |stmts#0@@4| |st#0@@19| |env#0@@12|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State)))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |951|
 :pattern ( (M0.__default.do $ly@@11 |stmts#0@@4| |st#0@@19| |env#0@@12|))
))))
(assert (forall ((s@@14 T@U) ) (! (<= 0 (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@14))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@6 T@U) ) (!  (=> ($IsBox v@@6 ty) ($IsAllocBox v@@6 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |79|
 :pattern ( ($IsAllocBox v@@6 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |80|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((s@@15 T@U) (i@@8 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@8) (< i@@8 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@8) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@8) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (and (M0.Literal.litTrue_q a@@21) (M0.Literal.litTrue_q b@@18)) (|M0.Literal#Equal| a@@21 b@@18))
 :qid |unknown.0:0|
 :skolemid |1334|
 :pattern ( (|M0.Literal#Equal| a@@21 b@@18) (M0.Literal.litTrue_q a@@21))
 :pattern ( (|M0.Literal#Equal| a@@21 b@@18) (M0.Literal.litTrue_q b@@18))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (and (M0.Literal.litFalse_q a@@22) (M0.Literal.litFalse_q b@@19)) (|M0.Literal#Equal| a@@22 b@@19))
 :qid |unknown.0:0|
 :skolemid |1335|
 :pattern ( (|M0.Literal#Equal| a@@22 b@@19) (M0.Literal.litFalse_q a@@22))
 :pattern ( (|M0.Literal#Equal| a@@22 b@@19) (M0.Literal.litFalse_q b@@19))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (and (M0.Literal.litUndefined_q a@@23) (M0.Literal.litUndefined_q b@@20)) (|M0.Literal#Equal| a@@23 b@@20))
 :qid |unknown.0:0|
 :skolemid |1336|
 :pattern ( (|M0.Literal#Equal| a@@23 b@@20) (M0.Literal.litUndefined_q a@@23))
 :pattern ( (|M0.Literal#Equal| a@@23 b@@20) (M0.Literal.litUndefined_q b@@20))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (and (M0.Literal.litNull_q a@@24) (M0.Literal.litNull_q b@@21)) (|M0.Literal#Equal| a@@24 b@@21))
 :qid |unknown.0:0|
 :skolemid |1337|
 :pattern ( (|M0.Literal#Equal| a@@24 b@@21) (M0.Literal.litNull_q a@@24))
 :pattern ( (|M0.Literal#Equal| a@@24 b@@21) (M0.Literal.litNull_q b@@21))
)))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (=> (and (M0.Primitive.primCreatePath_q a@@25) (M0.Primitive.primCreatePath_q b@@22)) (|M0.Primitive#Equal| a@@25 b@@22))
 :qid |unknown.0:0|
 :skolemid |1352|
 :pattern ( (|M0.Primitive#Equal| a@@25 b@@22) (M0.Primitive.primCreatePath_q a@@25))
 :pattern ( (|M0.Primitive#Equal| a@@25 b@@22) (M0.Primitive.primCreatePath_q b@@22))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (and (M0.Primitive.primExec_q a@@26) (M0.Primitive.primExec_q b@@23)) (|M0.Primitive#Equal| a@@26 b@@23))
 :qid |unknown.0:0|
 :skolemid |1353|
 :pattern ( (|M0.Primitive#Equal| a@@26 b@@23) (M0.Primitive.primExec_q a@@26))
 :pattern ( (|M0.Primitive#Equal| a@@26 b@@23) (M0.Primitive.primExec_q b@@23))
)))
(assert (forall ((|a#2#0#0@@0| T@U) ($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) (= ($IsAlloc DatatypeTypeType (|#M0.Program.Program| |a#2#0#0@@0|) Tclass.M0.Program $h@@17) ($IsAlloc SeqType |a#2#0#0@@0| (TSeq Tclass.M0.Statement) $h@@17)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1125|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Program.Program| |a#2#0#0@@0|) Tclass.M0.Program $h@@17))
)))
(assert (forall ((|a#108#0#0@@0| T@U) ($h@@18 T@U) ) (!  (=> ($IsGoodHeap $h@@18) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0@@0|) Tclass.M0.Literal $h@@18) ($IsAlloc SetType |a#108#0#0@@0| (TSet Tclass.M0.Path) $h@@18)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1306|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#108#0#0@@0|) Tclass.M0.Literal $h@@18))
)))
(assert (forall ((|a#120#0#0@@0| T@U) ($h@@19 T@U) ) (!  (=> ($IsGoodHeap $h@@19) (= ($IsAlloc DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0@@0|) Tclass.M0.Literal $h@@19) ($IsAlloc SeqType |a#120#0#0@@0| (TSeq Tclass.M0.Expression) $h@@19)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1326|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Literal.litArray| |a#120#0#0@@0|) Tclass.M0.Literal $h@@19))
)))
(assert (forall ((v@@7 T@U) (t0@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@0) h@@1) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@9) ($IsAllocBox bx@@9 t0@@0 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@7 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@0) h@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|sts#0@@2| T@U) ) (!  (=> (or (|M0.__default.Compatible#canCall| |sts#0@@2|) (and (< 2 $FunctionContextHeight) ($Is SetType |sts#0@@2| (TSet Tclass.M0.State)))) (and (forall ((|st#0@@20| T@U) (|st'#0@@2| T@U) (|p#0@@3| T@U) ) (!  (=> (and (and ($IsBox |st#0@@20| Tclass.M0.State) ($IsBox |st'#0@@2| Tclass.M0.State)) ($IsBox |p#0@@3| Tclass.M0.Path)) (=> (|Set#IsMember| |sts#0@@2| |st#0@@20|) (=> (|Set#IsMember| |sts#0@@2| |st'#0@@2|) (and (|M0.__default.DomSt#canCall| |st#0@@20|) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@20|) |p#0@@3|) (and (|M0.__default.DomSt#canCall| |st'#0@@2|) (=> (|Set#IsMember| (M0.__default.DomSt |st'#0@@2|) |p#0@@3|) (and (|M0.__default.GetSt#canCall| |p#0@@3| |st#0@@20|) (|M0.__default.GetSt#canCall| |p#0@@3| |st'#0@@2|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |729|
 :pattern ( (M0.__default.GetSt |p#0@@3| |st'#0@@2|) (M0.__default.GetSt |p#0@@3| |st#0@@20|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |st'#0@@2|) (M0.__default.DomSt |st#0@@20|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |st'#0@@2|) (|Set#IsMember| |sts#0@@2| |st#0@@20|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |st#0@@20|) (M0.__default.DomSt |st'#0@@2|))
 :pattern ( (M0.__default.GetSt |p#0@@3| |st#0@@20|) (|Set#IsMember| |sts#0@@2| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@2|) |p#0@@3|) (M0.__default.DomSt |st#0@@20|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@2|) |p#0@@3|) (|Set#IsMember| |sts#0@@2| |st#0@@20|))
 :pattern ( (M0.__default.DomSt |st'#0@@2|) (|Set#IsMember| (M0.__default.DomSt |st#0@@20|) |p#0@@3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@20|) |p#0@@3|) (|Set#IsMember| |sts#0@@2| |st'#0@@2|))
)) (= (M0.__default.Compatible |sts#0@@2|) (forall ((|st#0@@21| T@U) (|st'#0@@3| T@U) (|p#0@@4| T@U) ) (!  (=> (and (and ($IsBox |st#0@@21| Tclass.M0.State) ($IsBox |st'#0@@3| Tclass.M0.State)) ($IsBox |p#0@@4| Tclass.M0.Path)) (=> (and (and (and (|Set#IsMember| |sts#0@@2| |st#0@@21|) (|Set#IsMember| |sts#0@@2| |st'#0@@3|)) (|Set#IsMember| (M0.__default.DomSt |st#0@@21|) |p#0@@4|)) (|Set#IsMember| (M0.__default.DomSt |st'#0@@3|) |p#0@@4|)) (= (M0.__default.GetSt |p#0@@4| |st#0@@21|) (M0.__default.GetSt |p#0@@4| |st'#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |728|
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@3|) (M0.__default.GetSt |p#0@@4| |st#0@@21|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@3|) (M0.__default.DomSt |st#0@@21|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st'#0@@3|) (|Set#IsMember| |sts#0@@2| |st#0@@21|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st#0@@21|) (M0.__default.DomSt |st'#0@@3|))
 :pattern ( (M0.__default.GetSt |p#0@@4| |st#0@@21|) (|Set#IsMember| |sts#0@@2| |st'#0@@3|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@3|) |p#0@@4|) (M0.__default.DomSt |st#0@@21|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st'#0@@3|) |p#0@@4|) (|Set#IsMember| |sts#0@@2| |st#0@@21|))
 :pattern ( (M0.__default.DomSt |st'#0@@3|) (|Set#IsMember| (M0.__default.DomSt |st#0@@21|) |p#0@@4|))
 :pattern ( (|Set#IsMember| (M0.__default.DomSt |st#0@@21|) |p#0@@4|) (|Set#IsMember| |sts#0@@2| |st'#0@@3|))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :skolemid |730|
 :pattern ( (M0.__default.Compatible |sts#0@@2|))
))))
(assert (forall ((M0.Tuple$A@@2 T@U) (M0.Tuple$B@@2 T@U) ) (! (= (Tclass.M0.Tuple_0 (Tclass.M0.Tuple M0.Tuple$A@@2 M0.Tuple$B@@2)) M0.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@2 M0.Tuple$B@@2))
)))
(assert (forall ((M0.Tuple$A@@3 T@U) (M0.Tuple$B@@3 T@U) ) (! (= (Tclass.M0.Tuple_1 (Tclass.M0.Tuple M0.Tuple$A@@3 M0.Tuple$B@@3)) M0.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |797|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@3 M0.Tuple$B@@3))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Statement.stmtVariable| |a#7#0#0| |a#7#1#0|)) |##M0.Statement.stmtVariable|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1135|
 :pattern ( (|#M0.Statement.stmtVariable| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (M0.Statement.id (|#M0.Statement.stmtVariable| |a#11#0#0| |a#11#1#0|)) |a#11#0#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1144|
 :pattern ( (|#M0.Statement.stmtVariable| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (M0.Statement.expr (|#M0.Statement.stmtVariable| |a#12#0#0| |a#12#1#0|)) |a#12#1#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1145|
 :pattern ( (|#M0.Statement.stmtVariable| |a#12#0#0| |a#12#1#0|))
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
(assert (forall ((|a#141#0#0| T@U) (|a#141#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Tuple.Pair| |a#141#0#0| |a#141#1#0|)) |##M0.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1365|
 :pattern ( (|#M0.Tuple.Pair| |a#141#0#0| |a#141#1#0|))
)))
(assert (forall ((|a#145#0#0| T@U) (|a#145#1#0| T@U) ) (! (= (M0.Tuple.fst (|#M0.Tuple.Pair| |a#145#0#0| |a#145#1#0|)) |a#145#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1376|
 :pattern ( (|#M0.Tuple.Pair| |a#145#0#0| |a#145#1#0|))
)))
(assert (forall ((|a#147#0#0| T@U) (|a#147#1#0| T@U) ) (! (= (M0.Tuple.snd (|#M0.Tuple.Pair| |a#147#0#0| |a#147#1#0|)) |a#147#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1378|
 :pattern ( (|#M0.Tuple.Pair| |a#147#0#0| |a#147#1#0|))
)))
(assert (forall ((v@@8 T@U) (t0@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@1) h@@2) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@9) t0@@1 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@8 i@@9))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@1) h@@2))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)) (Lit DatatypeTypeType (|#M0.Expression.exprIf| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |1191|
 :pattern ( (|#M0.Expression.exprIf| (Lit DatatypeTypeType |a#34#0#0|) (Lit DatatypeTypeType |a#34#1#0|) (Lit DatatypeTypeType |a#34#2#0|)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0@@2| T@U) (|expr#0@@3| T@U) (|env#0@@13| T@U) ) (!  (=> (or (|M0.__default.SetEnv#canCall| |id#0@@2| |expr#0@@3| |env#0@@13|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@2| Tclass.M0.Identifier) ($Is DatatypeTypeType |expr#0@@3| Tclass.M0.Expression)) ($IsBox |env#0@@13| Tclass.M0.Env)) (and (M0.__default.ValidEnv |env#0@@13|) (M0.__default.Value |expr#0@@3|))))) (and (M0.__default.ValidEnv (M0.__default.SetEnv |id#0@@2| |expr#0@@3| |env#0@@13|)) ($IsBox (M0.__default.SetEnv |id#0@@2| |expr#0@@3| |env#0@@13|) Tclass.M0.Env)))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |790|
 :pattern ( (M0.__default.SetEnv |id#0@@2| |expr#0@@3| |env#0@@13|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@12 T@U) (|expr#0@@4| T@U) (|st#0@@22| T@U) (|env#0@@14| T@U) ) (!  (=> (or (|M0.__default.eval#canCall| |expr#0@@4| |st#0@@22| |env#0@@14|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@4| Tclass.M0.Expression) ($IsBox |st#0@@22| Tclass.M0.State)) ($IsBox |env#0@@14| Tclass.M0.Env)) (M0.__default.ValidEnv |env#0@@14|)))) (and (and (|M0.__default.Value#canCall| |expr#0@@4|) (=> (not (M0.__default.Value |expr#0@@4|)) (and (=> (M0.Expression.exprIdentifier_q |expr#0@@4|) (|M0.__default.GetEnv#canCall| (M0.Expression.id |expr#0@@4|) |env#0@@14|)) (=> (not (M0.Expression.exprIdentifier_q |expr#0@@4|)) (and (=> (M0.Expression.exprIf_q |expr#0@@4|) (and (|M0.__default.eval#canCall| (M0.Expression.cond |expr#0@@4|) |st#0@@22| |env#0@@14|) (let ((|st'#0@@4| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.cond |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|cond'#0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.cond |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
 (and (and (=> (M0.Expression.exprLiteral_q |cond'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#0|))) (=> (and (M0.Expression.exprLiteral_q |cond'#0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#0|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (M0.Expression.ifTrue |expr#0@@4|) |st'#0@@4| |env#0@@14|))) (=> (not (and (M0.Expression.exprLiteral_q |cond'#0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#0|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |cond'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#0|))) (=> (and (M0.Expression.exprLiteral_q |cond'#0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#0|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (M0.Expression.ifFalse |expr#0@@4|) |st'#0@@4| |env#0@@14|))))))))) (=> (not (M0.Expression.exprIf_q |expr#0@@4|)) (and (=> (M0.Expression.exprAnd_q |expr#0@@4|) (and (|M0.__default.eval#canCall| (M0.Expression.conj0 |expr#0@@4|) |st#0@@22| |env#0@@14|) (let ((|st'#1@@3| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.conj0 |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|conj0'#0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.conj0 |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
 (and (and (=> (M0.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#0|))) (=> (and (M0.Expression.exprLiteral_q |conj0'#0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#0|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (M0.Expression.conj1 |expr#0@@4|) |st'#1@@3| |env#0@@14|))) (=> (not (and (M0.Expression.exprLiteral_q |conj0'#0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#0|) |#M0.Literal.litTrue|))) (=> (M0.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#0|))))))))) (=> (not (M0.Expression.exprAnd_q |expr#0@@4|)) (and (=> (M0.Expression.exprOr_q |expr#0@@4|) (and (|M0.__default.eval#canCall| (M0.Expression.disj0 |expr#0@@4|) |st#0@@22| |env#0@@14|) (let ((|st'#2| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.disj0 |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|disj0'#0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.disj0 |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
 (and (=> (M0.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#0|))) (=> (not (and (M0.Expression.exprLiteral_q |disj0'#0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#0|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#0|))) (=> (and (M0.Expression.exprLiteral_q |disj0'#0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#0|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (M0.Expression.disj1 |expr#0@@4|) |st'#2| |env#0@@14|))))))))) (=> (not (M0.Expression.exprOr_q |expr#0@@4|)) (=> (M0.Expression.exprInvocation_q |expr#0@@4|) (and (|M0.__default.eval#canCall| (M0.Expression.fun |expr#0@@4|) |st#0@@22| |env#0@@14|) (let ((|st'#3| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.fun |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|fun'#0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.fun |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
 (and (|M0.__default.evalArgs#canCall| |expr#0@@4| (M0.Expression.args |expr#0@@4|) |st#0@@22| |env#0@@14|) (let ((|sts'#0| ($Unbox SetType (M0.Tuple.snd (M0.__default.evalArgs $ly@@12 |expr#0@@4| (M0.Expression.args |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(let ((|args'#0| ($Unbox SeqType (M0.Tuple.fst (M0.__default.evalArgs $ly@@12 |expr#0@@4| (M0.Expression.args |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(let ((|sts''#0| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#3|) |sts'#0|)))
 (and (|M0.__default.Compatible#canCall| |sts''#0|) (=> (M0.__default.Compatible |sts''#0|) (and (|M0.__default.Combine#canCall| |sts''#0|) (let ((|stCombined#0| (M0.__default.Combine ($LS $LZ) |sts''#0|)))
 (=> (and (M0.Expression.exprLiteral_q |fun'#0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#0|))) (=> (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#0|))) (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#0|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#0| |stCombined#0|))) (=> (and (= (|Seq#Length| |args'#0|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#0| |stCombined#0|)) (and (|M0.__default.exec#canCall| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|) (let ((|ps#0| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|)))
 (and (M0.Tuple.Pair_q |ps#0|) (M0.Tuple.Pair_q |ps#0|)))))))))))))))))))))))))))))) (= (M0.__default.eval ($LS $ly@@12) |expr#0@@4| |st#0@@22| |env#0@@14|) (ite (M0.__default.Value |expr#0@@4|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType |expr#0@@4|) |st#0@@22|) (ite (M0.Expression.exprIdentifier_q |expr#0@@4|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (M0.__default.GetEnv (M0.Expression.id |expr#0@@4|) |env#0@@14|)) |st#0@@22|) (ite (M0.Expression.exprIf_q |expr#0@@4|) (let ((|st'#0@@5| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.cond |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|cond'#0@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.cond |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(ite  (and (M0.Expression.exprLiteral_q |cond'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#0@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval $ly@@12 (M0.Expression.ifTrue |expr#0@@4|) |st'#0@@5| |env#0@@14|) (ite  (and (M0.Expression.exprLiteral_q |cond'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#0@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval $ly@@12 (M0.Expression.ifFalse |expr#0@@4|) |st'#0@@5| |env#0@@14|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|))))) (ite (M0.Expression.exprAnd_q |expr#0@@4|) (let ((|st'#1@@4| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.conj0 |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|conj0'#0@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.conj0 |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(ite  (and (M0.Expression.exprLiteral_q |conj0'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#0@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval $ly@@12 (M0.Expression.conj1 |expr#0@@4|) |st'#1@@4| |env#0@@14|) (ite  (and (M0.Expression.exprLiteral_q |conj0'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#0@@0|) |#M0.Literal.litFalse|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))) |st'#1@@4|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|))))) (ite (M0.Expression.exprOr_q |expr#0@@4|) (let ((|st'#2@@0| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.disj0 |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|disj0'#0@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.disj0 |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(ite  (and (M0.Expression.exprLiteral_q |disj0'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#0@@0|) |#M0.Literal.litTrue|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))) |st'#2@@0|) (ite  (and (M0.Expression.exprLiteral_q |disj0'#0@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#0@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval $ly@@12 (M0.Expression.disj1 |expr#0@@4|) |st'#2@@0| |env#0@@14|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|))))) (ite (M0.Expression.exprInvocation_q |expr#0@@4|) (let ((|st'#3@@0| (M0.Tuple.snd (M0.__default.eval $ly@@12 (M0.Expression.fun |expr#0@@4|) |st#0@@22| |env#0@@14|))))
(let ((|fun'#0@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval $ly@@12 (M0.Expression.fun |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(let ((|sts'#0@@0| ($Unbox SetType (M0.Tuple.snd (M0.__default.evalArgs $ly@@12 |expr#0@@4| (M0.Expression.args |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(let ((|args'#0@@0| ($Unbox SeqType (M0.Tuple.fst (M0.__default.evalArgs $ly@@12 |expr#0@@4| (M0.Expression.args |expr#0@@4|) |st#0@@22| |env#0@@14|)))))
(let ((|sts''#0@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#3@@0|) |sts'#0@@0|)))
(ite  (not (M0.__default.Compatible |sts''#0@@0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) |st#0@@22|) (let ((|stCombined#0@@0| (M0.__default.Combine ($LS $LZ) |sts''#0@@0|)))
(ite  (and (M0.Expression.exprLiteral_q |fun'#0@@0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#0@@0|))) (ite (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#0@@0|))) (ite  (and (= (|Seq#Length| |args'#0@@0|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#0@@0| |stCombined#0@@0|)) (let ((|ps#0@@0| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 2))))) |stCombined#0@@0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#0@@0|))))) (M0.Tuple.snd |ps#0@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|))))))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@22|))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |974|
 :pattern ( (M0.__default.eval ($LS $ly@@12) |expr#0@@4| |st#0@@22| |env#0@@14|))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Program.Program| |a#0#0#0|)) |##M0.Program.Program|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1120|
 :pattern ( (|#M0.Program.Program| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (M0.Program.stmts (|#M0.Program.Program| |a#4#0#0|)) |a#4#0#0|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1128|
 :pattern ( (|#M0.Program.Program| |a#4#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Statement.stmtReturn| |a#14#0#0|)) |##M0.Statement.stmtReturn|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1147|
 :pattern ( (|#M0.Statement.stmtReturn| |a#14#0#0|))
)))
(assert (forall ((|a#18#0#0| T@U) ) (! (= (M0.Statement.ret (|#M0.Statement.stmtReturn| |a#18#0#0|)) |a#18#0#0|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1155|
 :pattern ( (|#M0.Statement.stmtReturn| |a#18#0#0|))
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
(assert (forall ((|a#88#0#0| Int) ) (! (= (DatatypeCtorId (|#M0.Literal.litNumber| |a#88#0#0|)) |##M0.Literal.litNumber|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1271|
 :pattern ( (|#M0.Literal.litNumber| |a#88#0#0|))
)))
(assert (forall ((|a#92#0#0| Int) ) (! (= (M0.Literal.num (|#M0.Literal.litNumber| |a#92#0#0|)) |a#92#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1279|
 :pattern ( (|#M0.Literal.litNumber| |a#92#0#0|))
)))
(assert (forall ((|a#93#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litString| |a#93#0#0|)) |##M0.Literal.litString|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1280|
 :pattern ( (|#M0.Literal.litString| |a#93#0#0|))
)))
(assert (forall ((|a#97#0#0| T@U) ) (! (= (M0.Literal.str (|#M0.Literal.litString| |a#97#0#0|)) |a#97#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1288|
 :pattern ( (|#M0.Literal.litString| |a#97#0#0|))
)))
(assert (forall ((|a#100#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litPrimitive| |a#100#0#0|)) |##M0.Literal.litPrimitive|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1291|
 :pattern ( (|#M0.Literal.litPrimitive| |a#100#0#0|))
)))
(assert (forall ((|a#104#0#0| T@U) ) (! (= (M0.Literal.prim (|#M0.Literal.litPrimitive| |a#104#0#0|)) |a#104#0#0|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1299|
 :pattern ( (|#M0.Literal.litPrimitive| |a#104#0#0|))
)))
(assert (forall ((|a#106#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArrOfPaths| |a#106#0#0|)) |##M0.Literal.litArrOfPaths|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1301|
 :pattern ( (|#M0.Literal.litArrOfPaths| |a#106#0#0|))
)))
(assert (forall ((|a#110#0#0| T@U) ) (! (= (M0.Literal.paths (|#M0.Literal.litArrOfPaths| |a#110#0#0|)) |a#110#0#0|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1309|
 :pattern ( (|#M0.Literal.litArrOfPaths| |a#110#0#0|))
)))
(assert (forall ((|a#112#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArrOfStrings| |a#112#0#0|)) |##M0.Literal.litArrOfStrings|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1311|
 :pattern ( (|#M0.Literal.litArrOfStrings| |a#112#0#0|))
)))
(assert (forall ((|a#116#0#0| T@U) ) (! (= (M0.Literal.strs (|#M0.Literal.litArrOfStrings| |a#116#0#0|)) |a#116#0#0|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1319|
 :pattern ( (|#M0.Literal.litArrOfStrings| |a#116#0#0|))
)))
(assert (forall ((|a#118#0#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Literal.litArray| |a#118#0#0|)) |##M0.Literal.litArray|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1321|
 :pattern ( (|#M0.Literal.litArray| |a#118#0#0|))
)))
(assert (forall ((|a#122#0#0| T@U) ) (! (= (M0.Literal.arr (|#M0.Literal.litArray| |a#122#0#0|)) |a#122#0#0|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1329|
 :pattern ( (|#M0.Literal.litArray| |a#122#0#0|))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@13))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|st#0@@23| T@U) ) (!  (=> (or (|M0.__default.DomSt#canCall| |st#0@@23|) (and (< 0 $FunctionContextHeight) ($IsBox |st#0@@23| Tclass.M0.State))) ($Is SetType (M0.__default.DomSt |st#0@@23|) (TSet Tclass.M0.Path)))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |699|
 :pattern ( (M0.__default.DomSt |st#0@@23|))
))))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (< (DtRank |a#13#1#0|) (DtRank (|#M0.Statement.stmtVariable| |a#13#0#0| |a#13#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1146|
 :pattern ( (|#M0.Statement.stmtVariable| |a#13#0#0| |a#13#1#0|))
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
(assert (forall ((|a#146#0#0| T@U) (|a#146#1#0| T@U) ) (! (< (BoxRank |a#146#0#0|) (DtRank (|#M0.Tuple.Pair| |a#146#0#0| |a#146#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1377|
 :pattern ( (|#M0.Tuple.Pair| |a#146#0#0| |a#146#1#0|))
)))
(assert (forall ((|a#148#0#0| T@U) (|a#148#1#0| T@U) ) (! (< (BoxRank |a#148#1#0|) (DtRank (|#M0.Tuple.Pair| |a#148#0#0| |a#148#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1379|
 :pattern ( (|#M0.Tuple.Pair| |a#148#0#0| |a#148#1#0|))
)))
(assert (forall (($ly@@13 T@U) (|sts#0@@3| T@U) ) (! (= (M0.__default.Combine ($LS $ly@@13) |sts#0@@3|) (M0.__default.Combine $ly@@13 |sts#0@@3|))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |741|
 :pattern ( (M0.__default.Combine ($LS $ly@@13) |sts#0@@3|))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (! (= (|Set#Union| a@@27 (|Set#Union| a@@27 b@@24)) (|Set#Union| a@@27 b@@24))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@27 (|Set#Union| a@@27 b@@24)))
)))
(assert (forall ((|a#90#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal) ($Is intType (int_2_U |a#90#0#0@@0|) TInt))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1275|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litNumber| |a#90#0#0@@0|) Tclass.M0.Literal))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@5| T@U) (|deps#0@@5| T@U) (|exps#0@@4| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M0.__default.Pre#canCall| |cmd#0@@5| |deps#0@@5| |exps#0@@4| |st#0@@24|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@5| (TSeq TChar)) ($Is SetType |deps#0@@5| (TSet Tclass.M0.Path))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($IsBox |st#0@@24| Tclass.M0.State)))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is SeqType |e#0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@5| |deps#0@@5| |e#0|) (|M0.__default.DomSt#canCall| |st#0@@24|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@24|) (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0|)) (and (and (|M0.__default.Loc#canCall| |cmd#0@@5| |deps#0@@5| |e#0|) (|M0.__default.GetSt#canCall| (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0|) |st#0@@24|)) (and (|M0.__default.Loc#canCall| |cmd#0@@5| |deps#0@@5| |e#0|) (|M0.__default.Oracle#canCall| (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0|) |st#0@@24|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |819|
 :pattern ( (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0|)))
)) (= (M0.__default.Pre |cmd#0@@5| |deps#0@@5| |exps#0@@4| |st#0@@24|) (forall ((|e#0@@0| T@U) ) (!  (=> ($Is SeqType |e#0@@0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@0|)) (=> (|Set#IsMember| (M0.__default.DomSt |st#0@@24|) (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0@@0|)) (= (M0.__default.GetSt (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0@@0|) |st#0@@24|) (M0.__default.Oracle (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0@@0|) |st#0@@24|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |818|
 :pattern ( (M0.__default.Loc |cmd#0@@5| |deps#0@@5| |e#0@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |820|
 :pattern ( (M0.__default.Pre |cmd#0@@5| |deps#0@@5| |exps#0@@4| |st#0@@24|))
))))
(assert (forall (($ly@@14 T@U) (|stmts#0@@5| T@U) (|st#0@@25| T@U) (|env#0@@15| T@U) ) (! (= (M0.__default.do ($LS $ly@@14) |stmts#0@@5| |st#0@@25| |env#0@@15|) (M0.__default.do $ly@@14 |stmts#0@@5| |st#0@@25| |env#0@@15|))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |949|
 :pattern ( (M0.__default.do ($LS $ly@@14) |stmts#0@@5| |st#0@@25| |env#0@@15|))
)))
(assert (forall (($ly@@15 T@U) (|expr#0@@5| T@U) (|st#0@@26| T@U) (|env#0@@16| T@U) ) (! (= (M0.__default.eval ($LS $ly@@15) |expr#0@@5| |st#0@@26| |env#0@@16|) (M0.__default.eval $ly@@15 |expr#0@@5| |st#0@@26| |env#0@@16|))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |969|
 :pattern ( (M0.__default.eval ($LS $ly@@15) |expr#0@@5| |st#0@@26| |env#0@@16|))
)))
(assert (forall ((M0.Tuple$A@@4 T@U) (M0.Tuple$B@@4 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |798|
 :pattern ( ($IsBox bx@@10 (Tclass.M0.Tuple M0.Tuple$A@@4 M0.Tuple$B@@4)))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (< (|Seq#Rank| |a#6#0#0|) (DtRank (|#M0.Program.Program| |a#6#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1130|
 :pattern ( (|#M0.Program.Program| |a#6#0#0|))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (DtRank |a#19#0#0|) (DtRank (|#M0.Statement.stmtReturn| |a#19#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1156|
 :pattern ( (|#M0.Statement.stmtReturn| |a#19#0#0|))
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
(assert (forall ((|a#99#0#0| T@U) ) (! (< (|Seq#Rank| |a#99#0#0|) (DtRank (|#M0.Literal.litString| |a#99#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1290|
 :pattern ( (|#M0.Literal.litString| |a#99#0#0|))
)))
(assert (forall ((|a#105#0#0| T@U) ) (! (< (DtRank |a#105#0#0|) (DtRank (|#M0.Literal.litPrimitive| |a#105#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1300|
 :pattern ( (|#M0.Literal.litPrimitive| |a#105#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) ) (! (< (|Seq#Rank| |a#124#0#0|) (DtRank (|#M0.Literal.litArray| |a#124#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1331|
 :pattern ( (|#M0.Literal.litArray| |a#124#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@2 t1 t2 (MapType0Store t0@@2 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((t0@@3 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 (MapType1Store t0@@3 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 10)
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@9 T@U) ($ly@@16 T@U) (|expr#0@@6| T@U) (|st#0@@27| T@U) (|env#0@@17| T@U) ) (!  (=> (and (or (|M0.__default.eval#canCall| |expr#0@@6| |st#0@@27| |env#0@@17|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@6| Tclass.M0.Expression) ($IsAlloc DatatypeTypeType |expr#0@@6| Tclass.M0.Expression $Heap@@9)) (and ($IsBox |st#0@@27| Tclass.M0.State) ($IsAllocBox |st#0@@27| Tclass.M0.State $Heap@@9))) (and ($IsBox |env#0@@17| Tclass.M0.Env) ($IsAllocBox |env#0@@17| Tclass.M0.Env $Heap@@9))) (M0.__default.ValidEnv |env#0@@17|)))) ($IsGoodHeap $Heap@@9)) ($IsAlloc DatatypeTypeType (M0.__default.eval $ly@@16 |expr#0@@6| |st#0@@27| |env#0@@17|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@9))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |972|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.__default.eval $ly@@16 |expr#0@@6| |st#0@@27| |env#0@@17|) (Tclass.M0.Tuple Tclass.M0.Expression Tclass.M0.State) $Heap@@9))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@6| T@U) (|st#0@@28| T@U) ) (!  (=> (or (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@28|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M0.Primitive) ($Is SeqType |args#0@@6| (TSeq Tclass.M0.Expression))) ($IsBox |st#0@@28| Tclass.M0.State)) (and (=> (M0.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 3))) (=> (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (=> (M0.Expression.exprLiteral_q |cmd#3|) (=> (M0.Literal.litString_q (M0.Expression.lit |cmd#3|)) (=> (M0.Expression.exprLiteral_q |deps#3|) (=> (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#3|)) (=> (M0.Expression.exprLiteral_q |exps#3|) (=> (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#3|)) (and (|M0.__default.DomSt#canCall| |st#0@@28|) (=> (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.__default.DomSt |st#0@@28|)) (|M0.__default.Pre#canCall| (M0.Literal.str (M0.Expression.lit |cmd#3|)) (M0.Literal.paths (M0.Expression.lit |deps#3|)) (M0.Literal.strs (M0.Expression.lit |exps#3|)) |st#0@@28|))))))))))))) (= (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@28|) (ite (M0.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M0.Expression.exprLiteral_q |cmd#2|) (M0.Literal.litString_q (M0.Expression.lit |cmd#2|))) (M0.Expression.exprLiteral_q |deps#2|)) (M0.Literal.litArrOfPaths_q (M0.Expression.lit |deps#2|))) (M0.Expression.exprLiteral_q |exps#2|)) (M0.Literal.litArrOfStrings_q (M0.Expression.lit |exps#2|))) (|Set#Subset| (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.__default.DomSt |st#0@@28|))) (M0.__default.Pre (M0.Literal.str (M0.Expression.lit |cmd#2|)) (M0.Literal.paths (M0.Expression.lit |deps#2|)) (M0.Literal.strs (M0.Expression.lit |exps#2|)) |st#0@@28|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |1022|
 :pattern ( (M0.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@28|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@17 T@U) (|context#0@@4| T@U) (|args#0@@7| T@U) (|stOrig#0@@4| T@U) (|env#0@@18| T@U) ) (!  (=> (or (|M0.__default.evalArgs#canCall| |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@18|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@4| Tclass.M0.Expression) ($Is SeqType |args#0@@7| (TSeq Tclass.M0.Expression))) ($IsBox |stOrig#0@@4| Tclass.M0.State)) ($IsBox |env#0@@18| Tclass.M0.Env)) (and (M0.__default.ValidEnv |env#0@@18|) (forall ((|arg#1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1| Tclass.M0.Expression) (=> (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)) (< (DtRank |arg#1|) (DtRank |context#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |1002|
 :pattern ( (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@7| |Seq#Empty|)) (and (|M0.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@18|) (let ((|r#0| (M0.__default.eval $ly@@17 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@18|)))
 (and (|M0.__default.evalArgs#canCall| |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@18|) (let ((|rr#0| (M0.__default.evalArgs $ly@@17 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@18|)))
 (and (and (M0.Tuple.Pair_q |r#0|) (M0.Tuple.Pair_q |rr#0|)) (and (M0.Tuple.Pair_q |r#0|) (M0.Tuple.Pair_q |rr#0|)))))))) (= (M0.__default.evalArgs ($LS $ly@@17) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@18|) (ite (|Seq#Equal| |args#0@@7| |Seq#Empty|) (|#M0.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#0@@0| (M0.__default.eval $ly@@17 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@18|)))
(let ((|rr#0@@0| (M0.__default.evalArgs $ly@@17 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@18|)))
(|#M0.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M0.Tuple.fst |r#0@@0|)) ($Unbox SeqType (M0.Tuple.fst |rr#0@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M0.Tuple.snd |r#0@@0|)) ($Unbox SetType (M0.Tuple.snd |rr#0@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |1004|
 :pattern ( (M0.__default.evalArgs ($LS $ly@@17) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@18|))
))))
(assert (forall ((s@@16 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@16 val@@4)) s@@16) (= (|Seq#Build_inv1| (|Seq#Build| s@@16 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@16 val@@4))
)))
(assert (forall ((M0.Tuple$A@@5 T@U) (M0.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) Tagclass.M0.Tuple) (= (TagFamily (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |795|
 :pattern ( (Tclass.M0.Tuple M0.Tuple$A@@5 M0.Tuple$B@@5))
)))
(assert (forall ((d@@52 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (M0.Literal.litNumber_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass.M0.Literal $h@@20))) ($IsAlloc intType (int_2_U (M0.Literal.num d@@52)) TInt $h@@20))
 :qid |unknown.0:0|
 :skolemid |1277|
 :pattern ( ($IsAlloc intType (int_2_U (M0.Literal.num d@@52)) TInt $h@@20))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@10 T@U) (|p#0@@5| T@U) (|st#0@@29| T@U) ) (!  (=> (and (or (|M0.__default.Oracle#canCall| |p#0@@5| |st#0@@29|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |p#0@@5| Tclass.M0.Path) ($IsAllocBox |p#0@@5| Tclass.M0.Path $Heap@@10)) (and ($IsBox |st#0@@29| Tclass.M0.State) ($IsAllocBox |st#0@@29| Tclass.M0.State $Heap@@10))))) ($IsGoodHeap $Heap@@10)) ($IsAllocBox (M0.__default.Oracle |p#0@@5| |st#0@@29|) Tclass.M0.Artifact $Heap@@10))
 :qid |CloudMakeParallelBuildsdfy.104:18|
 :skolemid |869|
 :pattern ( ($IsAllocBox (M0.__default.Oracle |p#0@@5| |st#0@@29|) Tclass.M0.Artifact $Heap@@10))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|st#0@@30| T@U) (|st'#0@@6| T@U) ) (!  (=> (and (or (|M0.__default.Union#canCall| |st#0@@30| |st'#0@@6|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |st#0@@30| Tclass.M0.State) ($IsAllocBox |st#0@@30| Tclass.M0.State $Heap@@11)) (and ($IsBox |st'#0@@6| Tclass.M0.State) ($IsAllocBox |st'#0@@6| Tclass.M0.State $Heap@@11))))) ($IsGoodHeap $Heap@@11)) ($IsAllocBox (M0.__default.Union |st#0@@30| |st'#0@@6|) Tclass.M0.State $Heap@@11))
 :qid |CloudMakeParallelBuildsdfy.23:18|
 :skolemid |722|
 :pattern ( ($IsAllocBox (M0.__default.Union |st#0@@30| |st'#0@@6|) Tclass.M0.State $Heap@@11))
))))
(assert (forall ((d@@53 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@53)) (DtRank d@@53))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@53)))
)))
(assert (forall ((s@@17 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14) (exists ((i@@10 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@10)) (< i@@10 (|Seq#Length| s@@17))) (= (|Seq#Index| s@@17 i@@10) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@17 i@@10))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14))
)))
(assert (forall ((bx@@11 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@7)))
)))
(assert (forall ((bx@@12 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@12 (TSeq t@@8)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@18 T@U) (|stmts#0@@6| T@U) (|st#0@@31| T@U) (|env#0@@19| T@U) ) (!  (=> (or (|M0.__default.do#canCall| (Lit SeqType |stmts#0@@6|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@6| (TSeq Tclass.M0.Statement)) ($IsBox |st#0@@31| Tclass.M0.State)) ($IsBox |env#0@@19| Tclass.M0.Env)) (and (M0.__default.Legal (Lit SeqType |stmts#0@@6|)) (M0.__default.ValidEnv (Lit BoxType |env#0@@19|)))))) (and (let ((|stmt#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@6|) (LitInt 0)))))
 (and (=> (M0.Statement.stmtVariable_q |stmt#2|) (and (|M0.__default.eval#canCall| (M0.Statement.expr |stmt#2|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)) (let ((|st'#2@@1| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#2|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)))))
(let ((|expr'#2| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#2|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|))))))
 (and (|M0.__default.Value#canCall| |expr'#2|) (=> (M0.__default.Value |expr'#2|) (and (|M0.__default.SetEnv#canCall| (M0.Statement.id |stmt#2|) |expr'#2| (Lit BoxType |env#0@@19|)) (let ((|env'#2| (M0.__default.SetEnv (M0.Statement.id |stmt#2|) |expr'#2| (Lit BoxType |env#0@@19|))))
 (and (|M0.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@6|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@6|) (LitInt 1))))))) (|M0.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@6|) (LitInt 1))) |st'#2@@1| |env'#2|))))))))))) (=> (not (M0.Statement.stmtVariable_q |stmt#2|)) (|M0.__default.eval#canCall| (M0.Statement.ret |stmt#2|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|))))) (= (M0.__default.do ($LS $ly@@18) (Lit SeqType |stmts#0@@6|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)) (let ((|stmt#2@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@6|) (LitInt 0)))))
(ite (M0.Statement.stmtVariable_q |stmt#2@@0|) (let ((|st'#2@@2| (M0.Tuple.snd (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#2@@0|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)))))
(let ((|expr'#2@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $LZ) (M0.Statement.expr |stmt#2@@0|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|))))))
(ite (M0.__default.Value |expr'#2@@0|) (let ((|env'#2@@0| (M0.__default.SetEnv (M0.Statement.id |stmt#2@@0|) |expr'#2@@0| (Lit BoxType |env#0@@19|))))
(ite (M0.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@6|) (LitInt 1)))) (M0.__default.do ($LS $ly@@18) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@6|) (LitInt 1))) |st'#2@@2| |env'#2@@0|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType |expr'#2@@0|) |st'#2@@2|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) (Lit BoxType |st#0@@31|))))) (M0.__default.eval ($LS $LZ) (M0.Statement.ret |stmt#2@@0|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |956|
 :pattern ( (M0.__default.do ($LS $ly@@18) (Lit SeqType |stmts#0@@6|) (Lit BoxType |st#0@@31|) (Lit BoxType |env#0@@19|)))
))))
(assert (forall ((d@@54 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) ($Is DatatypeTypeType d@@54 Tclass.M0.Primitive)) ($IsAlloc DatatypeTypeType d@@54 Tclass.M0.Primitive $h@@21))
 :qid |unknown.0:0|
 :skolemid |1349|
 :pattern ( ($IsAlloc DatatypeTypeType d@@54 Tclass.M0.Primitive $h@@21))
)))
(assert (forall ((d@@55 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) ($Is DatatypeTypeType d@@55 Tclass.M0.Reason)) ($IsAlloc DatatypeTypeType d@@55 Tclass.M0.Reason $h@@22))
 :qid |unknown.0:0|
 :skolemid |1359|
 :pattern ( ($IsAlloc DatatypeTypeType d@@55 Tclass.M0.Reason $h@@22))
)))
(assert (= (Tag Tclass.M0.Expression) Tagclass.M0.Expression))
(assert (= (TagFamily Tclass.M0.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M0.Program) Tagclass.M0.Program))
(assert (= (TagFamily Tclass.M0.Program) tytagFamily$Program))
(assert (= (Tag Tclass.M0.Statement) Tagclass.M0.Statement))
(assert (= (TagFamily Tclass.M0.Statement) tytagFamily$Statement))
(assert (= (Tag Tclass.M0.Primitive) Tagclass.M0.Primitive))
(assert (= (TagFamily Tclass.M0.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M0.Literal) Tagclass.M0.Literal))
(assert (= (TagFamily Tclass.M0.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M0.Reason) Tagclass.M0.Reason))
(assert (= (TagFamily Tclass.M0.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@7| T@U) ) (!  (=> (or (|M0.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@7|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@7| Tclass.M0.Expression))) (= (M0.__default.Value (Lit DatatypeTypeType |expr#0@@7|)) (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@7|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |937|
 :pattern ( (M0.__default.Value (Lit DatatypeTypeType |expr#0@@7|)))
))))
(assert (forall ((s@@18 T@U) (n@@8 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k)) (< k (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Drop| s@@18 n@@8) (- k n@@8)) (|Seq#Index| s@@18 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@18 k) (|Seq#Drop| s@@18 n@@8))
)))
(assert (= |#M0.Literal.litTrue| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))
(assert (= |#M0.Literal.litFalse| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))
(assert (= |#M0.Literal.litUndefined| (Lit DatatypeTypeType |#M0.Literal.litUndefined|)))
(assert (= |#M0.Literal.litNull| (Lit DatatypeTypeType |#M0.Literal.litNull|)))
(assert (= |#M0.Primitive.primCreatePath| (Lit DatatypeTypeType |#M0.Primitive.primCreatePath|)))
(assert (= |#M0.Primitive.primExec| (Lit DatatypeTypeType |#M0.Primitive.primExec|)))
(assert (= |#M0.Reason.rCompatibility| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))
(assert (= |#M0.Reason.rValidity| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))
(assert (forall ((|a#95#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal) ($Is SeqType |a#95#0#0@@0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1284|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litString| |a#95#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@56 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (M0.Literal.litString_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.M0.Literal $h@@23))) ($IsAlloc SeqType (M0.Literal.str d@@56) (TSeq TChar) $h@@23))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( ($IsAlloc SeqType (M0.Literal.str d@@56) (TSeq TChar) $h@@23))
)))
(assert (forall ((|a#111#0#0| T@U) (d@@57 T@U) ) (!  (=> (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@57)) (< (DtRank d@@57) (DtRank (|#M0.Literal.litArrOfPaths| |a#111#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1310|
 :pattern ( (|Set#IsMember| |a#111#0#0| ($Box DatatypeTypeType d@@57)) (|#M0.Literal.litArrOfPaths| |a#111#0#0|))
)))
(assert (forall ((|a#117#0#0| T@U) (d@@58 T@U) ) (!  (=> (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@58)) (< (DtRank d@@58) (DtRank (|#M0.Literal.litArrOfStrings| |a#117#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1320|
 :pattern ( (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@58)) (|#M0.Literal.litArrOfStrings| |a#117#0#0|))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prog#0@@3| T@U) (|st#0@@32| T@U) ) (!  (=> (or (|M0.__default.build#canCall| (Lit DatatypeTypeType |prog#0@@3|) (Lit BoxType |st#0@@32|)) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@3| Tclass.M0.Program) ($IsBox |st#0@@32| Tclass.M0.State)) (U_2_bool (Lit boolType (bool_2_U (M0.__default.Legal (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@3|)))))))))) (and (and (and (M0.Program.Program_q (Lit DatatypeTypeType |prog#0@@3|)) |M0.__default.EmptyEnv#canCall|) (|M0.__default.do#canCall| (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@3|))) (Lit BoxType |st#0@@32|) M0.__default.EmptyEnv)) (= (M0.__default.build (Lit DatatypeTypeType |prog#0@@3|) (Lit BoxType |st#0@@32|)) (M0.__default.do ($LS $LZ) (Lit SeqType (M0.Program.stmts (Lit DatatypeTypeType |prog#0@@3|))) (Lit BoxType |st#0@@32|) M0.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |944|
 :pattern ( (M0.__default.build (Lit DatatypeTypeType |prog#0@@3|) (Lit BoxType |st#0@@32|)))
))))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (! (= (|Set#Equal| a@@28 b@@25) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@28 o@@5) (|Set#IsMember| b@@25 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@28 o@@5))
 :pattern ( (|Set#IsMember| b@@25 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@28 b@@25))
)))
(assert (forall ((s@@19 T@U) (m@@4 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@9)) (<= (+ m@@4 n@@9) (|Seq#Length| s@@19))) (= (|Seq#Drop| (|Seq#Drop| s@@19 m@@4) n@@9) (|Seq#Drop| s@@19 (+ m@@4 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@19 m@@4) n@@9))
)))
(assert (forall ((d@@59 T@U) (M0.Tuple$A@@6 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (M0.Tuple.Pair_q d@@59) (exists ((M0.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@59 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@24)
 :qid |unknown.0:0|
 :skolemid |1371|
 :pattern ( ($IsAlloc DatatypeTypeType d@@59 (Tclass.M0.Tuple M0.Tuple$A@@6 M0.Tuple$B@@6) $h@@24))
)))) ($IsAllocBox (M0.Tuple.fst d@@59) M0.Tuple$A@@6 $h@@24))
 :qid |unknown.0:0|
 :skolemid |1372|
 :pattern ( ($IsAllocBox (M0.Tuple.fst d@@59) M0.Tuple$A@@6 $h@@24))
)))
(assert (forall ((d@@60 T@U) (M0.Tuple$B@@7 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (M0.Tuple.Pair_q d@@60) (exists ((M0.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@60 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@25)
 :qid |unknown.0:0|
 :skolemid |1373|
 :pattern ( ($IsAlloc DatatypeTypeType d@@60 (Tclass.M0.Tuple M0.Tuple$A@@7 M0.Tuple$B@@7) $h@@25))
)))) ($IsAllocBox (M0.Tuple.snd d@@60) M0.Tuple$B@@7 $h@@25))
 :qid |unknown.0:0|
 :skolemid |1374|
 :pattern ( ($IsAllocBox (M0.Tuple.snd d@@60) M0.Tuple$B@@7 $h@@25))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@19 T@U) ($Heap@@12 T@U) (|sts#0@@4| T@U) ) (!  (=> (or (|M0.__default.Combine#canCall| (Lit SetType |sts#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@12) ($Is SetType |sts#0@@4| (TSet Tclass.M0.State))) (not (|Set#Equal| |sts#0@@4| |Set#Empty|))))) (and (and (|$let#0$canCall| (Lit SetType |sts#0@@4|)) (=> (not (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| (|$let#0_st| (Lit SetType |sts#0@@4|))))) (and (|M0.__default.Combine#canCall| (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| (|$let#0_st| (Lit SetType |sts#0@@4|))))) (|M0.__default.Union#canCall| (|$let#0_st| (Lit SetType |sts#0@@4|)) (M0.__default.Combine ($LS $ly@@19) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| (|$let#0_st| (Lit SetType |sts#0@@4|))))))))) (= (M0.__default.Combine ($LS $ly@@19) (Lit SetType |sts#0@@4|)) (let ((|st#1@@1| (|$let#0_st| (Lit SetType |sts#0@@4|))))
(ite (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| |st#1@@1|)) |st#1@@1| (M0.__default.Union |st#1@@1| (M0.__default.Combine ($LS $ly@@19) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| |st#1@@1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :weight 3
 :skolemid |748|
 :pattern ( (M0.__default.Combine ($LS $ly@@19) (Lit SetType |sts#0@@4|)) ($IsGoodHeap $Heap@@12))
))))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((d@@61 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (M0.Statement.stmtVariable_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.M0.Statement $h@@26))) ($IsAllocBox (M0.Statement.id d@@61) Tclass.M0.Identifier $h@@26))
 :qid |unknown.0:0|
 :skolemid |1141|
 :pattern ( ($IsAllocBox (M0.Statement.id d@@61) Tclass.M0.Identifier $h@@26))
)))
(assert (forall ((d@@62 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (M0.Statement.stmtVariable_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.M0.Statement $h@@27))) ($IsAlloc DatatypeTypeType (M0.Statement.expr d@@62) Tclass.M0.Expression $h@@27))
 :qid |unknown.0:0|
 :skolemid |1142|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Statement.expr d@@62) Tclass.M0.Expression $h@@27))
)))
(assert (forall ((d@@63 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (M0.Statement.stmtReturn_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.M0.Statement $h@@28))) ($IsAlloc DatatypeTypeType (M0.Statement.ret d@@63) Tclass.M0.Expression $h@@28))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Statement.ret d@@63) Tclass.M0.Expression $h@@28))
)))
(assert (forall ((d@@64 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M0.Expression.exprLiteral_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.M0.Expression $h@@29))) ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@64) Tclass.M0.Literal $h@@29))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.lit d@@64) Tclass.M0.Literal $h@@29))
)))
(assert (forall ((d@@65 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M0.Expression.exprIdentifier_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.M0.Expression $h@@30))) ($IsAllocBox (M0.Expression.id d@@65) Tclass.M0.Identifier $h@@30))
 :qid |unknown.0:0|
 :skolemid |1179|
 :pattern ( ($IsAllocBox (M0.Expression.id d@@65) Tclass.M0.Identifier $h@@30))
)))
(assert (forall ((d@@66 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M0.Expression.exprIf_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.M0.Expression $h@@31))) ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@66) Tclass.M0.Expression $h@@31))
 :qid |unknown.0:0|
 :skolemid |1188|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.cond d@@66) Tclass.M0.Expression $h@@31))
)))
(assert (forall ((d@@67 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M0.Expression.exprIf_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.M0.Expression $h@@32))) ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@67) Tclass.M0.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifTrue d@@67) Tclass.M0.Expression $h@@32))
)))
(assert (forall ((d@@68 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M0.Expression.exprIf_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.M0.Expression $h@@33))) ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@68) Tclass.M0.Expression $h@@33))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.ifFalse d@@68) Tclass.M0.Expression $h@@33))
)))
(assert (forall ((d@@69 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M0.Expression.exprAnd_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass.M0.Expression $h@@34))) ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@69) Tclass.M0.Expression $h@@34))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj0 d@@69) Tclass.M0.Expression $h@@34))
)))
(assert (forall ((d@@70 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M0.Expression.exprAnd_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass.M0.Expression $h@@35))) ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@70) Tclass.M0.Expression $h@@35))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.conj1 d@@70) Tclass.M0.Expression $h@@35))
)))
(assert (forall ((d@@71 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M0.Expression.exprOr_q d@@71) ($IsAlloc DatatypeTypeType d@@71 Tclass.M0.Expression $h@@36))) ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@71) Tclass.M0.Expression $h@@36))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj0 d@@71) Tclass.M0.Expression $h@@36))
)))
(assert (forall ((d@@72 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M0.Expression.exprOr_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass.M0.Expression $h@@37))) ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@72) Tclass.M0.Expression $h@@37))
 :qid |unknown.0:0|
 :skolemid |1218|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.disj1 d@@72) Tclass.M0.Expression $h@@37))
)))
(assert (forall ((d@@73 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M0.Expression.exprInvocation_q d@@73) ($IsAlloc DatatypeTypeType d@@73 Tclass.M0.Expression $h@@38))) ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@73) Tclass.M0.Expression $h@@38))
 :qid |unknown.0:0|
 :skolemid |1230|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.fun d@@73) Tclass.M0.Expression $h@@38))
)))
(assert (forall ((d@@74 T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (M0.Expression.exprError_q d@@74) ($IsAlloc DatatypeTypeType d@@74 Tclass.M0.Expression $h@@39))) ($IsAlloc DatatypeTypeType (M0.Expression.r d@@74) Tclass.M0.Reason $h@@39))
 :qid |unknown.0:0|
 :skolemid |1245|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Expression.r d@@74) Tclass.M0.Reason $h@@39))
)))
(assert (forall ((d@@75 T@U) ($h@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (M0.Literal.litPrimitive_q d@@75) ($IsAlloc DatatypeTypeType d@@75 Tclass.M0.Literal $h@@40))) ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@75) Tclass.M0.Primitive $h@@40))
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Literal.prim d@@75) Tclass.M0.Primitive $h@@40))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (|#M0.Statement.stmtVariable| (Lit BoxType |a#10#0#0|) (Lit DatatypeTypeType |a#10#1#0|)) (Lit DatatypeTypeType (|#M0.Statement.stmtVariable| |a#10#0#0| |a#10#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |1143|
 :pattern ( (|#M0.Statement.stmtVariable| (Lit BoxType |a#10#0#0|) (Lit DatatypeTypeType |a#10#1#0|)))
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
(assert (forall ((|a#144#0#0| T@U) (|a#144#1#0| T@U) ) (! (= (|#M0.Tuple.Pair| (Lit BoxType |a#144#0#0|) (Lit BoxType |a#144#1#0|)) (Lit DatatypeTypeType (|#M0.Tuple.Pair| |a#144#0#0| |a#144#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |1375|
 :pattern ( (|#M0.Tuple.Pair| (Lit BoxType |a#144#0#0|) (Lit BoxType |a#144#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#M0.Program.Program| (Lit SeqType |a#3#0#0|)) (Lit DatatypeTypeType (|#M0.Program.Program| |a#3#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |1127|
 :pattern ( (|#M0.Program.Program| (Lit SeqType |a#3#0#0|)))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (|#M0.Statement.stmtReturn| (Lit DatatypeTypeType |a#17#0#0|)) (Lit DatatypeTypeType (|#M0.Statement.stmtReturn| |a#17#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |1154|
 :pattern ( (|#M0.Statement.stmtReturn| (Lit DatatypeTypeType |a#17#0#0|)))
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
(assert (forall ((|a#91#0#0| Int) ) (! (= (|#M0.Literal.litNumber| (LitInt |a#91#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litNumber| |a#91#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |1278|
 :pattern ( (|#M0.Literal.litNumber| (LitInt |a#91#0#0|)))
)))
(assert (forall ((|a#96#0#0| T@U) ) (! (= (|#M0.Literal.litString| (Lit SeqType |a#96#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litString| |a#96#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |1287|
 :pattern ( (|#M0.Literal.litString| (Lit SeqType |a#96#0#0|)))
)))
(assert (forall ((|a#103#0#0| T@U) ) (! (= (|#M0.Literal.litPrimitive| (Lit DatatypeTypeType |a#103#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litPrimitive| |a#103#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |1298|
 :pattern ( (|#M0.Literal.litPrimitive| (Lit DatatypeTypeType |a#103#0#0|)))
)))
(assert (forall ((|a#109#0#0| T@U) ) (! (= (|#M0.Literal.litArrOfPaths| (Lit SetType |a#109#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArrOfPaths| |a#109#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |1308|
 :pattern ( (|#M0.Literal.litArrOfPaths| (Lit SetType |a#109#0#0|)))
)))
(assert (forall ((|a#115#0#0| T@U) ) (! (= (|#M0.Literal.litArrOfStrings| (Lit SetType |a#115#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#115#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1318|
 :pattern ( (|#M0.Literal.litArrOfStrings| (Lit SetType |a#115#0#0|)))
)))
(assert (forall ((|a#121#0#0| T@U) ) (! (= (|#M0.Literal.litArray| (Lit SeqType |a#121#0#0|)) (Lit DatatypeTypeType (|#M0.Literal.litArray| |a#121#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |1328|
 :pattern ( (|#M0.Literal.litArray| (Lit SeqType |a#121#0#0|)))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((d@@76 T@U) ($h@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (M0.Literal.litArrOfStrings_q d@@76) ($IsAlloc DatatypeTypeType d@@76 Tclass.M0.Literal $h@@41))) ($IsAlloc SetType (M0.Literal.strs d@@76) (TSet (TSeq TChar)) $h@@41))
 :qid |unknown.0:0|
 :skolemid |1317|
 :pattern ( ($IsAlloc SetType (M0.Literal.strs d@@76) (TSet (TSeq TChar)) $h@@41))
)))
(assert (forall ((s@@20 T@U) ) (!  (=> (= (|Seq#Length| s@@20) 0) (= s@@20 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@20))
)))
(assert (forall ((s@@21 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@21 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@21 n@@11))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@20 T@U) (|expr#0@@8| T@U) (|st#0@@33| T@U) (|env#0@@20| T@U) ) (!  (=> (or (|M0.__default.eval#canCall| (Lit DatatypeTypeType |expr#0@@8|) |st#0@@33| |env#0@@20|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@8| Tclass.M0.Expression) ($IsBox |st#0@@33| Tclass.M0.State)) ($IsBox |env#0@@20| Tclass.M0.Env)) (M0.__default.ValidEnv |env#0@@20|)))) (and (and (|M0.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@8|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.__default.Value (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|))))) (|M0.__default.GetEnv#canCall| (Lit BoxType (M0.Expression.id (Lit DatatypeTypeType |expr#0@@8|))) |env#0@@20|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|) (let ((|st'#4| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|cond'#1| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
 (and (and (=> (M0.Expression.exprLiteral_q |cond'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#1|))) (=> (and (M0.Expression.exprLiteral_q |cond'#1|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#1|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@8|))) |st'#4| |env#0@@20|))) (=> (not (and (M0.Expression.exprLiteral_q |cond'#1|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#1|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |cond'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |cond'#1|))) (=> (and (M0.Expression.exprLiteral_q |cond'#1|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#1|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@8|))) |st'#4| |env#0@@20|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|) (let ((|st'#5| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|conj0'#1| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
 (and (and (=> (M0.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#1|))) (=> (and (M0.Expression.exprLiteral_q |conj0'#1|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#1|) |#M0.Literal.litTrue|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.conj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#5| |env#0@@20|))) (=> (not (and (M0.Expression.exprLiteral_q |conj0'#1|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#1|) |#M0.Literal.litTrue|))) (=> (M0.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |conj0'#1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|) (let ((|st'#6| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|disj0'#1| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
 (and (=> (M0.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#1|))) (=> (not (and (M0.Expression.exprLiteral_q |disj0'#1|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#1|) |#M0.Literal.litTrue|))) (and (=> (M0.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M0.Literal| (M0.Expression.lit |disj0'#1|))) (=> (and (M0.Expression.exprLiteral_q |disj0'#1|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#1|) |#M0.Literal.litFalse|)) (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.disj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#6| |env#0@@20|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M0.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M0.__default.eval#canCall| (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|) (let ((|st'#7| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|fun'#1| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
 (and (|M0.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|) (let ((|sts'#1| ($Unbox SetType (M0.Tuple.snd (M0.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(let ((|args'#1| ($Unbox SeqType (M0.Tuple.fst (M0.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(let ((|sts''#1| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#7|) |sts'#1|)))
 (and (|M0.__default.Compatible#canCall| |sts''#1|) (=> (M0.__default.Compatible |sts''#1|) (and (|M0.__default.Combine#canCall| |sts''#1|) (let ((|stCombined#1| (M0.__default.Combine ($LS $LZ) |sts''#1|)))
 (=> (and (M0.Expression.exprLiteral_q |fun'#1|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#1|))) (=> (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#1|))) (and (and (|M0.__default.Arity#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (|M0.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#1| |stCombined#1|))) (=> (and (= (|Seq#Length| |args'#1|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#1| |stCombined#1|)) (and (|M0.__default.exec#canCall| (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|) (let ((|ps#1| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|)))
 (and (M0.Tuple.Pair_q |ps#1|) (M0.Tuple.Pair_q |ps#1|)))))))))))))))))))))))))))))) (= (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) |st#0@@33| |env#0@@20|) (ite (M0.__default.Value (Lit DatatypeTypeType |expr#0@@8|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@8|)) |st#0@@33|) (ite (M0.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (M0.__default.GetEnv (Lit BoxType (M0.Expression.id (Lit DatatypeTypeType |expr#0@@8|))) |env#0@@20|)) |st#0@@33|) (ite (M0.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#4@@0| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|cond'#1@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(ite  (and (M0.Expression.exprLiteral_q |cond'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#1@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@8|))) |st'#4@@0| |env#0@@20|) (ite  (and (M0.Expression.exprLiteral_q |cond'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |cond'#1@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@8|))) |st'#4@@0| |env#0@@20|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|))))) (ite (M0.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#5@@0| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|conj0'#1@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(ite  (and (M0.Expression.exprLiteral_q |conj0'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#1@@0|) |#M0.Literal.litTrue|)) (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.conj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#5@@0| |env#0@@20|) (ite  (and (M0.Expression.exprLiteral_q |conj0'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |conj0'#1@@0|) |#M0.Literal.litFalse|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litFalse|)))) |st'#5@@0|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|))))) (ite (M0.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#6@@0| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|disj0'#1@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(ite  (and (M0.Expression.exprLiteral_q |disj0'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#1@@0|) |#M0.Literal.litTrue|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprLiteral| (Lit DatatypeTypeType |#M0.Literal.litTrue|)))) |st'#6@@0|) (ite  (and (M0.Expression.exprLiteral_q |disj0'#1@@0|) (|M0.Literal#Equal| (M0.Expression.lit |disj0'#1@@0|) |#M0.Literal.litFalse|)) (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.disj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#6@@0| |env#0@@20|) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|))))) (ite (M0.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#7@@0| (M0.Tuple.snd (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|))))
(let ((|fun'#1@@0| ($Unbox DatatypeTypeType (M0.Tuple.fst (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M0.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(let ((|sts'#1@@0| ($Unbox SetType (M0.Tuple.snd (M0.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(let ((|args'#1@@0| ($Unbox SeqType (M0.Tuple.fst (M0.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M0.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@33| |env#0@@20|)))))
(let ((|sts''#1@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| |st'#7@@0|) |sts'#1@@0|)))
(ite  (not (M0.__default.Compatible |sts''#1@@0|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rCompatibility|)))) |st#0@@33|) (let ((|stCombined#1@@0| (M0.__default.Combine ($LS $LZ) |sts''#1@@0|)))
(ite  (and (M0.Expression.exprLiteral_q |fun'#1@@0|) (M0.Literal.litPrimitive_q (M0.Expression.lit |fun'#1@@0|))) (ite (M0.Primitive.primExec_q (M0.Literal.prim (M0.Expression.lit |fun'#1@@0|))) (ite  (and (= (|Seq#Length| |args'#1@@0|) (LitInt (M0.__default.Arity (Lit DatatypeTypeType |#M0.Primitive.primExec|)))) (M0.__default.ValidArgs (Lit DatatypeTypeType |#M0.Primitive.primExec|) |args'#1@@0| |stCombined#1@@0|)) (let ((|ps#1@@0| (M0.__default.exec (M0.Literal.str (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 0))))) (M0.Literal.paths (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 1))))) (M0.Literal.strs (M0.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 2))))) |stCombined#1@@0|)))
(|#M0.Tuple.Pair| ($Box DatatypeTypeType (|#M0.Expression.exprLiteral| (|#M0.Literal.litArrOfPaths| ($Unbox SetType (M0.Tuple.fst |ps#1@@0|))))) (M0.Tuple.snd |ps#1@@0|))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|)) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|))))))))) (|#M0.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M0.Expression.exprError| (Lit DatatypeTypeType |#M0.Reason.rValidity|)))) |st#0@@33|))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |975|
 :pattern ( (M0.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@8|) |st#0@@33| |env#0@@20|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@21 T@U) (|sts#0@@5| T@U) ) (!  (=> (or (|M0.__default.Combine#canCall| |sts#0@@5|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |sts#0@@5| (TSet Tclass.M0.State)) (not (|Set#Equal| |sts#0@@5| |Set#Empty|))))) ($IsBox (M0.__default.Combine $ly@@21 |sts#0@@5|) Tclass.M0.State))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |743|
 :pattern ( (M0.__default.Combine $ly@@21 |sts#0@@5|))
))))
(assert (forall ((|a#114#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal) ($Is SetType |a#114#0#0@@0| (TSet (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |1315|
 :pattern ( ($Is DatatypeTypeType (|#M0.Literal.litArrOfStrings| |a#114#0#0@@0|) Tclass.M0.Literal))
)))
(assert (forall ((d@@77 T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (M0.Program.Program_q d@@77) ($IsAlloc DatatypeTypeType d@@77 Tclass.M0.Program $h@@42))) ($IsAlloc SeqType (M0.Program.stmts d@@77) (TSeq Tclass.M0.Statement) $h@@42))
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( ($IsAlloc SeqType (M0.Program.stmts d@@77) (TSeq Tclass.M0.Statement) $h@@42))
)))
(assert (forall ((d@@78 T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (M0.Expression.exprInvocation_q d@@78) ($IsAlloc DatatypeTypeType d@@78 Tclass.M0.Expression $h@@43))) ($IsAlloc SeqType (M0.Expression.args d@@78) (TSeq Tclass.M0.Expression) $h@@43))
 :qid |unknown.0:0|
 :skolemid |1231|
 :pattern ( ($IsAlloc SeqType (M0.Expression.args d@@78) (TSeq Tclass.M0.Expression) $h@@43))
)))
(assert (forall ((d@@79 T@U) ($h@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (M0.Literal.litArrOfPaths_q d@@79) ($IsAlloc DatatypeTypeType d@@79 Tclass.M0.Literal $h@@44))) ($IsAlloc SetType (M0.Literal.paths d@@79) (TSet Tclass.M0.Path) $h@@44))
 :qid |unknown.0:0|
 :skolemid |1307|
 :pattern ( ($IsAlloc SetType (M0.Literal.paths d@@79) (TSet Tclass.M0.Path) $h@@44))
)))
(assert (forall ((d@@80 T@U) ($h@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@45) (and (M0.Literal.litArray_q d@@80) ($IsAlloc DatatypeTypeType d@@80 Tclass.M0.Literal $h@@45))) ($IsAlloc SeqType (M0.Literal.arr d@@80) (TSeq Tclass.M0.Expression) $h@@45))
 :qid |unknown.0:0|
 :skolemid |1327|
 :pattern ( ($IsAlloc SeqType (M0.Literal.arr d@@80) (TSeq Tclass.M0.Expression) $h@@45))
)))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@4))
)))
(assert (forall ((v@@11 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@4)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@11) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@11 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@4)))
)))
(assert (forall ((s@@22 T@U) (i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| s@@22))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@12))) (|Seq#Rank| s@@22)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@12))))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@12 TInt))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is charType v@@13 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@13 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |prog#0@@4| () T@U)
(declare-fun |##stmts#1@0| () T@U)
(declare-fun $Heap@@13 () T@U)
(declare-fun |st#0@@34| () T@U)
(declare-fun |##env#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |##stmts#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.__default.build)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (=> (M0.Program.Program_q |prog#0@@4|) (=> (and (= |##stmts#1@0| (M0.Program.stmts |prog#0@@4|)) ($IsAlloc SeqType |##stmts#1@0| (TSeq Tclass.M0.Statement) $Heap@@13)) (=> (and (and ($IsAllocBox |st#0@@34| Tclass.M0.State $Heap@@13) |M0.__default.EmptyEnv#canCall|) (and (= |##env#0@0| M0.__default.EmptyEnv) ($IsAllocBox |##env#0@0| Tclass.M0.Env $Heap@@13))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|M0.__default.Legal#canCall| |##stmts#1@0|) (or (M0.__default.Legal |##stmts#1@0|) (or (not (= (|Seq#Length| |##stmts#1@0|) 0)) (not true))))) (=> (= (ControlFlow 0 3) (- 0 2)) (M0.__default.ValidEnv |##env#0@0|))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@13 alloc false)) (M0.Program.Program_q |prog#0@@4|)) (=> (and (and (= |##stmts#0@0| (M0.Program.stmts |prog#0@@4|)) ($IsAlloc SeqType |##stmts#0@0| (TSeq Tclass.M0.Statement) $Heap@@13)) (and (|M0.__default.Legal#canCall| (M0.Program.stmts |prog#0@@4|)) (M0.__default.Legal (M0.Program.stmts |prog#0@@4|)))) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@13) ($IsHeapAnchor $Heap@@13)) (=> (and (and ($Is DatatypeTypeType |prog#0@@4| Tclass.M0.Program) ($IsBox |st#0@@34| Tclass.M0.State)) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
