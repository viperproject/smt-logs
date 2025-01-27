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
(declare-fun Tagclass._module.Tuple () T@U)
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
(declare-fun |##_module.Primitive.primCreatePath| () T@U)
(declare-fun |##_module.Primitive.primExec| () T@U)
(declare-fun |##_module.Reason.rCompatibility| () T@U)
(declare-fun |##_module.Reason.rValidity| () T@U)
(declare-fun |##_module.Reason.rInconsistentCache| () T@U)
(declare-fun |##_module.Path.OpaquePath| () T@U)
(declare-fun |##_module.Path.TransparentPath| () T@U)
(declare-fun |##_module.Tuple.Pair| () T@U)
(declare-fun |##_module.Triple.Trio| () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Triple () T@U)
(declare-fun tytagFamily$StateC () T@U)
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
(declare-fun _module.__default.CombineC (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.CombineC#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.StateC () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$let#3_stC| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |_module.__default.UnionC#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.UnionC (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.Arity (T@U) Int)
(declare-fun |_module.__default.Arity#canCall| (T@U) Bool)
(declare-fun Tclass._module.Primitive () T@U)
(declare-fun _module.Primitive.primCreatePath_q (T@U) Bool)
(declare-fun |#_module.StateC.S| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.State () T@U)
(declare-fun Tclass._module.Cache () T@U)
(declare-fun |#_module.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun Tclass._module.Expression () T@U)
(declare-fun |#_module.Expression.exprOr| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |#_module.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |$IsA#_module.StateC| (T@U) Bool)
(declare-fun _module.StateC.S_q (T@U) Bool)
(declare-fun |$IsA#_module.Triple| (T@U) Bool)
(declare-fun _module.Triple.Trio_q (T@U) Bool)
(declare-fun _module.__default.execC (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.execC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Expression.exprLiteral_q (T@U) Bool)
(declare-fun _module.Literal.litString_q (T@U) Bool)
(declare-fun _module.Expression.lit (T@U) T@U)
(declare-fun _module.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun _module.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun Tclass._module.Tuple (T@U T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
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
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun Tclass._module.Artifact () T@U)
(declare-fun Tclass._module.HashValue () T@U)
(declare-fun Tclass._module.Env () T@U)
(declare-fun Tclass._module.Identifier () T@U)
(declare-fun _module.Tuple.Pair_q (T@U) Bool)
(declare-fun _module.__default.CompatibleC (T@U) Bool)
(declare-fun |_module.__default.CompatibleC#canCall| (T@U) Bool)
(declare-fun _module.__default.GetC (T@U T@U) T@U)
(declare-fun _module.StateC.c (T@U) T@U)
(declare-fun _module.__default.GetSt (T@U T@U) T@U)
(declare-fun _module.StateC.st (T@U) T@U)
(declare-fun _module.__default.DomSt (T@U) T@U)
(declare-fun _module.__default.DomC (T@U) T@U)
(declare-fun Tclass._module.Path () T@U)
(declare-fun |_module.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |_module.__default.DomC#canCall| (T@U) Bool)
(declare-fun |_module.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.GetC#canCall| (T@U T@U) Bool)
(declare-fun |_module.Triple#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun _module.__default.UpdateC (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.evalArgsC (T@U T@U T@U T@U T@U) T@U)
(declare-fun |#_module.Literal.litTrue| () T@U)
(declare-fun |#_module.Literal.litFalse| () T@U)
(declare-fun |#_module.Literal.litUndefined| () T@U)
(declare-fun |#_module.Literal.litNull| () T@U)
(declare-fun |#_module.Primitive.primCreatePath| () T@U)
(declare-fun |#_module.Primitive.primExec| () T@U)
(declare-fun |#_module.Reason.rCompatibility| () T@U)
(declare-fun |#_module.Reason.rValidity| () T@U)
(declare-fun |#_module.Reason.rInconsistentCache| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.__default.Loc (T@U T@U T@U) T@U)
(declare-fun _module.Literal.strs (T@U) T@U)
(declare-fun |_module.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.Hash#canCall| (T@U) Bool)
(declare-fun BoxType () T@T)
(declare-fun _module.__default.Hash (T@U) T@U)
(declare-fun |_module.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun _module.Tuple.snd (T@U) T@U)
(declare-fun |_module.__default.UpdateC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#22| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |#_module.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#_module.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun |#_module.Tuple.Pair| (T@U T@U) T@U)
(declare-fun _module.Tuple.fst (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun _module.__default.Post (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Post#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.Res (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Res#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.OneToOne (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.OneToOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.Literal.paths (T@U) T@U)
(declare-fun Tclass._module.Literal () T@U)
(declare-fun Tclass._module.Reason () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |_module.__default.evalArgsC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.evalArgsC_k#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.evalArgsC_k (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |_module.Reason#Equal| (T@U T@U) Bool)
(declare-fun |_module.__default.Choose#canCall| (T@U) Bool)
(declare-fun _module.__default.Choose (T@U) T@U)
(declare-fun |_module.__default.SetC#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.SetC (T@U T@U T@U) T@U)
(declare-fun |#_module.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun _module.__default.GetEnv (T@U T@U) T@U)
(declare-fun |_module.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.Value (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Expression| (T@U) Bool)
(declare-fun _module.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun _module.Expression.exprIf_q (T@U) Bool)
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
(declare-fun _module.Primitive.primExec_q (T@U) Bool)
(declare-fun _module.Reason.rCompatibility_q (T@U) Bool)
(declare-fun _module.Reason.rValidity_q (T@U) Bool)
(declare-fun _module.Reason.rInconsistentCache_q (T@U) Bool)
(declare-fun _module.Path.OpaquePath_q (T@U) Bool)
(declare-fun _module.Path.TransparentPath_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun _module.__default.PreC (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.PreC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Restrict#canCall| (T@U T@U) Bool)
(declare-fun |_module.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.Restrict (T@U T@U) T@U)
(declare-fun _module.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Literal| (T@U) Bool)
(declare-fun |#_module.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#_module.Expression.exprError| (T@U) T@U)
(declare-fun |#_module.Literal.litNumber| (Int) T@U)
(declare-fun |#_module.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#_module.Path.OpaquePath| (Int) T@U)
(declare-fun |#_module.Path.TransparentPath| (Int) T@U)
(declare-fun _module.__default.evalC (T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.evalC#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.__default.Value#canCall| (T@U) Bool)
(declare-fun _module.Expression.id (T@U) T@U)
(declare-fun _module.Expression.conj0 (T@U) T@U)
(declare-fun _module.Expression.conj1 (T@U) T@U)
(declare-fun _module.Expression.disj0 (T@U) T@U)
(declare-fun _module.Expression.disj1 (T@U) T@U)
(declare-fun _module.Expression.fun (T@U) T@U)
(declare-fun _module.Expression.args (T@U) T@U)
(declare-fun _module.Literal.prim (T@U) T@U)
(declare-fun |_module.__default.ValidArgsC#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.__default.ValidArgsC (T@U T@U T@U) Bool)
(declare-fun |_module.__default.ConsistentCache#canCall| (T@U) Bool)
(declare-fun _module.__default.ConsistentCache (T@U) Bool)
(declare-fun |$let#0_s| (T@U) T@U)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun _module.Literal.str (T@U) T@U)
(declare-fun _module.Literal.arr (T@U) T@U)
(declare-fun _module.__default.PostC (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.PostC#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._module.Tuple_0 (T@U) T@U)
(declare-fun Tclass._module.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun _module.Expression.r (T@U) T@U)
(declare-fun _module.Path._h0 (T@U) Int)
(declare-fun _module.Path._h1 (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun |$IsA#_module.Reason| (T@U) Bool)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass._module.Path Tagclass._module.Expression Tagclass._module.Triple Tagclass._module.StateC Tagclass._module.Tuple Tagclass._module.Primitive |##_module.StateC.S| |##_module.Expression.exprLiteral| Tagclass._module.Literal |##_module.Expression.exprIdentifier| |##_module.Expression.exprIf| |##_module.Expression.exprAnd| |##_module.Expression.exprOr| |##_module.Expression.exprInvocation| |##_module.Expression.exprError| Tagclass._module.Reason |##_module.Literal.litTrue| |##_module.Literal.litFalse| |##_module.Literal.litUndefined| |##_module.Literal.litNull| |##_module.Literal.litNumber| |##_module.Literal.litString| |##_module.Literal.litPrimitive| |##_module.Literal.litArrOfPaths| |##_module.Literal.litArrOfStrings| |##_module.Literal.litArray| |##_module.Primitive.primCreatePath| |##_module.Primitive.primExec| |##_module.Reason.rCompatibility| |##_module.Reason.rValidity| |##_module.Reason.rInconsistentCache| |##_module.Path.OpaquePath| |##_module.Path.TransparentPath| |##_module.Tuple.Pair| |##_module.Triple.Trio| tytagFamily$Path tytagFamily$Expression tytagFamily$Triple tytagFamily$StateC tytagFamily$Tuple tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SetType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|stsC#0| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| |stsC#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |stsC#0| (TSet Tclass._module.StateC))) (not (|Set#Equal| |stsC#0| |Set#Empty|))))) (and (and (|$let#3$canCall| |stsC#0|) (=> (not (|Set#Equal| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))) (and (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))) (|_module.__default.UnionC#canCall| (|$let#3_stC| |stsC#0|) (_module.__default.CombineC $ly (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| |stsC#0|))))))))) (= (_module.__default.CombineC ($LS $ly) |stsC#0|) (let ((|stC#6| (|$let#3_stC| |stsC#0|)))
(ite (|Set#Equal| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#6|))) |stC#6| (_module.__default.UnionC |stC#6| (_module.__default.CombineC $ly (|Set#Difference| |stsC#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#6|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |823|
 :pattern ( (_module.__default.CombineC ($LS $ly) |stsC#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|_module.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass._module.Primitive))) (= (_module.__default.Arity |prim#0|) (ite (_module.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeConsistentBuildslegacydfy.360:22|
 :skolemid |1085|
 :pattern ( (_module.__default.Arity |prim#0|))
))))
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
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.StateC| d) (_module.StateC.S_q d))
 :qid |unknown.0:0|
 :skolemid |1280|
 :pattern ( (|$IsA#_module.StateC| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_module.Triple| d@@0) (_module.Triple.Trio_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1576|
 :pattern ( (|$IsA#_module.Triple| d@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exts#0| T@U) (|stC#0| T@U) ) (!  (=> (or (|_module.__default.execC#canCall| |cmd#0| |deps#0| |exts#0| |stC#0|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0|))) (_module.Expression.exprLiteral_q |deps#0|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0|))) (_module.Expression.exprLiteral_q |exts#0|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0|)))))) ($Is DatatypeTypeType (_module.__default.execC |cmd#0| |deps#0| |exts#0| |stC#0|) (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.231:22|
 :skolemid |968|
 :pattern ( (_module.__default.execC |cmd#0| |deps#0| |exts#0| |stC#0|))
))))
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
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Literal.litNumber_q a@@4) (_module.Literal.litNumber_q b@@1)) (= (|_module.Literal#Equal| a@@4 b@@1) (= (_module.Literal.num a@@4) (_module.Literal.num b@@1))))
 :qid |unknown.0:0|
 :skolemid |1486|
 :pattern ( (|_module.Literal#Equal| a@@4 b@@1) (_module.Literal.litNumber_q a@@4))
 :pattern ( (|_module.Literal#Equal| a@@4 b@@1) (_module.Literal.litNumber_q b@@1))
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
(assert (forall ((a@@5 T@U) (b@@2 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@2 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@5 b@@2) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@5 b@@2) (|Set#IsMember| b@@2 y@@2))
)))
(assert ($AlwaysAllocated Tclass._module.State))
(assert ($AlwaysAllocated Tclass._module.Artifact))
(assert ($AlwaysAllocated Tclass._module.Cache))
(assert ($AlwaysAllocated Tclass._module.HashValue))
(assert ($AlwaysAllocated Tclass._module.Env))
(assert ($AlwaysAllocated Tclass._module.Identifier))
(assert (forall ((_module.Tuple$A T@U) (_module.Tuple$B T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._module.Tuple _module.Tuple$A _module.Tuple$B)) (_module.Tuple.Pair_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1554|
 :pattern ( (_module.Tuple.Pair_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._module.Tuple _module.Tuple$A _module.Tuple$B)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stsC#0@@0| T@U) ) (!  (=> (or (|_module.__default.CompatibleC#canCall| |stsC#0@@0|) (and (< 3 $FunctionContextHeight) ($Is SetType |stsC#0@@0| (TSet Tclass._module.StateC)))) (and (forall ((|stC#0@@0| T@U) (|stC'#0| T@U) (|p#0| T@U) (|h#0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |stC#0@@0| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#0| Tclass._module.StateC)) ($Is DatatypeTypeType |p#0| Tclass._module.Path)) ($IsBox |h#0| Tclass._module.HashValue)) (and (=> (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC#0@@0|)) (=> (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0|)) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#0@@0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|)) (and (and (_module.StateC.S_q |stC'#0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0|)) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|) (and (and (_module.StateC.S_q |stC'#0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC'#0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.GetSt#canCall| |p#0| (_module.StateC.st |stC#0@@0|))) (and (_module.StateC.S_q |stC'#0|) (|_module.__default.GetSt#canCall| |p#0| (_module.StateC.st |stC'#0|)))))))))))))) (=> (=> (and (and (and (and (and (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC#0@@0|)) (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|)) (= (_module.__default.GetSt |p#0| (_module.StateC.st |stC#0@@0|)) (_module.__default.GetSt |p#0| (_module.StateC.st |stC'#0|)))) (=> (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC#0@@0|)) (=> (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0|)) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#0@@0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|)) (and (and (_module.StateC.S_q |stC'#0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0|)) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|) (and (and (_module.StateC.S_q |stC'#0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC'#0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|) (and (and (|$IsA#_module.Triple| (_module.__default.GetC |h#0| (_module.StateC.c |stC#0@@0|))) (|$IsA#_module.Triple| (_module.__default.GetC |h#0| (_module.StateC.c |stC'#0|)))) (and (and (_module.StateC.S_q |stC#0@@0|) (|_module.__default.GetC#canCall| |h#0| (_module.StateC.c |stC#0@@0|))) (and (_module.StateC.S_q |stC'#0|) (|_module.__default.GetC#canCall| |h#0| (_module.StateC.c |stC'#0|))))))))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.113:10|
 :skolemid |794|
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |stC'#0|)) (_module.__default.GetSt |p#0| (_module.StateC.st |stC#0@@0|)))
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |stC#0@@0|)) (_module.__default.GetSt |p#0| (_module.StateC.st |stC'#0|)))
 :pattern ( (_module.__default.GetC |h#0| (_module.StateC.c |stC#0@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0|)) ($Box DatatypeTypeType |p#0|)))
 :pattern ( (_module.__default.GetSt |p#0| (_module.StateC.st |stC#0@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0|)) |h#0|))
 :pattern ( (_module.StateC.c |stC'#0|) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|) (_module.StateC.st |stC'#0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@0|)) |h#0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@0|)) ($Box DatatypeTypeType |p#0|)) (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0|)))
)) (= (_module.__default.CompatibleC |stsC#0@@0|) (forall ((|stC#0@@1| T@U) (|stC'#0@@0| T@U) (|p#0@@0| T@U) (|h#0@@0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |stC#0@@1| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#0@@0| Tclass._module.StateC)) ($Is DatatypeTypeType |p#0@@0| Tclass._module.Path)) ($IsBox |h#0@@0| Tclass._module.HashValue)) (and (=> (and (and (and (and (and (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC#0@@1|)) (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@1|)) ($Box DatatypeTypeType |p#0@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@0|)) ($Box DatatypeTypeType |p#0@@0|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |h#0@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@0|)) |h#0@@0|)) (= (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC#0@@1|)) (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC'#0@@0|)))) (=> (and (and (and (and (and (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC#0@@1|)) (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@1|)) ($Box DatatypeTypeType |p#0@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@0|)) ($Box DatatypeTypeType |p#0@@0|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |h#0@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@0|)) |h#0@@0|)) (|_module.Triple#Equal| (_module.__default.GetC |h#0@@0| (_module.StateC.c |stC#0@@1|)) (_module.__default.GetC |h#0@@0| (_module.StateC.c |stC'#0@@0|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.113:10|
 :skolemid |793|
 :pattern ( (_module.__default.GetC |h#0@@0| (_module.StateC.c |stC'#0@@0|)) (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC#0@@1|)))
 :pattern ( (_module.__default.GetC |h#0@@0| (_module.StateC.c |stC#0@@1|)) (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC'#0@@0|)))
 :pattern ( (_module.__default.GetC |h#0@@0| (_module.StateC.c |stC#0@@1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@0|)) ($Box DatatypeTypeType |p#0@@0|)))
 :pattern ( (_module.__default.GetSt |p#0@@0| (_module.StateC.st |stC#0@@1|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@0|)) |h#0@@0|))
 :pattern ( (_module.StateC.c |stC'#0@@0|) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |h#0@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@1|)) ($Box DatatypeTypeType |p#0@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |h#0@@0|) (_module.StateC.st |stC'#0@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@1|)) ($Box DatatypeTypeType |p#0@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@1|)) |h#0@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@1|)) ($Box DatatypeTypeType |p#0@@0|)) (|Set#IsMember| |stsC#0@@0| ($Box DatatypeTypeType |stC'#0@@0|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.111:29|
 :skolemid |795|
 :pattern ( (_module.__default.CompatibleC |stsC#0@@0|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0| T@U) ) (!  (=> (or (|_module.__default.GetSt#canCall| |p#0@@1| |st#0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@1| Tclass._module.Path) ($IsBox |st#0| Tclass._module.State)))) ($IsBox (_module.__default.GetSt |p#0@@1| |st#0|) Tclass._module.Artifact))
 :qid |CloudMakeConsistentBuildslegacydfy.7:22|
 :skolemid |704|
 :pattern ( (_module.__default.GetSt |p#0@@1| |st#0|))
))))
(assert (forall (($ly@@0 T@U) (|cmd#0@@0| T@U) (|deps#0@@0| T@U) (|exts#0@@0| T@U) (|stC#0@@2| T@U) ) (! (= (_module.__default.UpdateC ($LS $ly@@0) |cmd#0@@0| |deps#0@@0| |exts#0@@0| |stC#0@@2|) (_module.__default.UpdateC $ly@@0 |cmd#0@@0| |deps#0@@0| |exts#0@@0| |stC#0@@2|))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |733|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@0) |cmd#0@@0| |deps#0@@0| |exts#0@@0| |stC#0@@2|))
)))
(assert (forall (($ly@@1 T@U) (|expr#0| T@U) (|args#0| T@U) (|stC#0@@3| T@U) (|env#0| T@U) ) (! (= (_module.__default.evalArgsC ($LS $ly@@1) |expr#0| |args#0| |stC#0@@3| |env#0|) (_module.__default.evalArgsC $ly@@1 |expr#0| |args#0| |stC#0@@3| |env#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.473:16|
 :skolemid |1137|
 :pattern ( (_module.__default.evalArgsC ($LS $ly@@1) |expr#0| |args#0| |stC#0@@3| |env#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Literal.litTrue|) |##_module.Literal.litTrue|))
(assert (= (DatatypeCtorId |#_module.Literal.litFalse|) |##_module.Literal.litFalse|))
(assert (= (DatatypeCtorId |#_module.Literal.litUndefined|) |##_module.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#_module.Literal.litNull|) |##_module.Literal.litNull|))
(assert (= (DatatypeCtorId |#_module.Primitive.primCreatePath|) |##_module.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#_module.Primitive.primExec|) |##_module.Primitive.primExec|))
(assert (= (DatatypeCtorId |#_module.Reason.rCompatibility|) |##_module.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#_module.Reason.rValidity|) |##_module.Reason.rValidity|))
(assert (= (DatatypeCtorId |#_module.Reason.rInconsistentCache|) |##_module.Reason.rInconsistentCache|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (= (Ctor SeqType) 5))
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
(assert (forall ((_module.Triple$A@@3 T@U) (_module.Triple$B@@3 T@U) (_module.Triple$C@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($IsBox bx (Tclass._module.Triple _module.Triple$A@@3 _module.Triple$B@@3 _module.Triple$C@@3)))
)))
(assert (= (Ctor BoxType) 6))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exts#0@@1| T@U) (|stC#0@@4| T@U) ) (!  (=> (or (|_module.__default.execC#canCall| (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit DatatypeTypeType |stC#0@@4|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@1| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@1| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@1| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@4| Tclass._module.StateC)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@1|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@1|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@1|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@1|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@1|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))))))))) (and (and (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) ($Box SeqType |e#2|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#2|) (|_module.__default.Hash#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#2|))) (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@4|)) (|_module.__default.DomC#canCall| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |979|
 :pattern ( (_module.__default.Loc |cmd#0@@1| |deps#0@@1| |e#2|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) ($Box SeqType |e#2|)))
)) (=> (forall ((|e#2@@0| T@U) ) (!  (=> (and ($Is SeqType |e#2@@0| (TSeq TChar)) (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) ($Box SeqType |e#2@@0|))) (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#2@@0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |980|
 :pattern ( (_module.__default.Loc |cmd#0@@1| |deps#0@@1| |e#2@@0|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) ($Box SeqType |e#2@@0|)))
)) (forall ((|e#3| T@U) ) (!  (=> ($Is SeqType |e#3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) ($Box SeqType |e#3|)) (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#3|)))
 :qid |CloudMakeConsistentBuildslegacydfy.238:22|
 :skolemid |981|
 :pattern ( (_module.__default.Loc |cmd#0@@1| |deps#0@@1| |e#3|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) ($Box SeqType |e#3|)))
)))) (=> (not (forall ((|e#2@@1| T@U) ) (!  (=> (and ($Is SeqType |e#2@@1| (TSeq TChar)) (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) ($Box SeqType |e#2@@1|))) (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#2@@1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |980|
 :pattern ( (_module.__default.Loc |cmd#0@@1| |deps#0@@1| |e#2@@1|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) ($Box SeqType |e#2@@1|)))
))) (and (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@4|)) (|_module.__default.exec#canCall| (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@4|))))) (let ((|result#1| (_module.__default.exec (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@4|))))))
 (and (and (_module.Tuple.Pair_q |result#1|) (_module.Tuple.Pair_q |result#1|)) (let ((|st'#1| (_module.Tuple.snd |result#1|)))
 (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@4|)) (|_module.__default.UpdateC#canCall| (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (|#_module.StateC.S| |st'#1| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|)))))))))))) (= (_module.__default.execC (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit DatatypeTypeType |stC#0@@4|)) (ite (forall ((|e#2@@2| T@U) ) (!  (=> (and ($Is SeqType |e#2@@2| (TSeq TChar)) (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) ($Box SeqType |e#2@@2|))) (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) |e#2@@2|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |977|
 :pattern ( (_module.__default.Loc |cmd#0@@1| |deps#0@@1| |e#2@@2|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) ($Box SeqType |e#2@@2|)))
)) (let ((|paths#1| (|Set#FromBoogieMap| (|lambda#22| (TSeq TChar) (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@1|))))) (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (_module.Literal.strs (_module.Expression.lit |exts#0@@1|)) |cmd#0@@1| |deps#0@@1|))))
(let ((|expr'#2| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfPaths| |paths#1|))))
(|#_module.Tuple.Pair| ($Box DatatypeTypeType |expr'#2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@4|))))) (let ((|result#1@@0| (_module.__default.exec (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@4|))))))
(let ((|st'#1@@0| (_module.Tuple.snd |result#1@@0|)))
(let ((|expr'#3| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@0|))))
(let ((|stC'#1| (_module.__default.UpdateC ($LS $LZ) (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (|#_module.StateC.S| |st'#1@@0| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@4|)))))))
(|#_module.Tuple.Pair| ($Box DatatypeTypeType |expr'#3|) ($Box DatatypeTypeType |stC'#1|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.231:22|
 :weight 3
 :skolemid |983|
 :pattern ( (_module.__default.execC (Lit DatatypeTypeType |cmd#0@@1|) (Lit DatatypeTypeType |deps#0@@1|) (Lit DatatypeTypeType |exts#0@@1|) (Lit DatatypeTypeType |stC#0@@4|)))
))))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass._module.StateC) (_module.StateC.S_q d@@2))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( (_module.StateC.S_q d@@2) ($Is DatatypeTypeType d@@2 Tclass._module.StateC))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|exts#0@@2| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|_module.__default.Post#canCall| |cmd#0@@2| |deps#0@@2| |exts#0@@2| |st#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@2| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@2| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@2| Tclass._module.Expression)) ($IsBox |st#0@@0| Tclass._module.State)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@2|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@2|))) (_module.Expression.exprLiteral_q |deps#0@@2|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@2|))) (_module.Expression.exprLiteral_q |exts#0@@2|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@2|)))))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is SeqType |e#0| (TSeq TChar)) (and (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0|)) (and (|_module.__default.Loc#canCall| |cmd#0@@2| |deps#0@@2| |e#0|) (|_module.__default.DomSt#canCall| |st#0@@0|))) (=> (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0|)) (|Set#IsMember| (_module.__default.DomSt |st#0@@0|) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0|)))) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0|)) (and (and (|_module.__default.Loc#canCall| |cmd#0@@2| |deps#0@@2| |e#0|) (|_module.__default.GetSt#canCall| (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0|) |st#0@@0|)) (|_module.__default.Res#canCall| |cmd#0@@2| |deps#0@@2| |e#0| |st#0@@0|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |936|
 :pattern ( (_module.__default.Res |cmd#0@@2| |deps#0@@2| |e#0| |st#0@@0|))
 :pattern ( (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0|)))
)) (= (_module.__default.Post |cmd#0@@2| |deps#0@@2| |exts#0@@2| |st#0@@0|) (forall ((|e#0@@0| T@U) ) (!  (=> ($Is SeqType |e#0@@0| (TSeq TChar)) (and (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0@@0|)) (|Set#IsMember| (_module.__default.DomSt |st#0@@0|) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|)))) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0@@0|)) (= (_module.__default.GetSt (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|) |st#0@@0|) (_module.__default.Res |cmd#0@@2| |deps#0@@2| |e#0@@0| |st#0@@0|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |935|
 :pattern ( (_module.__default.Res |cmd#0@@2| |deps#0@@2| |e#0@@0| |st#0@@0|))
 :pattern ( (_module.__default.Loc |cmd#0@@2| |deps#0@@2| |e#0@@0|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@2|)) ($Box SeqType |e#0@@0|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.206:22|
 :skolemid |937|
 :pattern ( (_module.__default.Post |cmd#0@@2| |deps#0@@2| |exts#0@@2| |st#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@3| T@U) (|exts#0@@3| T@U) (|paths#0| T@U) ) (!  (=> (or (|_module.__default.OneToOne#canCall| |cmd#0@@3| |deps#0@@3| |exts#0@@3| |paths#0|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@3| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@3| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@3| Tclass._module.Expression)) ($Is DatatypeTypeType |paths#0| Tclass._module.Expression)) (and (and (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@3|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@3|))) (_module.Expression.exprLiteral_q |deps#0@@3|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@3|))) (_module.Expression.exprLiteral_q |exts#0@@3|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@3|))) (_module.Expression.exprLiteral_q |paths#0|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |paths#0|)))))) (and (forall ((|e#0@@1| T@U) ) (!  (=> ($Is SeqType |e#0@@1| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@3|)) ($Box SeqType |e#0@@1|)) (|_module.__default.Loc#canCall| |cmd#0@@3| |deps#0@@3| |e#0@@1|)))
 :qid |CloudMakeConsistentBuildslegacydfy.225:10|
 :skolemid |957|
 :pattern ( (_module.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0@@1|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@3|)) ($Box SeqType |e#0@@1|)))
)) (= (_module.__default.OneToOne |cmd#0@@3| |deps#0@@3| |exts#0@@3| |paths#0|) (forall ((|e#0@@2| T@U) ) (!  (=> ($Is SeqType |e#0@@2| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@3|)) ($Box SeqType |e#0@@2|)) (|Set#IsMember| (_module.Literal.paths (_module.Expression.lit |paths#0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0@@2|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.225:10|
 :skolemid |956|
 :pattern ( (_module.__default.Loc |cmd#0@@3| |deps#0@@3| |e#0@@2|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@3|)) ($Box SeqType |e#0@@2|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.218:26|
 :skolemid |958|
 :pattern ( (_module.__default.OneToOne |cmd#0@@3| |deps#0@@3| |exts#0@@3| |paths#0|))
))))
(assert (forall ((_module.Tuple$A@@0 T@U) (_module.Tuple$B@@0 T@U) (|a#163#0#0| T@U) (|a#163#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tuple.Pair| |a#163#0#0| |a#163#1#0|) (Tclass._module.Tuple _module.Tuple$A@@0 _module.Tuple$B@@0))  (and ($IsBox |a#163#0#0| _module.Tuple$A@@0) ($IsBox |a#163#1#0| _module.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |1542|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tuple.Pair| |a#163#0#0| |a#163#1#0|) (Tclass._module.Tuple _module.Tuple$A@@0 _module.Tuple$B@@0)))
)))
(assert ($Is DatatypeTypeType |#_module.Literal.litTrue| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litFalse| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litUndefined| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Literal.litNull| Tclass._module.Literal))
(assert ($Is DatatypeTypeType |#_module.Primitive.primCreatePath| Tclass._module.Primitive))
(assert ($Is DatatypeTypeType |#_module.Primitive.primExec| Tclass._module.Primitive))
(assert ($Is DatatypeTypeType |#_module.Reason.rCompatibility| Tclass._module.Reason))
(assert ($Is DatatypeTypeType |#_module.Reason.rValidity| Tclass._module.Reason))
(assert ($Is DatatypeTypeType |#_module.Reason.rInconsistentCache| Tclass._module.Reason))
(assert  (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) (|l#6| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|)) (exists ((|e#0@@3| T@U) ) (!  (and (and ($Is SeqType |e#0@@3| |l#0|) (|Set#IsMember| |l#1| ($Box SeqType |e#0@@3|))) (= |$y#0| (_module.__default.Hash (_module.__default.Loc |l#2| |l#3| |e#0@@3|))))
 :qid |CloudMakeConsistentBuildslegacydfy.48:27|
 :skolemid |736|
 :pattern ( (_module.__default.Loc |l#5| |l#6| |e#0@@3|))
 :pattern ( (|Set#IsMember| |l#4| ($Box SeqType |e#0@@3|)))
)))
 :qid |unknown.0:0|
 :skolemid |1581|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) |$y#0|))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) (|l#4@@0| T@U) (|l#5@@0| T@U) (|l#6@@0| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#22| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0|) |$y#0@@0|)) (exists ((|e#1| T@U) ) (!  (and (and ($Is SeqType |e#1| |l#0@@0|) (|Set#IsMember| |l#1@@0| ($Box SeqType |e#1|))) (= |$y#0@@0| ($Box DatatypeTypeType (_module.__default.Loc |l#2@@0| |l#3@@0| |e#1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.238:22|
 :skolemid |971|
 :pattern ( (_module.__default.Loc |l#5@@0| |l#6@@0| |e#1|))
 :pattern ( (|Set#IsMember| |l#4@@0| ($Box SeqType |e#1|)))
)))
 :qid |unknown.0:0|
 :skolemid |1582|
 :pattern ( (MapType0Select BoxType boolType (|lambda#22| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0| |l#6@@0|) |$y#0@@0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@4| T@U) (|deps#0@@4| T@U) (|exts#0@@4| T@U) (|paths#0@@0| T@U) ) (!  (=> (or (|_module.__default.OneToOne#canCall| (Lit DatatypeTypeType |cmd#0@@4|) (Lit DatatypeTypeType |deps#0@@4|) (Lit DatatypeTypeType |exts#0@@4|) (Lit DatatypeTypeType |paths#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@4| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@4| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@4| Tclass._module.Expression)) ($Is DatatypeTypeType |paths#0@@0| Tclass._module.Expression)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@4|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@4|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@4|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@4|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@4|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@4|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |paths#0@@0|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |paths#0@@0|))))))))))) (and (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@4|))))) ($Box SeqType |e#1@@0|)) (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@4|) (Lit DatatypeTypeType |deps#0@@4|) |e#1@@0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.225:10|
 :skolemid |960|
 :pattern ( (_module.__default.Loc |cmd#0@@4| |deps#0@@4| |e#1@@0|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#1@@0|)))
)) (= (_module.__default.OneToOne (Lit DatatypeTypeType |cmd#0@@4|) (Lit DatatypeTypeType |deps#0@@4|) (Lit DatatypeTypeType |exts#0@@4|) (Lit DatatypeTypeType |paths#0@@0|)) (forall ((|e#1@@1| T@U) ) (!  (=> ($Is SeqType |e#1@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@4|))))) ($Box SeqType |e#1@@1|)) (|Set#IsMember| (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |paths#0@@0|))))) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@4|) (Lit DatatypeTypeType |deps#0@@4|) |e#1@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.225:10|
 :skolemid |959|
 :pattern ( (_module.__default.Loc |cmd#0@@4| |deps#0@@4| |e#1@@1|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@4|)) ($Box SeqType |e#1@@1|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.218:26|
 :weight 3
 :skolemid |961|
 :pattern ( (_module.__default.OneToOne (Lit DatatypeTypeType |cmd#0@@4|) (Lit DatatypeTypeType |deps#0@@4|) (Lit DatatypeTypeType |exts#0@@4|) (Lit DatatypeTypeType |paths#0@@0|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) ) (!  (=> (or (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@0| Tclass._module.Primitive))) (= (_module.__default.Arity (Lit DatatypeTypeType |prim#0@@0|)) (ite (_module.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@0|)) 1 3)))
 :qid |CloudMakeConsistentBuildslegacydfy.360:22|
 :weight 3
 :skolemid |1086|
 :pattern ( (_module.__default.Arity (Lit DatatypeTypeType |prim#0@@0|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@2 T@U) (|expr#0@@0| T@U) (|args#0@@0| T@U) (|stC#0@@5| T@U) (|env#0@@0| T@U) ) (!  (=> (or (|_module.__default.evalArgsC#canCall| |expr#0@@0| |args#0@@0| |stC#0@@5| |env#0@@0|) (and (< 6 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@0| Tclass._module.Expression) ($Is SeqType |args#0@@0| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@5| Tclass._module.StateC)) ($IsBox |env#0@@0| Tclass._module.Env)) (forall ((|arg#1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@0| ($Box DatatypeTypeType |arg#1|)) (< (DtRank |arg#1|) (DtRank |expr#0@@0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1141|
 :pattern ( (|Seq#Contains| |args#0@@0| ($Box DatatypeTypeType |arg#1|)))
))))) (and (|_module.__default.evalArgsC_k#canCall| |expr#0@@0| |args#0@@0| |stC#0@@5| |env#0@@0| (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|)) (= (_module.__default.evalArgsC ($LS $ly@@2) |expr#0@@0| |args#0@@0| |stC#0@@5| |env#0@@0|) (_module.__default.evalArgsC_k $ly@@2 |expr#0@@0| |args#0@@0| |stC#0@@5| |env#0@@0| (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.473:16|
 :skolemid |1143|
 :pattern ( (_module.__default.evalArgsC ($LS $ly@@2) |expr#0@@0| |args#0@@0| |stC#0@@5| |env#0@@0|))
))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|_module.Literal#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |1492|
 :pattern ( (|_module.Literal#Equal| a@@8 b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|_module.Primitive#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (|_module.Primitive#Equal| a@@9 b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|_module.Reason#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |unknown.0:0|
 :skolemid |1515|
 :pattern ( (|_module.Reason#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|_module.Triple#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |unknown.0:0|
 :skolemid |1579|
 :pattern ( (|_module.Triple#Equal| a@@11 b@@8))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) (|cmd#0@@5| T@U) (|deps#0@@5| T@U) (|exts#0@@5| T@U) (|stC#0@@6| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) (Lit DatatypeTypeType |exts#0@@5|) (Lit DatatypeTypeType |stC#0@@6|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@5| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@5| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@5| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@6| Tclass._module.StateC)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@5|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@5|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@5|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@5|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@5|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@5|))))))))))) (and (let ((|strs#2| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@5|)))))))
 (=> (not (|Set#Equal| |strs#2| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#2|) (let ((|e#3@@0| (_module.__default.Choose |strs#2|)))
 (and (and (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |e#3@@0|) (|_module.__default.Hash#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |e#3@@0|))) (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@6|))) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |e#3@@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@5|)) ($Box SeqType |e#3@@0|)) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@6|))))) (let ((|c'#2| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |e#3@@0|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@5|)) ($Box SeqType |e#3@@0|)) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@6|))))))
(let ((|exts'#2| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#2| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#3@@0|)))))))
 (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@6|)) (|_module.__default.UpdateC#canCall| (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |exts'#2| (|#_module.StateC.S| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@6|))) |c'#2|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@3) (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) (Lit DatatypeTypeType |exts#0@@5|) (Lit DatatypeTypeType |stC#0@@6|)) (let ((|strs#2@@0| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@5|)))))))
(ite (|Set#Equal| |strs#2@@0| |Set#Empty|) |stC#0@@6| (let ((|e#3@@1| (Lit SeqType (_module.__default.Choose |strs#2@@0|))))
(let ((|c'#2@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |e#3@@1|)) (Lit DatatypeTypeType (|#_module.Triple.Trio| ($Box DatatypeTypeType (Lit DatatypeTypeType |cmd#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |deps#0@@5|)) ($Box SeqType |e#3@@1|))) (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@6|))))))
(let ((|exts'#2@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#2@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#3@@1|)))))))
(_module.__default.UpdateC ($LS $ly@@3) (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) |exts'#2@@0| (|#_module.StateC.S| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@6|))) |c'#2@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :weight 3
 :skolemid |741|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@3) (Lit DatatypeTypeType |cmd#0@@5|) (Lit DatatypeTypeType |deps#0@@5|) (Lit DatatypeTypeType |exts#0@@5|) (Lit DatatypeTypeType |stC#0@@6|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0@@1| T@U) ) (!  (=> (or (|_module.__default.GetEnv#canCall| |id#0| |env#0@@1|) (and (< 3 $FunctionContextHeight) (and ($IsBox |id#0| Tclass._module.Identifier) ($IsBox |env#0@@1| Tclass._module.Env)))) (and (_module.__default.Value (_module.__default.GetEnv |id#0| |env#0@@1|)) ($Is DatatypeTypeType (_module.__default.GetEnv |id#0| |env#0@@1|) Tclass._module.Expression)))
 :qid |CloudMakeConsistentBuildslegacydfy.170:23|
 :skolemid |894|
 :pattern ( (_module.__default.GetEnv |id#0| |env#0@@1|))
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
(assert (forall ((s@@3 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx@@0 t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx@@0) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx@@0) (TSeq t@@0)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Subset| a@@12 b@@9) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@12 o@@2) (|Set#IsMember| b@@9 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@12 o@@2))
 :pattern ( (|Set#IsMember| b@@9 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@12 b@@9))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((_module.Tuple$A@@1 T@U) (_module.Tuple$B@@1 T@U) (|a#163#0#0@@0| T@U) (|a#163#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Tuple.Pair| |a#163#0#0@@0| |a#163#1#0@@0|) (Tclass._module.Tuple _module.Tuple$A@@1 _module.Tuple$B@@1) $h)  (and ($IsAllocBox |a#163#0#0@@0| _module.Tuple$A@@1 $h) ($IsAllocBox |a#163#1#0@@0| _module.Tuple$B@@1 $h))))
 :qid |unknown.0:0|
 :skolemid |1543|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Tuple.Pair| |a#163#0#0@@0| |a#163#1#0@@0|) (Tclass._module.Tuple _module.Tuple$A@@1 _module.Tuple$B@@1) $h))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Expression| d@@3) (or (or (or (or (or (or (_module.Expression.exprLiteral_q d@@3) (_module.Expression.exprIdentifier_q d@@3)) (_module.Expression.exprIf_q d@@3)) (_module.Expression.exprAnd_q d@@3)) (_module.Expression.exprOr_q d@@3)) (_module.Expression.exprInvocation_q d@@3)) (_module.Expression.exprError_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1406|
 :pattern ( (|$IsA#_module.Expression| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.StateC.S_q d@@4) (= (DatatypeCtorId d@@4) |##_module.StateC.S|))
 :qid |unknown.0:0|
 :skolemid |1270|
 :pattern ( (_module.StateC.S_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Expression.exprLiteral_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |1326|
 :pattern ( (_module.Expression.exprLiteral_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Expression.exprIdentifier_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |1336|
 :pattern ( (_module.Expression.exprIdentifier_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (_module.Expression.exprIf_q d@@7) (= (DatatypeCtorId d@@7) |##_module.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( (_module.Expression.exprIf_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (_module.Expression.exprAnd_q d@@8) (= (DatatypeCtorId d@@8) |##_module.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |1359|
 :pattern ( (_module.Expression.exprAnd_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (_module.Expression.exprOr_q d@@9) (= (DatatypeCtorId d@@9) |##_module.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |1371|
 :pattern ( (_module.Expression.exprOr_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (_module.Expression.exprInvocation_q d@@10) (= (DatatypeCtorId d@@10) |##_module.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |1383|
 :pattern ( (_module.Expression.exprInvocation_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (_module.Expression.exprError_q d@@11) (= (DatatypeCtorId d@@11) |##_module.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |1396|
 :pattern ( (_module.Expression.exprError_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_module.Literal.litTrue_q d@@12) (= (DatatypeCtorId d@@12) |##_module.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1416|
 :pattern ( (_module.Literal.litTrue_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (_module.Literal.litFalse_q d@@13) (= (DatatypeCtorId d@@13) |##_module.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1418|
 :pattern ( (_module.Literal.litFalse_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (_module.Literal.litUndefined_q d@@14) (= (DatatypeCtorId d@@14) |##_module.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( (_module.Literal.litUndefined_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (_module.Literal.litNull_q d@@15) (= (DatatypeCtorId d@@15) |##_module.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( (_module.Literal.litNull_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (_module.Literal.litNumber_q d@@16) (= (DatatypeCtorId d@@16) |##_module.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |1425|
 :pattern ( (_module.Literal.litNumber_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (_module.Literal.litString_q d@@17) (= (DatatypeCtorId d@@17) |##_module.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |1433|
 :pattern ( (_module.Literal.litString_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (_module.Literal.litPrimitive_q d@@18) (= (DatatypeCtorId d@@18) |##_module.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |1443|
 :pattern ( (_module.Literal.litPrimitive_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (_module.Literal.litArrOfPaths_q d@@19) (= (DatatypeCtorId d@@19) |##_module.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |1452|
 :pattern ( (_module.Literal.litArrOfPaths_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (_module.Literal.litArrOfStrings_q d@@20) (= (DatatypeCtorId d@@20) |##_module.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |1461|
 :pattern ( (_module.Literal.litArrOfStrings_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (_module.Literal.litArray_q d@@21) (= (DatatypeCtorId d@@21) |##_module.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |1470|
 :pattern ( (_module.Literal.litArray_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (_module.Primitive.primCreatePath_q d@@22) (= (DatatypeCtorId d@@22) |##_module.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |1493|
 :pattern ( (_module.Primitive.primCreatePath_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (_module.Primitive.primExec_q d@@23) (= (DatatypeCtorId d@@23) |##_module.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |1495|
 :pattern ( (_module.Primitive.primExec_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (! (= (_module.Reason.rCompatibility_q d@@24) (= (DatatypeCtorId d@@24) |##_module.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( (_module.Reason.rCompatibility_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (! (= (_module.Reason.rValidity_q d@@25) (= (DatatypeCtorId d@@25) |##_module.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( (_module.Reason.rValidity_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (! (= (_module.Reason.rInconsistentCache_q d@@26) (= (DatatypeCtorId d@@26) |##_module.Reason.rInconsistentCache|))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( (_module.Reason.rInconsistentCache_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (! (= (_module.Path.OpaquePath_q d@@27) (= (DatatypeCtorId d@@27) |##_module.Path.OpaquePath|))
 :qid |unknown.0:0|
 :skolemid |1517|
 :pattern ( (_module.Path.OpaquePath_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (! (= (_module.Path.TransparentPath_q d@@28) (= (DatatypeCtorId d@@28) |##_module.Path.TransparentPath|))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( (_module.Path.TransparentPath_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (! (= (_module.Tuple.Pair_q d@@29) (= (DatatypeCtorId d@@29) |##_module.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |1539|
 :pattern ( (_module.Tuple.Pair_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (! (= (_module.Triple.Trio_q d@@30) (= (DatatypeCtorId d@@30) |##_module.Triple.Trio|))
 :qid |unknown.0:0|
 :skolemid |1558|
 :pattern ( (_module.Triple.Trio_q d@@30))
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
(assert (forall ((d@@31 T@U) ) (!  (=> (_module.Expression.exprIf_q d@@31) (exists ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= d@@31 (|#_module.Expression.exprIf| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.320:30|
 :skolemid |1345|
)))
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (_module.Expression.exprIf_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (_module.Triple.Trio_q d@@32) (exists ((|a#170#0#0| T@U) (|a#170#1#0| T@U) (|a#170#2#0| T@U) ) (! (= d@@32 (|#_module.Triple.Trio| |a#170#0#0| |a#170#1#0| |a#170#2#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.345:33|
 :skolemid |1559|
)))
 :qid |unknown.0:0|
 :skolemid |1560|
 :pattern ( (_module.Triple.Trio_q d@@32))
)))
(assert (forall ((s@@6 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i@@2)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i@@2)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Disjoint| a@@13 b@@10) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@13 o@@3)) (not (|Set#IsMember| b@@10 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@13 o@@3))
 :pattern ( (|Set#IsMember| b@@10 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@13 b@@10))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ss#0| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| |ss#0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |ss#0| (TSet (TSeq TChar))) (not (|Set#Equal| |ss#0| |Set#Empty|))))) ($Is SeqType (_module.__default.Choose |ss#0|) (TSeq TChar)))
 :qid |CloudMakeConsistentBuildslegacydfy.91:23|
 :skolemid |773|
 :pattern ( (_module.__default.Choose |ss#0|))
))))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (_module.StateC.S_q d@@33) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@33 (|#_module.StateC.S| |a#1#0#0| |a#1#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.32:21|
 :skolemid |1271|
)))
 :qid |unknown.0:0|
 :skolemid |1272|
 :pattern ( (_module.StateC.S_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (_module.Expression.exprAnd_q d@@34) (exists ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= d@@34 (|#_module.Expression.exprAnd| |a#48#0#0| |a#48#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.321:31|
 :skolemid |1360|
)))
 :qid |unknown.0:0|
 :skolemid |1361|
 :pattern ( (_module.Expression.exprAnd_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (_module.Expression.exprOr_q d@@35) (exists ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (= d@@35 (|#_module.Expression.exprOr| |a#56#0#0| |a#56#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.322:30|
 :skolemid |1372|
)))
 :qid |unknown.0:0|
 :skolemid |1373|
 :pattern ( (_module.Expression.exprOr_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (_module.Expression.exprInvocation_q d@@36) (exists ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= d@@36 (|#_module.Expression.exprInvocation| |a#64#0#0| |a#64#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.323:38|
 :skolemid |1384|
)))
 :qid |unknown.0:0|
 :skolemid |1385|
 :pattern ( (_module.Expression.exprInvocation_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (_module.Tuple.Pair_q d@@37) (exists ((|a#162#0#0| T@U) (|a#162#1#0| T@U) ) (! (= d@@37 (|#_module.Tuple.Pair| |a#162#0#0| |a#162#1#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1540|
)))
 :qid |unknown.0:0|
 :skolemid |1541|
 :pattern ( (_module.Tuple.Pair_q d@@37))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@6| T@U) (|deps#0@@6| T@U) (|exts#0@@6| T@U) (|stC#0@@7| T@U) ) (!  (=> (or (|_module.__default.PreC#canCall| |cmd#0@@6| |deps#0@@6| |exts#0@@6| |stC#0@@7|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@6| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@6| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@6| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@7| Tclass._module.StateC)) (and (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@6|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@6|))) (_module.Expression.exprLiteral_q |deps#0@@6|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@6|))) (_module.Expression.exprLiteral_q |exts#0@@6|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@6|))) (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) (_module.__default.DomSt (_module.StateC.st |stC#0@@7|))))))) (and (and (and (and (_module.StateC.S_q |stC#0@@7|) (|_module.__default.Restrict#canCall| (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) (_module.StateC.st |stC#0@@7|))) (|_module.__default.Pre#canCall| |cmd#0@@6| |deps#0@@6| |exts#0@@6| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) (_module.StateC.st |stC#0@@7|)))) (=> (_module.__default.Pre |cmd#0@@6| |deps#0@@6| |exts#0@@6| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) (_module.StateC.st |stC#0@@7|))) (forall ((|e#0@@4| T@U) ) (!  (=> ($Is SeqType |e#0@@4| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@6|)) ($Box SeqType |e#0@@4|)) (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@6| |e#0@@4|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@4|))) (and (_module.StateC.S_q |stC#0@@7|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@7|)))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@7|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@4|))) (|_module.__default.Loc#canCall| |cmd#0@@6| |deps#0@@6| |e#0@@4|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |1039|
 :pattern ( (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@4|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@6|)) ($Box SeqType |e#0@@4|)))
)))) (= (_module.__default.PreC |cmd#0@@6| |deps#0@@6| |exts#0@@6| |stC#0@@7|)  (and (_module.__default.Pre |cmd#0@@6| |deps#0@@6| |exts#0@@6| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) (_module.StateC.st |stC#0@@7|))) (forall ((|e#0@@5| T@U) ) (!  (=> ($Is SeqType |e#0@@5| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@6|)) ($Box SeqType |e#0@@5|)) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@7|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@5|))) (|Set#IsMember| (_module.Literal.paths (_module.Expression.lit |deps#0@@6|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@5|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |1038|
 :pattern ( (_module.__default.Loc |cmd#0@@6| |deps#0@@6| |e#0@@5|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@6|)) ($Box SeqType |e#0@@5|)))
))))))
 :qid |CloudMakeConsistentBuildslegacydfy.282:22|
 :skolemid |1040|
 :pattern ( (_module.__default.PreC |cmd#0@@6| |deps#0@@6| |exts#0@@6| |stC#0@@7|))
))))
(assert (forall ((d@@38 T@U) ) (!  (=> (_module.Literal.litTrue_q d@@38) (= d@@38 |#_module.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |1417|
 :pattern ( (_module.Literal.litTrue_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (_module.Literal.litFalse_q d@@39) (= d@@39 |#_module.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |1419|
 :pattern ( (_module.Literal.litFalse_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (_module.Literal.litUndefined_q d@@40) (= d@@40 |#_module.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( (_module.Literal.litUndefined_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (_module.Literal.litNull_q d@@41) (= d@@41 |#_module.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |1423|
 :pattern ( (_module.Literal.litNull_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (_module.Primitive.primCreatePath_q d@@42) (= d@@42 |#_module.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |1494|
 :pattern ( (_module.Primitive.primCreatePath_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (_module.Primitive.primExec_q d@@43) (= d@@43 |#_module.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |1496|
 :pattern ( (_module.Primitive.primExec_q d@@43))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (_module.Reason.rCompatibility_q d@@44) (= d@@44 |#_module.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( (_module.Reason.rCompatibility_q d@@44))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> (_module.Reason.rValidity_q d@@45) (= d@@45 |#_module.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( (_module.Reason.rValidity_q d@@45))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> (_module.Reason.rInconsistentCache_q d@@46) (= d@@46 |#_module.Reason.rInconsistentCache|))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( (_module.Reason.rInconsistentCache_q d@@46))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@0)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@2) ($IsBox bx@@2 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@1 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@1 (TSet t0@@0)))
)))
(assert (forall ((d@@47 T@U) ) (!  (=> (|$IsA#_module.Literal| d@@47) (or (or (or (or (or (or (or (or (or (_module.Literal.litTrue_q d@@47) (_module.Literal.litFalse_q d@@47)) (_module.Literal.litUndefined_q d@@47)) (_module.Literal.litNull_q d@@47)) (_module.Literal.litNumber_q d@@47)) (_module.Literal.litString_q d@@47)) (_module.Literal.litPrimitive_q d@@47)) (_module.Literal.litArrOfPaths_q d@@47)) (_module.Literal.litArrOfStrings_q d@@47)) (_module.Literal.litArray_q d@@47)))
 :qid |unknown.0:0|
 :skolemid |1480|
 :pattern ( (|$IsA#_module.Literal| d@@47))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stsC#0@@1| T@U) ) (!  (=> (or (|_module.__default.CompatibleC#canCall| (Lit SetType |stsC#0@@1|)) (and (< 3 $FunctionContextHeight) ($Is SetType |stsC#0@@1| (TSet Tclass._module.StateC)))) (and (forall ((|stC#1| T@U) (|stC'#1@@0| T@U) (|p#1| T@U) (|h#1| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |stC#1| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#1@@0| Tclass._module.StateC)) ($Is DatatypeTypeType |p#1| Tclass._module.Path)) ($IsBox |h#1| Tclass._module.HashValue)) (and (=> (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC#1|)) (=> (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC'#1@@0|)) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#1|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|)) (and (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#1@@0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@0|)) ($Box DatatypeTypeType |p#1|)) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#1|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|) (and (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC'#1@@0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@0|)) |h#1|) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.GetSt#canCall| |p#1| (_module.StateC.st |stC#1|))) (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.GetSt#canCall| |p#1| (_module.StateC.st |stC'#1@@0|)))))))))))))) (=> (=> (and (and (and (and (and (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC#1|)) (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC'#1@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@0|)) ($Box DatatypeTypeType |p#1|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@0|)) |h#1|)) (= (_module.__default.GetSt |p#1| (_module.StateC.st |stC#1|)) (_module.__default.GetSt |p#1| (_module.StateC.st |stC'#1@@0|)))) (=> (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC#1|)) (=> (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC'#1@@0|)) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#1|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|)) (and (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#1@@0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@0|)) ($Box DatatypeTypeType |p#1|)) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#1|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|) (and (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC'#1@@0|))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@0|)) |h#1|) (and (and (|$IsA#_module.Triple| (_module.__default.GetC |h#1| (_module.StateC.c |stC#1|))) (|$IsA#_module.Triple| (_module.__default.GetC |h#1| (_module.StateC.c |stC'#1@@0|)))) (and (and (_module.StateC.S_q |stC#1|) (|_module.__default.GetC#canCall| |h#1| (_module.StateC.c |stC#1|))) (and (_module.StateC.S_q |stC'#1@@0|) (|_module.__default.GetC#canCall| |h#1| (_module.StateC.c |stC'#1@@0|))))))))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.113:10|
 :skolemid |797|
 :pattern ( (_module.__default.GetC |h#1| (_module.StateC.c |stC'#1@@0|)) (_module.__default.GetSt |p#1| (_module.StateC.st |stC#1|)))
 :pattern ( (_module.__default.GetC |h#1| (_module.StateC.c |stC#1|)) (_module.__default.GetSt |p#1| (_module.StateC.st |stC'#1@@0|)))
 :pattern ( (_module.__default.GetC |h#1| (_module.StateC.c |stC#1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@0|)) ($Box DatatypeTypeType |p#1|)))
 :pattern ( (_module.__default.GetSt |p#1| (_module.StateC.st |stC#1|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@0|)) |h#1|))
 :pattern ( (_module.StateC.c |stC'#1@@0|) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|) (_module.StateC.st |stC'#1@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1|)) |h#1|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1|)) ($Box DatatypeTypeType |p#1|)) (|Set#IsMember| |stsC#0@@1| ($Box DatatypeTypeType |stC'#1@@0|)))
)) (= (_module.__default.CompatibleC (Lit SetType |stsC#0@@1|)) (forall ((|stC#1@@0| T@U) (|stC'#1@@1| T@U) (|p#1@@0| T@U) (|h#1@@0| T@U) ) (!  (=> (and (and (and ($Is DatatypeTypeType |stC#1@@0| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#1@@1| Tclass._module.StateC)) ($Is DatatypeTypeType |p#1@@0| Tclass._module.Path)) ($IsBox |h#1@@0| Tclass._module.HashValue)) (and (=> (and (and (and (and (and (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC#1@@0|)) (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC'#1@@1|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@0|)) ($Box DatatypeTypeType |p#1@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@1|)) ($Box DatatypeTypeType |p#1@@0|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1@@0|)) |h#1@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@1|)) |h#1@@0|)) (= (_module.__default.GetSt |p#1@@0| (_module.StateC.st |stC#1@@0|)) (_module.__default.GetSt |p#1@@0| (_module.StateC.st |stC'#1@@1|)))) (=> (and (and (and (and (and (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC#1@@0|)) (|Set#IsMember| (Lit SetType |stsC#0@@1|) ($Box DatatypeTypeType |stC'#1@@1|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@0|)) ($Box DatatypeTypeType |p#1@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@1|)) ($Box DatatypeTypeType |p#1@@0|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1@@0|)) |h#1@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@1|)) |h#1@@0|)) (|_module.Triple#Equal| (_module.__default.GetC |h#1@@0| (_module.StateC.c |stC#1@@0|)) (_module.__default.GetC |h#1@@0| (_module.StateC.c |stC'#1@@1|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.113:10|
 :skolemid |796|
 :pattern ( (_module.__default.GetC |h#1@@0| (_module.StateC.c |stC'#1@@1|)) (_module.__default.GetSt |p#1@@0| (_module.StateC.st |stC#1@@0|)))
 :pattern ( (_module.__default.GetC |h#1@@0| (_module.StateC.c |stC#1@@0|)) (_module.__default.GetSt |p#1@@0| (_module.StateC.st |stC'#1@@1|)))
 :pattern ( (_module.__default.GetC |h#1@@0| (_module.StateC.c |stC#1@@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#1@@1|)) ($Box DatatypeTypeType |p#1@@0|)))
 :pattern ( (_module.__default.GetSt |p#1@@0| (_module.StateC.st |stC#1@@0|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#1@@1|)) |h#1@@0|))
 :pattern ( (_module.StateC.c |stC'#1@@1|) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1@@0|)) |h#1@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@0|)) ($Box DatatypeTypeType |p#1@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1@@0|)) |h#1@@0|) (_module.StateC.st |stC'#1@@1|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@0|)) ($Box DatatypeTypeType |p#1@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#1@@0|)) |h#1@@0|) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@0|)) ($Box DatatypeTypeType |p#1@@0|)) (|Set#IsMember| |stsC#0@@1| ($Box DatatypeTypeType |stC'#1@@1|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.111:29|
 :weight 3
 :skolemid |798|
 :pattern ( (_module.__default.CompatibleC (Lit SetType |stsC#0@@1|)))
))))
(assert (forall ((s@@7 T@U) (i@@3 Int) ) (!  (=> (and (< 0 i@@3) (<= i@@3 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@3)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@3)))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> (_module.Expression.exprLiteral_q d@@48) (exists ((|a#27#0#0| T@U) ) (! (= d@@48 (|#_module.Expression.exprLiteral| |a#27#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.319:35|
 :skolemid |1327|
)))
 :qid |unknown.0:0|
 :skolemid |1328|
 :pattern ( (_module.Expression.exprLiteral_q d@@48))
)))
(assert (forall ((d@@49 T@U) ) (!  (=> (_module.Expression.exprIdentifier_q d@@49) (exists ((|a#33#0#0| T@U) ) (! (= d@@49 (|#_module.Expression.exprIdentifier| |a#33#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.319:66|
 :skolemid |1337|
)))
 :qid |unknown.0:0|
 :skolemid |1338|
 :pattern ( (_module.Expression.exprIdentifier_q d@@49))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> (_module.Expression.exprError_q d@@50) (exists ((|a#73#0#0| T@U) ) (! (= d@@50 (|#_module.Expression.exprError| |a#73#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.324:33|
 :skolemid |1397|
)))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( (_module.Expression.exprError_q d@@50))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> (_module.Literal.litNumber_q d@@51) (exists ((|a#95#0#0| Int) ) (! (= d@@51 (|#_module.Literal.litNumber| |a#95#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1426|
)))
 :qid |unknown.0:0|
 :skolemid |1427|
 :pattern ( (_module.Literal.litNumber_q d@@51))
)))
(assert (forall ((d@@52 T@U) ) (!  (=> (_module.Literal.litString_q d@@52) (exists ((|a#100#0#0| T@U) ) (! (= d@@52 (|#_module.Literal.litString| |a#100#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1434|
)))
 :qid |unknown.0:0|
 :skolemid |1435|
 :pattern ( (_module.Literal.litString_q d@@52))
)))
(assert (forall ((d@@53 T@U) ) (!  (=> (_module.Literal.litPrimitive_q d@@53) (exists ((|a#107#0#0| T@U) ) (! (= d@@53 (|#_module.Literal.litPrimitive| |a#107#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.328:33|
 :skolemid |1444|
)))
 :qid |unknown.0:0|
 :skolemid |1445|
 :pattern ( (_module.Literal.litPrimitive_q d@@53))
)))
(assert (forall ((d@@54 T@U) ) (!  (=> (_module.Literal.litArrOfPaths_q d@@54) (exists ((|a#113#0#0| T@U) ) (! (= d@@54 (|#_module.Literal.litArrOfPaths| |a#113#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1453|
)))
 :qid |unknown.0:0|
 :skolemid |1454|
 :pattern ( (_module.Literal.litArrOfPaths_q d@@54))
)))
(assert (forall ((d@@55 T@U) ) (!  (=> (_module.Literal.litArrOfStrings_q d@@55) (exists ((|a#119#0#0| T@U) ) (! (= d@@55 (|#_module.Literal.litArrOfStrings| |a#119#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1462|
)))
 :qid |unknown.0:0|
 :skolemid |1463|
 :pattern ( (_module.Literal.litArrOfStrings_q d@@55))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> (_module.Literal.litArray_q d@@56) (exists ((|a#125#0#0| T@U) ) (! (= d@@56 (|#_module.Literal.litArray| |a#125#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.331:29|
 :skolemid |1471|
)))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( (_module.Literal.litArray_q d@@56))
)))
(assert (forall ((d@@57 T@U) ) (!  (=> (_module.Path.OpaquePath_q d@@57) (exists ((|a#152#0#0| Int) ) (! (= d@@57 (|#_module.Path.OpaquePath| |a#152#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.337:28|
 :skolemid |1518|
)))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( (_module.Path.OpaquePath_q d@@57))
)))
(assert (forall ((d@@58 T@U) ) (!  (=> (_module.Path.TransparentPath_q d@@58) (exists ((|a#157#0#0| Int) ) (! (= d@@58 (|#_module.Path.TransparentPath| |a#157#0#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.337:51|
 :skolemid |1526|
)))
 :qid |unknown.0:0|
 :skolemid |1527|
 :pattern ( (_module.Path.TransparentPath_q d@@58))
)))
(assert (forall ((d@@59 T@U) ) (!  (=> ($Is DatatypeTypeType d@@59 Tclass._module.Expression) (or (or (or (or (or (or (_module.Expression.exprLiteral_q d@@59) (_module.Expression.exprIdentifier_q d@@59)) (_module.Expression.exprIf_q d@@59)) (_module.Expression.exprAnd_q d@@59)) (_module.Expression.exprOr_q d@@59)) (_module.Expression.exprInvocation_q d@@59)) (_module.Expression.exprError_q d@@59)))
 :qid |unknown.0:0|
 :skolemid |1407|
 :pattern ( (_module.Expression.exprError_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprInvocation_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprOr_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprAnd_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprIf_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprIdentifier_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
 :pattern ( (_module.Expression.exprLiteral_q d@@59) ($Is DatatypeTypeType d@@59 Tclass._module.Expression))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@4 T@U) (|expr#0@@1| T@U) (|stC#0@@8| T@U) (|env#0@@2| T@U) ) (!  (=> (or (|_module.__default.evalC#canCall| (Lit DatatypeTypeType |expr#0@@1|) |stC#0@@8| |env#0@@2|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |expr#0@@1| Tclass._module.Expression) ($Is DatatypeTypeType |stC#0@@8| Tclass._module.StateC)) ($IsBox |env#0@@2| Tclass._module.Env)))) (and (and (|_module.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@1|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Value (Lit DatatypeTypeType |expr#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.__default.GetEnv#canCall| (Lit BoxType (_module.Expression.id (Lit DatatypeTypeType |expr#0@@1|))) |env#0@@2|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@1|)))))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))))) (|$IsA#_module.Literal| (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))))))) (=> (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|))) (=> (not (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litTrue|))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))))) (|$IsA#_module.Literal| (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))))))) (=> (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|))) (=> (not (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litFalse|))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (let ((|result#3| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
 (and (and (_module.Tuple.Pair_q |result#3|) (_module.Tuple.Pair_q |result#3|)) (let ((|stC'#4| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#3|))))
(let ((|cond'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#3|))))
 (and (and (=> (_module.Expression.exprLiteral_q |cond'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#1|))) (=> (and (_module.Expression.exprLiteral_q |cond'#1|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#1|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@1|))) |stC'#4| |env#0@@2|))) (=> (not (and (_module.Expression.exprLiteral_q |cond'#1|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#1|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |cond'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#1|))) (=> (and (_module.Expression.exprLiteral_q |cond'#1|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#1|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@1|))) |stC'#4| |env#0@@2|))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@1|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (let ((|result#4| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
 (and (and (_module.Tuple.Pair_q |result#4|) (_module.Tuple.Pair_q |result#4|)) (let ((|stC'#5| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#4|))))
(let ((|conj0'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#4|))))
 (and (and (=> (_module.Expression.exprLiteral_q |conj0'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#1|))) (=> (and (_module.Expression.exprLiteral_q |conj0'#1|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#1|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.conj1 (Lit DatatypeTypeType |expr#0@@1|))) |stC'#5| |env#0@@2|))) (=> (not (and (_module.Expression.exprLiteral_q |conj0'#1|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#1|) |#_module.Literal.litTrue|))) (=> (_module.Expression.exprLiteral_q |conj0'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#1|))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@1|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (let ((|result#5| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
 (and (and (_module.Tuple.Pair_q |result#5|) (_module.Tuple.Pair_q |result#5|)) (let ((|stC'#6| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#5|))))
(let ((|disj0'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#5|))))
 (and (=> (_module.Expression.exprLiteral_q |disj0'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#1|))) (=> (not (and (_module.Expression.exprLiteral_q |disj0'#1|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#1|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |disj0'#1|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#1|))) (=> (and (_module.Expression.exprLiteral_q |disj0'#1|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#1|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.disj1 (Lit DatatypeTypeType |expr#0@@1|))) |stC'#6| |env#0@@2|))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@1|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@1|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (let ((|resultFun#1| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
 (and (and (_module.Tuple.Pair_q |resultFun#1|) (_module.Tuple.Pair_q |resultFun#1|)) (let ((|stC'#7| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#1|))))
(let ((|fun'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#1|))))
 (and (|_module.__default.evalArgsC#canCall| (Lit DatatypeTypeType |expr#0@@1|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (let ((|resultArgs#1| (_module.__default.evalArgsC ($LS $ly@@4) (Lit DatatypeTypeType |expr#0@@1|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
 (and (and (_module.Tuple.Pair_q |resultArgs#1|) (_module.Tuple.Pair_q |resultArgs#1|)) (let ((|stsC'#1| ($Unbox SetType (_module.Tuple.snd |resultArgs#1|))))
(let ((|args'#1| ($Unbox SeqType (_module.Tuple.fst |resultArgs#1|))))
(let ((|stsC''#1| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#7|)) |stsC'#1|)))
 (and (|_module.__default.CompatibleC#canCall| |stsC''#1|) (=> (_module.__default.CompatibleC |stsC''#1|) (and (|_module.__default.CombineC#canCall| |stsC''#1|) (let ((|stCombinedC#1| (_module.__default.CombineC ($LS $LZ) |stsC''#1|)))
 (=> (and (_module.Expression.exprLiteral_q |fun'#1|) (_module.Literal.litPrimitive_q (_module.Expression.lit |fun'#1|))) (=> (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |fun'#1|))) (and (and (and (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#1|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#1| |stCombinedC#1|))) (=> (and (= (|Seq#Length| |args'#1|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#1| |stCombinedC#1|)) (|_module.__default.execC#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))) |stCombinedC#1|))) (=> (not (and (= (|Seq#Length| |args'#1|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#1| |stCombinedC#1|))) (|_module.__default.ConsistentCache#canCall| |stCombinedC#1|))))))))))))))))))))))))))))))))))) (= (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType |expr#0@@1|) |stC#0@@8| |env#0@@2|) (ite (_module.__default.Value (Lit DatatypeTypeType |expr#0@@1|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@1|)) ($Box DatatypeTypeType |stC#0@@8|)) (ite (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@1|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (_module.__default.GetEnv (Lit BoxType (_module.Expression.id (Lit DatatypeTypeType |expr#0@@1|))) |env#0@@2|)) ($Box DatatypeTypeType |stC#0@@8|)) (ite  (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (ite  (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|)))) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|) (ite (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@1|)) (let ((|result#3@@0| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
(let ((|stC'#4@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#3@@0|))))
(let ((|cond'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#3@@0|))))
(ite  (and (_module.Expression.exprLiteral_q |cond'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#1@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@1|))) |stC'#4@@0| |env#0@@2|) (ite  (and (_module.Expression.exprLiteral_q |cond'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#1@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@1|))) |stC'#4@@0| |env#0@@2|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|))))))) (ite (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@1|)) (let ((|result#4@@0| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
(let ((|stC'#5@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#4@@0|))))
(let ((|conj0'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#4@@0|))))
(ite  (and (_module.Expression.exprLiteral_q |conj0'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#1@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.conj1 (Lit DatatypeTypeType |expr#0@@1|))) |stC'#5@@0| |env#0@@2|) (ite  (and (_module.Expression.exprLiteral_q |conj0'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#1@@0|) |#_module.Literal.litFalse|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litFalse|)))) ($Box DatatypeTypeType |stC'#5@@0|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|))))))) (ite (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@1|)) (let ((|result#5@@0| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
(let ((|stC'#6@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#5@@0|))))
(let ((|disj0'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#5@@0|))))
(ite  (and (_module.Expression.exprLiteral_q |disj0'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#1@@0|) |#_module.Literal.litTrue|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litTrue|)))) ($Box DatatypeTypeType |stC'#6@@0|)) (ite  (and (_module.Expression.exprLiteral_q |disj0'#1@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#1@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.disj1 (Lit DatatypeTypeType |expr#0@@1|))) |stC'#6@@0| |env#0@@2|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|))))))) (ite (_module.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@1|)) (let ((|resultFun#1@@0| (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
(let ((|stC'#7@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#1@@0|))))
(let ((|fun'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#1@@0|))))
(let ((|resultArgs#1@@0| (_module.__default.evalArgsC ($LS $ly@@4) (Lit DatatypeTypeType |expr#0@@1|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@1|))) |stC#0@@8| |env#0@@2|)))
(let ((|stsC'#1@@0| ($Unbox SetType (_module.Tuple.snd |resultArgs#1@@0|))))
(let ((|args'#1@@0| ($Unbox SeqType (_module.Tuple.fst |resultArgs#1@@0|))))
(let ((|stsC''#1@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#7@@0|)) |stsC'#1@@0|)))
(ite (_module.__default.CompatibleC |stsC''#1@@0|) (let ((|stCombinedC#1@@0| (_module.__default.CombineC ($LS $LZ) |stsC''#1@@0|)))
(ite  (and (_module.Expression.exprLiteral_q |fun'#1@@0|) (_module.Literal.litPrimitive_q (_module.Expression.lit |fun'#1@@0|))) (ite (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |fun'#1@@0|))) (ite  (and (= (|Seq#Length| |args'#1@@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#1@@0| |stCombinedC#1@@0|)) (_module.__default.execC ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 2))) |stCombinedC#1@@0|) (ite (_module.__default.ConsistentCache |stCombinedC#1@@0|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rInconsistentCache|)))) ($Box DatatypeTypeType |stC#0@@8|)))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|)))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rCompatibility|)))) ($Box DatatypeTypeType |stC#0@@8|)))))))))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@8|)))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.397:16|
 :weight 3
 :skolemid |1114|
 :pattern ( (_module.__default.evalC ($LS $ly@@4) (Lit DatatypeTypeType |expr#0@@1|) |stC#0@@8| |env#0@@2|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) (|args#0@@1| T@U) (|stC#0@@9| T@U) ) (!  (=> (or (|_module.__default.ValidArgsC#canCall| |prim#0@@1| |args#0@@1| |stC#0@@9|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@1| Tclass._module.Primitive) ($Is SeqType |args#0@@1| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@9| Tclass._module.StateC)) (and (=> (_module.Primitive.primExec_q |prim#0@@1|) (= (|Seq#Length| |args#0@@1|) (LitInt 3))) (=> (_module.Primitive.primCreatePath_q |prim#0@@1|) (= (|Seq#Length| |args#0@@1|) (LitInt 1))))))) (and (=> (not (_module.Primitive.primCreatePath_q |prim#0@@1|)) (let ((|exts#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))
 (=> (_module.Expression.exprLiteral_q |cmd#1|) (=> (_module.Literal.litString_q (_module.Expression.lit |cmd#1|)) (=> (_module.Expression.exprLiteral_q |deps#1|) (=> (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#1|)) (=> (_module.Expression.exprLiteral_q |exts#1|) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#1|)) (and (and (_module.StateC.S_q |stC#0@@9|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#0@@9|))) (=> (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#1|)) (_module.__default.DomSt (_module.StateC.st |stC#0@@9|))) (|_module.__default.PreC#canCall| |cmd#1| |deps#1| |exts#1| |stC#0@@9|))))))))))))) (= (_module.__default.ValidArgsC |prim#0@@1| |args#0@@1| |stC#0@@9|) (ite (_module.Primitive.primCreatePath_q |prim#0@@1|) false (let ((|exts#0@@7| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 2)))))
(let ((|deps#0@@7| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 1)))))
(let ((|cmd#0@@7| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@1| (LitInt 0)))))
 (and (and (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@7|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@7|))) (_module.Expression.exprLiteral_q |deps#0@@7|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@7|))) (_module.Expression.exprLiteral_q |exts#0@@7|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@7|))) (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#0@@7|)) (_module.__default.DomSt (_module.StateC.st |stC#0@@9|)))) (_module.__default.PreC |cmd#0@@7| |deps#0@@7| |exts#0@@7| |stC#0@@9|)))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.497:28|
 :skolemid |1170|
 :pattern ( (_module.__default.ValidArgsC |prim#0@@1| |args#0@@1| |stC#0@@9|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|h#0@@1| T@U) (|cmd#0@@8| T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.SetC#canCall| |h#0@@1| |cmd#0@@8| |c#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |h#0@@1| Tclass._module.HashValue) ($Is DatatypeTypeType |cmd#0@@8| (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar)))) ($IsBox |c#0| Tclass._module.Cache)))) (and (|Set#Equal| (_module.__default.DomC (_module.__default.SetC |h#0@@1| |cmd#0@@8| |c#0|)) (|Set#Union| (_module.__default.DomC |c#0|) (|Set#UnionOne| |Set#Empty| |h#0@@1|))) ($IsBox (_module.__default.SetC |h#0@@1| |cmd#0@@8| |c#0|) Tclass._module.Cache)))
 :qid |CloudMakeConsistentBuildslegacydfy.38:21|
 :skolemid |731|
 :pattern ( (_module.__default.SetC |h#0@@1| |cmd#0@@8| |c#0|))
))))
(assert (forall ((s@@8 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@2)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@8 v@@2))
)))
(assert (forall ((_module.Triple$A@@4 T@U) (_module.Triple$B@@4 T@U) (_module.Triple$C@@4 T@U) (|a#171#0#0| T@U) (|a#171#1#0| T@U) (|a#171#2#0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h@@0)  (and (and ($IsAllocBox |a#171#0#0| _module.Triple$A@@4 $h@@0) ($IsAllocBox |a#171#1#0| _module.Triple$B@@4 $h@@0)) ($IsAllocBox |a#171#2#0| _module.Triple$C@@4 $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1562|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0| |a#171#1#0| |a#171#2#0|) (Tclass._module.Triple _module.Triple$A@@4 _module.Triple$B@@4 _module.Triple$C@@4) $h@@0))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert (forall ((ss T@U) ) (!  (=> (|$let#0$canCall| ss) (and ($Is SeqType (|$let#0_s| ss) (TSeq TChar)) (|Set#IsMember| ss ($Box SeqType (|$let#0_s| ss)))))
 :qid |CloudMakeConsistentBuildslegacydfy.94:3|
 :skolemid |775|
 :pattern ( (|$let#0_s| ss))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|paths#0@@1| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|_module.__default.Restrict#canCall| |paths#0@@1| |st#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($Is SetType |paths#0@@1| (TSet Tclass._module.Path)) ($IsBox |st#0@@1| Tclass._module.State)) (|Set#Subset| |paths#0@@1| (_module.__default.DomSt |st#0@@1|))))) (and (let ((|st'#0| (_module.__default.Restrict |paths#0@@1| |st#0@@1|)))
 (and (|Set#Equal| (_module.__default.DomSt |st'#0|) |paths#0@@1|) (forall ((|p#0@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@2| Tclass._module.Path) (=> (|Set#IsMember| |paths#0@@1| ($Box DatatypeTypeType |p#0@@2|)) (= (_module.__default.GetSt |p#0@@2| |st#0@@1|) (_module.__default.GetSt |p#0@@2| |st'#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.16:35|
 :skolemid |710|
 :pattern ( (_module.__default.GetSt |p#0@@2| |st'#0|))
 :pattern ( (_module.__default.GetSt |p#0@@2| |st#0@@1|))
 :pattern ( (|Set#IsMember| |paths#0@@1| ($Box DatatypeTypeType |p#0@@2|)))
)))) ($IsBox (_module.__default.Restrict |paths#0@@1| |st#0@@1|) Tclass._module.State)))
 :qid |CloudMakeConsistentBuildslegacydfy.12:25|
 :skolemid |711|
 :pattern ( (_module.__default.Restrict |paths#0@@1| |st#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|ss#0@@0| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| |ss#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |ss#0@@0| (TSet (TSeq TChar)))) (not (|Set#Equal| |ss#0@@0| |Set#Empty|))))) (and (|$let#0$canCall| |ss#0@@0|) (= (_module.__default.Choose |ss#0@@0|) (let ((|s#0| (|$let#0_s| |ss#0@@0|)))
|s#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.91:16|
 :skolemid |776|
 :pattern ( (_module.__default.Choose |ss#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall (($ly@@5 T@U) (|expr#0@@2| T@U) (|args#0@@2| T@U) (|stC#0@@10| T@U) (|env#0@@3| T@U) (|args'#0| T@U) (|stsC'#0| T@U) ) (! (= (_module.__default.evalArgsC_k ($LS $ly@@5) |expr#0@@2| |args#0@@2| |stC#0@@10| |env#0@@3| |args'#0| |stsC'#0|) (_module.__default.evalArgsC_k $ly@@5 |expr#0@@2| |args#0@@2| |stC#0@@10| |env#0@@3| |args'#0| |stsC'#0|))
 :qid |CloudMakeConsistentBuildslegacydfy.482:16|
 :skolemid |1152|
 :pattern ( (_module.__default.evalArgsC_k ($LS $ly@@5) |expr#0@@2| |args#0@@2| |stC#0@@10| |env#0@@3| |args'#0| |stsC'#0|))
)))
(assert (forall ((d@@60 T@U) ) (!  (=> ($Is DatatypeTypeType d@@60 Tclass._module.Literal) (or (or (or (or (or (or (or (or (or (_module.Literal.litTrue_q d@@60) (_module.Literal.litFalse_q d@@60)) (_module.Literal.litUndefined_q d@@60)) (_module.Literal.litNull_q d@@60)) (_module.Literal.litNumber_q d@@60)) (_module.Literal.litString_q d@@60)) (_module.Literal.litPrimitive_q d@@60)) (_module.Literal.litArrOfPaths_q d@@60)) (_module.Literal.litArrOfStrings_q d@@60)) (_module.Literal.litArray_q d@@60)))
 :qid |unknown.0:0|
 :skolemid |1481|
 :pattern ( (_module.Literal.litArray_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litArrOfStrings_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litArrOfPaths_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litPrimitive_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litString_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litNumber_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litNull_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litUndefined_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litFalse_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
 :pattern ( (_module.Literal.litTrue_q d@@60) ($Is DatatypeTypeType d@@60 Tclass._module.Literal))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@6 T@U) (|expr#0@@3| T@U) (|args#0@@3| T@U) (|stC#0@@11| T@U) (|env#0@@4| T@U) (|args'#0@@0| T@U) (|stsC'#0@@0| T@U) ) (!  (=> (or (|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@3|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|) (Lit SeqType |args'#0@@0|) (Lit SetType |stsC'#0@@0|)) (and (< 6 $FunctionContextHeight) (and (and (and (and (and (and ($Is DatatypeTypeType |expr#0@@3| Tclass._module.Expression) ($Is SeqType |args#0@@3| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@11| Tclass._module.StateC)) ($IsBox |env#0@@4| Tclass._module.Env)) ($Is SeqType |args'#0@@0| (TSeq Tclass._module.Expression))) ($Is SetType |stsC'#0@@0| (TSet Tclass._module.StateC))) (forall ((|arg#5| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#5| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@3| ($Box DatatypeTypeType |arg#5|)) (< (DtRank |arg#5|) (DtRank |expr#0@@3|))))
 :qid |CloudMakeConsistentBuildslegacydfy.485:19|
 :skolemid |1161|
 :pattern ( (|Seq#Contains| |args#0@@3| ($Box DatatypeTypeType |arg#5|)))
))))) (and (=> (not (|Seq#Equal| |args#0@@3| |Seq#Empty|)) (let ((|arg#6| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (and (|_module.__default.evalC#canCall| |arg#6| (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|)) (let ((|result#2| (_module.__default.evalC ($LS $ly@@6) |arg#6| (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|))))
 (and (and (_module.Tuple.Pair_q |result#2|) (_module.Tuple.Pair_q |result#2|)) (let ((|stC'#2| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#2|))))
(let ((|arg'#2| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#2|))))
(|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@3|) (LitInt 1))) (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|) (|Seq#Append| |args'#0@@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#2|))) (|Set#Union| |stsC'#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#2|))))))))))) (= (_module.__default.evalArgsC_k ($LS $ly@@6) (Lit DatatypeTypeType |expr#0@@3|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|) (Lit SeqType |args'#0@@0|) (Lit SetType |stsC'#0@@0|)) (ite (|Seq#Equal| |args#0@@3| |Seq#Empty|) (|#_module.Tuple.Pair| ($Box SeqType (Lit SeqType |args'#0@@0|)) ($Box SetType (Lit SetType |stsC'#0@@0|))) (let ((|arg#6@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
(let ((|result#2@@0| (_module.__default.evalC ($LS $ly@@6) |arg#6@@0| (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|))))
(let ((|stC'#2@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#2@@0|))))
(let ((|arg'#2@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#2@@0|))))
(_module.__default.evalArgsC_k ($LS $ly@@6) (Lit DatatypeTypeType |expr#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@3|) (LitInt 1))) (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|) (|Seq#Append| |args'#0@@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#2@@0|))) (|Set#Union| |stsC'#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#2@@0|))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.482:16|
 :weight 3
 :skolemid |1162|
 :pattern ( (_module.__default.evalArgsC_k ($LS $ly@@6) (Lit DatatypeTypeType |expr#0@@3|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stC#0@@11|) (Lit BoxType |env#0@@4|) (Lit SeqType |args'#0@@0|) (Lit SetType |stsC'#0@@0|)))
))))
(assert (forall ((stsC T@U) ) (!  (=> (|$let#3$canCall| stsC) (and ($Is DatatypeTypeType (|$let#3_stC| stsC) Tclass._module.StateC) (|Set#IsMember| stsC ($Box DatatypeTypeType (|$let#3_stC| stsC)))))
 :qid |CloudMakeConsistentBuildslegacydfy.133:3|
 :skolemid |822|
 :pattern ( (|$let#3_stC| stsC))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Path)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($IsBox bx@@3 Tclass._module.Path))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Expression)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($IsBox bx@@4 Tclass._module.Expression))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.StateC) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass._module.StateC)))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($IsBox bx@@5 Tclass._module.StateC))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Primitive)))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( ($IsBox bx@@6 Tclass._module.Primitive))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.Literal)))
 :qid |unknown.0:0|
 :skolemid |1329|
 :pattern ( ($IsBox bx@@7 Tclass._module.Literal))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass._module.Reason)))
 :qid |unknown.0:0|
 :skolemid |1399|
 :pattern ( ($IsBox bx@@8 Tclass._module.Reason))
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
(assert (forall ((s@@10 T@U) (i@@4 Int) (v@@4 T@U) ) (!  (and (=> (= i@@4 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@4) v@@4)) (=> (or (not (= i@@4 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@4) (|Seq#Index| s@@10 i@@4))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@4) i@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@8| T@U) (|exts#0@@8| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|_module.__default.Pre#canCall| |cmd#0@@9| |deps#0@@8| |exts#0@@8| |st#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@9| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@8| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@8| Tclass._module.Expression)) ($IsBox |st#0@@2| Tclass._module.State)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@9|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@9|))) (_module.Expression.exprLiteral_q |deps#0@@8|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@8|))) (_module.Expression.exprLiteral_q |exts#0@@8|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@8|)))))) (and (forall ((|e#0@@6| T@U) ) (!  (=> ($Is SeqType |e#0@@6| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@8|)) ($Box SeqType |e#0@@6|)) (and (and (|_module.__default.Loc#canCall| |cmd#0@@9| |deps#0@@8| |e#0@@6|) (|_module.__default.DomSt#canCall| |st#0@@2|)) (=> (|Set#IsMember| (_module.__default.DomSt |st#0@@2|) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@6|))) (and (and (|_module.__default.Loc#canCall| |cmd#0@@9| |deps#0@@8| |e#0@@6|) (|_module.__default.GetSt#canCall| (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@6|) |st#0@@2|)) (|_module.__default.Res#canCall| |cmd#0@@9| |deps#0@@8| |e#0@@6| |st#0@@2|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |917|
 :pattern ( (_module.__default.Res |cmd#0@@9| |deps#0@@8| |e#0@@6| |st#0@@2|))
 :pattern ( (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@6|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@8|)) ($Box SeqType |e#0@@6|)))
)) (= (_module.__default.Pre |cmd#0@@9| |deps#0@@8| |exts#0@@8| |st#0@@2|) (forall ((|e#0@@7| T@U) ) (!  (=> ($Is SeqType |e#0@@7| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@8|)) ($Box SeqType |e#0@@7|)) (=> (|Set#IsMember| (_module.__default.DomSt |st#0@@2|) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@7|))) (= (_module.__default.GetSt (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@7|) |st#0@@2|) (_module.__default.Res |cmd#0@@9| |deps#0@@8| |e#0@@7| |st#0@@2|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |916|
 :pattern ( (_module.__default.Res |cmd#0@@9| |deps#0@@8| |e#0@@7| |st#0@@2|))
 :pattern ( (_module.__default.Loc |cmd#0@@9| |deps#0@@8| |e#0@@7|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@8|)) ($Box SeqType |e#0@@7|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.196:21|
 :skolemid |918|
 :pattern ( (_module.__default.Pre |cmd#0@@9| |deps#0@@8| |exts#0@@8| |st#0@@2|))
))))
(assert (forall ((_module.Triple$A@@5 T@U) (_module.Triple$B@@5 T@U) (_module.Triple$C@@5 T@U) (d@@61 T@U) ) (!  (=> ($Is DatatypeTypeType d@@61 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)) (_module.Triple.Trio_q d@@61))
 :qid |unknown.0:0|
 :skolemid |1577|
 :pattern ( (_module.Triple.Trio_q d@@61) ($Is DatatypeTypeType d@@61 (Tclass._module.Triple _module.Triple$A@@5 _module.Triple$B@@5 _module.Triple$C@@5)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (!  (=> (and (_module.Literal.litString_q a@@14) (_module.Literal.litString_q b@@11)) (= (|_module.Literal#Equal| a@@14 b@@11) (|Seq#Equal| (_module.Literal.str a@@14) (_module.Literal.str b@@11))))
 :qid |unknown.0:0|
 :skolemid |1487|
 :pattern ( (|_module.Literal#Equal| a@@14 b@@11) (_module.Literal.litString_q a@@14))
 :pattern ( (|_module.Literal#Equal| a@@14 b@@11) (_module.Literal.litString_q b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (and (_module.Literal.litPrimitive_q a@@15) (_module.Literal.litPrimitive_q b@@12)) (= (|_module.Literal#Equal| a@@15 b@@12) (|_module.Primitive#Equal| (_module.Literal.prim a@@15) (_module.Literal.prim b@@12))))
 :qid |unknown.0:0|
 :skolemid |1488|
 :pattern ( (|_module.Literal#Equal| a@@15 b@@12) (_module.Literal.litPrimitive_q a@@15))
 :pattern ( (|_module.Literal#Equal| a@@15 b@@12) (_module.Literal.litPrimitive_q b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (and (_module.Literal.litArrOfPaths_q a@@16) (_module.Literal.litArrOfPaths_q b@@13)) (= (|_module.Literal#Equal| a@@16 b@@13) (|Set#Equal| (_module.Literal.paths a@@16) (_module.Literal.paths b@@13))))
 :qid |unknown.0:0|
 :skolemid |1489|
 :pattern ( (|_module.Literal#Equal| a@@16 b@@13) (_module.Literal.litArrOfPaths_q a@@16))
 :pattern ( (|_module.Literal#Equal| a@@16 b@@13) (_module.Literal.litArrOfPaths_q b@@13))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (=> (and (_module.Literal.litArrOfStrings_q a@@17) (_module.Literal.litArrOfStrings_q b@@14)) (= (|_module.Literal#Equal| a@@17 b@@14) (|Set#Equal| (_module.Literal.strs a@@17) (_module.Literal.strs b@@14))))
 :qid |unknown.0:0|
 :skolemid |1490|
 :pattern ( (|_module.Literal#Equal| a@@17 b@@14) (_module.Literal.litArrOfStrings_q a@@17))
 :pattern ( (|_module.Literal#Equal| a@@17 b@@14) (_module.Literal.litArrOfStrings_q b@@14))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (_module.Literal.litArray_q a@@18) (_module.Literal.litArray_q b@@15)) (= (|_module.Literal#Equal| a@@18 b@@15) (|Seq#Equal| (_module.Literal.arr a@@18) (_module.Literal.arr b@@15))))
 :qid |unknown.0:0|
 :skolemid |1491|
 :pattern ( (|_module.Literal#Equal| a@@18 b@@15) (_module.Literal.litArray_q a@@18))
 :pattern ( (|_module.Literal#Equal| a@@18 b@@15) (_module.Literal.litArray_q b@@15))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|cmd#0@@10| T@U) (|deps#0@@9| T@U) (|exts#0@@9| T@U) (|stC#0@@12| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@10| |deps#0@@9| |exts#0@@9| |stC#0@@12|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@10| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@9| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@9| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@12| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@10|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@10|))) (_module.Expression.exprLiteral_q |deps#0@@9|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@9|))) (_module.Expression.exprLiteral_q |exts#0@@9|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@9|)))))) (and (let ((|stC'#0@@1| (_module.__default.UpdateC $ly@@7 |cmd#0@@10| |deps#0@@9| |exts#0@@9| |stC#0@@12|)))
(let ((|hashValues#0| (|Set#FromBoogieMap| (|lambda#4| (TSeq TChar) (_module.Literal.strs (_module.Expression.lit |exts#0@@9|)) |cmd#0@@10| |deps#0@@9| (_module.Literal.strs (_module.Expression.lit |exts#0@@9|)) |cmd#0@@10| |deps#0@@9|))))
 (and (= (_module.StateC.st |stC'#0@@1|) (_module.StateC.st |stC#0@@12|)) (|Set#Equal| (|Set#Union| (_module.__default.DomC (_module.StateC.c |stC#0@@12|)) |hashValues#0|) (_module.__default.DomC (_module.StateC.c |stC'#0@@1|)))))) ($Is DatatypeTypeType (_module.__default.UpdateC $ly@@7 |cmd#0@@10| |deps#0@@9| |exts#0@@9| |stC#0@@12|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |737|
 :pattern ( (_module.__default.UpdateC $ly@@7 |cmd#0@@10| |deps#0@@9| |exts#0@@9| |stC#0@@12|))
))))
(assert (forall ((a@@19 T@U) (b@@16 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@19 b@@16) o@@4)  (or (|Set#IsMember| a@@19 o@@4) (|Set#IsMember| b@@16 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@19 b@@16) o@@4))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@11 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11) (exists ((i@@5 Int) ) (!  (and (and (and (<= 0 i@@5) (< i@@5 n@@5)) (< i@@5 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@5) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@11 i@@5))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (|Set#Disjoint| a@@20 b@@17) (and (= (|Set#Difference| (|Set#Union| a@@20 b@@17) a@@20) b@@17) (= (|Set#Difference| (|Set#Union| a@@20 b@@17) b@@17) a@@20)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@20 b@@17))
)))
(assert (forall ((_module.Triple$A@@6 T@U) (_module.Triple$B@@6 T@U) (_module.Triple$C@@6 T@U) (|a#171#0#0@@0| T@U) (|a#171#1#0@@0| T@U) (|a#171#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6))  (and (and ($IsBox |a#171#0#0@@0| _module.Triple$A@@6) ($IsBox |a#171#1#0@@0| _module.Triple$B@@6)) ($IsBox |a#171#2#0@@0| _module.Triple$C@@6)))
 :qid |unknown.0:0|
 :skolemid |1561|
 :pattern ( ($Is DatatypeTypeType (|#_module.Triple.Trio| |a#171#0#0@@0| |a#171#1#0@@0| |a#171#2#0@@0|) (Tclass._module.Triple _module.Triple$A@@6 _module.Triple$B@@6 _module.Triple$C@@6)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@10| T@U) (|exts#0@@10| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|_module.__default.Pre#canCall| (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) (Lit DatatypeTypeType |exts#0@@10|) (Lit BoxType |st#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@11| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@10| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@10| Tclass._module.Expression)) ($IsBox |st#0@@3| Tclass._module.State)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@11|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@11|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@10|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@10|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@10|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@10|))))))))))) (and (forall ((|e#2@@3| T@U) ) (!  (=> ($Is SeqType |e#2@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@10|))))) ($Box SeqType |e#2@@3|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@3|) (|_module.__default.DomSt#canCall| (Lit BoxType |st#0@@3|))) (=> (|Set#IsMember| (_module.__default.DomSt (Lit BoxType |st#0@@3|)) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@3|))) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@3|) (|_module.__default.GetSt#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@3|) (Lit BoxType |st#0@@3|))) (|_module.__default.Res#canCall| (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@3| (Lit BoxType |st#0@@3|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |923|
 :pattern ( (_module.__default.Res |cmd#0@@11| |deps#0@@10| |e#2@@3| |st#0@@3|))
 :pattern ( (_module.__default.Loc |cmd#0@@11| |deps#0@@10| |e#2@@3|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@10|)) ($Box SeqType |e#2@@3|)))
)) (= (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) (Lit DatatypeTypeType |exts#0@@10|) (Lit BoxType |st#0@@3|)) (forall ((|e#2@@4| T@U) ) (!  (=> ($Is SeqType |e#2@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@10|))))) ($Box SeqType |e#2@@4|)) (=> (|Set#IsMember| (_module.__default.DomSt (Lit BoxType |st#0@@3|)) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@4|))) (= (_module.__default.GetSt (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@4|) (Lit BoxType |st#0@@3|)) (_module.__default.Res (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) |e#2@@4| (Lit BoxType |st#0@@3|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |922|
 :pattern ( (_module.__default.Res |cmd#0@@11| |deps#0@@10| |e#2@@4| |st#0@@3|))
 :pattern ( (_module.__default.Loc |cmd#0@@11| |deps#0@@10| |e#2@@4|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@10|)) ($Box SeqType |e#2@@4|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.196:21|
 :weight 3
 :skolemid |924|
 :pattern ( (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@11|) (Lit DatatypeTypeType |deps#0@@10|) (Lit DatatypeTypeType |exts#0@@10|) (Lit BoxType |st#0@@3|)))
))))
(assert (forall ((s@@12 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@12 x@@12) (exists ((i@@6 Int) ) (!  (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@6) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@12 i@@6))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@12 x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@4| T@U) ) (!  (=> (or (|_module.__default.Value#canCall| |expr#0@@4|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@4| Tclass._module.Expression))) (= (_module.__default.Value |expr#0@@4|) (_module.Expression.exprLiteral_q |expr#0@@4|)))
 :qid |CloudMakeConsistentBuildslegacydfy.348:23|
 :skolemid |1075|
 :pattern ( (_module.__default.Value |expr#0@@4|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@8 T@U) ($Heap@@1 T@U) (|stsC#0@@2| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| (Lit SetType |stsC#0@@2|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is SetType |stsC#0@@2| (TSet Tclass._module.StateC))) (not (|Set#Equal| |stsC#0@@2| |Set#Empty|))))) (and (and (|$let#3$canCall| (Lit SetType |stsC#0@@2|)) (=> (not (|Set#Equal| |stsC#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@2|)))))) (and (|_module.__default.CombineC#canCall| (|Set#Difference| |stsC#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@2|)))))) (|_module.__default.UnionC#canCall| (|$let#3_stC| (Lit SetType |stsC#0@@2|)) (_module.__default.CombineC ($LS $ly@@8) (|Set#Difference| |stsC#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#3_stC| (Lit SetType |stsC#0@@2|)))))))))) (= (_module.__default.CombineC ($LS $ly@@8) (Lit SetType |stsC#0@@2|)) (let ((|stC#7| (|$let#3_stC| (Lit SetType |stsC#0@@2|))))
(ite (|Set#Equal| |stsC#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#7|))) |stC#7| (_module.__default.UnionC |stC#7| (_module.__default.CombineC ($LS $ly@@8) (|Set#Difference| |stsC#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC#7|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :weight 3
 :skolemid |824|
 :pattern ( (_module.__default.CombineC ($LS $ly@@8) (Lit SetType |stsC#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@11| T@U) (|ext#0| T@U) ) (!  (=> (or (|_module.__default.Loc#canCall| |cmd#0@@12| |deps#0@@11| |ext#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |cmd#0@@12| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@11| Tclass._module.Expression)) ($Is SeqType |ext#0| (TSeq TChar))))) ($Is DatatypeTypeType (_module.__default.Loc |cmd#0@@12| |deps#0@@11| |ext#0|) Tclass._module.Path))
 :qid |CloudMakeConsistentBuildslegacydfy.228:20|
 :skolemid |966|
 :pattern ( (_module.__default.Loc |cmd#0@@12| |deps#0@@11| |ext#0|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@9 T@U) (|expr#0@@5| T@U) (|args#0@@4| T@U) (|stC#0@@13| T@U) (|env#0@@5| T@U) ) (!  (=> (or (|_module.__default.evalArgsC#canCall| |expr#0@@5| |args#0@@4| |stC#0@@13| |env#0@@5|) (and (< 6 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@5| Tclass._module.Expression) ($Is SeqType |args#0@@4| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@13| Tclass._module.StateC)) ($IsBox |env#0@@5| Tclass._module.Env)) (forall ((|arg#0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#0|)) (< (DtRank |arg#0|) (DtRank |expr#0@@5|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1139|
 :pattern ( (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#0|)))
))))) ($Is DatatypeTypeType (_module.__default.evalArgsC $ly@@9 |expr#0@@5| |args#0@@4| |stC#0@@13| |env#0@@5|) (Tclass._module.Tuple (TSeq Tclass._module.Expression) (TSet Tclass._module.StateC))))
 :qid |CloudMakeConsistentBuildslegacydfy.473:16|
 :skolemid |1140|
 :pattern ( (_module.__default.evalArgsC $ly@@9 |expr#0@@5| |args#0@@4| |stC#0@@13| |env#0@@5|))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stC#0@@14| T@U) (|stC'#0@@2| T@U) ) (!  (=> (or (|_module.__default.UnionC#canCall| |stC#0@@14| |stC'#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |stC#0@@14| Tclass._module.StateC) ($Is DatatypeTypeType |stC'#0@@2| Tclass._module.StateC)))) (and (let ((|result#0| (_module.__default.UnionC |stC#0@@14| |stC'#0@@2|)))
 (and (and (and (|Set#Equal| (_module.__default.DomSt (_module.StateC.st |result#0|)) (|Set#Union| (_module.__default.DomSt (_module.StateC.st |stC#0@@14|)) (_module.__default.DomSt (_module.StateC.st |stC'#0@@2|)))) (forall ((|p#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@3| Tclass._module.Path) (and (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@3|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@14|)) ($Box DatatypeTypeType |p#0@@3|)) (= (_module.__default.GetSt |p#0@@3| (_module.StateC.st |result#0|)) (_module.__default.GetSt |p#0@@3| (_module.StateC.st |stC#0@@14|))))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@3|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@2|)) ($Box DatatypeTypeType |p#0@@3|)) (= (_module.__default.GetSt |p#0@@3| (_module.StateC.st |result#0|)) (_module.__default.GetSt |p#0@@3| (_module.StateC.st |stC'#0@@2|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.103:13|
 :skolemid |781|
 :pattern ( (_module.__default.GetSt |p#0@@3| (_module.StateC.st |stC'#0@@2|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@2|)) ($Box DatatypeTypeType |p#0@@3|)))
 :pattern ( (_module.__default.GetSt |p#0@@3| (_module.StateC.st |stC#0@@14|)))
 :pattern ( (_module.__default.GetSt |p#0@@3| (_module.StateC.st |result#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@14|)) ($Box DatatypeTypeType |p#0@@3|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |result#0|)) ($Box DatatypeTypeType |p#0@@3|)))
))) (|Set#Equal| (_module.__default.DomC (_module.StateC.c |result#0|)) (|Set#Union| (_module.__default.DomC (_module.StateC.c |stC#0@@14|)) (_module.__default.DomC (_module.StateC.c |stC'#0@@2|))))) (forall ((|h#0@@2| T@U) ) (!  (=> ($IsBox |h#0@@2| Tclass._module.HashValue) (and (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0@@2|) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@14|)) |h#0@@2|) (|_module.Triple#Equal| (_module.__default.GetC |h#0@@2| (_module.StateC.c |result#0|)) (_module.__default.GetC |h#0@@2| (_module.StateC.c |stC#0@@14|))))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0@@2|) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@2|)) |h#0@@2|) (|_module.Triple#Equal| (_module.__default.GetC |h#0@@2| (_module.StateC.c |result#0|)) (_module.__default.GetC |h#0@@2| (_module.StateC.c |stC'#0@@2|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.107:13|
 :skolemid |782|
 :pattern ( (_module.__default.GetC |h#0@@2| (_module.StateC.c |stC'#0@@2|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@2|)) |h#0@@2|))
 :pattern ( (_module.__default.GetC |h#0@@2| (_module.StateC.c |stC#0@@14|)))
 :pattern ( (_module.__default.GetC |h#0@@2| (_module.StateC.c |result#0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@14|)) |h#0@@2|))
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |result#0|)) |h#0@@2|))
)))) ($Is DatatypeTypeType (_module.__default.UnionC |stC#0@@14| |stC'#0@@2|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.99:23|
 :skolemid |783|
 :pattern ( (_module.__default.UnionC |stC#0@@14| |stC'#0@@2|))
))))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (|Set#Equal| a@@21 b@@18) (= a@@21 b@@18))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@21 b@@18))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (|Seq#Equal| a@@22 b@@19) (= a@@22 b@@19))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@22 b@@19))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) ) (!  (=> (or (|_module.__default.Arity#canCall| |prim#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@2| Tclass._module.Primitive))) (<= (LitInt 0) (_module.__default.Arity |prim#0@@2|)))
 :qid |CloudMakeConsistentBuildslegacydfy.360:22|
 :skolemid |1083|
 :pattern ( (_module.__default.Arity |prim#0@@2|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@13| T@U) (|deps#0@@12| T@U) (|exts#0@@11| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|_module.__default.Pre#canCall| (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) (Lit DatatypeTypeType |exts#0@@11|) |st#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@13| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@12| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@11| Tclass._module.Expression)) ($IsBox |st#0@@4| Tclass._module.State)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@13|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@13|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@12|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@12|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@11|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@11|))))))))))) (and (forall ((|e#1@@2| T@U) ) (!  (=> ($Is SeqType |e#1@@2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@11|))))) ($Box SeqType |e#1@@2|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@2|) (|_module.__default.DomSt#canCall| |st#0@@4|)) (=> (|Set#IsMember| (_module.__default.DomSt |st#0@@4|) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@2|))) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@2|) (|_module.__default.GetSt#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@2|) |st#0@@4|)) (|_module.__default.Res#canCall| (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@2| |st#0@@4|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |920|
 :pattern ( (_module.__default.Res |cmd#0@@13| |deps#0@@12| |e#1@@2| |st#0@@4|))
 :pattern ( (_module.__default.Loc |cmd#0@@13| |deps#0@@12| |e#1@@2|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@11|)) ($Box SeqType |e#1@@2|)))
)) (= (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) (Lit DatatypeTypeType |exts#0@@11|) |st#0@@4|) (forall ((|e#1@@3| T@U) ) (!  (=> ($Is SeqType |e#1@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@11|))))) ($Box SeqType |e#1@@3|)) (=> (|Set#IsMember| (_module.__default.DomSt |st#0@@4|) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@3|))) (= (_module.__default.GetSt (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@3|) |st#0@@4|) (_module.__default.Res (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) |e#1@@3| |st#0@@4|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |919|
 :pattern ( (_module.__default.Res |cmd#0@@13| |deps#0@@12| |e#1@@3| |st#0@@4|))
 :pattern ( (_module.__default.Loc |cmd#0@@13| |deps#0@@12| |e#1@@3|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@11|)) ($Box SeqType |e#1@@3|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.196:21|
 :weight 3
 :skolemid |921|
 :pattern ( (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@13|) (Lit DatatypeTypeType |deps#0@@12|) (Lit DatatypeTypeType |exts#0@@11|) |st#0@@4|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@14| T@U) (|deps#0@@13| T@U) (|exts#0@@12| T@U) (|stC#0@@15| T@U) ) (!  (=> (or (|_module.__default.PostC#canCall| |cmd#0@@14| |deps#0@@13| |exts#0@@12| |stC#0@@15|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@14| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@13| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@12| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@15| Tclass._module.StateC)) (and (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@14|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@14|))) (_module.Expression.exprLiteral_q |deps#0@@13|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@13|))) (_module.Expression.exprLiteral_q |exts#0@@12|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@12|))) (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#0@@13|)) (_module.__default.DomSt (_module.StateC.st |stC#0@@15|))))))) (and (and (and (and (_module.StateC.S_q |stC#0@@15|) (|_module.__default.Restrict#canCall| (_module.Literal.paths (_module.Expression.lit |deps#0@@13|)) (_module.StateC.st |stC#0@@15|))) (|_module.__default.Post#canCall| |cmd#0@@14| |deps#0@@13| |exts#0@@12| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@13|)) (_module.StateC.st |stC#0@@15|)))) (=> (_module.__default.Post |cmd#0@@14| |deps#0@@13| |exts#0@@12| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@13|)) (_module.StateC.st |stC#0@@15|))) (forall ((|e#0@@8| T@U) ) (!  (=> ($Is SeqType |e#0@@8| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@12|)) ($Box SeqType |e#0@@8|)) (and (and (|_module.__default.Loc#canCall| |cmd#0@@14| |deps#0@@13| |e#0@@8|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@14| |deps#0@@13| |e#0@@8|))) (and (_module.StateC.S_q |stC#0@@15|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@15|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.304:10|
 :skolemid |1057|
 :pattern ( (_module.__default.Loc |cmd#0@@14| |deps#0@@13| |e#0@@8|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@12|)) ($Box SeqType |e#0@@8|)))
)))) (= (_module.__default.PostC |cmd#0@@14| |deps#0@@13| |exts#0@@12| |stC#0@@15|)  (and (_module.__default.Post |cmd#0@@14| |deps#0@@13| |exts#0@@12| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps#0@@13|)) (_module.StateC.st |stC#0@@15|))) (forall ((|e#0@@9| T@U) ) (!  (=> ($Is SeqType |e#0@@9| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@12|)) ($Box SeqType |e#0@@9|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@15|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@14| |deps#0@@13| |e#0@@9|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.304:10|
 :skolemid |1056|
 :pattern ( (_module.__default.Loc |cmd#0@@14| |deps#0@@13| |e#0@@9|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@12|)) ($Box SeqType |e#0@@9|)))
))))))
 :qid |CloudMakeConsistentBuildslegacydfy.295:23|
 :skolemid |1058|
 :pattern ( (_module.__default.PostC |cmd#0@@14| |deps#0@@13| |exts#0@@12| |stC#0@@15|))
))))
(assert (forall ((s@@13 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@4| T@U) ) (!  (=> (or (|_module.__default.Hash#canCall| |p#0@@4|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@4| Tclass._module.Path))) ($IsBox (_module.__default.Hash |p#0@@4|) Tclass._module.HashValue))
 :qid |CloudMakeConsistentBuildslegacydfy.307:21|
 :skolemid |1071|
 :pattern ( (_module.__default.Hash |p#0@@4|))
))))
(assert (forall ((d@@62 T@U) ) (!  (=> ($Is DatatypeTypeType d@@62 Tclass._module.Primitive) (or (_module.Primitive.primCreatePath_q d@@62) (_module.Primitive.primExec_q d@@62)))
 :qid |unknown.0:0|
 :skolemid |1499|
 :pattern ( (_module.Primitive.primExec_q d@@62) ($Is DatatypeTypeType d@@62 Tclass._module.Primitive))
 :pattern ( (_module.Primitive.primCreatePath_q d@@62) ($Is DatatypeTypeType d@@62 Tclass._module.Primitive))
)))
(assert (forall ((d@@63 T@U) ) (!  (=> ($Is DatatypeTypeType d@@63 Tclass._module.Path) (or (_module.Path.OpaquePath_q d@@63) (_module.Path.TransparentPath_q d@@63)))
 :qid |unknown.0:0|
 :skolemid |1534|
 :pattern ( (_module.Path.TransparentPath_q d@@63) ($Is DatatypeTypeType d@@63 Tclass._module.Path))
 :pattern ( (_module.Path.OpaquePath_q d@@63) ($Is DatatypeTypeType d@@63 Tclass._module.Path))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@15| T@U) (|deps#0@@14| T@U) (|exts#0@@13| T@U) (|stC#0@@16| T@U) ) (!  (=> (or (|_module.__default.PostC#canCall| (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (Lit DatatypeTypeType |stC#0@@16|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@15| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@14| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@13| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@16| Tclass._module.StateC)) (and (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@15|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@15|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@14|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@13|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@13|))))) (|Set#Subset| (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|)))) (_module.__default.DomSt (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@16|))))))))) (and (and (and (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@16|)) (|_module.__default.Restrict#canCall| (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@16|))))) (|_module.__default.Post#canCall| (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@16|)))))) (=> (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@16|))))) (forall ((|e#1@@4| T@U) ) (!  (=> ($Is SeqType |e#1@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@13|))))) ($Box SeqType |e#1@@4|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) |e#1@@4|) (|_module.__default.Hash#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) |e#1@@4|))) (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@16|)) (|_module.__default.DomC#canCall| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@16|))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.304:10|
 :skolemid |1060|
 :pattern ( (_module.__default.Loc |cmd#0@@15| |deps#0@@14| |e#1@@4|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@13|)) ($Box SeqType |e#1@@4|)))
)))) (= (_module.__default.PostC (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (Lit DatatypeTypeType |stC#0@@16|))  (and (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@14|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@16|))))) (forall ((|e#1@@5| T@U) ) (!  (=> ($Is SeqType |e#1@@5| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@13|))))) ($Box SeqType |e#1@@5|)) (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@16|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) |e#1@@5|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.304:10|
 :skolemid |1059|
 :pattern ( (_module.__default.Loc |cmd#0@@15| |deps#0@@14| |e#1@@5|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@13|)) ($Box SeqType |e#1@@5|)))
))))))
 :qid |CloudMakeConsistentBuildslegacydfy.295:23|
 :weight 3
 :skolemid |1061|
 :pattern ( (_module.__default.PostC (Lit DatatypeTypeType |cmd#0@@15|) (Lit DatatypeTypeType |deps#0@@14|) (Lit DatatypeTypeType |exts#0@@13|) (Lit DatatypeTypeType |stC#0@@16|)))
))))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TChar) (and (= ($Box charType ($Unbox charType bx@@10)) bx@@10) ($Is charType ($Unbox charType bx@@10) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@10 TChar))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
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
(assert (forall ((s@@15 T@U) (i@@7 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@7) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@7) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (and (_module.Literal.litTrue_q a@@23) (_module.Literal.litTrue_q b@@20)) (|_module.Literal#Equal| a@@23 b@@20))
 :qid |unknown.0:0|
 :skolemid |1482|
 :pattern ( (|_module.Literal#Equal| a@@23 b@@20) (_module.Literal.litTrue_q a@@23))
 :pattern ( (|_module.Literal#Equal| a@@23 b@@20) (_module.Literal.litTrue_q b@@20))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (and (_module.Literal.litFalse_q a@@24) (_module.Literal.litFalse_q b@@21)) (|_module.Literal#Equal| a@@24 b@@21))
 :qid |unknown.0:0|
 :skolemid |1483|
 :pattern ( (|_module.Literal#Equal| a@@24 b@@21) (_module.Literal.litFalse_q a@@24))
 :pattern ( (|_module.Literal#Equal| a@@24 b@@21) (_module.Literal.litFalse_q b@@21))
)))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (=> (and (_module.Literal.litUndefined_q a@@25) (_module.Literal.litUndefined_q b@@22)) (|_module.Literal#Equal| a@@25 b@@22))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( (|_module.Literal#Equal| a@@25 b@@22) (_module.Literal.litUndefined_q a@@25))
 :pattern ( (|_module.Literal#Equal| a@@25 b@@22) (_module.Literal.litUndefined_q b@@22))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (and (_module.Literal.litNull_q a@@26) (_module.Literal.litNull_q b@@23)) (|_module.Literal#Equal| a@@26 b@@23))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( (|_module.Literal#Equal| a@@26 b@@23) (_module.Literal.litNull_q a@@26))
 :pattern ( (|_module.Literal#Equal| a@@26 b@@23) (_module.Literal.litNull_q b@@23))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (and (_module.Primitive.primCreatePath_q a@@27) (_module.Primitive.primCreatePath_q b@@24)) (|_module.Primitive#Equal| a@@27 b@@24))
 :qid |unknown.0:0|
 :skolemid |1500|
 :pattern ( (|_module.Primitive#Equal| a@@27 b@@24) (_module.Primitive.primCreatePath_q a@@27))
 :pattern ( (|_module.Primitive#Equal| a@@27 b@@24) (_module.Primitive.primCreatePath_q b@@24))
)))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (!  (=> (and (_module.Primitive.primExec_q a@@28) (_module.Primitive.primExec_q b@@25)) (|_module.Primitive#Equal| a@@28 b@@25))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( (|_module.Primitive#Equal| a@@28 b@@25) (_module.Primitive.primExec_q a@@28))
 :pattern ( (|_module.Primitive#Equal| a@@28 b@@25) (_module.Primitive.primExec_q b@@25))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (and (_module.Reason.rCompatibility_q a@@29) (_module.Reason.rCompatibility_q b@@26)) (|_module.Reason#Equal| a@@29 b@@26))
 :qid |unknown.0:0|
 :skolemid |1512|
 :pattern ( (|_module.Reason#Equal| a@@29 b@@26) (_module.Reason.rCompatibility_q a@@29))
 :pattern ( (|_module.Reason#Equal| a@@29 b@@26) (_module.Reason.rCompatibility_q b@@26))
)))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (and (_module.Reason.rValidity_q a@@30) (_module.Reason.rValidity_q b@@27)) (|_module.Reason#Equal| a@@30 b@@27))
 :qid |unknown.0:0|
 :skolemid |1513|
 :pattern ( (|_module.Reason#Equal| a@@30 b@@27) (_module.Reason.rValidity_q a@@30))
 :pattern ( (|_module.Reason#Equal| a@@30 b@@27) (_module.Reason.rValidity_q b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (and (_module.Reason.rInconsistentCache_q a@@31) (_module.Reason.rInconsistentCache_q b@@28)) (|_module.Reason#Equal| a@@31 b@@28))
 :qid |unknown.0:0|
 :skolemid |1514|
 :pattern ( (|_module.Reason#Equal| a@@31 b@@28) (_module.Reason.rInconsistentCache_q a@@31))
 :pattern ( (|_module.Reason#Equal| a@@31 b@@28) (_module.Reason.rInconsistentCache_q b@@28))
)))
(assert (forall ((v@@7 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@1) h@@1) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@11) ($IsAllocBox bx@@11 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@7 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@1) h@@1))
)))
(assert (forall ((_module.Tuple$A@@2 T@U) (_module.Tuple$B@@2 T@U) ) (! (= (Tclass._module.Tuple_0 (Tclass._module.Tuple _module.Tuple$A@@2 _module.Tuple$B@@2)) _module.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (Tclass._module.Tuple _module.Tuple$A@@2 _module.Tuple$B@@2))
)))
(assert (forall ((_module.Tuple$A@@3 T@U) (_module.Tuple$B@@3 T@U) ) (! (= (Tclass._module.Tuple_1 (Tclass._module.Tuple _module.Tuple$A@@3 _module.Tuple$B@@3)) _module.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (Tclass._module.Tuple _module.Tuple$A@@3 _module.Tuple$B@@3))
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
(assert (forall ((|a#161#0#0| T@U) (|a#161#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tuple.Pair| |a#161#0#0| |a#161#1#0|)) |##_module.Tuple.Pair|)
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1538|
 :pattern ( (|#_module.Tuple.Pair| |a#161#0#0| |a#161#1#0|))
)))
(assert (forall ((|a#165#0#0| T@U) (|a#165#1#0| T@U) ) (! (= (_module.Tuple.fst (|#_module.Tuple.Pair| |a#165#0#0| |a#165#1#0|)) |a#165#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1549|
 :pattern ( (|#_module.Tuple.Pair| |a#165#0#0| |a#165#1#0|))
)))
(assert (forall ((|a#167#0#0| T@U) (|a#167#1#0| T@U) ) (! (= (_module.Tuple.snd (|#_module.Tuple.Pair| |a#167#0#0| |a#167#1#0|)) |a#167#1#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1551|
 :pattern ( (|#_module.Tuple.Pair| |a#167#0#0| |a#167#1#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|ss#0@@1| T@U) ) (!  (=> (or (|_module.__default.Choose#canCall| (Lit SetType |ss#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is SetType |ss#0@@1| (TSet (TSeq TChar)))) (not (|Set#Equal| |ss#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |ss#0@@1|)) (= (_module.__default.Choose (Lit SetType |ss#0@@1|)) (let ((|s#1| (|$let#0_s| (Lit SetType |ss#0@@1|))))
|s#1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.91:16|
 :weight 3
 :skolemid |777|
 :pattern ( (_module.__default.Choose (Lit SetType |ss#0@@1|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@10 T@U) (|expr#0@@6| T@U) (|stC#0@@17| T@U) (|env#0@@6| T@U) ) (!  (=> (or (|_module.__default.evalC#canCall| (Lit DatatypeTypeType |expr#0@@6|) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |expr#0@@6| Tclass._module.Expression) ($Is DatatypeTypeType |stC#0@@17| Tclass._module.StateC)) ($IsBox |env#0@@6| Tclass._module.Env)))) (and (and (|_module.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@6|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Value (Lit DatatypeTypeType |expr#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.__default.GetEnv#canCall| (Lit BoxType (_module.Expression.id (Lit DatatypeTypeType |expr#0@@6|))) (Lit BoxType |env#0@@6|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@6|)))))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))))) (|$IsA#_module.Literal| (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))))))) (=> (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))) (=> (not (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litTrue|))) (and (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))))) (|$IsA#_module.Literal| (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))))))) (=> (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))) (=> (not (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litFalse|))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (let ((|result#6| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
 (and (and (_module.Tuple.Pair_q |result#6|) (_module.Tuple.Pair_q |result#6|)) (let ((|stC'#8| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#6|))))
(let ((|cond'#2| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#6|))))
 (and (and (=> (_module.Expression.exprLiteral_q |cond'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#2|))) (=> (and (_module.Expression.exprLiteral_q |cond'#2|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#2|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@6|))) |stC'#8| (Lit BoxType |env#0@@6|)))) (=> (not (and (_module.Expression.exprLiteral_q |cond'#2|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#2|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |cond'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#2|))) (=> (and (_module.Expression.exprLiteral_q |cond'#2|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#2|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@6|))) |stC'#8| (Lit BoxType |env#0@@6|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@6|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (let ((|result#7| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
 (and (and (_module.Tuple.Pair_q |result#7|) (_module.Tuple.Pair_q |result#7|)) (let ((|stC'#9| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#7|))))
(let ((|conj0'#2| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#7|))))
 (and (and (=> (_module.Expression.exprLiteral_q |conj0'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#2|))) (=> (and (_module.Expression.exprLiteral_q |conj0'#2|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#2|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.conj1 (Lit DatatypeTypeType |expr#0@@6|))) |stC'#9| (Lit BoxType |env#0@@6|)))) (=> (not (and (_module.Expression.exprLiteral_q |conj0'#2|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#2|) |#_module.Literal.litTrue|))) (=> (_module.Expression.exprLiteral_q |conj0'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#2|))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@6|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@6|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (let ((|result#8| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
 (and (and (_module.Tuple.Pair_q |result#8|) (_module.Tuple.Pair_q |result#8|)) (let ((|stC'#10| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#8|))))
(let ((|disj0'#2| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#8|))))
 (and (=> (_module.Expression.exprLiteral_q |disj0'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#2|))) (=> (not (and (_module.Expression.exprLiteral_q |disj0'#2|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#2|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |disj0'#2|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#2|))) (=> (and (_module.Expression.exprLiteral_q |disj0'#2|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#2|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.disj1 (Lit DatatypeTypeType |expr#0@@6|))) |stC'#10| (Lit BoxType |env#0@@6|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@6|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@6|))))) (and (|_module.__default.evalC#canCall| (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (let ((|resultFun#2| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
 (and (and (_module.Tuple.Pair_q |resultFun#2|) (_module.Tuple.Pair_q |resultFun#2|)) (let ((|stC'#11| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#2|))))
(let ((|fun'#2| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#2|))))
 (and (|_module.__default.evalArgsC#canCall| (Lit DatatypeTypeType |expr#0@@6|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (let ((|resultArgs#2| (Lit DatatypeTypeType (_module.__default.evalArgsC ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@6|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
 (and (and (_module.Tuple.Pair_q |resultArgs#2|) (_module.Tuple.Pair_q |resultArgs#2|)) (let ((|stsC'#2| ($Unbox SetType (_module.Tuple.snd |resultArgs#2|))))
(let ((|args'#2| ($Unbox SeqType (_module.Tuple.fst |resultArgs#2|))))
(let ((|stsC''#2| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#11|)) |stsC'#2|)))
 (and (|_module.__default.CompatibleC#canCall| |stsC''#2|) (=> (_module.__default.CompatibleC |stsC''#2|) (and (|_module.__default.CombineC#canCall| |stsC''#2|) (let ((|stCombinedC#2| (_module.__default.CombineC ($LS $LZ) |stsC''#2|)))
 (=> (and (_module.Expression.exprLiteral_q |fun'#2|) (_module.Literal.litPrimitive_q (_module.Expression.lit |fun'#2|))) (=> (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |fun'#2|))) (and (and (and (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#2| |stCombinedC#2|))) (=> (and (= (|Seq#Length| |args'#2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#2| |stCombinedC#2|)) (|_module.__default.execC#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))) |stCombinedC#2|))) (=> (not (and (= (|Seq#Length| |args'#2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#2| |stCombinedC#2|))) (|_module.__default.ConsistentCache#canCall| |stCombinedC#2|))))))))))))))))))))))))))))))))))) (= (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@6|) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (ite (_module.__default.Value (Lit DatatypeTypeType |expr#0@@6|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@6|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))) (ite (_module.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@6|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (_module.__default.GetEnv (Lit BoxType (_module.Expression.id (Lit DatatypeTypeType |expr#0@@6|))) (Lit BoxType |env#0@@6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))) (ite  (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (ite  (and (and (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))))) (|_module.Literal#Equal| (_module.Expression.lit (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|)))) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)) (ite (_module.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@6|)) (let ((|result#6@@0| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.cond (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
(let ((|stC'#8@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.snd |result#6@@0|)))))
(let ((|cond'#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.fst |result#6@@0|)))))
(ite  (and (_module.Expression.exprLiteral_q |cond'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#2@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@6|))) |stC'#8@@0| (Lit BoxType |env#0@@6|)) (ite  (and (_module.Expression.exprLiteral_q |cond'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#2@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@6|))) |stC'#8@@0| (Lit BoxType |env#0@@6|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|)))))))) (ite (_module.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@6|)) (let ((|result#7@@0| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.conj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
(let ((|stC'#9@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.snd |result#7@@0|)))))
(let ((|conj0'#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.fst |result#7@@0|)))))
(ite  (and (_module.Expression.exprLiteral_q |conj0'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#2@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.conj1 (Lit DatatypeTypeType |expr#0@@6|))) |stC'#9@@0| (Lit BoxType |env#0@@6|)) (ite  (and (_module.Expression.exprLiteral_q |conj0'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#2@@0|) |#_module.Literal.litFalse|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litFalse|)))) ($Box DatatypeTypeType |stC'#9@@0|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|)))))))) (ite (_module.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@6|)) (let ((|result#8@@0| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.disj0 (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
(let ((|stC'#10@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.snd |result#8@@0|)))))
(let ((|disj0'#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.fst |result#8@@0|)))))
(ite  (and (_module.Expression.exprLiteral_q |disj0'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#2@@0|) |#_module.Literal.litTrue|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litTrue|)))) ($Box DatatypeTypeType |stC'#10@@0|)) (ite  (and (_module.Expression.exprLiteral_q |disj0'#2@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#2@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.disj1 (Lit DatatypeTypeType |expr#0@@6|))) |stC'#10@@0| (Lit BoxType |env#0@@6|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|)))))))) (ite (_module.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@6|)) (let ((|resultFun#2@@0| (Lit DatatypeTypeType (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType (_module.Expression.fun (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
(let ((|stC'#11@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#2@@0|)))))
(let ((|fun'#2@@0| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#2@@0|)))))
(let ((|resultArgs#2@@0| (Lit DatatypeTypeType (_module.__default.evalArgsC ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@6|) (Lit SeqType (_module.Expression.args (Lit DatatypeTypeType |expr#0@@6|))) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))))
(let ((|stsC'#2@@0| (Lit SetType ($Unbox SetType (_module.Tuple.snd |resultArgs#2@@0|)))))
(let ((|args'#2@@0| (Lit SeqType ($Unbox SeqType (_module.Tuple.fst |resultArgs#2@@0|)))))
(let ((|stsC''#2@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#11@@0|)) |stsC'#2@@0|)))
(ite (_module.__default.CompatibleC |stsC''#2@@0|) (let ((|stCombinedC#2@@0| (_module.__default.CombineC ($LS $LZ) |stsC''#2@@0|)))
(ite  (and (_module.Expression.exprLiteral_q |fun'#2@@0|) (_module.Literal.litPrimitive_q (Lit DatatypeTypeType (_module.Expression.lit |fun'#2@@0|)))) (ite (_module.Primitive.primExec_q (Lit DatatypeTypeType (_module.Literal.prim (Lit DatatypeTypeType (_module.Expression.lit |fun'#2@@0|))))) (ite  (and (= (|Seq#Length| |args'#2@@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#2@@0| |stCombinedC#2@@0|)) (_module.__default.execC ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 2))) |stCombinedC#2@@0|) (ite (_module.__default.ConsistentCache |stCombinedC#2@@0|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rInconsistentCache|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|)))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rCompatibility|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))))))))))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |stC#0@@17|))))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.397:16|
 :weight 3
 :skolemid |1115|
 :pattern ( (_module.__default.evalC ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@6|) (Lit DatatypeTypeType |stC#0@@17|) (Lit BoxType |env#0@@6|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@11 T@U) (|expr#0@@7| T@U) (|stC#0@@18| T@U) (|env#0@@7| T@U) ) (!  (=> (or (|_module.__default.evalC#canCall| |expr#0@@7| |stC#0@@18| |env#0@@7|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |expr#0@@7| Tclass._module.Expression) ($Is DatatypeTypeType |stC#0@@18| Tclass._module.StateC)) ($IsBox |env#0@@7| Tclass._module.Env)))) ($Is DatatypeTypeType (_module.__default.evalC $ly@@11 |expr#0@@7| |stC#0@@18| |env#0@@7|) (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.397:16|
 :skolemid |1111|
 :pattern ( (_module.__default.evalC $ly@@11 |expr#0@@7| |stC#0@@18| |env#0@@7|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|h#0@@3| T@U) (|c#0@@0| T@U) ) (!  (=> (or (|_module.__default.GetC#canCall| |h#0@@3| |c#0@@0|) (and (< 2 $FunctionContextHeight) (and ($IsBox |h#0@@3| Tclass._module.HashValue) ($IsBox |c#0@@0| Tclass._module.Cache)))) ($Is DatatypeTypeType (_module.__default.GetC |h#0@@3| |c#0@@0|) (Tclass._module.Triple Tclass._module.Expression Tclass._module.Expression (TSeq TChar))))
 :qid |CloudMakeConsistentBuildslegacydfy.37:21|
 :skolemid |729|
 :pattern ( (_module.__default.GetC |h#0@@3| |c#0@@0|))
))))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@2) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@8) t0@@2 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@8 i@@8))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@2))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@12 T@U) (|cmd#0@@16| T@U) (|deps#0@@15| T@U) (|exts#0@@14| T@U) (|stC#0@@19| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@16| |deps#0@@15| |exts#0@@14| |stC#0@@19|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@16| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@15| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@14| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@19| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@16|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@16|))) (_module.Expression.exprLiteral_q |deps#0@@15|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@15|))) (_module.Expression.exprLiteral_q |exts#0@@14|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@14|)))))) (and (let ((|strs#0| (_module.Literal.strs (_module.Expression.lit |exts#0@@14|))))
 (=> (not (|Set#Equal| |strs#0| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#0|) (let ((|e#1@@6| (_module.__default.Choose |strs#0|)))
 (and (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@16| |deps#0@@15| |e#1@@6|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@16| |deps#0@@15| |e#1@@6|))) (_module.StateC.S_q |stC#0@@19|)) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@16| |deps#0@@15| |e#1@@6|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@16|) ($Box DatatypeTypeType |deps#0@@15|) ($Box SeqType |e#1@@6|)) (_module.StateC.c |stC#0@@19|))) (let ((|c'#0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@16| |deps#0@@15| |e#1@@6|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@16|) ($Box DatatypeTypeType |deps#0@@15|) ($Box SeqType |e#1@@6|)) (_module.StateC.c |stC#0@@19|))))
(let ((|exts'#0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#1@@6|)))))))
 (and (_module.StateC.S_q |stC#0@@19|) (|_module.__default.UpdateC#canCall| |cmd#0@@16| |deps#0@@15| |exts'#0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@19|) |c'#0|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@12) |cmd#0@@16| |deps#0@@15| |exts#0@@14| |stC#0@@19|) (let ((|strs#0@@0| (_module.Literal.strs (_module.Expression.lit |exts#0@@14|))))
(ite (|Set#Equal| |strs#0@@0| |Set#Empty|) |stC#0@@19| (let ((|e#1@@7| (_module.__default.Choose |strs#0@@0|)))
(let ((|c'#0@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@16| |deps#0@@15| |e#1@@7|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@16|) ($Box DatatypeTypeType |deps#0@@15|) ($Box SeqType |e#1@@7|)) (_module.StateC.c |stC#0@@19|))))
(let ((|exts'#0@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#1@@7|)))))))
(_module.__default.UpdateC $ly@@12 |cmd#0@@16| |deps#0@@15| |exts'#0@@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@19|) |c'#0@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :skolemid |739|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@12) |cmd#0@@16| |deps#0@@15| |exts#0@@14| |stC#0@@19|))
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
(assert (forall ((|a#151#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Path.OpaquePath| |a#151#0#0|)) |##_module.Path.OpaquePath|)
 :qid |CloudMakeConsistentBuildslegacydfy.337:28|
 :skolemid |1516|
 :pattern ( (|#_module.Path.OpaquePath| |a#151#0#0|))
)))
(assert (forall ((|a#155#0#0| Int) ) (! (= (_module.Path._h0 (|#_module.Path.OpaquePath| |a#155#0#0|)) |a#155#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.337:28|
 :skolemid |1523|
 :pattern ( (|#_module.Path.OpaquePath| |a#155#0#0|))
)))
(assert (forall ((|a#156#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Path.TransparentPath| |a#156#0#0|)) |##_module.Path.TransparentPath|)
 :qid |CloudMakeConsistentBuildslegacydfy.337:51|
 :skolemid |1524|
 :pattern ( (|#_module.Path.TransparentPath| |a#156#0#0|))
)))
(assert (forall ((|a#160#0#0| Int) ) (! (= (_module.Path._h1 (|#_module.Path.TransparentPath| |a#160#0#0|)) |a#160#0#0|)
 :qid |CloudMakeConsistentBuildslegacydfy.337:51|
 :skolemid |1531|
 :pattern ( (|#_module.Path.TransparentPath| |a#160#0#0|))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@13))
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
(assert (forall ((d@@64 T@U) ) (!  (=> (|$IsA#_module.Reason| d@@64) (or (or (_module.Reason.rCompatibility_q d@@64) (_module.Reason.rValidity_q d@@64)) (_module.Reason.rInconsistentCache_q d@@64)))
 :qid |unknown.0:0|
 :skolemid |1510|
 :pattern ( (|$IsA#_module.Reason| d@@64))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@1| T@U) ) (!  (=> (or (|_module.__default.DomC#canCall| |c#0@@1|) (and (< 0 $FunctionContextHeight) ($IsBox |c#0@@1| Tclass._module.Cache))) ($Is SetType (_module.__default.DomC |c#0@@1|) (TSet Tclass._module.HashValue)))
 :qid |CloudMakeConsistentBuildslegacydfy.97:21|
 :skolemid |779|
 :pattern ( (_module.__default.DomC |c#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@5| T@U) ) (!  (=> (or (|_module.__default.DomSt#canCall| |st#0@@5|) (and (< 1 $FunctionContextHeight) ($IsBox |st#0@@5| Tclass._module.State))) ($Is SetType (_module.__default.DomSt |st#0@@5|) (TSet Tclass._module.Path)))
 :qid |CloudMakeConsistentBuildslegacydfy.10:22|
 :skolemid |708|
 :pattern ( (_module.__default.DomSt |st#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@17| T@U) (|deps#0@@16| T@U) (|exts#0@@15| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|_module.__default.Post#canCall| (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) (Lit DatatypeTypeType |exts#0@@15|) (Lit BoxType |st#0@@6|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@17| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@16| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@15| Tclass._module.Expression)) ($IsBox |st#0@@6| Tclass._module.State)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@17|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@17|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@16|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@16|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@15|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))))))))) (and (forall ((|e#2@@5| T@U) ) (!  (=> ($Is SeqType |e#2@@5| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))) ($Box SeqType |e#2@@5|)) (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@5|) (|_module.__default.DomSt#canCall| (Lit BoxType |st#0@@6|)))) (=> (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))) ($Box SeqType |e#2@@5|)) (|Set#IsMember| (_module.__default.DomSt (Lit BoxType |st#0@@6|)) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@5|)))) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))) ($Box SeqType |e#2@@5|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@5|) (|_module.__default.GetSt#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@5|) (Lit BoxType |st#0@@6|))) (|_module.__default.Res#canCall| (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@5| (Lit BoxType |st#0@@6|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |942|
 :pattern ( (_module.__default.Res |cmd#0@@17| |deps#0@@16| |e#2@@5| |st#0@@6|))
 :pattern ( (_module.__default.Loc |cmd#0@@17| |deps#0@@16| |e#2@@5|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@15|)) ($Box SeqType |e#2@@5|)))
)) (= (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) (Lit DatatypeTypeType |exts#0@@15|) (Lit BoxType |st#0@@6|)) (forall ((|e#2@@6| T@U) ) (!  (=> ($Is SeqType |e#2@@6| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))) ($Box SeqType |e#2@@6|)) (|Set#IsMember| (_module.__default.DomSt (Lit BoxType |st#0@@6|)) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@6|)))) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@15|))))) ($Box SeqType |e#2@@6|)) (= (_module.__default.GetSt (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@6|) (Lit BoxType |st#0@@6|)) (_module.__default.Res (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) |e#2@@6| (Lit BoxType |st#0@@6|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |941|
 :pattern ( (_module.__default.Res |cmd#0@@17| |deps#0@@16| |e#2@@6| |st#0@@6|))
 :pattern ( (_module.__default.Loc |cmd#0@@17| |deps#0@@16| |e#2@@6|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@15|)) ($Box SeqType |e#2@@6|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.206:22|
 :weight 3
 :skolemid |943|
 :pattern ( (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@17|) (Lit DatatypeTypeType |deps#0@@16|) (Lit DatatypeTypeType |exts#0@@15|) (Lit BoxType |st#0@@6|)))
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
(assert (forall ((|a#166#0#0| T@U) (|a#166#1#0| T@U) ) (! (< (BoxRank |a#166#0#0|) (DtRank (|#_module.Tuple.Pair| |a#166#0#0| |a#166#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1550|
 :pattern ( (|#_module.Tuple.Pair| |a#166#0#0| |a#166#1#0|))
)))
(assert (forall ((|a#168#0#0| T@U) (|a#168#1#0| T@U) ) (! (< (BoxRank |a#168#1#0|) (DtRank (|#_module.Tuple.Pair| |a#168#0#0| |a#168#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1552|
 :pattern ( (|#_module.Tuple.Pair| |a#168#0#0| |a#168#1#0|))
)))
(assert (forall (($ly@@13 T@U) (|stsC#0@@3| T@U) ) (! (= (_module.__default.CombineC ($LS $ly@@13) |stsC#0@@3|) (_module.__default.CombineC $ly@@13 |stsC#0@@3|))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |810|
 :pattern ( (_module.__default.CombineC ($LS $ly@@13) |stsC#0@@3|))
)))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (! (= (|Set#Union| a@@32 (|Set#Union| a@@32 b@@29)) (|Set#Union| a@@32 b@@29))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@32 (|Set#Union| a@@32 b@@29)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@14 T@U) (|expr#0@@8| T@U) (|args#0@@5| T@U) (|stC#0@@20| T@U) (|env#0@@8| T@U) (|args'#0@@1| T@U) (|stsC'#0@@1| T@U) ) (!  (=> (or (|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType |args#0@@5|) |stC#0@@20| |env#0@@8| |args'#0@@1| |stsC'#0@@1|) (and (< 6 $FunctionContextHeight) (and (and (and (and (and (and ($Is DatatypeTypeType |expr#0@@8| Tclass._module.Expression) ($Is SeqType |args#0@@5| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@20| Tclass._module.StateC)) ($IsBox |env#0@@8| Tclass._module.Env)) ($Is SeqType |args'#0@@1| (TSeq Tclass._module.Expression))) ($Is SetType |stsC'#0@@1| (TSet Tclass._module.StateC))) (forall ((|arg#3| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#3|)) (< (DtRank |arg#3|) (DtRank |expr#0@@8|))))
 :qid |CloudMakeConsistentBuildslegacydfy.485:19|
 :skolemid |1159|
 :pattern ( (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#3|)))
))))) (and (=> (not (|Seq#Equal| |args#0@@5| |Seq#Empty|)) (let ((|arg#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))
 (and (|_module.__default.evalC#canCall| |arg#4| |stC#0@@20| |env#0@@8|) (let ((|result#1@@1| (_module.__default.evalC ($LS $ly@@14) |arg#4| |stC#0@@20| |env#0@@8|)))
 (and (and (_module.Tuple.Pair_q |result#1@@1|) (_module.Tuple.Pair_q |result#1@@1|)) (let ((|stC'#1@@2| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1@@1|))))
(let ((|arg'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@1|))))
(|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stC#0@@20| |env#0@@8| (|Seq#Append| |args'#0@@1| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#1|))) (|Set#Union| |stsC'#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#1@@2|))))))))))) (= (_module.__default.evalArgsC_k ($LS $ly@@14) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType |args#0@@5|) |stC#0@@20| |env#0@@8| |args'#0@@1| |stsC'#0@@1|) (ite (|Seq#Equal| |args#0@@5| |Seq#Empty|) (|#_module.Tuple.Pair| ($Box SeqType |args'#0@@1|) ($Box SetType |stsC'#0@@1|)) (let ((|arg#4@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))
(let ((|result#1@@2| (_module.__default.evalC ($LS $ly@@14) |arg#4@@0| |stC#0@@20| |env#0@@8|)))
(let ((|stC'#1@@3| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1@@2|))))
(let ((|arg'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@2|))))
(_module.__default.evalArgsC_k ($LS $ly@@14) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stC#0@@20| |env#0@@8| (|Seq#Append| |args'#0@@1| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#1@@0|))) (|Set#Union| |stsC'#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#1@@3|))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.482:16|
 :weight 3
 :skolemid |1160|
 :pattern ( (_module.__default.evalArgsC_k ($LS $ly@@14) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType |args#0@@5|) |stC#0@@20| |env#0@@8| |args'#0@@1| |stsC'#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@18| T@U) (|deps#0@@17| T@U) (|ext#0@@0| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|_module.__default.Res#canCall| |cmd#0@@18| |deps#0@@17| |ext#0@@0| |st#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |cmd#0@@18| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@17| Tclass._module.Expression)) ($Is SeqType |ext#0@@0| (TSeq TChar))) ($IsBox |st#0@@7| Tclass._module.State)))) ($IsBox (_module.__default.Res |cmd#0@@18| |deps#0@@17| |ext#0@@0| |st#0@@7|) Tclass._module.Artifact))
 :qid |CloudMakeConsistentBuildslegacydfy.216:20|
 :skolemid |952|
 :pattern ( (_module.__default.Res |cmd#0@@18| |deps#0@@17| |ext#0@@0| |st#0@@7|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@15 T@U) (|expr#0@@9| T@U) (|args#0@@6| T@U) (|stC#0@@21| T@U) (|env#0@@9| T@U) ) (!  (=> (or (|_module.__default.evalArgsC#canCall| (Lit DatatypeTypeType |expr#0@@9|) (Lit SeqType |args#0@@6|) (Lit DatatypeTypeType |stC#0@@21|) (Lit BoxType |env#0@@9|)) (and (< 6 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@9| Tclass._module.Expression) ($Is SeqType |args#0@@6| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@21| Tclass._module.StateC)) ($IsBox |env#0@@9| Tclass._module.Env)) (forall ((|arg#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3@@0| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@6| ($Box DatatypeTypeType |arg#3@@0|)) (< (DtRank |arg#3@@0|) (DtRank |expr#0@@9|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1146|
 :pattern ( (|Seq#Contains| |args#0@@6| ($Box DatatypeTypeType |arg#3@@0|)))
))))) (and (|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@9|) (Lit SeqType |args#0@@6|) (Lit DatatypeTypeType |stC#0@@21|) (Lit BoxType |env#0@@9|) (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|)) (= (_module.__default.evalArgsC ($LS $ly@@15) (Lit DatatypeTypeType |expr#0@@9|) (Lit SeqType |args#0@@6|) (Lit DatatypeTypeType |stC#0@@21|) (Lit BoxType |env#0@@9|)) (Lit DatatypeTypeType (_module.__default.evalArgsC_k ($LS $ly@@15) (Lit DatatypeTypeType |expr#0@@9|) (Lit SeqType |args#0@@6|) (Lit DatatypeTypeType |stC#0@@21|) (Lit BoxType |env#0@@9|) (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.473:16|
 :weight 3
 :skolemid |1147|
 :pattern ( (_module.__default.evalArgsC ($LS $ly@@15) (Lit DatatypeTypeType |expr#0@@9|) (Lit SeqType |args#0@@6|) (Lit DatatypeTypeType |stC#0@@21|) (Lit BoxType |env#0@@9|)))
))))
(assert (forall ((|a#96#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litNumber| |a#96#0#0|) Tclass._module.Literal) ($Is intType (int_2_U |a#96#0#0|) TInt))
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1428|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litNumber| |a#96#0#0|) Tclass._module.Literal))
)))
(assert (forall ((|a#153#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Path.OpaquePath| |a#153#0#0|) Tclass._module.Path) ($Is intType (int_2_U |a#153#0#0|) TInt))
 :qid |CloudMakeConsistentBuildslegacydfy.337:28|
 :skolemid |1520|
 :pattern ( ($Is DatatypeTypeType (|#_module.Path.OpaquePath| |a#153#0#0|) Tclass._module.Path))
)))
(assert (forall ((|a#158#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Path.TransparentPath| |a#158#0#0|) Tclass._module.Path) ($Is intType (int_2_U |a#158#0#0|) TInt))
 :qid |CloudMakeConsistentBuildslegacydfy.337:51|
 :skolemid |1528|
 :pattern ( ($Is DatatypeTypeType (|#_module.Path.TransparentPath| |a#158#0#0|) Tclass._module.Path))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) (|args#0@@7| T@U) (|stC#0@@22| T@U) ) (!  (=> (or (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |prim#0@@3|) (Lit SeqType |args#0@@7|) (Lit DatatypeTypeType |stC#0@@22|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@3| Tclass._module.Primitive) ($Is SeqType |args#0@@7| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@22| Tclass._module.StateC)) (and (=> (_module.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@3|)) (= (|Seq#Length| (Lit SeqType |args#0@@7|)) (LitInt 3))) (=> (_module.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@3|)) (= (|Seq#Length| (Lit SeqType |args#0@@7|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@3|)))))) (let ((|exts#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 0)))))
 (=> (_module.Expression.exprLiteral_q |cmd#3|) (=> (_module.Literal.litString_q (_module.Expression.lit |cmd#3|)) (=> (_module.Expression.exprLiteral_q |deps#3|) (=> (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#3|)) (=> (_module.Expression.exprLiteral_q |exts#3|) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#3|)) (and (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@22|)) (|_module.__default.DomSt#canCall| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@22|))))) (=> (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#3|)) (_module.__default.DomSt (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@22|))))) (|_module.__default.PreC#canCall| |cmd#3| |deps#3| |exts#3| (Lit DatatypeTypeType |stC#0@@22|)))))))))))))) (= (_module.__default.ValidArgsC (Lit DatatypeTypeType |prim#0@@3|) (Lit SeqType |args#0@@7|) (Lit DatatypeTypeType |stC#0@@22|)) (ite (_module.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@3|)) false (let ((|exts#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@7|) (LitInt 0)))))
 (and (and (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#2|) (_module.Literal.litString_q (_module.Expression.lit |cmd#2|))) (_module.Expression.exprLiteral_q |deps#2|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#2|))) (_module.Expression.exprLiteral_q |exts#2|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#2|))) (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps#2|)) (_module.__default.DomSt (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@22|)))))) (_module.__default.PreC |cmd#2| |deps#2| |exts#2| (Lit DatatypeTypeType |stC#0@@22|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.497:28|
 :weight 3
 :skolemid |1171|
 :pattern ( (_module.__default.ValidArgsC (Lit DatatypeTypeType |prim#0@@3|) (Lit SeqType |args#0@@7|) (Lit DatatypeTypeType |stC#0@@22|)))
))))
(assert (forall (($ly@@16 T@U) (|expr#0@@10| T@U) (|stC#0@@23| T@U) (|env#0@@10| T@U) ) (! (= (_module.__default.evalC ($LS $ly@@16) |expr#0@@10| |stC#0@@23| |env#0@@10|) (_module.__default.evalC $ly@@16 |expr#0@@10| |stC#0@@23| |env#0@@10|))
 :qid |CloudMakeConsistentBuildslegacydfy.397:16|
 :skolemid |1109|
 :pattern ( (_module.__default.evalC ($LS $ly@@16) |expr#0@@10| |stC#0@@23| |env#0@@10|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@17 T@U) (|cmd#0@@19| T@U) (|deps#0@@18| T@U) (|exts#0@@16| T@U) (|stC#0@@24| T@U) ) (!  (=> (or (|_module.__default.UpdateC#canCall| |cmd#0@@19| |deps#0@@18| (Lit DatatypeTypeType |exts#0@@16|) |stC#0@@24|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@19| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@18| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@16| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@24| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@19|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@19|))) (_module.Expression.exprLiteral_q |deps#0@@18|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@18|))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@16|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@16|)))))))) (and (let ((|strs#1| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@16|)))))))
 (=> (not (|Set#Equal| |strs#1| |Set#Empty|)) (and (|_module.__default.Choose#canCall| |strs#1|) (let ((|e#2@@7| (_module.__default.Choose |strs#1|)))
 (and (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@19| |deps#0@@18| |e#2@@7|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@19| |deps#0@@18| |e#2@@7|))) (_module.StateC.S_q |stC#0@@24|)) (|_module.__default.SetC#canCall| (_module.__default.Hash (_module.__default.Loc |cmd#0@@19| |deps#0@@18| |e#2@@7|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@19|) ($Box DatatypeTypeType |deps#0@@18|) ($Box SeqType |e#2@@7|)) (_module.StateC.c |stC#0@@24|))) (let ((|c'#1| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@19| |deps#0@@18| |e#2@@7|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@19|) ($Box DatatypeTypeType |deps#0@@18|) ($Box SeqType |e#2@@7|)) (_module.StateC.c |stC#0@@24|))))
(let ((|exts'#1| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#1| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#2@@7|)))))))
 (and (_module.StateC.S_q |stC#0@@24|) (|_module.__default.UpdateC#canCall| |cmd#0@@19| |deps#0@@18| |exts'#1| (|#_module.StateC.S| (_module.StateC.st |stC#0@@24|) |c'#1|)))))))))) (= (_module.__default.UpdateC ($LS $ly@@17) |cmd#0@@19| |deps#0@@18| (Lit DatatypeTypeType |exts#0@@16|) |stC#0@@24|) (let ((|strs#1@@0| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@16|)))))))
(ite (|Set#Equal| |strs#1@@0| |Set#Empty|) |stC#0@@24| (let ((|e#2@@8| (Lit SeqType (_module.__default.Choose |strs#1@@0|))))
(let ((|c'#1@@0| (_module.__default.SetC (_module.__default.Hash (_module.__default.Loc |cmd#0@@19| |deps#0@@18| |e#2@@8|)) (|#_module.Triple.Trio| ($Box DatatypeTypeType |cmd#0@@19|) ($Box DatatypeTypeType |deps#0@@18|) ($Box SeqType |e#2@@8|)) (_module.StateC.c |stC#0@@24|))))
(let ((|exts'#1@@0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfStrings| (|Set#Difference| |strs#1@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |e#2@@8|)))))))
(_module.__default.UpdateC ($LS $ly@@17) |cmd#0@@19| |deps#0@@18| |exts'#1@@0| (|#_module.StateC.S| (_module.StateC.st |stC#0@@24|) |c'#1@@0|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.41:16|
 :weight 3
 :skolemid |740|
 :pattern ( (_module.__default.UpdateC ($LS $ly@@17) |cmd#0@@19| |deps#0@@18| (Lit DatatypeTypeType |exts#0@@16|) |stC#0@@24|))
))))
(assert (forall ((_module.Tuple$A@@4 T@U) (_module.Tuple$B@@4 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.Tuple _module.Tuple$A@@4 _module.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._module.Tuple _module.Tuple$A@@4 _module.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( ($IsBox bx@@12 (Tclass._module.Tuple _module.Tuple$A@@4 _module.Tuple$B@@4)))
)))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@18 T@U) (|expr#0@@11| T@U) (|stC#0@@25| T@U) (|env#0@@11| T@U) ) (!  (=> (or (|_module.__default.evalC#canCall| |expr#0@@11| |stC#0@@25| |env#0@@11|) (and (< 6 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |expr#0@@11| Tclass._module.Expression) ($Is DatatypeTypeType |stC#0@@25| Tclass._module.StateC)) ($IsBox |env#0@@11| Tclass._module.Env)))) (and (and (|_module.__default.Value#canCall| |expr#0@@11|) (=> (not (_module.__default.Value |expr#0@@11|)) (and (=> (_module.Expression.exprIdentifier_q |expr#0@@11|) (|_module.__default.GetEnv#canCall| (_module.Expression.id |expr#0@@11|) |env#0@@11|)) (=> (not (_module.Expression.exprIdentifier_q |expr#0@@11|)) (and (and (=> (_module.Expression.exprIf_q |expr#0@@11|) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|)) (|$IsA#_module.Literal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|))))) (=> (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (_module.Expression.ifTrue |expr#0@@11|) |stC#0@@25| |env#0@@11|))) (=> (not (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litTrue|))) (and (and (=> (_module.Expression.exprIf_q |expr#0@@11|) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|)) (|$IsA#_module.Literal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|))))) (=> (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (_module.Expression.ifFalse |expr#0@@11|) |stC#0@@25| |env#0@@11|))) (=> (not (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litFalse|))) (and (=> (_module.Expression.exprIf_q |expr#0@@11|) (and (|_module.__default.evalC#canCall| (_module.Expression.cond |expr#0@@11|) |stC#0@@25| |env#0@@11|) (let ((|result#0@@0| (_module.__default.evalC $ly@@18 (_module.Expression.cond |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
 (and (and (_module.Tuple.Pair_q |result#0@@0|) (_module.Tuple.Pair_q |result#0@@0|)) (let ((|stC'#0@@3| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@0|))))
(let ((|cond'#0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@0|))))
 (and (and (=> (_module.Expression.exprLiteral_q |cond'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#0|))) (=> (and (_module.Expression.exprLiteral_q |cond'#0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#0|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (_module.Expression.ifTrue |expr#0@@11|) |stC'#0@@3| |env#0@@11|))) (=> (not (and (_module.Expression.exprLiteral_q |cond'#0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#0|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |cond'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |cond'#0|))) (=> (and (_module.Expression.exprLiteral_q |cond'#0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#0|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (_module.Expression.ifFalse |expr#0@@11|) |stC'#0@@3| |env#0@@11|))))))))))) (=> (not (_module.Expression.exprIf_q |expr#0@@11|)) (and (=> (_module.Expression.exprAnd_q |expr#0@@11|) (and (|_module.__default.evalC#canCall| (_module.Expression.conj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|) (let ((|result#1@@3| (_module.__default.evalC $ly@@18 (_module.Expression.conj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
 (and (and (_module.Tuple.Pair_q |result#1@@3|) (_module.Tuple.Pair_q |result#1@@3|)) (let ((|stC'#1@@4| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1@@3|))))
(let ((|conj0'#0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@3|))))
 (and (and (=> (_module.Expression.exprLiteral_q |conj0'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#0|))) (=> (and (_module.Expression.exprLiteral_q |conj0'#0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#0|) |#_module.Literal.litTrue|)) (|_module.__default.evalC#canCall| (_module.Expression.conj1 |expr#0@@11|) |stC'#1@@4| |env#0@@11|))) (=> (not (and (_module.Expression.exprLiteral_q |conj0'#0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#0|) |#_module.Literal.litTrue|))) (=> (_module.Expression.exprLiteral_q |conj0'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |conj0'#0|))))))))))) (=> (not (_module.Expression.exprAnd_q |expr#0@@11|)) (and (=> (_module.Expression.exprOr_q |expr#0@@11|) (and (|_module.__default.evalC#canCall| (_module.Expression.disj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|) (let ((|result#2@@1| (_module.__default.evalC $ly@@18 (_module.Expression.disj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
 (and (and (_module.Tuple.Pair_q |result#2@@1|) (_module.Tuple.Pair_q |result#2@@1|)) (let ((|stC'#2@@1| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#2@@1|))))
(let ((|disj0'#0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#2@@1|))))
 (and (=> (_module.Expression.exprLiteral_q |disj0'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#0|))) (=> (not (and (_module.Expression.exprLiteral_q |disj0'#0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#0|) |#_module.Literal.litTrue|))) (and (=> (_module.Expression.exprLiteral_q |disj0'#0|) (|$IsA#_module.Literal| (_module.Expression.lit |disj0'#0|))) (=> (and (_module.Expression.exprLiteral_q |disj0'#0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#0|) |#_module.Literal.litFalse|)) (|_module.__default.evalC#canCall| (_module.Expression.disj1 |expr#0@@11|) |stC'#2@@1| |env#0@@11|))))))))))) (=> (not (_module.Expression.exprOr_q |expr#0@@11|)) (=> (_module.Expression.exprInvocation_q |expr#0@@11|) (and (|_module.__default.evalC#canCall| (_module.Expression.fun |expr#0@@11|) |stC#0@@25| |env#0@@11|) (let ((|resultFun#0| (_module.__default.evalC $ly@@18 (_module.Expression.fun |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
 (and (and (_module.Tuple.Pair_q |resultFun#0|) (_module.Tuple.Pair_q |resultFun#0|)) (let ((|stC'#3| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#0|))))
(let ((|fun'#0| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#0|))))
 (and (|_module.__default.evalArgsC#canCall| |expr#0@@11| (_module.Expression.args |expr#0@@11|) |stC#0@@25| |env#0@@11|) (let ((|resultArgs#0| (_module.__default.evalArgsC $ly@@18 |expr#0@@11| (_module.Expression.args |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
 (and (and (_module.Tuple.Pair_q |resultArgs#0|) (_module.Tuple.Pair_q |resultArgs#0|)) (let ((|stsC'#0@@2| ($Unbox SetType (_module.Tuple.snd |resultArgs#0|))))
(let ((|args'#0@@2| ($Unbox SeqType (_module.Tuple.fst |resultArgs#0|))))
(let ((|stsC''#0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#3|)) |stsC'#0@@2|)))
 (and (|_module.__default.CompatibleC#canCall| |stsC''#0|) (=> (_module.__default.CompatibleC |stsC''#0|) (and (|_module.__default.CombineC#canCall| |stsC''#0|) (let ((|stCombinedC#0| (_module.__default.CombineC ($LS $LZ) |stsC''#0|)))
 (=> (and (_module.Expression.exprLiteral_q |fun'#0|) (_module.Literal.litPrimitive_q (_module.Expression.lit |fun'#0|))) (=> (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |fun'#0|))) (and (and (and (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#0@@2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#0@@2| |stCombinedC#0|))) (=> (and (= (|Seq#Length| |args'#0@@2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#0@@2| |stCombinedC#0|)) (|_module.__default.execC#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@2| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@2| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@2| (LitInt 2))) |stCombinedC#0|))) (=> (not (and (= (|Seq#Length| |args'#0@@2|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#0@@2| |stCombinedC#0|))) (|_module.__default.ConsistentCache#canCall| |stCombinedC#0|))))))))))))))))))))))))))))))))))) (= (_module.__default.evalC ($LS $ly@@18) |expr#0@@11| |stC#0@@25| |env#0@@11|) (ite (_module.__default.Value |expr#0@@11|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType |expr#0@@11|) ($Box DatatypeTypeType |stC#0@@25|)) (ite (_module.Expression.exprIdentifier_q |expr#0@@11|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (_module.__default.GetEnv (_module.Expression.id |expr#0@@11|) |env#0@@11|)) ($Box DatatypeTypeType |stC#0@@25|)) (ite  (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litTrue|)) (_module.__default.evalC $ly@@18 (_module.Expression.ifTrue |expr#0@@11|) |stC#0@@25| |env#0@@11|) (ite  (and (and (_module.Expression.exprIf_q |expr#0@@11|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@11|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@11|)) |#_module.Literal.litFalse|)) (_module.__default.evalC $ly@@18 (_module.Expression.ifFalse |expr#0@@11|) |stC#0@@25| |env#0@@11|) (ite (_module.Expression.exprIf_q |expr#0@@11|) (let ((|result#0@@1| (_module.__default.evalC $ly@@18 (_module.Expression.cond |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
(let ((|stC'#0@@4| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@1|))))
(let ((|cond'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@1|))))
(ite  (and (_module.Expression.exprLiteral_q |cond'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#0@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC $ly@@18 (_module.Expression.ifTrue |expr#0@@11|) |stC'#0@@4| |env#0@@11|) (ite  (and (_module.Expression.exprLiteral_q |cond'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |cond'#0@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC $ly@@18 (_module.Expression.ifFalse |expr#0@@11|) |stC'#0@@4| |env#0@@11|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|))))))) (ite (_module.Expression.exprAnd_q |expr#0@@11|) (let ((|result#1@@4| (_module.__default.evalC $ly@@18 (_module.Expression.conj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
(let ((|stC'#1@@5| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1@@4|))))
(let ((|conj0'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@4|))))
(ite  (and (_module.Expression.exprLiteral_q |conj0'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#0@@0|) |#_module.Literal.litTrue|)) (_module.__default.evalC $ly@@18 (_module.Expression.conj1 |expr#0@@11|) |stC'#1@@5| |env#0@@11|) (ite  (and (_module.Expression.exprLiteral_q |conj0'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |conj0'#0@@0|) |#_module.Literal.litFalse|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litFalse|)))) ($Box DatatypeTypeType |stC'#1@@5|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|))))))) (ite (_module.Expression.exprOr_q |expr#0@@11|) (let ((|result#2@@2| (_module.__default.evalC $ly@@18 (_module.Expression.disj0 |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
(let ((|stC'#2@@2| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#2@@2|))))
(let ((|disj0'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#2@@2|))))
(ite  (and (_module.Expression.exprLiteral_q |disj0'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#0@@0|) |#_module.Literal.litTrue|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprLiteral| (Lit DatatypeTypeType |#_module.Literal.litTrue|)))) ($Box DatatypeTypeType |stC'#2@@2|)) (ite  (and (_module.Expression.exprLiteral_q |disj0'#0@@0|) (|_module.Literal#Equal| (_module.Expression.lit |disj0'#0@@0|) |#_module.Literal.litFalse|)) (_module.__default.evalC $ly@@18 (_module.Expression.disj1 |expr#0@@11|) |stC'#2@@2| |env#0@@11|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|))))))) (ite (_module.Expression.exprInvocation_q |expr#0@@11|) (let ((|resultFun#0@@0| (_module.__default.evalC $ly@@18 (_module.Expression.fun |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
(let ((|stC'#3@@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#0@@0|))))
(let ((|fun'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#0@@0|))))
(let ((|resultArgs#0@@0| (_module.__default.evalArgsC $ly@@18 |expr#0@@11| (_module.Expression.args |expr#0@@11|) |stC#0@@25| |env#0@@11|)))
(let ((|stsC'#0@@3| ($Unbox SetType (_module.Tuple.snd |resultArgs#0@@0|))))
(let ((|args'#0@@3| ($Unbox SeqType (_module.Tuple.fst |resultArgs#0@@0|))))
(let ((|stsC''#0@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#3@@0|)) |stsC'#0@@3|)))
(ite (_module.__default.CompatibleC |stsC''#0@@0|) (let ((|stCombinedC#0@@0| (_module.__default.CombineC ($LS $LZ) |stsC''#0@@0|)))
(ite  (and (_module.Expression.exprLiteral_q |fun'#0@@0|) (_module.Literal.litPrimitive_q (_module.Expression.lit |fun'#0@@0|))) (ite (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |fun'#0@@0|))) (ite  (and (= (|Seq#Length| |args'#0@@3|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |args'#0@@3| |stCombinedC#0@@0|)) (_module.__default.execC ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@3| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@3| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@3| (LitInt 2))) |stCombinedC#0@@0|) (ite (_module.__default.ConsistentCache |stCombinedC#0@@0|) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|)) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rInconsistentCache|)))) ($Box DatatypeTypeType |stC#0@@25|)))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|)))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rCompatibility|)))) ($Box DatatypeTypeType |stC#0@@25|)))))))))) (|#_module.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Expression.exprError| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))) ($Box DatatypeTypeType |stC#0@@25|)))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.397:16|
 :skolemid |1113|
 :pattern ( (_module.__default.evalC ($LS $ly@@18) |expr#0@@11| |stC#0@@25| |env#0@@11|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@20| T@U) (|deps#0@@19| T@U) (|exts#0@@17| T@U) (|stC#0@@26| T@U) ) (!  (=> (or (|_module.__default.execC#canCall| |cmd#0@@20| |deps#0@@19| |exts#0@@17| |stC#0@@26|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@20| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@19| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@17| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@26| Tclass._module.StateC)) (and (and (and (and (and (_module.Expression.exprLiteral_q |cmd#0@@20|) (_module.Literal.litString_q (_module.Expression.lit |cmd#0@@20|))) (_module.Expression.exprLiteral_q |deps#0@@19|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps#0@@19|))) (_module.Expression.exprLiteral_q |exts#0@@17|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts#0@@17|)))))) (and (and (and (forall ((|e#0@@10| T@U) ) (!  (=> ($Is SeqType |e#0@@10| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@10|)) (and (and (|_module.__default.Loc#canCall| |cmd#0@@20| |deps#0@@19| |e#0@@10|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@10|))) (and (_module.StateC.S_q |stC#0@@26|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@26|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |972|
 :pattern ( (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@10|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@10|)))
)) (=> (forall ((|e#0@@11| T@U) ) (!  (=> (and ($Is SeqType |e#0@@11| (TSeq TChar)) (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@11|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@26|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@11|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |973|
 :pattern ( (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@11|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@11|)))
)) (forall ((|e#1@@8| T@U) ) (!  (=> ($Is SeqType |e#1@@8| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#1@@8|)) (|_module.__default.Loc#canCall| |cmd#0@@20| |deps#0@@19| |e#1@@8|)))
 :qid |CloudMakeConsistentBuildslegacydfy.238:22|
 :skolemid |974|
 :pattern ( (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#1@@8|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#1@@8|)))
)))) (=> (not (forall ((|e#0@@12| T@U) ) (!  (=> (and ($Is SeqType |e#0@@12| (TSeq TChar)) (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@12|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@26|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@12|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |973|
 :pattern ( (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@12|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@12|)))
))) (and (and (_module.StateC.S_q |stC#0@@26|) (|_module.__default.exec#canCall| |cmd#0@@20| |deps#0@@19| |exts#0@@17| (_module.StateC.st |stC#0@@26|))) (let ((|result#0@@2| (_module.__default.exec |cmd#0@@20| |deps#0@@19| |exts#0@@17| (_module.StateC.st |stC#0@@26|))))
 (and (and (_module.Tuple.Pair_q |result#0@@2|) (_module.Tuple.Pair_q |result#0@@2|)) (let ((|st'#0@@0| (_module.Tuple.snd |result#0@@2|)))
 (and (_module.StateC.S_q |stC#0@@26|) (|_module.__default.UpdateC#canCall| |cmd#0@@20| |deps#0@@19| |exts#0@@17| (|#_module.StateC.S| |st'#0@@0| (_module.StateC.c |stC#0@@26|)))))))))) (= (_module.__default.execC |cmd#0@@20| |deps#0@@19| |exts#0@@17| |stC#0@@26|) (ite (forall ((|e#0@@13| T@U) ) (!  (=> (and ($Is SeqType |e#0@@13| (TSeq TChar)) (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@13|))) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@26|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@13|))))
 :qid |CloudMakeConsistentBuildslegacydfy.237:13|
 :skolemid |970|
 :pattern ( (_module.__default.Loc |cmd#0@@20| |deps#0@@19| |e#0@@13|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) ($Box SeqType |e#0@@13|)))
)) (let ((|paths#0@@2| (|Set#FromBoogieMap| (|lambda#22| (TSeq TChar) (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) |cmd#0@@20| |deps#0@@19| (_module.Literal.strs (_module.Expression.lit |exts#0@@17|)) |cmd#0@@20| |deps#0@@19|))))
(let ((|expr'#0| (|#_module.Expression.exprLiteral| (|#_module.Literal.litArrOfPaths| |paths#0@@2|))))
(|#_module.Tuple.Pair| ($Box DatatypeTypeType |expr'#0|) ($Box DatatypeTypeType |stC#0@@26|)))) (let ((|result#0@@3| (_module.__default.exec |cmd#0@@20| |deps#0@@19| |exts#0@@17| (_module.StateC.st |stC#0@@26|))))
(let ((|st'#0@@1| (_module.Tuple.snd |result#0@@3|)))
(let ((|expr'#1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@3|))))
(let ((|stC'#0@@5| (_module.__default.UpdateC ($LS $LZ) |cmd#0@@20| |deps#0@@19| |exts#0@@17| (|#_module.StateC.S| |st'#0@@1| (_module.StateC.c |stC#0@@26|)))))
(|#_module.Tuple.Pair| ($Box DatatypeTypeType |expr'#1|) ($Box DatatypeTypeType |stC'#0@@5|))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.231:22|
 :skolemid |976|
 :pattern ( (_module.__default.execC |cmd#0@@20| |deps#0@@19| |exts#0@@17| |stC#0@@26|))
))))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@1|)))) |l#3@@1|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1580|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1|) $o $f))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@19 T@U) (|expr#0@@12| T@U) (|args#0@@8| T@U) (|stC#0@@27| T@U) (|env#0@@12| T@U) ) (!  (=> (or (|_module.__default.evalArgsC#canCall| (Lit DatatypeTypeType |expr#0@@12|) (Lit SeqType |args#0@@8|) |stC#0@@27| |env#0@@12|) (and (< 6 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@12| Tclass._module.Expression) ($Is SeqType |args#0@@8| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@27| Tclass._module.StateC)) ($IsBox |env#0@@12| Tclass._module.Env)) (forall ((|arg#2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#2| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@8| ($Box DatatypeTypeType |arg#2|)) (< (DtRank |arg#2|) (DtRank |expr#0@@12|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1144|
 :pattern ( (|Seq#Contains| |args#0@@8| ($Box DatatypeTypeType |arg#2|)))
))))) (and (|_module.__default.evalArgsC_k#canCall| (Lit DatatypeTypeType |expr#0@@12|) (Lit SeqType |args#0@@8|) |stC#0@@27| |env#0@@12| (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|)) (= (_module.__default.evalArgsC ($LS $ly@@19) (Lit DatatypeTypeType |expr#0@@12|) (Lit SeqType |args#0@@8|) |stC#0@@27| |env#0@@12|) (_module.__default.evalArgsC_k ($LS $ly@@19) (Lit DatatypeTypeType |expr#0@@12|) (Lit SeqType |args#0@@8|) |stC#0@@27| |env#0@@12| (Lit SeqType |Seq#Empty|) (Lit SetType |Set#Empty|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.473:16|
 :weight 3
 :skolemid |1145|
 :pattern ( (_module.__default.evalArgsC ($LS $ly@@19) (Lit DatatypeTypeType |expr#0@@12|) (Lit SeqType |args#0@@8|) |stC#0@@27| |env#0@@12|))
))))
(assert (forall ((s@@16 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@16 val@@4)) s@@16) (= (|Seq#Build_inv1| (|Seq#Build| s@@16 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@16 val@@4))
)))
(assert (forall ((_module.Tuple$A@@5 T@U) (_module.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Tuple _module.Tuple$A@@5 _module.Tuple$B@@5)) Tagclass._module.Tuple) (= (TagFamily (Tclass._module.Tuple _module.Tuple$A@@5 _module.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( (Tclass._module.Tuple _module.Tuple$A@@5 _module.Tuple$B@@5))
)))
(assert (forall ((d@@65 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Literal.litNumber_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass._module.Literal $h@@1))) ($IsAlloc intType (int_2_U (_module.Literal.num d@@65)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |1429|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Literal.num d@@65)) TInt $h@@1))
)))
(assert (forall ((d@@66 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Path.OpaquePath_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass._module.Path $h@@2))) ($IsAlloc intType (int_2_U (_module.Path._h0 d@@66)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Path._h0 d@@66)) TInt $h@@2))
)))
(assert (forall ((d@@67 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Path.TransparentPath_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass._module.Path $h@@3))) ($IsAlloc intType (int_2_U (_module.Path._h1 d@@67)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |1529|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Path._h1 d@@67)) TInt $h@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stC#0@@28| T@U) ) (!  (=> (or (|_module.__default.ConsistentCache#canCall| (Lit DatatypeTypeType |stC#0@@28|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |stC#0@@28| Tclass._module.StateC))) (and (forall ((|cmd#1@@0| T@U) (|deps#1@@0| T@U) (|e#1@@9| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@0| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@0| Tclass._module.Expression)) ($Is SeqType |e#1@@9| (TSeq TChar))) (and (and (and (|_module.__default.Loc#canCall| |cmd#1@@0| |deps#1@@0| |e#1@@9|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@9|))) (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@28|)) (|_module.__default.DomC#canCall| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@28|)))))) (=> (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@28|)))) (_module.__default.Hash (_module.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@9|))) (and (|_module.__default.Loc#canCall| |cmd#1@@0| |deps#1@@0| |e#1@@9|) (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@28|)) (|_module.__default.DomSt#canCall| (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@28|)))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |877|
 :pattern ( (_module.__default.Loc |cmd#1@@0| |deps#1@@0| |e#1@@9|))
)) (= (_module.__default.ConsistentCache (Lit DatatypeTypeType |stC#0@@28|)) (forall ((|cmd#1@@1| T@U) (|deps#1@@1| T@U) (|e#1@@10| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@1| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@1| Tclass._module.Expression)) ($Is SeqType |e#1@@10| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@28|)))) (_module.__default.Hash (_module.__default.Loc |cmd#1@@1| |deps#1@@1| |e#1@@10|))) (|Set#IsMember| (_module.__default.DomSt (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@28|)))) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@1| |deps#1@@1| |e#1@@10|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |876|
 :pattern ( (_module.__default.Loc |cmd#1@@1| |deps#1@@1| |e#1@@10|))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.149:33|
 :weight 3
 :skolemid |878|
 :pattern ( (_module.__default.ConsistentCache (Lit DatatypeTypeType |stC#0@@28|)))
))))
(assert (forall ((d@@68 T@U) ) (!  (=> ($Is DatatypeTypeType d@@68 Tclass._module.Reason) (or (or (_module.Reason.rCompatibility_q d@@68) (_module.Reason.rValidity_q d@@68)) (_module.Reason.rInconsistentCache_q d@@68)))
 :qid |unknown.0:0|
 :skolemid |1511|
 :pattern ( (_module.Reason.rInconsistentCache_q d@@68) ($Is DatatypeTypeType d@@68 Tclass._module.Reason))
 :pattern ( (_module.Reason.rValidity_q d@@68) ($Is DatatypeTypeType d@@68 Tclass._module.Reason))
 :pattern ( (_module.Reason.rCompatibility_q d@@68) ($Is DatatypeTypeType d@@68 Tclass._module.Reason))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@20 T@U) (|expr#0@@13| T@U) (|args#0@@9| T@U) (|stC#0@@29| T@U) (|env#0@@13| T@U) (|args'#0@@4| T@U) (|stsC'#0@@4| T@U) ) (!  (=> (or (|_module.__default.evalArgsC_k#canCall| |expr#0@@13| |args#0@@9| |stC#0@@29| |env#0@@13| |args'#0@@4| |stsC'#0@@4|) (and (< 6 $FunctionContextHeight) (and (and (and (and (and (and ($Is DatatypeTypeType |expr#0@@13| Tclass._module.Expression) ($Is SeqType |args#0@@9| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@29| Tclass._module.StateC)) ($IsBox |env#0@@13| Tclass._module.Env)) ($Is SeqType |args'#0@@4| (TSeq Tclass._module.Expression))) ($Is SetType |stsC'#0@@4| (TSet Tclass._module.StateC))) (forall ((|arg#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0@@0| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@9| ($Box DatatypeTypeType |arg#0@@0|)) (< (DtRank |arg#0@@0|) (DtRank |expr#0@@13|))))
 :qid |CloudMakeConsistentBuildslegacydfy.485:19|
 :skolemid |1154|
 :pattern ( (|Seq#Contains| |args#0@@9| ($Box DatatypeTypeType |arg#0@@0|)))
))))) ($Is DatatypeTypeType (_module.__default.evalArgsC_k $ly@@20 |expr#0@@13| |args#0@@9| |stC#0@@29| |env#0@@13| |args'#0@@4| |stsC'#0@@4|) (Tclass._module.Tuple (TSeq Tclass._module.Expression) (TSet Tclass._module.StateC))))
 :qid |CloudMakeConsistentBuildslegacydfy.482:16|
 :skolemid |1155|
 :pattern ( (_module.__default.evalArgsC_k $ly@@20 |expr#0@@13| |args#0@@9| |stC#0@@29| |env#0@@13| |args'#0@@4| |stsC'#0@@4|))
))))
(assert (forall ((d@@69 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@69)) (DtRank d@@69))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@69)))
)))
(assert (forall ((s@@17 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14) (exists ((i@@9 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@9)) (< i@@9 (|Seq#Length| s@@17))) (= (|Seq#Index| s@@17 i@@9) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@17 i@@9))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14))
)))
(assert (forall ((bx@@13 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@7)))
)))
(assert (forall ((bx@@14 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@14 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@14)) bx@@14) ($Is SeqType ($Unbox SeqType bx@@14) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@14 (TSeq t@@8)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@21 T@U) (|stsC#0@@4| T@U) ) (!  (=> (or (|_module.__default.CombineC#canCall| |stsC#0@@4|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |stsC#0@@4| (TSet Tclass._module.StateC)) (not (|Set#Equal| |stsC#0@@4| |Set#Empty|))))) (and (let ((|stCombinedC#0@@1| (_module.__default.CombineC $ly@@21 |stsC#0@@4|)))
 (and (and (and (and (and (forall ((|stC#0@@30| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#0@@30| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#0@@30|)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stC#0@@30|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#0@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.124:13|
 :skolemid |812|
 :pattern ( (_module.StateC.st |stC#0@@30|))
 :pattern ( (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#0@@30|)))
)) (forall ((|stC#1@@1| T@U) (|p#0@@5| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#1@@1| Tclass._module.StateC) ($Is DatatypeTypeType |p#0@@5| Tclass._module.Path)) (=> (and (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#1@@1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#1@@1|)) ($Box DatatypeTypeType |p#0@@5|))) (= (_module.__default.GetSt |p#0@@5| (_module.StateC.st |stC#1@@1|)) (_module.__default.GetSt |p#0@@5| (_module.StateC.st |stCombinedC#0@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.125:13|
 :skolemid |813|
 :pattern ( (_module.__default.GetSt |p#0@@5| (_module.StateC.st |stCombinedC#0@@1|)) (_module.StateC.st |stC#1@@1|))
 :pattern ( (_module.__default.GetSt |p#0@@5| (_module.StateC.st |stCombinedC#0@@1|)) (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#1@@1|)))
))) (forall ((|p#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@1| Tclass._module.Path) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#0@@1|)) ($Box DatatypeTypeType |p#1@@1|)) (exists ((|stC#2| T@U) ) (!  (and ($Is DatatypeTypeType |stC#2| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#2|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#2|)) ($Box DatatypeTypeType |p#1@@1|))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:56|
 :skolemid |814|
 :pattern ( (_module.StateC.st |stC#2|))
 :pattern ( (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#2|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.127:13|
 :skolemid |815|
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#0@@1|)) ($Box DatatypeTypeType |p#1@@1|)))
))) (forall ((|stC#3| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#3| Tclass._module.StateC) (=> (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#3|)) (|Set#Subset| (_module.__default.DomC (_module.StateC.c |stC#3|)) (_module.__default.DomC (_module.StateC.c |stCombinedC#0@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.128:13|
 :skolemid |816|
 :pattern ( (_module.StateC.c |stC#3|))
 :pattern ( (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#3|)))
))) (forall ((|stC#4| T@U) (|h#0@@4| T@U) ) (!  (=> (and ($Is DatatypeTypeType |stC#4| Tclass._module.StateC) ($IsBox |h#0@@4| Tclass._module.HashValue)) (=> (and (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#4|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#4|)) |h#0@@4|)) (|_module.Triple#Equal| (_module.__default.GetC |h#0@@4| (_module.StateC.c |stC#4|)) (_module.__default.GetC |h#0@@4| (_module.StateC.c |stCombinedC#0@@1|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.129:13|
 :skolemid |817|
 :pattern ( (_module.__default.GetC |h#0@@4| (_module.StateC.c |stCombinedC#0@@1|)) (_module.StateC.c |stC#4|))
 :pattern ( (_module.__default.GetC |h#0@@4| (_module.StateC.c |stCombinedC#0@@1|)) (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#4|)))
))) (forall ((|h#1@@1| T@U) ) (!  (=> ($IsBox |h#1@@1| Tclass._module.HashValue) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#0@@1|)) |h#1@@1|) (exists ((|stC#5| T@U) ) (!  (and ($Is DatatypeTypeType |stC#5| Tclass._module.StateC) (and (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#5|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#5|)) |h#1@@1|)))
 :qid |CloudMakeConsistentBuildslegacydfy.131:54|
 :skolemid |818|
 :pattern ( (_module.StateC.c |stC#5|))
 :pattern ( (|Set#IsMember| |stsC#0@@4| ($Box DatatypeTypeType |stC#5|)))
))))
 :qid |CloudMakeConsistentBuildslegacydfy.131:13|
 :skolemid |819|
 :pattern ( (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#0@@1|)) |h#1@@1|))
)))) ($Is DatatypeTypeType (_module.__default.CombineC $ly@@21 |stsC#0@@4|) Tclass._module.StateC)))
 :qid |CloudMakeConsistentBuildslegacydfy.120:16|
 :skolemid |820|
 :pattern ( (_module.__default.CombineC $ly@@21 |stsC#0@@4|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|cmd#0@@21| T@U) (|deps#0@@20| T@U) (|exts#0@@18| T@U) (|st#0@@8| T@U) ) (!  (=> (or (|_module.__default.Post#canCall| (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) (Lit DatatypeTypeType |exts#0@@18|) |st#0@@8|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@21| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@20| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@18| Tclass._module.Expression)) ($IsBox |st#0@@8| Tclass._module.State)) (U_2_bool (Lit boolType (bool_2_U  (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@21|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@21|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@20|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@20|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@18|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))))))))) (and (forall ((|e#1@@11| T@U) ) (!  (=> ($Is SeqType |e#1@@11| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))) ($Box SeqType |e#1@@11|)) (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@11|) (|_module.__default.DomSt#canCall| |st#0@@8|))) (=> (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))) ($Box SeqType |e#1@@11|)) (|Set#IsMember| (_module.__default.DomSt |st#0@@8|) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@11|)))) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))) ($Box SeqType |e#1@@11|)) (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@11|) (|_module.__default.GetSt#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@11|) |st#0@@8|)) (|_module.__default.Res#canCall| (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@11| |st#0@@8|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |939|
 :pattern ( (_module.__default.Res |cmd#0@@21| |deps#0@@20| |e#1@@11| |st#0@@8|))
 :pattern ( (_module.__default.Loc |cmd#0@@21| |deps#0@@20| |e#1@@11|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@18|)) ($Box SeqType |e#1@@11|)))
)) (= (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) (Lit DatatypeTypeType |exts#0@@18|) |st#0@@8|) (forall ((|e#1@@12| T@U) ) (!  (=> ($Is SeqType |e#1@@12| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))) ($Box SeqType |e#1@@12|)) (|Set#IsMember| (_module.__default.DomSt |st#0@@8|) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@12|)))) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@18|))))) ($Box SeqType |e#1@@12|)) (= (_module.__default.GetSt (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@12|) |st#0@@8|) (_module.__default.Res (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) |e#1@@12| |st#0@@8|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.212:10|
 :skolemid |938|
 :pattern ( (_module.__default.Res |cmd#0@@21| |deps#0@@20| |e#1@@12| |st#0@@8|))
 :pattern ( (_module.__default.Loc |cmd#0@@21| |deps#0@@20| |e#1@@12|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@18|)) ($Box SeqType |e#1@@12|)))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.206:22|
 :weight 3
 :skolemid |940|
 :pattern ( (_module.__default.Post (Lit DatatypeTypeType |cmd#0@@21|) (Lit DatatypeTypeType |deps#0@@20|) (Lit DatatypeTypeType |exts#0@@18|) |st#0@@8|))
))))
(assert (forall ((d@@70 T@U) (_module.Triple$A@@7 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Triple.Trio_q d@@70) (exists ((_module.Triple$B@@7 T@U) (_module.Triple$C@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@70 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@4)
 :qid |unknown.0:0|
 :skolemid |1563|
 :pattern ( ($IsAlloc DatatypeTypeType d@@70 (Tclass._module.Triple _module.Triple$A@@7 _module.Triple$B@@7 _module.Triple$C@@7) $h@@4))
)))) ($IsAllocBox (_module.Triple.fst d@@70) _module.Triple$A@@7 $h@@4))
 :qid |unknown.0:0|
 :skolemid |1564|
 :pattern ( ($IsAllocBox (_module.Triple.fst d@@70) _module.Triple$A@@7 $h@@4))
)))
(assert (forall ((d@@71 T@U) (_module.Triple$B@@8 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Triple.Trio_q d@@71) (exists ((_module.Triple$A@@8 T@U) (_module.Triple$C@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@71 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@5)
 :qid |unknown.0:0|
 :skolemid |1565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@71 (Tclass._module.Triple _module.Triple$A@@8 _module.Triple$B@@8 _module.Triple$C@@8) $h@@5))
)))) ($IsAllocBox (_module.Triple.snd d@@71) _module.Triple$B@@8 $h@@5))
 :qid |unknown.0:0|
 :skolemid |1566|
 :pattern ( ($IsAllocBox (_module.Triple.snd d@@71) _module.Triple$B@@8 $h@@5))
)))
(assert (forall ((d@@72 T@U) (_module.Triple$C@@9 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Triple.Trio_q d@@72) (exists ((_module.Triple$A@@9 T@U) (_module.Triple$B@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@72 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@6)
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@72 (Tclass._module.Triple _module.Triple$A@@9 _module.Triple$B@@9 _module.Triple$C@@9) $h@@6))
)))) ($IsAllocBox (_module.Triple.trd d@@72) _module.Triple$C@@9 $h@@6))
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($IsAllocBox (_module.Triple.trd d@@72) _module.Triple$C@@9 $h@@6))
)))
(assert (forall ((d@@73 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@73 Tclass._module.StateC)) ($IsAlloc DatatypeTypeType d@@73 Tclass._module.StateC $h@@7))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($IsAlloc DatatypeTypeType d@@73 Tclass._module.StateC $h@@7))
)))
(assert (forall ((d@@74 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@74 Tclass._module.Expression)) ($IsAlloc DatatypeTypeType d@@74 Tclass._module.Expression $h@@8))
 :qid |unknown.0:0|
 :skolemid |1405|
 :pattern ( ($IsAlloc DatatypeTypeType d@@74 Tclass._module.Expression $h@@8))
)))
(assert (forall ((d@@75 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@75 Tclass._module.Literal)) ($IsAlloc DatatypeTypeType d@@75 Tclass._module.Literal $h@@9))
 :qid |unknown.0:0|
 :skolemid |1479|
 :pattern ( ($IsAlloc DatatypeTypeType d@@75 Tclass._module.Literal $h@@9))
)))
(assert (forall ((d@@76 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@76 Tclass._module.Primitive)) ($IsAlloc DatatypeTypeType d@@76 Tclass._module.Primitive $h@@10))
 :qid |unknown.0:0|
 :skolemid |1497|
 :pattern ( ($IsAlloc DatatypeTypeType d@@76 Tclass._module.Primitive $h@@10))
)))
(assert (forall ((d@@77 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@77 Tclass._module.Reason)) ($IsAlloc DatatypeTypeType d@@77 Tclass._module.Reason $h@@11))
 :qid |unknown.0:0|
 :skolemid |1509|
 :pattern ( ($IsAlloc DatatypeTypeType d@@77 Tclass._module.Reason $h@@11))
)))
(assert (forall ((d@@78 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@78 Tclass._module.Path)) ($IsAlloc DatatypeTypeType d@@78 Tclass._module.Path $h@@12))
 :qid |unknown.0:0|
 :skolemid |1532|
 :pattern ( ($IsAlloc DatatypeTypeType d@@78 Tclass._module.Path $h@@12))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@14| T@U) ) (!  (=> (or (|_module.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@14|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@14| Tclass._module.Expression))) (= (_module.__default.Value (Lit DatatypeTypeType |expr#0@@14|)) (U_2_bool (Lit boolType (bool_2_U (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@14|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.348:23|
 :weight 3
 :skolemid |1076|
 :pattern ( (_module.__default.Value (Lit DatatypeTypeType |expr#0@@14|)))
))))
(assert (forall ((s@@18 T@U) (n@@8 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k)) (< k (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Drop| s@@18 n@@8) (- k n@@8)) (|Seq#Index| s@@18 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@18 k) (|Seq#Drop| s@@18 n@@8))
)))
(assert (= |#_module.Literal.litTrue| (Lit DatatypeTypeType |#_module.Literal.litTrue|)))
(assert (= |#_module.Literal.litFalse| (Lit DatatypeTypeType |#_module.Literal.litFalse|)))
(assert (= |#_module.Literal.litUndefined| (Lit DatatypeTypeType |#_module.Literal.litUndefined|)))
(assert (= |#_module.Literal.litNull| (Lit DatatypeTypeType |#_module.Literal.litNull|)))
(assert (= |#_module.Primitive.primCreatePath| (Lit DatatypeTypeType |#_module.Primitive.primCreatePath|)))
(assert (= |#_module.Primitive.primExec| (Lit DatatypeTypeType |#_module.Primitive.primExec|)))
(assert (= |#_module.Reason.rCompatibility| (Lit DatatypeTypeType |#_module.Reason.rCompatibility|)))
(assert (= |#_module.Reason.rValidity| (Lit DatatypeTypeType |#_module.Reason.rValidity|)))
(assert (= |#_module.Reason.rInconsistentCache| (Lit DatatypeTypeType |#_module.Reason.rInconsistentCache|)))
(assert (forall ((|a#101#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litString| |a#101#0#0|) Tclass._module.Literal) ($Is SeqType |a#101#0#0| (TSeq TChar)))
 :qid |CloudMakeConsistentBuildslegacydfy.327:52|
 :skolemid |1436|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litString| |a#101#0#0|) Tclass._module.Literal))
)))
(assert (forall ((d@@79 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Literal.litString_q d@@79) ($IsAlloc DatatypeTypeType d@@79 Tclass._module.Literal $h@@13))) ($IsAlloc SeqType (_module.Literal.str d@@79) (TSeq TChar) $h@@13))
 :qid |unknown.0:0|
 :skolemid |1437|
 :pattern ( ($IsAlloc SeqType (_module.Literal.str d@@79) (TSeq TChar) $h@@13))
)))
(assert (forall ((|a#117#0#0| T@U) (d@@80 T@U) ) (!  (=> (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@80)) (< (DtRank d@@80) (DtRank (|#_module.Literal.litArrOfPaths| |a#117#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.329:34|
 :skolemid |1459|
 :pattern ( (|Set#IsMember| |a#117#0#0| ($Box DatatypeTypeType d@@80)) (|#_module.Literal.litArrOfPaths| |a#117#0#0|))
)))
(assert (forall ((|a#123#0#0| T@U) (d@@81 T@U) ) (!  (=> (|Set#IsMember| |a#123#0#0| ($Box DatatypeTypeType d@@81)) (< (DtRank d@@81) (DtRank (|#_module.Literal.litArrOfStrings| |a#123#0#0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1468|
 :pattern ( (|Set#IsMember| |a#123#0#0| ($Box DatatypeTypeType d@@81)) (|#_module.Literal.litArrOfStrings| |a#123#0#0|))
)))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (! (= (|_module.Triple#Equal| a@@33 b@@30)  (and (and (= (_module.Triple.fst a@@33) (_module.Triple.fst b@@30)) (= (_module.Triple.snd a@@33) (_module.Triple.snd b@@30))) (= (_module.Triple.trd a@@33) (_module.Triple.trd b@@30))))
 :qid |unknown.0:0|
 :skolemid |1578|
 :pattern ( (|_module.Triple#Equal| a@@33 b@@30))
)))
(assert (forall ((a@@34 T@U) (b@@31 T@U) ) (! (= (|Set#Equal| a@@34 b@@31) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@34 o@@5) (|Set#IsMember| b@@31 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@34 o@@5))
 :pattern ( (|Set#IsMember| b@@31 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@34 b@@31))
)))
(assert (forall ((s@@19 T@U) (m@@5 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@5) (<= 0 n@@9)) (<= (+ m@@5 n@@9) (|Seq#Length| s@@19))) (= (|Seq#Drop| (|Seq#Drop| s@@19 m@@5) n@@9) (|Seq#Drop| s@@19 (+ m@@5 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@19 m@@5) n@@9))
)))
(assert (forall ((d@@82 T@U) (_module.Tuple$A@@6 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Tuple.Pair_q d@@82) (exists ((_module.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@82 (Tclass._module.Tuple _module.Tuple$A@@6 _module.Tuple$B@@6) $h@@14)
 :qid |unknown.0:0|
 :skolemid |1544|
 :pattern ( ($IsAlloc DatatypeTypeType d@@82 (Tclass._module.Tuple _module.Tuple$A@@6 _module.Tuple$B@@6) $h@@14))
)))) ($IsAllocBox (_module.Tuple.fst d@@82) _module.Tuple$A@@6 $h@@14))
 :qid |unknown.0:0|
 :skolemid |1545|
 :pattern ( ($IsAllocBox (_module.Tuple.fst d@@82) _module.Tuple$A@@6 $h@@14))
)))
(assert (forall ((d@@83 T@U) (_module.Tuple$B@@7 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_module.Tuple.Pair_q d@@83) (exists ((_module.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@83 (Tclass._module.Tuple _module.Tuple$A@@7 _module.Tuple$B@@7) $h@@15)
 :qid |unknown.0:0|
 :skolemid |1546|
 :pattern ( ($IsAlloc DatatypeTypeType d@@83 (Tclass._module.Tuple _module.Tuple$A@@7 _module.Tuple$B@@7) $h@@15))
)))) ($IsAllocBox (_module.Tuple.snd d@@83) _module.Tuple$B@@7 $h@@15))
 :qid |unknown.0:0|
 :skolemid |1547|
 :pattern ( ($IsAllocBox (_module.Tuple.snd d@@83) _module.Tuple$B@@7 $h@@15))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((d@@84 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_module.StateC.S_q d@@84) ($IsAlloc DatatypeTypeType d@@84 Tclass._module.StateC $h@@16))) ($IsAllocBox (_module.StateC.st d@@84) Tclass._module.State $h@@16))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( ($IsAllocBox (_module.StateC.st d@@84) Tclass._module.State $h@@16))
)))
(assert (forall ((d@@85 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_module.StateC.S_q d@@85) ($IsAlloc DatatypeTypeType d@@85 Tclass._module.StateC $h@@17))) ($IsAllocBox (_module.StateC.c d@@85) Tclass._module.Cache $h@@17))
 :qid |unknown.0:0|
 :skolemid |1275|
 :pattern ( ($IsAllocBox (_module.StateC.c d@@85) Tclass._module.Cache $h@@17))
)))
(assert (forall ((d@@86 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_module.Expression.exprLiteral_q d@@86) ($IsAlloc DatatypeTypeType d@@86 Tclass._module.Expression $h@@18))) ($IsAlloc DatatypeTypeType (_module.Expression.lit d@@86) Tclass._module.Literal $h@@18))
 :qid |unknown.0:0|
 :skolemid |1331|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.lit d@@86) Tclass._module.Literal $h@@18))
)))
(assert (forall ((d@@87 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_module.Expression.exprIdentifier_q d@@87) ($IsAlloc DatatypeTypeType d@@87 Tclass._module.Expression $h@@19))) ($IsAllocBox (_module.Expression.id d@@87) Tclass._module.Identifier $h@@19))
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( ($IsAllocBox (_module.Expression.id d@@87) Tclass._module.Identifier $h@@19))
)))
(assert (forall ((d@@88 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_module.Expression.exprIf_q d@@88) ($IsAlloc DatatypeTypeType d@@88 Tclass._module.Expression $h@@20))) ($IsAlloc DatatypeTypeType (_module.Expression.cond d@@88) Tclass._module.Expression $h@@20))
 :qid |unknown.0:0|
 :skolemid |1348|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.cond d@@88) Tclass._module.Expression $h@@20))
)))
(assert (forall ((d@@89 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_module.Expression.exprIf_q d@@89) ($IsAlloc DatatypeTypeType d@@89 Tclass._module.Expression $h@@21))) ($IsAlloc DatatypeTypeType (_module.Expression.ifTrue d@@89) Tclass._module.Expression $h@@21))
 :qid |unknown.0:0|
 :skolemid |1349|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.ifTrue d@@89) Tclass._module.Expression $h@@21))
)))
(assert (forall ((d@@90 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_module.Expression.exprIf_q d@@90) ($IsAlloc DatatypeTypeType d@@90 Tclass._module.Expression $h@@22))) ($IsAlloc DatatypeTypeType (_module.Expression.ifFalse d@@90) Tclass._module.Expression $h@@22))
 :qid |unknown.0:0|
 :skolemid |1350|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.ifFalse d@@90) Tclass._module.Expression $h@@22))
)))
(assert (forall ((d@@91 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (_module.Expression.exprAnd_q d@@91) ($IsAlloc DatatypeTypeType d@@91 Tclass._module.Expression $h@@23))) ($IsAlloc DatatypeTypeType (_module.Expression.conj0 d@@91) Tclass._module.Expression $h@@23))
 :qid |unknown.0:0|
 :skolemid |1363|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.conj0 d@@91) Tclass._module.Expression $h@@23))
)))
(assert (forall ((d@@92 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (_module.Expression.exprAnd_q d@@92) ($IsAlloc DatatypeTypeType d@@92 Tclass._module.Expression $h@@24))) ($IsAlloc DatatypeTypeType (_module.Expression.conj1 d@@92) Tclass._module.Expression $h@@24))
 :qid |unknown.0:0|
 :skolemid |1364|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.conj1 d@@92) Tclass._module.Expression $h@@24))
)))
(assert (forall ((d@@93 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_module.Expression.exprOr_q d@@93) ($IsAlloc DatatypeTypeType d@@93 Tclass._module.Expression $h@@25))) ($IsAlloc DatatypeTypeType (_module.Expression.disj0 d@@93) Tclass._module.Expression $h@@25))
 :qid |unknown.0:0|
 :skolemid |1375|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.disj0 d@@93) Tclass._module.Expression $h@@25))
)))
(assert (forall ((d@@94 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_module.Expression.exprOr_q d@@94) ($IsAlloc DatatypeTypeType d@@94 Tclass._module.Expression $h@@26))) ($IsAlloc DatatypeTypeType (_module.Expression.disj1 d@@94) Tclass._module.Expression $h@@26))
 :qid |unknown.0:0|
 :skolemid |1376|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.disj1 d@@94) Tclass._module.Expression $h@@26))
)))
(assert (forall ((d@@95 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_module.Expression.exprInvocation_q d@@95) ($IsAlloc DatatypeTypeType d@@95 Tclass._module.Expression $h@@27))) ($IsAlloc DatatypeTypeType (_module.Expression.fun d@@95) Tclass._module.Expression $h@@27))
 :qid |unknown.0:0|
 :skolemid |1387|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.fun d@@95) Tclass._module.Expression $h@@27))
)))
(assert (forall ((d@@96 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (_module.Expression.exprError_q d@@96) ($IsAlloc DatatypeTypeType d@@96 Tclass._module.Expression $h@@28))) ($IsAlloc DatatypeTypeType (_module.Expression.r d@@96) Tclass._module.Reason $h@@28))
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Expression.r d@@96) Tclass._module.Reason $h@@28))
)))
(assert (forall ((d@@97 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (_module.Literal.litPrimitive_q d@@97) ($IsAlloc DatatypeTypeType d@@97 Tclass._module.Literal $h@@29))) ($IsAlloc DatatypeTypeType (_module.Literal.prim d@@97) Tclass._module.Primitive $h@@29))
 :qid |unknown.0:0|
 :skolemid |1447|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Literal.prim d@@97) Tclass._module.Primitive $h@@29))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall (($ly@@22 T@U) (|expr#0@@15| T@U) (|args#0@@10| T@U) (|stC#0@@31| T@U) (|env#0@@14| T@U) (|args'#0@@5| T@U) (|stsC'#0@@5| T@U) ) (!  (=> (or (|_module.__default.evalArgsC_k#canCall| |expr#0@@15| |args#0@@10| |stC#0@@31| |env#0@@14| |args'#0@@5| |stsC'#0@@5|) (and (< 6 $FunctionContextHeight) (and (and (and (and (and (and ($Is DatatypeTypeType |expr#0@@15| Tclass._module.Expression) ($Is SeqType |args#0@@10| (TSeq Tclass._module.Expression))) ($Is DatatypeTypeType |stC#0@@31| Tclass._module.StateC)) ($IsBox |env#0@@14| Tclass._module.Env)) ($Is SeqType |args'#0@@5| (TSeq Tclass._module.Expression))) ($Is SetType |stsC'#0@@5| (TSet Tclass._module.StateC))) (forall ((|arg#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1@@0| Tclass._module.Expression) (=> (|Seq#Contains| |args#0@@10| ($Box DatatypeTypeType |arg#1@@0|)) (< (DtRank |arg#1@@0|) (DtRank |expr#0@@15|))))
 :qid |CloudMakeConsistentBuildslegacydfy.485:19|
 :skolemid |1156|
 :pattern ( (|Seq#Contains| |args#0@@10| ($Box DatatypeTypeType |arg#1@@0|)))
))))) (and (=> (not (|Seq#Equal| |args#0@@10| |Seq#Empty|)) (let ((|arg#2@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@10| (LitInt 0)))))
 (and (|_module.__default.evalC#canCall| |arg#2@@0| |stC#0@@31| |env#0@@14|) (let ((|result#0@@4| (_module.__default.evalC $ly@@22 |arg#2@@0| |stC#0@@31| |env#0@@14|)))
 (and (and (_module.Tuple.Pair_q |result#0@@4|) (_module.Tuple.Pair_q |result#0@@4|)) (let ((|stC'#0@@6| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@4|))))
(let ((|arg'#0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@4|))))
(|_module.__default.evalArgsC_k#canCall| |expr#0@@15| (|Seq#Drop| |args#0@@10| (LitInt 1)) |stC#0@@31| |env#0@@14| (|Seq#Append| |args'#0@@5| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#0|))) (|Set#Union| |stsC'#0@@5| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#0@@6|))))))))))) (= (_module.__default.evalArgsC_k ($LS $ly@@22) |expr#0@@15| |args#0@@10| |stC#0@@31| |env#0@@14| |args'#0@@5| |stsC'#0@@5|) (ite (|Seq#Equal| |args#0@@10| |Seq#Empty|) (|#_module.Tuple.Pair| ($Box SeqType |args'#0@@5|) ($Box SetType |stsC'#0@@5|)) (let ((|arg#2@@1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@10| (LitInt 0)))))
(let ((|result#0@@5| (_module.__default.evalC $ly@@22 |arg#2@@1| |stC#0@@31| |env#0@@14|)))
(let ((|stC'#0@@7| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@5|))))
(let ((|arg'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@5|))))
(_module.__default.evalArgsC_k $ly@@22 |expr#0@@15| (|Seq#Drop| |args#0@@10| (LitInt 1)) |stC#0@@31| |env#0@@14| (|Seq#Append| |args'#0@@5| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType |arg'#0@@0|))) (|Set#Union| |stsC'#0@@5| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |stC'#0@@7|))))))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.482:16|
 :skolemid |1158|
 :pattern ( (_module.__default.evalArgsC_k ($LS $ly@@22) |expr#0@@15| |args#0@@10| |stC#0@@31| |env#0@@14| |args'#0@@5| |stsC'#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stC#0@@32| T@U) ) (!  (=> (or (|_module.__default.ConsistentCache#canCall| |stC#0@@32|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |stC#0@@32| Tclass._module.StateC))) (and (forall ((|cmd#0@@22| T@U) (|deps#0@@21| T@U) (|e#0@@14| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@22| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@21| Tclass._module.Expression)) ($Is SeqType |e#0@@14| (TSeq TChar))) (and (and (and (|_module.__default.Loc#canCall| |cmd#0@@22| |deps#0@@21| |e#0@@14|) (|_module.__default.Hash#canCall| (_module.__default.Loc |cmd#0@@22| |deps#0@@21| |e#0@@14|))) (and (_module.StateC.S_q |stC#0@@32|) (|_module.__default.DomC#canCall| (_module.StateC.c |stC#0@@32|)))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@32|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@22| |deps#0@@21| |e#0@@14|))) (and (|_module.__default.Loc#canCall| |cmd#0@@22| |deps#0@@21| |e#0@@14|) (and (_module.StateC.S_q |stC#0@@32|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC#0@@32|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |874|
 :pattern ( (_module.__default.Loc |cmd#0@@22| |deps#0@@21| |e#0@@14|))
)) (= (_module.__default.ConsistentCache |stC#0@@32|) (forall ((|cmd#0@@23| T@U) (|deps#0@@22| T@U) (|e#0@@15| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@23| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@22| Tclass._module.Expression)) ($Is SeqType |e#0@@15| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@32|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@23| |deps#0@@22| |e#0@@15|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@32|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@23| |deps#0@@22| |e#0@@15|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |873|
 :pattern ( (_module.__default.Loc |cmd#0@@23| |deps#0@@22| |e#0@@15|))
)))))
 :qid |CloudMakeConsistentBuildslegacydfy.149:33|
 :skolemid |875|
 :pattern ( (_module.__default.ConsistentCache |stC#0@@32|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@24| T@U) (|deps#0@@23| T@U) (|exts#0@@19| T@U) (|stC#0@@33| T@U) ) (!  (=> (or (|_module.__default.PreC#canCall| (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (Lit DatatypeTypeType |stC#0@@33|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |cmd#0@@24| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@23| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@19| Tclass._module.Expression)) ($Is DatatypeTypeType |stC#0@@33| Tclass._module.StateC)) (and (and (and (and (and (and (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |cmd#0@@24|)) (_module.Literal.litString_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |cmd#0@@24|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |deps#0@@23|))) (_module.Literal.litArrOfPaths_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) (_module.Expression.exprLiteral_q (Lit DatatypeTypeType |exts#0@@19|))) (_module.Literal.litArrOfStrings_q (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@19|))))) (|Set#Subset| (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|)))) (_module.__default.DomSt (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@33|))))))))) (and (and (and (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@33|)) (|_module.__default.Restrict#canCall| (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@33|))))) (|_module.__default.Pre#canCall| (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@33|)))))) (=> (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@33|))))) (forall ((|e#1@@13| T@U) ) (!  (=> ($Is SeqType |e#1@@13| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@19|))))) ($Box SeqType |e#1@@13|)) (and (and (and (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@13|) (|_module.__default.Hash#canCall| (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@13|))) (and (_module.StateC.S_q (Lit DatatypeTypeType |stC#0@@33|)) (|_module.__default.DomC#canCall| (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@33|)))))) (=> (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@33|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@13|))) (|_module.__default.Loc#canCall| (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@13|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |1042|
 :pattern ( (_module.__default.Loc |cmd#0@@24| |deps#0@@23| |e#1@@13|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@19|)) ($Box SeqType |e#1@@13|)))
)))) (= (_module.__default.PreC (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (Lit DatatypeTypeType |stC#0@@33|))  (and (_module.__default.Pre (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (_module.__default.Restrict (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) (Lit BoxType (_module.StateC.st (Lit DatatypeTypeType |stC#0@@33|))))) (forall ((|e#1@@14| T@U) ) (!  (=> ($Is SeqType |e#1@@14| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType (_module.Literal.strs (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |exts#0@@19|))))) ($Box SeqType |e#1@@14|)) (=> (|Set#IsMember| (_module.__default.DomC (Lit BoxType (_module.StateC.c (Lit DatatypeTypeType |stC#0@@33|)))) (_module.__default.Hash (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@14|))) (|Set#IsMember| (Lit SetType (_module.Literal.paths (Lit DatatypeTypeType (_module.Expression.lit (Lit DatatypeTypeType |deps#0@@23|))))) ($Box DatatypeTypeType (_module.__default.Loc (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) |e#1@@14|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |1041|
 :pattern ( (_module.__default.Loc |cmd#0@@24| |deps#0@@23| |e#1@@14|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts#0@@19|)) ($Box SeqType |e#1@@14|)))
))))))
 :qid |CloudMakeConsistentBuildslegacydfy.282:22|
 :weight 3
 :skolemid |1043|
 :pattern ( (_module.__default.PreC (Lit DatatypeTypeType |cmd#0@@24|) (Lit DatatypeTypeType |deps#0@@23|) (Lit DatatypeTypeType |exts#0@@19|) (Lit DatatypeTypeType |stC#0@@33|)))
))))
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
(assert (forall ((|a#164#0#0| T@U) (|a#164#1#0| T@U) ) (! (= (|#_module.Tuple.Pair| (Lit BoxType |a#164#0#0|) (Lit BoxType |a#164#1#0|)) (Lit DatatypeTypeType (|#_module.Tuple.Pair| |a#164#0#0| |a#164#1#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.344:29|
 :skolemid |1548|
 :pattern ( (|#_module.Tuple.Pair| (Lit BoxType |a#164#0#0|) (Lit BoxType |a#164#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
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
(assert (forall ((|a#97#0#0| Int) ) (! (= (|#_module.Literal.litNumber| (LitInt |a#97#0#0|)) (Lit DatatypeTypeType (|#_module.Literal.litNumber| |a#97#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.327:30|
 :skolemid |1430|
 :pattern ( (|#_module.Literal.litNumber| (LitInt |a#97#0#0|)))
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
(assert (forall ((|a#154#0#0| Int) ) (! (= (|#_module.Path.OpaquePath| (LitInt |a#154#0#0|)) (Lit DatatypeTypeType (|#_module.Path.OpaquePath| |a#154#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.337:28|
 :skolemid |1522|
 :pattern ( (|#_module.Path.OpaquePath| (LitInt |a#154#0#0|)))
)))
(assert (forall ((|a#159#0#0| Int) ) (! (= (|#_module.Path.TransparentPath| (LitInt |a#159#0#0|)) (Lit DatatypeTypeType (|#_module.Path.TransparentPath| |a#159#0#0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.337:51|
 :skolemid |1530|
 :pattern ( (|#_module.Path.TransparentPath| (LitInt |a#159#0#0|)))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((d@@98 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (_module.Literal.litArrOfStrings_q d@@98) ($IsAlloc DatatypeTypeType d@@98 Tclass._module.Literal $h@@30))) ($IsAlloc SetType (_module.Literal.strs d@@98) (TSet (TSeq TChar)) $h@@30))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($IsAlloc SetType (_module.Literal.strs d@@98) (TSet (TSeq TChar)) $h@@30))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|cmd#0@@25| T@U) (|deps#0@@24| T@U) (|exts#0@@20| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|_module.__default.exec#canCall| |cmd#0@@25| |deps#0@@24| |exts#0@@20| |st#0@@9|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |cmd#0@@25| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@24| Tclass._module.Expression)) ($Is DatatypeTypeType |exts#0@@20| Tclass._module.Expression)) ($IsBox |st#0@@9| Tclass._module.State)))) ($Is DatatypeTypeType (_module.__default.exec |cmd#0@@25| |deps#0@@24| |exts#0@@20| |st#0@@9|) (Tclass._module.Tuple Tclass._module.Expression Tclass._module.State)))
 :qid |CloudMakeConsistentBuildslegacydfy.176:21|
 :skolemid |903|
 :pattern ( (_module.__default.exec |cmd#0@@25| |deps#0@@24| |exts#0@@20| |st#0@@9|))
))))
(assert (forall ((|a#120#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Literal.litArrOfStrings| |a#120#0#0|) Tclass._module.Literal) ($Is SetType |a#120#0#0| (TSet (TSeq TChar))))
 :qid |CloudMakeConsistentBuildslegacydfy.330:36|
 :skolemid |1464|
 :pattern ( ($Is DatatypeTypeType (|#_module.Literal.litArrOfStrings| |a#120#0#0|) Tclass._module.Literal))
)))
(assert (forall ((d@@99 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (_module.Expression.exprInvocation_q d@@99) ($IsAlloc DatatypeTypeType d@@99 Tclass._module.Expression $h@@31))) ($IsAlloc SeqType (_module.Expression.args d@@99) (TSeq Tclass._module.Expression) $h@@31))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($IsAlloc SeqType (_module.Expression.args d@@99) (TSeq Tclass._module.Expression) $h@@31))
)))
(assert (forall ((d@@100 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (_module.Literal.litArrOfPaths_q d@@100) ($IsAlloc DatatypeTypeType d@@100 Tclass._module.Literal $h@@32))) ($IsAlloc SetType (_module.Literal.paths d@@100) (TSet Tclass._module.Path) $h@@32))
 :qid |unknown.0:0|
 :skolemid |1456|
 :pattern ( ($IsAlloc SetType (_module.Literal.paths d@@100) (TSet Tclass._module.Path) $h@@32))
)))
(assert (forall ((d@@101 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (_module.Literal.litArray_q d@@101) ($IsAlloc DatatypeTypeType d@@101 Tclass._module.Literal $h@@33))) ($IsAlloc SeqType (_module.Literal.arr d@@101) (TSeq Tclass._module.Expression) $h@@33))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc SeqType (_module.Literal.arr d@@101) (TSeq Tclass._module.Expression) $h@@33))
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
(assert (forall ((v@@11 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@4)) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@10) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@11 i@@10))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@4)))
)))
(assert (forall ((s@@22 T@U) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| s@@22))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@11))) (|Seq#Rank| s@@22)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@11))))
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
(declare-fun |stCombinedC#1_1_1_1_1_1_1_0_0_0@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_4@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_5@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_6@0| () T@U)
(declare-fun |##paths#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_7@0| () T@U)
(declare-fun |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_2@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_1@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| () T@U)
(declare-fun |expr#0@@16| () T@U)
(declare-fun |stC#0@@34| () T@U)
(declare-fun |env#0@@15| () T@U)
(declare-fun |$rhs#1_1_1_1_0_0@0| () T@U)
(declare-fun |expr##1_1_1_1_0_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_0_1@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |expr##1_1_1_1_0_0_0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |##expr#1_1_1_1_0_0@0| () T@U)
(declare-fun |result#1_1_1_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_0_0@0| () T@U)
(declare-fun |expr##1_1_1_1_1_0_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_0_1@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |##expr#1_1_1_1_1_0_0@0| () T@U)
(declare-fun |result#1_1_1_1_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |expr##1_1_1_1_1_1_0_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_0_1@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |##expr#1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |result#1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_1_0_2@0| () T@U)
(declare-fun |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_1_0_1@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |##st#1_1_1_1_1_1_1_0_0_0_0_0_1@0| () T@U)
(declare-fun |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |##prim#1_1_1_1_1_1_1_0_0_0_0_0@0| () T@U)
(declare-fun |stsC''#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |expr##1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##expr#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |resultFun#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |args##1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |##args#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |resultArgs#1_1_1_1_1_1_1_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_1_1_0_3@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |defass#result#1_1_1_1_0_0| () Bool)
(declare-fun |result#1_1_1_1_0_0| () T@U)
(declare-fun |cond'#1_1_1_1_0_0| () T@U)
(declare-fun |defass#stC'#1_1_1_1_0_0| () Bool)
(declare-fun |stC'#1_1_1_1_0_0| () T@U)
(declare-fun |defass#result#1_1_1_1_1_0_0| () Bool)
(declare-fun |result#1_1_1_1_1_0_0| () T@U)
(declare-fun |conj0'#1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#stC'#1_1_1_1_1_0_0| () Bool)
(declare-fun |stC'#1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#result#1_1_1_1_1_1_0_0| () Bool)
(declare-fun |result#1_1_1_1_1_1_0_0| () T@U)
(declare-fun |disj0'#1_1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#stC'#1_1_1_1_1_1_0_0| () Bool)
(declare-fun |stC'#1_1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#resultFun#1_1_1_1_1_1_1_0_0| () Bool)
(declare-fun |resultFun#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |fun'#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#stC'#1_1_1_1_1_1_1_0_0| () Bool)
(declare-fun |stC'#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |resultArgs#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |args'#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |stsC'#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |stsC''#1_1_1_1_1_1_1_0_0| () T@U)
(declare-fun |defass#stCombinedC#1_1_1_1_1_1_1_0_0_0| () Bool)
(declare-fun |stCombinedC#1_1_1_1_1_1_1_0_0_0| () T@U)
(declare-fun |defass#resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0| () Bool)
(declare-fun |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0| () T@U)
(declare-fun |defass#stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0| () Bool)
(declare-fun |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.EvalCLemma)
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
 (=> (= (ControlFlow 0 0) 185) (let ((anon101_Else_correct  (and (=> (= (ControlFlow 0 21) (- 0 29)) true) (=> (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_4@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_4@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))) (and (=> (= (ControlFlow 0 21) (- 0 28)) true) (=> (and (and (and (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_5@0| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_5@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))) (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))))) (and (=> (= (ControlFlow 0 21) (- 0 27)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))) (=> (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (and (=> (= (ControlFlow 0 21) (- 0 26)) true) (=> (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (and (=> (= (ControlFlow 0 21) (- 0 25)) true) (=> (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_6@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (=> (and (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_6@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (= |##paths#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) ($IsAlloc SetType |##paths#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (TSet Tclass._module.Path) $Heap@4))) (and (=> (= (ControlFlow 0 21) (- 0 24)) true) (=> (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (=> (and (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_7@0| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_7@0| Tclass._module.State $Heap@4)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (|Set#Subset| |##paths#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.__default.DomSt |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_7@0|))) (=> (|_module.__default.Restrict#canCall| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (=> (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (and (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (|_module.__default.Restrict#canCall| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (= (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (_module.__default.Restrict (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))) (=> (= (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (_module.__default.Restrict (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (=> (= (ControlFlow 0 21) (- 0 20)) (= (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))))))))))))))))))))))))
(let ((anon101_Then_correct  (=> ($IsAlloc DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| Tclass._module.Path $Heap@4) (and (=> (= (ControlFlow 0 18) (- 0 19)) true) (=> (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_2@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (=> (and (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_2@0| Tclass._module.State $Heap@4) (|_module.__default.GetSt#canCall| |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and ($IsAlloc DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| Tclass._module.Path $Heap@4) (= (ControlFlow 0 18) (- 0 17)))) true))))))
(let ((anon58_correct  (=> (and (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0|)) (and (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))))) (and (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0|)))) (and (=> (= (ControlFlow 0 30) 18) anon101_Then_correct) (=> (= (ControlFlow 0 30) 21) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (and (not (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0|))) (= (ControlFlow 0 33) 30)) anon58_correct)))
(let ((anon100_Then_correct  (=> (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 31) (- 0 32)) true) (=> (_module.StateC.S_q |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (=> (and (and (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_1@0| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_1@0| Tclass._module.State $Heap@4)) (and (|_module.__default.DomSt#canCall| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (= (ControlFlow 0 31) 30))) anon58_correct))))))
(let ((anon99_Then_correct  (=> ($Is DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| Tclass._module.Path) (and (=> (= (ControlFlow 0 34) (- 0 35)) true) (=> (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0_0@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))) (and (=> (= (ControlFlow 0 34) 31) anon100_Then_correct) (=> (= (ControlFlow 0 34) 33) anon100_Else_correct)))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|result#0@@6| (_module.__default.evalC ($LS ($LS $LZ)) |expr#0@@16| |stC#0@@34| |env#0@@15|)))
(let ((|stC'#0@@8| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@6|))))
 (=> (|_module.__default.ConsistentCache#canCall| |stC'#0@@8|) (or (_module.__default.ConsistentCache |stC'#0@@8|) (forall ((|cmd#3@@0| T@U) (|deps#3@@0| T@U) (|e#3@@2| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#3@@0| Tclass._module.Expression) ($Is DatatypeTypeType |deps#3@@0| Tclass._module.Expression)) ($Is SeqType |e#3@@2| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@8|)) (_module.__default.Hash (_module.__default.Loc |cmd#3@@0| |deps#3@@0| |e#3@@2|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@8|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#3@@0| |deps#3@@0| |e#3@@2|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1206|
 :pattern ( (_module.__default.Loc |cmd#3@@0| |deps#3@@0| |e#3@@2|))
))))))) (=> (let ((|result#0@@7| (_module.__default.evalC ($LS ($LS $LZ)) |expr#0@@16| |stC#0@@34| |env#0@@15|)))
(let ((|stC'#0@@9| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@7|))))
 (=> (|_module.__default.ConsistentCache#canCall| |stC'#0@@9|) (or (_module.__default.ConsistentCache |stC'#0@@9|) (forall ((|cmd#3@@1| T@U) (|deps#3@@1| T@U) (|e#3@@3| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#3@@1| Tclass._module.Expression) ($Is DatatypeTypeType |deps#3@@1| Tclass._module.Expression)) ($Is SeqType |e#3@@3| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@9|)) (_module.__default.Hash (_module.__default.Loc |cmd#3@@1| |deps#3@@1| |e#3@@3|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@9|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#3@@1| |deps#3@@1| |e#3@@3|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1206|
 :pattern ( (_module.__default.Loc |cmd#3@@1| |deps#3@@1| |e#3@@3|))
)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|result#0@@8| (_module.__default.evalC ($LS ($LS $LZ)) |expr#0@@16| |stC#0@@34| |env#0@@15|)))
(let ((|expr'#0@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@8|))))
 (=> (_module.Expression.exprError_q |expr'#0@@0|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@0|) |#_module.Reason.rInconsistentCache|))))))))))
(let ((anon81_Else_correct  (=> (and (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|) |#_module.Literal.litFalse|))) (= (ControlFlow 0 150) 2)) GeneratedUnifiedExit_correct)))
(let ((anon81_Then_correct  (=> (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|) |#_module.Literal.litFalse|)) (and (=> (= (ControlFlow 0 145) (- 0 149)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (=> (= |expr##1_1_1_1_0_1_0_0@0| (_module.Expression.ifFalse |expr#0@@16|)) (and (=> (= (ControlFlow 0 145) (- 0 148)) true) (and (=> (= (ControlFlow 0 145) (- 0 147)) (< (DtRank |expr##1_1_1_1_0_1_0_0@0|) (DtRank |expr#0@@16|))) (=> (< (DtRank |expr##1_1_1_1_0_1_0_0@0|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 145) (- 0 146)) (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_0_1@0|) (forall ((|cmd#0@@26| T@U) (|deps#0@@25| T@U) (|e#0@@16| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@26| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@25| Tclass._module.Expression)) ($Is SeqType |e#0@@16| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@26| |deps#0@@25| |e#0@@16|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@26| |deps#0@@25| |e#0@@16|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@26| |deps#0@@25| |e#0@@16|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_0_1@0|) (forall ((|cmd#0@@27| T@U) (|deps#0@@26| T@U) (|e#0@@17| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@27| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@26| Tclass._module.Expression)) ($Is SeqType |e#0@@17| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@27| |deps#0@@26| |e#0@@17|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@27| |deps#0@@26| |e#0@@17|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@27| |deps#0@@26| |e#0@@17|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (|_module.__default.evalC#canCall| |expr##1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|) (let ((|result#0@@9| (_module.__default.evalC ($LS $LZ) |expr##1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
 (and (and (_module.Tuple.Pair_q |result#0@@9|) (_module.Tuple.Pair_q |result#0@@9|)) (let ((|stC'#0@@10| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@9|))))
(let ((|expr'#0@@1| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@9|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@10|) (=> (_module.__default.ConsistentCache |stC'#0@@10|) (=> (_module.Expression.exprError_q |expr'#0@@1|) (|$IsA#_module.Reason| (_module.Expression.r |expr'#0@@1|))))))))))) (and (and (let ((|result#0@@10| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|stC'#0@@11| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@10|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@11|) (and (_module.__default.ConsistentCache |stC'#0@@11|) (forall ((|cmd#1@@2| T@U) (|deps#1@@2| T@U) (|e#1@@15| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@2| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@2| Tclass._module.Expression)) ($Is SeqType |e#1@@15| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@11|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@15|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@11|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@15|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1203|
 :pattern ( (_module.__default.Loc |cmd#1@@2| |deps#1@@2| |e#1@@15|))
)))))) (let ((|result#0@@11| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|expr'#0@@2| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@11|))))
 (=> (_module.Expression.exprError_q |expr'#0@@2|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@2|) |#_module.Reason.rInconsistentCache|)))))) (and (= $Heap@0 $Heap@8) (= (ControlFlow 0 145) 2)))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon23_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 151) 145) anon81_Then_correct) (=> (= (ControlFlow 0 151) 150) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|)) (= (ControlFlow 0 154) 151)) anon23_correct)))
(let ((anon80_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 152) (- 0 153)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 152) 151) anon23_correct))))))
(let ((anon79_Else_correct  (=> (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|) |#_module.Literal.litTrue|))) (and (=> (= (ControlFlow 0 155) 152) anon80_Then_correct) (=> (= (ControlFlow 0 155) 154) anon80_Else_correct)))))
(let ((anon79_Then_correct  (=> (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|) |#_module.Literal.litTrue|)) (and (=> (= (ControlFlow 0 140) (- 0 144)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (=> (= |expr##1_1_1_1_0_0_0@0| (_module.Expression.ifTrue |expr#0@@16|)) (and (=> (= (ControlFlow 0 140) (- 0 143)) true) (and (=> (= (ControlFlow 0 140) (- 0 142)) (< (DtRank |expr##1_1_1_1_0_0_0@0|) (DtRank |expr#0@@16|))) (=> (< (DtRank |expr##1_1_1_1_0_0_0@0|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 140) (- 0 141)) (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_0_1@0|) (forall ((|cmd#0@@28| T@U) (|deps#0@@27| T@U) (|e#0@@18| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@28| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@27| Tclass._module.Expression)) ($Is SeqType |e#0@@18| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@28| |deps#0@@27| |e#0@@18|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@28| |deps#0@@27| |e#0@@18|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@28| |deps#0@@27| |e#0@@18|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_0_1@0|) (forall ((|cmd#0@@29| T@U) (|deps#0@@28| T@U) (|e#0@@19| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@29| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@28| Tclass._module.Expression)) ($Is SeqType |e#0@@19| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@29| |deps#0@@28| |e#0@@19|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@29| |deps#0@@28| |e#0@@19|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@29| |deps#0@@28| |e#0@@19|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (|_module.__default.evalC#canCall| |expr##1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|) (let ((|result#0@@12| (_module.__default.evalC ($LS $LZ) |expr##1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
 (and (and (_module.Tuple.Pair_q |result#0@@12|) (_module.Tuple.Pair_q |result#0@@12|)) (let ((|stC'#0@@12| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@12|))))
(let ((|expr'#0@@3| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@12|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@12|) (=> (_module.__default.ConsistentCache |stC'#0@@12|) (=> (_module.Expression.exprError_q |expr'#0@@3|) (|$IsA#_module.Reason| (_module.Expression.r |expr'#0@@3|))))))))))) (and (and (let ((|result#0@@13| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|stC'#0@@13| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@13|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@13|) (and (_module.__default.ConsistentCache |stC'#0@@13|) (forall ((|cmd#1@@3| T@U) (|deps#1@@3| T@U) (|e#1@@16| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@3| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@3| Tclass._module.Expression)) ($Is SeqType |e#1@@16| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@13|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@16|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@13|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@16|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1203|
 :pattern ( (_module.__default.Loc |cmd#1@@3| |deps#1@@3| |e#1@@16|))
)))))) (let ((|result#0@@14| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|expr'#0@@4| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@14|))))
 (=> (_module.Expression.exprError_q |expr'#0@@4|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@4|) |#_module.Reason.rInconsistentCache|)))))) (and (= $Heap@0 $Heap@7) (= (ControlFlow 0 140) 2)))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon19_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 156) 140) anon79_Then_correct) (=> (= (ControlFlow 0 156) 155) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|)) (= (ControlFlow 0 159) 156)) anon19_correct)))
(let ((anon78_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 157) (- 0 158)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 157) 156) anon19_correct))))))
(let ((anon77_Then_correct  (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 160) (- 0 163)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (=> (and (and (and (= |##expr#1_1_1_1_0_0@0| (_module.Expression.cond |expr#0@@16|)) ($IsAlloc DatatypeTypeType |##expr#1_1_1_1_0_0@0| Tclass._module.Expression $Heap@0)) (and ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@0) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@0))) (and (and (|_module.__default.evalC#canCall| (_module.Expression.cond |expr#0@@16|) |stC#0@@34| |env#0@@15|) (_module.Tuple.Pair_q (_module.__default.evalC ($LS $LZ) (_module.Expression.cond |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (and (|_module.__default.evalC#canCall| (_module.Expression.cond |expr#0@@16|) |stC#0@@34| |env#0@@15|) (= |result#1_1_1_1_0_0@0| (_module.__default.evalC ($LS $LZ) (_module.Expression.cond |expr#0@@16|) |stC#0@@34| |env#0@@15|))))) (and (=> (= (ControlFlow 0 160) (- 0 162)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_0_0@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 160) (- 0 161)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_0_1@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 160) 157) anon78_Then_correct) (=> (= (ControlFlow 0 160) 159) anon78_Else_correct))))))))))))))
(let ((anon86_Else_correct  (=> (and (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|) |#_module.Literal.litFalse|))) (= (ControlFlow 0 125) 2)) GeneratedUnifiedExit_correct)))
(let ((anon86_Then_correct  (=> (and (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|) |#_module.Literal.litFalse|)) (= (ControlFlow 0 124) 2)) GeneratedUnifiedExit_correct)))
(let ((anon33_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 126) 124) anon86_Then_correct) (=> (= (ControlFlow 0 126) 125) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 129) 126)) anon33_correct)))
(let ((anon85_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 127) (- 0 128)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 127) 126) anon33_correct))))))
(let ((anon84_Else_correct  (=> (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|) |#_module.Literal.litTrue|))) (and (=> (= (ControlFlow 0 130) 127) anon85_Then_correct) (=> (= (ControlFlow 0 130) 129) anon85_Else_correct)))))
(let ((anon84_Then_correct  (=> (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|) |#_module.Literal.litTrue|)) (and (=> (= (ControlFlow 0 119) (- 0 123)) (_module.Expression.exprAnd_q |expr#0@@16|)) (=> (_module.Expression.exprAnd_q |expr#0@@16|) (=> (= |expr##1_1_1_1_1_0_0_0@0| (_module.Expression.conj1 |expr#0@@16|)) (and (=> (= (ControlFlow 0 119) (- 0 122)) true) (and (=> (= (ControlFlow 0 119) (- 0 121)) (< (DtRank |expr##1_1_1_1_1_0_0_0@0|) (DtRank |expr#0@@16|))) (=> (< (DtRank |expr##1_1_1_1_1_0_0_0@0|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 119) (- 0 120)) (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_1_0_1@0|) (forall ((|cmd#0@@30| T@U) (|deps#0@@29| T@U) (|e#0@@20| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@30| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@29| Tclass._module.Expression)) ($Is SeqType |e#0@@20| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@30| |deps#0@@29| |e#0@@20|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@30| |deps#0@@29| |e#0@@20|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@30| |deps#0@@29| |e#0@@20|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_1_0_1@0|) (forall ((|cmd#0@@31| T@U) (|deps#0@@30| T@U) (|e#0@@21| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@31| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@30| Tclass._module.Expression)) ($Is SeqType |e#0@@21| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@31| |deps#0@@30| |e#0@@21|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@31| |deps#0@@30| |e#0@@21|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@31| |deps#0@@30| |e#0@@21|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (|_module.__default.evalC#canCall| |expr##1_1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_1_0_1@0| |env#0@@15|) (let ((|result#0@@15| (_module.__default.evalC ($LS $LZ) |expr##1_1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_1_0_1@0| |env#0@@15|)))
 (and (and (_module.Tuple.Pair_q |result#0@@15|) (_module.Tuple.Pair_q |result#0@@15|)) (let ((|stC'#0@@14| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@15|))))
(let ((|expr'#0@@5| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@15|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@14|) (=> (_module.__default.ConsistentCache |stC'#0@@14|) (=> (_module.Expression.exprError_q |expr'#0@@5|) (|$IsA#_module.Reason| (_module.Expression.r |expr'#0@@5|))))))))))) (and (and (let ((|result#0@@16| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|stC'#0@@15| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@16|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@15|) (and (_module.__default.ConsistentCache |stC'#0@@15|) (forall ((|cmd#1@@4| T@U) (|deps#1@@4| T@U) (|e#1@@17| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@4| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@4| Tclass._module.Expression)) ($Is SeqType |e#1@@17| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@15|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@17|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@15|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@17|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1203|
 :pattern ( (_module.__default.Loc |cmd#1@@4| |deps#1@@4| |e#1@@17|))
)))))) (let ((|result#0@@17| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_0_0_0@0| |$rhs#1_1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|expr'#0@@6| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@17|))))
 (=> (_module.Expression.exprError_q |expr'#0@@6|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@6|) |#_module.Reason.rInconsistentCache|)))))) (and (= $Heap@0 $Heap@6) (= (ControlFlow 0 119) 2)))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon29_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 131) 119) anon84_Then_correct) (=> (= (ControlFlow 0 131) 130) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 134) 131)) anon29_correct)))
(let ((anon83_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 132) (- 0 133)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 132) 131) anon29_correct))))))
(let ((anon82_Then_correct  (=> (_module.Expression.exprAnd_q |expr#0@@16|) (and (=> (= (ControlFlow 0 135) (- 0 138)) (_module.Expression.exprAnd_q |expr#0@@16|)) (=> (_module.Expression.exprAnd_q |expr#0@@16|) (=> (and (and (and (= |##expr#1_1_1_1_1_0_0@0| (_module.Expression.conj0 |expr#0@@16|)) ($IsAlloc DatatypeTypeType |##expr#1_1_1_1_1_0_0@0| Tclass._module.Expression $Heap@0)) (and ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@0) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@0))) (and (and (|_module.__default.evalC#canCall| (_module.Expression.conj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|) (_module.Tuple.Pair_q (_module.__default.evalC ($LS $LZ) (_module.Expression.conj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (and (|_module.__default.evalC#canCall| (_module.Expression.conj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|) (= |result#1_1_1_1_1_0_0@0| (_module.__default.evalC ($LS $LZ) (_module.Expression.conj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|))))) (and (=> (= (ControlFlow 0 135) (- 0 137)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_0_0@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 135) (- 0 136)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_0_1@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 135) 132) anon83_Then_correct) (=> (= (ControlFlow 0 135) 134) anon83_Else_correct))))))))))))))
(let ((anon91_Else_correct  (=> (and (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|) |#_module.Literal.litFalse|))) (= (ControlFlow 0 104) 2)) GeneratedUnifiedExit_correct)))
(let ((anon91_Then_correct  (=> (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|) |#_module.Literal.litFalse|)) (and (=> (= (ControlFlow 0 99) (- 0 103)) (_module.Expression.exprOr_q |expr#0@@16|)) (=> (_module.Expression.exprOr_q |expr#0@@16|) (=> (= |expr##1_1_1_1_1_1_0_1_0_0@0| (_module.Expression.disj1 |expr#0@@16|)) (and (=> (= (ControlFlow 0 99) (- 0 102)) true) (and (=> (= (ControlFlow 0 99) (- 0 101)) (< (DtRank |expr##1_1_1_1_1_1_0_1_0_0@0|) (DtRank |expr#0@@16|))) (=> (< (DtRank |expr##1_1_1_1_1_1_0_1_0_0@0|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 99) (- 0 100)) (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_1_1_0_1@0|) (forall ((|cmd#0@@32| T@U) (|deps#0@@31| T@U) (|e#0@@22| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@32| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@31| Tclass._module.Expression)) ($Is SeqType |e#0@@22| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@32| |deps#0@@31| |e#0@@22|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@32| |deps#0@@31| |e#0@@22|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@32| |deps#0@@31| |e#0@@22|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |$rhs#1_1_1_1_1_1_0_1@0|) (or (_module.__default.ConsistentCache |$rhs#1_1_1_1_1_1_0_1@0|) (forall ((|cmd#0@@33| T@U) (|deps#0@@32| T@U) (|e#0@@23| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@33| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@32| Tclass._module.Expression)) ($Is SeqType |e#0@@23| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |$rhs#1_1_1_1_1_1_0_1@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@33| |deps#0@@32| |e#0@@23|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_1_0_1@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@33| |deps#0@@32| |e#0@@23|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@33| |deps#0@@32| |e#0@@23|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (|_module.__default.evalC#canCall| |expr##1_1_1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_1_1_0_1@0| |env#0@@15|) (let ((|result#0@@18| (_module.__default.evalC ($LS $LZ) |expr##1_1_1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_1_1_0_1@0| |env#0@@15|)))
 (and (and (_module.Tuple.Pair_q |result#0@@18|) (_module.Tuple.Pair_q |result#0@@18|)) (let ((|stC'#0@@16| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@18|))))
(let ((|expr'#0@@7| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@18|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@16|) (=> (_module.__default.ConsistentCache |stC'#0@@16|) (=> (_module.Expression.exprError_q |expr'#0@@7|) (|$IsA#_module.Reason| (_module.Expression.r |expr'#0@@7|))))))))))) (and (and (let ((|result#0@@19| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|stC'#0@@17| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@19|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@17|) (and (_module.__default.ConsistentCache |stC'#0@@17|) (forall ((|cmd#1@@5| T@U) (|deps#1@@5| T@U) (|e#1@@18| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@5| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@5| Tclass._module.Expression)) ($Is SeqType |e#1@@18| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@17|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@5| |deps#1@@5| |e#1@@18|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@17|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@5| |deps#1@@5| |e#1@@18|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1203|
 :pattern ( (_module.__default.Loc |cmd#1@@5| |deps#1@@5| |e#1@@18|))
)))))) (let ((|result#0@@20| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_1_0_1_0_0@0| |$rhs#1_1_1_1_1_1_0_1@0| |env#0@@15|)))
(let ((|expr'#0@@8| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@20|))))
 (=> (_module.Expression.exprError_q |expr'#0@@8|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@8|) |#_module.Reason.rInconsistentCache|)))))) (and (= $Heap@0 $Heap@5) (= (ControlFlow 0 99) 2)))) GeneratedUnifiedExit_correct))))))))))))
(let ((anon43_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 105) 99) anon91_Then_correct) (=> (= (ControlFlow 0 105) 104) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 108) 105)) anon43_correct)))
(let ((anon90_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 106) (- 0 107)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 106) 105) anon43_correct))))))
(let ((anon89_Else_correct  (=> (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|) |#_module.Literal.litTrue|))) (and (=> (= (ControlFlow 0 109) 106) anon90_Then_correct) (=> (= (ControlFlow 0 109) 108) anon90_Else_correct)))))
(let ((anon89_Then_correct  (=> (and (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|_module.Literal#Equal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|) |#_module.Literal.litTrue|)) (= (ControlFlow 0 98) 2)) GeneratedUnifiedExit_correct)))
(let ((anon39_correct  (=> (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (|$IsA#_module.Literal| (_module.Expression.lit |$rhs#1_1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 110) 98) anon89_Then_correct) (=> (= (ControlFlow 0 110) 109) anon89_Else_correct)))))
(let ((anon88_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 113) 110)) anon39_correct)))
(let ((anon88_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 111) (- 0 112)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 111) 110) anon39_correct))))))
(let ((anon87_Then_correct  (=> (_module.Expression.exprOr_q |expr#0@@16|) (and (=> (= (ControlFlow 0 114) (- 0 117)) (_module.Expression.exprOr_q |expr#0@@16|)) (=> (_module.Expression.exprOr_q |expr#0@@16|) (=> (and (and (and (= |##expr#1_1_1_1_1_1_0_0@0| (_module.Expression.disj0 |expr#0@@16|)) ($IsAlloc DatatypeTypeType |##expr#1_1_1_1_1_1_0_0@0| Tclass._module.Expression $Heap@0)) (and ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@0) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@0))) (and (and (|_module.__default.evalC#canCall| (_module.Expression.disj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|) (_module.Tuple.Pair_q (_module.__default.evalC ($LS $LZ) (_module.Expression.disj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (and (|_module.__default.evalC#canCall| (_module.Expression.disj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|) (= |result#1_1_1_1_1_1_0_0@0| (_module.__default.evalC ($LS $LZ) (_module.Expression.disj0 |expr#0@@16|) |stC#0@@34| |env#0@@15|))))) (and (=> (= (ControlFlow 0 114) (- 0 116)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_1_0_0@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1_1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 114) (- 0 115)) true) (=> (_module.Tuple.Pair_q |result#1_1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |result#1_1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_1_0_1@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1_1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 114) 111) anon88_Then_correct) (=> (= (ControlFlow 0 114) 113) anon88_Else_correct))))))))))))))
(let ((anon99_Else_correct  (=> (and (forall ((|p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| Tclass._module.Path) (and (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1|)) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1|)))) (= (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))))
 :qid |CloudMakeConsistentBuildslegacydfy.615:20|
 :skolemid |1219|
 :pattern ( (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))
 :pattern ( (_module.__default.GetSt |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#1_1_1_1_1_1_1_0_0_0_0_0_0_1|)))
)) (= (ControlFlow 0 16) 2)) GeneratedUnifiedExit_correct)))
(let ((anon98_Then_correct  (=> (and (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |$rhs#1_1_1_1_1_1_1_0_2@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 64)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (= |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 36) (- 0 63)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (= |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1)))) (and (=> (= (ControlFlow 0 36) (- 0 62)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (= |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 36) (- 0 61)) true) (and (=> (= (ControlFlow 0 36) (- 0 60)) (_module.Expression.exprLiteral_q |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (=> (_module.Expression.exprLiteral_q |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (and (=> (= (ControlFlow 0 36) (- 0 59)) (_module.Literal.litString_q (_module.Expression.lit |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (=> (_module.Literal.litString_q (_module.Expression.lit |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 58)) (_module.Expression.exprLiteral_q |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (=> (_module.Expression.exprLiteral_q |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (and (=> (= (ControlFlow 0 36) (- 0 57)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (=> (_module.Literal.litArrOfPaths_q (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 56)) (_module.Expression.exprLiteral_q |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (=> (_module.Expression.exprLiteral_q |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (and (=> (= (ControlFlow 0 36) (- 0 55)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (=> (_module.Literal.litArrOfStrings_q (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 54)) (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))) (=> (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 36) (- 0 53)) (=> (|_module.__default.PreC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.PreC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (=> (|_module.__default.Pre#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (or (_module.__default.Pre |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (forall ((|e#0@@24| T@U) ) (!  (=> ($Is SeqType |e#0@@24| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#0@@24|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) ($Box DatatypeTypeType (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@24|))) (= (_module.__default.GetSt (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@24|) (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (_module.__default.Res |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@24| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |996|
 :pattern ( (_module.__default.Res |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@24| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))))
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@24|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#0@@24|)))
))))))) (=> (=> (|_module.__default.PreC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.PreC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (=> (|_module.__default.Pre#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (or (_module.__default.Pre |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (forall ((|e#0@@25| T@U) ) (!  (=> ($Is SeqType |e#0@@25| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#0@@25|)) (=> (|Set#IsMember| (_module.__default.DomSt (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) ($Box DatatypeTypeType (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@25|))) (= (_module.__default.GetSt (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@25|) (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (_module.__default.Res |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@25| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))))))
 :qid |CloudMakeConsistentBuildslegacydfy.202:10|
 :skolemid |996|
 :pattern ( (_module.__default.Res |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@25| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))))
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#0@@25|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#0@@25|)))
)))))) (and (=> (= (ControlFlow 0 36) (- 0 52)) (=> (|_module.__default.PreC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.PreC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (forall ((|e#1@@19| T@U) ) (!  (=> ($Is SeqType |e#1@@19| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#1@@19|)) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.Hash (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@19|))) (|Set#IsMember| (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@19|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |998|
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@19|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#1@@19|)))
))))) (=> (=> (|_module.__default.PreC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.PreC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (forall ((|e#1@@20| T@U) ) (!  (=> ($Is SeqType |e#1@@20| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#1@@20|)) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.Hash (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@20|))) (|Set#IsMember| (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@20|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.291:10|
 :skolemid |998|
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#1@@20|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#1@@20|)))
)))) (and (=> (= (ControlFlow 0 36) (- 0 51)) (=> (|_module.__default.ConsistentCache#canCall| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.ConsistentCache |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (forall ((|cmd#1@@6| T@U) (|deps#1@@6| T@U) (|e#2@@9| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@6| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@6| Tclass._module.Expression)) ($Is SeqType |e#2@@9| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@6| |deps#1@@6| |e#2@@9|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@6| |deps#1@@6| |e#2@@9|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1000|
 :pattern ( (_module.__default.Loc |cmd#1@@6| |deps#1@@6| |e#2@@9|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (or (_module.__default.ConsistentCache |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (forall ((|cmd#1@@7| T@U) (|deps#1@@7| T@U) (|e#2@@10| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@7| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@7| Tclass._module.Expression)) ($Is SeqType |e#2@@10| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@7| |deps#1@@7| |e#2@@10|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@7| |deps#1@@7| |e#2@@10|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1000|
 :pattern ( (_module.__default.Loc |cmd#1@@7| |deps#1@@7| |e#2@@10|))
)))) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (|_module.__default.execC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (let ((|result#0@@21| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
 (and (and (_module.Tuple.Pair_q |result#0@@21|) (_module.Tuple.Pair_q |result#0@@21|)) (let ((|stC'#0@@18| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@21|))))
(let ((|expr'#0@@9| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@21|))))
 (=> (_module.Expression.exprLiteral_q |expr'#0@@9|) (=> (_module.Literal.litArrOfPaths_q (_module.Expression.lit |expr'#0@@9|)) (and (and (_module.StateC.S_q |stC'#0@@18|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#0@@18|))) (=> (|Set#Subset| (_module.Literal.paths (_module.Expression.lit |expr'#0@@9|)) (_module.__default.DomSt (_module.StateC.st |stC'#0@@18|))) (and (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (_module.StateC.S_q |stC'#0@@18|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#0@@18|)))) (=> (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stC'#0@@18|))) (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (and (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (_module.StateC.S_q |stC'#0@@18|)) (|_module.__default.Restrict#canCall| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stC'#0@@18|)))) (=> (= (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (_module.__default.Restrict (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stC'#0@@18|))) (and (|_module.__default.OneToOne#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |expr'#0@@9|) (=> (_module.__default.OneToOne |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |expr'#0@@9|) (and (|_module.__default.PostC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stC'#0@@18|) (=> (_module.__default.PostC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stC'#0@@18|) (and (forall ((|p#2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2| Tclass._module.Path) (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (=> (not (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2|))) (and (_module.StateC.S_q |stC'#0@@18|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stC'#0@@18|))))))
 :qid |CloudMakeConsistentBuildslegacydfy.265:13|
 :skolemid |1002|
 :pattern ( (_module.Path.OpaquePath_q |p#2|))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@18|)) ($Box DatatypeTypeType |p#2|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2|)))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@0| Tclass._module.Path) (=> (and (not (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2@@0|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@18|)) ($Box DatatypeTypeType |p#2@@0|))) (_module.Path.OpaquePath_q |p#2@@0|)))
 :qid |CloudMakeConsistentBuildslegacydfy.265:13|
 :skolemid |1003|
 :pattern ( (_module.Path.OpaquePath_q |p#2@@0|))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@18|)) ($Box DatatypeTypeType |p#2@@0|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2@@0|)))
)) (|_module.__default.ConsistentCache#canCall| |stC'#0@@18|)))))))))))))))))))) (and (let ((|result#0@@22| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|expr'#0@@10| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@22|))))
(_module.Expression.exprLiteral_q |expr'#0@@10|))) (let ((|result#0@@23| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|expr'#0@@11| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@23|))))
(_module.Literal.litArrOfPaths_q (_module.Expression.lit |expr'#0@@11|)))))) (=> (and (and (and (let ((|result#0@@24| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@19| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@24|))))
(let ((|expr'#0@@12| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@24|))))
(|Set#Subset| (_module.Literal.paths (_module.Expression.lit |expr'#0@@12|)) (_module.__default.DomSt (_module.StateC.st |stC'#0@@19|)))))) (let ((|result#0@@25| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@20| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@25|))))
(|Set#Subset| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.__default.DomSt (_module.StateC.st |stC'#0@@20|)))))) (and (let ((|result#0@@26| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@21| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@26|))))
(= (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (_module.__default.Restrict (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (_module.StateC.st |stC'#0@@21|))))) (let ((|result#0@@27| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|expr'#0@@13| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@27|))))
 (and (|_module.__default.OneToOne#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |expr'#0@@13|) (and (_module.__default.OneToOne |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |expr'#0@@13|) (forall ((|e#3@@4| T@U) ) (!  (=> ($Is SeqType |e#3@@4| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#3@@4|)) (|Set#IsMember| (_module.Literal.paths (_module.Expression.lit |expr'#0@@13|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#3@@4|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.225:10|
 :skolemid |1005|
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#3@@4|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#3@@4|)))
)))))))) (and (and (let ((|result#0@@28| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@22| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@28|))))
 (and (|_module.__default.PostC#canCall| |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stC'#0@@22|) (and (_module.__default.PostC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stC'#0@@22|) (and (_module.__default.Post |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.Restrict (_module.Literal.paths (_module.Expression.lit |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.StateC.st |stC'#0@@22|))) (forall ((|e#5| T@U) ) (!  (=> ($Is SeqType |e#5| (TSeq TChar)) (=> (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#5|)) (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@22|)) (_module.__default.Hash (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#5|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.304:10|
 :skolemid |1009|
 :pattern ( (_module.__default.Loc |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |e#5|))
 :pattern ( (|Set#IsMember| (_module.Literal.strs (_module.Expression.lit |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) ($Box SeqType |e#5|)))
))))))) (let ((|result#0@@29| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@23| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@29|))))
(forall ((|p#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@1| Tclass._module.Path) (=> (and (not (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2@@1|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@23|)) ($Box DatatypeTypeType |p#2@@1|))) (_module.Path.OpaquePath_q |p#2@@1|)))
 :qid |CloudMakeConsistentBuildslegacydfy.265:13|
 :skolemid |1010|
 :pattern ( (_module.Path.OpaquePath_q |p#2@@1|))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@23|)) ($Box DatatypeTypeType |p#2@@1|)))
 :pattern ( (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) ($Box DatatypeTypeType |p#2@@1|)))
))))) (and (let ((|result#0@@30| (_module.__default.execC |cmd##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |deps##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |exts##1_1_1_1_1_1_1_0_0_0_0_0_0@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))
(let ((|stC'#0@@24| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@30|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@24|) (and (_module.__default.ConsistentCache |stC'#0@@24|) (forall ((|cmd#2@@0| T@U) (|deps#2@@0| T@U) (|e#6| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#2@@0| Tclass._module.Expression) ($Is DatatypeTypeType |deps#2@@0| Tclass._module.Expression)) ($Is SeqType |e#6| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@24|)) (_module.__default.Hash (_module.__default.Loc |cmd#2@@0| |deps#2@@0| |e#6|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@24|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#2@@0| |deps#2@@0| |e#6|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1012|
 :pattern ( (_module.__default.Loc |cmd#2@@0| |deps#2@@0| |e#6|))
)))))) (= $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 36) (- 0 50)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (and (= |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0)))) ($IsAlloc DatatypeTypeType |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0| Tclass._module.Expression $Heap@4)) (and (=> (= (ControlFlow 0 36) (- 0 49)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (and (= |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1)))) ($IsAlloc DatatypeTypeType |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0| Tclass._module.Expression $Heap@4)) (and (=> (= (ControlFlow 0 36) (- 0 48)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|))) (=> (and (= |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2)))) ($IsAlloc DatatypeTypeType |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0| Tclass._module.Expression $Heap@4)) (and (=> (= (ControlFlow 0 36) (- 0 47)) true) (=> ($IsAlloc DatatypeTypeType |stCombinedC#1_1_1_1_1_1_1_0_0_0@0| Tclass._module.StateC $Heap@4) (and (=> (= (ControlFlow 0 36) (- 0 46)) (_module.Expression.exprLiteral_q |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 45)) (_module.Literal.litString_q (_module.Expression.lit |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (and (=> (= (ControlFlow 0 36) (- 0 44)) (_module.Expression.exprLiteral_q |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 43)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (_module.Expression.exprLiteral_q |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (and (=> (= (ControlFlow 0 36) (- 0 41)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (=> (and (and (and (and (and (and (_module.Expression.exprLiteral_q |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (_module.Literal.litString_q (_module.Expression.lit |##cmd#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (_module.Expression.exprLiteral_q |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.Literal.litArrOfPaths_q (_module.Expression.lit |##deps#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (_module.Expression.exprLiteral_q |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)) (_module.Literal.litArrOfStrings_q (_module.Expression.lit |##exts#1_1_1_1_1_1_1_0_0_0_0_0_0@0|))) (and (and (|_module.__default.execC#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2))) |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (_module.Tuple.Pair_q (_module.__default.execC ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2))) |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (|_module.__default.execC#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2))) |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.__default.execC ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 0))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 1))) ($Unbox DatatypeTypeType (|Seq#Index| |$rhs#1_1_1_1_1_1_1_0_2@0| (LitInt 2))) |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))))) (and (=> (= (ControlFlow 0 36) (- 0 40)) true) (=> (_module.Tuple.Pair_q |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (=> (and (_module.Tuple.Pair_q |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0@0|) (= |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0@0|)))) (and (=> (= (ControlFlow 0 36) (- 0 39)) true) (=> (and (and (_module.StateC.S_q |$rhs#1_1_1_1_1_1_1_0_1@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_0@0| (_module.StateC.st |$rhs#1_1_1_1_1_1_1_0_1@0|))) (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_0@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |$rhs#1_1_1_1_1_1_1_0_1@0|)))) (and (=> (= (ControlFlow 0 36) (- 0 38)) true) (=> (and (and (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= |##st#1_1_1_1_1_1_1_0_0_0_0_0_1@0| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and ($IsAllocBox |##st#1_1_1_1_1_1_1_0_0_0_0_0_1@0| Tclass._module.State $Heap@4) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))) (and (and (_module.StateC.S_q |$rhs#1_1_1_1_1_1_1_0_1@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |$rhs#1_1_1_1_1_1_1_0_1@0|))) (and (_module.StateC.S_q |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.DomSt#canCall| (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_1_1_0_1@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)))) (=> (|Set#Subset| (_module.__default.DomSt (_module.StateC.st |$rhs#1_1_1_1_1_1_1_0_1@0|)) (_module.__default.DomSt (_module.StateC.st |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 36) 34) anon99_Then_correct) (=> (= (ControlFlow 0 36) 16) anon99_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon102_Else_correct  (=> (and (not (_module.__default.ConsistentCache |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (= (ControlFlow 0 13) 2)) GeneratedUnifiedExit_correct)))
(let ((anon102_Then_correct  (=> (and (_module.__default.ConsistentCache |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= (ControlFlow 0 12) 2)) GeneratedUnifiedExit_correct)))
(let ((anon98_Else_correct  (=> (not (and (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (_module.__default.ValidArgsC (Lit DatatypeTypeType |#_module.Primitive.primExec|) |$rhs#1_1_1_1_1_1_1_0_2@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> ($IsAlloc DatatypeTypeType |stCombinedC#1_1_1_1_1_1_1_0_0_0@0| Tclass._module.StateC $Heap@3) (=> (and (|_module.__default.ConsistentCache#canCall| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (|_module.__default.ConsistentCache#canCall| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|)) (and (=> (= (ControlFlow 0 14) 12) anon102_Then_correct) (=> (= (ControlFlow 0 14) 13) anon102_Else_correct))))))))
(let ((anon54_correct  (=> (and (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|)) (=> (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|) |$rhs#1_1_1_1_1_1_1_0_2@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 65) 36) anon98_Then_correct) (=> (= (ControlFlow 0 65) 14) anon98_Else_correct)))))
(let ((anon97_Else_correct  (=> (and (or (not (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|))))) (not true)) (= (ControlFlow 0 70) 65)) anon54_correct)))
(let ((anon97_Then_correct  (=> (and (and (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt (_module.__default.Arity (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (= |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0| (Lit DatatypeTypeType |#_module.Primitive.primExec|))) (and ($IsAlloc DatatypeTypeType |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0| Tclass._module.Primitive $Heap@3) ($IsAlloc SeqType |$rhs#1_1_1_1_1_1_1_0_2@0| (TSeq Tclass._module.Expression) $Heap@3))) (and (=> (= (ControlFlow 0 66) (- 0 69)) true) (=> ($IsAlloc DatatypeTypeType |stCombinedC#1_1_1_1_1_1_1_0_0_0@0| Tclass._module.StateC $Heap@3) (and (=> (= (ControlFlow 0 66) (- 0 68)) (=> (_module.Primitive.primExec_q |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt 3)))) (=> (=> (_module.Primitive.primExec_q |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt 3))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (=> (_module.Primitive.primCreatePath_q |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt 1)))) (=> (=> (_module.Primitive.primCreatePath_q |##prim#1_1_1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |$rhs#1_1_1_1_1_1_1_0_2@0|) (LitInt 1))) (=> (and (|_module.__default.ValidArgsC#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|) |$rhs#1_1_1_1_1_1_1_0_2@0| |stCombinedC#1_1_1_1_1_1_1_0_0_0@0|) (= (ControlFlow 0 66) 65)) anon54_correct))))))))))
(let ((anon96_Then_correct  (=> (and (and (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|))) (= |##prim#1_1_1_1_1_1_1_0_0_0_0_0@0| (Lit DatatypeTypeType |#_module.Primitive.primExec|))) (and ($IsAlloc DatatypeTypeType |##prim#1_1_1_1_1_1_1_0_0_0_0_0@0| Tclass._module.Primitive $Heap@3) (|_module.__default.Arity#canCall| (Lit DatatypeTypeType |#_module.Primitive.primExec|)))) (and (=> (= (ControlFlow 0 71) 66) anon97_Then_correct) (=> (= (ControlFlow 0 71) 70) anon97_Else_correct)))))
(let ((anon96_Else_correct  (=> (and (not (_module.Primitive.primExec_q (_module.Literal.prim (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|)))) (= (ControlFlow 0 11) 2)) GeneratedUnifiedExit_correct)))
(let ((anon95_Then_correct  (=> (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|) (_module.Literal.litPrimitive_q (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 72) (- 0 73)) (_module.Literal.litPrimitive_q (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|))) (=> (_module.Literal.litPrimitive_q (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|)) (and (=> (= (ControlFlow 0 72) 71) anon96_Then_correct) (=> (= (ControlFlow 0 72) 11) anon96_Else_correct)))))))))
(let ((anon95_Else_correct  (=> (and (not (and (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|) (_module.Literal.litPrimitive_q (_module.Expression.lit |$rhs#1_1_1_1_1_1_1_0_0@0|)))) (= (ControlFlow 0 10) 2)) GeneratedUnifiedExit_correct)))
(let ((anon50_correct  (and (=> (= (ControlFlow 0 75) 72) anon95_Then_correct) (=> (= (ControlFlow 0 75) 10) anon95_Else_correct))))
(let ((anon94_Else_correct  (=> (and (not (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 78) 75)) anon50_correct)))
(let ((anon94_Then_correct  (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 76) (- 0 77)) (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|)) (=> (_module.Expression.exprLiteral_q |$rhs#1_1_1_1_1_1_1_0_0@0|) (=> (= (ControlFlow 0 76) 75) anon50_correct))))))
(let ((anon93_Then_correct  (=> (_module.__default.CompatibleC |stsC''#1_1_1_1_1_1_1_0_0@0|) (and (=> (= (ControlFlow 0 79) (- 0 82)) (not (|Set#Equal| |stsC''#1_1_1_1_1_1_1_0_0@0| |Set#Empty|))) (=> (not (|Set#Equal| |stsC''#1_1_1_1_1_1_1_0_0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 79) (- 0 81)) (forall ((|stC#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#1@@2| Tclass._module.StateC) (=> (|Set#IsMember| |stsC''#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |stC#1@@2|)) (_module.__default.ConsistentCache |stC#1@@2|)))
 :qid |CloudMakeConsistentBuildslegacydfy.142:19|
 :skolemid |863|
 :pattern ( (_module.__default.ConsistentCache |stC#1@@2|))
 :pattern ( (|Set#IsMember| |stsC''#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |stC#1@@2|)))
))) (=> (forall ((|stC#1@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |stC#1@@3| Tclass._module.StateC) (=> (|Set#IsMember| |stsC''#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |stC#1@@3|)) (_module.__default.ConsistentCache |stC#1@@3|)))
 :qid |CloudMakeConsistentBuildslegacydfy.142:19|
 :skolemid |863|
 :pattern ( (_module.__default.ConsistentCache |stC#1@@3|))
 :pattern ( (|Set#IsMember| |stsC''#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |stC#1@@3|)))
)) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (|_module.__default.CombineC#canCall| |stsC''#1_1_1_1_1_1_1_0_0@0|) (let ((|stC'#0@@25| (_module.__default.CombineC ($LS $LZ) |stsC''#1_1_1_1_1_1_1_0_0@0|)))
(|_module.__default.ConsistentCache#canCall| |stC'#0@@25|))) (let ((|stC'#0@@26| (_module.__default.CombineC ($LS ($LS $LZ)) |stsC''#1_1_1_1_1_1_1_0_0@0|)))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@26|) (and (_module.__default.ConsistentCache |stC'#0@@26|) (forall ((|cmd#0@@34| T@U) (|deps#0@@33| T@U) (|e#0@@26| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@34| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@33| Tclass._module.Expression)) ($Is SeqType |e#0@@26| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@26|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@34| |deps#0@@33| |e#0@@26|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@26|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@34| |deps#0@@33| |e#0@@26|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |865|
 :pattern ( (_module.__default.Loc |cmd#0@@34| |deps#0@@33| |e#0@@26|))
)))))) (and (= $Heap@2 $Heap@3) ($IsAlloc SetType |stsC''#1_1_1_1_1_1_1_0_0@0| (TSet Tclass._module.StateC) $Heap@3))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (not (|Set#Equal| |stsC''#1_1_1_1_1_1_1_0_0@0| |Set#Empty|))) (=> (not (|Set#Equal| |stsC''#1_1_1_1_1_1_1_0_0@0| |Set#Empty|)) (=> (and (and (|_module.__default.CombineC#canCall| |stsC''#1_1_1_1_1_1_1_0_0@0|) (_module.StateC.S_q (_module.__default.CombineC ($LS $LZ) |stsC''#1_1_1_1_1_1_1_0_0@0|))) (and (|_module.__default.CombineC#canCall| |stsC''#1_1_1_1_1_1_1_0_0@0|) (= |stCombinedC#1_1_1_1_1_1_1_0_0_0@0| (_module.__default.CombineC ($LS $LZ) |stsC''#1_1_1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 79) 76) anon94_Then_correct) (=> (= (ControlFlow 0 79) 78) anon94_Else_correct))))))))))))))
(let ((anon93_Else_correct  (=> (and (not (_module.__default.CompatibleC |stsC''#1_1_1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 9) 2)) GeneratedUnifiedExit_correct)))
(let ((anon92_Then_correct  (=> (_module.Expression.exprInvocation_q |expr#0@@16|) (and (=> (= (ControlFlow 0 83) (- 0 96)) (_module.Expression.exprInvocation_q |expr#0@@16|)) (=> (_module.Expression.exprInvocation_q |expr#0@@16|) (=> (= |expr##1_1_1_1_1_1_1_0_0@0| (_module.Expression.fun |expr#0@@16|)) (and (=> (= (ControlFlow 0 83) (- 0 95)) (< (DtRank |expr##1_1_1_1_1_1_1_0_0@0|) (DtRank |expr#0@@16|))) (=> (< (DtRank |expr##1_1_1_1_1_1_1_0_0@0|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 83) (- 0 94)) (=> (|_module.__default.ConsistentCache#canCall| |stC#0@@34|) (or (_module.__default.ConsistentCache |stC#0@@34|) (forall ((|cmd#0@@35| T@U) (|deps#0@@34| T@U) (|e#0@@27| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@35| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@34| Tclass._module.Expression)) ($Is SeqType |e#0@@27| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@34|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@35| |deps#0@@34| |e#0@@27|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@34|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@35| |deps#0@@34| |e#0@@27|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@35| |deps#0@@34| |e#0@@27|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |stC#0@@34|) (or (_module.__default.ConsistentCache |stC#0@@34|) (forall ((|cmd#0@@36| T@U) (|deps#0@@35| T@U) (|e#0@@28| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@36| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@35| Tclass._module.Expression)) ($Is SeqType |e#0@@28| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@34|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@36| |deps#0@@35| |e#0@@28|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@34|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@36| |deps#0@@35| |e#0@@28|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1200|
 :pattern ( (_module.__default.Loc |cmd#0@@36| |deps#0@@35| |e#0@@28|))
)))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (|_module.__default.evalC#canCall| |expr##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|) (let ((|result#0@@31| (_module.__default.evalC ($LS $LZ) |expr##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|)))
 (and (and (_module.Tuple.Pair_q |result#0@@31|) (_module.Tuple.Pair_q |result#0@@31|)) (let ((|stC'#0@@27| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@31|))))
(let ((|expr'#0@@14| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@31|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@27|) (=> (_module.__default.ConsistentCache |stC'#0@@27|) (=> (_module.Expression.exprError_q |expr'#0@@14|) (|$IsA#_module.Reason| (_module.Expression.r |expr'#0@@14|)))))))))) (let ((|result#0@@32| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|)))
(let ((|stC'#0@@28| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#0@@32|))))
 (and (|_module.__default.ConsistentCache#canCall| |stC'#0@@28|) (and (_module.__default.ConsistentCache |stC'#0@@28|) (forall ((|cmd#1@@8| T@U) (|deps#1@@8| T@U) (|e#1@@21| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#1@@8| Tclass._module.Expression) ($Is DatatypeTypeType |deps#1@@8| Tclass._module.Expression)) ($Is SeqType |e#1@@21| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC'#0@@28|)) (_module.__default.Hash (_module.__default.Loc |cmd#1@@8| |deps#1@@8| |e#1@@21|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC'#0@@28|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#1@@8| |deps#1@@8| |e#1@@21|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1203|
 :pattern ( (_module.__default.Loc |cmd#1@@8| |deps#1@@8| |e#1@@21|))
))))))) (and (let ((|result#0@@33| (_module.__default.evalC ($LS ($LS $LZ)) |expr##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|)))
(let ((|expr'#0@@15| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#0@@33|))))
 (=> (_module.Expression.exprError_q |expr'#0@@15|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#0@@15|) |#_module.Reason.rInconsistentCache|))))) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 83) (- 0 93)) (_module.Expression.exprInvocation_q |expr#0@@16|)) (=> (_module.Expression.exprInvocation_q |expr#0@@16|) (=> (and (and (and (= |##expr#1_1_1_1_1_1_1_0_0@0| (_module.Expression.fun |expr#0@@16|)) ($IsAlloc DatatypeTypeType |##expr#1_1_1_1_1_1_1_0_0@0| Tclass._module.Expression $Heap@1)) (and ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@1) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@1))) (and (and (|_module.__default.evalC#canCall| (_module.Expression.fun |expr#0@@16|) |stC#0@@34| |env#0@@15|) (_module.Tuple.Pair_q (_module.__default.evalC ($LS $LZ) (_module.Expression.fun |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (and (|_module.__default.evalC#canCall| (_module.Expression.fun |expr#0@@16|) |stC#0@@34| |env#0@@15|) (= |resultFun#1_1_1_1_1_1_1_0_0@0| (_module.__default.evalC ($LS $LZ) (_module.Expression.fun |expr#0@@16|) |stC#0@@34| |env#0@@15|))))) (and (=> (= (ControlFlow 0 83) (- 0 92)) true) (=> (_module.Tuple.Pair_q |resultFun#1_1_1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |resultFun#1_1_1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_1_1_0_0@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |resultFun#1_1_1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 83) (- 0 91)) true) (=> (_module.Tuple.Pair_q |resultFun#1_1_1_1_1_1_1_0_0@0|) (=> (and (_module.Tuple.Pair_q |resultFun#1_1_1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_1_1_0_1@0| ($Unbox DatatypeTypeType (_module.Tuple.snd |resultFun#1_1_1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 83) (- 0 90)) (_module.Expression.exprInvocation_q |expr#0@@16|)) (=> (_module.Expression.exprInvocation_q |expr#0@@16|) (=> (= |args##1_1_1_1_1_1_1_0_0@0| (_module.Expression.args |expr#0@@16|)) (and (=> (= (ControlFlow 0 83) (- 0 89)) (<= (DtRank |expr#0@@16|) (DtRank |expr#0@@16|))) (=> (<= (DtRank |expr#0@@16|) (DtRank |expr#0@@16|)) (and (=> (= (ControlFlow 0 83) (- 0 88)) (=> (|_module.__default.ConsistentCache#canCall| |stC#0@@34|) (or (_module.__default.ConsistentCache |stC#0@@34|) (forall ((|cmd#0@@37| T@U) (|deps#0@@36| T@U) (|e#0@@29| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@37| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@36| Tclass._module.Expression)) ($Is SeqType |e#0@@29| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@34|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@37| |deps#0@@36| |e#0@@29|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@34|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@37| |deps#0@@36| |e#0@@29|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1224|
 :pattern ( (_module.__default.Loc |cmd#0@@37| |deps#0@@36| |e#0@@29|))
))))) (=> (=> (|_module.__default.ConsistentCache#canCall| |stC#0@@34|) (or (_module.__default.ConsistentCache |stC#0@@34|) (forall ((|cmd#0@@38| T@U) (|deps#0@@37| T@U) (|e#0@@30| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#0@@38| Tclass._module.Expression) ($Is DatatypeTypeType |deps#0@@37| Tclass._module.Expression)) ($Is SeqType |e#0@@30| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@34|)) (_module.__default.Hash (_module.__default.Loc |cmd#0@@38| |deps#0@@37| |e#0@@30|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@34|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#0@@38| |deps#0@@37| |e#0@@30|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1224|
 :pattern ( (_module.__default.Loc |cmd#0@@38| |deps#0@@37| |e#0@@30|))
)))) (and (=> (= (ControlFlow 0 83) (- 0 87)) (forall ((|arg#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1@@1| Tclass._module.Expression) (=> (|Seq#Contains| |args##1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@1|)) (< (DtRank |arg#1@@1|) (DtRank |expr#0@@16|))))
 :qid |CloudMakeConsistentBuildslegacydfy.633:19|
 :skolemid |1226|
 :pattern ( (|Seq#Contains| |args##1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@1|)))
))) (=> (forall ((|arg#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1@@2| Tclass._module.Expression) (=> (|Seq#Contains| |args##1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@2|)) (< (DtRank |arg#1@@2|) (DtRank |expr#0@@16|))))
 :qid |CloudMakeConsistentBuildslegacydfy.633:19|
 :skolemid |1226|
 :pattern ( (|Seq#Contains| |args##1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@2|)))
)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.__default.evalArgsC#canCall| |expr#0@@16| |args##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|) (let ((|result#0@@34| (_module.__default.evalArgsC ($LS $LZ) |expr#0@@16| |args##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|)))
 (and (_module.Tuple.Pair_q |result#0@@34|) (let ((|stsC'#0@@6| ($Unbox SetType (_module.Tuple.snd |result#0@@34|))))
(forall ((|stC'#1@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |stC'#1@@6| Tclass._module.StateC) (=> (|Set#IsMember| |stsC'#0@@6| ($Box DatatypeTypeType |stC'#1@@6|)) (|_module.__default.ConsistentCache#canCall| |stC'#1@@6|)))
 :qid |CloudMakeConsistentBuildslegacydfy.637:12|
 :skolemid |1227|
 :pattern ( (_module.__default.ConsistentCache |stC'#1@@6|))
 :pattern ( (|Set#IsMember| |stsC'#0@@6| ($Box DatatypeTypeType |stC'#1@@6|)))
)))))) (let ((|result#0@@35| (_module.__default.evalArgsC ($LS ($LS $LZ)) |expr#0@@16| |args##1_1_1_1_1_1_1_0_0@0| |stC#0@@34| |env#0@@15|)))
(let ((|stsC'#0@@7| ($Unbox SetType (_module.Tuple.snd |result#0@@35|))))
(forall ((|stC'#1@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |stC'#1@@7| Tclass._module.StateC) (=> (|Set#IsMember| |stsC'#0@@7| ($Box DatatypeTypeType |stC'#1@@7|)) (_module.__default.ConsistentCache |stC'#1@@7|)))
 :qid |CloudMakeConsistentBuildslegacydfy.637:12|
 :skolemid |1230|
 :pattern ( (_module.__default.ConsistentCache |stC'#1@@7|))
 :pattern ( (|Set#IsMember| |stsC'#0@@7| ($Box DatatypeTypeType |stC'#1@@7|)))
))))) (and (= $Heap@1 $Heap@2) ($IsAlloc DatatypeTypeType |expr#0@@16| Tclass._module.Expression $Heap@2))) (and (=> (= (ControlFlow 0 83) (- 0 86)) (_module.Expression.exprInvocation_q |expr#0@@16|)) (=> (_module.Expression.exprInvocation_q |expr#0@@16|) (=> (and (and (= |##args#1_1_1_1_1_1_1_0_0@0| (_module.Expression.args |expr#0@@16|)) ($IsAlloc SeqType |##args#1_1_1_1_1_1_1_0_0@0| (TSeq Tclass._module.Expression) $Heap@2)) (and ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@2) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@2))) (and (=> (= (ControlFlow 0 83) (- 0 85)) (forall ((|arg#1_1_1_1_1_1_1_0_0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0| Tclass._module.Expression) (=> (|Seq#Contains| |##args#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0|)) (< (DtRank |arg#1_1_1_1_1_1_1_0_0|) (DtRank |expr#0@@16|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1215|
 :pattern ( (|Seq#Contains| |##args#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0|)))
))) (=> (forall ((|arg#1_1_1_1_1_1_1_0_0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0@@0| Tclass._module.Expression) (=> (|Seq#Contains| |##args#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0@@0|)) (< (DtRank |arg#1_1_1_1_1_1_1_0_0@@0|) (DtRank |expr#0@@16|))))
 :qid |CloudMakeConsistentBuildslegacydfy.475:19|
 :skolemid |1216|
 :pattern ( (|Seq#Contains| |##args#1_1_1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1_1_1_1_1_1_1_0_0@@0|)))
)) (=> (and (|_module.__default.evalArgsC#canCall| |expr#0@@16| (_module.Expression.args |expr#0@@16|) |stC#0@@34| |env#0@@15|) (_module.Tuple.Pair_q (_module.__default.evalArgsC ($LS $LZ) |expr#0@@16| (_module.Expression.args |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (=> (and (and (and (|_module.__default.evalArgsC#canCall| |expr#0@@16| (_module.Expression.args |expr#0@@16|) |stC#0@@34| |env#0@@15|) (= |resultArgs#1_1_1_1_1_1_1_0_0@0| (_module.__default.evalArgsC ($LS $LZ) |expr#0@@16| (_module.Expression.args |expr#0@@16|) |stC#0@@34| |env#0@@15|))) (and (_module.Tuple.Pair_q |resultArgs#1_1_1_1_1_1_1_0_0@0|) (_module.Tuple.Pair_q |resultArgs#1_1_1_1_1_1_1_0_0@0|))) (and (and (= |$rhs#1_1_1_1_1_1_1_0_2@0| ($Unbox SeqType (_module.Tuple.fst |resultArgs#1_1_1_1_1_1_1_0_0@0|))) (_module.Tuple.Pair_q |resultArgs#1_1_1_1_1_1_1_0_0@0|)) (and (_module.Tuple.Pair_q |resultArgs#1_1_1_1_1_1_1_0_0@0|) (= |$rhs#1_1_1_1_1_1_1_0_3@0| ($Unbox SetType (_module.Tuple.snd |resultArgs#1_1_1_1_1_1_1_0_0@0|)))))) (and (=> (= (ControlFlow 0 83) (- 0 84)) true) (=> (and (and (= |stsC''#1_1_1_1_1_1_1_0_0@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |$rhs#1_1_1_1_1_1_1_0_1@0|)) |$rhs#1_1_1_1_1_1_1_0_3@0|)) ($IsAlloc SetType |stsC''#1_1_1_1_1_1_1_0_0@0| (TSet Tclass._module.StateC) $Heap@2)) (and (|_module.__default.CompatibleC#canCall| |stsC''#1_1_1_1_1_1_1_0_0@0|) (|_module.__default.CompatibleC#canCall| |stsC''#1_1_1_1_1_1_1_0_0@0|))) (and (=> (= (ControlFlow 0 83) 79) anon93_Then_correct) (=> (= (ControlFlow 0 83) 9) anon93_Else_correct)))))))))))))))))))))))))))))))))))))))))))
(let ((anon92_Else_correct  (=> (and (not (_module.Expression.exprInvocation_q |expr#0@@16|)) (= (ControlFlow 0 8) 2)) GeneratedUnifiedExit_correct)))
(let ((anon87_Else_correct  (=> (not (_module.Expression.exprOr_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 97) 83) anon92_Then_correct) (=> (= (ControlFlow 0 97) 8) anon92_Else_correct)))))
(let ((anon82_Else_correct  (=> (not (_module.Expression.exprAnd_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 118) 114) anon87_Then_correct) (=> (= (ControlFlow 0 118) 97) anon87_Else_correct)))))
(let ((anon77_Else_correct  (=> (not (_module.Expression.exprIf_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 139) 135) anon82_Then_correct) (=> (= (ControlFlow 0 139) 118) anon82_Else_correct)))))
(let ((anon76_Else_correct  (=> (not (and (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|)) |#_module.Literal.litFalse|))) (and (=> (= (ControlFlow 0 164) 160) anon77_Then_correct) (=> (= (ControlFlow 0 164) 139) anon77_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (and (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|)) |#_module.Literal.litFalse|)) (= (ControlFlow 0 7) 2)) GeneratedUnifiedExit_correct)))
(let ((anon14_correct  (=> (=> (_module.Expression.exprIf_q |expr#0@@16|) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)) (|$IsA#_module.Literal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|))))) (and (=> (= (ControlFlow 0 165) 7) anon76_Then_correct) (=> (= (ControlFlow 0 165) 164) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (and (not (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)))) (= (ControlFlow 0 169) 165)) anon14_correct)))
(let ((anon75_Then_correct  (=> (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (and (=> (= (ControlFlow 0 166) (- 0 168)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 166) (- 0 167)) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)) (=> (= (ControlFlow 0 166) 165) anon14_correct))))))))
(let ((anon74_Else_correct  (=> (not (_module.Expression.exprIf_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 172) 166) anon75_Then_correct) (=> (= (ControlFlow 0 172) 169) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 170) (- 0 171)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 170) 166) anon75_Then_correct) (=> (= (ControlFlow 0 170) 169) anon75_Else_correct)))))))
(let ((anon73_Else_correct  (=> (not (and (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|)) |#_module.Literal.litTrue|))) (and (=> (= (ControlFlow 0 173) 170) anon74_Then_correct) (=> (= (ControlFlow 0 173) 172) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (and (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (|_module.Literal#Equal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|)) |#_module.Literal.litTrue|)) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct)))
(let ((anon8_correct  (=> (=> (_module.Expression.exprIf_q |expr#0@@16|) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)) (|$IsA#_module.Literal| (_module.Expression.lit (_module.Expression.cond |expr#0@@16|))))) (and (=> (= (ControlFlow 0 174) 6) anon73_Then_correct) (=> (= (ControlFlow 0 174) 173) anon73_Else_correct)))))
(let ((anon72_Else_correct  (=> (and (not (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)))) (= (ControlFlow 0 178) 174)) anon8_correct)))
(let ((anon72_Then_correct  (=> (and (_module.Expression.exprIf_q |expr#0@@16|) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (and (=> (= (ControlFlow 0 175) (- 0 177)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 175) (- 0 176)) (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|))) (=> (_module.Expression.exprLiteral_q (_module.Expression.cond |expr#0@@16|)) (=> (= (ControlFlow 0 175) 174) anon8_correct))))))))
(let ((anon71_Else_correct  (=> (not (_module.Expression.exprIf_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 181) 175) anon72_Then_correct) (=> (= (ControlFlow 0 181) 178) anon72_Else_correct)))))
(let ((anon71_Then_correct  (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 179) (- 0 180)) (_module.Expression.exprIf_q |expr#0@@16|)) (=> (_module.Expression.exprIf_q |expr#0@@16|) (and (=> (= (ControlFlow 0 179) 175) anon72_Then_correct) (=> (= (ControlFlow 0 179) 178) anon72_Else_correct)))))))
(let ((anon70_Else_correct  (=> (not (_module.Expression.exprIdentifier_q |expr#0@@16|)) (and (=> (= (ControlFlow 0 182) 179) anon71_Then_correct) (=> (= (ControlFlow 0 182) 181) anon71_Else_correct)))))
(let ((anon70_Then_correct  (=> (and (_module.Expression.exprIdentifier_q |expr#0@@16|) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))
(let ((anon69_Else_correct  (=> (not (_module.__default.Value |expr#0@@16|)) (and (=> (= (ControlFlow 0 183) 5) anon70_Then_correct) (=> (= (ControlFlow 0 183) 182) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (_module.__default.Value |expr#0@@16|) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (=> (and (|$IsA#_module.Expression| |expr#0@@16|) (|$IsA#_module.StateC| |stC#0@@34|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@3 $Heap@0)) (and (and (forall ((|$ih#expr0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#expr0#0| Tclass._module.Expression) (_module.__default.ConsistentCache |stC#0@@34|)) (< (DtRank |$ih#expr0#0|) (DtRank |expr#0@@16|))) (let ((|result#1@@5| (_module.__default.evalC ($LS $LZ) |$ih#expr0#0| |stC#0@@34| |env#0@@15|)))
(let ((|stC'#1@@8| ($Unbox DatatypeTypeType (_module.Tuple.snd |result#1@@5|))))
(let ((|expr'#1@@0| ($Unbox DatatypeTypeType (_module.Tuple.fst |result#1@@5|))))
 (and (_module.__default.ConsistentCache |stC'#1@@8|) (=> (_module.Expression.exprError_q |expr'#1@@0|) (not (|_module.Reason#Equal| (_module.Expression.r |expr'#1@@0|) |#_module.Reason.rInconsistentCache|))))))))
 :qid |CloudMakeConsistentBuildslegacydfy.562:36|
 :skolemid |1208|
 :pattern ( (_module.__default.evalC ($LS $LZ) |$ih#expr0#0| |stC#0@@34| |env#0@@15|))
)) ($IsAlloc DatatypeTypeType |expr#0@@16| Tclass._module.Expression $Heap@0)) (and (|_module.__default.Value#canCall| |expr#0@@16|) (|_module.__default.Value#canCall| |expr#0@@16|)))) (and (=> (= (ControlFlow 0 184) 4) anon69_Then_correct) (=> (= (ControlFlow 0 184) 183) anon69_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is DatatypeTypeType |expr#0@@16| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |expr#0@@16| Tclass._module.Expression $Heap@@3)) (|$IsA#_module.Expression| |expr#0@@16|)) (=> (and (and (and (and (and ($Is DatatypeTypeType |stC#0@@34| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC#0@@34| Tclass._module.StateC $Heap@@3)) (|$IsA#_module.StateC| |stC#0@@34|)) (and (and ($IsBox |env#0@@15| Tclass._module.Env) ($IsAllocBox |env#0@@15| Tclass._module.Env $Heap@@3)) (and (=> |defass#result#1_1_1_1_0_0| (and ($Is DatatypeTypeType |result#1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)) ($IsAlloc DatatypeTypeType |result#1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC) $Heap@@3))) true))) (and (and (and ($Is DatatypeTypeType |cond'#1_1_1_1_0_0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |cond'#1_1_1_1_0_0| Tclass._module.Expression $Heap@@3)) true) (and (and (=> |defass#stC'#1_1_1_1_0_0| (and ($Is DatatypeTypeType |stC'#1_1_1_1_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC'#1_1_1_1_0_0| Tclass._module.StateC $Heap@@3))) true) (and (=> |defass#result#1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |result#1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)) ($IsAlloc DatatypeTypeType |result#1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC) $Heap@@3))) true)))) (and (and (and (and ($Is DatatypeTypeType |conj0'#1_1_1_1_1_0_0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |conj0'#1_1_1_1_1_0_0| Tclass._module.Expression $Heap@@3)) true) (and (and (=> |defass#stC'#1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |stC'#1_1_1_1_1_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC'#1_1_1_1_1_0_0| Tclass._module.StateC $Heap@@3))) true) (and (=> |defass#result#1_1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |result#1_1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)) ($IsAlloc DatatypeTypeType |result#1_1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC) $Heap@@3))) true))) (and (and (and ($Is DatatypeTypeType |disj0'#1_1_1_1_1_1_0_0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |disj0'#1_1_1_1_1_1_0_0| Tclass._module.Expression $Heap@@3)) true) (and (and (=> |defass#stC'#1_1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |stC'#1_1_1_1_1_1_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC'#1_1_1_1_1_1_0_0| Tclass._module.StateC $Heap@@3))) true) (and (=> |defass#resultFun#1_1_1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |resultFun#1_1_1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)) ($IsAlloc DatatypeTypeType |resultFun#1_1_1_1_1_1_1_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC) $Heap@@3))) true))))) (=> (and (and (and (and (and (and ($Is DatatypeTypeType |fun'#1_1_1_1_1_1_1_0_0| Tclass._module.Expression) ($IsAlloc DatatypeTypeType |fun'#1_1_1_1_1_1_1_0_0| Tclass._module.Expression $Heap@@3)) true) (and (=> |defass#stC'#1_1_1_1_1_1_1_0_0| (and ($Is DatatypeTypeType |stC'#1_1_1_1_1_1_1_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stC'#1_1_1_1_1_1_1_0_0| Tclass._module.StateC $Heap@@3))) true)) (and (and ($Is DatatypeTypeType |resultArgs#1_1_1_1_1_1_1_0_0| (Tclass._module.Tuple (TSeq Tclass._module.Expression) (TSet Tclass._module.StateC))) ($IsAlloc DatatypeTypeType |resultArgs#1_1_1_1_1_1_1_0_0| (Tclass._module.Tuple (TSeq Tclass._module.Expression) (TSet Tclass._module.StateC)) $Heap@@3)) true)) (and (and (and ($Is SeqType |args'#1_1_1_1_1_1_1_0_0| (TSeq Tclass._module.Expression)) ($IsAlloc SeqType |args'#1_1_1_1_1_1_1_0_0| (TSeq Tclass._module.Expression) $Heap@@3)) true) (and (and ($Is SetType |stsC'#1_1_1_1_1_1_1_0_0| (TSet Tclass._module.StateC)) ($IsAlloc SetType |stsC'#1_1_1_1_1_1_1_0_0| (TSet Tclass._module.StateC) $Heap@@3)) true))) (and (and (and (and ($Is SetType |stsC''#1_1_1_1_1_1_1_0_0| (TSet Tclass._module.StateC)) ($IsAlloc SetType |stsC''#1_1_1_1_1_1_1_0_0| (TSet Tclass._module.StateC) $Heap@@3)) true) (and (and (=> |defass#stCombinedC#1_1_1_1_1_1_1_0_0_0| (and ($Is DatatypeTypeType |stCombinedC#1_1_1_1_1_1_1_0_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stCombinedC#1_1_1_1_1_1_1_0_0_0| Tclass._module.StateC $Heap@@3))) true) (and (=> |defass#resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0| (and ($Is DatatypeTypeType |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC)) ($IsAlloc DatatypeTypeType |resultExec#1_1_1_1_1_1_1_0_0_0_0_0_0| (Tclass._module.Tuple Tclass._module.Expression Tclass._module.StateC) $Heap@@3))) true))) (and (and (and (=> |defass#stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0| (and ($Is DatatypeTypeType |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0| Tclass._module.StateC) ($IsAlloc DatatypeTypeType |stExecC#1_1_1_1_1_1_1_0_0_0_0_0_0| Tclass._module.StateC $Heap@@3))) true) (= 7 $FunctionContextHeight)) (and (and (|_module.__default.ConsistentCache#canCall| |stC#0@@34|) (and (_module.__default.ConsistentCache |stC#0@@34|) (forall ((|cmd#2@@1| T@U) (|deps#2@@1| T@U) (|e#2@@11| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |cmd#2@@1| Tclass._module.Expression) ($Is DatatypeTypeType |deps#2@@1| Tclass._module.Expression)) ($Is SeqType |e#2@@11| (TSeq TChar))) (=> (|Set#IsMember| (_module.__default.DomC (_module.StateC.c |stC#0@@34|)) (_module.__default.Hash (_module.__default.Loc |cmd#2@@1| |deps#2@@1| |e#2@@11|))) (|Set#IsMember| (_module.__default.DomSt (_module.StateC.st |stC#0@@34|)) ($Box DatatypeTypeType (_module.__default.Loc |cmd#2@@1| |deps#2@@1| |e#2@@11|)))))
 :qid |CloudMakeConsistentBuildslegacydfy.151:10|
 :skolemid |1205|
 :pattern ( (_module.__default.Loc |cmd#2@@1| |deps#2@@1| |e#2@@11|))
)))) (= (ControlFlow 0 185) 184))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
