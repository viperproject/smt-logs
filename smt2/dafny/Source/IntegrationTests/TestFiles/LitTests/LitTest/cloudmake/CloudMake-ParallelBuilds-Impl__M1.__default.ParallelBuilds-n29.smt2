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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.M1.State () T@U)
(declare-fun Tagclass.M1.Expression () T@U)
(declare-fun Tagclass.M1.Primitive () T@U)
(declare-fun Tagclass.M1.Program () T@U)
(declare-fun Tagclass.M1.Tuple () T@U)
(declare-fun Tagclass.M1.Statement () T@U)
(declare-fun |##M1.State.StateCons| () T@U)
(declare-fun |##M1.Program.Program| () T@U)
(declare-fun |##M1.Statement.stmtVariable| () T@U)
(declare-fun |##M1.Statement.stmtReturn| () T@U)
(declare-fun |##M1.Expression.exprLiteral| () T@U)
(declare-fun Tagclass.M1.Literal () T@U)
(declare-fun |##M1.Expression.exprIdentifier| () T@U)
(declare-fun |##M1.Expression.exprIf| () T@U)
(declare-fun |##M1.Expression.exprAnd| () T@U)
(declare-fun |##M1.Expression.exprOr| () T@U)
(declare-fun |##M1.Expression.exprInvocation| () T@U)
(declare-fun |##M1.Expression.exprError| () T@U)
(declare-fun Tagclass.M1.Reason () T@U)
(declare-fun |##M1.Literal.litTrue| () T@U)
(declare-fun |##M1.Literal.litFalse| () T@U)
(declare-fun |##M1.Literal.litUndefined| () T@U)
(declare-fun |##M1.Literal.litNull| () T@U)
(declare-fun |##M1.Literal.litNumber| () T@U)
(declare-fun |##M1.Literal.litString| () T@U)
(declare-fun |##M1.Literal.litPrimitive| () T@U)
(declare-fun |##M1.Literal.litArrOfPaths| () T@U)
(declare-fun |##M1.Literal.litArrOfStrings| () T@U)
(declare-fun |##M1.Literal.litArray| () T@U)
(declare-fun |##M1.Primitive.primCreatePath| () T@U)
(declare-fun |##M1.Primitive.primExec| () T@U)
(declare-fun |##M1.Reason.rCompatibility| () T@U)
(declare-fun |##M1.Reason.rValidity| () T@U)
(declare-fun |##M1.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Primitive () T@U)
(declare-fun tytagFamily$Program () T@U)
(declare-fun tytagFamily$Tuple () T@U)
(declare-fun tytagFamily$Statement () T@U)
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
(declare-fun M1.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M1.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M1.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun M1.__default.Combine (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M1.__default.Combine#canCall| (T@U) Bool)
(declare-fun Tclass.M1.State () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$let#0_st| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |M1.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun M1.__default.Union (T@U T@U) T@U)
(declare-fun M1.__default.do (T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |M1.__default.do#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.M1.Statement () T@U)
(declare-fun Tclass.M1.Env () T@U)
(declare-fun M1.__default.Legal (T@U) Bool)
(declare-fun M1.__default.ValidEnv (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun M1.Statement.stmtVariable_q (T@U) Bool)
(declare-fun |M1.__default.eval#canCall| (T@U T@U T@U) Bool)
(declare-fun M1.Statement.expr (T@U) T@U)
(declare-fun M1.Tuple.snd (T@U) T@U)
(declare-fun M1.__default.eval (T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun M1.Tuple.fst (T@U) T@U)
(declare-fun |M1.__default.Value#canCall| (T@U) Bool)
(declare-fun M1.__default.Value (T@U) Bool)
(declare-fun |M1.__default.SetEnv#canCall| (T@U T@U T@U) Bool)
(declare-fun M1.Statement.id (T@U) T@U)
(declare-fun M1.__default.SetEnv (T@U T@U T@U) T@U)
(declare-fun |M1.__default.Legal#canCall| (T@U) Bool)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun M1.Statement.ret (T@U) T@U)
(declare-fun |#M1.Tuple.Pair| (T@U T@U) T@U)
(declare-fun |#M1.Expression.exprError| (T@U) T@U)
(declare-fun |#M1.Reason.rValidity| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M1.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M1.Artifact () T@U)
(declare-fun M1.State.StateCons_q (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun M1.__default.Arity (T@U) Int)
(declare-fun |M1.__default.Arity#canCall| (T@U) Bool)
(declare-fun Tclass.M1.Primitive () T@U)
(declare-fun M1.Primitive.primCreatePath_q (T@U) Bool)
(declare-fun M1.__default.evalArgs (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.M1.Tuple (T@U T@U) T@U)
(declare-fun Tclass.M1.Expression () T@U)
(declare-fun |M1.__default.evalArgs#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun |#M1.Statement.stmtVariable| (T@U T@U) T@U)
(declare-fun Tclass.M1.Identifier () T@U)
(declare-fun |#M1.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun |#M1.Expression.exprOr| (T@U T@U) T@U)
(declare-fun M1.__default.ValidArgs (T@U T@U T@U) Bool)
(declare-fun |M1.__default.ValidArgs#canCall| (T@U T@U T@U) Bool)
(declare-fun M1.Primitive.primExec_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun M1.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M1.Literal.litString_q (T@U) Bool)
(declare-fun M1.Expression.lit (T@U) T@U)
(declare-fun M1.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun M1.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun |M1.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M1.Literal.paths (T@U) T@U)
(declare-fun M1.__default.DomSt (T@U) T@U)
(declare-fun |M1.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M1.Literal.str (T@U) T@U)
(declare-fun M1.Literal.strs (T@U) T@U)
(declare-fun M1.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |#M1.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun M1.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M1.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M1.__default.GetSt (T@U T@U) T@U)
(declare-fun |M1.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |#M1.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun |$IsA#M1.State| (T@U) Bool)
(declare-fun |$IsA#M1.Program| (T@U) Bool)
(declare-fun M1.Program.Program_q (T@U) Bool)
(declare-fun |$IsA#M1.Tuple| (T@U) Bool)
(declare-fun M1.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |M1.Literal#Equal| (T@U T@U) Bool)
(declare-fun M1.Literal.litNumber_q (T@U) Bool)
(declare-fun M1.Literal.num (T@U) Int)
(declare-fun |#M1.Program.Program| (T@U) T@U)
(declare-fun |#M1.Literal.litString| (T@U) T@U)
(declare-fun |#M1.Literal.litArray| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M1.Expression.cond (T@U) T@U)
(declare-fun M1.Expression.ifTrue (T@U) T@U)
(declare-fun M1.Expression.ifFalse (T@U) T@U)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M1.__default.Oracle (T@U T@U) T@U)
(declare-fun |M1.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun |M1.Tuple#Equal| (T@U T@U) Bool)
(declare-fun |#M1.Literal.litTrue| () T@U)
(declare-fun |#M1.Literal.litFalse| () T@U)
(declare-fun |#M1.Literal.litUndefined| () T@U)
(declare-fun |#M1.Literal.litNull| () T@U)
(declare-fun |#M1.Primitive.primCreatePath| () T@U)
(declare-fun |#M1.Primitive.primExec| () T@U)
(declare-fun |#M1.Reason.rCompatibility| () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass.M1.Program () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass.M1.Literal () T@U)
(declare-fun Tclass.M1.Reason () T@U)
(declare-fun |M1.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |M1.Reason#Equal| (T@U T@U) Bool)
(declare-fun M1.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun |M1.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun M1.Expression.id (T@U) T@U)
(declare-fun M1.Expression.exprIf_q (T@U) Bool)
(declare-fun |$IsA#M1.Literal| (T@U) Bool)
(declare-fun M1.Expression.exprAnd_q (T@U) Bool)
(declare-fun M1.Expression.conj0 (T@U) T@U)
(declare-fun M1.Expression.conj1 (T@U) T@U)
(declare-fun M1.Expression.exprOr_q (T@U) Bool)
(declare-fun M1.Expression.disj0 (T@U) T@U)
(declare-fun M1.Expression.disj1 (T@U) T@U)
(declare-fun M1.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M1.Expression.fun (T@U) T@U)
(declare-fun M1.Expression.args (T@U) T@U)
(declare-fun |M1.__default.Compatible#canCall| (T@U) Bool)
(declare-fun M1.__default.Compatible (T@U) Bool)
(declare-fun M1.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M1.Literal.prim (T@U) T@U)
(declare-fun M1.__default.GetEnv (T@U T@U) T@U)
(declare-fun |#M1.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M1.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun M1.__default.ValidState (T@U) Bool)
(declare-fun |M1.__default.ValidState#canCall| (T@U) Bool)
(declare-fun M1.__default.WellFounded (T@U) Bool)
(declare-fun |M1.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun M1.Statement.stmtReturn_q (T@U) Bool)
(declare-fun M1.Expression.exprError_q (T@U) Bool)
(declare-fun M1.Literal.litTrue_q (T@U) Bool)
(declare-fun M1.Literal.litFalse_q (T@U) Bool)
(declare-fun M1.Literal.litUndefined_q (T@U) Bool)
(declare-fun M1.Literal.litNull_q (T@U) Bool)
(declare-fun M1.Literal.litArray_q (T@U) Bool)
(declare-fun M1.Reason.rCompatibility_q (T@U) Bool)
(declare-fun M1.Reason.rValidity_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M1.State.StateCons| (T@U) T@U)
(declare-fun |#M1.Statement.stmtReturn| (T@U) T@U)
(declare-fun |#M1.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M1.Literal.litNumber| (Int) T@U)
(declare-fun |#M1.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M1.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun |M1.__default.EmptyEnv#canCall| () Bool)
(declare-fun M1.__default.EmptyEnv () T@U)
(declare-fun M1.__default.build (T@U T@U) T@U)
(declare-fun |M1.__default.build#canCall| (T@U T@U) Bool)
(declare-fun M1.Program.stmts (T@U) T@U)
(declare-fun M1.Literal.arr (T@U) T@U)
(declare-fun |$IsA#M1.Reason| (T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M1.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M1.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M1.Expression.r (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun M1.__default.Extends (T@U T@U) Bool)
(declare-fun |M1.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M1.State Tagclass.M1.Expression Tagclass.M1.Primitive Tagclass.M1.Program Tagclass.M1.Tuple Tagclass.M1.Statement |##M1.State.StateCons| |##M1.Program.Program| |##M1.Statement.stmtVariable| |##M1.Statement.stmtReturn| |##M1.Expression.exprLiteral| Tagclass.M1.Literal |##M1.Expression.exprIdentifier| |##M1.Expression.exprIf| |##M1.Expression.exprAnd| |##M1.Expression.exprOr| |##M1.Expression.exprInvocation| |##M1.Expression.exprError| Tagclass.M1.Reason |##M1.Literal.litTrue| |##M1.Literal.litFalse| |##M1.Literal.litUndefined| |##M1.Literal.litNull| |##M1.Literal.litNumber| |##M1.Literal.litString| |##M1.Literal.litPrimitive| |##M1.Literal.litArrOfPaths| |##M1.Literal.litArrOfStrings| |##M1.Literal.litArray| |##M1.Primitive.primCreatePath| |##M1.Primitive.primExec| |##M1.Reason.rCompatibility| |##M1.Reason.rValidity| |##M1.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Expression tytagFamily$Primitive tytagFamily$Program tytagFamily$Tuple tytagFamily$Statement tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M1.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M1.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M1.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M1.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |2332|
 :pattern ( (M1.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Ctor DatatypeTypeType) 5))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|sts#0| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| |sts#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |sts#0| (TSet Tclass.M1.State))) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|$let#0$canCall| |sts#0|) (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))) (and (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))) (|M1.__default.Union#canCall| (|$let#0_st| |sts#0|) (M1.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))))))) (= (M1.__default.Combine ($LS $ly) |sts#0|) (let ((|st#0| (|$let#0_st| |sts#0|)))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))) |st#0| (M1.__default.Union |st#0| (M1.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2152|
 :pattern ( (M1.__default.Combine ($LS $ly) |sts#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor BoxType) 6))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@0 T@U) (|stmts#0| T@U) (|st#0@@0| T@U) (|env#0| T@U) ) (!  (=> (or (|M1.__default.do#canCall| (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|)) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0| (TSeq Tclass.M1.Statement)) ($Is DatatypeTypeType |st#0@@0| Tclass.M1.State)) ($IsBox |env#0| Tclass.M1.Env)) (and (M1.__default.Legal (Lit SeqType |stmts#0|)) (M1.__default.ValidEnv (Lit BoxType |env#0|)))))) (and (let ((|stmt#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0|) (LitInt 0)))))
 (and (=> (M1.Statement.stmtVariable_q |stmt#2|) (and (|M1.__default.eval#canCall| (M1.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|)) (let ((|st'#2| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|))))))
(let ((|expr'#2| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|))))))
 (and (|M1.__default.Value#canCall| |expr'#2|) (=> (M1.__default.Value |expr'#2|) (and (|M1.__default.SetEnv#canCall| (M1.Statement.id |stmt#2|) |expr'#2| (Lit BoxType |env#0|)) (let ((|env'#2| (M1.__default.SetEnv (M1.Statement.id |stmt#2|) |expr'#2| (Lit BoxType |env#0|))))
 (and (|M1.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M1.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))))))) (|M1.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))) |st'#2| |env'#2|))))))))))) (=> (not (M1.Statement.stmtVariable_q |stmt#2|)) (|M1.__default.eval#canCall| (M1.Statement.ret |stmt#2|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|))))) (= (M1.__default.do ($LS $ly@@0) (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|)) (let ((|stmt#2@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0|) (LitInt 0)))))
(ite (M1.Statement.stmtVariable_q |stmt#2@@0|) (let ((|st'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|))))))
(let ((|expr'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|))))))
(ite (M1.__default.Value |expr'#2@@0|) (let ((|env'#2@@0| (M1.__default.SetEnv (M1.Statement.id |stmt#2@@0|) |expr'#2@@0| (Lit BoxType |env#0|))))
(ite (M1.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1)))) (M1.__default.do ($LS $ly@@0) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))) |st'#2@@0| |env'#2@@0|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |expr'#2@@0|) ($Box DatatypeTypeType |st'#2@@0|)))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@0|)))))) (M1.__default.eval ($LS $LZ) (M1.Statement.ret |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |2355|
 :pattern ( (M1.__default.do ($LS $ly@@0) (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@0|) (Lit BoxType |env#0|)))
))))
(assert (= (Ctor MapType) 7))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M1.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M1.State $h))) ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|M1.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass.M1.Primitive))) (= (M1.__default.Arity |prim#0|) (ite (M1.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |2415|
 :pattern ( (M1.__default.Arity |prim#0|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@0 T@U) ($ly@@1 T@U) (|context#0| T@U) (|args#0| T@U) (|stOrig#0| T@U) (|env#0@@0| T@U) ) (!  (=> (and (or (|M1.__default.evalArgs#canCall| |context#0| |args#0| |stOrig#0| |env#0@@0|) (and (< 5 $FunctionContextHeight) (and (and (and (and (and ($Is DatatypeTypeType |context#0| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |context#0| Tclass.M1.Expression $Heap@@0)) (and ($Is SeqType |args#0| (TSeq Tclass.M1.Expression)) ($IsAlloc SeqType |args#0| (TSeq Tclass.M1.Expression) $Heap@@0))) (and ($Is DatatypeTypeType |stOrig#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |stOrig#0| Tclass.M1.State $Heap@@0))) (and ($IsBox |env#0@@0| Tclass.M1.Env) ($IsAllocBox |env#0@@0| Tclass.M1.Env $Heap@@0))) (and (M1.__default.ValidEnv |env#0@@0|) (forall ((|arg#0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0| Tclass.M1.Expression) (=> (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)) (< (DtRank |arg#0|) (DtRank |context#0|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |2397|
 :pattern ( (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)))
)))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M1.__default.evalArgs $ly@@1 |context#0| |args#0| |stOrig#0| |env#0@@0|) (Tclass.M1.Tuple (TSeq Tclass.M1.Expression) (TSet Tclass.M1.State)) $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |2399|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.evalArgs $ly@@1 |context#0| |args#0| |stOrig#0| |env#0@@0|) (Tclass.M1.Tuple (TSeq Tclass.M1.Expression) (TSet Tclass.M1.State)) $Heap@@0))
))))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Statement.stmtVariable| |a#16#0#0| |a#16#1#0|) Tclass.M1.Statement)  (and ($IsBox |a#16#0#0| Tclass.M1.Identifier) ($Is DatatypeTypeType |a#16#1#0| Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2552|
 :pattern ( ($Is DatatypeTypeType (|#M1.Statement.stmtVariable| |a#16#0#0| |a#16#1#0|) Tclass.M1.Statement))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprAnd| |a#50#0#0| |a#50#1#0|) Tclass.M1.Expression)  (and ($Is DatatypeTypeType |a#50#0#0| Tclass.M1.Expression) ($Is DatatypeTypeType |a#50#1#0| Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2615|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprAnd| |a#50#0#0| |a#50#1#0|) Tclass.M1.Expression))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprOr| |a#58#0#0| |a#58#1#0|) Tclass.M1.Expression)  (and ($Is DatatypeTypeType |a#58#0#0| Tclass.M1.Expression) ($Is DatatypeTypeType |a#58#1#0| Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2628|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprOr| |a#58#0#0| |a#58#1#0|) Tclass.M1.Expression))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) (|args#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M1.__default.ValidArgs#canCall| |prim#0@@0| |args#0@@0| |st#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@0| Tclass.M1.Primitive) ($Is SeqType |args#0@@0| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |st#0@@1| Tclass.M1.State)) (and (=> (M1.Primitive.primExec_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 3))) (=> (M1.Primitive.primCreatePath_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 1))))))) (and (=> (not (M1.Primitive.primCreatePath_q |prim#0@@0|)) (let ((|exps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (=> (M1.Expression.exprLiteral_q |cmd#1|) (=> (M1.Literal.litString_q (M1.Expression.lit |cmd#1|)) (=> (M1.Expression.exprLiteral_q |deps#1|) (=> (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#1|)) (=> (M1.Expression.exprLiteral_q |exps#1|) (=> (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#1|)) (and (|M1.__default.DomSt#canCall| |st#0@@1|) (=> (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#1|)) (M1.__default.DomSt |st#0@@1|)) (|M1.__default.Pre#canCall| (M1.Literal.str (M1.Expression.lit |cmd#1|)) (M1.Literal.paths (M1.Expression.lit |deps#1|)) (M1.Literal.strs (M1.Expression.lit |exps#1|)) |st#0@@1|))))))))))))) (= (M1.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0@@1|) (ite (M1.Primitive.primCreatePath_q |prim#0@@0|) false (let ((|exps#0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (and (and (and (and (and (and (and (M1.Expression.exprLiteral_q |cmd#0@@0|) (M1.Literal.litString_q (M1.Expression.lit |cmd#0@@0|))) (M1.Expression.exprLiteral_q |deps#0@@0|)) (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#0@@0|))) (M1.Expression.exprLiteral_q |exps#0|)) (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#0|))) (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#0@@0|)) (M1.__default.DomSt |st#0@@1|))) (M1.__default.Pre (M1.Literal.str (M1.Expression.lit |cmd#0@@0|)) (M1.Literal.paths (M1.Expression.lit |deps#0@@0|)) (M1.Literal.strs (M1.Expression.lit |exps#0|)) |st#0@@1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :skolemid |2419|
 :pattern ( (M1.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0@@1|))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1513|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#71#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#71#1#0| i))) (DtRank (|#M1.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2649|
 :pattern ( (|Seq#Index| |a#71#1#0| i) (|#M1.Expression.exprInvocation| |a#71#0#0| |a#71#1#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exps#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (and (or (|M1.__default.exec#canCall| |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@1| (TSeq TChar) $Heap@@1)) (and ($Is SetType |deps#0@@1| (TSet Tclass.M1.Path)) ($IsAlloc SetType |deps#0@@1| (TSet Tclass.M1.Path) $Heap@@1))) (and ($Is SetType |exps#0@@0| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@0| (TSet (TSeq TChar)) $Heap@@1))) (and ($Is DatatypeTypeType |st#0@@2| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@2| Tclass.M1.State $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc DatatypeTypeType (M1.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@2|) (Tclass.M1.Tuple (TSet Tclass.M1.Path) Tclass.M1.State) $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.69:18|
 :skolemid |2200|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@2|) (Tclass.M1.Tuple (TSet Tclass.M1.Path) Tclass.M1.State) $Heap@@1))
))))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0| |st#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@3| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0@@3|) |p#0|)))) (and (M1.State.StateCons_q |st#0@@3|) (= (M1.__default.GetSt |p#0| |st#0@@3|) (MapType0Select BoxType BoxType (|Map#Elements| (M1.State.m |st#0@@3|)) |p#0|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2087|
 :pattern ( (M1.__default.GetSt |p#0| |st#0@@3|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1514|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |1518|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |1519|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|) Tclass.M1.Expression)  (and (and ($Is DatatypeTypeType |a#40#0#0| Tclass.M1.Expression) ($Is DatatypeTypeType |a#40#1#0| Tclass.M1.Expression)) ($Is DatatypeTypeType |a#40#2#0| Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2599|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprIf| |a#40#0#0| |a#40#1#0| |a#40#2#0|) Tclass.M1.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@4| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@4| Tclass.M1.State))) (and (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@4|) |p#0@@0|) (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@4|)) |p#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |2091|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@4|)) |p#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@4|) |p#0@@0|))
)) ($Is SetType (M1.__default.DomSt |st#0@@4|) (TSet Tclass.M1.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2092|
 :pattern ( (M1.__default.DomSt |st#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@5| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@5|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@5| Tclass.M1.State))) (and (M1.State.StateCons_q |st#0@@5|) (= (M1.__default.DomSt |st#0@@5|) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m |st#0@@5|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2094|
 :pattern ( (M1.__default.DomSt |st#0@@5|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M1.State| d@@0) (M1.State.StateCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( (|$IsA#M1.State| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M1.Program| d@@1) (M1.Program.Program_q d@@1))
 :qid |unknown.0:0|
 :skolemid |2544|
 :pattern ( (|$IsA#M1.Program| d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (|$IsA#M1.Tuple| d@@2) (M1.Tuple.Pair_q d@@2))
 :qid |unknown.0:0|
 :skolemid |2793|
 :pattern ( (|$IsA#M1.Tuple| d@@2))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1512|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |1618|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) ($ly@@2 T@U) (|sts#0@@0| T@U) ) (!  (=> (and (or (|M1.__default.Combine#canCall| |sts#0@@0|) (and (< 4 $FunctionContextHeight) (and (and ($Is SetType |sts#0@@0| (TSet Tclass.M1.State)) ($IsAlloc SetType |sts#0@@0| (TSet Tclass.M1.State) $Heap@@2)) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (M1.__default.Combine $ly@@2 |sts#0@@0|) Tclass.M1.State $Heap@@2))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2149|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.Combine $ly@@2 |sts#0@@0|) Tclass.M1.State $Heap@@2))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (M1.Literal.litNumber_q a@@4) (M1.Literal.litNumber_q b@@1)) (= (|M1.Literal#Equal| a@@4 b@@1) (= (M1.Literal.num a@@4) (M1.Literal.num b@@1))))
 :qid |unknown.0:0|
 :skolemid |2751|
 :pattern ( (|M1.Literal#Equal| a@@4 b@@1) (M1.Literal.litNumber_q a@@4))
 :pattern ( (|M1.Literal#Equal| a@@4 b@@1) (M1.Literal.litNumber_q b@@1))
)))
(assert (forall ((|a#12#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#12#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#12#0#0| i@@0))) (DtRank (|#M1.Program.Program| |a#12#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2542|
 :pattern ( (|Seq#Index| |a#12#0#0| i@@0) (|#M1.Program.Program| |a#12#0#0|))
)))
(assert (forall ((|a#105#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#105#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#105#0#0| i@@1))) (DtRank (|#M1.Literal.litString| |a#105#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2702|
 :pattern ( (|Seq#Index| |a#105#0#0| i@@1) (|#M1.Literal.litString| |a#105#0#0|))
)))
(assert (forall ((|a#130#0#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#130#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#130#0#0| i@@2))) (DtRank (|#M1.Literal.litArray| |a#130#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2743|
 :pattern ( (|Seq#Index| |a#130#0#0| i@@2) (|#M1.Literal.litArray| |a#130#0#0|))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7203|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |##M1.Expression.exprIf|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2595|
 :pattern ( (|#M1.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (= (M1.Expression.cond (|#M1.Expression.exprIf| |a#42#0#0| |a#42#1#0| |a#42#2#0|)) |a#42#0#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2605|
 :pattern ( (|#M1.Expression.exprIf| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (M1.Expression.ifTrue (|#M1.Expression.exprIf| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#1#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2607|
 :pattern ( (|#M1.Expression.exprIf| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) ) (! (= (M1.Expression.ifFalse (|#M1.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|)) |a#46#2#0|)
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2609|
 :pattern ( (|#M1.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@2 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@5 b@@2) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1528|
 :pattern ( (|Set#Difference| a@@5 b@@2) (|Set#IsMember| b@@2 y@@2))
)))
(assert (forall ((|a#16#0#0@@0| T@U) (|a#16#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M1.Statement.stmtVariable| |a#16#0#0@@0| |a#16#1#0@@0|) Tclass.M1.Statement $h@@0)  (and ($IsAllocBox |a#16#0#0@@0| Tclass.M1.Identifier $h@@0) ($IsAlloc DatatypeTypeType |a#16#1#0@@0| Tclass.M1.Expression $h@@0))))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2553|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Statement.stmtVariable| |a#16#0#0@@0| |a#16#1#0@@0|) Tclass.M1.Statement $h@@0))
)))
(assert (forall ((|a#50#0#0@@0| T@U) (|a#50#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprAnd| |a#50#0#0@@0| |a#50#1#0@@0|) Tclass.M1.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#50#0#0@@0| Tclass.M1.Expression $h@@1) ($IsAlloc DatatypeTypeType |a#50#1#0@@0| Tclass.M1.Expression $h@@1))))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2616|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprAnd| |a#50#0#0@@0| |a#50#1#0@@0|) Tclass.M1.Expression $h@@1))
)))
(assert (forall ((|a#58#0#0@@0| T@U) (|a#58#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprOr| |a#58#0#0@@0| |a#58#1#0@@0|) Tclass.M1.Expression $h@@2)  (and ($IsAlloc DatatypeTypeType |a#58#0#0@@0| Tclass.M1.Expression $h@@2) ($IsAlloc DatatypeTypeType |a#58#1#0@@0| Tclass.M1.Expression $h@@2))))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2629|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprOr| |a#58#0#0@@0| |a#58#1#0@@0|) Tclass.M1.Expression $h@@2))
)))
(assert ($AlwaysAllocated Tclass.M1.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@3))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M1.Tuple$A T@U) (M1.Tuple$B T@U) (d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 (Tclass.M1.Tuple M1.Tuple$A M1.Tuple$B)) (M1.Tuple.Pair_q d@@4))
 :qid |unknown.0:0|
 :skolemid |2794|
 :pattern ( (M1.Tuple.Pair_q d@@4) ($Is DatatypeTypeType d@@4 (Tclass.M1.Tuple M1.Tuple$A M1.Tuple$B)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@6| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@6|))) (Lit BoxType |p#0@@1|))))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@6|)) (= (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@6|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@6|)))) (Lit BoxType |p#0@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2089|
 :pattern ( (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@6|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1509|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |1616|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@2| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M1.__default.Oracle#canCall| |p#0@@2| |st#0@@7|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@2| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@7| Tclass.M1.State)))) ($IsBox (M1.__default.Oracle |p#0@@2| |st#0@@7|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |2268|
 :pattern ( (M1.__default.Oracle |p#0@@2| |st#0@@7|))
))))
(assert (forall (($ly@@3 T@U) (|context#0@@0| T@U) (|args#0@@1| T@U) (|stOrig#0@@0| T@U) (|env#0@@1| T@U) ) (! (= (M1.__default.evalArgs ($LS $ly@@3) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@1|) (M1.__default.evalArgs $ly@@3 |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |2395|
 :pattern ( (M1.__default.evalArgs ($LS $ly@@3) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@1|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|M1.Tuple#Equal| a@@6 b@@3)  (and (= (M1.Tuple.fst a@@6) (M1.Tuple.fst b@@3)) (= (M1.Tuple.snd a@@6) (M1.Tuple.snd b@@3))))
 :qid |unknown.0:0|
 :skolemid |2795|
 :pattern ( (|M1.Tuple#Equal| a@@6 b@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M1.Literal.litTrue|) |##M1.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M1.Literal.litFalse|) |##M1.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M1.Literal.litUndefined|) |##M1.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M1.Literal.litNull|) |##M1.Literal.litNull|))
(assert (= (DatatypeCtorId |#M1.Primitive.primCreatePath|) |##M1.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M1.Primitive.primExec|) |##M1.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M1.Reason.rCompatibility|) |##M1.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#M1.Reason.rValidity|) |##M1.Reason.rValidity|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |1638|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprInvocation| |a#66#0#0| |a#66#1#0|) Tclass.M1.Expression)  (and ($Is DatatypeTypeType |a#66#0#0| Tclass.M1.Expression) ($Is SeqType |a#66#1#0| (TSeq Tclass.M1.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2641|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprInvocation| |a#66#0#0| |a#66#1#0|) Tclass.M1.Expression))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |1522|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1)  (and (|Set#IsMember| a@@8 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1527|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |1633|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass.M1.State) (M1.State.StateCons_q d@@5))
 :qid |unknown.0:0|
 :skolemid |2530|
 :pattern ( (M1.State.StateCons_q d@@5) ($Is DatatypeTypeType d@@5 Tclass.M1.State))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.M1.Program) (M1.Program.Program_q d@@6))
 :qid |unknown.0:0|
 :skolemid |2545|
 :pattern ( (M1.Program.Program_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.M1.Program))
)))
(assert (forall ((|a#66#0#0@@0| T@U) (|a#66#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprInvocation| |a#66#0#0@@0| |a#66#1#0@@0|) Tclass.M1.Expression $h@@3)  (and ($IsAlloc DatatypeTypeType |a#66#0#0@@0| Tclass.M1.Expression $h@@3) ($IsAlloc SeqType |a#66#1#0@@0| (TSeq Tclass.M1.Expression) $h@@3))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2642|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprInvocation| |a#66#0#0@@0| |a#66#1#0@@0|) Tclass.M1.Expression $h@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|st'#0| T@U) ) (!  (=> (or (|M1.__default.Union#canCall| |st#0@@8| |st'#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@8| Tclass.M1.State) ($Is DatatypeTypeType |st'#0| Tclass.M1.State)))) (and (let ((|result#0| (M1.__default.Union |st#0@@8| |st'#0|)))
 (and (|Set#Equal| (M1.__default.DomSt |result#0|) (|Set#Union| (M1.__default.DomSt |st#0@@8|) (M1.__default.DomSt |st'#0|))) (forall ((|p#0@@3| T@U) ) (!  (=> ($IsBox |p#0@@3| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |result#0|) |p#0@@3|) (= (M1.__default.GetSt |p#0@@3| |result#0|) (M1.__default.GetSt |p#0@@3| (ite (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@3|) |st#0@@8| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |2125|
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@3|))
 :pattern ( (M1.__default.GetSt |p#0@@3| |result#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |result#0|) |p#0@@3|))
)))) ($Is DatatypeTypeType (M1.__default.Union |st#0@@8| |st'#0|) Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |2126|
 :pattern ( (M1.__default.Union |st#0@@8| |st'#0|))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((M1.Tuple$A@@0 T@U) (M1.Tuple$B@@0 T@U) (|a#150#0#0| T@U) (|a#150#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Tuple.Pair| |a#150#0#0| |a#150#1#0|) (Tclass.M1.Tuple M1.Tuple$A@@0 M1.Tuple$B@@0))  (and ($IsBox |a#150#0#0| M1.Tuple$A@@0) ($IsBox |a#150#1#0| M1.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |2782|
 :pattern ( ($Is DatatypeTypeType (|#M1.Tuple.Pair| |a#150#0#0| |a#150#1#0|) (Tclass.M1.Tuple M1.Tuple$A@@0 M1.Tuple$B@@0)))
)))
(assert ($Is DatatypeTypeType |#M1.Literal.litTrue| Tclass.M1.Literal))
(assert ($Is DatatypeTypeType |#M1.Literal.litFalse| Tclass.M1.Literal))
(assert ($Is DatatypeTypeType |#M1.Literal.litUndefined| Tclass.M1.Literal))
(assert ($Is DatatypeTypeType |#M1.Literal.litNull| Tclass.M1.Literal))
(assert ($Is DatatypeTypeType |#M1.Primitive.primCreatePath| Tclass.M1.Primitive))
(assert ($Is DatatypeTypeType |#M1.Primitive.primExec| Tclass.M1.Primitive))
(assert ($Is DatatypeTypeType |#M1.Reason.rCompatibility| Tclass.M1.Reason))
(assert ($Is DatatypeTypeType |#M1.Reason.rValidity| Tclass.M1.Reason))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) ) (!  (=> (or (|M1.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@1| Tclass.M1.Primitive))) (= (M1.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)) (ite (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@1|)) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :weight 3
 :skolemid |2416|
 :pattern ( (M1.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)))
))))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#M1.Literal.litTrue| Tclass.M1.Literal $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2674|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Literal.litTrue| Tclass.M1.Literal $h@@4))
)))
(assert (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc DatatypeTypeType |#M1.Literal.litFalse| Tclass.M1.Literal $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2677|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Literal.litFalse| Tclass.M1.Literal $h@@5))
)))
(assert (forall (($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) ($IsAlloc DatatypeTypeType |#M1.Literal.litUndefined| Tclass.M1.Literal $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2680|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Literal.litUndefined| Tclass.M1.Literal $h@@6))
)))
(assert (forall (($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) ($IsAlloc DatatypeTypeType |#M1.Literal.litNull| Tclass.M1.Literal $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2683|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Literal.litNull| Tclass.M1.Literal $h@@7))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@4 T@U) (|context#0@@1| T@U) (|args#0@@2| T@U) (|stOrig#0@@1| T@U) (|env#0@@2| T@U) ) (!  (=> (or (|M1.__default.evalArgs#canCall| |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@2|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@1| Tclass.M1.Expression) ($Is SeqType |args#0@@2| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |stOrig#0@@1| Tclass.M1.State)) ($IsBox |env#0@@2| Tclass.M1.Env)) (and (M1.__default.ValidEnv |env#0@@2|) (forall ((|arg#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0@@0| Tclass.M1.Expression) (=> (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)) (< (DtRank |arg#0@@0|) (DtRank |context#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |2397|
 :pattern ( (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)))
)))))) ($Is DatatypeTypeType (M1.__default.evalArgs $ly@@4 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@2|) (Tclass.M1.Tuple (TSeq Tclass.M1.Expression) (TSet Tclass.M1.State))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |2398|
 :pattern ( (M1.__default.evalArgs $ly@@4 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@4| |st#0@@9|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@4| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@9| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0@@9|) |p#0@@4|)))) ($IsBox (M1.__default.GetSt |p#0@@4| |st#0@@9|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2084|
 :pattern ( (M1.__default.GetSt |p#0@@4| |st#0@@9|))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|M1.Literal#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |unknown.0:0|
 :skolemid |2757|
 :pattern ( (|M1.Literal#Equal| a@@9 b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|M1.Primitive#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |unknown.0:0|
 :skolemid |2767|
 :pattern ( (|M1.Primitive#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|M1.Reason#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |unknown.0:0|
 :skolemid |2777|
 :pattern ( (|M1.Reason#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|M1.Tuple#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |2796|
 :pattern ( (|M1.Tuple#Equal| a@@12 b@@9))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |1639|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@5| T@U) (|st#0@@10| T@U) ) (!  (=> (and (or (|M1.__default.GetSt#canCall| |p#0@@5| |st#0@@10|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@5| Tclass.M1.Path) ($IsAllocBox |p#0@@5| Tclass.M1.Path $Heap@@3)) (and ($Is DatatypeTypeType |st#0@@10| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@10| Tclass.M1.State $Heap@@3))) (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@5|)))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M1.__default.GetSt |p#0@@5| |st#0@@10|) Tclass.M1.Artifact $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |2085|
 :pattern ( ($IsAllocBox (M1.__default.GetSt |p#0@@5| |st#0@@10|) Tclass.M1.Artifact $Heap@@3))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@5 T@U) (|expr#0| T@U) (|st#0@@11| T@U) (|env#0@@3| T@U) ) (!  (=> (or (|M1.__default.eval#canCall| (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0| Tclass.M1.Expression) ($Is DatatypeTypeType |st#0@@11| Tclass.M1.State)) ($IsBox |env#0@@3| Tclass.M1.Env)) (M1.__default.ValidEnv (Lit BoxType |env#0@@3|))))) (and (and (|M1.__default.Value#canCall| (Lit DatatypeTypeType |expr#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.__default.Value (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|))))) (|M1.__default.GetEnv#canCall| (Lit BoxType (M1.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@3|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (let ((|st'#8| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|cond'#2| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
 (and (and (=> (M1.Expression.exprLiteral_q |cond'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#2|))) (=> (and (M1.Expression.exprLiteral_q |cond'#2|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#2|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@3|)))) (=> (not (and (M1.Expression.exprLiteral_q |cond'#2|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#2|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |cond'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#2|))) (=> (and (M1.Expression.exprLiteral_q |cond'#2|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#2|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@3|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (let ((|st'#9| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|conj0'#2| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
 (and (and (=> (M1.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#2|))) (=> (and (M1.Expression.exprLiteral_q |conj0'#2|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#2|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9| (Lit BoxType |env#0@@3|)))) (=> (not (and (M1.Expression.exprLiteral_q |conj0'#2|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#2|) |#M1.Literal.litTrue|))) (=> (M1.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#2|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (let ((|st'#10| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|disj0'#2| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
 (and (=> (M1.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#2|))) (=> (not (and (M1.Expression.exprLiteral_q |disj0'#2|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#2|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#2|))) (=> (and (M1.Expression.exprLiteral_q |disj0'#2|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#2|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10| (Lit BoxType |env#0@@3|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (let ((|st'#11| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|fun'#2| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
 (and (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (let ((|sts'#2| ($Unbox SetType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|args'#2| ($Unbox SeqType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|sts''#2| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11|)) |sts'#2|)))
 (and (|M1.__default.Compatible#canCall| |sts''#2|) (=> (M1.__default.Compatible |sts''#2|) (and (|M1.__default.Combine#canCall| |sts''#2|) (let ((|stCombined#2| (M1.__default.Combine ($LS $LZ) |sts''#2|)))
 (=> (and (M1.Expression.exprLiteral_q |fun'#2|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#2|))) (=> (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#2|))) (and (and (|M1.__default.Arity#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#2|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (|M1.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#2| |stCombined#2|))) (=> (and (= (|Seq#Length| |args'#2|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#2| |stCombined#2|)) (and (|M1.__default.exec#canCall| (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|) (let ((|ps#2| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|)))
 (and (M1.Tuple.Pair_q |ps#2|) (M1.Tuple.Pair_q |ps#2|)))))))))))))))))))))))))))))) (= (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)) (ite (M1.__default.Value (Lit DatatypeTypeType |expr#0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))) (ite (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (M1.__default.GetEnv (Lit BoxType (M1.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@3|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))) (ite (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#8@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|cond'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(ite  (and (M1.Expression.exprLiteral_q |cond'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#2@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@3|)) (ite  (and (M1.Expression.exprLiteral_q |cond'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#2@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@3|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))))))) (ite (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#9@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|conj0'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(ite  (and (M1.Expression.exprLiteral_q |conj0'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#2@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9@@0| (Lit BoxType |env#0@@3|)) (ite  (and (M1.Expression.exprLiteral_q |conj0'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#2@@0|) |#M1.Literal.litFalse|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#9@@0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))))))) (ite (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#10@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|disj0'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(ite  (and (M1.Expression.exprLiteral_q |disj0'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#2@@0|) |#M1.Literal.litTrue|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#10@@0|)) (ite  (and (M1.Expression.exprLiteral_q |disj0'#2@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#2@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10@@0| (Lit BoxType |env#0@@3|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))))))) (ite (M1.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#11@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|fun'#2@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|sts'#2@@0| ($Unbox SetType (M1.Tuple.snd (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|args'#2@@0| ($Unbox SeqType (M1.Tuple.fst (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))))))
(let ((|sts''#2@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11@@0|)) |sts'#2@@0|)))
(ite  (not (M1.__default.Compatible |sts''#2@@0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rCompatibility|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))) (let ((|stCombined#2@@0| (M1.__default.Combine ($LS $LZ) |sts''#2@@0|)))
(ite  (and (M1.Expression.exprLiteral_q |fun'#2@@0|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#2@@0|))) (ite (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#2@@0|))) (ite  (and (= (|Seq#Length| |args'#2@@0|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#2@@0| |stCombined#2@@0|)) (let ((|ps#2@@0| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 2))))) |stCombined#2@@0|)))
(|#M1.Tuple.Pair| ($Box DatatypeTypeType (|#M1.Expression.exprLiteral| (|#M1.Literal.litArrOfPaths| ($Unbox SetType (M1.Tuple.fst |ps#2@@0|))))) (M1.Tuple.snd |ps#2@@0|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|)))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|)))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))))))))))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@11|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |2375|
 :pattern ( (M1.__default.eval ($LS $ly@@5) (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@11|) (Lit BoxType |env#0@@3|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@3| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M1.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@12|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M1.Primitive) ($Is SeqType |args#0@@3| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |st#0@@12| Tclass.M1.State)) (and (=> (M1.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 3))) (=> (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (=> (M1.Expression.exprLiteral_q |cmd#5|) (=> (M1.Literal.litString_q (M1.Expression.lit |cmd#5|)) (=> (M1.Expression.exprLiteral_q |deps#5|) (=> (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#5|)) (=> (M1.Expression.exprLiteral_q |exps#5|) (=> (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#5|)) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@12|)) (=> (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#5|)) (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) (|M1.__default.Pre#canCall| (M1.Literal.str (M1.Expression.lit |cmd#5|)) (M1.Literal.paths (M1.Expression.lit |deps#5|)) (M1.Literal.strs (M1.Expression.lit |exps#5|)) (Lit DatatypeTypeType |st#0@@12|)))))))))))))) (= (M1.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@12|)) (ite (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M1.Expression.exprLiteral_q |cmd#4|) (M1.Literal.litString_q (M1.Expression.lit |cmd#4|))) (M1.Expression.exprLiteral_q |deps#4|)) (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#4|))) (M1.Expression.exprLiteral_q |exps#4|)) (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#4|))) (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#4|)) (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|)))) (M1.__default.Pre (M1.Literal.str (M1.Expression.lit |cmd#4|)) (M1.Literal.paths (M1.Expression.lit |deps#4|)) (M1.Literal.strs (M1.Expression.lit |exps#4|)) (Lit DatatypeTypeType |st#0@@12|))))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |2421|
 :pattern ( (M1.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@12|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0@@0| T@U) ) (!  (=> (or (|M1.__default.Legal#canCall| |stmts#0@@0|) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0@@0| (TSeq Tclass.M1.Statement)))) (= (M1.__default.Legal |stmts#0@@0|)  (or (not (= (|Seq#Length| |stmts#0@@0|) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :skolemid |2366|
 :pattern ( (M1.__default.Legal |stmts#0@@0|))
))))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1401|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1399|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((s@@3 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1642|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Subset| a@@13 b@@10) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@13 o@@2) (|Set#IsMember| b@@10 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1530|
 :pattern ( (|Set#IsMember| a@@13 o@@2))
 :pattern ( (|Set#IsMember| b@@10 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1531|
 :pattern ( (|Set#Subset| a@@13 b@@10))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |1629|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@8) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@8))))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@8))
)))
(assert (forall ((M1.Tuple$A@@1 T@U) (M1.Tuple$B@@1 T@U) (|a#150#0#0@@0| T@U) (|a#150#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M1.Tuple.Pair| |a#150#0#0@@0| |a#150#1#0@@0|) (Tclass.M1.Tuple M1.Tuple$A@@1 M1.Tuple$B@@1) $h@@9)  (and ($IsAllocBox |a#150#0#0@@0| M1.Tuple$A@@1 $h@@9) ($IsAllocBox |a#150#1#0@@0| M1.Tuple$B@@1 $h@@9))))
 :qid |unknown.0:0|
 :skolemid |2783|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Tuple.Pair| |a#150#0#0@@0| |a#150#1#0@@0|) (Tclass.M1.Tuple M1.Tuple$A@@1 M1.Tuple$B@@1) $h@@9))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |1630|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@13| T@U) ) (!  (=> (or (|M1.__default.ValidState#canCall| |st#0@@13|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@13| Tclass.M1.State))) (and (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@13|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@13|) |p#0@@6|) (|M1.__default.WellFounded#canCall| |p#0@@6|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2113|
 :pattern ( (M1.__default.WellFounded |p#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@13|) |p#0@@6|))
)) (= (M1.__default.ValidState |st#0@@13|) (forall ((|p#0@@7| T@U) ) (!  (=> ($IsBox |p#0@@7| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@13|) |p#0@@7|) (M1.__default.WellFounded |p#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2112|
 :pattern ( (M1.__default.WellFounded |p#0@@7|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@13|) |p#0@@7|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |2114|
 :pattern ( (M1.__default.ValidState |st#0@@13|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($Heap@@4 T@U) ($ly@@6 T@U) (|stmts#0@@1| T@U) (|st#0@@14| T@U) (|env#0@@4| T@U) ) (!  (=> (and (or (|M1.__default.do#canCall| |stmts#0@@1| |st#0@@14| |env#0@@4|) (and (< 6 $FunctionContextHeight) (and (and (and (and ($Is SeqType |stmts#0@@1| (TSeq Tclass.M1.Statement)) ($IsAlloc SeqType |stmts#0@@1| (TSeq Tclass.M1.Statement) $Heap@@4)) (and ($Is DatatypeTypeType |st#0@@14| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@14| Tclass.M1.State $Heap@@4))) (and ($IsBox |env#0@@4| Tclass.M1.Env) ($IsAllocBox |env#0@@4| Tclass.M1.Env $Heap@@4))) (and (M1.__default.Legal |stmts#0@@1|) (M1.__default.ValidEnv |env#0@@4|))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (M1.__default.do $ly@@6 |stmts#0@@1| |st#0@@14| |env#0@@4|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@4))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |2351|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.do $ly@@6 |stmts#0@@1| |st#0@@14| |env#0@@4|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@4))
))))
(assert (forall ((d@@7 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@7) (= (DatatypeCtorId d@@7) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1833|
 :pattern ( (_System.Tuple2.___hMake2_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M1.State.StateCons_q d@@8) (= (DatatypeCtorId d@@8) |##M1.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |2519|
 :pattern ( (M1.State.StateCons_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M1.Program.Program_q d@@9) (= (DatatypeCtorId d@@9) |##M1.Program.Program|))
 :qid |unknown.0:0|
 :skolemid |2534|
 :pattern ( (M1.Program.Program_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M1.Statement.stmtVariable_q d@@10) (= (DatatypeCtorId d@@10) |##M1.Statement.stmtVariable|))
 :qid |unknown.0:0|
 :skolemid |2549|
 :pattern ( (M1.Statement.stmtVariable_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M1.Statement.stmtReturn_q d@@11) (= (DatatypeCtorId d@@11) |##M1.Statement.stmtReturn|))
 :qid |unknown.0:0|
 :skolemid |2561|
 :pattern ( (M1.Statement.stmtReturn_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M1.Expression.exprLiteral_q d@@12) (= (DatatypeCtorId d@@12) |##M1.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |2576|
 :pattern ( (M1.Expression.exprLiteral_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M1.Expression.exprIdentifier_q d@@13) (= (DatatypeCtorId d@@13) |##M1.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |2587|
 :pattern ( (M1.Expression.exprIdentifier_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M1.Expression.exprIf_q d@@14) (= (DatatypeCtorId d@@14) |##M1.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |2596|
 :pattern ( (M1.Expression.exprIf_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M1.Expression.exprAnd_q d@@15) (= (DatatypeCtorId d@@15) |##M1.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( (M1.Expression.exprAnd_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M1.Expression.exprOr_q d@@16) (= (DatatypeCtorId d@@16) |##M1.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |2625|
 :pattern ( (M1.Expression.exprOr_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M1.Expression.exprInvocation_q d@@17) (= (DatatypeCtorId d@@17) |##M1.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |2638|
 :pattern ( (M1.Expression.exprInvocation_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M1.Expression.exprError_q d@@18) (= (DatatypeCtorId d@@18) |##M1.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |2652|
 :pattern ( (M1.Expression.exprError_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M1.Literal.litTrue_q d@@19) (= (DatatypeCtorId d@@19) |##M1.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |2672|
 :pattern ( (M1.Literal.litTrue_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (M1.Literal.litFalse_q d@@20) (= (DatatypeCtorId d@@20) |##M1.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |2675|
 :pattern ( (M1.Literal.litFalse_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (M1.Literal.litUndefined_q d@@21) (= (DatatypeCtorId d@@21) |##M1.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |2678|
 :pattern ( (M1.Literal.litUndefined_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (M1.Literal.litNull_q d@@22) (= (DatatypeCtorId d@@22) |##M1.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |2681|
 :pattern ( (M1.Literal.litNull_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (M1.Literal.litNumber_q d@@23) (= (DatatypeCtorId d@@23) |##M1.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |2685|
 :pattern ( (M1.Literal.litNumber_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (! (= (M1.Literal.litString_q d@@24) (= (DatatypeCtorId d@@24) |##M1.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |2694|
 :pattern ( (M1.Literal.litString_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (! (= (M1.Literal.litPrimitive_q d@@25) (= (DatatypeCtorId d@@25) |##M1.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |2705|
 :pattern ( (M1.Literal.litPrimitive_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (! (= (M1.Literal.litArrOfPaths_q d@@26) (= (DatatypeCtorId d@@26) |##M1.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |2715|
 :pattern ( (M1.Literal.litArrOfPaths_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (! (= (M1.Literal.litArrOfStrings_q d@@27) (= (DatatypeCtorId d@@27) |##M1.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |2725|
 :pattern ( (M1.Literal.litArrOfStrings_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (! (= (M1.Literal.litArray_q d@@28) (= (DatatypeCtorId d@@28) |##M1.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |2735|
 :pattern ( (M1.Literal.litArray_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (! (= (M1.Primitive.primCreatePath_q d@@29) (= (DatatypeCtorId d@@29) |##M1.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2758|
 :pattern ( (M1.Primitive.primCreatePath_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (! (= (M1.Primitive.primExec_q d@@30) (= (DatatypeCtorId d@@30) |##M1.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2760|
 :pattern ( (M1.Primitive.primExec_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (! (= (M1.Reason.rCompatibility_q d@@31) (= (DatatypeCtorId d@@31) |##M1.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |2768|
 :pattern ( (M1.Reason.rCompatibility_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (! (= (M1.Reason.rValidity_q d@@32) (= (DatatypeCtorId d@@32) |##M1.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |2770|
 :pattern ( (M1.Reason.rValidity_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (! (= (M1.Tuple.Pair_q d@@33) (= (DatatypeCtorId d@@33) |##M1.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |2779|
 :pattern ( (M1.Tuple.Pair_q d@@33))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |1623|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |1624|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1410|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (forall ((|a#40#0#0@@0| T@U) (|a#40#1#0@@0| T@U) (|a#40#2#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprIf| |a#40#0#0@@0| |a#40#1#0@@0| |a#40#2#0@@0|) Tclass.M1.Expression $h@@10)  (and (and ($IsAlloc DatatypeTypeType |a#40#0#0@@0| Tclass.M1.Expression $h@@10) ($IsAlloc DatatypeTypeType |a#40#1#0@@0| Tclass.M1.Expression $h@@10)) ($IsAlloc DatatypeTypeType |a#40#2#0@@0| Tclass.M1.Expression $h@@10))))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2600|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprIf| |a#40#0#0@@0| |a#40#1#0@@0| |a#40#2#0@@0|) Tclass.M1.Expression $h@@10))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (M1.Expression.exprIf_q d@@34) (exists ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) ) (! (= d@@34 (|#M1.Expression.exprIf| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2597|
)))
 :qid |unknown.0:0|
 :skolemid |2598|
 :pattern ( (M1.Expression.exprIf_q d@@34))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0@@5| T@U) ) (!  (=> (or (|M1.__default.GetEnv#canCall| |id#0| |env#0@@5|) (and (< 3 $FunctionContextHeight) (and (and ($IsBox |id#0| Tclass.M1.Identifier) ($IsBox |env#0@@5| Tclass.M1.Env)) (M1.__default.ValidEnv |env#0@@5|)))) (and (M1.__default.Value (M1.__default.GetEnv |id#0| |env#0@@5|)) ($Is DatatypeTypeType (M1.__default.GetEnv |id#0| |env#0@@5|) Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |2190|
 :pattern ( (M1.__default.GetEnv |id#0| |env#0@@5|))
))))
(assert (forall ((s@@6 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i@@3)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |1653|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i@@3)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Disjoint| a@@14 b@@11) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@14 o@@3)) (not (|Set#IsMember| b@@11 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |1535|
 :pattern ( (|Set#IsMember| a@@14 o@@3))
 :pattern ( (|Set#IsMember| b@@11 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1536|
 :pattern ( (|Set#Disjoint| a@@14 b@@11))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1537|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@35) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@35 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1834|
)))
 :qid |unknown.0:0|
 :skolemid |1835|
 :pattern ( (_System.Tuple2.___hMake2_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (M1.Statement.stmtVariable_q d@@36) (exists ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= d@@36 (|#M1.Statement.stmtVariable| |a#15#0#0| |a#15#1#0|))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2550|
)))
 :qid |unknown.0:0|
 :skolemid |2551|
 :pattern ( (M1.Statement.stmtVariable_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (M1.Expression.exprAnd_q d@@37) (exists ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= d@@37 (|#M1.Expression.exprAnd| |a#49#0#0| |a#49#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2613|
)))
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( (M1.Expression.exprAnd_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (M1.Expression.exprOr_q d@@38) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= d@@38 (|#M1.Expression.exprOr| |a#57#0#0| |a#57#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2626|
)))
 :qid |unknown.0:0|
 :skolemid |2627|
 :pattern ( (M1.Expression.exprOr_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (M1.Expression.exprInvocation_q d@@39) (exists ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (= d@@39 (|#M1.Expression.exprInvocation| |a#65#0#0| |a#65#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2639|
)))
 :qid |unknown.0:0|
 :skolemid |2640|
 :pattern ( (M1.Expression.exprInvocation_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (M1.Tuple.Pair_q d@@40) (exists ((|a#149#0#0| T@U) (|a#149#1#0| T@U) ) (! (= d@@40 (|#M1.Tuple.Pair| |a#149#0#0| |a#149#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2780|
)))
 :qid |unknown.0:0|
 :skolemid |2781|
 :pattern ( (M1.Tuple.Pair_q d@@40))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@15| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@15|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@15| Tclass.M1.State))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@15|)) (= (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@15|)) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m (Lit DatatypeTypeType |st#0@@15|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |2095|
 :pattern ( (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@15|)))
))))
(assert (forall ((d@@41 T@U) ) (!  (=> (M1.Literal.litTrue_q d@@41) (= d@@41 |#M1.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |2673|
 :pattern ( (M1.Literal.litTrue_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (M1.Literal.litFalse_q d@@42) (= d@@42 |#M1.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |2676|
 :pattern ( (M1.Literal.litFalse_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (M1.Literal.litUndefined_q d@@43) (= d@@43 |#M1.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |2679|
 :pattern ( (M1.Literal.litUndefined_q d@@43))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (M1.Literal.litNull_q d@@44) (= d@@44 |#M1.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |2682|
 :pattern ( (M1.Literal.litNull_q d@@44))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> (M1.Primitive.primCreatePath_q d@@45) (= d@@45 |#M1.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |2759|
 :pattern ( (M1.Primitive.primCreatePath_q d@@45))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> (M1.Primitive.primExec_q d@@46) (= d@@46 |#M1.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |2761|
 :pattern ( (M1.Primitive.primExec_q d@@46))
)))
(assert (forall ((d@@47 T@U) ) (!  (=> (M1.Reason.rCompatibility_q d@@47) (= d@@47 |#M1.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |2769|
 :pattern ( (M1.Reason.rCompatibility_q d@@47))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> (M1.Reason.rValidity_q d@@48) (= d@@48 |#M1.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |2771|
 :pattern ( (M1.Reason.rValidity_q d@@48))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1430|
 :pattern ( (|Set#IsMember| v@@1 bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1431|
 :pattern ( ($Is SetType v@@1 (TSet t0@@0)))
)))
(assert (forall ((d@@49 T@U) ) (!  (=> (|$IsA#M1.Literal| d@@49) (or (or (or (or (or (or (or (or (or (M1.Literal.litTrue_q d@@49) (M1.Literal.litFalse_q d@@49)) (M1.Literal.litUndefined_q d@@49)) (M1.Literal.litNull_q d@@49)) (M1.Literal.litNumber_q d@@49)) (M1.Literal.litString_q d@@49)) (M1.Literal.litPrimitive_q d@@49)) (M1.Literal.litArrOfPaths_q d@@49)) (M1.Literal.litArrOfStrings_q d@@49)) (M1.Literal.litArray_q d@@49)))
 :qid |unknown.0:0|
 :skolemid |2745|
 :pattern ( (|$IsA#M1.Literal| d@@49))
)))
(assert (forall ((s@@7 T@U) (i@@4 Int) ) (!  (=> (and (< 0 i@@4) (<= i@@4 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@4)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |1652|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@4)))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> (M1.State.StateCons_q d@@50) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@50 (|#M1.State.StateCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2520|
)))
 :qid |unknown.0:0|
 :skolemid |2521|
 :pattern ( (M1.State.StateCons_q d@@50))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> (M1.Program.Program_q d@@51) (exists ((|a#8#0#0| T@U) ) (! (= d@@51 (|#M1.Program.Program| |a#8#0#0|))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2535|
)))
 :qid |unknown.0:0|
 :skolemid |2536|
 :pattern ( (M1.Program.Program_q d@@51))
)))
(assert (forall ((d@@52 T@U) ) (!  (=> (M1.Statement.stmtReturn_q d@@52) (exists ((|a#22#0#0| T@U) ) (! (= d@@52 (|#M1.Statement.stmtReturn| |a#22#0#0|))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2562|
)))
 :qid |unknown.0:0|
 :skolemid |2563|
 :pattern ( (M1.Statement.stmtReturn_q d@@52))
)))
(assert (forall ((d@@53 T@U) ) (!  (=> (M1.Expression.exprLiteral_q d@@53) (exists ((|a#28#0#0| T@U) ) (! (= d@@53 (|#M1.Expression.exprLiteral| |a#28#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2577|
)))
 :qid |unknown.0:0|
 :skolemid |2578|
 :pattern ( (M1.Expression.exprLiteral_q d@@53))
)))
(assert (forall ((d@@54 T@U) ) (!  (=> (M1.Expression.exprIdentifier_q d@@54) (exists ((|a#34#0#0| T@U) ) (! (= d@@54 (|#M1.Expression.exprIdentifier| |a#34#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2588|
)))
 :qid |unknown.0:0|
 :skolemid |2589|
 :pattern ( (M1.Expression.exprIdentifier_q d@@54))
)))
(assert (forall ((d@@55 T@U) ) (!  (=> (M1.Expression.exprError_q d@@55) (exists ((|a#74#0#0| T@U) ) (! (= d@@55 (|#M1.Expression.exprError| |a#74#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2653|
)))
 :qid |unknown.0:0|
 :skolemid |2654|
 :pattern ( (M1.Expression.exprError_q d@@55))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> (M1.Literal.litNumber_q d@@56) (exists ((|a#96#0#0| Int) ) (! (= d@@56 (|#M1.Literal.litNumber| |a#96#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2686|
)))
 :qid |unknown.0:0|
 :skolemid |2687|
 :pattern ( (M1.Literal.litNumber_q d@@56))
)))
(assert (forall ((d@@57 T@U) ) (!  (=> (M1.Literal.litString_q d@@57) (exists ((|a#101#0#0| T@U) ) (! (= d@@57 (|#M1.Literal.litString| |a#101#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2695|
)))
 :qid |unknown.0:0|
 :skolemid |2696|
 :pattern ( (M1.Literal.litString_q d@@57))
)))
(assert (forall ((d@@58 T@U) ) (!  (=> (M1.Literal.litPrimitive_q d@@58) (exists ((|a#108#0#0| T@U) ) (! (= d@@58 (|#M1.Literal.litPrimitive| |a#108#0#0|))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2706|
)))
 :qid |unknown.0:0|
 :skolemid |2707|
 :pattern ( (M1.Literal.litPrimitive_q d@@58))
)))
(assert (forall ((d@@59 T@U) ) (!  (=> (M1.Literal.litArrOfPaths_q d@@59) (exists ((|a#114#0#0| T@U) ) (! (= d@@59 (|#M1.Literal.litArrOfPaths| |a#114#0#0|))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2716|
)))
 :qid |unknown.0:0|
 :skolemid |2717|
 :pattern ( (M1.Literal.litArrOfPaths_q d@@59))
)))
(assert (forall ((d@@60 T@U) ) (!  (=> (M1.Literal.litArrOfStrings_q d@@60) (exists ((|a#120#0#0| T@U) ) (! (= d@@60 (|#M1.Literal.litArrOfStrings| |a#120#0#0|))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2726|
)))
 :qid |unknown.0:0|
 :skolemid |2727|
 :pattern ( (M1.Literal.litArrOfStrings_q d@@60))
)))
(assert (forall ((d@@61 T@U) ) (!  (=> (M1.Literal.litArray_q d@@61) (exists ((|a#126#0#0| T@U) ) (! (= d@@61 (|#M1.Literal.litArray| |a#126#0#0|))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2736|
)))
 :qid |unknown.0:0|
 :skolemid |2737|
 :pattern ( (M1.Literal.litArray_q d@@61))
)))
(assert (forall ((d@@62 T@U) ) (!  (=> ($Is DatatypeTypeType d@@62 Tclass.M1.Expression) (or (or (or (or (or (or (M1.Expression.exprLiteral_q d@@62) (M1.Expression.exprIdentifier_q d@@62)) (M1.Expression.exprIf_q d@@62)) (M1.Expression.exprAnd_q d@@62)) (M1.Expression.exprOr_q d@@62)) (M1.Expression.exprInvocation_q d@@62)) (M1.Expression.exprError_q d@@62)))
 :qid |unknown.0:0|
 :skolemid |2663|
 :pattern ( (M1.Expression.exprError_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprInvocation_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprOr_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprAnd_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprIf_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprIdentifier_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
 :pattern ( (M1.Expression.exprLiteral_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M1.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |M1.__default.EmptyEnv#canCall| (< 1 $FunctionContextHeight)) (and (M1.__default.ValidEnv M1.__default.EmptyEnv) ($IsBox M1.__default.EmptyEnv Tclass.M1.Env)))))
(assert (forall ((s@@8 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@2)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1608|
 :pattern ( (|Seq#Build| s@@8 v@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|exps#0@@1| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M1.__default.exec#canCall| |cmd#0@@2| |deps#0@@2| |exps#0@@1| |st#0@@16|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M1.Path))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@16| Tclass.M1.State)))) ($Is DatatypeTypeType (M1.__default.exec |cmd#0@@2| |deps#0@@2| |exps#0@@1| |st#0@@16|) (Tclass.M1.Tuple (TSet Tclass.M1.Path) Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |2199|
 :pattern ( (M1.__default.exec |cmd#0@@2| |deps#0@@2| |exps#0@@1| |st#0@@16|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|id#0@@0| T@U) (|env#0@@6| T@U) ) (!  (=> (and (or (|M1.__default.GetEnv#canCall| |id#0@@0| |env#0@@6|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@0| Tclass.M1.Identifier) ($IsAllocBox |id#0@@0| Tclass.M1.Identifier $Heap@@5)) (and ($IsBox |env#0@@6| Tclass.M1.Env) ($IsAllocBox |env#0@@6| Tclass.M1.Env $Heap@@5))) (M1.__default.ValidEnv |env#0@@6|)))) ($IsGoodHeap $Heap@@5)) ($IsAlloc DatatypeTypeType (M1.__default.GetEnv |id#0@@0| |env#0@@6|) Tclass.M1.Expression $Heap@@5))
 :qid |CloudMakeParallelBuildsdfy.61:18|
 :skolemid |2191|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.GetEnv |id#0@@0| |env#0@@6|) Tclass.M1.Expression $Heap@@5))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@17| T@U) ) (!  (=> (or (|M1.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@17|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@17| Tclass.M1.State))) (and (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@17|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@17|))) |p#1|) (|M1.__default.WellFounded#canCall| |p#1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2116|
 :pattern ( (M1.__default.WellFounded |p#1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@17|) |p#1|))
)) (= (M1.__default.ValidState (Lit DatatypeTypeType |st#0@@17|)) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@17|))) |p#1@@0|) (M1.__default.WellFounded |p#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2115|
 :pattern ( (M1.__default.WellFounded |p#1@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@17|) |p#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |2117|
 :pattern ( (M1.__default.ValidState (Lit DatatypeTypeType |st#0@@17|)))
))))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1423|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0@@2| T@U) ) (!  (=> (or (|M1.__default.Legal#canCall| (Lit SeqType |stmts#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0@@2| (TSeq Tclass.M1.Statement)))) (= (M1.__default.Legal (Lit SeqType |stmts#0@@2|))  (or (not (= (|Seq#Length| (Lit SeqType |stmts#0@@2|)) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :weight 3
 :skolemid |2367|
 :pattern ( (M1.__default.Legal (Lit SeqType |stmts#0@@2|)))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prog#0| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M1.__default.build#canCall| |prog#0| |st#0@@18|) (and (< 7 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0| Tclass.M1.Program) ($Is DatatypeTypeType |st#0@@18| Tclass.M1.State)) (M1.__default.Legal (M1.Program.stmts |prog#0|))))) ($Is DatatypeTypeType (M1.__default.build |prog#0| |st#0@@18|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |2338|
 :pattern ( (M1.__default.build |prog#0| |st#0@@18|))
))))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |1631|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall ((d@@63 T@U) ) (!  (=> ($Is DatatypeTypeType d@@63 Tclass.M1.Literal) (or (or (or (or (or (or (or (or (or (M1.Literal.litTrue_q d@@63) (M1.Literal.litFalse_q d@@63)) (M1.Literal.litUndefined_q d@@63)) (M1.Literal.litNull_q d@@63)) (M1.Literal.litNumber_q d@@63)) (M1.Literal.litString_q d@@63)) (M1.Literal.litPrimitive_q d@@63)) (M1.Literal.litArrOfPaths_q d@@63)) (M1.Literal.litArrOfStrings_q d@@63)) (M1.Literal.litArray_q d@@63)))
 :qid |unknown.0:0|
 :skolemid |2746|
 :pattern ( (M1.Literal.litArray_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litArrOfStrings_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litArrOfPaths_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litPrimitive_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litString_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litNumber_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litNull_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litUndefined_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litFalse_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
 :pattern ( (M1.Literal.litTrue_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M1.Literal))
)))
(assert (forall ((sts T@U) ) (!  (=> (|$let#0$canCall| sts) (and ($Is DatatypeTypeType (|$let#0_st| sts) Tclass.M1.State) (|Set#IsMember| sts ($Box DatatypeTypeType (|$let#0_st| sts)))))
 :qid |CloudMakeParallelBuildsdfy.39:5|
 :skolemid |2151|
 :pattern ( (|$let#0_st| sts))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@7 T@U) (|context#0@@2| T@U) (|args#0@@4| T@U) (|stOrig#0@@2| T@U) (|env#0@@7| T@U) ) (!  (=> (or (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@2| Tclass.M1.Expression) ($Is SeqType |args#0@@4| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |stOrig#0@@2| Tclass.M1.State)) ($IsBox |env#0@@7| Tclass.M1.Env)) (and (M1.__default.ValidEnv (Lit BoxType |env#0@@7|)) (forall ((|arg#3| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3| Tclass.M1.Expression) (=> (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)) (< (DtRank |arg#3|) (DtRank |context#0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |2405|
 :pattern ( (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@4| |Seq#Empty|)) (and (|M1.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)) (let ((|r#2| (M1.__default.eval ($LS $ly@@7) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|))))
 (and (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)) (let ((|rr#2| (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@7) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)))))
 (and (and (M1.Tuple.Pair_q |r#2|) (M1.Tuple.Pair_q |rr#2|)) (and (M1.Tuple.Pair_q |r#2|) (M1.Tuple.Pair_q |rr#2|)))))))) (= (M1.__default.evalArgs ($LS $ly@@7) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)) (ite (|Seq#Equal| |args#0@@4| |Seq#Empty|) (|#M1.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#2@@0| (M1.__default.eval ($LS $ly@@7) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|))))
(let ((|rr#2@@0| (Lit DatatypeTypeType (M1.__default.evalArgs ($LS $ly@@7) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)))))
(|#M1.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M1.Tuple.fst |r#2@@0|)) ($Unbox SeqType (M1.Tuple.fst |rr#2@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M1.Tuple.snd |r#2@@0|)) ($Unbox SetType (M1.Tuple.snd |rr#2@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |2406|
 :pattern ( (M1.__default.evalArgs ($LS $ly@@7) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@7|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |1610|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@8| T@U) (|st#0@@19| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@8| (Lit DatatypeTypeType |st#0@@19|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@19| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@19|))) |p#0@@8|)))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@19|)) (= (M1.__default.GetSt |p#0@@8| (Lit DatatypeTypeType |st#0@@19|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@19|)))) |p#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2088|
 :pattern ( (M1.__default.GetSt |p#0@@8| (Lit DatatypeTypeType |st#0@@19|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|exps#0@@2| T@U) (|st#0@@20| T@U) ) (!  (=> (or (|M1.__default.Pre#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@2|) |st#0@@20|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@3| (TSet Tclass.M1.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@20| Tclass.M1.State)))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is SeqType |e#1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1|)) (and (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|) (|M1.__default.DomSt#canCall| |st#0@@20|)) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@20|) (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|)) (and (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|) (|M1.__default.GetSt#canCall| (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|) |st#0@@20|)) (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|) (|M1.__default.Oracle#canCall| (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1|) |st#0@@20|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2222|
 :pattern ( (M1.__default.Loc |cmd#0@@3| |deps#0@@3| |e#1|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1|)))
)) (= (M1.__default.Pre (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@2|) |st#0@@20|) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#1@@0|)) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@20|) (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1@@0|)) (= (M1.__default.GetSt (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1@@0|) |st#0@@20|) (M1.__default.Oracle (M1.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) |e#1@@0|) |st#0@@20|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2221|
 :pattern ( (M1.__default.Loc |cmd#0@@3| |deps#0@@3| |e#1@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |2223|
 :pattern ( (M1.__default.Pre (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@3|) (Lit SetType |exps#0@@2|) |st#0@@20|))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M1.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M1.State)))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsBox bx@@2 Tclass.M1.State))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M1.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M1.Expression)))
 :qid |unknown.0:0|
 :skolemid |2101|
 :pattern ( ($IsBox bx@@3 Tclass.M1.Expression))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M1.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M1.Primitive)))
 :qid |unknown.0:0|
 :skolemid |2102|
 :pattern ( ($IsBox bx@@4 Tclass.M1.Primitive))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M1.Program) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M1.Program)))
 :qid |unknown.0:0|
 :skolemid |2105|
 :pattern ( ($IsBox bx@@5 Tclass.M1.Program))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M1.Statement) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.M1.Statement)))
 :qid |unknown.0:0|
 :skolemid |2344|
 :pattern ( ($IsBox bx@@6 Tclass.M1.Statement))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M1.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M1.Literal)))
 :qid |unknown.0:0|
 :skolemid |2579|
 :pattern ( ($IsBox bx@@7 Tclass.M1.Literal))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M1.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.M1.Reason)))
 :qid |unknown.0:0|
 :skolemid |2655|
 :pattern ( ($IsBox bx@@8 Tclass.M1.Reason))
)))
(assert (forall ((|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Statement.stmtReturn| |a#23#0#0|) Tclass.M1.Statement) ($Is DatatypeTypeType |a#23#0#0| Tclass.M1.Expression))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2564|
 :pattern ( ($Is DatatypeTypeType (|#M1.Statement.stmtReturn| |a#23#0#0|) Tclass.M1.Statement))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprLiteral| |a#29#0#0|) Tclass.M1.Expression) ($Is DatatypeTypeType |a#29#0#0| Tclass.M1.Literal))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2580|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprLiteral| |a#29#0#0|) Tclass.M1.Expression))
)))
(assert (forall ((|a#35#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprIdentifier| |a#35#0#0|) Tclass.M1.Expression) ($IsBox |a#35#0#0| Tclass.M1.Identifier))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2590|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprIdentifier| |a#35#0#0|) Tclass.M1.Expression))
)))
(assert (forall ((|a#75#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Expression.exprError| |a#75#0#0|) Tclass.M1.Expression) ($Is DatatypeTypeType |a#75#0#0| Tclass.M1.Reason))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2656|
 :pattern ( ($Is DatatypeTypeType (|#M1.Expression.exprError| |a#75#0#0|) Tclass.M1.Expression))
)))
(assert (forall ((|a#109#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litPrimitive| |a#109#0#0|) Tclass.M1.Literal) ($Is DatatypeTypeType |a#109#0#0| Tclass.M1.Primitive))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2708|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litPrimitive| |a#109#0#0|) Tclass.M1.Literal))
)))
(assert (forall ((s@@10 T@U) (i@@5 Int) (v@@4 T@U) ) (!  (and (=> (= i@@5 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5) v@@4)) (=> (or (not (= i@@5 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5) (|Seq#Index| s@@10 i@@5))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1609|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@5))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (M1.Literal.litString_q a@@15) (M1.Literal.litString_q b@@12)) (= (|M1.Literal#Equal| a@@15 b@@12) (|Seq#Equal| (M1.Literal.str a@@15) (M1.Literal.str b@@12))))
 :qid |unknown.0:0|
 :skolemid |2752|
 :pattern ( (|M1.Literal#Equal| a@@15 b@@12) (M1.Literal.litString_q a@@15))
 :pattern ( (|M1.Literal#Equal| a@@15 b@@12) (M1.Literal.litString_q b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (and (M1.Literal.litPrimitive_q a@@16) (M1.Literal.litPrimitive_q b@@13)) (= (|M1.Literal#Equal| a@@16 b@@13) (|M1.Primitive#Equal| (M1.Literal.prim a@@16) (M1.Literal.prim b@@13))))
 :qid |unknown.0:0|
 :skolemid |2753|
 :pattern ( (|M1.Literal#Equal| a@@16 b@@13) (M1.Literal.litPrimitive_q a@@16))
 :pattern ( (|M1.Literal#Equal| a@@16 b@@13) (M1.Literal.litPrimitive_q b@@13))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (=> (and (M1.Literal.litArrOfPaths_q a@@17) (M1.Literal.litArrOfPaths_q b@@14)) (= (|M1.Literal#Equal| a@@17 b@@14) (|Set#Equal| (M1.Literal.paths a@@17) (M1.Literal.paths b@@14))))
 :qid |unknown.0:0|
 :skolemid |2754|
 :pattern ( (|M1.Literal#Equal| a@@17 b@@14) (M1.Literal.litArrOfPaths_q a@@17))
 :pattern ( (|M1.Literal#Equal| a@@17 b@@14) (M1.Literal.litArrOfPaths_q b@@14))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (M1.Literal.litArrOfStrings_q a@@18) (M1.Literal.litArrOfStrings_q b@@15)) (= (|M1.Literal#Equal| a@@18 b@@15) (|Set#Equal| (M1.Literal.strs a@@18) (M1.Literal.strs b@@15))))
 :qid |unknown.0:0|
 :skolemid |2755|
 :pattern ( (|M1.Literal#Equal| a@@18 b@@15) (M1.Literal.litArrOfStrings_q a@@18))
 :pattern ( (|M1.Literal#Equal| a@@18 b@@15) (M1.Literal.litArrOfStrings_q b@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (and (M1.Literal.litArray_q a@@19) (M1.Literal.litArray_q b@@16)) (= (|M1.Literal#Equal| a@@19 b@@16) (|Seq#Equal| (M1.Literal.arr a@@19) (M1.Literal.arr b@@16))))
 :qid |unknown.0:0|
 :skolemid |2756|
 :pattern ( (|M1.Literal#Equal| a@@19 b@@16) (M1.Literal.litArray_q a@@19))
 :pattern ( (|M1.Literal#Equal| a@@19 b@@16) (M1.Literal.litArray_q b@@16))
)))
(assert (forall ((|a#6#0#0| T@U) (bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@9) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#6#0#0|) bx@@9))) (DtRank (|#M1.State.StateCons| |a#6#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2528|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@9) (|#M1.State.StateCons| |a#6#0#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|sts#0@@1| T@U) ) (!  (=> (or (|M1.__default.Compatible#canCall| (Lit SetType |sts#0@@1|)) (and (< 3 $FunctionContextHeight) ($Is SetType |sts#0@@1| (TSet Tclass.M1.State)))) (and (forall ((|st#1| T@U) (|st'#1| T@U) (|p#1@@1| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1| Tclass.M1.State) ($Is DatatypeTypeType |st'#1| Tclass.M1.State)) ($IsBox |p#1@@1| Tclass.M1.Path)) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st#1|)) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st'#1|)) (and (|M1.__default.DomSt#canCall| |st#1|) (=> (|Set#IsMember| (M1.__default.DomSt |st#1|) |p#1@@1|) (and (|M1.__default.DomSt#canCall| |st'#1|) (=> (|Set#IsMember| (M1.__default.DomSt |st'#1|) |p#1@@1|) (and (|M1.__default.GetSt#canCall| |p#1@@1| |st#1|) (|M1.__default.GetSt#canCall| |p#1@@1| |st'#1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |2137|
 :pattern ( (M1.__default.GetSt |p#1@@1| |st'#1|) (M1.__default.GetSt |p#1@@1| |st#1|))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st'#1|) (M1.__default.DomSt |st#1|))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st'#1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1|)))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st#1|) (M1.__default.DomSt |st'#1|))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st#1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#1|) |p#1@@1|) (M1.__default.DomSt |st#1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#1|) |p#1@@1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1|)))
 :pattern ( (M1.__default.DomSt |st'#1|) (|Set#IsMember| (M1.__default.DomSt |st#1|) |p#1@@1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#1|) |p#1@@1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1|)))
)) (= (M1.__default.Compatible (Lit SetType |sts#0@@1|)) (forall ((|st#1@@0| T@U) (|st'#1@@0| T@U) (|p#1@@2| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1@@0| Tclass.M1.State) ($Is DatatypeTypeType |st'#1@@0| Tclass.M1.State)) ($IsBox |p#1@@2| Tclass.M1.Path)) (=> (and (and (and (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st#1@@0|)) (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st'#1@@0|))) (|Set#IsMember| (M1.__default.DomSt |st#1@@0|) |p#1@@2|)) (|Set#IsMember| (M1.__default.DomSt |st'#1@@0|) |p#1@@2|)) (= (M1.__default.GetSt |p#1@@2| |st#1@@0|) (M1.__default.GetSt |p#1@@2| |st'#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |2136|
 :pattern ( (M1.__default.GetSt |p#1@@2| |st'#1@@0|) (M1.__default.GetSt |p#1@@2| |st#1@@0|))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st'#1@@0|) (M1.__default.DomSt |st#1@@0|))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st'#1@@0|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st#1@@0|) (M1.__default.DomSt |st'#1@@0|))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st#1@@0|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@0|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#1@@0|) |p#1@@2|) (M1.__default.DomSt |st#1@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#1@@0|) |p#1@@2|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M1.__default.DomSt |st'#1@@0|) (|Set#IsMember| (M1.__default.DomSt |st#1@@0|) |p#1@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#1@@0|) |p#1@@2|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :weight 3
 :skolemid |2138|
 :pattern ( (M1.__default.Compatible (Lit SetType |sts#0@@1|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@8 T@U) (|stmts#0@@3| T@U) (|st#0@@21| T@U) (|env#0@@8| T@U) ) (!  (=> (or (|M1.__default.do#canCall| |stmts#0@@3| |st#0@@21| |env#0@@8|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@3| (TSeq Tclass.M1.Statement)) ($Is DatatypeTypeType |st#0@@21| Tclass.M1.State)) ($IsBox |env#0@@8| Tclass.M1.Env)) (and (M1.__default.Legal |stmts#0@@3|) (M1.__default.ValidEnv |env#0@@8|))))) (and (let ((|stmt#0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@3| (LitInt 0)))))
 (and (=> (M1.Statement.stmtVariable_q |stmt#0|) (and (|M1.__default.eval#canCall| (M1.Statement.expr |stmt#0|) |st#0@@21| |env#0@@8|) (let ((|st'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#0|) |st#0@@21| |env#0@@8|)))))
(let ((|expr'#0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#0|) |st#0@@21| |env#0@@8|)))))
 (and (|M1.__default.Value#canCall| |expr'#0|) (=> (M1.__default.Value |expr'#0|) (and (|M1.__default.SetEnv#canCall| (M1.Statement.id |stmt#0|) |expr'#0| |env#0@@8|) (let ((|env'#0| (M1.__default.SetEnv (M1.Statement.id |stmt#0|) |expr'#0| |env#0@@8|)))
 (and (|M1.__default.Legal#canCall| (|Seq#Drop| |stmts#0@@3| (LitInt 1))) (=> (M1.__default.Legal (|Seq#Drop| |stmts#0@@3| (LitInt 1))) (|M1.__default.do#canCall| (|Seq#Drop| |stmts#0@@3| (LitInt 1)) |st'#0@@0| |env'#0|))))))))))) (=> (not (M1.Statement.stmtVariable_q |stmt#0|)) (|M1.__default.eval#canCall| (M1.Statement.ret |stmt#0|) |st#0@@21| |env#0@@8|)))) (= (M1.__default.do ($LS $ly@@8) |stmts#0@@3| |st#0@@21| |env#0@@8|) (let ((|stmt#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@3| (LitInt 0)))))
(ite (M1.Statement.stmtVariable_q |stmt#0@@0|) (let ((|st'#0@@1| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#0@@0|) |st#0@@21| |env#0@@8|)))))
(let ((|expr'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#0@@0|) |st#0@@21| |env#0@@8|)))))
(ite (M1.__default.Value |expr'#0@@0|) (let ((|env'#0@@0| (M1.__default.SetEnv (M1.Statement.id |stmt#0@@0|) |expr'#0@@0| |env#0@@8|)))
(ite (M1.__default.Legal (|Seq#Drop| |stmts#0@@3| (LitInt 1))) (M1.__default.do $ly@@8 (|Seq#Drop| |stmts#0@@3| (LitInt 1)) |st'#0@@1| |env'#0@@0|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |expr'#0@@0|) ($Box DatatypeTypeType |st'#0@@1|)))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@21|))))) (M1.__default.eval ($LS $LZ) (M1.Statement.ret |stmt#0@@0|) |st#0@@21| |env#0@@8|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |2353|
 :pattern ( (M1.__default.do ($LS $ly@@8) |stmts#0@@3| |st#0@@21| |env#0@@8|))
))))
(assert (forall ((a@@20 T@U) (b@@17 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@20 b@@17) o@@4)  (or (|Set#IsMember| a@@20 o@@4) (|Set#IsMember| b@@17 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |1517|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@20 b@@17) o@@4))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |1617|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@11 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11) (exists ((i@@6 Int) ) (!  (and (and (and (<= 0 i@@6) (< i@@6 n@@5)) (< i@@6 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@6) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |1619|
 :pattern ( (|Seq#Index| s@@11 i@@6))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |1620|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (|Set#Disjoint| a@@21 b@@18) (and (= (|Set#Difference| (|Set#Union| a@@21 b@@18) a@@21) b@@18) (= (|Set#Difference| (|Set#Union| a@@21 b@@18) b@@18) a@@21)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |1520|
 :pattern ( (|Set#Union| a@@21 b@@18))
)))
(assert (forall ((|a#97#0#0| Int) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litNumber| |a#97#0#0|) Tclass.M1.Literal $h@@11) ($IsAlloc intType (int_2_U |a#97#0#0|) TInt $h@@11)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2689|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litNumber| |a#97#0#0|) Tclass.M1.Literal $h@@11))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) ) (!  (=> (and (or |M1.__default.EmptyEnv#canCall| (< 1 $FunctionContextHeight)) ($IsGoodHeap $Heap@@6)) ($IsAllocBox M1.__default.EmptyEnv Tclass.M1.Env $Heap@@6))
 :qid |CloudMakeParallelBuildsdfy.59:18|
 :skolemid |2189|
 :pattern ( ($IsAllocBox M1.__default.EmptyEnv Tclass.M1.Env $Heap@@6))
))))
(assert (forall ((s@@12 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@12 x@@12) (exists ((i@@7 Int) ) (!  (and (and (<= 0 i@@7) (< i@@7 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@7) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |1614|
 :pattern ( (|Seq#Index| s@@12 i@@7))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |1615|
 :pattern ( (|Seq#Contains| s@@12 x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@0| T@U) ) (!  (=> (or (|M1.__default.Value#canCall| |expr#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@0| Tclass.M1.Expression))) (= (M1.__default.Value |expr#0@@0|) (M1.Expression.exprLiteral_q |expr#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |2336|
 :pattern ( (M1.__default.Value |expr#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@9 T@U) ($Heap@@7 T@U) (|sts#0@@2| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| (Lit SetType |sts#0@@2|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@7) ($Is SetType |sts#0@@2| (TSet Tclass.M1.State))) (not (|Set#Equal| |sts#0@@2| |Set#Empty|))))) (and (and (|$let#0$canCall| (Lit SetType |sts#0@@2|)) (=> (not (|Set#Equal| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@2|)))))) (and (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@2|)))))) (|M1.__default.Union#canCall| (|$let#0_st| (Lit SetType |sts#0@@2|)) (M1.__default.Combine ($LS $ly@@9) (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@2|)))))))))) (= (M1.__default.Combine ($LS $ly@@9) (Lit SetType |sts#0@@2|)) (let ((|st#1@@1| (|$let#0_st| (Lit SetType |sts#0@@2|))))
(ite (|Set#Equal| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1@@1|))) |st#1@@1| (M1.__default.Union |st#1@@1| (M1.__default.Combine ($LS $ly@@9) (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1@@1|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :weight 3
 :skolemid |2153|
 :pattern ( (M1.__default.Combine ($LS $ly@@9) (Lit SetType |sts#0@@2|)) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@10 T@U) (|context#0@@3| T@U) (|args#0@@5| T@U) (|stOrig#0@@3| T@U) (|env#0@@9| T@U) ) (!  (=> (or (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@3| Tclass.M1.Expression) ($Is SeqType |args#0@@5| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |stOrig#0@@3| Tclass.M1.State)) ($IsBox |env#0@@9| Tclass.M1.Env)) (and (M1.__default.ValidEnv |env#0@@9|) (forall ((|arg#2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#2| Tclass.M1.Expression) (=> (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)) (< (DtRank |arg#2|) (DtRank |context#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |2403|
 :pattern ( (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@5| |Seq#Empty|)) (and (|M1.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|) (let ((|r#1| (M1.__default.eval ($LS $ly@@10) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|)))
 (and (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|) (let ((|rr#1| (M1.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|)))
 (and (and (M1.Tuple.Pair_q |r#1|) (M1.Tuple.Pair_q |rr#1|)) (and (M1.Tuple.Pair_q |r#1|) (M1.Tuple.Pair_q |rr#1|)))))))) (= (M1.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|) (ite (|Seq#Equal| |args#0@@5| |Seq#Empty|) (|#M1.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#1@@0| (M1.__default.eval ($LS $ly@@10) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@9|)))
(let ((|rr#1@@0| (M1.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@9|)))
(|#M1.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M1.Tuple.fst |r#1@@0|)) ($Unbox SeqType (M1.Tuple.fst |rr#1@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M1.Tuple.snd |r#1@@0|)) ($Unbox SetType (M1.Tuple.snd |rr#1@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |2404|
 :pattern ( (M1.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@9|))
))))
(assert (forall ((d@@64 T@U) ) (!  (=> (|$IsA#M1.Reason| d@@64) (or (M1.Reason.rCompatibility_q d@@64) (M1.Reason.rValidity_q d@@64)))
 :qid |unknown.0:0|
 :skolemid |2773|
 :pattern ( (|$IsA#M1.Reason| d@@64))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|prog#0@@0| T@U) (|st#0@@22| T@U) ) (!  (=> (and (or (|M1.__default.build#canCall| |prog#0@@0| |st#0@@22|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prog#0@@0| Tclass.M1.Program) ($IsAlloc DatatypeTypeType |prog#0@@0| Tclass.M1.Program $Heap@@8)) (and ($Is DatatypeTypeType |st#0@@22| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@22| Tclass.M1.State $Heap@@8))) (M1.__default.Legal (M1.Program.stmts |prog#0@@0|))))) ($IsGoodHeap $Heap@@8)) ($IsAlloc DatatypeTypeType (M1.__default.build |prog#0@@0| |st#0@@22|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@8))
 :qid |CloudMakeParallelBuildsdfy.170:18|
 :skolemid |2339|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.build |prog#0@@0| |st#0@@22|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@8))
))))
(assert (forall ((|a#9#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Program.Program| |a#9#0#0|) Tclass.M1.Program) ($Is SeqType |a#9#0#0| (TSeq Tclass.M1.Statement)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2537|
 :pattern ( ($Is DatatypeTypeType (|#M1.Program.Program| |a#9#0#0|) Tclass.M1.Program))
)))
(assert (forall ((|a#115#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litArrOfPaths| |a#115#0#0|) Tclass.M1.Literal) ($Is SetType |a#115#0#0| (TSet Tclass.M1.Path)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2718|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litArrOfPaths| |a#115#0#0|) Tclass.M1.Literal))
)))
(assert (forall ((|a#127#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litArray| |a#127#0#0|) Tclass.M1.Literal) ($Is SeqType |a#127#0#0| (TSeq Tclass.M1.Expression)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2738|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litArray| |a#127#0#0|) Tclass.M1.Literal))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@11 T@U) (|expr#0@@1| T@U) (|st#0@@23| T@U) (|env#0@@10| T@U) ) (!  (=> (or (|M1.__default.eval#canCall| |expr#0@@1| |st#0@@23| |env#0@@10|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@1| Tclass.M1.Expression) ($Is DatatypeTypeType |st#0@@23| Tclass.M1.State)) ($IsBox |env#0@@10| Tclass.M1.Env)) (M1.__default.ValidEnv |env#0@@10|)))) (and (and (|M1.__default.Value#canCall| |expr#0@@1|) (=> (not (M1.__default.Value |expr#0@@1|)) (and (=> (M1.Expression.exprIdentifier_q |expr#0@@1|) (|M1.__default.GetEnv#canCall| (M1.Expression.id |expr#0@@1|) |env#0@@10|)) (=> (not (M1.Expression.exprIdentifier_q |expr#0@@1|)) (and (=> (M1.Expression.exprIf_q |expr#0@@1|) (and (|M1.__default.eval#canCall| (M1.Expression.cond |expr#0@@1|) |st#0@@23| |env#0@@10|) (let ((|st'#0@@2| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.cond |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|cond'#0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.cond |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
 (and (and (=> (M1.Expression.exprLiteral_q |cond'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#0|))) (=> (and (M1.Expression.exprLiteral_q |cond'#0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#0|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (M1.Expression.ifTrue |expr#0@@1|) |st'#0@@2| |env#0@@10|))) (=> (not (and (M1.Expression.exprLiteral_q |cond'#0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#0|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |cond'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#0|))) (=> (and (M1.Expression.exprLiteral_q |cond'#0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#0|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (M1.Expression.ifFalse |expr#0@@1|) |st'#0@@2| |env#0@@10|))))))))) (=> (not (M1.Expression.exprIf_q |expr#0@@1|)) (and (=> (M1.Expression.exprAnd_q |expr#0@@1|) (and (|M1.__default.eval#canCall| (M1.Expression.conj0 |expr#0@@1|) |st#0@@23| |env#0@@10|) (let ((|st'#1@@1| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.conj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|conj0'#0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.conj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
 (and (and (=> (M1.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#0|))) (=> (and (M1.Expression.exprLiteral_q |conj0'#0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#0|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (M1.Expression.conj1 |expr#0@@1|) |st'#1@@1| |env#0@@10|))) (=> (not (and (M1.Expression.exprLiteral_q |conj0'#0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#0|) |#M1.Literal.litTrue|))) (=> (M1.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#0|))))))))) (=> (not (M1.Expression.exprAnd_q |expr#0@@1|)) (and (=> (M1.Expression.exprOr_q |expr#0@@1|) (and (|M1.__default.eval#canCall| (M1.Expression.disj0 |expr#0@@1|) |st#0@@23| |env#0@@10|) (let ((|st'#2@@1| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.disj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|disj0'#0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.disj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
 (and (=> (M1.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#0|))) (=> (not (and (M1.Expression.exprLiteral_q |disj0'#0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#0|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#0|))) (=> (and (M1.Expression.exprLiteral_q |disj0'#0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#0|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (M1.Expression.disj1 |expr#0@@1|) |st'#2@@1| |env#0@@10|))))))))) (=> (not (M1.Expression.exprOr_q |expr#0@@1|)) (=> (M1.Expression.exprInvocation_q |expr#0@@1|) (and (|M1.__default.eval#canCall| (M1.Expression.fun |expr#0@@1|) |st#0@@23| |env#0@@10|) (let ((|st'#3| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.fun |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|fun'#0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.fun |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
 (and (|M1.__default.evalArgs#canCall| |expr#0@@1| (M1.Expression.args |expr#0@@1|) |st#0@@23| |env#0@@10|) (let ((|sts'#0| ($Unbox SetType (M1.Tuple.snd (M1.__default.evalArgs $ly@@11 |expr#0@@1| (M1.Expression.args |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|args'#0| ($Unbox SeqType (M1.Tuple.fst (M1.__default.evalArgs $ly@@11 |expr#0@@1| (M1.Expression.args |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|sts''#0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3|)) |sts'#0|)))
 (and (|M1.__default.Compatible#canCall| |sts''#0|) (=> (M1.__default.Compatible |sts''#0|) (and (|M1.__default.Combine#canCall| |sts''#0|) (let ((|stCombined#0| (M1.__default.Combine ($LS $LZ) |sts''#0|)))
 (=> (and (M1.Expression.exprLiteral_q |fun'#0|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#0|))) (=> (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#0|))) (and (and (|M1.__default.Arity#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#0|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (|M1.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#0| |stCombined#0|))) (=> (and (= (|Seq#Length| |args'#0|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#0| |stCombined#0|)) (and (|M1.__default.exec#canCall| (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|) (let ((|ps#0| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|)))
 (and (M1.Tuple.Pair_q |ps#0|) (M1.Tuple.Pair_q |ps#0|)))))))))))))))))))))))))))))) (= (M1.__default.eval ($LS $ly@@11) |expr#0@@1| |st#0@@23| |env#0@@10|) (ite (M1.__default.Value |expr#0@@1|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |expr#0@@1|) ($Box DatatypeTypeType |st#0@@23|)) (ite (M1.Expression.exprIdentifier_q |expr#0@@1|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (M1.__default.GetEnv (M1.Expression.id |expr#0@@1|) |env#0@@10|)) ($Box DatatypeTypeType |st#0@@23|)) (ite (M1.Expression.exprIf_q |expr#0@@1|) (let ((|st'#0@@3| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.cond |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|cond'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.cond |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(ite  (and (M1.Expression.exprLiteral_q |cond'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#0@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval $ly@@11 (M1.Expression.ifTrue |expr#0@@1|) |st'#0@@3| |env#0@@10|) (ite  (and (M1.Expression.exprLiteral_q |cond'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#0@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval $ly@@11 (M1.Expression.ifFalse |expr#0@@1|) |st'#0@@3| |env#0@@10|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|)))))) (ite (M1.Expression.exprAnd_q |expr#0@@1|) (let ((|st'#1@@2| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.conj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|conj0'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.conj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(ite  (and (M1.Expression.exprLiteral_q |conj0'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#0@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval $ly@@11 (M1.Expression.conj1 |expr#0@@1|) |st'#1@@2| |env#0@@10|) (ite  (and (M1.Expression.exprLiteral_q |conj0'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#0@@0|) |#M1.Literal.litFalse|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#1@@2|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|)))))) (ite (M1.Expression.exprOr_q |expr#0@@1|) (let ((|st'#2@@2| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.disj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|disj0'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.disj0 |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(ite  (and (M1.Expression.exprLiteral_q |disj0'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#0@@0|) |#M1.Literal.litTrue|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#2@@2|)) (ite  (and (M1.Expression.exprLiteral_q |disj0'#0@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#0@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval $ly@@11 (M1.Expression.disj1 |expr#0@@1|) |st'#2@@2| |env#0@@10|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|)))))) (ite (M1.Expression.exprInvocation_q |expr#0@@1|) (let ((|st'#3@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval $ly@@11 (M1.Expression.fun |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|fun'#0@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval $ly@@11 (M1.Expression.fun |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|sts'#0@@0| ($Unbox SetType (M1.Tuple.snd (M1.__default.evalArgs $ly@@11 |expr#0@@1| (M1.Expression.args |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|args'#0@@0| ($Unbox SeqType (M1.Tuple.fst (M1.__default.evalArgs $ly@@11 |expr#0@@1| (M1.Expression.args |expr#0@@1|) |st#0@@23| |env#0@@10|)))))
(let ((|sts''#0@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3@@0|)) |sts'#0@@0|)))
(ite  (not (M1.__default.Compatible |sts''#0@@0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@23|)) (let ((|stCombined#0@@0| (M1.__default.Combine ($LS $LZ) |sts''#0@@0|)))
(ite  (and (M1.Expression.exprLiteral_q |fun'#0@@0|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#0@@0|))) (ite (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#0@@0|))) (ite  (and (= (|Seq#Length| |args'#0@@0|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#0@@0| |stCombined#0@@0|)) (let ((|ps#0@@0| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 2))))) |stCombined#0@@0|)))
(|#M1.Tuple.Pair| ($Box DatatypeTypeType (|#M1.Expression.exprLiteral| (|#M1.Literal.litArrOfPaths| ($Unbox SetType (M1.Tuple.fst |ps#0@@0|))))) (M1.Tuple.snd |ps#0@@0|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|)))))))))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@23|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |2373|
 :pattern ( (M1.__default.eval ($LS $ly@@11) |expr#0@@1| |st#0@@23| |env#0@@10|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prog#0@@1| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M1.__default.build#canCall| |prog#0@@1| |st#0@@24|) (and (< 7 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@1| Tclass.M1.Program) ($Is DatatypeTypeType |st#0@@24| Tclass.M1.State)) (M1.__default.Legal (M1.Program.stmts |prog#0@@1|))))) (and (and (and (M1.Program.Program_q |prog#0@@1|) |M1.__default.EmptyEnv#canCall|) (|M1.__default.do#canCall| (M1.Program.stmts |prog#0@@1|) |st#0@@24| M1.__default.EmptyEnv)) (= (M1.__default.build |prog#0@@1| |st#0@@24|) (M1.__default.do ($LS $LZ) (M1.Program.stmts |prog#0@@1|) |st#0@@24| M1.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |2341|
 :pattern ( (M1.__default.build |prog#0@@1| |st#0@@24|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|sts#0@@3| T@U) ) (!  (=> (or (|M1.__default.Compatible#canCall| |sts#0@@3|) (and (< 3 $FunctionContextHeight) ($Is SetType |sts#0@@3| (TSet Tclass.M1.State)))) (and (forall ((|st#0@@25| T@U) (|st'#0@@4| T@U) (|p#0@@9| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@25| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@4| Tclass.M1.State)) ($IsBox |p#0@@9| Tclass.M1.Path)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@25|)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)) (and (|M1.__default.DomSt#canCall| |st#0@@25|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@25|) |p#0@@9|) (and (|M1.__default.DomSt#canCall| |st'#0@@4|) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@4|) |p#0@@9|) (and (|M1.__default.GetSt#canCall| |p#0@@9| |st#0@@25|) (|M1.__default.GetSt#canCall| |p#0@@9| |st'#0@@4|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |2134|
 :pattern ( (M1.__default.GetSt |p#0@@9| |st'#0@@4|) (M1.__default.GetSt |p#0@@9| |st#0@@25|))
 :pattern ( (M1.__default.GetSt |p#0@@9| |st'#0@@4|) (M1.__default.DomSt |st#0@@25|))
 :pattern ( (M1.__default.GetSt |p#0@@9| |st'#0@@4|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@25|)))
 :pattern ( (M1.__default.GetSt |p#0@@9| |st#0@@25|) (M1.__default.DomSt |st'#0@@4|))
 :pattern ( (M1.__default.GetSt |p#0@@9| |st#0@@25|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@4|) |p#0@@9|) (M1.__default.DomSt |st#0@@25|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@4|) |p#0@@9|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@25|)))
 :pattern ( (M1.__default.DomSt |st'#0@@4|) (|Set#IsMember| (M1.__default.DomSt |st#0@@25|) |p#0@@9|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@25|) |p#0@@9|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)))
)) (= (M1.__default.Compatible |sts#0@@3|) (forall ((|st#0@@26| T@U) (|st'#0@@5| T@U) (|p#0@@10| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@26| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@5| Tclass.M1.State)) ($IsBox |p#0@@10| Tclass.M1.Path)) (=> (and (and (and (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@26|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|))) (|Set#IsMember| (M1.__default.DomSt |st#0@@26|) |p#0@@10|)) (|Set#IsMember| (M1.__default.DomSt |st'#0@@5|) |p#0@@10|)) (= (M1.__default.GetSt |p#0@@10| |st#0@@26|) (M1.__default.GetSt |p#0@@10| |st'#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |2133|
 :pattern ( (M1.__default.GetSt |p#0@@10| |st'#0@@5|) (M1.__default.GetSt |p#0@@10| |st#0@@26|))
 :pattern ( (M1.__default.GetSt |p#0@@10| |st'#0@@5|) (M1.__default.DomSt |st#0@@26|))
 :pattern ( (M1.__default.GetSt |p#0@@10| |st'#0@@5|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@26|)))
 :pattern ( (M1.__default.GetSt |p#0@@10| |st#0@@26|) (M1.__default.DomSt |st'#0@@5|))
 :pattern ( (M1.__default.GetSt |p#0@@10| |st#0@@26|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@5|) |p#0@@10|) (M1.__default.DomSt |st#0@@26|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@5|) |p#0@@10|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@26|)))
 :pattern ( (M1.__default.DomSt |st'#0@@5|) (|Set#IsMember| (M1.__default.DomSt |st#0@@26|) |p#0@@10|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@26|) |p#0@@10|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :skolemid |2135|
 :pattern ( (M1.__default.Compatible |sts#0@@3|))
))))
(assert (forall ((|a#102#0#0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litString| |a#102#0#0|) Tclass.M1.Literal $h@@12) ($IsAlloc SeqType |a#102#0#0| (TSeq TChar) $h@@12)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2698|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litString| |a#102#0#0|) Tclass.M1.Literal $h@@12))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@12 T@U) (|stmts#0@@4| T@U) (|st#0@@27| T@U) (|env#0@@11| T@U) ) (!  (=> (or (|M1.__default.do#canCall| (Lit SeqType |stmts#0@@4|) |st#0@@27| |env#0@@11|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@4| (TSeq Tclass.M1.Statement)) ($Is DatatypeTypeType |st#0@@27| Tclass.M1.State)) ($IsBox |env#0@@11| Tclass.M1.Env)) (and (M1.__default.Legal (Lit SeqType |stmts#0@@4|)) (M1.__default.ValidEnv |env#0@@11|))))) (and (let ((|stmt#1| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@4|) (LitInt 0)))))
 (and (=> (M1.Statement.stmtVariable_q |stmt#1|) (and (|M1.__default.eval#canCall| (M1.Statement.expr |stmt#1|) |st#0@@27| |env#0@@11|) (let ((|st'#1@@3| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#1|) |st#0@@27| |env#0@@11|)))))
(let ((|expr'#1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#1|) |st#0@@27| |env#0@@11|)))))
 (and (|M1.__default.Value#canCall| |expr'#1|) (=> (M1.__default.Value |expr'#1|) (and (|M1.__default.SetEnv#canCall| (M1.Statement.id |stmt#1|) |expr'#1| |env#0@@11|) (let ((|env'#1| (M1.__default.SetEnv (M1.Statement.id |stmt#1|) |expr'#1| |env#0@@11|)))
 (and (|M1.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@4|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M1.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@4|) (LitInt 1))))))) (|M1.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@4|) (LitInt 1))) |st'#1@@3| |env'#1|))))))))))) (=> (not (M1.Statement.stmtVariable_q |stmt#1|)) (|M1.__default.eval#canCall| (M1.Statement.ret |stmt#1|) |st#0@@27| |env#0@@11|)))) (= (M1.__default.do ($LS $ly@@12) (Lit SeqType |stmts#0@@4|) |st#0@@27| |env#0@@11|) (let ((|stmt#1@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@4|) (LitInt 0)))))
(ite (M1.Statement.stmtVariable_q |stmt#1@@0|) (let ((|st'#1@@4| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#1@@0|) |st#0@@27| |env#0@@11|)))))
(let ((|expr'#1@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $LZ) (M1.Statement.expr |stmt#1@@0|) |st#0@@27| |env#0@@11|)))))
(ite (M1.__default.Value |expr'#1@@0|) (let ((|env'#1@@0| (M1.__default.SetEnv (M1.Statement.id |stmt#1@@0|) |expr'#1@@0| |env#0@@11|)))
(ite (M1.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@4|) (LitInt 1)))) (M1.__default.do ($LS $ly@@12) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@4|) (LitInt 1))) |st'#1@@4| |env'#1@@0|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |expr'#1@@0|) ($Box DatatypeTypeType |st'#1@@4|)))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@27|))))) (M1.__default.eval ($LS $LZ) (M1.Statement.ret |stmt#1@@0|) |st#0@@27| |env#0@@11|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |2354|
 :pattern ( (M1.__default.do ($LS $ly@@12) (Lit SeqType |stmts#0@@4|) |st#0@@27| |env#0@@11|))
))))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (|Set#Equal| a@@22 b@@19) (= a@@22 b@@19))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1534|
 :pattern ( (|Set#Equal| a@@22 b@@19))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (|Seq#Equal| a@@23 b@@20) (= a@@23 b@@20))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |1625|
 :pattern ( (|Seq#Equal| a@@23 b@@20))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) ) (!  (=> (or (|M1.__default.Arity#canCall| |prim#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@3| Tclass.M1.Primitive))) (<= (LitInt 0) (M1.__default.Arity |prim#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |2413|
 :pattern ( (M1.__default.Arity |prim#0@@3|))
))))
(assert (forall ((|a#23#0#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M1.Statement.stmtReturn| |a#23#0#0@@0|) Tclass.M1.Statement $h@@13) ($IsAlloc DatatypeTypeType |a#23#0#0@@0| Tclass.M1.Expression $h@@13)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2565|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Statement.stmtReturn| |a#23#0#0@@0|) Tclass.M1.Statement $h@@13))
)))
(assert (forall ((|a#29#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprLiteral| |a#29#0#0@@0|) Tclass.M1.Expression $h@@14) ($IsAlloc DatatypeTypeType |a#29#0#0@@0| Tclass.M1.Literal $h@@14)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2581|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprLiteral| |a#29#0#0@@0|) Tclass.M1.Expression $h@@14))
)))
(assert (forall ((|a#35#0#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprIdentifier| |a#35#0#0@@0|) Tclass.M1.Expression $h@@15) ($IsAllocBox |a#35#0#0@@0| Tclass.M1.Identifier $h@@15)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2591|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprIdentifier| |a#35#0#0@@0|) Tclass.M1.Expression $h@@15))
)))
(assert (forall ((|a#75#0#0@@0| T@U) ($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) (= ($IsAlloc DatatypeTypeType (|#M1.Expression.exprError| |a#75#0#0@@0|) Tclass.M1.Expression $h@@16) ($IsAlloc DatatypeTypeType |a#75#0#0@@0| Tclass.M1.Reason $h@@16)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2657|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Expression.exprError| |a#75#0#0@@0|) Tclass.M1.Expression $h@@16))
)))
(assert (forall ((|a#109#0#0@@0| T@U) ($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litPrimitive| |a#109#0#0@@0|) Tclass.M1.Literal $h@@17) ($IsAlloc DatatypeTypeType |a#109#0#0@@0| Tclass.M1.Primitive $h@@17)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2709|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litPrimitive| |a#109#0#0@@0|) Tclass.M1.Literal $h@@17))
)))
(assert (forall ((s@@13 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |1628|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@6)))
)))
(assert (forall ((|a#2#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@1|) Tclass.M1.State) ($Is MapType |a#2#0#0@@1| (TMap Tclass.M1.Path Tclass.M1.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2522|
 :pattern ( ($Is DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@1|) Tclass.M1.State))
)))
(assert (forall ((d@@65 T@U) ) (!  (=> ($Is DatatypeTypeType d@@65 Tclass.M1.Statement) (or (M1.Statement.stmtVariable_q d@@65) (M1.Statement.stmtReturn_q d@@65)))
 :qid |unknown.0:0|
 :skolemid |2571|
 :pattern ( (M1.Statement.stmtReturn_q d@@65) ($Is DatatypeTypeType d@@65 Tclass.M1.Statement))
 :pattern ( (M1.Statement.stmtVariable_q d@@65) ($Is DatatypeTypeType d@@65 Tclass.M1.Statement))
)))
(assert (forall ((d@@66 T@U) ) (!  (=> ($Is DatatypeTypeType d@@66 Tclass.M1.Primitive) (or (M1.Primitive.primCreatePath_q d@@66) (M1.Primitive.primExec_q d@@66)))
 :qid |unknown.0:0|
 :skolemid |2764|
 :pattern ( (M1.Primitive.primExec_q d@@66) ($Is DatatypeTypeType d@@66 Tclass.M1.Primitive))
 :pattern ( (M1.Primitive.primCreatePath_q d@@66) ($Is DatatypeTypeType d@@66 Tclass.M1.Primitive))
)))
(assert (forall ((d@@67 T@U) ) (!  (=> ($Is DatatypeTypeType d@@67 Tclass.M1.Reason) (or (M1.Reason.rCompatibility_q d@@67) (M1.Reason.rValidity_q d@@67)))
 :qid |unknown.0:0|
 :skolemid |2774|
 :pattern ( (M1.Reason.rValidity_q d@@67) ($Is DatatypeTypeType d@@67 Tclass.M1.Reason))
 :pattern ( (M1.Reason.rCompatibility_q d@@67) ($Is DatatypeTypeType d@@67 Tclass.M1.Reason))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@9 T@U) (|id#0@@1| T@U) (|expr#0@@2| T@U) (|env#0@@12| T@U) ) (!  (=> (and (or (|M1.__default.SetEnv#canCall| |id#0@@1| |expr#0@@2| |env#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |id#0@@1| Tclass.M1.Identifier) ($IsAllocBox |id#0@@1| Tclass.M1.Identifier $Heap@@9)) (and ($Is DatatypeTypeType |expr#0@@2| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |expr#0@@2| Tclass.M1.Expression $Heap@@9))) (and ($IsBox |env#0@@12| Tclass.M1.Env) ($IsAllocBox |env#0@@12| Tclass.M1.Env $Heap@@9))) (and (M1.__default.ValidEnv |env#0@@12|) (M1.__default.Value |expr#0@@2|))))) ($IsGoodHeap $Heap@@9)) ($IsAllocBox (M1.__default.SetEnv |id#0@@1| |expr#0@@2| |env#0@@12|) Tclass.M1.Env $Heap@@9))
 :qid |CloudMakeParallelBuildsdfy.64:18|
 :skolemid |2195|
 :pattern ( ($IsAllocBox (M1.__default.SetEnv |id#0@@1| |expr#0@@2| |env#0@@12|) Tclass.M1.Env $Heap@@9))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prog#0@@2| T@U) (|st#0@@28| T@U) ) (!  (=> (or (|M1.__default.build#canCall| (Lit DatatypeTypeType |prog#0@@2|) |st#0@@28|) (and (< 7 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@2| Tclass.M1.Program) ($Is DatatypeTypeType |st#0@@28| Tclass.M1.State)) (U_2_bool (Lit boolType (bool_2_U (M1.__default.Legal (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@2|)))))))))) (and (and (and (M1.Program.Program_q (Lit DatatypeTypeType |prog#0@@2|)) |M1.__default.EmptyEnv#canCall|) (|M1.__default.do#canCall| (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@28| M1.__default.EmptyEnv)) (= (M1.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@28|) (M1.__default.do ($LS $LZ) (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@28| M1.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |2342|
 :pattern ( (M1.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@28|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@13 T@U) (|expr#0@@3| T@U) (|st#0@@29| T@U) (|env#0@@13| T@U) ) (!  (=> (or (|M1.__default.eval#canCall| |expr#0@@3| |st#0@@29| |env#0@@13|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@3| Tclass.M1.Expression) ($Is DatatypeTypeType |st#0@@29| Tclass.M1.State)) ($IsBox |env#0@@13| Tclass.M1.Env)) (M1.__default.ValidEnv |env#0@@13|)))) ($Is DatatypeTypeType (M1.__default.eval $ly@@13 |expr#0@@3| |st#0@@29| |env#0@@13|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |2370|
 :pattern ( (M1.__default.eval $ly@@13 |expr#0@@3| |st#0@@29| |env#0@@13|))
))))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1411|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TChar) (and (= ($Box charType ($Unbox charType bx@@11)) bx@@11) ($Is charType ($Unbox charType bx@@11) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1414|
 :pattern ( ($IsBox bx@@11 TChar))
)))
(assert (forall ((|a#121#0#0| T@U) ($h@@18 T@U) ) (!  (=> ($IsGoodHeap $h@@18) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litArrOfStrings| |a#121#0#0|) Tclass.M1.Literal $h@@18) ($IsAlloc SetType |a#121#0#0| (TSet (TSeq TChar)) $h@@18)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2729|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litArrOfStrings| |a#121#0#0|) Tclass.M1.Literal $h@@18))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1422|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@14 T@U) (|stmts#0@@5| T@U) (|st#0@@30| T@U) (|env#0@@14| T@U) ) (!  (=> (or (|M1.__default.do#canCall| |stmts#0@@5| |st#0@@30| |env#0@@14|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@5| (TSeq Tclass.M1.Statement)) ($Is DatatypeTypeType |st#0@@30| Tclass.M1.State)) ($IsBox |env#0@@14| Tclass.M1.Env)) (and (M1.__default.Legal |stmts#0@@5|) (M1.__default.ValidEnv |env#0@@14|))))) ($Is DatatypeTypeType (M1.__default.do $ly@@14 |stmts#0@@5| |st#0@@30| |env#0@@14|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |2350|
 :pattern ( (M1.__default.do $ly@@14 |stmts#0@@5| |st#0@@30| |env#0@@14|))
))))
(assert (forall ((s@@14 T@U) ) (! (<= 0 (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1605|
 :pattern ( (|Seq#Length| s@@14))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@6 T@U) ) (!  (=> ($IsBox v@@6 ty) ($IsAllocBox v@@6 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |1463|
 :pattern ( ($IsAllocBox v@@6 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |1464|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((s@@15 T@U) (i@@8 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@8) (< i@@8 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@8) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |1654|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@8) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (and (M1.Literal.litTrue_q a@@24) (M1.Literal.litTrue_q b@@21)) (|M1.Literal#Equal| a@@24 b@@21))
 :qid |unknown.0:0|
 :skolemid |2747|
 :pattern ( (|M1.Literal#Equal| a@@24 b@@21) (M1.Literal.litTrue_q a@@24))
 :pattern ( (|M1.Literal#Equal| a@@24 b@@21) (M1.Literal.litTrue_q b@@21))
)))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (=> (and (M1.Literal.litFalse_q a@@25) (M1.Literal.litFalse_q b@@22)) (|M1.Literal#Equal| a@@25 b@@22))
 :qid |unknown.0:0|
 :skolemid |2748|
 :pattern ( (|M1.Literal#Equal| a@@25 b@@22) (M1.Literal.litFalse_q a@@25))
 :pattern ( (|M1.Literal#Equal| a@@25 b@@22) (M1.Literal.litFalse_q b@@22))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (and (M1.Literal.litUndefined_q a@@26) (M1.Literal.litUndefined_q b@@23)) (|M1.Literal#Equal| a@@26 b@@23))
 :qid |unknown.0:0|
 :skolemid |2749|
 :pattern ( (|M1.Literal#Equal| a@@26 b@@23) (M1.Literal.litUndefined_q a@@26))
 :pattern ( (|M1.Literal#Equal| a@@26 b@@23) (M1.Literal.litUndefined_q b@@23))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (and (M1.Literal.litNull_q a@@27) (M1.Literal.litNull_q b@@24)) (|M1.Literal#Equal| a@@27 b@@24))
 :qid |unknown.0:0|
 :skolemid |2750|
 :pattern ( (|M1.Literal#Equal| a@@27 b@@24) (M1.Literal.litNull_q a@@27))
 :pattern ( (|M1.Literal#Equal| a@@27 b@@24) (M1.Literal.litNull_q b@@24))
)))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (!  (=> (and (M1.Primitive.primCreatePath_q a@@28) (M1.Primitive.primCreatePath_q b@@25)) (|M1.Primitive#Equal| a@@28 b@@25))
 :qid |unknown.0:0|
 :skolemid |2765|
 :pattern ( (|M1.Primitive#Equal| a@@28 b@@25) (M1.Primitive.primCreatePath_q a@@28))
 :pattern ( (|M1.Primitive#Equal| a@@28 b@@25) (M1.Primitive.primCreatePath_q b@@25))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (and (M1.Primitive.primExec_q a@@29) (M1.Primitive.primExec_q b@@26)) (|M1.Primitive#Equal| a@@29 b@@26))
 :qid |unknown.0:0|
 :skolemid |2766|
 :pattern ( (|M1.Primitive#Equal| a@@29 b@@26) (M1.Primitive.primExec_q a@@29))
 :pattern ( (|M1.Primitive#Equal| a@@29 b@@26) (M1.Primitive.primExec_q b@@26))
)))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (and (M1.Reason.rCompatibility_q a@@30) (M1.Reason.rCompatibility_q b@@27)) (|M1.Reason#Equal| a@@30 b@@27))
 :qid |unknown.0:0|
 :skolemid |2775|
 :pattern ( (|M1.Reason#Equal| a@@30 b@@27) (M1.Reason.rCompatibility_q a@@30))
 :pattern ( (|M1.Reason#Equal| a@@30 b@@27) (M1.Reason.rCompatibility_q b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (and (M1.Reason.rValidity_q a@@31) (M1.Reason.rValidity_q b@@28)) (|M1.Reason#Equal| a@@31 b@@28))
 :qid |unknown.0:0|
 :skolemid |2776|
 :pattern ( (|M1.Reason#Equal| a@@31 b@@28) (M1.Reason.rValidity_q a@@31))
 :pattern ( (|M1.Reason#Equal| a@@31 b@@28) (M1.Reason.rValidity_q b@@28))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ($h@@19 T@U) ) (!  (=> ($IsGoodHeap $h@@19) (= ($IsAlloc DatatypeTypeType (|#M1.Program.Program| |a#9#0#0@@0|) Tclass.M1.Program $h@@19) ($IsAlloc SeqType |a#9#0#0@@0| (TSeq Tclass.M1.Statement) $h@@19)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2538|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Program.Program| |a#9#0#0@@0|) Tclass.M1.Program $h@@19))
)))
(assert (forall ((|a#115#0#0@@0| T@U) ($h@@20 T@U) ) (!  (=> ($IsGoodHeap $h@@20) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litArrOfPaths| |a#115#0#0@@0|) Tclass.M1.Literal $h@@20) ($IsAlloc SetType |a#115#0#0@@0| (TSet Tclass.M1.Path) $h@@20)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2719|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litArrOfPaths| |a#115#0#0@@0|) Tclass.M1.Literal $h@@20))
)))
(assert (forall ((|a#127#0#0@@0| T@U) ($h@@21 T@U) ) (!  (=> ($IsGoodHeap $h@@21) (= ($IsAlloc DatatypeTypeType (|#M1.Literal.litArray| |a#127#0#0@@0|) Tclass.M1.Literal $h@@21) ($IsAlloc SeqType |a#127#0#0@@0| (TSeq Tclass.M1.Expression) $h@@21)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2739|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Literal.litArray| |a#127#0#0@@0|) Tclass.M1.Literal $h@@21))
)))
(assert (forall ((v@@7 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@1) h@@1) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1451|
 :pattern ( (|Set#IsMember| v@@7 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1452|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@1) h@@1))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1393|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1394|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1395|
 :pattern ( (TMap t@@5 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1832|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1837|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((M1.Tuple$A@@2 T@U) (M1.Tuple$B@@2 T@U) ) (! (= (Tclass.M1.Tuple_0 (Tclass.M1.Tuple M1.Tuple$A@@2 M1.Tuple$B@@2)) M1.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |2107|
 :pattern ( (Tclass.M1.Tuple M1.Tuple$A@@2 M1.Tuple$B@@2))
)))
(assert (forall ((M1.Tuple$A@@3 T@U) (M1.Tuple$B@@3 T@U) ) (! (= (Tclass.M1.Tuple_1 (Tclass.M1.Tuple M1.Tuple$A@@3 M1.Tuple$B@@3)) M1.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |2108|
 :pattern ( (Tclass.M1.Tuple M1.Tuple$A@@3 M1.Tuple$B@@3))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Statement.stmtVariable| |a#14#0#0| |a#14#1#0|)) |##M1.Statement.stmtVariable|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2548|
 :pattern ( (|#M1.Statement.stmtVariable| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (M1.Statement.id (|#M1.Statement.stmtVariable| |a#18#0#0| |a#18#1#0|)) |a#18#0#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2557|
 :pattern ( (|#M1.Statement.stmtVariable| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (M1.Statement.expr (|#M1.Statement.stmtVariable| |a#19#0#0| |a#19#1#0|)) |a#19#1#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2558|
 :pattern ( (|#M1.Statement.stmtVariable| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprAnd| |a#48#0#0| |a#48#1#0|)) |##M1.Expression.exprAnd|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2611|
 :pattern ( (|#M1.Expression.exprAnd| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (M1.Expression.conj0 (|#M1.Expression.exprAnd| |a#52#0#0| |a#52#1#0|)) |a#52#0#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2620|
 :pattern ( (|#M1.Expression.exprAnd| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (= (M1.Expression.conj1 (|#M1.Expression.exprAnd| |a#54#0#0| |a#54#1#0|)) |a#54#1#0|)
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2622|
 :pattern ( (|#M1.Expression.exprAnd| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprOr| |a#56#0#0| |a#56#1#0|)) |##M1.Expression.exprOr|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2624|
 :pattern ( (|#M1.Expression.exprOr| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (M1.Expression.disj0 (|#M1.Expression.exprOr| |a#60#0#0| |a#60#1#0|)) |a#60#0#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2633|
 :pattern ( (|#M1.Expression.exprOr| |a#60#0#0| |a#60#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (= (M1.Expression.disj1 (|#M1.Expression.exprOr| |a#62#0#0| |a#62#1#0|)) |a#62#1#0|)
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2635|
 :pattern ( (|#M1.Expression.exprOr| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|)) |##M1.Expression.exprInvocation|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2637|
 :pattern ( (|#M1.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) ) (! (= (M1.Expression.fun (|#M1.Expression.exprInvocation| |a#68#0#0| |a#68#1#0|)) |a#68#0#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2646|
 :pattern ( (|#M1.Expression.exprInvocation| |a#68#0#0| |a#68#1#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) ) (! (= (M1.Expression.args (|#M1.Expression.exprInvocation| |a#70#0#0| |a#70#1#0|)) |a#70#1#0|)
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2648|
 :pattern ( (|#M1.Expression.exprInvocation| |a#70#0#0| |a#70#1#0|))
)))
(assert (forall ((|a#148#0#0| T@U) (|a#148#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Tuple.Pair| |a#148#0#0| |a#148#1#0|)) |##M1.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2778|
 :pattern ( (|#M1.Tuple.Pair| |a#148#0#0| |a#148#1#0|))
)))
(assert (forall ((|a#152#0#0| T@U) (|a#152#1#0| T@U) ) (! (= (M1.Tuple.fst (|#M1.Tuple.Pair| |a#152#0#0| |a#152#1#0|)) |a#152#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2789|
 :pattern ( (|#M1.Tuple.Pair| |a#152#0#0| |a#152#1#0|))
)))
(assert (forall ((|a#154#0#0| T@U) (|a#154#1#0| T@U) ) (! (= (M1.Tuple.snd (|#M1.Tuple.Pair| |a#154#0#0| |a#154#1#0|)) |a#154#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2791|
 :pattern ( (|#M1.Tuple.Pair| |a#154#0#0| |a#154#1#0|))
)))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@2) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@9) t0@@2 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1457|
 :pattern ( (|Seq#Index| v@@8 i@@9))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1458|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@2))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (|#M1.Expression.exprIf| (Lit DatatypeTypeType |a#41#0#0|) (Lit DatatypeTypeType |a#41#1#0|) (Lit DatatypeTypeType |a#41#2#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprIf| |a#41#0#0| |a#41#1#0| |a#41#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2604|
 :pattern ( (|#M1.Expression.exprIf| (Lit DatatypeTypeType |a#41#0#0|) (Lit DatatypeTypeType |a#41#1#0|) (Lit DatatypeTypeType |a#41#2#0|)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0@@2| T@U) (|expr#0@@4| T@U) (|env#0@@15| T@U) ) (!  (=> (or (|M1.__default.SetEnv#canCall| |id#0@@2| |expr#0@@4| |env#0@@15|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@2| Tclass.M1.Identifier) ($Is DatatypeTypeType |expr#0@@4| Tclass.M1.Expression)) ($IsBox |env#0@@15| Tclass.M1.Env)) (and (M1.__default.ValidEnv |env#0@@15|) (M1.__default.Value |expr#0@@4|))))) (and (M1.__default.ValidEnv (M1.__default.SetEnv |id#0@@2| |expr#0@@4| |env#0@@15|)) ($IsBox (M1.__default.SetEnv |id#0@@2| |expr#0@@4| |env#0@@15|) Tclass.M1.Env)))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |2194|
 :pattern ( (M1.__default.SetEnv |id#0@@2| |expr#0@@4| |env#0@@15|))
))))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1385|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1386|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1391|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1392|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#M1.State.StateCons| |a#0#0#0@@0|)) |##M1.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2518|
 :pattern ( (|#M1.State.StateCons| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (M1.State.m (|#M1.State.StateCons| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2526|
 :pattern ( (|#M1.State.StateCons| |a#4#0#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Program.Program| |a#7#0#0|)) |##M1.Program.Program|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2533|
 :pattern ( (|#M1.Program.Program| |a#7#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (M1.Program.stmts (|#M1.Program.Program| |a#11#0#0|)) |a#11#0#0|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2541|
 :pattern ( (|#M1.Program.Program| |a#11#0#0|))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Statement.stmtReturn| |a#21#0#0|)) |##M1.Statement.stmtReturn|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2560|
 :pattern ( (|#M1.Statement.stmtReturn| |a#21#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (M1.Statement.ret (|#M1.Statement.stmtReturn| |a#25#0#0|)) |a#25#0#0|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2568|
 :pattern ( (|#M1.Statement.stmtReturn| |a#25#0#0|))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprLiteral| |a#27#0#0|)) |##M1.Expression.exprLiteral|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2575|
 :pattern ( (|#M1.Expression.exprLiteral| |a#27#0#0|))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= (M1.Expression.lit (|#M1.Expression.exprLiteral| |a#31#0#0|)) |a#31#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2584|
 :pattern ( (|#M1.Expression.exprLiteral| |a#31#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprIdentifier| |a#33#0#0|)) |##M1.Expression.exprIdentifier|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2586|
 :pattern ( (|#M1.Expression.exprIdentifier| |a#33#0#0|))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (M1.Expression.id (|#M1.Expression.exprIdentifier| |a#37#0#0|)) |a#37#0#0|)
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2594|
 :pattern ( (|#M1.Expression.exprIdentifier| |a#37#0#0|))
)))
(assert (forall ((|a#73#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Expression.exprError| |a#73#0#0|)) |##M1.Expression.exprError|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2651|
 :pattern ( (|#M1.Expression.exprError| |a#73#0#0|))
)))
(assert (forall ((|a#77#0#0| T@U) ) (! (= (M1.Expression.r (|#M1.Expression.exprError| |a#77#0#0|)) |a#77#0#0|)
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2660|
 :pattern ( (|#M1.Expression.exprError| |a#77#0#0|))
)))
(assert (forall ((|a#95#0#0| Int) ) (! (= (DatatypeCtorId (|#M1.Literal.litNumber| |a#95#0#0|)) |##M1.Literal.litNumber|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2684|
 :pattern ( (|#M1.Literal.litNumber| |a#95#0#0|))
)))
(assert (forall ((|a#99#0#0| Int) ) (! (= (M1.Literal.num (|#M1.Literal.litNumber| |a#99#0#0|)) |a#99#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2692|
 :pattern ( (|#M1.Literal.litNumber| |a#99#0#0|))
)))
(assert (forall ((|a#100#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Literal.litString| |a#100#0#0|)) |##M1.Literal.litString|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2693|
 :pattern ( (|#M1.Literal.litString| |a#100#0#0|))
)))
(assert (forall ((|a#104#0#0| T@U) ) (! (= (M1.Literal.str (|#M1.Literal.litString| |a#104#0#0|)) |a#104#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2701|
 :pattern ( (|#M1.Literal.litString| |a#104#0#0|))
)))
(assert (forall ((|a#107#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Literal.litPrimitive| |a#107#0#0|)) |##M1.Literal.litPrimitive|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2704|
 :pattern ( (|#M1.Literal.litPrimitive| |a#107#0#0|))
)))
(assert (forall ((|a#111#0#0| T@U) ) (! (= (M1.Literal.prim (|#M1.Literal.litPrimitive| |a#111#0#0|)) |a#111#0#0|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2712|
 :pattern ( (|#M1.Literal.litPrimitive| |a#111#0#0|))
)))
(assert (forall ((|a#113#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Literal.litArrOfPaths| |a#113#0#0|)) |##M1.Literal.litArrOfPaths|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2714|
 :pattern ( (|#M1.Literal.litArrOfPaths| |a#113#0#0|))
)))
(assert (forall ((|a#117#0#0| T@U) ) (! (= (M1.Literal.paths (|#M1.Literal.litArrOfPaths| |a#117#0#0|)) |a#117#0#0|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2722|
 :pattern ( (|#M1.Literal.litArrOfPaths| |a#117#0#0|))
)))
(assert (forall ((|a#119#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Literal.litArrOfStrings| |a#119#0#0|)) |##M1.Literal.litArrOfStrings|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2724|
 :pattern ( (|#M1.Literal.litArrOfStrings| |a#119#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) ) (! (= (M1.Literal.strs (|#M1.Literal.litArrOfStrings| |a#123#0#0|)) |a#123#0#0|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2732|
 :pattern ( (|#M1.Literal.litArrOfStrings| |a#123#0#0|))
)))
(assert (forall ((|a#125#0#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Literal.litArray| |a#125#0#0|)) |##M1.Literal.litArray|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2734|
 :pattern ( (|#M1.Literal.litArray| |a#125#0#0|))
)))
(assert (forall ((|a#129#0#0| T@U) ) (! (= (M1.Literal.arr (|#M1.Literal.litArray| |a#129#0#0|)) |a#129#0#0|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2742|
 :pattern ( (|#M1.Literal.litArray| |a#129#0#0|))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1409|
 :pattern ( ($Box T@@3 x@@13))
)))
(assert (forall ((v@@9 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@3 t1@@0) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@13) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13) t1@@0 h@@3) ($IsAllocBox bx@@13 t0@@3 h@@3)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |1459|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@13))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |1460|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@3 t1@@0) h@@3))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (DtRank |a#43#0#0|) (DtRank (|#M1.Expression.exprIf| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2606|
 :pattern ( (|#M1.Expression.exprIf| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#1#0|) (DtRank (|#M1.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2608|
 :pattern ( (|#M1.Expression.exprIf| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) (|a#47#2#0| T@U) ) (! (< (DtRank |a#47#2#0|) (DtRank (|#M1.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |2610|
 :pattern ( (|#M1.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (< (DtRank |a#20#1#0|) (DtRank (|#M1.Statement.stmtVariable| |a#20#0#0| |a#20#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2559|
 :pattern ( (|#M1.Statement.stmtVariable| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (< (DtRank |a#53#0#0|) (DtRank (|#M1.Expression.exprAnd| |a#53#0#0| |a#53#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2621|
 :pattern ( (|#M1.Expression.exprAnd| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (DtRank |a#55#1#0|) (DtRank (|#M1.Expression.exprAnd| |a#55#0#0| |a#55#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2623|
 :pattern ( (|#M1.Expression.exprAnd| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#M1.Expression.exprOr| |a#61#0#0| |a#61#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2634|
 :pattern ( (|#M1.Expression.exprOr| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#M1.Expression.exprOr| |a#63#0#0| |a#63#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2636|
 :pattern ( (|#M1.Expression.exprOr| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) ) (! (< (DtRank |a#69#0#0|) (DtRank (|#M1.Expression.exprInvocation| |a#69#0#0| |a#69#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2647|
 :pattern ( (|#M1.Expression.exprInvocation| |a#69#0#0| |a#69#1#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) ) (! (< (|Seq#Rank| |a#72#1#0|) (DtRank (|#M1.Expression.exprInvocation| |a#72#0#0| |a#72#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2650|
 :pattern ( (|#M1.Expression.exprInvocation| |a#72#0#0| |a#72#1#0|))
)))
(assert (forall ((|a#153#0#0| T@U) (|a#153#1#0| T@U) ) (! (< (BoxRank |a#153#0#0|) (DtRank (|#M1.Tuple.Pair| |a#153#0#0| |a#153#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2790|
 :pattern ( (|#M1.Tuple.Pair| |a#153#0#0| |a#153#1#0|))
)))
(assert (forall ((|a#155#0#0| T@U) (|a#155#1#0| T@U) ) (! (< (BoxRank |a#155#1#0|) (DtRank (|#M1.Tuple.Pair| |a#155#0#0| |a#155#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2792|
 :pattern ( (|#M1.Tuple.Pair| |a#155#0#0| |a#155#1#0|))
)))
(assert (forall ((|a#2#0#0@@2| T@U) ($h@@22 T@U) ) (!  (=> ($IsGoodHeap $h@@22) (= ($IsAlloc DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@2|) Tclass.M1.State $h@@22) ($IsAlloc MapType |a#2#0#0@@2| (TMap Tclass.M1.Path Tclass.M1.Artifact) $h@@22)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2523|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@2|) Tclass.M1.State $h@@22))
)))
(assert (forall (($ly@@15 T@U) (|sts#0@@4| T@U) ) (! (= (M1.__default.Combine ($LS $ly@@15) |sts#0@@4|) (M1.__default.Combine $ly@@15 |sts#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2146|
 :pattern ( (M1.__default.Combine ($LS $ly@@15) |sts#0@@4|))
)))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (! (= (|Set#Union| a@@32 (|Set#Union| a@@32 b@@29)) (|Set#Union| a@@32 b@@29))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |1523|
 :pattern ( (|Set#Union| a@@32 (|Set#Union| a@@32 b@@29)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@31| T@U) (|st'#0@@6| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@31|) (Lit DatatypeTypeType |st'#0@@6|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@31| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@6| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@31|)) (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@6|))) (=> (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@31|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) |p#2|) (and (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@6|)) (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@31|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2285|
 :pattern ( (M1.__default.GetSt |p#2| |st#0@@31|))
 :pattern ( (M1.__default.GetSt |p#2| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@31|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) |p#2@@0|) (= (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@6|)) (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@31|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2287|
 :pattern ( (M1.__default.GetSt |p#2@@0| |st#0@@31|))
 :pattern ( (M1.__default.GetSt |p#2@@0| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@31|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@31|)) (=> (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) |p#3|)) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@6|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) |p#3|) (and (|M1.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@6|)) (|M1.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@31|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2286|
 :pattern ( (M1.__default.Oracle |p#3| |st#0@@31|))
 :pattern ( (M1.__default.GetSt |p#3| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@6|) |p#3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@31|) |p#3|))
)))))) (= (M1.__default.Extends (Lit DatatypeTypeType |st#0@@31|) (Lit DatatypeTypeType |st'#0@@6|))  (and (and (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) |p#2@@1|) (= (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@6|)) (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@31|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2283|
 :pattern ( (M1.__default.GetSt |p#2@@1| |st#0@@31|))
 :pattern ( (M1.__default.GetSt |p#2@@1| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@31|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) |p#3@@0|)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) |p#3@@0|)) (= (M1.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@6|)) (M1.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@31|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2284|
 :pattern ( (M1.__default.Oracle |p#3@@0| |st#0@@31|))
 :pattern ( (M1.__default.GetSt |p#3@@0| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@6|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@31|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |2288|
 :pattern ( (M1.__default.Extends (Lit DatatypeTypeType |st#0@@31|) (Lit DatatypeTypeType |st'#0@@6|)))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1669|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#97#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litNumber| |a#97#0#0@@0|) Tclass.M1.Literal) ($Is intType (int_2_U |a#97#0#0@@0|) TInt))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2688|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litNumber| |a#97#0#0@@0|) Tclass.M1.Literal))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@4| T@U) (|deps#0@@4| T@U) (|exps#0@@3| T@U) (|st#0@@32| T@U) ) (!  (=> (or (|M1.__default.Pre#canCall| |cmd#0@@4| |deps#0@@4| |exps#0@@3| |st#0@@32|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@4| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M1.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@32| Tclass.M1.State)))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is SeqType |e#0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0|)) (and (and (|M1.__default.Loc#canCall| |cmd#0@@4| |deps#0@@4| |e#0|) (|M1.__default.DomSt#canCall| |st#0@@32|)) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@32|) (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0|)) (and (and (|M1.__default.Loc#canCall| |cmd#0@@4| |deps#0@@4| |e#0|) (|M1.__default.GetSt#canCall| (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0|) |st#0@@32|)) (and (|M1.__default.Loc#canCall| |cmd#0@@4| |deps#0@@4| |e#0|) (|M1.__default.Oracle#canCall| (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0|) |st#0@@32|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2219|
 :pattern ( (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0|)))
)) (= (M1.__default.Pre |cmd#0@@4| |deps#0@@4| |exps#0@@3| |st#0@@32|) (forall ((|e#0@@0| T@U) ) (!  (=> ($Is SeqType |e#0@@0| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@0|)) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@32|) (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|)) (= (M1.__default.GetSt (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|) |st#0@@32|) (M1.__default.Oracle (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|) |st#0@@32|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2218|
 :pattern ( (M1.__default.Loc |cmd#0@@4| |deps#0@@4| |e#0@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |2220|
 :pattern ( (M1.__default.Pre |cmd#0@@4| |deps#0@@4| |exps#0@@3| |st#0@@32|))
))))
(assert (forall (($ly@@16 T@U) (|stmts#0@@6| T@U) (|st#0@@33| T@U) (|env#0@@16| T@U) ) (! (= (M1.__default.do ($LS $ly@@16) |stmts#0@@6| |st#0@@33| |env#0@@16|) (M1.__default.do $ly@@16 |stmts#0@@6| |st#0@@33| |env#0@@16|))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |2348|
 :pattern ( (M1.__default.do ($LS $ly@@16) |stmts#0@@6| |st#0@@33| |env#0@@16|))
)))
(assert (forall (($ly@@17 T@U) (|expr#0@@5| T@U) (|st#0@@34| T@U) (|env#0@@17| T@U) ) (! (= (M1.__default.eval ($LS $ly@@17) |expr#0@@5| |st#0@@34| |env#0@@17|) (M1.__default.eval $ly@@17 |expr#0@@5| |st#0@@34| |env#0@@17|))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |2368|
 :pattern ( (M1.__default.eval ($LS $ly@@17) |expr#0@@5| |st#0@@34| |env#0@@17|))
)))
(assert (forall ((bx@@14 T@U) (s@@16 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@14 (TMap s@@16 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@14)) bx@@14) ($Is MapType ($Unbox MapType bx@@14) (TMap s@@16 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |1420|
 :pattern ( ($IsBox bx@@14 (TMap s@@16 t@@10)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@15)) bx@@15) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@15) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1839|
 :pattern ( ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M1.Tuple$A@@4 T@U) (M1.Tuple$B@@4 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass.M1.Tuple M1.Tuple$A@@4 M1.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) (Tclass.M1.Tuple M1.Tuple$A@@4 M1.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |2109|
 :pattern ( ($IsBox bx@@16 (Tclass.M1.Tuple M1.Tuple$A@@4 M1.Tuple$B@@4)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (< (|Seq#Rank| |a#13#0#0|) (DtRank (|#M1.Program.Program| |a#13#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2543|
 :pattern ( (|#M1.Program.Program| |a#13#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (< (DtRank |a#26#0#0|) (DtRank (|#M1.Statement.stmtReturn| |a#26#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2569|
 :pattern ( (|#M1.Statement.stmtReturn| |a#26#0#0|))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (< (DtRank |a#32#0#0|) (DtRank (|#M1.Expression.exprLiteral| |a#32#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2585|
 :pattern ( (|#M1.Expression.exprLiteral| |a#32#0#0|))
)))
(assert (forall ((|a#78#0#0| T@U) ) (! (< (DtRank |a#78#0#0|) (DtRank (|#M1.Expression.exprError| |a#78#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2661|
 :pattern ( (|#M1.Expression.exprError| |a#78#0#0|))
)))
(assert (forall ((|a#106#0#0| T@U) ) (! (< (|Seq#Rank| |a#106#0#0|) (DtRank (|#M1.Literal.litString| |a#106#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2703|
 :pattern ( (|#M1.Literal.litString| |a#106#0#0|))
)))
(assert (forall ((|a#112#0#0| T@U) ) (! (< (DtRank |a#112#0#0|) (DtRank (|#M1.Literal.litPrimitive| |a#112#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2713|
 :pattern ( (|#M1.Literal.litPrimitive| |a#112#0#0|))
)))
(assert (forall ((|a#131#0#0| T@U) ) (! (< (|Seq#Rank| |a#131#0#0|) (DtRank (|#M1.Literal.litArray| |a#131#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2744|
 :pattern ( (|#M1.Literal.litArray| |a#131#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7202|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@10 T@U) ($ly@@18 T@U) (|expr#0@@6| T@U) (|st#0@@35| T@U) (|env#0@@18| T@U) ) (!  (=> (and (or (|M1.__default.eval#canCall| |expr#0@@6| |st#0@@35| |env#0@@18|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@6| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |expr#0@@6| Tclass.M1.Expression $Heap@@10)) (and ($Is DatatypeTypeType |st#0@@35| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@35| Tclass.M1.State $Heap@@10))) (and ($IsBox |env#0@@18| Tclass.M1.Env) ($IsAllocBox |env#0@@18| Tclass.M1.Env $Heap@@10))) (M1.__default.ValidEnv |env#0@@18|)))) ($IsGoodHeap $Heap@@10)) ($IsAlloc DatatypeTypeType (M1.__default.eval $ly@@18 |expr#0@@6| |st#0@@35| |env#0@@18|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@10))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |2371|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.eval $ly@@18 |expr#0@@6| |st#0@@35| |env#0@@18|) (Tclass.M1.Tuple Tclass.M1.Expression Tclass.M1.State) $Heap@@10))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@6| T@U) (|st#0@@36| T@U) ) (!  (=> (or (|M1.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@36|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M1.Primitive) ($Is SeqType |args#0@@6| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |st#0@@36| Tclass.M1.State)) (and (=> (M1.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 3))) (=> (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (=> (M1.Expression.exprLiteral_q |cmd#3|) (=> (M1.Literal.litString_q (M1.Expression.lit |cmd#3|)) (=> (M1.Expression.exprLiteral_q |deps#3|) (=> (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#3|)) (=> (M1.Expression.exprLiteral_q |exps#3|) (=> (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#3|)) (and (|M1.__default.DomSt#canCall| |st#0@@36|) (=> (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#3|)) (M1.__default.DomSt |st#0@@36|)) (|M1.__default.Pre#canCall| (M1.Literal.str (M1.Expression.lit |cmd#3|)) (M1.Literal.paths (M1.Expression.lit |deps#3|)) (M1.Literal.strs (M1.Expression.lit |exps#3|)) |st#0@@36|))))))))))))) (= (M1.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@36|) (ite (M1.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M1.Expression.exprLiteral_q |cmd#2|) (M1.Literal.litString_q (M1.Expression.lit |cmd#2|))) (M1.Expression.exprLiteral_q |deps#2|)) (M1.Literal.litArrOfPaths_q (M1.Expression.lit |deps#2|))) (M1.Expression.exprLiteral_q |exps#2|)) (M1.Literal.litArrOfStrings_q (M1.Expression.lit |exps#2|))) (|Set#Subset| (M1.Literal.paths (M1.Expression.lit |deps#2|)) (M1.__default.DomSt |st#0@@36|))) (M1.__default.Pre (M1.Literal.str (M1.Expression.lit |cmd#2|)) (M1.Literal.paths (M1.Expression.lit |deps#2|)) (M1.Literal.strs (M1.Expression.lit |exps#2|)) |st#0@@36|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |2420|
 :pattern ( (M1.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@36|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@19 T@U) (|context#0@@4| T@U) (|args#0@@7| T@U) (|stOrig#0@@4| T@U) (|env#0@@19| T@U) ) (!  (=> (or (|M1.__default.evalArgs#canCall| |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@19|) (and (< 5 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@4| Tclass.M1.Expression) ($Is SeqType |args#0@@7| (TSeq Tclass.M1.Expression))) ($Is DatatypeTypeType |stOrig#0@@4| Tclass.M1.State)) ($IsBox |env#0@@19| Tclass.M1.Env)) (and (M1.__default.ValidEnv |env#0@@19|) (forall ((|arg#1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1| Tclass.M1.Expression) (=> (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)) (< (DtRank |arg#1|) (DtRank |context#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |2400|
 :pattern ( (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@7| |Seq#Empty|)) (and (|M1.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@19|) (let ((|r#0| (M1.__default.eval $ly@@19 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@19|)))
 (and (|M1.__default.evalArgs#canCall| |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@19|) (let ((|rr#0| (M1.__default.evalArgs $ly@@19 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@19|)))
 (and (and (M1.Tuple.Pair_q |r#0|) (M1.Tuple.Pair_q |rr#0|)) (and (M1.Tuple.Pair_q |r#0|) (M1.Tuple.Pair_q |rr#0|)))))))) (= (M1.__default.evalArgs ($LS $ly@@19) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@19|) (ite (|Seq#Equal| |args#0@@7| |Seq#Empty|) (|#M1.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#0@@0| (M1.__default.eval $ly@@19 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@19|)))
(let ((|rr#0@@0| (M1.__default.evalArgs $ly@@19 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@19|)))
(|#M1.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M1.Tuple.fst |r#0@@0|)) ($Unbox SeqType (M1.Tuple.fst |rr#0@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M1.Tuple.snd |r#0@@0|)) ($Unbox SetType (M1.Tuple.snd |rr#0@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |2402|
 :pattern ( (M1.__default.evalArgs ($LS $ly@@19) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@19|))
))))
(assert (forall ((s@@17 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@17 val@@4)) s@@17) (= (|Seq#Build_inv1| (|Seq#Build| s@@17 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1607|
 :pattern ( (|Seq#Build| s@@17 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M1.Tuple$A@@5 T@U) (M1.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M1.Tuple M1.Tuple$A@@5 M1.Tuple$B@@5)) Tagclass.M1.Tuple) (= (TagFamily (Tclass.M1.Tuple M1.Tuple$A@@5 M1.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |2106|
 :pattern ( (Tclass.M1.Tuple M1.Tuple$A@@5 M1.Tuple$B@@5))
)))
(assert (forall ((d@@68 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (M1.Literal.litNumber_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.M1.Literal $h@@23))) ($IsAlloc intType (int_2_U (M1.Literal.num d@@68)) TInt $h@@23))
 :qid |unknown.0:0|
 :skolemid |2690|
 :pattern ( ($IsAlloc intType (int_2_U (M1.Literal.num d@@68)) TInt $h@@23))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@20 T@U) (|expr#0@@7| T@U) (|st#0@@37| T@U) (|env#0@@20| T@U) ) (!  (=> (or (|M1.__default.eval#canCall| (Lit DatatypeTypeType |expr#0@@7|) |st#0@@37| |env#0@@20|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@7| Tclass.M1.Expression) ($Is DatatypeTypeType |st#0@@37| Tclass.M1.State)) ($IsBox |env#0@@20| Tclass.M1.Env)) (M1.__default.ValidEnv |env#0@@20|)))) (and (and (|M1.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@7|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.__default.Value (Lit DatatypeTypeType |expr#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@7|))))) (|M1.__default.GetEnv#canCall| (Lit BoxType (M1.Expression.id (Lit DatatypeTypeType |expr#0@@7|))) |env#0@@20|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@7|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|) (let ((|st'#4| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|cond'#1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
 (and (and (=> (M1.Expression.exprLiteral_q |cond'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#1|))) (=> (and (M1.Expression.exprLiteral_q |cond'#1|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#1|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@7|))) |st'#4| |env#0@@20|))) (=> (not (and (M1.Expression.exprLiteral_q |cond'#1|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#1|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |cond'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |cond'#1|))) (=> (and (M1.Expression.exprLiteral_q |cond'#1|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#1|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@7|))) |st'#4| |env#0@@20|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@7|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|) (let ((|st'#5| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|conj0'#1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
 (and (and (=> (M1.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#1|))) (=> (and (M1.Expression.exprLiteral_q |conj0'#1|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#1|) |#M1.Literal.litTrue|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.conj1 (Lit DatatypeTypeType |expr#0@@7|))) |st'#5| |env#0@@20|))) (=> (not (and (M1.Expression.exprLiteral_q |conj0'#1|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#1|) |#M1.Literal.litTrue|))) (=> (M1.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |conj0'#1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@7|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@7|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|) (let ((|st'#6| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|disj0'#1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
 (and (=> (M1.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#1|))) (=> (not (and (M1.Expression.exprLiteral_q |disj0'#1|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#1|) |#M1.Literal.litTrue|))) (and (=> (M1.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M1.Literal| (M1.Expression.lit |disj0'#1|))) (=> (and (M1.Expression.exprLiteral_q |disj0'#1|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#1|) |#M1.Literal.litFalse|)) (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.disj1 (Lit DatatypeTypeType |expr#0@@7|))) |st'#6| |env#0@@20|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@7|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@7|))))) (and (|M1.__default.eval#canCall| (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|) (let ((|st'#7| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|fun'#1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
 (and (|M1.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0@@7|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|) (let ((|sts'#1| ($Unbox SetType (M1.Tuple.snd (M1.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|args'#1| ($Unbox SeqType (M1.Tuple.fst (M1.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|sts''#1| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7|)) |sts'#1|)))
 (and (|M1.__default.Compatible#canCall| |sts''#1|) (=> (M1.__default.Compatible |sts''#1|) (and (|M1.__default.Combine#canCall| |sts''#1|) (let ((|stCombined#1| (M1.__default.Combine ($LS $LZ) |sts''#1|)))
 (=> (and (M1.Expression.exprLiteral_q |fun'#1|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#1|))) (=> (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#1|))) (and (and (|M1.__default.Arity#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#1|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (|M1.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#1| |stCombined#1|))) (=> (and (= (|Seq#Length| |args'#1|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#1| |stCombined#1|)) (and (|M1.__default.exec#canCall| (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|) (let ((|ps#1| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|)))
 (and (M1.Tuple.Pair_q |ps#1|) (M1.Tuple.Pair_q |ps#1|)))))))))))))))))))))))))))))) (= (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) |st#0@@37| |env#0@@20|) (ite (M1.__default.Value (Lit DatatypeTypeType |expr#0@@7|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@7|)) ($Box DatatypeTypeType |st#0@@37|)) (ite (M1.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@7|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (M1.__default.GetEnv (Lit BoxType (M1.Expression.id (Lit DatatypeTypeType |expr#0@@7|))) |env#0@@20|)) ($Box DatatypeTypeType |st#0@@37|)) (ite (M1.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@7|)) (let ((|st'#4@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|cond'#1@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.cond (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(ite  (and (M1.Expression.exprLiteral_q |cond'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#1@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@7|))) |st'#4@@0| |env#0@@20|) (ite  (and (M1.Expression.exprLiteral_q |cond'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |cond'#1@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@7|))) |st'#4@@0| |env#0@@20|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|)))))) (ite (M1.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@7|)) (let ((|st'#5@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|conj0'#1@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.conj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(ite  (and (M1.Expression.exprLiteral_q |conj0'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#1@@0|) |#M1.Literal.litTrue|)) (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.conj1 (Lit DatatypeTypeType |expr#0@@7|))) |st'#5@@0| |env#0@@20|) (ite  (and (M1.Expression.exprLiteral_q |conj0'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |conj0'#1@@0|) |#M1.Literal.litFalse|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#5@@0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|)))))) (ite (M1.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@7|)) (let ((|st'#6@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|disj0'#1@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.disj0 (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(ite  (and (M1.Expression.exprLiteral_q |disj0'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#1@@0|) |#M1.Literal.litTrue|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |#M1.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#6@@0|)) (ite  (and (M1.Expression.exprLiteral_q |disj0'#1@@0|) (|M1.Literal#Equal| (M1.Expression.lit |disj0'#1@@0|) |#M1.Literal.litFalse|)) (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.disj1 (Lit DatatypeTypeType |expr#0@@7|))) |st'#6@@0| |env#0@@20|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|)))))) (ite (M1.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@7|)) (let ((|st'#7@@0| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|fun'#1@@0| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType (M1.Expression.fun (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|sts'#1@@0| ($Unbox SetType (M1.Tuple.snd (M1.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|args'#1@@0| ($Unbox SeqType (M1.Tuple.fst (M1.__default.evalArgs ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) (Lit SeqType (M1.Expression.args (Lit DatatypeTypeType |expr#0@@7|))) |st#0@@37| |env#0@@20|)))))
(let ((|sts''#1@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7@@0|)) |sts'#1@@0|)))
(ite  (not (M1.__default.Compatible |sts''#1@@0|)) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@37|)) (let ((|stCombined#1@@0| (M1.__default.Combine ($LS $LZ) |sts''#1@@0|)))
(ite  (and (M1.Expression.exprLiteral_q |fun'#1@@0|) (M1.Literal.litPrimitive_q (M1.Expression.lit |fun'#1@@0|))) (ite (M1.Primitive.primExec_q (M1.Literal.prim (M1.Expression.lit |fun'#1@@0|))) (ite  (and (= (|Seq#Length| |args'#1@@0|) (LitInt (M1.__default.Arity (Lit DatatypeTypeType |#M1.Primitive.primExec|)))) (M1.__default.ValidArgs (Lit DatatypeTypeType |#M1.Primitive.primExec|) |args'#1@@0| |stCombined#1@@0|)) (let ((|ps#1@@0| (M1.__default.exec (M1.Literal.str (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 0))))) (M1.Literal.paths (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 1))))) (M1.Literal.strs (M1.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 2))))) |stCombined#1@@0|)))
(|#M1.Tuple.Pair| ($Box DatatypeTypeType (|#M1.Expression.exprLiteral| (|#M1.Literal.litArrOfPaths| ($Unbox SetType (M1.Tuple.fst |ps#1@@0|))))) (M1.Tuple.snd |ps#1@@0|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|)))))))))) (|#M1.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M1.Expression.exprError| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@37|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |2374|
 :pattern ( (M1.__default.eval ($LS $ly@@20) (Lit DatatypeTypeType |expr#0@@7|) |st#0@@37| |env#0@@20|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|p#0@@11| T@U) (|st#0@@38| T@U) ) (!  (=> (and (or (|M1.__default.Oracle#canCall| |p#0@@11| |st#0@@38|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@11| Tclass.M1.Path) ($IsAllocBox |p#0@@11| Tclass.M1.Path $Heap@@11)) (and ($Is DatatypeTypeType |st#0@@38| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@38| Tclass.M1.State $Heap@@11))))) ($IsGoodHeap $Heap@@11)) ($IsAllocBox (M1.__default.Oracle |p#0@@11| |st#0@@38|) Tclass.M1.Artifact $Heap@@11))
 :qid |CloudMakeParallelBuildsdfy.104:18|
 :skolemid |2269|
 :pattern ( ($IsAllocBox (M1.__default.Oracle |p#0@@11| |st#0@@38|) Tclass.M1.Artifact $Heap@@11))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@12 T@U) (|st#0@@39| T@U) (|st'#0@@7| T@U) ) (!  (=> (and (or (|M1.__default.Union#canCall| |st#0@@39| |st'#0@@7|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@39| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@39| Tclass.M1.State $Heap@@12)) (and ($Is DatatypeTypeType |st'#0@@7| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st'#0@@7| Tclass.M1.State $Heap@@12))))) ($IsGoodHeap $Heap@@12)) ($IsAlloc DatatypeTypeType (M1.__default.Union |st#0@@39| |st'#0@@7|) Tclass.M1.State $Heap@@12))
 :qid |CloudMakeParallelBuildsdfy.23:18|
 :skolemid |2127|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.Union |st#0@@39| |st'#0@@7|) Tclass.M1.State $Heap@@12))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1657|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1658|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1659|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1660|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1668|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@11) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1666|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1667|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@11))
)))
(assert (forall ((d@@69 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@69)) (DtRank d@@69))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1468|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@69)))
)))
(assert (forall ((s@@18 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@18 n@@7) x@@14) (exists ((i@@10 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@10)) (< i@@10 (|Seq#Length| s@@18))) (= (|Seq#Index| s@@18 i@@10) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |1621|
 :pattern ( (|Seq#Index| s@@18 i@@10))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |1622|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@18 n@@7) x@@14))
)))
(assert (forall ((bx@@17 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1416|
 :pattern ( ($IsBox bx@@17 (TSet t@@11)))
)))
(assert (forall ((bx@@18 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@18 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@18)) bx@@18) ($Is SeqType ($Unbox SeqType bx@@18) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1419|
 :pattern ( ($IsBox bx@@18 (TSeq t@@12)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@40| T@U) (|st'#0@@8| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| |st#0@@40| |st'#0@@8|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@40| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@8| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| |st#0@@40|) (|M1.__default.DomSt#canCall| |st'#0@@8|)) (=> (|Set#Subset| (M1.__default.DomSt |st#0@@40|) (M1.__default.DomSt |st'#0@@8|)) (and (forall ((|p#0@@12| T@U) ) (!  (=> ($IsBox |p#0@@12| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@40|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@12|) (and (|M1.__default.GetSt#canCall| |p#0@@12| |st'#0@@8|) (|M1.__default.GetSt#canCall| |p#0@@12| |st#0@@40|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2279|
 :pattern ( (M1.__default.GetSt |p#0@@12| |st#0@@40|))
 :pattern ( (M1.__default.GetSt |p#0@@12| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@12|))
)) (=> (forall ((|p#0@@13| T@U) ) (!  (=> ($IsBox |p#0@@13| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@13|) (= (M1.__default.GetSt |p#0@@13| |st'#0@@8|) (M1.__default.GetSt |p#0@@13| |st#0@@40|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2281|
 :pattern ( (M1.__default.GetSt |p#0@@13| |st#0@@40|))
 :pattern ( (M1.__default.GetSt |p#0@@13| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@13|))
)) (forall ((|p#1@@3| T@U) ) (!  (=> ($IsBox |p#1@@3| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@40|) (=> (not (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#1@@3|)) (and (|M1.__default.DomSt#canCall| |st'#0@@8|) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@8|) |p#1@@3|) (and (|M1.__default.GetSt#canCall| |p#1@@3| |st'#0@@8|) (|M1.__default.Oracle#canCall| |p#1@@3| |st#0@@40|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2280|
 :pattern ( (M1.__default.Oracle |p#1@@3| |st#0@@40|))
 :pattern ( (M1.__default.GetSt |p#1@@3| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@8|) |p#1@@3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#1@@3|))
)))))) (= (M1.__default.Extends |st#0@@40| |st'#0@@8|)  (and (and (|Set#Subset| (M1.__default.DomSt |st#0@@40|) (M1.__default.DomSt |st'#0@@8|)) (forall ((|p#0@@14| T@U) ) (!  (=> ($IsBox |p#0@@14| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@14|) (= (M1.__default.GetSt |p#0@@14| |st'#0@@8|) (M1.__default.GetSt |p#0@@14| |st#0@@40|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2277|
 :pattern ( (M1.__default.GetSt |p#0@@14| |st#0@@40|))
 :pattern ( (M1.__default.GetSt |p#0@@14| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#0@@14|))
))) (forall ((|p#1@@4| T@U) ) (!  (=> ($IsBox |p#1@@4| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#1@@4|)) (|Set#IsMember| (M1.__default.DomSt |st'#0@@8|) |p#1@@4|)) (= (M1.__default.GetSt |p#1@@4| |st'#0@@8|) (M1.__default.Oracle |p#1@@4| |st#0@@40|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2278|
 :pattern ( (M1.__default.Oracle |p#1@@4| |st#0@@40|))
 :pattern ( (M1.__default.GetSt |p#1@@4| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@8|) |p#1@@4|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@40|) |p#1@@4|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |2282|
 :pattern ( (M1.__default.Extends |st#0@@40| |st'#0@@8|))
))))
(assert (forall ((v@@12 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@5 t1@@2)) (forall ((bx@@19 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@19) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@19) t1@@2) ($IsBox bx@@19 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |1439|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@19))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@19))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |1440|
 :pattern ( ($Is MapType v@@12 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@70 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) ($Is DatatypeTypeType d@@70 Tclass.M1.Primitive)) ($IsAlloc DatatypeTypeType d@@70 Tclass.M1.Primitive $h@@24))
 :qid |unknown.0:0|
 :skolemid |2762|
 :pattern ( ($IsAlloc DatatypeTypeType d@@70 Tclass.M1.Primitive $h@@24))
)))
(assert (forall ((d@@71 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) ($Is DatatypeTypeType d@@71 Tclass.M1.Reason)) ($IsAlloc DatatypeTypeType d@@71 Tclass.M1.Reason $h@@25))
 :qid |unknown.0:0|
 :skolemid |2772|
 :pattern ( ($IsAlloc DatatypeTypeType d@@71 Tclass.M1.Reason $h@@25))
)))
(assert (= (Tag Tclass.M1.State) Tagclass.M1.State))
(assert (= (TagFamily Tclass.M1.State) tytagFamily$State))
(assert (= (Tag Tclass.M1.Expression) Tagclass.M1.Expression))
(assert (= (TagFamily Tclass.M1.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M1.Primitive) Tagclass.M1.Primitive))
(assert (= (TagFamily Tclass.M1.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M1.Program) Tagclass.M1.Program))
(assert (= (TagFamily Tclass.M1.Program) tytagFamily$Program))
(assert (= (Tag Tclass.M1.Statement) Tagclass.M1.Statement))
(assert (= (TagFamily Tclass.M1.Statement) tytagFamily$Statement))
(assert (= (Tag Tclass.M1.Literal) Tagclass.M1.Literal))
(assert (= (TagFamily Tclass.M1.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M1.Reason) Tagclass.M1.Reason))
(assert (= (TagFamily Tclass.M1.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@8| T@U) ) (!  (=> (or (|M1.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@8|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@8| Tclass.M1.Expression))) (= (M1.__default.Value (Lit DatatypeTypeType |expr#0@@8|)) (U_2_bool (Lit boolType (bool_2_U (M1.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@8|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |2337|
 :pattern ( (M1.__default.Value (Lit DatatypeTypeType |expr#0@@8|)))
))))
(assert (forall ((s@@19 T@U) (n@@8 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k@@0)) (< k@@0 (|Seq#Length| s@@19))) (= (|Seq#Index| (|Seq#Drop| s@@19 n@@8) (- k@@0 n@@8)) (|Seq#Index| s@@19 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |1632|
 :pattern ( (|Seq#Index| s@@19 k@@0) (|Seq#Drop| s@@19 n@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@5| T@U) (|deps#0@@5| T@U) (|exps#0@@4| T@U) (|st#0@@41| T@U) ) (!  (=> (or (|M1.__default.Pre#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@41|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@5| (TSeq TChar)) ($Is SetType |deps#0@@5| (TSet Tclass.M1.Path))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@41| Tclass.M1.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@4|) ($Box SeqType |e#2|)) (and (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|) (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@41|))) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@41|))) (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|)) (and (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|) (|M1.__default.GetSt#canCall| (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|) (Lit DatatypeTypeType |st#0@@41|))) (and (|M1.__default.Loc#canCall| (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|) (|M1.__default.Oracle#canCall| (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2|) (Lit DatatypeTypeType |st#0@@41|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2225|
 :pattern ( (M1.__default.Loc |cmd#0@@5| |deps#0@@5| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#2|)))
)) (= (M1.__default.Pre (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@41|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@4|) ($Box SeqType |e#2@@0|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@41|))) (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2@@0|)) (= (M1.__default.GetSt (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@41|)) (M1.__default.Oracle (M1.__default.Loc (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@41|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |2224|
 :pattern ( (M1.__default.Loc |cmd#0@@5| |deps#0@@5| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@4| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |2226|
 :pattern ( (M1.__default.Pre (Lit SeqType |cmd#0@@5|) (Lit SetType |deps#0@@5|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@41|)))
))))
(assert (= |#M1.Literal.litTrue| (Lit DatatypeTypeType |#M1.Literal.litTrue|)))
(assert (= |#M1.Literal.litFalse| (Lit DatatypeTypeType |#M1.Literal.litFalse|)))
(assert (= |#M1.Literal.litUndefined| (Lit DatatypeTypeType |#M1.Literal.litUndefined|)))
(assert (= |#M1.Literal.litNull| (Lit DatatypeTypeType |#M1.Literal.litNull|)))
(assert (= |#M1.Primitive.primCreatePath| (Lit DatatypeTypeType |#M1.Primitive.primCreatePath|)))
(assert (= |#M1.Primitive.primExec| (Lit DatatypeTypeType |#M1.Primitive.primExec|)))
(assert (= |#M1.Reason.rCompatibility| (Lit DatatypeTypeType |#M1.Reason.rCompatibility|)))
(assert (= |#M1.Reason.rValidity| (Lit DatatypeTypeType |#M1.Reason.rValidity|)))
(assert (forall ((|a#102#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litString| |a#102#0#0@@0|) Tclass.M1.Literal) ($Is SeqType |a#102#0#0@@0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2697|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litString| |a#102#0#0@@0|) Tclass.M1.Literal))
)))
(assert (forall ((d@@72 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (M1.Literal.litString_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass.M1.Literal $h@@26))) ($IsAlloc SeqType (M1.Literal.str d@@72) (TSeq TChar) $h@@26))
 :qid |unknown.0:0|
 :skolemid |2699|
 :pattern ( ($IsAlloc SeqType (M1.Literal.str d@@72) (TSeq TChar) $h@@26))
)))
(assert (forall ((|a#118#0#0| T@U) (d@@73 T@U) ) (!  (=> (|Set#IsMember| |a#118#0#0| ($Box DatatypeTypeType d@@73)) (< (DtRank d@@73) (DtRank (|#M1.Literal.litArrOfPaths| |a#118#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2723|
 :pattern ( (|Set#IsMember| |a#118#0#0| ($Box DatatypeTypeType d@@73)) (|#M1.Literal.litArrOfPaths| |a#118#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) (d@@74 T@U) ) (!  (=> (|Set#IsMember| |a#124#0#0| ($Box DatatypeTypeType d@@74)) (< (DtRank d@@74) (DtRank (|#M1.Literal.litArrOfStrings| |a#124#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2733|
 :pattern ( (|Set#IsMember| |a#124#0#0| ($Box DatatypeTypeType d@@74)) (|#M1.Literal.litArrOfStrings| |a#124#0#0|))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prog#0@@3| T@U) (|st#0@@42| T@U) ) (!  (=> (or (|M1.__default.build#canCall| (Lit DatatypeTypeType |prog#0@@3|) (Lit DatatypeTypeType |st#0@@42|)) (and (< 7 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@3| Tclass.M1.Program) ($Is DatatypeTypeType |st#0@@42| Tclass.M1.State)) (U_2_bool (Lit boolType (bool_2_U (M1.__default.Legal (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@3|)))))))))) (and (and (and (M1.Program.Program_q (Lit DatatypeTypeType |prog#0@@3|)) |M1.__default.EmptyEnv#canCall|) (|M1.__default.do#canCall| (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@3|))) (Lit DatatypeTypeType |st#0@@42|) M1.__default.EmptyEnv)) (= (M1.__default.build (Lit DatatypeTypeType |prog#0@@3|) (Lit DatatypeTypeType |st#0@@42|)) (M1.__default.do ($LS $LZ) (Lit SeqType (M1.Program.stmts (Lit DatatypeTypeType |prog#0@@3|))) (Lit DatatypeTypeType |st#0@@42|) M1.__default.EmptyEnv))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |2343|
 :pattern ( (M1.__default.build (Lit DatatypeTypeType |prog#0@@3|) (Lit DatatypeTypeType |st#0@@42|)))
))))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (! (= (|Set#Equal| a@@33 b@@30) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@33 o@@5) (|Set#IsMember| b@@30 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1532|
 :pattern ( (|Set#IsMember| a@@33 o@@5))
 :pattern ( (|Set#IsMember| b@@30 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1533|
 :pattern ( (|Set#Equal| a@@33 b@@30))
)))
(assert (forall ((s@@20 T@U) (m@@9 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@9) (<= 0 n@@9)) (<= (+ m@@9 n@@9) (|Seq#Length| s@@20))) (= (|Seq#Drop| (|Seq#Drop| s@@20 m@@9) n@@9) (|Seq#Drop| s@@20 (+ m@@9 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |1641|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@20 m@@9) n@@9))
)))
(assert (forall ((d@@75 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_System.Tuple2.___hMake2_q d@@75) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@75 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27)
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($IsAlloc DatatypeTypeType d@@75 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@27))
)))) ($IsAllocBox (_System.Tuple2._0 d@@75) |_System._tuple#2$T0@@6| $h@@27))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@75) |_System._tuple#2$T0@@6| $h@@27))
)))
(assert (forall ((d@@76 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (_System.Tuple2.___hMake2_q d@@76) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@76 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28)
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( ($IsAlloc DatatypeTypeType d@@76 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@28))
)))) ($IsAllocBox (_System.Tuple2._1 d@@76) |_System._tuple#2$T1@@7| $h@@28))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@76) |_System._tuple#2$T1@@7| $h@@28))
)))
(assert (forall ((d@@77 T@U) (M1.Tuple$A@@6 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M1.Tuple.Pair_q d@@77) (exists ((M1.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@77 (Tclass.M1.Tuple M1.Tuple$A@@6 M1.Tuple$B@@6) $h@@29)
 :qid |unknown.0:0|
 :skolemid |2784|
 :pattern ( ($IsAlloc DatatypeTypeType d@@77 (Tclass.M1.Tuple M1.Tuple$A@@6 M1.Tuple$B@@6) $h@@29))
)))) ($IsAllocBox (M1.Tuple.fst d@@77) M1.Tuple$A@@6 $h@@29))
 :qid |unknown.0:0|
 :skolemid |2785|
 :pattern ( ($IsAllocBox (M1.Tuple.fst d@@77) M1.Tuple$A@@6 $h@@29))
)))
(assert (forall ((d@@78 T@U) (M1.Tuple$B@@7 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M1.Tuple.Pair_q d@@78) (exists ((M1.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@78 (Tclass.M1.Tuple M1.Tuple$A@@7 M1.Tuple$B@@7) $h@@30)
 :qid |unknown.0:0|
 :skolemid |2786|
 :pattern ( ($IsAlloc DatatypeTypeType d@@78 (Tclass.M1.Tuple M1.Tuple$A@@7 M1.Tuple$B@@7) $h@@30))
)))) ($IsAllocBox (M1.Tuple.snd d@@78) M1.Tuple$B@@7 $h@@30))
 :qid |unknown.0:0|
 :skolemid |2787|
 :pattern ( ($IsAllocBox (M1.Tuple.snd d@@78) M1.Tuple$B@@7 $h@@30))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |1611|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((d@@79 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M1.Statement.stmtVariable_q d@@79) ($IsAlloc DatatypeTypeType d@@79 Tclass.M1.Statement $h@@31))) ($IsAllocBox (M1.Statement.id d@@79) Tclass.M1.Identifier $h@@31))
 :qid |unknown.0:0|
 :skolemid |2554|
 :pattern ( ($IsAllocBox (M1.Statement.id d@@79) Tclass.M1.Identifier $h@@31))
)))
(assert (forall ((d@@80 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M1.Statement.stmtVariable_q d@@80) ($IsAlloc DatatypeTypeType d@@80 Tclass.M1.Statement $h@@32))) ($IsAlloc DatatypeTypeType (M1.Statement.expr d@@80) Tclass.M1.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |2555|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Statement.expr d@@80) Tclass.M1.Expression $h@@32))
)))
(assert (forall ((d@@81 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M1.Statement.stmtReturn_q d@@81) ($IsAlloc DatatypeTypeType d@@81 Tclass.M1.Statement $h@@33))) ($IsAlloc DatatypeTypeType (M1.Statement.ret d@@81) Tclass.M1.Expression $h@@33))
 :qid |unknown.0:0|
 :skolemid |2566|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Statement.ret d@@81) Tclass.M1.Expression $h@@33))
)))
(assert (forall ((d@@82 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M1.Expression.exprLiteral_q d@@82) ($IsAlloc DatatypeTypeType d@@82 Tclass.M1.Expression $h@@34))) ($IsAlloc DatatypeTypeType (M1.Expression.lit d@@82) Tclass.M1.Literal $h@@34))
 :qid |unknown.0:0|
 :skolemid |2582|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.lit d@@82) Tclass.M1.Literal $h@@34))
)))
(assert (forall ((d@@83 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M1.Expression.exprIdentifier_q d@@83) ($IsAlloc DatatypeTypeType d@@83 Tclass.M1.Expression $h@@35))) ($IsAllocBox (M1.Expression.id d@@83) Tclass.M1.Identifier $h@@35))
 :qid |unknown.0:0|
 :skolemid |2592|
 :pattern ( ($IsAllocBox (M1.Expression.id d@@83) Tclass.M1.Identifier $h@@35))
)))
(assert (forall ((d@@84 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M1.Expression.exprIf_q d@@84) ($IsAlloc DatatypeTypeType d@@84 Tclass.M1.Expression $h@@36))) ($IsAlloc DatatypeTypeType (M1.Expression.cond d@@84) Tclass.M1.Expression $h@@36))
 :qid |unknown.0:0|
 :skolemid |2601|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.cond d@@84) Tclass.M1.Expression $h@@36))
)))
(assert (forall ((d@@85 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M1.Expression.exprIf_q d@@85) ($IsAlloc DatatypeTypeType d@@85 Tclass.M1.Expression $h@@37))) ($IsAlloc DatatypeTypeType (M1.Expression.ifTrue d@@85) Tclass.M1.Expression $h@@37))
 :qid |unknown.0:0|
 :skolemid |2602|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.ifTrue d@@85) Tclass.M1.Expression $h@@37))
)))
(assert (forall ((d@@86 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M1.Expression.exprIf_q d@@86) ($IsAlloc DatatypeTypeType d@@86 Tclass.M1.Expression $h@@38))) ($IsAlloc DatatypeTypeType (M1.Expression.ifFalse d@@86) Tclass.M1.Expression $h@@38))
 :qid |unknown.0:0|
 :skolemid |2603|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.ifFalse d@@86) Tclass.M1.Expression $h@@38))
)))
(assert (forall ((d@@87 T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (M1.Expression.exprAnd_q d@@87) ($IsAlloc DatatypeTypeType d@@87 Tclass.M1.Expression $h@@39))) ($IsAlloc DatatypeTypeType (M1.Expression.conj0 d@@87) Tclass.M1.Expression $h@@39))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.conj0 d@@87) Tclass.M1.Expression $h@@39))
)))
(assert (forall ((d@@88 T@U) ($h@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (M1.Expression.exprAnd_q d@@88) ($IsAlloc DatatypeTypeType d@@88 Tclass.M1.Expression $h@@40))) ($IsAlloc DatatypeTypeType (M1.Expression.conj1 d@@88) Tclass.M1.Expression $h@@40))
 :qid |unknown.0:0|
 :skolemid |2618|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.conj1 d@@88) Tclass.M1.Expression $h@@40))
)))
(assert (forall ((d@@89 T@U) ($h@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (M1.Expression.exprOr_q d@@89) ($IsAlloc DatatypeTypeType d@@89 Tclass.M1.Expression $h@@41))) ($IsAlloc DatatypeTypeType (M1.Expression.disj0 d@@89) Tclass.M1.Expression $h@@41))
 :qid |unknown.0:0|
 :skolemid |2630|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.disj0 d@@89) Tclass.M1.Expression $h@@41))
)))
(assert (forall ((d@@90 T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (M1.Expression.exprOr_q d@@90) ($IsAlloc DatatypeTypeType d@@90 Tclass.M1.Expression $h@@42))) ($IsAlloc DatatypeTypeType (M1.Expression.disj1 d@@90) Tclass.M1.Expression $h@@42))
 :qid |unknown.0:0|
 :skolemid |2631|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.disj1 d@@90) Tclass.M1.Expression $h@@42))
)))
(assert (forall ((d@@91 T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (M1.Expression.exprInvocation_q d@@91) ($IsAlloc DatatypeTypeType d@@91 Tclass.M1.Expression $h@@43))) ($IsAlloc DatatypeTypeType (M1.Expression.fun d@@91) Tclass.M1.Expression $h@@43))
 :qid |unknown.0:0|
 :skolemid |2643|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.fun d@@91) Tclass.M1.Expression $h@@43))
)))
(assert (forall ((d@@92 T@U) ($h@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (M1.Expression.exprError_q d@@92) ($IsAlloc DatatypeTypeType d@@92 Tclass.M1.Expression $h@@44))) ($IsAlloc DatatypeTypeType (M1.Expression.r d@@92) Tclass.M1.Reason $h@@44))
 :qid |unknown.0:0|
 :skolemid |2658|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Expression.r d@@92) Tclass.M1.Reason $h@@44))
)))
(assert (forall ((d@@93 T@U) ($h@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@45) (and (M1.Literal.litPrimitive_q d@@93) ($IsAlloc DatatypeTypeType d@@93 Tclass.M1.Literal $h@@45))) ($IsAlloc DatatypeTypeType (M1.Literal.prim d@@93) Tclass.M1.Primitive $h@@45))
 :qid |unknown.0:0|
 :skolemid |2710|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Literal.prim d@@93) Tclass.M1.Primitive $h@@45))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1846|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= (|#M1.Statement.stmtVariable| (Lit BoxType |a#17#0#0|) (Lit DatatypeTypeType |a#17#1#0|)) (Lit DatatypeTypeType (|#M1.Statement.stmtVariable| |a#17#0#0| |a#17#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |2556|
 :pattern ( (|#M1.Statement.stmtVariable| (Lit BoxType |a#17#0#0|) (Lit DatatypeTypeType |a#17#1#0|)))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= (|#M1.Expression.exprAnd| (Lit DatatypeTypeType |a#51#0#0|) (Lit DatatypeTypeType |a#51#1#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprAnd| |a#51#0#0| |a#51#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |2619|
 :pattern ( (|#M1.Expression.exprAnd| (Lit DatatypeTypeType |a#51#0#0|) (Lit DatatypeTypeType |a#51#1#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= (|#M1.Expression.exprOr| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprOr| |a#59#0#0| |a#59#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |2632|
 :pattern ( (|#M1.Expression.exprOr| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|)))
)))
(assert (forall ((|a#67#0#0| T@U) (|a#67#1#0| T@U) ) (! (= (|#M1.Expression.exprInvocation| (Lit DatatypeTypeType |a#67#0#0|) (Lit SeqType |a#67#1#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprInvocation| |a#67#0#0| |a#67#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |2645|
 :pattern ( (|#M1.Expression.exprInvocation| (Lit DatatypeTypeType |a#67#0#0|) (Lit SeqType |a#67#1#0|)))
)))
(assert (forall ((|a#151#0#0| T@U) (|a#151#1#0| T@U) ) (! (= (|#M1.Tuple.Pair| (Lit BoxType |a#151#0#0|) (Lit BoxType |a#151#1#0|)) (Lit DatatypeTypeType (|#M1.Tuple.Pair| |a#151#0#0| |a#151#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |2788|
 :pattern ( (|#M1.Tuple.Pair| (Lit BoxType |a#151#0#0|) (Lit BoxType |a#151#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1402|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#M1.State.StateCons| (Lit MapType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M1.State.StateCons| |a#3#0#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2525|
 :pattern ( (|#M1.State.StateCons| (Lit MapType |a#3#0#0@@0|)))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (|#M1.Program.Program| (Lit SeqType |a#10#0#0|)) (Lit DatatypeTypeType (|#M1.Program.Program| |a#10#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |2540|
 :pattern ( (|#M1.Program.Program| (Lit SeqType |a#10#0#0|)))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (|#M1.Statement.stmtReturn| (Lit DatatypeTypeType |a#24#0#0|)) (Lit DatatypeTypeType (|#M1.Statement.stmtReturn| |a#24#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |2567|
 :pattern ( (|#M1.Statement.stmtReturn| (Lit DatatypeTypeType |a#24#0#0|)))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (= (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |a#30#0#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprLiteral| |a#30#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |2583|
 :pattern ( (|#M1.Expression.exprLiteral| (Lit DatatypeTypeType |a#30#0#0|)))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= (|#M1.Expression.exprIdentifier| (Lit BoxType |a#36#0#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprIdentifier| |a#36#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |2593|
 :pattern ( (|#M1.Expression.exprIdentifier| (Lit BoxType |a#36#0#0|)))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (|#M1.Expression.exprError| (Lit DatatypeTypeType |a#76#0#0|)) (Lit DatatypeTypeType (|#M1.Expression.exprError| |a#76#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |2659|
 :pattern ( (|#M1.Expression.exprError| (Lit DatatypeTypeType |a#76#0#0|)))
)))
(assert (forall ((|a#98#0#0| Int) ) (! (= (|#M1.Literal.litNumber| (LitInt |a#98#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litNumber| |a#98#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |2691|
 :pattern ( (|#M1.Literal.litNumber| (LitInt |a#98#0#0|)))
)))
(assert (forall ((|a#103#0#0| T@U) ) (! (= (|#M1.Literal.litString| (Lit SeqType |a#103#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litString| |a#103#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |2700|
 :pattern ( (|#M1.Literal.litString| (Lit SeqType |a#103#0#0|)))
)))
(assert (forall ((|a#110#0#0| T@U) ) (! (= (|#M1.Literal.litPrimitive| (Lit DatatypeTypeType |a#110#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litPrimitive| |a#110#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |2711|
 :pattern ( (|#M1.Literal.litPrimitive| (Lit DatatypeTypeType |a#110#0#0|)))
)))
(assert (forall ((|a#116#0#0| T@U) ) (! (= (|#M1.Literal.litArrOfPaths| (Lit SetType |a#116#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litArrOfPaths| |a#116#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |2721|
 :pattern ( (|#M1.Literal.litArrOfPaths| (Lit SetType |a#116#0#0|)))
)))
(assert (forall ((|a#122#0#0| T@U) ) (! (= (|#M1.Literal.litArrOfStrings| (Lit SetType |a#122#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litArrOfStrings| |a#122#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2731|
 :pattern ( (|#M1.Literal.litArrOfStrings| (Lit SetType |a#122#0#0|)))
)))
(assert (forall ((|a#128#0#0| T@U) ) (! (= (|#M1.Literal.litArray| (Lit SeqType |a#128#0#0|)) (Lit DatatypeTypeType (|#M1.Literal.litArray| |a#128#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |2741|
 :pattern ( (|#M1.Literal.litArray| (Lit SeqType |a#128#0#0|)))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1400|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (d@@94 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@94)) (< (DtRank d@@94) (DtRank (|#M1.State.StateCons| |a#5#0#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2527|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@94)) (|#M1.State.StateCons| |a#5#0#0@@0|))
)))
(assert (forall ((d@@95 T@U) ($h@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@46) (and (M1.Literal.litArrOfStrings_q d@@95) ($IsAlloc DatatypeTypeType d@@95 Tclass.M1.Literal $h@@46))) ($IsAlloc SetType (M1.Literal.strs d@@95) (TSet (TSeq TChar)) $h@@46))
 :qid |unknown.0:0|
 :skolemid |2730|
 :pattern ( ($IsAlloc SetType (M1.Literal.strs d@@95) (TSet (TSeq TChar)) $h@@46))
)))
(assert (forall ((s@@21 T@U) ) (!  (=> (= (|Seq#Length| s@@21) 0) (= s@@21 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1606|
 :pattern ( (|Seq#Length| s@@21))
)))
(assert (forall ((s@@22 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@22 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |1640|
 :pattern ( (|Seq#Take| s@@22 n@@11))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@21 T@U) (|sts#0@@5| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| |sts#0@@5|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |sts#0@@5| (TSet Tclass.M1.State)) (not (|Set#Equal| |sts#0@@5| |Set#Empty|))))) ($Is DatatypeTypeType (M1.__default.Combine $ly@@21 |sts#0@@5|) Tclass.M1.State))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2148|
 :pattern ( (M1.__default.Combine $ly@@21 |sts#0@@5|))
))))
(assert (forall ((|a#121#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Literal.litArrOfStrings| |a#121#0#0@@0|) Tclass.M1.Literal) ($Is SetType |a#121#0#0@@0| (TSet (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |2728|
 :pattern ( ($Is DatatypeTypeType (|#M1.Literal.litArrOfStrings| |a#121#0#0@@0|) Tclass.M1.Literal))
)))
(assert (forall ((d@@96 T@U) ($h@@47 T@U) ) (!  (=> (and ($IsGoodHeap $h@@47) (and (M1.Program.Program_q d@@96) ($IsAlloc DatatypeTypeType d@@96 Tclass.M1.Program $h@@47))) ($IsAlloc SeqType (M1.Program.stmts d@@96) (TSeq Tclass.M1.Statement) $h@@47))
 :qid |unknown.0:0|
 :skolemid |2539|
 :pattern ( ($IsAlloc SeqType (M1.Program.stmts d@@96) (TSeq Tclass.M1.Statement) $h@@47))
)))
(assert (forall ((d@@97 T@U) ($h@@48 T@U) ) (!  (=> (and ($IsGoodHeap $h@@48) (and (M1.Expression.exprInvocation_q d@@97) ($IsAlloc DatatypeTypeType d@@97 Tclass.M1.Expression $h@@48))) ($IsAlloc SeqType (M1.Expression.args d@@97) (TSeq Tclass.M1.Expression) $h@@48))
 :qid |unknown.0:0|
 :skolemid |2644|
 :pattern ( ($IsAlloc SeqType (M1.Expression.args d@@97) (TSeq Tclass.M1.Expression) $h@@48))
)))
(assert (forall ((d@@98 T@U) ($h@@49 T@U) ) (!  (=> (and ($IsGoodHeap $h@@49) (and (M1.Literal.litArrOfPaths_q d@@98) ($IsAlloc DatatypeTypeType d@@98 Tclass.M1.Literal $h@@49))) ($IsAlloc SetType (M1.Literal.paths d@@98) (TSet Tclass.M1.Path) $h@@49))
 :qid |unknown.0:0|
 :skolemid |2720|
 :pattern ( ($IsAlloc SetType (M1.Literal.paths d@@98) (TSet Tclass.M1.Path) $h@@49))
)))
(assert (forall ((d@@99 T@U) ($h@@50 T@U) ) (!  (=> (and ($IsGoodHeap $h@@50) (and (M1.Literal.litArray_q d@@99) ($IsAlloc DatatypeTypeType d@@99 Tclass.M1.Literal $h@@50))) ($IsAlloc SeqType (M1.Literal.arr d@@99) (TSeq Tclass.M1.Expression) $h@@50))
 :qid |unknown.0:0|
 :skolemid |2740|
 :pattern ( ($IsAlloc SeqType (M1.Literal.arr d@@99) (TSeq Tclass.M1.Expression) $h@@50))
)))
(assert (forall ((h@@4 T@U) (v@@13 T@U) ) (! ($IsAlloc intType v@@13 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1445|
 :pattern ( ($IsAlloc intType v@@13 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@14 T@U) ) (! ($IsAlloc charType v@@14 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1448|
 :pattern ( ($IsAlloc charType v@@14 TChar h@@5))
)))
(assert (forall ((v@@15 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@15 (TSeq t0@@6)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@15))) ($IsBox (|Seq#Index| v@@15 i@@11) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1437|
 :pattern ( (|Seq#Index| v@@15 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1438|
 :pattern ( ($Is SeqType v@@15 (TSeq t0@@6)))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@1 T@U) (v@@16 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@16)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1661|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1662|
 :pattern ( (|Map#Items| m@@10))
)))
(assert (forall ((s@@23 T@U) (i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| s@@23))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@23 i@@12))) (|Seq#Rank| s@@23)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1651|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@23 i@@12))))
)))
(assert (forall ((v@@17 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@17 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@17) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@17) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@17) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1441|
 :pattern ( ($Is MapType v@@17 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is intType v@@18 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1424|
 :pattern ( ($Is intType v@@18 TInt))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is charType v@@19 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1427|
 :pattern ( ($Is charType v@@19 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@13 () T@U)
(declare-fun |call3formal@expr'#0| () T@U)
(declare-fun |call4formal@st'#0| () T@U)
(declare-fun |prog#0@@4| () T@U)
(declare-fun |st#0@@43| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@expr'#0@0| () T@U)
(declare-fun |call4formal@st'#0@0| () T@U)
(declare-fun |_v0#0| () T@U)
(declare-fun |_v1#0| () T@U)
(set-info :boogie-vc-id Impl$$M1.__default.ParallelBuildsTheorem)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@13 alloc false)) (=> (and (and ($Is DatatypeTypeType |call3formal@expr'#0| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |call3formal@expr'#0| Tclass.M1.Expression $Heap@@13)) (and ($Is DatatypeTypeType |call4formal@st'#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |call4formal@st'#0| Tclass.M1.State $Heap@@13))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|M1.__default.Legal#canCall| (M1.Program.stmts |prog#0@@4|)) (or (M1.__default.Legal (M1.Program.stmts |prog#0@@4|)) (or (not (= (|Seq#Length| (M1.Program.stmts |prog#0@@4|)) 0)) (not true))))) (=> (=> (|M1.__default.Legal#canCall| (M1.Program.stmts |prog#0@@4|)) (or (M1.__default.Legal (M1.Program.stmts |prog#0@@4|)) (or (not (= (|Seq#Length| (M1.Program.stmts |prog#0@@4|)) 0)) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|M1.__default.ValidState#canCall| |st#0@@43|) (or (M1.__default.ValidState |st#0@@43|) (forall ((|p#0@@15| T@U) ) (!  (=> ($IsBox |p#0@@15| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#0@@15|) (M1.__default.WellFounded |p#0@@15|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2433|
 :pattern ( (M1.__default.WellFounded |p#0@@15|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#0@@15|))
))))) (=> (=> (|M1.__default.ValidState#canCall| |st#0@@43|) (or (M1.__default.ValidState |st#0@@43|) (forall ((|p#0@@16| T@U) ) (!  (=> ($IsBox |p#0@@16| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#0@@16|) (M1.__default.WellFounded |p#0@@16|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2433|
 :pattern ( (M1.__default.WellFounded |p#0@@16|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#0@@16|))
)))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and ($Is DatatypeTypeType |call3formal@expr'#0@0| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |call3formal@expr'#0@0| Tclass.M1.Expression $Heap@0)) (and ($Is DatatypeTypeType |call4formal@st'#0@0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |call4formal@st'#0@0| Tclass.M1.State $Heap@0))) (=> (and (and (and (and (and (|$IsA#M1.Tuple| (M1.__default.build |prog#0@@4| |st#0@@43|)) (|M1.__default.build#canCall| |prog#0@@4| |st#0@@43|)) (=> (|M1.Tuple#Equal| (M1.__default.build |prog#0@@4| |st#0@@43|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |call3formal@expr'#0@0|) ($Box DatatypeTypeType |call4formal@st'#0@0|))) (and (|M1.__default.ValidState#canCall| |call4formal@st'#0@0|) (=> (M1.__default.ValidState |call4formal@st'#0@0|) (and (|M1.__default.Extends#canCall| |st#0@@43| |call4formal@st'#0@0|) (=> (M1.__default.Extends |st#0@@43| |call4formal@st'#0@0|) (=> (M1.Expression.exprError_q |call3formal@expr'#0@0|) (|$IsA#M1.Reason| (M1.Expression.r |call3formal@expr'#0@0|))))))))) (|M1.Tuple#Equal| (M1.__default.build |prog#0@@4| |st#0@@43|) (|#M1.Tuple.Pair| ($Box DatatypeTypeType |call3formal@expr'#0@0|) ($Box DatatypeTypeType |call4formal@st'#0@0|)))) (and (|M1.__default.ValidState#canCall| |call4formal@st'#0@0|) (and (M1.__default.ValidState |call4formal@st'#0@0|) (forall ((|p#1@@5| T@U) ) (!  (=> ($IsBox |p#1@@5| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |call4formal@st'#0@0|) |p#1@@5|) (M1.__default.WellFounded |p#1@@5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2436|
 :pattern ( (M1.__default.WellFounded |p#1@@5|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |call4formal@st'#0@0|) |p#1@@5|))
))))) (and (and (|M1.__default.Extends#canCall| |st#0@@43| |call4formal@st'#0@0|) (and (M1.__default.Extends |st#0@@43| |call4formal@st'#0@0|) (and (and (|Set#Subset| (M1.__default.DomSt |st#0@@43|) (M1.__default.DomSt |call4formal@st'#0@0|)) (forall ((|p#2@@2| T@U) ) (!  (=> ($IsBox |p#2@@2| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#2@@2|) (= (M1.__default.GetSt |p#2@@2| |call4formal@st'#0@0|) (M1.__default.GetSt |p#2@@2| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2439|
 :pattern ( (M1.__default.GetSt |p#2@@2| |st#0@@43|))
 :pattern ( (M1.__default.GetSt |p#2@@2| |call4formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#2@@2|))
))) (forall ((|p#3@@1| T@U) ) (!  (=> ($IsBox |p#3@@1| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#3@@1|)) (|Set#IsMember| (M1.__default.DomSt |call4formal@st'#0@0|) |p#3@@1|)) (= (M1.__default.GetSt |p#3@@1| |call4formal@st'#0@0|) (M1.__default.Oracle |p#3@@1| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2440|
 :pattern ( (M1.__default.Oracle |p#3@@1| |st#0@@43|))
 :pattern ( (M1.__default.GetSt |p#3@@1| |call4formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |call4formal@st'#0@0|) |p#3@@1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#3@@1|))
))))) (and (=> (M1.Expression.exprError_q |call3formal@expr'#0@0|) (|M1.Reason#Equal| (M1.Expression.r |call3formal@expr'#0@0|) |#M1.Reason.rValidity|)) (= $Heap@@13 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (let ((|st'#0@@9| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.build |prog#0@@4| |st#0@@43|)))))
 (=> (|M1.__default.ValidState#canCall| |st'#0@@9|) (or (M1.__default.ValidState |st'#0@@9|) (forall ((|p#3@@2| T@U) ) (!  (=> ($IsBox |p#3@@2| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@9|) |p#3@@2|) (M1.__default.WellFounded |p#3@@2|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2430|
 :pattern ( (M1.__default.WellFounded |p#3@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@9|) |p#3@@2|))
))))))) (=> (=> false (let ((|st'#0@@10| ($Unbox DatatypeTypeType (M1.Tuple.snd (M1.__default.build |prog#0@@4| |st#0@@43|)))))
 (=> (|M1.__default.ValidState#canCall| |st'#0@@10|) (or (M1.__default.ValidState |st'#0@@10|) (forall ((|p#3@@3| T@U) ) (!  (=> ($IsBox |p#3@@3| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@10|) |p#3@@3|) (M1.__default.WellFounded |p#3@@3|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2430|
 :pattern ( (M1.__default.WellFounded |p#3@@3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@10|) |p#3@@3|))
)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (let ((|expr'#0@@1| ($Unbox DatatypeTypeType (M1.Tuple.fst (M1.__default.build |prog#0@@4| |st#0@@43|)))))
 (=> (M1.Expression.exprError_q |expr'#0@@1|) (|M1.Reason#Equal| (M1.Expression.r |expr'#0@@1|) |#M1.Reason.rValidity|))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@13) ($IsHeapAnchor $Heap@@13)) (=> (and (and ($Is DatatypeTypeType |prog#0@@4| Tclass.M1.Program) ($IsAlloc DatatypeTypeType |prog#0@@4| Tclass.M1.Program $Heap@@13)) (|$IsA#M1.Program| |prog#0@@4|)) (=> (and (and (and ($Is DatatypeTypeType |st#0@@43| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@43| Tclass.M1.State $Heap@@13)) (|$IsA#M1.State| |st#0@@43|)) (and (and ($Is DatatypeTypeType |_v0#0| Tclass.M1.Expression) ($IsAlloc DatatypeTypeType |_v0#0| Tclass.M1.Expression $Heap@@13)) true)) (=> (and (and (and (and (and ($Is DatatypeTypeType |_v1#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |_v1#0| Tclass.M1.State $Heap@@13)) true) (= 9 $FunctionContextHeight)) (and (|M1.__default.Legal#canCall| (M1.Program.stmts |prog#0@@4|)) (and (M1.__default.Legal (M1.Program.stmts |prog#0@@4|)) (or (not (= (|Seq#Length| (M1.Program.stmts |prog#0@@4|)) 0)) (not true))))) (and (and (|M1.__default.ValidState#canCall| |st#0@@43|) (and (M1.__default.ValidState |st#0@@43|) (forall ((|p#2@@3| T@U) ) (!  (=> ($IsBox |p#2@@3| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#2@@3|) (M1.__default.WellFounded |p#2@@3|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2429|
 :pattern ( (M1.__default.WellFounded |p#2@@3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@43|) |p#2@@3|))
)))) (= (ControlFlow 0 6) 2))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
